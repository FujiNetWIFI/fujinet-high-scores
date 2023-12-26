	;; FujiNet HighscoreEnabled code

	org $6000

hiscore_dlist:
	dta $70, $70, $70	; 3 blank
	dta $46, .lo(hiscore_txt), .hi(hiscore_txt) ; Mode 6 @ hiscore
	dta $86
	dta $06
	dta $86
	dta $06
	dta $86
	dta $06
	dta $06
	dta $06
	dta $86
	dta $06
	dta $86
	dta $06
	dta $86
	dta $06
	dta $86
	dta $4D, $A0, $19
	dta $8d
	dta $0d,$0d
	dta $8d
	dta $0d,$0d
	dta $8d
	dta $0d,$0d
	dta $8d
	dta $0d,$0d
	dta $8d
	dta $0d,$0d
	dta $8d
	dta $0d,$0d
	dta $8d
	dta $0d,$0d
	dta $8d
	dta $0d,$0d
	dta $8d,$8d
	dta $0d
	dta $8d
	dta $0d
	dta $8d,$8d
	dta $0d,$0d
	dta $8d
	dta $0d,$0d
	dta $41,.lo(hiscore_dlist),.hi(hiscore_dlist)

hiscore_txt:
	.sb '    high   scores   '
	.sb '                    '

	;; .ds 280

HISTR:	.SB "   1.               "
	.SB "   2.               "
	.SB "   3.               "
	.SB "   4.               "
	.SB "   5.               "
	.SB "   6.               "
	.SB "   7.               "
	.SB "   8.               "
	.SB "   9.               "
	.SB "  10.               "
	.SB "                    "
	.SB "                    "
	.SB "                "	

	.ds 24

hiscore:
	lda #.lo(hiscore_dlist)
	sta sdlstl
	lda #.hi(hiscore_dlist)
	sta sdlsth

	
hl:	jmp hl
