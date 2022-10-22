	;;
	;; hiscore additions
	;;

	;; Clear off players
	
	;; Set display list and DLI
	
HISCR:	JSR OCOLRS
	LDA #<HDLIST
	STA SDLSTL
	STA DLISTL
	LDA #>HDLIST
	STA SDLSTH
	STA DLISTH
	LDA #<HDLIV
	STA VDSLST
	LDA #>HDLIV
	STA VDSLST+1
	JSR CKHIGH
	JMP BLNKON

HDLIV:	PHA
	TXA
	PHA
	TYA
	PHA
	LDX DLICNT
	BNE HDLI1
	LDY ACOLR2
	LDA ACOLR1
	LDX #>OPTCHR
	STA WSYNC
	STX CHBASE
	STA COLPF2
	STY COLPF1
	JMP HDLIX
HDLI1	LDA HCINDX,X
	STA WSYNC
	STA CHBASE
HDLIX	INC DLICNT
	PLA
	TAY
	PLA
	TAX
	PLA
	RTI
	
HDLIST
	.byte $70,$70		; 16 blank scanlines
	.byte $42,$00,$28,$02	; mode 2 for score
	.byte $C6,a(HIDAT),$07,$07,$86,$06,$06,$06,$06,$86,$06,$86,$06,$06,$06,$06,$06,$06,$06,$06,$86,$44,$70,$17 ; Score
	.byte $41, a(HDLIST)

	
HIDAT:
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; Margin
	.byte $00,$00,$00,$00,$C1,$C2,$C3,$C4,$C5,$C6,$C7,$C8,$C9,$CA,$CB,$CC,$00,$00,$00,$00 ; Logo 1
	.byte $00,$00,$00,$00,$CD,$CE,$CF,$D0,$D1,$D2,$D3,$D4,$D5,$D6,$D7,$D8,$00,$00,$00,$00 ; Logo 2
	.byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00 ; Margin

	.SB "     high scores    "
	.SB "                    "
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
	.SB "                    "
	.SB "                    "

HCINDX  .BY >CHRORG,>CHRORG,>CHRORG,>CHRORG,>PACCHR
