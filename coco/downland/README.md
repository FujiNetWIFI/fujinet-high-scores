# coco-downland

High-score scraper for **Downland** (Tandy Color Computer), the CoCo port of
the FujiNet high-score system (see `coco-game-ports/downland/` for the game
side).

Usage:

```sh
coco-downland <path-to-DOWNLAND-HS.DSK> <path-to-output-html>
```

Example:

```sh
coco-downland "/tnfs/coco/DOWNLAND-HS.DSK" "/var/www/html/coco-downland.html"
```

* Opens an inotify watch on DOWNLAND-HS.DSK
* On IN_MODIFY (i.e. whenever the game writes a new score over DriveWire),
  reads the DLHS score sector (track 34, sector 18 — file offset 161024)
  and regenerates the HTML page
* The sector stores names and scores as plain ASCII, so no decoding is needed

The page renders a simulated PMODE4 screen as SVG, using the actual Downland
character font (`downland_font.h`, extracted from the game ROM), NTSC
artifact colors on black, and a cave-style border like the game's title
screen. `coco-downland.css` centers it; the page auto-refreshes every 30s.

Install (matching the Atari scrapers in `PARTY-SERVER-INSTALL.md`):

```sh
make
install coco-downland /usr/local/sbin
install coco-downland.css /var/www/html
install coco-downland.service /etc/systemd/system
systemctl enable coco-downland
systemctl start coco-downland
```
