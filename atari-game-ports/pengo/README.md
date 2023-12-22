# Pengo

$83B9 - Cart entry point
    I already see VVBLKI messed with here, so may need to employ centipede vblank trick
$8597 - Somewhere in START logic
$8889 - Called when start is pressed
$9DAF - part of Stage repainting logic
$A0D7 - called when blocks blink at beginning of stage
$A1D1 - called when dead, but not game over.
$A1EA - called when game over and start is pressed
$A1E0 - called when game over and start is pressed
$A253 - called during stage repainting logic
$A374 - called when start is pressed
$A38C - called when start is pressed
$A39B - called when start is pressed
$A8A3 - called regularly before $A1D1.

-- OK, ZEROED IN! game over
$8817
$9DF3
$8660

$9DF0 - there you are.

161 lines of mode E split across 86 and 75 spans

112 scanlines needed for display

$1290
$1180 to skip
$03C0
 
1290
