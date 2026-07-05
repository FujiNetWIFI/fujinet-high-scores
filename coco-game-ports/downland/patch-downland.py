#!/usr/bin/env python3
"""patch-downland.py — splice the hiscore module into Downland's disk binary.

Takes the pristine V1.0 DOWNLAND.BIN (LOADM format: load $2000-$402F, exec
$4000) and produces DOWNLAND-HS.BIN:

  1. appends the assembled hiscore module at load $4030 (the bootstrap copies
     load $2000+ up to $C000+, so the module lands at runtime $E030)
  2. extends the bootstrap's copy bound (CMPU #$4000 -> past the module)
  3. patches the title-screen `LDU #$00B3` at $C0DD to `JSR $E030`
  4. appends an EXEC stub that pokes the RUNM drive ($EB) into the module's
     DriveNum before jumping to the original bootstrap at $4000

Usage: patch-downland.py <orig DOWNLAND.BIN> <hiscore.bin> <hiscore.sym> <out.BIN>
"""
import re
import sys

LOAD_ORG = 0x2000
MODULE_LOAD = 0x4030            # module goes right after the bootstrap
MODULE_RUN = 0xE030
HOOK_OFF = 0xC0DD - 0xC000      # offset of LDU #$00B3 within the game image
HOOK2_OFF = 0xC109 - 0xC000     # title-loop JSR IncrementRomAddressCounter
NGLYPH_OFF = 0xD9B7 - 0xC000 + 23 * 7   # font glyph for 'N' ($DA58)
CMPU_OFF = 0x4024 - LOAD_ORG    # offset of the bootstrap's CMPU #$4000 operand


def die(msg):
    sys.exit(f"patch-downland: {msg}")


def main():
    orig_path, mod_path, sym_path, out_path = sys.argv[1:5]

    orig = open(orig_path, "rb").read()
    if len(orig) < 8250:
        die(f"{orig_path}: too short ({len(orig)})")
    orig = orig[:8250]          # logical LOADM file (decb pads to the sector)

    pre, data, post = orig[:5], bytearray(orig[5:8245]), bytearray(orig[8245:8250])
    if pre != bytes([0x00, 0x20, 0x30, 0x20, 0x00]):
        die(f"unexpected preamble {pre.hex()} (want load $2000 len $2030)")
    if post != bytearray([0xFF, 0x00, 0x00, 0x40, 0x00]):
        die(f"unexpected postamble {post.hex()} (want exec $4000)")

    module = open(mod_path, "rb").read()

    # find symbols in the dump
    symtext = open(sym_path).read()

    def sym(name):
        m = re.search(name + r"\s+(?:EQU|equ)?\s*\$?([0-9A-Fa-f]{4})", symtext)
        if not m:
            die(f"{name} not found in {sym_path}")
        return int(m.group(1), 16)

    def var_load(name):
        run = sym(name)
        load = MODULE_LOAD + (run - MODULE_RUN)
        if not (MODULE_LOAD <= load < MODULE_LOAD + len(module)):
            die(f"{name} ${run:04X} outside module")
        return load

    drivenum_load = var_load("DriveNum")
    nmivec_load = var_load("SavedNmiVec")
    diskirq_load = var_load("SavedDiskIrq")

    # 1. append module at load $4030
    if len(data) != MODULE_LOAD - LOAD_ORG:
        die(f"game data length ${len(data):04X} != ${MODULE_LOAD - LOAD_ORG:04X}")
    data += module

    # 2. extend the bootstrap copy bound (must be even: the loop copies words)
    end = MODULE_LOAD + len(module)
    if end & 1:
        end += 1
        data.append(0x12)       # NOP pad
    if bytes(data[CMPU_OFF:CMPU_OFF + 4]) != bytes([0x11, 0x83, 0x40, 0x00]):
        die("bootstrap CMPU #$4000 anchor not found")
    data[CMPU_OFF + 2] = (end >> 8) & 0xFF
    data[CMPU_OFF + 3] = end & 0xFF

    # 3. hook the title screen
    if bytes(data[HOOK_OFF:HOOK_OFF + 3]) != bytes([0xCE, 0x00, 0xB3]):
        die("LDU #$00B3 anchor at $C0DD not found")
    data[HOOK_OFF:HOOK_OFF + 3] = bytes(
        [0xBD, (MODULE_RUN >> 8) & 0xFF, MODULE_RUN & 0xFF])

    # 3b. hook the title loop for the H key (if the module provides it)
    if "TitleHook2" in symtext:
        th2 = sym("TitleHook2")
        if bytes(data[HOOK2_OFF:HOOK2_OFF + 3]) != bytes([0xBD, 0xDC, 0xDC]):
            die("JSR $DCDC anchor at $C109 not found")
        data[HOOK2_OFF:HOOK2_OFF + 3] = bytes(
            [0xBD, (th2 >> 8) & 0xFF, th2 & 0xFF])

    # 3c. redraw the 'N' glyph (the original reads like a 'K')
    if bytes(data[NGLYPH_OFF:NGLYPH_OFF + 7]) != bytes(
            [0xCC, 0xCC, 0xF0, 0xFC, 0xFC, 0xCC, 0xCC]):
        die("original N glyph not found at $DA58")
    data[NGLYPH_OFF:NGLYPH_OFF + 7] = bytes(
        [0xCC, 0xCC, 0xFC, 0xFC, 0xFC, 0xCC, 0xCC])

    # 4. EXEC stub, run before the bootstrap while Disk BASIC's state is still
    #    intact: capture the drive number ($EB) and the Disk BASIC NMI ($0109)
    #    and IRQ ($010C) vectors (3 bytes each) into the module, then enter the
    #    bootstrap. Downland wipes these once it runs.
    def hi(a): return (a >> 8) & 0xFF
    def lo(a): return a & 0xFF
    stub_addr = LOAD_ORG + len(data)
    data += bytes([
        0x96, 0xEB,                                  # lda  <$EB
        0xB7, hi(drivenum_load), lo(drivenum_load),  # sta  DriveNum
        0xBE, 0x01, 0x09,                            # ldx  $0109
        0xBF, hi(nmivec_load), lo(nmivec_load),      # stx  SavedNmiVec
        0xB6, 0x01, 0x0B,                            # lda  $010B
        0xB7, hi(nmivec_load + 2), lo(nmivec_load + 2),  # sta SavedNmiVec+2
        0xBE, 0x01, 0x0C,                            # ldx  $010C
        0xBF, hi(diskirq_load), lo(diskirq_load),    # stx  SavedDiskIrq
        0xB6, 0x01, 0x0E,                            # lda  $010E
        0xB7, hi(diskirq_load + 2), lo(diskirq_load + 2),  # sta SavedDiskIrq+2
        0x7E, 0x40, 0x00])                           # jmp  $4000
    post[3] = (stub_addr >> 8) & 0xFF
    post[4] = stub_addr & 0xFF

    n = len(data)
    newpre = bytes([0x00, (n >> 8) & 0xFF, n & 0xFF,
                    (LOAD_ORG >> 8) & 0xFF, LOAD_ORG & 0xFF])
    open(out_path, "wb").write(newpre + bytes(data) + bytes(post))
    drivenum_run = MODULE_RUN + (drivenum_load - MODULE_LOAD)
    print(f"patch-downland: module {len(module)} bytes at $E030, "
          f"copy bound ${end:04X}, DriveNum ${drivenum_run:04X}, "
          f"exec stub ${stub_addr:04X} -> {out_path}")


if __name__ == "__main__":
    main()
