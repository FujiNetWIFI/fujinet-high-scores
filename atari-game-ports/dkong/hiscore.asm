;;
;; FujiNet High Score Enabled code
;;

	org $6000

;; hiscore_font:	
;; 	ins 'hiscore.fnt'

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
	
	dta $0e			; 6
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	
	dta $0e			; 7
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
	
	dta $4e, $00, $30
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $0e
	dta $41,.lo(hiscore_dlist),.hi(hiscore_dlist)

hiscore_txt:
	.sb '   high  scores     '
	.sb '                    '
	.sb '  1. '
	.sb +$80 'TRC '
	.sb +$C0 '000000     '
	.sb '  2. ABC 000000     '
	.sb '  3. DEF 000000     '
	.sb '  4. GHI 000000     '
	.sb '  5. JKL 000000     '
	.sb '  6. MNO 000000     '
	.sb '  7. PQR 000000     '
	.sb '  8. STU 000000     '
	
hiscore:
	lda #.lo(hiscore_dlist)
	sta $0230
	lda #.hi(hiscore_dlist)
	sta $0231
loo:	jmp loo
	jmp $B1E8		; go back to where we were.
