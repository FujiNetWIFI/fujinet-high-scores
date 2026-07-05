# coco-high-score-enable

## Usage

```sh
coco-high-score-enable <file.dsk> <track> <sector> <number-of-sectors>
```

## Example

```sh
$ ./coco-high-score-enable DOWNLAND-HS.DSK 34 18 1
```

## Abstract

**coco-high-score-enable** writes a high-score-enable marker into a CoCo
JVC/DSK image, which specifies that, even when mounted read-only, a specific
range of sectors will be opened read-write, to which data such as high
scores can be written.

Unlike the Atari ATR format, a JVC disk has no file header (and changing the
file size breaks the JVC header-size convention), so the marker lives inside
the image at **track 17, sector 18** — a sector Disk BASIC never uses (the
directory track only occupies sectors 1-11):

```
+0  "FNHS"        magic
+4  1             version
+5  N             number of ranges
+6  N x 4 bytes:  LSN start (16-bit BE), sector count (16-bit BE)
```

Requires FujiNet firmware with DriveWire high-score sector support.

## Building

All that is needed is a basic C environment.
