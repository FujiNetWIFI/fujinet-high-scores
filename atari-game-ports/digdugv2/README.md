# digdugv2

This is the second version of Dig Dug that was written by GCC and back-ported to the Atari 800.

Thanks to @Ute at AtariAge for a working disassembly.

9BB2 has jump to 9C88
9c88 looks like a good candidate
score at 3f00

7 digits, last digit always 0, so stored as

in mem: 56 34 12
on scr: 12 34 56 0

narrow playfield, so will borrow code from pengo

