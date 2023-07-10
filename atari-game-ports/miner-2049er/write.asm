	;; 
	;; Write Miner 2049er Score to disk
	;;
	;; @author  Thomas Cherryhomes
	;; @email   thom dot cherryhomes at gmail dot com
	;; @license gpl v. 3
	;;

	ORG $5A00

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

NMIEN	=	$D40E
	
SIOV	=	$E459   ; SIO Vector

	LDA #$00
	STA NMIEN
	LDA #$31		; Drive 1
	STA DDEVIC
	LDA #$01		; Unit 1 (D1:)
	STA DUNIT
	LDA #'W'		; Write
	STA DCOMND
	LDA #$80		; ->Drive
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
	STA DAUX2
	JSR SIOV		; Do it

	LDA #$80		
	STA DSTATS
	LDA #$80		; $0880
	STA DBUFLO
	LDA #$08
	STA DBUFHI
	LDA #$D0		; Sector $02D0
	STA DAUX1
	JSR SIOV		; do it

	LDA #$C0
	STA NMIEN
	
	JMP $92B9		; Finish and back to High scores screen

	;; Patch routine to inject read/write score jumps

	ORG $5B00

	LDA $0222
	STA VVBLKISAVE
	LDA $0223
	STA VVBLKISAVE+1
	LDA #$4C		; High score read during attract
	STA $9CD9
	LDA #$00
	STA $9CDA
	LDA #$59
	STA $9CDB

	LDA #$4C		; High score write after enter.
	STA $A36B
	LDA #$00
	STA $A36C
	LDA #$5A
	STA $A36D

	JMP $7FC1		; ...and continue onto game.

	ORG $5BFE
VVBLKISAVE:	.ds 2
	
	ORG $2012		; Patch the final jump in the loader/decompressor.

	JMP $5B00		; ...To go to our patch routine.
	
	ORG $02E0		; Finally fix up the RUN address
	.WORD $2000		; To go to the loader/decompressor. Whew.

