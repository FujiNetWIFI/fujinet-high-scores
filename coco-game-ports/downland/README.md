# downland (Tandy Color Computer)

FujiNet High Score support for **Downland** (Michael Aichlmayr, 1983 /
Spectral Associates), patched into the original V1.0 disk binary.

The CoCo talks to FujiNet over DriveWire, and the mod also runs from a real
floppy controller. A `.dsk` mounted read-write — or served read-only with the
high-score marker — persists sector writes, so the game saves its top-10 table
with a plain Disk BASIC `DSKCON` write and a server-side scraper can publish it.

## How it works

No source exists for V1.0 Downland, so `patch-downland.py` splices a small
module (`hiscore.asm`) into the stock `DOWNLAND.BIN`:

* The module is appended to the load image and carried to **$E030** (above
  the game) by extending the bootstrap's relocation copy loop. Low RAM can't
  host it — the game's startup clobbers it.
* The title-screen instruction `LDU #$00B3` at **$C0DD** becomes `JSR $E030`,
  right after the game folds the players' scores into its high score. On each
  title visit the module reads the score sector, merges both player scores
  into a **top-10 table**, restores the best entry into the game's high score
  at `$B3` (so it survives power cycles visibly), and writes the sector back
  **only when the table changed**. Failed writes (read-only mount) are
  harmless.
* A qualifying score prompts for **initials** (up to 8 characters) on a
  page-1 entry screen before the table is written.
* The title loop's `JSR IncrementRomAddressCounter` at **$C109** is hooked so
  pressing **H** shows the **top-10 table**, then returns to the title.
* An EXEC stub captures the drive number ($EB) and Disk BASIC's NMI ($0109)
  and IRQ ($010C) vectors before the bootstrap runs, so the module writes back
  to the disk it loaded from and can hand the floppy controller live vectors.
* `DSKCON` needs the ROM mapped in, which would unmap $E0xx — so the call runs
  through a trampoline copied to low RAM ($4100), with the sector buffer at
  $4200 (low RAM exists in both SAM maps, on all CoCos).
* For a real floppy controller, the DSKCON wrapper restores Disk BASIC's
  NMI/IRQ vectors around the call, shields the video-page-0 bytes the floppy
  driver uses for workspace, and turns the drive motor off afterward (Downland's
  hijacked IRQ never would). All no-ops on DriveWire.

## Score sector

Track 34, sector 18 (file offset 161024) — outside the area used by the
game's file:

```
+0   "DLHS"            signature
+4   2                 version
+5   reserved (11 bytes)
+16  10 entries x 16 bytes: [8 name][7 score digits][1 pad], best first
```

Names and digits are stored as plain ASCII (`A`-`Z`, space, `0`-`9`) so the
sector reads directly as text; the module converts to Downland font codes only
when drawing. The scraper in `../../coco/downland/` renders the sector as an
HTML scoreboard for scores.irata.online.

## Build and deploy

Requirements: `lwasm` (LWTOOLS), `decb` (Toolshed), `python3`, and the
pristine `DOWNLAND.DSK`.

```sh
make                # -> build/DOWNLAND-HS.DSK  (SOURCE_DSK=... to override)
make deploy         # -> /tnfs/coco/DOWNLAND-HS.DSK, chmod 666
```

Mount `DOWNLAND-HS.DSK` (e.g. via the FujiNet config program) and run it. In
Disk BASIC that is `LOADM"DOWNLAND"` then `EXEC` — `RUNM` is HDB-DOS only. With
firmware that supports the high-score marker (see
`../../coco/high-score-enable/`), a read-only mount still persists the score
sector; otherwise mount read-write. (The image file must be writable by the
TNFS server process.)
