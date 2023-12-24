	;; FujiNet HighScoreEnabled code for Defender

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
p1scr0	equ $142F		; Player 1 score
	
	org $5F00
	
histr:	.ds 128
histr2:	.ds 128

	org $6000		; TODO move up if we can

hiscore_dlist:
	dta $70, $70, $70	; 3x8 blank (24)

	dta $4E, $18, $22	; Mode E LMS $2218
	dta $8E			; mode.i E
	dta $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dta $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dta $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dta $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	
	dta $46, .lo(hiscore_txt), .hi(hiscore_txt)
	dta $06, $06
	dta $46, .lo(histr), .hi(histr)
	dta $06, $06, $06, $06, $06, $06, $06, $06, $06, $06 ; Hiscore text

	dta $4E, $98, $33	; back to mode E
	dta $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dta $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dta $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e
	dta $0e, $0e, $0e, $0e, $0e, $0e, $0e, $0e, $8e

	dta $41, .lo(hiscore_dlist), .hi(hiscore_dlist)

slot:	        .ds 1           ; Hiscore slot
scootslot:		.ds 1		; Another temp location
xoff:		.ds 1		; Score digit offset

p1scr:	.ds 8
temp:	.ds 1

vkeybd_store:	.ds 2
	
hiscore_txt:
	.sb '                    '
	.sb '     high   scores  '
	.sb '                    '
	
hiscore:

	;; First we need to convert the odd score format into screen codes

	ldx #$00		; increment
	ldy #$07		; decrement

	lda p1scr0,x
	jsr BinBcd_sb
	lda temp
	and #$0f
	clc
	adc #$10
	sta p1scr,y
	dey
	lda temp
	lsr
	lsr
	lsr
	lsr
	clc
	adc #$10
	sta p1scr,y
	dey
	inx

	lda p1scr0,x
	jsr BinBcd_sb
	lda temp
	and #$0f
	clc
	adc #$10
	sta p1scr,y
	dey
	lda temp
	lsr
	lsr
	lsr
	lsr
	clc
	adc #$10
	sta p1scr,y
	dey
	inx

	lda p1scr0,x
	jsr BinBcd_sb
	lda temp
	and #$0f
	clc
	adc #$10
	sta p1scr,y
	dey
	lda temp
	lsr
	lsr
	lsr
	lsr
	clc
	adc #$10
	sta p1scr,y
	dey
	inx

	lda p1scr0,x
	jsr BinBcd_sb
	lda temp
	and #$0f
	clc
	adc #$10
	sta p1scr,y
	dey
	lda temp
	lsr
	lsr
	lsr
	lsr
	clc
	adc #$10
	sta p1scr,y
	dey
	inx			; score is now in screen code format in p1scr

	;; Remove leading zeroes from P1 score
	
	ldx #$00		; Start at 0
hssk:	lda p1scr,x		; Get next char
	cmp #$10		; Check against screen zero
	beq hssk2		;
	bcs hsl   		; If > 0, then continue
hssk2:	lda #$00		; Zero out
	sta p1scr,x		; The digit on display
	inx			; Go to next digit
	jmp hssk		; and go again.
	
hsl:	jsr hiscrl
	
	lda #.lo(hiscore_dlist)
	sta $0230

	lda #.hi(hiscore_dlist)
	sta $0231

	lda vkeybd_store
	sta VKEYBD
	lda vkeybd_store+1
	sta VKEYBD+1
	
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
	CPY #$08		; Are we done with string comparison?
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
 	CPX #$08
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

	jsr hiscrw		; Write to disk
	
HSBYE:
	LDA #$00		; Wait 7 secs or so.
	STA RTCLOK
	STA RTCLOK+1
	STA RTCLOK+2
HSWAIT:	LDA RTCLOK+1
	CMP #$03
	BNE HSWAIT

	;; Restore display list
	
	LDA #$00		; Otherwise, restore display list
	STA $0230
	LDA #$20
	STA $0231

	;; Restore keyboard vector
	
	LDA #$6D
	STA VKEYBD
	LDA #$BA
	STA VKEYBD+1

	;; Restore pokey registers

	LDA #$00
	STA AUDCTL
	STA AUDF1
	STA AUDC1
	STA AUDF2
	STA AUDC2
	LDA #$FF
	STA AUDF3
	LDA #$FE
	STA AUDF4
	LDA #$AF
	STA AUDC3
	STA AUDC4

	JMP L8031		; Go back, we're done.

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

; Convert a 7 bit binary value to BCD
;
; This routine converts a binary value to BCD; the value cannot be larger than 99.
; Same working principle of the other routines.
;
; Verz!!! 18-Mar-2017 (modified to preserve A/X, and to use temp as final storage place -Thom)
	
BinBcd_sb
		sta temp	; Put input in temp
	        txa
	        pha
	        lda temp      ; bring it back out
	        ldx #$7		; The number of source bits     2c
		asl 		;				2c
		sta bin	;				3c
		lda #$0		; Ensure the result is clear    2c
		sed		; Switch to decimal mode	2c
CnvBit_sb	asl BIN	; Shift out one bit		5c |
		sta BCD0	;				3c |
		adc BCD0	;				3c | 16c
		dex		; And repeat for next bit	2c |
		bne CnvBit_sb	;				3c |
	        cld		; Back to binary		2c
	        sta temp        ; stuff it in temp
	        pla
           	tax
		rts  		; All Done.

BIN	.ds 1
BCD0	.ds 1
	
myinit:
	lda VKEYBD
	sta VKEYBD_STORE
	lda VKEYBD+1
	sta VKEYBD_STORE+1

	jmp L8000
