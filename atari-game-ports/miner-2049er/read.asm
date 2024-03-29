	;; 
	;; Read Miner 2049er Score from disk
	;;
	;; @author  Thomas Cherryhomes
	;; @email   thom dot cherryhomes at gmail dot com
	;; @license gpl v. 3
	;;

	ORG $5900

SDMCTL	=	$022F

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

DMACTL	=	$D400
NMIEN	=	$D40E
	
SIOV	=	$E459   ; SIO Vector
SETVBV	=	$E45C	; Set VBV
POKMSK  =	$0010	; Pokey mask
IRQEN   = 	$D20E	; IRQ Enable

	JMP $92B9
	
	LDA $5BFE
	STA $0222

	LDA $5BFF
	STA $0223
	
	LDA #$40
	STA NMIEN

	LDA #$C0
	STA POKMSK
	
	LDA #$31		; Drive 1
	STA DDEVIC
	LDA #$01		; Unit 1 (D1:)
	STA DUNIT
	LDA #'R'		; Read
	STA DCOMND
	LDA #$40		; ->Atari
	STA DSTATS
	LDA #$00		; $0800
	STA DBUFLO
	LDA #$08
	STA DBUFHI
	LDA #$80		; 128 bytes
	STA DBYTLO
	LDA #$00
	STA DBYTHI
	LDA #$CF		; Sector $02CF
	STA DAUX1
	LDA #$02
	CLI
	JSR SIOV		; Do it

	LDA #$40		
	STA DSTATS
	LDA #$80		; $0880
	STA DBUFLO
	LDA #$08
	STA DBUFHI
	LDA #$89		; Sector $02D0
	STA DAUX1
	CLI
	JSR SIOV		; do it

	LDA #$BB
	STA $0222
	LDA #$B0
	STA $0223

	LDA #$C0
	STA NMIEN

	LDA #$00
	STA POKMSK

	SEI
	
	JMP $92B9		; Finish and back to high score display
