;;
;; FujiNet High Score Enabled code
;;

	org $6000

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

hiscore_store:	.ds 6		; Store hiscore here in screen code form.
	
hiscore_txt:
	.sb '                    '
	.sb '    high   scores   '
	.sb '                    '
histr:  .ds 128
histr2:	.ds 128
	;; .sb '    1. TRC 000000   '
	;; .sb '    2. ABC 000000   '
	;; .sb '    3. DEF 000000   '
	;; .sb '    4. GHI 000000   '
	;; .sb '    5. JKL 000000   '
	;; .sb '    6. MNO 000000   '
	;; .sb '    7. PQR 000000   '
	;; .sb '    8. STU 000000   '
	;; .sb '    9. VWX 000000   '
	;; .sb '   10. YZA 000000   '
	;; .sb '                    '
	
hiscore:
	;; Load hi-score sectors (719-720) into memory
	jsr hiscrl
	
	;; Set up display list
	lda #.lo(hiscore_dlist)
	sta $0230
	lda #.hi(hiscore_dlist)
	sta $0231

	;; Convert player score to screen codes and store
	ldx #$00
@	lda $D3,X
	sta hiscore_store,X
	cmp #$05
	bne @-

	

hiscore_convert:
	
loo:	jmp loo			; Temporary while I work out the screen/dlist.
	jmp $B1E8		; go back to where we were.

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
