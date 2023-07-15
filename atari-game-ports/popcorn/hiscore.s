	;; Popcorn hiscore addition

HISCORE:
	LDA #<hiscore_dlist
	STA SDLSTL
	LDA #>hiscore_dlist
	STA SDLSTH

LO	JMP LO
	
        JSR L2424
        LDX L2675
        LDY L2675+1
	RTS
