	;; FujiNet High Score Enabled code for Qix

	org $5000

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

HISTR:	.SB " 1. AAA  000000 "
	.SB " 2. AAA  000000 "
	.SB " 3. AAA  000000 "
	.SB " 4. AAA  000000 "
	.SB " 5. AAA  000000 "
	.SB " 6. AAA  000000 "
	.SB " 7. AAA  000000 "
	.SB " 8. AAA  000000 "
	.SB " 9. AAA  000000 "
	.SB "10. AAA  000000 "
	.SB "                "
	.SB "                "
	.SB "            "	

	
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
	

hl:	jmp hl


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
	lda #$9c		; Switch back to QIX charset
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
