;;
;; FujiNet High Score Enabled code
;;

	org $6000

chkey	equ $02FC
ddevic	equ $0300
dunit	equ $0301
dcomnd	equ $0302	
dstats	equ $0303
dbuflo	equ $0304
dbufhi	equ $0305
dtimlo	equ $0306
dbytlo	equ $0308
dbythi	equ $0309
daux1	equ $030A
daux2	equ $030B
siov	equ $E459
vkeybd	equ $0208
	
	
;;; The High score display list
	
hiscore_dlist:
	dta $70, $70, $60
	dta $4e, $00, $21	; 1
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e

	dta $0e			; adding one here to test.
	
	dta $0e			; 2
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e

	dta $0e			; 3
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	
	dta $0e			; 4
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	
	dta $0e			; 5
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	
	dta $46, .lo(hiscore_txt), .hi(hiscore_txt)
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	dta $06
	
	dta $4e, $C0, $38	;1
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e

	dta $0e			;2
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e

	dta $0e			;3
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	
	dta $0e			;4
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e

	dta $0e			;5
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e

	dta $0e			; dkong has 198 scanlines?!
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e

	dta $41,.lo(hiscore_dlist),.hi(hiscore_dlist)

vkeybd_store:	.ds 2		; vkeybd store
hiscore_store:	.ds 7		; Store hiscore here in screen code form.
temloc:	        .ds 1           ; Temporary location
tunloc:		.ds 1		; Another temp location
	
hiscore_txt:
	.sb '                    '
	.sb '    high   scores   '
	.sb '                    '

histr:  .ds 128
histr2:	.ds 128
	
hiscore:
	lda #$00
	sta $D000
	sta $D001
	sta $D002
	sta $D003
	sta $D004
	sta $D005
	sta $D006
	sta $D007
	lda #$40
	sta $D40E
	;; Load hi-score sectors (719-720) into memory
	jsr hiscrl

	;; Set up display list
	lda #.lo(hiscore_dlist)
	sta $0230
	lda #.hi(hiscore_dlist)
	sta $0231

	lda vkeybd_store
	sta $0208
	lda vkeybd_store+1
	sta $0209
hisz:	;; Zero out hiscore store
	ldx #$07
	lda #$00
@	dex
	sta hiscore_store,X
	cpx #$00
	bne @-
	
	;; skip past zero bytes in front of score
hisk:	ldx #$00		; Start at offset 0
@	lda $D3,X		; Check player score relative to X offset
	cmp #$00		; is digit zero?
	bne hisc		; No, go to score digit copy
	inx			; yes, increment.
	cpx #$06		; Are we at end?
	bne @-			; No, continue marching right.

	;; X now contains starting position of right justified score as BCD digits
	;; Convert to screen code
hisc:	clc			; clear carry
	lda $D3,X		; Get digit
	adc #$10		; add screen code offset
	sta hiscore_store,X	; store it.
	inx			; Increment
	cpx #$06		; are we past end?
	bne hisc		; nope, go again.

HSCONT:	
	LDX #$00		; Start with first place
	STX TEMLOC		; Store it.
	
	;; Find possible slot

HFSLT:	LDX TEMLOC
	LDY #$00		; First score char position
	LDA HSCROF,X		; Get high score screen ptr offset
	TAX			; Set to X
HFSLT2:	LDA hiscore_store,Y	; Load next char of high score slot
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
	CPX #$0A		; Are we at last slot?
	BNE HFSLT		; Not done yet, next slot.
	JMP $B1E8		; Didn't find one, don't enter.
	
	;; Set Slot

HSETSLT:
	LDX TEMLOC		; Store found place.
	LDA #$08		; Second to last place for scoot.
	STA TUNLOC		; Store in scoot position.

	;; Are we in slot 10? if so, bypass the scoot.

	LDA TEMLOC
	CMP #$09
	BEQ HENTR
	
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
	LDA TUNLOC
	CMP TEMLOC
	BPL HSCOOT
	
	;; Copy high score to slot

HENTR:	LDA TEMLOC		; Restore Score place
	TAX			; into X.
 	LDA HSCROF,X		; Get score offset on screen
 	TAY			; And store in Y

 	LDX #$00
HCPY:	LDA hiscore_store,X
 	STA HISTR,Y
 	INX
 	INY
 	CPX #$06
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

	jsr hiscrw		; Write to Disk.

	lda #$76		; restore the VKEYBD vector.
	sta vkeybd
	lda #$B1
	sta vkeybd+1
	
	jmp $B1E8		; go back to where we were.

	;; Subroutines *********************************************************

	;; store VKEYBD vector so we can have keyboard during high score entries.
	
hiscore_store_vectors:
	lda vkeybd
	sta vkeybd_store
	lda vkeybd+1
	sta vkeybd_store+1
	rts			; Go back to start

	;; Load hiscore table from disk into screen memory
	
hiscrl:	LDA #$31		; Disk drive
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
	RTS

	;; Write high score table from screen memory to sectors 719-720

hiscrw:	LDA #$31		; Disk drive
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
	JSR SIOV		; Do it.

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
	JSR SIOV		; Do it.
	RTS	 		; Done, goodbye

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
