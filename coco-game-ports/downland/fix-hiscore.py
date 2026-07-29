#!/usr/bin/env python3
"""fix-hiscore.py — re-sort and clean up a Downland DLHS high-score sector
(track 34, sector 18): drops entries with a blank name or a corrupt
(non-digit) score, sorts what's left by score descending, and writes the
result into a local disk image.

By default, pulls the current table from the online copy (ONLINE_URL) as
the source to clean up; falls back to the local disk's own existing
sector if that's unreachable. Use --local to skip the network entirely.

Usage: fix-hiscore.py <local-disk.dsk> [--source <url-or-path>] [--local] [--dry-run]
"""
import sys
import urllib.request

ONLINE_URL = "https://apps.irata.online/COCO/Hiscore_Games/DOWNLAND-HS.DSK"

SECTORS_PER_TRACK = 18
SECTOR_SIZE = 256
STRACK, SSECTOR = 34, 18
NENTRY = 10
ENTLEN = 16


def sector_offset(track, sector):
    return (track * SECTORS_PER_TRACK + (sector - 1)) * SECTOR_SIZE


def extract_sector(disk_bytes):
    off = sector_offset(STRACK, SSECTOR)
    return disk_bytes[off:off + SECTOR_SIZE]


def is_empty(entry):
    return entry[1] == b"\x00" * 7


def is_valid(entry):
    name, score, _ = entry
    if is_empty(entry):
        return False
    if not all(48 <= b <= 57 for b in score):
        return False
    if name.strip(b" ") == b"":
        return False
    return True


def clean(sect):
    if sect[0:4] != b"DLHS":
        return None
    version = sect[4]

    raw = [sect[16 + i * ENTLEN:16 + (i + 1) * ENTLEN] for i in range(NENTRY)]
    entries = [(e[0:8], e[8:15], e[15:16]) for e in raw]

    valid = [e for e in entries if is_valid(e)]
    dropped = sum(1 for e in entries if not is_empty(e) and not is_valid(e))
    valid.sort(key=lambda e: e[1], reverse=True)

    empty = (b"\x00" * 8, b"\x00" * 7, b"\x00")
    valid = (valid + [empty] * NENTRY)[:NENTRY]

    new_sect = bytearray(SECTOR_SIZE)
    new_sect[0:4] = b"DLHS"
    new_sect[4] = version
    for i, (name, score, pad) in enumerate(valid):
        base = 16 + i * ENTLEN
        new_sect[base:base + 8] = name
        new_sect[base + 8:base + 15] = score
        new_sect[base + 15:base + 16] = pad

    return new_sect, dropped, valid


def main():
    argv = sys.argv[1:]
    dry_run = "--dry-run" in argv
    local_only = "--local" in argv
    source_override = None
    if "--source" in argv:
        i = argv.index("--source")
        source_override = argv[i + 1]
        del argv[i:i + 2]
    argv = [a for a in argv if not a.startswith("--")]
    if len(argv) != 1:
        sys.exit(f"usage: {sys.argv[0]} <local-disk.dsk> [--source <url-or-path>] [--local] [--dry-run]")

    target_path = argv[0]
    target_bytes = bytearray(open(target_path, "rb").read())

    sect = None
    if not local_only:
        url = source_override or ONLINE_URL
        try:
            if url.startswith("http://") or url.startswith("https://"):
                with urllib.request.urlopen(url, timeout=5) as resp:
                    sect = extract_sector(resp.read())
            else:
                sect = extract_sector(open(url, "rb").read())
            print(f"source: {url}")
        except Exception as e:
            print(f"source unreachable ({e}), falling back to {target_path}'s own sector")
            sect = None

    if sect is None:
        sect = extract_sector(target_bytes)
        print(f"source: {target_path}")

    result = clean(sect)
    if result is None:
        sys.exit("source sector has no DLHS signature -- nothing to clean")
    new_sect, dropped, valid = result

    print(f"{dropped} invalid entr{'y' if dropped == 1 else 'ies'} dropped")
    for i, (name, score, _) in enumerate(valid):
        if not is_empty((name, score, b"\x00")):
            print(f"  {i + 1:2d}  {name.decode('ascii')}  {score.decode('ascii')}")

    if dry_run:
        print("(dry run, not written)")
        return

    off = sector_offset(STRACK, SSECTOR)
    target_bytes[off:off + SECTOR_SIZE] = new_sect
    open(target_path, "wb").write(target_bytes)
    print(f"written to {target_path}")


if __name__ == "__main__":
    main()
