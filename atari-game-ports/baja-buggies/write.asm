;; 
;; Write high scores to disk
;;

	OPT h-

DDEVIC	=	$0300	;peripheral bus ID number
DUNIT	=	$0301	;unit number
DCOMND	=	$0302	;bus command ordinal
DSTATS	=	$0303	;command type/status return
DBUFLO	=	$0304	;data buffer pointer
DBUFHI	=	$0305
DTIMLO	=	$0306	;device timeout in seconds
DBYTLO	=	$0308	;number of bytes transferred
DBYTHI	=	$0309
DAUX1	=	$030A	;command auxiliary bytes
DAUX2	=	$030B

SIOV	=	$E459   ; SIO Vector

	ORG $0489

	LDA #$00		; We need to put the bottom of the display back to blank
	STA $37D2		; because we are writing it back to disk.
	STA $37D3		; otherwise all hell breaks loose.
	
	LDA #$31		; Drive 1
	STA DDEVIC
	LDA #$01		; Unit 1 (D1:)
	STA DUNIT
	LDA #'W'		; Write
	STA DCOMND
	LDA #$80		; ->Drive
	STA DSTATS
	LDA #$80		; $3780
	STA DBUFLO
	LDA #$37
	STA DBUFHI
	LDA #$80		; 128 bytes
	STA DBYTLO
	LDA #$00
	STA DBYTHI
	LDA #$88		; Sector $88
	STA DAUX1
	LDA #$00
	JSR SIOV		; Do it

	LDA #$80		
	STA DSTATS
	LDA #$00		; $3800
	STA DBUFLO
	LDA #$38
	STA DBUFHI
	LDA #$89		; Sector $89
	STA DAUX1
	JSR SIOV		; do it

	LDA #$80
	STA DSTATS
	LDA #$80		; $3880
	STA DBUFLO
	LDA #$38
	STA DBUFHI
	LDA #$8A		; Sector $8A
	STA DAUX1
	JSR SIOV		; do it.

	JMP $38DF		; Finish and back to Attract mode.
