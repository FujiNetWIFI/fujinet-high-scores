# Centipede

This one is pretty straightforward.

On Game over it loops in $A2C7 waiting for a non $07 in ZP address $99, which holds a mirror of CONSOL. So we can jump there to our hiscore routine, put the check for $07 at the end, and hop back if it succeeds.

