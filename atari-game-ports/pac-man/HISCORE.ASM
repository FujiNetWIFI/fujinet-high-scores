	;;
	;; hiscore additions
	;;

CHKEY	= $02FC
	
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

	JSR OCOLRS		; Set up color palette like ATRACT
	LDA #<HDLIST		; Set up high score display list
	STA SDLSTL		; ...
	STA DLISTL		; ...
	LDA #>HDLIST		; ...
	STA SDLSTH		; ...
	STA DLISTH		; ...
	LDA #<HDLIV		; Set up high score DLI
	STA VDSLST		; ...
	LDA #>HDLIV		; ...
	STA VDSLST+1		; ...
	
	;; Enter High score START

	LDX #$00		; Start with first place
	STX TEMLOC		; Store it.
	
	;; Find possible slot

HFSLT:	LDX TEMLOC
	LDY #$00		; First score char position
	LDA HSCROF,X		; Get high score screen ptr offset
	TAX			; Set to X
HFSLT2:	LDA TEXT+$2A,Y		; Load next char of high score slot
	CMP HISTR,X		; Compare against top high score.
	BEQ HFSLT3
	BCC HFSLT4
	BCS HSETSLT		; higher score than current slot, select this one.
HFSLT3:	INY			; Increment current hiscore slot ptr.
	INX			; Increment hiscore screen slot ptr
	CPY #$06		; Are we done with string comparison?
	BNE HFSLT2		; No, Continue string comparison
HFSLT4:	INC TEMLOC		; Increment slot #
	LDX TEMLOC		; Get Slot #
	CPX #$10		; Are we at last slot?
	BNE HFSLT		; Not done yet, next slot.
	JMP BLNKON		; Didn't find one, don't enter.
	
	;; Set Slot

HSETSLT:
	LDX TEMLOC		; Store found place.
	LDY #$09		; Start at end.
	STY TUNLOC

	;; Scoot older high scores down from selected slot
	
HSCOOT: LDY TUNLOC
	LDA HINIOF,Y
	TAX
	LDY #$00		; Beginning of string.

HSCOOT2:
	LDA HISTR,X
	STA HISTR+20,X
	INX
	INY
	CPY #12
	BNE HSCOOT2

	DEC TUNLOC
	BPL HSCOOT
	
	;; Copy high score to slot

	LDA TEMLOC		; Restore Score place
	TAX			; into X.
 	LDA HSCROF,X		; Get score offset on screen
 	TAY			; And store in Y

 	LDX #$00
HCPY:	LDA TEXT+$2A,X
 	STA HISTR,Y
 	INX
 	INY
 	CPX #$0C
 	BNE HCPY

	LDX TEMLOC
 	LDA HINIOF,X		; Find screen offset
 	TAX			; Send it to X

	;; Blank out initials
	
	LDA #"."+0x40		; RED
	STA HISTR,X
	INX
	STA HISTR,X
	INX
	STA HISTR,X
	DEX
	DEX
	
	LDY #$00		; # of initials entered
	LDX TEMLOC
	LDA HINIOF,X
	TAX
	
HENT:	JSR HRKEY		; Get initial.
	CMP #$FF		; Dead key?
	BEQ HENT		; Go back.
	
	CMP #52			; Backspace?
	BNE HENT2		; Nope, go to enter/advance.
	CPY #$00		; Are we at beginning?
	BEQ HENT		; Yes, ignore and get another key.
	DEY			; Otherwise, go backward
	DEX
	LDA #$00		; Blank char
	STA HISTR,X		; Store it.
	BEQ HENT		; Back to HENT. (always branch)

