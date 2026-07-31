# coco-demonattack

High-score scraper for **Demon Attack** (Tandy Color Computer), the CoCo port
of the FujiNet high-score system (see `coco-game-ports/demonattack/` for the
game side).

Usage:

```sh
coco-demonattack <path-to-DEMONATTACK-HS.DSK> <path-to-output-html>
```

Example:

```sh
coco-demonattack "/tnfs/coco/DEMONATTACK-HS.DSK" "/var/www/html/coco-demonattack.html"
```

* Opens an inotify watch on DEMONATTACK-HS.DSK
* On IN_MODIFY (i.e. whenever the game writes a new score over DriveWire),
  reads the DAHS score sector (track 34, sector 18 — file offset 161024)
  and regenerates the HTML page
* The sector stores names and scores as plain ASCII, so no decoding is needed
* `touch` the disk image to force a regeneration

The page renders a simulated PMODE4 screen as SVG, mirroring the game's own
high-score screen: header at row 28, entries from row 44 six scanlines apart,
in the game's own lettering (lifted from the title bitmap at `$F7D5`, the same
font the four lines under the logo are drawn with).

The scenery is the game's own artwork, extracted from the ROM into
`demonattack_gfx.h` and blitted at the positions the game itself uses:

| art    | ROM     | size  | screen                              |
|--------|---------|-------|-------------------------------------|
| ground | `$EDD4` | 16x38 | row 154, col 0 (repeated at col 16) |
| moon   | `$F034` | 9x57  | row 101, col 23                     |

The ground is drawn exactly as the game draws it. The moon outline is
recoloured to artifact blue — `blit()` takes a colour argument that overrides
the bitmap's own two-bit pairs when non-zero. NTSC artifact colors on black,
as on real hardware; `coco-demonattack.css` centers it and the page
auto-refreshes every 30s.

Install (matching the Atari scrapers in `PARTY-SERVER-INSTALL.md`):

```sh
make
install coco-demonattack /usr/local/sbin
install coco-demonattack.css /var/www/html
install coco-demonattack.service /etc/systemd/system
systemctl enable coco-demonattack
systemctl start coco-demonattack
```

Note: `DEMONATTACK-HS.DSK` must be marked high-score-writable, or FujiNet will
reject the game's writes on a read-only mount. The game-side Makefile does this
with `coco-high-score-enable <dsk> 34 18 1`; the shipped image already has it.
