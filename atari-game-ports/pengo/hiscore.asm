	;; FujiNet High Score Enabled Code for Pengo

CH1	equ $02F2
chkey	equ $02FC
dunit	equ $0301
dcomnd	equ $0302	
dstats	equ $0303
dbuflo	equ $0304
dbufhi	equ $0305
dtimlo	equ $0306
dbythi	equ $0309		
daux1	equ $030A
daux2	equ $030B
DSKINV	equ $E453
siov	equ $E459
setvbv  equ $E45C
p1scr	equ $0805		; Screen memory for P1 score

	org $5F00

histr:	.ds 128
histr2:	.ds 128

	org $6000

slot:	        .ds 1           ; Hiscore slot
scootslot:		.ds 1		; Another temp location
xoff:		.ds 1		; Score digit offset
vvblki_store:	.ds 2           ; temp storage for initial vvblki
	
hiscore_dlist:	
	dta $70, $60		; blank 8, blank 7
	dta $42, $00, $08	; mode 2 @ $0800    (1p 00 HI 00 2p 00)
	dta $80                 ; blank.i 1
	dta $44, $28, $08	; mode 4 @ $0828 (lives and eggs)
	dta $44, $78, $08	; mode 4 @ $0878 (top border?)
	dta $4E, $90, $12	; mode E @ $1290 (playfield)
	dta $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E
	dta $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E
	dta $0E, $0E, $0E, $0E, $0E

	dta $46, .lo(hiscore_txt), .hi(hiscore_txt)		  ; LMS to hiscore text
	dta $06, $06
	dta $46, .lo(histr), .hi(histr)
	dta $06, $06, $06, $06, $06, $06, $06, $06, $06, $06 ; Hiscore text
	
	dta $4E, $D0, $27	; mode E at $27D0
	dta $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E
	dta $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E, $0E
	dta $0E, $0E, $0E
	
	dta $44, $A0, $08	; mode 4 at $08A0
	dta $44, $C8, $08	; mode 4 at $08C8
	dta $41, .lo(hiscore_dlist), .hi(hiscore_dlist) ; JVB

hiscore_txt:
	.sb '                    '
	.sb '    high   scores   '
	.sb '                    '

;; HISTR:	.SB "   1.               "
;; 	.SB "   2.               "
;; 	.SB "   3.               "
;; 	.SB "   4.               "
;; 	.SB "   5.               "
;; 	.SB "   6.               "
;; 	.SB "   7.               "
;; 	.SB "   8.               "
;; 	.SB "   9.               "
;; 	.SB "  10.               "
;; 	.SB "                    "
;; 	.SB "                    "
;; 	.SB "                "	
		
hiscore:

	ldy VVBLKI_STORE
	ldx VVBLKI_STORE+1	
	lda #$06
	jsr setvbv

	lda #$40
	sta NMIEN
	
	lda #$00
	sta SDMCTL

	jsr hiscrl
	
	lda #$03
	sta SKCTL
	
	;; Set display list to show score
	lda #.lo(hiscore_dlist)
	sta $0230
	lda #.hi(hiscore_dlist)
	sta $0231

	ldy #$e0
	ldx #$86
	lda #$06
	jsr setvbv
	
	lda #$C0
	sta NMIEN

	lda #$3E
	sta SDMCTL
	
HSCONT:	
	LDX #$00		; Start with first place
	STX SLOT		; Store it.
	
	;; Find possible slot

HFSLT:	LDX SLOT
	LDY #$00		; First score char position
	LDA HSCROF,X		; Get high score screen ptr offset
	TAX			; Set to X
HFSLT2:	LDA p1scr,Y	; Load next char of high score slot
	CMP HISTR,X		; Compare against top high score.
	BEQ HFSLT3
	BCC HFSLT4
	BCS HSETSLT		; higher score than current slot, select this one.
HFSLT3:	INY			; Increment current hiscore slot ptr.
	INX			; Increment hiscore screen slot ptr
	CPY #$06		; Are we done with string comparison?
	BNE HFSLT2		; No, Continue string comparison
HFSLT4:	INC SLOT		; Increment slot #
	LDX SLOT		; Get Slot #
	CPX #$0A		; Are we at last slot?
	BNE HFSLT		; Not done yet, next slot.
	JMP HSBYE		; Didn't find one, don't enter.
	
	;; Set Slot

