# berzerk

Thanks to @Ute on AtariAge for working disassembly.

.dumpdlist:
  1000: x3   blank 8
  1003:      mode.i E @ 2028
  1006: x98  mode E
  1068:      mode E @ 3028
  106B: x75  mode E
  10B6:      mode.i E
  10B7:      mode 4 @ 3C58
  10BA:      mode.i 4
  10BB:      waitvbl 1000

  $84 - a flag, what is it tho

$1859 - P1 score, BCD

$3C58 - first line of score display

$7FF0 - Part of stage clear/reset (this is patched in)
$806F - beginning of stage
$8073 - beginning of stage
$8075 - part of main loop
$80CB - part of the main loop
$8100 - part of bot plotting
$82FA - after green guy blink
$86A8 - VDSLST


$8178 - part of main loop
$81E6 - part of stage clear and reset
