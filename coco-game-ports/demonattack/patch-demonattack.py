#!/usr/bin/env python3
"""patch-demonattack.py — splice the hiscore module into Demon Attack's disk binary.

Pristine DEMON.BIN (LOADM format) is a single block: load $3FCC, len $3F35,
exec $3FCC. Its first 52 bytes are a bootstrap that copies load $4000-$7F00 up
to run $C000-$FF00 and switches to all-RAM before jumping there, so run
addresses are load addresses plus $8000.

The game uses $2A00-$3FCC as scratch during round setup, so the module cannot
live in the load image. A stage0 stub loads at $3000, is reached from the hook
at load $40DA (`JSR $CA8B` -> `JSR $3000`), copies the module to $8000 and
repatches the live hook at run $C0DA to jump there directly.

Also patched: FreezeHook ($C224), PromptHook ($C302), GameOverHook ($CA2C),
and the joystick reads at $D184/$D1D2/$D1F5.

Usage: patch-demonattack.py <orig DEMON.BIN> <stage0.bin> <stage0.sym> <real.bin> <real.sym> <out.BIN>
"""
import re
import sys

LOAD_ADDR = 0x3FCC
HOOK_ADDR = 0x40DA
STAGE0_ADDR = 0x3000
REAL_ADDR = 0x8000
GAME_LEN = 0x3F35

# Run $CA2C holds `LDA <04 / STA <08`; those four bytes become
# `JSR GameOverHook` + NOP and the module re-executes them.
GAMEOVER_ADDR = 0x4A2C
GAMEOVER_ORIG = bytes([0x96, 0x04, 0x97, 0x08])

# Run $C302 is the `STA $FF03` immediately before the main loop's SYNC.
PROMPT_ADDR = 0x4302
PROMPT_ORIG = bytes([0xB7, 0xFF, 0x03])

# Run $C224 is the `STA $FF03` at the top of the main loop.
FREEZE_ADDR = 0x4224
FREEZE_ORIG = bytes([0xB7, 0xFF, 0x03])

# Either joystick: the two `LDA $FF00` button reads call BtnMerge, and the
# 26-byte axis read at run $D1D2 becomes a call to JoyRead plus NOPs.
BTN_ADDRS = (0x5184, 0x51F5)
BTN_ORIG = bytes([0xB6, 0xFF, 0x00])
JOY_ADDR = 0x51D2
JOY_LEN = 26
JOY_ORIG = bytes([0x86, 0x54, 0xB7, 0xFF, 0x20])


def die(msg):
    sys.exit(f"patch-demonattack: {msg}")


def sym(symtext, name):
    # anchor at line start: a bare "Hook" must not match "GameOverHook"
    m = re.search(r"^" + name + r"\s+(?:EQU|equ)?\s*\$?([0-9A-Fa-f]{4})",
                  symtext, re.MULTILINE)
    if not m:
        die(f"{name} not found in symbol dump")
    return int(m.group(1), 16)


