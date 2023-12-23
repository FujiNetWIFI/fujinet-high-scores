	;; FujiNet High Score Enabled code for Qix

	org $5000

CH1	equ $02F2
chkey	equ $02FC
ddevic	equ $0300
dunit	equ $0301
dstats	equ $0303
dbuflo	equ $0304
dbufhi	equ $0305
dtimlo	equ $0306
dbytlo	equ $0308
dbythi	equ $0309
daux1	equ $030A
daux2	equ $030B
DSKINV	equ $E453
;siov	equ $E459

hiscore_dlist:
	dta $70, $70, $60 	; 8 blank, very tall.
	dta $44, $80, $20	; Mode 4 @ $2080
	dta $04			; Mode 4
	dta $00			; Blank 1
	
	dta $4d, $00, $30	; Mode D @ $3000
	dta $0d 		; Mode D
	dta $0d 		; Mode.i D
	dta $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d ; Mode d * 10
	dta $0d, $0d, $0d

	dta $c6, .lo(hiscore_txt), .hi(hiscore_txt) ; Mode 6.i @ (hiscore_txt)
	dta $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06, $06

	dta $cd, $c0, $38	; Mode.i D @ $38C0
	
	dta $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d, $0d ; continue on mode D
	dta $0d, $0d, $0d, $0d, $0d, $0d

	dta $00						     ; Blank.i 1

	dta $41, .lo(hiscore_dlist), .hi(hiscore_dlist)	     ; JVB -> hicore_dlist

hiscore_txt:
	.sb '                '
	.sb '  high   scores '
	.sb '                '

HISTR:	.SB " 1.             "
	.SB " 2.             "
	.SB " 3.             "
	.SB " 4.             "
	.SB " 5.             "
	.SB " 6.             "
	.SB " 7.             "
	.SB " 8.             "
	.SB " 9.             "
	.SB "10.             "
	.SB "                "
	.SB "                "
	.SB "            "	

histore:	.ds 8		; Hiscore screen code storage after BCD
slot:	        .ds 1           ; Hiscore slot
scootslot:		.ds 1		; Another temp location
	
	
hiscore:

	;; Set display list to hiscores
	lda #.lo(hiscore_dlist)
	sta RAMLO+1
	lda #.hi(hiscore_dlist)
	sta TRAMSZ

	;; bring in our dli
	lda #.lo(hiscore_dli1)
	sta VDSLST
	lda #.hi(hiscore_dli1)
	sta VDSLST+1

	;; Convert score BCD to screen code
	ldx #$07		; Start at end

hs1	lda $98
	sta TEMP
	and #$0F
	clc
	adc #$10
	sta histore,x
	dex
	lda TEMP
	lsr
	lsr
	lsr
	lsr
	clc
	adc #$10
	sta histore,x
	dex

hs2	lda $97
	sta TEMP
	and #$0F
	clc
	adc #$10
	sta histore,x
	dex
	lda TEMP
	lsr
	lsr
	lsr
	lsr
	clc
	adc #$10
	sta histore,x
	dex

hs3	lda $96
	sta TEMP
	and #$0F
	clc
	adc #$10
	sta histore,x
	dex
	lda TEMP
	lsr
	lsr
	lsr
	lsr
	clc
	adc #$10
	sta histore,x
	dex

hs4	lda $95
	sta TEMP
	and #$0F
	clc
	adc #$10
	sta histore,x

	;; Strip off leading zeroes
hss:	lda histore,x
	cmp #$10
	bne HSCONT
	eor histore,x
	sta histore,x
	inx
	cpx #$08
	bne hss

	;; Hiscore now stored in histore.

HSCONT:	
	LDX #$00		; Start with first place
	STX SLOT		; Store it.
	
	;; Find possible slot

HFSLT:	LDX SLOT
	LDY #$00		; First score char position
	LDA HSCROF,X		; Get high score screen ptr offset
	TAX			; Set to X
HFSLT2:	LDA histore,Y	; Load next char of high score slot
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
	STA HISTR+16,X
	INX
	INY
	CPY #8			; TODO COME BACK HERE.
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

 	LDX #$01
HCPY:	LDA histore,X
 	STA HISTR,Y
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

	;; jsr hiscrw		; Write to Disk.

	lda #$76		; restore the VKEYBD vector.
	sta vkeybd
	lda #$B1
	sta vkeybd+1
	
	jmp HSBYE		; go back to where we were.


	;; Read key, convert to screen code. stored in SLOT
	
HRKEY:  TXA			; Save X
	PHA			; ...
	LDA #$FF
	STA CHKEY
	LDA $14
	ADC #30			; keyboard debounce delay =30 jiffies
	TAX
HRKEY2: CPX $14			; delay expired?
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

HSBYE:	LDA #$00		; Store zero in
	STA $12			; RTCLOKage
	STA $13
	STA $14
HSBL1:	LDA $13			; Check every 256 frames
	CMP #$04		; Waited long enough?
	BNE HSBL1		; Nope, wait some more.

	LDA #$03	        ; Turn the players and missiles back on
	STA $D01D
	
	JMP $B1E8		; Go back.
	
	
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
	.byte 4, 20, 36, 52, 68, 84, 100, 116, 132, 148

HSCROF:
	.byte 8, 24, 40, 56, 72, 88, 104, 120, 136, 152
	
	;; The DLIs we need to display the high scores
	
hiscore_dli1:			; Switch to ROM charset
	pha
	txa
	pha
	tya
	pha

	sta WSYNC
	lda #$e0
	sta CHBASE

	lda #.lo(hiscore_dli2)
	sta VDSLST
	lda #.hi(hiscore_dli2)
	sta VDSLST+1
	
	pla
	tay
	pla
	tax
	pla
	rti

hiscore_dli2:	
	pha
	txa
	pha
	tya
	pha

	sta WSYNC
	lda #$e0		; Switch back to QIX charset
	sta CHBASE

	lda #.lo(hiscore_dli1)
	sta VDSLST
	lda #.hi(hiscore_dli1)
	sta VDSLST+1
	
	pla
	tay
	pla
	tax
	pla
	rti
