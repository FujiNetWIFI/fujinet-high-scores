# Centipede

This one is pretty straightforward.

On Game over it loops in $A2C7 waiting for a non $07 in ZP address $99, which holds a mirror of CONSOL. So we can jump there to our hiscore routine, put the check for $07 at the end, and hop back if it succeeds.

Well, almost straightforward.

the VVBLKI vector at $A9A9 man-handles POKEY a bit, and clobbers any state during disk access.

@Djaybee provided a working solution

```
	LDA RTCLOK+2
wait1:
	CMP RTCLOK+2
	BEQ wait1	; wait for end of current/next VBI

	LDA VVBLKI
	PHA
	LDA VVBLKI+1
	PHA
	LDA SYSVBV+1
	STA VVBLKI
	LDA SYSVBV+2
	STA VVBLKI+1

    ; do our IO here (jsr hiscrl or jsr hiscrw)
	
	LDA RTCLOK+2
wait2:
	CMP RTCLOK+2
	BEQ wait2	; wait for end of current/next VBI

	PLA
	STA VVBLKI+1
	PLA
	STA VVBLKI
```

and this is in-lined around the calls to hiscrl and hiscrw respectively.

Thanks, @Djaybee!