def main():
    orig_path, stage0_path, stage0_sym_path, real_path, real_sym_path, out_path = sys.argv[1:7]

    orig = bytearray(open(orig_path, "rb").read())
    if orig[0] != 0x00:
        die("unexpected block marker (want a single 0x00 data block)")
    length = (orig[1] << 8) | orig[2]
    load = (orig[3] << 8) | orig[4]
    if load != LOAD_ADDR or length != GAME_LEN:
        die(f"unexpected block: load ${load:04X} len ${length:04X} "
            f"(want load ${LOAD_ADDR:04X} len ${GAME_LEN:04X})")

    data = bytearray(orig[5:5 + length])
    trailer = orig[5 + length:5 + length + 5]
    if bytes(trailer[0:1]) != b"\xff" or trailer[1:3] != b"\x00\x00":
        die(f"unexpected trailer {trailer.hex()}")
    exec_addr = (trailer[3] << 8) | trailer[4]
    if exec_addr != LOAD_ADDR:
        die(f"unexpected orig exec ${exec_addr:04X} (want ${LOAD_ADDR:04X})")

    hook_off = HOOK_ADDR - LOAD_ADDR
    if bytes(data[hook_off:hook_off + 3]) != bytes([0xBD, 0xCA, 0x8B]):
        die(f"JSR $CA8B anchor not found at load ${HOOK_ADDR:04X}")
    data[hook_off:hook_off + 3] = bytes([0xBD, (STAGE0_ADDR >> 8) & 0xFF, STAGE0_ADDR & 0xFF])

    real = bytearray(open(real_path, "rb").read())
    real_symtext = open(real_sym_path).read()
    real_hook = sym(real_symtext, "Hook")
    if real_hook != REAL_ADDR:
        die(f"real module's Hook ${real_hook:04X} != expected ${REAL_ADDR:04X}")

    go_off = GAMEOVER_ADDR - LOAD_ADDR
    if bytes(data[go_off:go_off + 4]) != GAMEOVER_ORIG:
        die(f"game-over anchor {GAMEOVER_ORIG.hex()} not found at load "
            f"${GAMEOVER_ADDR:04X} (found {bytes(data[go_off:go_off + 4]).hex()})")
    go_hook = sym(real_symtext, "GameOverHook")
    if not (REAL_ADDR <= go_hook < REAL_ADDR + len(real)):
        die(f"GameOverHook ${go_hook:04X} outside the module")
    data[go_off:go_off + 4] = bytes(
        [0xBD, (go_hook >> 8) & 0xFF, go_hook & 0xFF, 0x12])

    stage0 = bytearray(open(stage0_path, "rb").read())
    stage0_symtext = open(stage0_sym_path).read()
    real_module_off = sym(stage0_symtext, "RealModule") - STAGE0_ADDR
    if real_module_off != len(stage0):
        die(f"RealModule offset ${real_module_off:04X} != end of stage0 "
            f"(${len(stage0):04X}) -- stage0.asm must end with RealModule: "
            f"immediately after the RealLen placeholder, nothing else")
    reallen_off = sym(stage0_symtext, "RealLen") - STAGE0_ADDR
    if bytes(stage0[reallen_off:reallen_off + 2]) != bytes([0xFF, 0xFF]):
        die("RealLen placeholder ($FFFF) not found at expected offset")
    stage0[reallen_off:reallen_off + 2] = bytes([(len(real) >> 8) & 0xFF, len(real) & 0xFF])

    exec_stub = sym(stage0_symtext, "ExecStub")
    if not (STAGE0_ADDR <= exec_stub < STAGE0_ADDR + len(stage0)):
        die(f"ExecStub ${exec_stub:04X} outside stage0")
    drivenum_addr = sym(stage0_symtext, "DriveNum")

    # the real module copies an 8-byte relay block (DriveNum, SlotNum,
    # NmiVec, DiskIrq -- contiguous in stage0) via a single LDX #<addr>
    # placeholder, patched to DriveNum's address (the block's base)
    anchor = bytes([0x8E, 0xEE, 0xEE])  # LDX immediate #$EEEE
    n = real.count(anchor)
    if n != 1:
        die(f"expected exactly one relay-block placeholder ({anchor.hex()}), found {n}")
    off = real.index(anchor)
    real[off + 1:off + 3] = bytes([(drivenum_addr >> 8) & 0xFF, drivenum_addr & 0xFF])

    pr_off = PROMPT_ADDR - LOAD_ADDR
    if bytes(data[pr_off:pr_off + 3]) != PROMPT_ORIG:
        die(f"prompt anchor {PROMPT_ORIG.hex()} not found at load "
            f"${PROMPT_ADDR:04X} (found {bytes(data[pr_off:pr_off + 3]).hex()})")
    pr_hook = sym(real_symtext, "PromptHook")
    if not (REAL_ADDR <= pr_hook < REAL_ADDR + len(real)):
        die(f"PromptHook ${pr_hook:04X} outside the module")
    data[pr_off:pr_off + 3] = bytes(
        [0xBD, (pr_hook >> 8) & 0xFF, pr_hook & 0xFF])

    fz_off = FREEZE_ADDR - LOAD_ADDR
    if bytes(data[fz_off:fz_off + 3]) != FREEZE_ORIG:
        die(f"freeze anchor {FREEZE_ORIG.hex()} not found at load "
            f"${FREEZE_ADDR:04X} (found {bytes(data[fz_off:fz_off + 3]).hex()})")
    fz_hook = sym(real_symtext, "FreezeHook")
    if not (REAL_ADDR <= fz_hook < REAL_ADDR + len(real)):
        die(f"FreezeHook ${fz_hook:04X} outside the module")
    data[fz_off:fz_off + 3] = bytes(
        [0xBD, (fz_hook >> 8) & 0xFF, fz_hook & 0xFF])

    btn = sym(real_symtext, "BtnMerge")
    for a in BTN_ADDRS:
        o = a - LOAD_ADDR
        if bytes(data[o:o + 3]) != BTN_ORIG:
            die(f"button anchor {BTN_ORIG.hex()} not found at load ${a:04X} "
                f"(found {bytes(data[o:o + 3]).hex()})")
        data[o:o + 3] = bytes([0xBD, (btn >> 8) & 0xFF, btn & 0xFF])

    joy = sym(real_symtext, "JoyRead")
    o = JOY_ADDR - LOAD_ADDR
    if bytes(data[o:o + 5]) != JOY_ORIG:
        die(f"joystick anchor {JOY_ORIG.hex()} not found at load "
            f"${JOY_ADDR:04X} (found {bytes(data[o:o + 5]).hex()})")
    data[o:o + JOY_LEN] = (bytes([0xBD, (joy >> 8) & 0xFF, joy & 0xFF])
                           + bytes([0x12]) * (JOY_LEN - 3))

    savebuf = sym(real_symtext, "SAVEBUF")
    if REAL_ADDR + len(real) > savebuf:
        die(f"module ends at ${REAL_ADDR + len(real):04X}, past SAVEBUF "
            f"${savebuf:04X} -- the screen save would overwrite module data")

    module = bytes(stage0) + bytes(real)
    if STAGE0_ADDR + len(module) > 0x3FCC:
        die(f"module ({len(module)} bytes at ${STAGE0_ADDR:04X}) runs into the "
            f"game's own loaded data at $3FCC -- shrink it")

    game_block = bytes([0x00, (len(data) >> 8) & 0xFF, len(data) & 0xFF,
                         (LOAD_ADDR >> 8) & 0xFF, LOAD_ADDR & 0xFF]) + bytes(data)
    module_block = bytes([0x00, (len(module) >> 8) & 0xFF, len(module) & 0xFF,
                           (STAGE0_ADDR >> 8) & 0xFF, STAGE0_ADDR & 0xFF]) + module
    new_trailer = bytes([0xFF, 0x00, 0x00, (exec_stub >> 8) & 0xFF, exec_stub & 0xFF])

    open(out_path, "wb").write(game_block + module_block + new_trailer)
    print(f"patch-demonattack: stage0 {len(stage0)} bytes + real {len(real)} bytes "
          f"at ${STAGE0_ADDR:04X}, hook ${HOOK_ADDR:04X} -> JSR ${STAGE0_ADDR:04X} "
          f"-> (runtime copy) -> ${REAL_ADDR:04X}, exec ${exec_addr:04X} -> "
          f"ExecStub ${exec_stub:04X} -> {out_path}")
    print(f"patch-demonattack: joystick -> BtnMerge ${btn:04X} at "
          f"{['$%04X' % a for a in BTN_ADDRS]}, JoyRead ${joy:04X} at "
          f"${JOY_ADDR:04X} (+{JOY_LEN - 3} NOP)")
    print(f"patch-demonattack: freeze hook load ${FREEZE_ADDR:04X} "
          f"(run ${FREEZE_ADDR - 0x4000 + 0xC000:04X}) -> JSR ${fz_hook:04X}")
    print(f"patch-demonattack: prompt hook load ${PROMPT_ADDR:04X} "
          f"(run ${PROMPT_ADDR - 0x4000 + 0xC000:04X}) -> JSR ${pr_hook:04X}")
    print(f"patch-demonattack: game-over hook load ${GAMEOVER_ADDR:04X} "
          f"(run ${GAMEOVER_ADDR - 0x4000 + 0xC000:04X}) -> JSR ${go_hook:04X} + NOP")


if __name__ == "__main__":
    main()