HENT2:	STA HISTR,X		; Enter onto screen.
	INX			; Advance screen pointer
	INY			; Advance initial pointer
	CPY #$03		; Are we at end?
	BNE HENT		; Nope, get another one.

	;; Enter High Score END

	;; Write High score to disk

	LDA #$31		; Disk drive
	STA DDEVIC		; into device
	LDA #$01		; Unit 1
	STA DUNIT		; into unit.
	LDA #'W'		; Write...
	STA DCOMND		; into command
	LDA #$80		; To Drive.
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
	LDA #'W'		; Write...
	STA DCOMND		; into command
	LDA #$80		; To Drive
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
	
	JMP BLNKON		; Wait for attract.

	;; Read key, convert to screen code. stored in TEMLOC
	
HRKEY:  TXA			; Save X
	PHA			; ...
	LDA #$FF
	STA CHKEY
HRKEY2: LDA CHKEY
        CMP #$FF
        BEQ HRKEY2
        LDX CHKEY
        LDA HKTBL,X
	STA TEMLOC		; Store into temp.
	PLA			; Restore X
	TAX			; ...
	LDA TEMLOC		; restore A from temp.
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
	.byte $C6,a(HIDAT),$07,$07,$86,$06,$06,$06,$06,$86,$06,$86,$06,$06,$06,$06,$06,$70,$70,$70,$86,$44,$70,$17 ; Score
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

HKTBL:
	.SB "l"+0x80			; 0
	.SB "j"+0x80			; 1
	.SB ";"			; 2
	.BY 0xFF			; 3 (F1)
	.BY 0xFF			; 4 (F2)
	.SB "k"+0x80			; 5
	.SB "+"			; 6
	.SB "*"			; 7
	.SB "o"+0x80			; 8
	.BY 0xFF			; 9
	.SB "p"+0x80			; 10
	.SB "u"+0x80			; 11
	.BY 0xFF			; 12 (RETURN)
	.SB "i"+0x80			; 13
	.SB "-"			; 14
	.SB "="			; 15
	.SB "v"+0x80			; 16
	.BY 0xFF			; 17 (HELP)
	.SB "c"+0x80			; 18
	.BY 0xFF			; 19 (F3)
	.BY 0xFF			; 20 (F4)
	.SB "b"+0x80			; 21
	.SB "x"+0x80			; 22
	.SB "z"+0x80			; 23
	.SB "4"			; 24
	.BY 0xFF			; 25 (DEAD)
	.SB "3"			; 26
	.SB "6"			; 27
	.BY 0xFF			; 28 (ESC)
	.SB "5"			; 29
	.SB "2"			; 30
	.SB "1"			; 31
	.SB ","			; 32
	.SB " "			; 33 (SPACE)
	.SB "."			; 34
	.SB "n"+0x80			; 35
	.BY 0xFF			; 36 (DEAD)
	.SB "m"+0x80			; 37
	.SB "/"			; 38
	.BY 0xFF			; 39 (ATARI)
	.SB "r"+0x80			; 40
	.BY 0xFF			; 41 (DEAD)
	.SB "e"+0x80			; 42
	.SB "y"+0x80			; 43
	.BY 0xFF			; 44
	.SB "t"+0x80			; 45
	.SB "w"+0x80			; 46
	.SB "q"+0x80			; 47
	.SB "9"			; 48
	.BY 0xFF			; 49 (DEAD)
	.SB "0"			; 50
	.SB "7"			; 51
	.BY 0xFF			; 52 (DEL)
	.SB "8"			; 53
	.SB "<"			; 54
	.SB ">"			; 55
	.SB "f"+0x80			; 56
	.SB "h"+0x80			; 57
	.SB "d"+0x80			; 58
	.BY 0xFF			; 59 (DEAD)
	.BY 0xFF			; 60 CAPS/LOWR
	.SB "g"+0x80			; 61
	.SB "s"+0x80			; 62
	.SB "a"+0x80			; 63

	;; High score screen offsets for each place.
	
HINIOF:
	.byte 6, 26, 46, 66, 86, 106, 126, 146, 166, 186

HSCROF:
	.byte 10, 20+10, 40+10, 60+10, 80+10, 100+10, 120+10, 140+10, 160+10, 180+10