HSETSLT:
	LDX SLOT		; Store found place.
	LDA #$08		; Second to last place for scoot.
	STA SCOOTSLOT		; Store in scoot position.

	;; Are we in slot 10? if so, bypass the scoot.

	LDA SLOT
	CMP #$09
	BEQ HENTR
	
	;; Scoot older high scores down from selected slot
	
HSCOOT: LDY SCOOTSLOT
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

	DEC SCOOTSLOT
	LDA SCOOTSLOT
	CMP SLOT
	BPL HSCOOT
	
	;; Copy high score to slot

HENTR:	LDA SLOT		; Restore Score place
	TAX			; into X.
 	LDA HSCROF,X		; Get score offset on screen
 	TAY			; And store in Y

 	LDX #$00
HCPY:	LDA p1scr,X
HCPY2:	STA HISTR,Y
 	INX
 	INY
 	CPX #$06
 	BNE HCPY

	LDX SLOT
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
	LDX SLOT
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

	ldy VVBLKI_STORE
	ldx VVBLKI_STORE+1	
	lda #$06
	jsr setvbv

	lda #$40
	sta NMIEN
	
	lda #$00
	sta SDMCTL
	
	jsr hiscrw		; Write to disk

	lda #$03
	sta SKCTL
	
	ldy #$e0
	ldx #$86
	lda #$06
	jsr setvbv
	
	lda #$C0
	sta NMIEN

	lda #$3E
	sta SDMCTL	
	
	JMP HSBYE

	;; Load hiscore table from disk into screen memory
	;; First, a fake read to sector 1 to clear cache.

hiscrl:	LDA #'R'
	STA DCOMND
	LDA #$01
	STA DUNIT
	LDA #$00
	STA DBUFLO
	LDA #$50
	STA DBUFHI
	LDA #$01
	STA DAUX1
	LDA #$00
	STA DAUX2
	JSR DSKINV
	
	LDA #'R'		; Read...
	BNE hiscrio

	;; Write high score table from screen memory to sectors 719-720

hiscrw:
	LDA #'W'		; Write...
hiscrio:	STA DCOMND		; into command
	LDA #$01		; drive 1
	STA DUNIT		; into unit.
	LDA #.LO(HISTR)		; Hi score screen data buffer (LO)
	STA DBUFLO		; into Buffer lo byte
	LDA #.HI(HISTR)		; Hi score screen data buffer (HI)
	STA DBUFHI		; into Buffer hi byte
	LDA #$CF		; Sector 0x2CF (719)
	STA DAUX1		; ...
	LDA #$02		; ...
	STA DAUX2		; into the daux parameter.
	JSR DSKINV		; Do it.

	LDA #.LO(HISTR2)		; Hi score screen data buffer (LO)
	STA DBUFLO		; into Buffer lo byte
	LDA #.HI(HISTR2)		; Hi score screen data buffer (HI)
	STA DBUFHI		; into Buffer hi byte
	LDA #$D0		; Sector 0x2D0 (720)
	STA DAUX1		; ...
	LDA #$02		; ...
	STA DAUX2		; into the daux parameter.
	JSR DSKINV		; Do it.
	RTS	 		; Done, goodbye
	
	;; Read key, convert to screen code. stored in SLOT
	
HRKEY:  TXA			; Save X
	PHA			; ...
	LDA #$FF
	STA CHKEY
	LDA RTCLOK+1
	ADC #30			; keyboard debounce delay =30 jiffies
	TAX
HRKEY2: CPX RTCLOK+1		; delay expired?
	BNE @+
	LDA #0			; yes => reset "last" key
	STA CH1
@	LDA CHKEY
        CMP #$FF
        BEQ HRKEY2
        LDX CHKEY
        LDA HKTBL,X
	STA TEMP		; Store into temp.
	PLA			; Restore X
	TAX			; ...
	LDA TEMP		; restore A from temp.
	RTS

HSBYE:
	LDA #$00		; Wait 7 secs or so.
	STA RTCLOK
	STA RTCLOK+1
HSWAIT:	LDA RTCLOK
	CMP #$03
	BNE HSWAIT
	SEI
	LDA #$00		; Otherwise, restore display list
	STA AUDCTL
	CLI
	STA $0230
	LDA #$06
	STA $0231
	JMP $8817
	RTS		; ...and go back.
	
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
	.byte 11, 20+11, 40+11, 60+11, 80+11, 100+11, 120+11, 140+11, 160+11, 180+11


	;; store original VVBLKI for disk use
	
init:	LDA VVBLKI
	STA VVBLKI_STORE
	LDA VVBLKI+1
	STA VVBLKI_STORE+1
	JMP $83B9		; Go to original init.

