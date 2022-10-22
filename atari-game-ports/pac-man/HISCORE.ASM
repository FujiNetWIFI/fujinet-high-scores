	;;
	;; hiscore additions
	;;

CHKEY	= $02FC
KGETCH 	= $F6E2
	
	;; Clear off players
	;; Set display list and DLI
HISCR:
	LDA #$31		; Disk drive
	STA DDEVIC		; into device
	LDA #$01		; Unit 1
	STA DUNIT		; into unit.
	LDA #'R'		; Read...
	STA DCOMND		; into command
	LDA #$40		; To Atari
	STA DSTATS		; into data direction
	LDA #.LO(HISTR)		; Hi score screen data buffer (LO)
	STA DBUFLO		; into Buffer lo byte
	LDA #.HI(HISTR)		; Hi score screen data buffer (HI)
	STA DBUFHI		; into Buffer hi byte
	LDA #$0F		; Standard timeout value (approx 15 seconds)
	STA DTIMLO		; into timeout.
	LDA #$80		; 128 byte sector
	STA DBYTLO		; ...
	LDA #$00		; ...
	STA DBYTHI		; into # of bytes requested.
	LDA #$CF		; Sector 0x2CF (719)
	STA DAUX1		; ...
	LDA #$02		; ...
	STA DAUX2		; into the daux parameter.
	JSR SIOV

	LDA #$31		; Disk drive
	STA DDEVIC		; into device
	LDA #$01		; Unit 1
	STA DUNIT		; into unit.
	LDA #'R'		; Read...
	STA DCOMND		; into command
	LDA #$40		; To Atari
	STA DSTATS		; into data direction
	LDA #.LO(HISTR2)	; Hi score screen data buffer (LO)
	STA DBUFLO		; into Buffer lo byte
	LDA #.HI(HISTR2)	; Hi score screen data buffer (HI)
	STA DBUFHI		; into Buffer hi byte
	LDA #$0F		; Standard timeout value (approx 15 seconds)
	STA DTIMLO		; into timeout.
	LDA #$80		; 128 byte sector
	STA DBYTLO		; ...
	LDA #$00		; ...
	STA DBYTHI		; into # of bytes requested.
	LDA #$D0		; Sector 0x2D0 (720)
	STA DAUX1		; ...
	LDA #$02		; ...
	STA DAUX2		; into the daux parameter.
	JSR SIOV

	JSR OCOLRS
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

	;; Enter High score

	JSR HRKEY
	
	LDX #$06
	STA HISTR,X
	
	JMP BLNKON		; Wait for attract.

	;; Read key, convert to screen code 
	
HRKEY:	LDA #$FF
	STA CHKEY
HRKEY2: LDA CHKEY
        CMP #$FF
        BEQ HRKEY2
        LDX CHKEY
        LDA HKTBL,X
	RTS
	
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
HISTR:
	.SB "                    "
	.SB "  HI SCORE TABLE    "
	.SB "                    "
	.SB "     NOT READ       "
	.SB "                    "
	.SB "                    "
	.SB "        "           
HISTR2:
	.SB         "            "
	.SB "                    "
	.SB "                    "
	.SB "                    "
	.SB "                    "
	.SB "                    "
	.SB "                    "
        .SB "                    "

HCINDX  .BY >CHRORG,>CHRORG,>CHRORG,>CHRORG,>PACCHR

        ;; Key to screen code table.

HKTBL:	.SB "LJ;  K+*O PU I-=V C  BXZ4 36 521, .N MZ R EY TWQ9 07 8<>UD   GSA"
