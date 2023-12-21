; 
            icl 'Centipede.inc'
;
; Start of code
;
            org $2020
;
L2020       lsr SAVADR+1
            jmp (L7665)
            adc COLAC
            .byte $73
            adc #$6F
            ror L6220
            adc L4820,Y
            .byte $4F
            eor L5345
            .byte $4F
            lsr ROWCRS
            jsr L203A
L203A       .byte $20
;
            org $0244
;
            .byte $01
;
            org $D301
;
            .byte $FF
				;
	;; FujiNet Hi Score Table code

	icl 'hiscore.asm'
	
            org $A000
;
LA000       lda #$00
            sta SDMCTL
            lda RTCLOK+2
LA007       cmp RTCLOK+2
            beq LA007
            nop
            lda #$00
            sta SKCTL
            lda #$C0
            sta POKMSK
            sta IRQEN
            lda #$40
            sta RAMTOP
            sta NMIEN
            lda #$6A
            sta VVBLKD
            lda #$A9
            sta VVBLKD+1
            lda #$A9
            sta VVBLKI
            lda #$A9
            sta VVBLKI+1
            jsr LB0C6
            ldx #$00
LA038       lda LE000,X
            sta L2800,X
            lda LE100,X
            sta L2900,X
            lda LE200,X
            sta L2A00,X
            lda LE300,X
            sta L2B00,X
            inx
            bne LA038
            ldx #$F8
LA055       lda LA65F,X
            sta L29FF,X
            dex
            bne LA055
            lda #$28
            sta CHBAS
            lda #$00
            sta SDMCTL
            lda #$00
            sta SDLSTL
            sta L00D6
            lda #$38
            sta SDLSTH
            sta L00D7
            ldy #$20
LA078       lda LA767+2,Y
            sta L37FF,Y
            dey
            bne LA078
            nop
            nop
            nop
            lda LA76E
            pha
            lda VVBLKD
            sta L00FE
            lda VVBLKD+1
            sta L00FF
            pla
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            jsr LA447
            lda #$00
            sta L0086
            sta LOMEM
            sta L0090
            sta L0091
            sta L0092
            sta L0093
            sta L0094
            sta L0095
            sta L0096
            sta L008C
            sta LOMEM+1
            sta L0085
            sta L0083
            sta L0084
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            sta AUDCTL
            lda #$07
            sta L0099
            lda LA650
            sta PCOLR0
            lda LA650
            sta PCOLR1
            lda LA650+1
            sta PCOLR2
            lda LA652
            sta PCOLR3
            ldy #$04
            lda L3800,Y
            sta SAVMSC
            sta ADRESS
            iny
            lda L3800,Y
            sta SAVMSC+1
            sta ADRESS+1
            jsr LB0C6
            lda #$3E
            sta SDMCTL
            jsr LA55F
            jsr LA4C8
LA114       jsr LABD8
            jsr LB7C5
            ldx #$0C
            ldy #$00
LA11E       dey
            bne LA11E
            dex
            bne LA11E
            jsr LABD8
            lda L0099
            cmp #$06
            bne LA114
            jsr LA1B2
            lda #$00
            sta L008F
            sta L00BC
            sta L00BD
            sta L00BE
            sta L00BF
LA13C       jsr LABD8
            jsr LB7C5
            ldx #$0C
            ldy #$00
LA146       dey
            bne LA146
            dex
            bne LA146
            jsr LABD8
            lda L0099
            cmp #$07
            beq LA13C
            cmp #$06
            beq LA160
            cmp #$05
            beq LA163
            jmp LA13C
LA160       jmp LA1ED
LA163       lda L008F
            eor #$01
            sta L00BD
            sta L008F
            sta L00BC
            jsr LA173
            jmp LA13C
LA173       lda L00BC
            beq LA1B2
            ldy #$1A
            sty L00A4
            lda #$A8
            sta L00A1
            lda #$76
            sta L00A0
            bne LA187
            dec L00A1
LA187       dec L00A0
            lda #$30
            sta L00A5
            lda #$00
            sta L00A6
            jsr LAB60
            ldy #$4C
            sty L00A4
            lda #$A8
            sta L00A1
            lda #$8F
            sta L00A0
            bne LA1A4
            dec L00A1
LA1A4       dec L00A0
            lda #$6A
            sta L00A5
            lda #$03
            sta L00A6
            jsr LAB60
            rts
LA1B2       ldy #$1A
            sty L00A4
            lda #$A8
            sta L00A1
            lda #$11
            sta L00A0
            bne LA1C2
            dec L00A1
LA1C2       dec L00A0
            lda #$30
            sta L00A5
            lda #$00
            sta L00A6
            jsr LAB60
            ldy #$4C
            sty L00A4
            lda #$A8
            sta L00A1
            lda #$2A
            sta L00A0
            bne LA1DF
            dec L00A1
LA1DF       dec L00A0
            lda #$6A
            sta L00A5
            lda #$03
            sta L00A6
            jsr LAB60
            rts
LA1ED       lda #$01
            sta L0086
            lda LB5AD
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            nop
            cmp LB5AD
            beq LA20E
            jmp LAC66
LA20E       jsr LAC66
            lda #$A1
            sta L00AF
            lda #$F1
            sta L00AE
            lda L008F
            beq LA21F
            sta L00BC
LA21F       sta L00BD
            jsr LB0C6
            jsr LA5E3
            jsr LB0C6
            jsr LA5C2
            lda #$00
            sta SKCTL
            sta L00A7
            sta L0083
            sta L0084
            sta L009C
            sta L009D
            sta L008E
            sta L008D
            sta L00BF
            ldx #$04
            stx L00BE
            lda L00BC
            beq LA24C
            stx L00BF
LA24C       lda #$FF
            sta L00BB
            jsr LABA1
            lda L00BC
            beq LA25D
            jsr LA5E3
            jsr LABA1
LA25D       jsr LAB7C
            ldx L00BC
            beq LA26D
            jsr LA5E3
            lda L00BD
            eor #$01
            sta L00BD
LA26D       lda L00BD
            tax
            lda L00BE,X
            beq LA278
LA274       dec L00BE,X
            bne LA2A5
LA278       ldx L00BC
            beq LA28D
            jsr LA5E3
            lda L00BD
            eor #$01
            sta L00BD
            tax
            lda L00BE,X
            beq LA28D
            jmp LA274
LA28D       ldx L00BC
            beq LA294
            jsr LA5E3
LA294       ldy L008F
LA296       ldx #$00
LA298       inx
            cpx #$04
            beq LA2C1
            tya
            beq LA2A8
            lda L00DC,X
            jmp LA2AA
LA2A5       jmp LA2F0
LA2A8       lda L00D8,X
LA2AA       cmp L00E0,X
            beq LA298
            bcc LA2C1
            ldx #$04
LA2B2       tya
            beq LA2BA
            lda L00DB,X
            jmp LA2BC
LA2BA       lda L00D7,X
LA2BC       sta L00DF,X
            dex
            bne LA2B2
LA2C1       dey
            beq LA296
            jsr LB59E
LA2C7
	jsr hiscore
hsback:	nop
	nop
	nop
	
	;;  lda L0099
        ;;  cmp #$07
        ;;  beq LA2C7
            cmp #$06
            beq LA2D8
            cmp #$05
            beq LA2DE
            jmp HSBYE
LA2D8       jsr LA5C2
            jmp LA1ED
LA2DE       lda #$00
            sta L0083
            sta L0084
            jsr LB0C6
            jsr LA447
            jsr LA55F
            jmp LA163
LA2F0       jsr LA5DA
            lda #$0E
            sta COLOR1
            lda L00BC
            bne LA2FF
            jmp LA387
LA2FF       lda L00BD
            beq LA323
            ldy #$0F
            sty L00A4
            lda #$A8
            sta L00A1
            lda #$EA
            sta L00A0
            bne LA313
            dec L00A1
LA313       dec L00A0
            lda #$A6
            sta L00A5
            lda #$03
            sta L00A6
            jsr LAB60
            jmp LA340
LA323       ldy #$0F
            sty L00A4
            lda #$A8
            sta L00A1
            lda #$F9
            sta L00A0
            bne LA333
            dec L00A1
LA333       dec L00A0
            lda #$A6
            sta L00A5
            lda #$03
            sta L00A6
            jsr LAB60
LA340       jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            jsr LB57E
            ldy #$0F
            sty L00A4
            lda #$A8
            sta L00A1
            lda #$DB
            sta L00A0
            bne LA37A
            dec L00A1
LA37A       dec L00A0
            lda #$A6
            sta L00A5
            lda #$03
            sta L00A6
            jsr LAB60
LA387       jsr LA5DA
            jsr LA447
            jsr LB59E
            lda #$11
            sta L0087
            lda #$18
            sta L0088
            lda #$90
            sta L0089
            lda #$D8
            sta L008A
            lda #$FF
            sta CH
            lda #$00
            sta LOMEM+1
            sta L0085
LA3AB       ldy #$04
            lda (L00AE),Y
            iny
            iny
            iny
            cmp (L00AE),Y
            beq LA3CB
            lda L0086
            clc
            ror
            ror
            sta RAMTOP
            sta ADRESS
            lda L0086
            sta ADRESS+1
            rol ADRESS+1
LA3C5       jsr LB0C6
            jmp (ADRESS)
LA3CB       lda #$08
            sta CONSOL
            lda L0099
            cmp #$06
            beq LA435
            cmp #$05
            beq LA43E
            jsr LABD8
            jsr LB11C
            jsr LB207
            jsr LABD8
            jsr LB7C5
            jsr LB6F5
            jsr LB11C
            jsr LB8D1
            jsr LABD8
            jsr LB207
            ldx L00BD
            lda L008D,X
            cmp #$01
            bcc LA424
            jsr LABD8
            ldx L00BD
            lda L008D,X
            cmp #$02
            bcc LA424
            jsr LB7C5
            ldx L00BD
            lda L008D,X
            cmp #$04
            bcc LA424
            jsr LB6F5
            ldx L00BD
            lda L008D,X
            cmp #$08
            bcc LA424
            jsr LABD8
LA424       jsr LA61F
            ldy #$03
LA429       ldx L00BB
            inx
LA42C       dex
            bne LA42C
            dey
            bne LA429
            jmp LA3AB
LA435       lda #$00
            sta L00A7
            sta L0096
            jmp LA2D8
LA43E       lda #$00
            sta L00A7
            sta L0096
            jmp LA2DE
LA447       lda #$20
            sta PMBASE
            lda #$03
            sta GRACTL
            lda #$00
            sta HPOSM3
            sta HPOSP1
            ldx #$80
            stx HPOSP0
            stx L00B2
            inx
            inx
            stx HPOSM1
            ldx #$84
            stx HPOSM0
            lda #$11
            sta GPRIOR
            lda #$05
            sta L23DA
            sta L23DB
            lda #$D8
            sta L00B3
            ldx #$08
LA47D       lda LA757,X
            sta L24D7,X
            dex
            bne LA47D
            jsr LB7B9
LA489       lda #$B0
            sta L00B6
            lda #$01
            sta L00BA
            ldx L00BD
            lda L0083,X
            and #$07
            tax
            lda LA650,X
            sta PCOLR0
            lda LA650+1,X
            sta PCOLR1
            lda LA652,X
            sta PCOLR2
            lda LA653,X
            sta PCOLR3
            lda LA653+1,X
            sta COLOR0
            lda LA655,X
            sta COLOR1
            lda #$00
            sta L00F5
            sta COLOR2
            lda #$58
            sta COLOR3
LA4C8       lda RANDOM
            cmp #$18
            bcs LA4C8
            sta L00B0
            tax
            ldy #$02
            jsr LB3D8
            bne LA4C8
            ldy L00B0
            ldx #$C0
LA4DD       lda #$00
            sta L0095
            sta L05F0,X
            sta L05F1,X
            sta L05F2,X
            sta L05F4,X
            sta L05F5,X
            sta L05F6,X
            sta L05F7,X
            sta L05F8,X
            sta L05F9,X
            sta L05FA,X
            sta L05FB,X
            sta L05FC,X
            sta L05FD,X
            sta L05FE,X
            sta L05FF,X
            tya
            sta L05F3,X
            inc L05F5,X
            inc L05F6,X
            inc L05F4,X
            inc L05F4,X
            iny
            txa
            sec
            sbc #$10
            tax
            bne LA4DD
            inx
            stx L0602
            lda L0603
            sta L00AA
            lda #$02
            sta L00A8
            lda L0604
            sta L00AB
            lda #$01
            sta L00AC
            lda #$00
            sta L00AD
            ldx L00BD
            lda L0083,X
            beq LA55E
            cmp #$0C
            bne LA54C
            lda #$0B
LA54C       sta NGFLAG
            lda #$02
            sta L00A9
            sta L0604
            lda #$03
            sta L0603
            sta L00A8
            dec NGFLAG
LA55E       rts
LA55F       lda #$00
            sta L0086
            sta COLOR4
            sta COLOR2
            lda #$0E
            sta COLOR1
            jsr LA5C2
            ldy #$49
            sty L00A4
            lda #$A7
            sta L00A1
            lda #$8A
            sta L00A0
            bne LA581
            dec L00A1
LA581       dec L00A0
            lda #$00
            sta L00A5
            lda #$00
            sta L00A6
            jsr LAB60
            ldy #$3E
            sty L00A4
            lda #$A7
            sta L00A1
            lda #$D3
            sta L00A0
            bne LA59E
            dec L00A1
LA59E       dec L00A0
            lda #$4C
            sta L00A5
            lda #$03
            sta L00A6
            jsr LAB60
            lda #$02
            sta L0087
            lda #$16
            sta L0088
            lda #$80
            sta L0089
            lda #$C8
            sta L008A
            jsr LABA1
            jsr LAB7C
            rts
LA5C2       lda L3803
            eor #$06
            sta L3803
            lda L3806
            eor #$06
            sta L3806
            lda L381B
            eor #$06
            sta L381B
LA5DA       lda L381C
            eor #$06
            sta L381C
            rts
LA5E3       lda #$00
            sta SDMCTL
            lda #$20
            sta L00A0
            lda #$38
            sta L00A1
            lda #$20
            sta L00A2
            lda #$10
            sta L00A3
            ldx #$03
LA5FA       inc L00A1
            inc L00A3
            dex
            bne LA5FA
            ldx #$03
            ldy #$C0
LA605       lda (L00A0),Y
            pha
            lda (L00A2),Y
            sta (L00A0),Y
            pla
            sta (L00A2),Y
            dey
            bne LA605
            dec L00A3
            dec L00A1
            dex
            bne LA605
            lda #$3E
            sta SDMCTL
            rts
LA61F       lda CH
            cmp #$21
            bne LA64F
            inc L008C
            lda #$00
            sta AUDC4
            sta AUDC3
            sta AUDC2
            sta AUDC1
            sta L0096
            lda #$FF
            sta CH
            sta LOMEM+1
LA63F       lda CH
            cmp #$21
            bne LA63F
            lda #$FF
            sta CH
            inc LOMEM+1
            dec L008C
LA64F       rts
LA650       rol L0084
LA652       .byte $3A
LA653       ldx FMSZPG+1
LA655       .byte $D4,$64
            inx
            rol L0084
            .byte $3A
            ldx FMSZPG+1
            .byte $D4,$64
LA65F       inx
            plp
            tax
            tax
            tax
            plp
            plp
            plp
            .byte $00
            plp
            tax
            tax
            tax
            plp
            jsr L0000
            plp
            tax
            tax
            tay
            php
            .byte $00,$00,$00
            plp
            tax
            ldx #$80
            .byte $00,$00,$00,$00
LA680       .byte $00,$00,$00,$00,$00,$00,$00,$00,$14
            eor COLCRS,X
            eor RTCLOK+2,X
            .byte $14,$14,$00,$14
            eor COLCRS,X
            eor RTCLOK+2,X
            bpl LA697
LA697       .byte $00,$14
            eor COLCRS,X
            eor RAMLO
            .byte $00,$00,$00,$14
            eor HOLD1,X
            rti
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$80
LA6B1       jsr L5454
            .byte $54,$54
            jsr LC080
            bmi LA6B1+2
            .byte $FC,$FC
            sed
            bmi LA680
            php
            jsr L5454
            .byte $54,$54
            jsr DBYTLO
            .byte $0C,$2F,$3F,$3F,$2F,$0C,$03
            php
LA6D1       jsr L5454
            .byte $54,$54
            jsr L0C08
            bmi LA6D1+2
            .byte $FC,$FC
            sed
            bmi LA6EC
            .byte $80
            jsr L5454
            .byte $54,$54
            jsr L3080
            .byte $0C,$2F,$3F
LA6EC       .byte $3F,$2F,$0C
            bmi LA730
            .byte $33,$33,$33,$33,$33,$3F,$00,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$00,$3F
            .byte $03,$03,$3F
            bmi LA736
            .byte $3F,$00,$3F,$03,$03,$3F,$03,$03,$3F,$00,$33,$33,$33,$3F,$03,$03
            .byte $03,$00,$3F
            bmi LA74B
            .byte $3F,$03,$03,$3F,$00
            bmi LA752
            bmi LA763
            .byte $33,$33,$3F,$00,$3F,$03,$03,$03,$03,$03,$03,$00
LA730       .byte $3F,$33,$33,$3F,$33,$33
LA736       .byte $3F,$00,$3F,$33,$33,$3F,$03,$03,$03,$00,$04,$04,$04
            and ICBAHZ
            and ICBAHZ
            and RAMLO
            .byte $04,$04
LA74B       and ICBAHZ
            and ICBAHZ
            and RAMLO
            .byte $04
LA752       .byte $04
            and ICBAHZ
            and ICBAHZ
LA757       and WARMST
            php
            php
            php
            rol L1C3E,X
            .byte $1C
LA760       .byte $D2,$D3,$D4
LA763       cmp L00D6,X
            .byte $D7
            cld
LA767       cmp LDBDA,Y
            bvs LA7DC
            bvs LA7B2
LA76E       jsr L0438
            .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
            .byte $04,$04,$04,$04,$04,$04
            eor (L0000,X)
            sec
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $23
            and ICAX5Z
            .byte $34
            and #$30
            and ICBALZ
            and L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LA7B2       .byte $00,$00,$00,$00,$00,$00,$00,$00,$23,$2F
            bmi LA7F7
            .byte $32
            and #$27
            plp
            .byte $34,$00
            ora (DSKFMS+1),Y
            clc
            .byte $12,$00
            and (BFENLO,X)
            and (BUFRLO,X)
            and #$0C
            and #$2E
            .byte $23
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00
LA7DC       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LA7F7       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bmi LA839+1
            and BUFRHI
            .byte $33,$00,$33,$34
            and (BUFRLO,X)
            .byte $34,$00,$00,$00,$00,$00,$2F
            rol.w ICBAHZ
            bmi LA848
            and (RECVDN,X)
            and BUFRLO
            .byte $00,$27
            and (ICAX4Z,X)
            and L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            bmi LA86B
LA839       and BUFRHI
            .byte $33,$00
LA83D       .byte $33
            and ICAX3Z
            and ICSTAZ
            .byte $34,$00
            rol ICAX6Z
            .byte $32,$00
LA848       .byte $34,$37,$2F,$00
            bmi LA87A
            and (RECVDN,X)
            and BUFRLO
            .byte $33,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            bmi LA897
            and BUFRHI
            .byte $33,$00,$33,$34
LA86B       and (BUFRLO,X)
            .byte $34,$00,$34,$2F,$00
            bmi LA8A0
            and (RECVDN,X)
            .byte $00,$00,$00,$00
LA87A       .byte $00,$34,$37,$2F,$00
            bmi LA8AD
            and (RECVDN,X)
            and BUFRLO
            .byte $00,$27
            and (ICAX4Z,X)
            and L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LA897       .byte $00,$00,$00,$00,$00
            bmi LA8D0
            and BUFRHI
LA8A0       .byte $33,$00,$33
            and ICAX3Z
            and ICSTAZ
            .byte $34,$00
            rol ICAX6Z
            .byte $32,$00
LA8AD       .byte $2F
            rol.w ICBAHZ
            bmi LA8DF
            and (RECVDN,X)
            and BUFRLO
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            bmi LA8FB+1
            and BUFRHI
            .byte $33,$00,$33,$34
LA8D0       and (BUFRLO,X)
            .byte $34,$00,$34,$2F,$00
            bmi LA904+1
            and (RECVDN,X)
            .byte $00,$00,$00,$00
LA8DF       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bmi LA918
            and (RECVDN,X)
            and BUFRLO
            .byte $00,$34,$37,$2F,$00
            and STATUS,X
            .byte $00,$00
            bmi LA927
LA8FB       and (RECVDN,X)
            and BUFRLO
            .byte $00,$2F
            rol.w ICBAHZ
LA904       and STATUS,X
            .byte $00
LA907       .byte $00,$3C
            ror LFF7E,X
            .byte $FF
LA90D       ror L3C7E,X
            rts
            bvs LA981+2
            beq LA904+1
            ldy #$50
LA917       .byte $00
LA918       bmi LA992
            cli
            cld
            .byte $3C
            ror L00DB
LA91F       .byte $42,$0C
            asl L1B1A,X
            .byte $3C
            ror L00DB
LA927       .byte $42
            tsx
            jmp (L1038)
            sec
            tsx
            .byte $44,$00
LA930       cpx #$A0
            ldy #$A0
            cpx #$00
            .byte $FF
            and L00F5,X
            and L00FF,X
            .byte $00,$9F
            sta L00F5,X
            lda L00FF,X
            .byte $00,$FF
            lda L00F5,X
            and FEOF,X
            .byte $00,$02,$BB,$5A
            bmi LA9AC
            inc LA83D
            .byte $43,$4F
            bvc LA9AC+1
            .byte $52
            eor #$47
            pha
            .byte $54
            jsr L3931
            sec
            .byte $32
            jsr L5441
            eor (LMARGN,X)
            eor #$2C
            jsr L4E49
            .byte $43
            rol L99A5
            cmp #$07
            bne LA99E
            lda CONSOL
            cmp L0097
            bne LA984
            dec L0098
            bne LA98A
            sta L0099
            lda #$01
            sta L0098
LA981       jmp LA98A
LA984       sta L0097
            lda #$02
            sta L0098
LA98A       lda LA3C5
LA98D       cmp L3804
            beq LA99B
LA992       lda #$AA
            sta ADRESS+1
            sta ADRESS
            jsr LB0C6
LA99B       jmp XITVBV
LA99E       dec L0098
            bne LA98A
            lda #$07
            sta L0099
            jmp LA98A
            cld
            lda #$00
LA9AC       sta AUDCTL
            lda #$03
            sta SKCTL
            sta SSKCTL
            lda LOMEM+1
            bne LA9C2
            lda L0090
            beq LA9C5
            jmp LA9CC
LA9C2       jmp LAA73
LA9C5       lda L0091
            bne LA9E9
            jmp LA9FF
LA9CC       dec LOMEM
            bne LAA11
            ldy L0090
            tya
            beq LA9E3
            dec L0090
            lda #$07
            sta LOMEM
            lda #$A8
            sta AUDC1
            lda LAB3A,Y
LA9E3       sta AUDF1
            jmp LAA11
LA9E9       ldy L0091
            tya
            beq LA9F9
            dec L0091
            lda LAA73+2,Y
            sta AUDF1
            lda LAA86+2,Y
LA9F9       sta AUDC1
            jmp LAA11
LA9FF       ldy L0092
            tya
LAA02       beq LAA0E
            dec L0092
            lda LAAB6+1,Y
            sta AUDF1
            lda #$A4
LAA0E       sta AUDC1
LAA11       lda L00A7
            beq LAA2E
            ldy L0093
            tya
            bne LAA23
            pha
            lda #$0E
            sta L0093
            pla
LAA20       jmp LAA2E
LAA23       dec L0093
            lda LAA9A+1,Y
            sta AUDF2
            lda LAAA8+1,Y
LAA2E       sta AUDC2
            lda L008C
            beq LAA3D
            lda #$A0
            sta AUDC3
            jmp LAA47
LAA3D       lda L00E6
LAA3F       sta AUDF3
            lda #$A4
            sta AUDC3
LAA47       lda L0085
            beq LAA60
            ldy L0095
            tya
            beq LAA5A
            dec L0095
            lda #$A4
            sta AUDC4
            lda LAB4A+1,Y
LAA5A       sta AUDF4
LAA5D       jmp LAA73
LAA60       ldy L0096
            tya
            beq LAA70
            dec L0096
            lda LAAC2,Y
            sta AUDF4
            lda LAAFE,Y
LAA70       sta AUDC4
LAA73       jmp SYSVBV
            .byte $00,$00,$00,$00
            beq LAA5A+2
LAA7C       bne LAA3D+1
            bcs LAA20
            bcc LAA02
            bvs LAAE2+2
            bvc LAAAE
LAA86       asl L0A14,X
            .byte $00,$00,$00,$00
            sta (LOMEM+1,X)
            sta (L0082,X)
            .byte $82,$82,$82,$83,$83,$83,$83
            sty L0084
LAA9A       sty L0084
            bvs LAB0E
            .byte $00,$00,$00,$00
            ldy #$A0
            .byte $00,$00
            cpy #$C0
LAAA8       cpx #$E0
            lda (L00A1,X)
            .byte $00,$00
LAAAE       .byte $00,$00
            ldx #$A2
            .byte $00,$00
            ldx #$A2
LAAB6       ldy L00A4
            beq LAA9A
            bne LAA7C
            bcs LAA5D+1
            bcc LAA3F+1
            bvs LAB22
LAAC2       bvc LAAC8+1
            ora RAMLO+1
            ora RAMLO+1
LAAC8       ora ICHIDZ
            jsr L2020
            jsr L3020
            bmi LAB02
            bmi LAB04
            bmi LAB0B
            and BFENHI,X
LAAD8       and BFENHI,X
            and STATUS,X
            bmi LAB0E
LAADE       bmi LAB10
            bmi LAB02
LAAE2       jsr L2020
            jsr L0520
            ora RAMLO+1
            ora RAMLO+1
            ora ICHIDZ
            jsr L2020
            jsr L3020
            bmi LAB25+1
            bmi LAB28
            bmi LAB2F
            and BFENHI,X
            and BFENHI,X
LAAFE       and L00A1,X
            lda (L00A1,X)
LAB02       .byte $00,$00
LAB04       .byte $00
            ldx #$A2
            ldx #$00
            .byte $00,$00
LAB0B       .byte $A3,$A3,$A3
LAB0E       .byte $00,$00
LAB10       .byte $00
            ldy L00A4
            ldy L0000
            .byte $00,$00,$A3,$A3,$A3,$00,$00,$00
            ldx #$A2
            ldx #$00
            .byte $00
LAB22       .byte $00
            lda (L00A1,X)
LAB25       lda (L0000,X)
            .byte $00
LAB28       .byte $00
            ldx #$A2
            ldx #$00
            .byte $00,$00
LAB2F       .byte $A3,$A3,$A3,$00,$00,$00
            ldx #$A2
            ldx #$00
            .byte $00
LAB3A       .byte $00
            plp
            plp
            bmi LAB67
            plp
            bmi LAB7E
            eor (TEMP),Y
            bvc LABA5+1
            bvc LAB97+1
            rts
            .byte $74
LAB4A       ldx #$00
            rts
            rts
            bvs LABC0
            rts
            rts
            rts
            bvs LABC3+2
            bvs LABA7
            bvc LAAD8+1
            .byte $80
            bvc LABAC
            bvc LAADE
            .byte $80,$80
LAB60       lda #$38
            clc
            adc L00A6
            sta L00A3
LAB67       lda #$20
            clc
            adc L00A5
            sta L00A2
            bcc LAB72
            inc L00A3
LAB72       ldy L00A4
LAB74       lda (L00A0),Y
            sta (L00A2),Y
            dey
            bne LAB74
            rts
LAB7C       lda #$00
LAB7E       sta L00B4
            sta L00E6
            sta L00EB
            tax
LAB85       sta L2000,X
            sta L2100,X
            sta L2200,X
            sta L2300,X
            sta L2400,X
            sta L2500,X
LAB97       sta L2600,X
            sta L2700,X
            inx
            bne LAB85
            rts
LABA1       lda #$00
            ldx #$08
LABA5       sta L00D7,X
LABA7       dex
            bne LABA5
            ldx #$01
LABAC       stx CRSINH
            lda RANDOM
            and #$0F
            adc #$28
            tax
LABB7       stx L00B0
            lda RANDOM
            cmp #$23
            bcs LABB7
LABC0       adc #$03
            tax
LABC3       lda RANDOM
            cmp #$14
            bcs LABC3
            adc #$02
            tay
            lda #$00
            jsr LB0FA
            ldx L00B0
            dex
            bne LABB7
            rts
LABD8       ldx L00B6
            lda L0086
            beq LABE2
            lda #$00
            sta ATRACT
LABE2       cpx #$B0
            bne LAC1A
            ldx #$F0
            lda L00BA
            bne LAC10
            pla
            pla
            lda L00BB
            cmp #$04
            bcc LABFC
            dec L00BB
            dec L00BB
            dec L00BB
            lda L00B7
LABFC       ldx L00BD
            inc L0083,X
            lda L0083,X
            cmp #$04
            bne LAC0A
            lda #$01
            sta L009C,X
LAC0A       jsr LA489
            jmp LA3AB
LAC10       lda #$00
            sta L00BA
            lda L00B7
            eor #$04
            sta L00B7
LAC1A       txa
            clc
            adc #$10
            tax
            stx L00B6
            lda L00AC
            beq LAC2E
            ldx L00B6
            cpx L00AD
            beq LAC2E
            bcc LAC2E
            rts
LAC2E       lda L0603,X
            sta L00B8
            lda L0604,X
            sta L00B9
            lda L0600,X
            beq LAC67
            jsr LB03B
            lda L0609,X
            beq LAC66
            dec L0608,X
            bne LAC66
            lda #$00
            sta L060D,X
            sta L060A,X
            sta L0609,X
            sta L0607,X
            sta L0601,X
            sta L0600,X
            lda #$01
            sta L0602,X
            jmp LAC67
LAC66       rts
LAC67       lda #$01
            sta L00BA
            sta L00A7
            lda L0607,X
            beq LAC75
            jmp LAF51
LAC75       lda L0604,X
            and #$01
            bne LAC8F
            jsr LADAF
            inx
            lda #$01
            jsr LADBA
            bne LACA2
            ldx L00B6
            inc L0603,X
            jmp LAD05
LAC8F       jsr LADAF
            dex
            lda #$02
            jsr LADBA
            bne LACA2
            ldx L00B6
            dec L0603,X
            jmp LAD05
LACA2       ldx L00B6
            lda L0601,X
            beq LACAC
            jmp LACDD
LACAC       jsr LADAF
            iny
            cpy L0088
            bne LACC4
            lda #$01
            ldx L00B6
            sta L060C,X
            sta L060B,X
            sta L0601,X
            jmp LACDD
LACC4       lda #$04
            sta L00B1
            jsr LB3D8
            beq LACD5
            ldx L00B6
            inc L0604,X
            jmp LAD5A
LACD5       ldx L00B6
            inc L0604,X
            jmp LAD05
LACDD       jsr LADAF
            dey
            cpy L0087
            bne LACEF
            lda #$00
            ldx L00B6
            sta L0601,X
            jmp LACAC
LACEF       lda #$08
            sta L00B1
            jsr LB3D8
            beq LAD00
            ldx L00B6
            dec L0604,X
            jmp LAD5A
LAD00       ldx L00B6
            dec L0604,X
LAD05       jsr LB03B
            lda #$00
            sta L008B
            lda L00B1
            ldx L00B6
            cpx #$00
            beq LAD17
            cmp L0606,X
LAD17       sta L0615,X
            beq LAD21
            lda #$01
            sta L0602,X
LAD21       lda L0605,X
            sta L0606,X
            lda L060D,X
            beq LAD34
            lda #$00
            sta L060D,X
            jmp LAD36
LAD34       lda #$20
LAD36       ldx L00B8
            ldy L00B9
            jsr LB0FA
            ldx L00B6
            lda L0602,X
            sta L00B0
            lda L0604,X
            and #$01
            asl
            adc L00B0
            adc #$8A
            adc L00B7
            sta L00B0
            jsr LADAF
            lda L00B0
            jmp LB0FA
LAD5A       inc L008B
            lda L008B
            cmp #$10
            bcs LAD65
            jmp LAC67
LAD65       ldx L00B6
            lda L00B8
            sta L0603,X
            lda L00B9
            sta L0604,X
            and #$01
            bne LAD92
            jsr LADAF
            inx
            jsr LB3D8
            lda ICAX6Z
            cmp #$40
            bcc LAD8F
            cmp #$44
            bcs LAD8F
            lda #$01
            sta L00B1
            ldx L00B6
            inc L0603,X
LAD8F       jmp LAD05
LAD92       jsr LADAF
            dex
            jsr LB3D8
            lda ICAX6Z
            cmp #$40
            bcc LADAC
            cmp #$44
            bcs LADAC
            lda #$02
            sta L00B1
            ldx L00B6
            dec L0603,X
LADAC       jmp LAD05
LADAF       ldx L00B6
LADB1       lda L0604,X
            tay
            lda L0603,X
            tax
            rts
LADBA       sta L00B1
            sec
            cpx #$03
            bcc LADEC
            clc
            cpx #$26
            bcs LADEC
            jsr LB3D8
            beq LAE0D
            lda ICAX6Z
            cmp #$40
            bcc LAE0D
            cmp #$44
            beq LAE0D
            cmp #$45
            bcc LAE0A
            cmp #$49
            bcs LAE0A
            ldx L00B6
            lda #$01
            sta L0607,X
            sta L060A,X
            pla
            pla
            jmp LAF51
LADEC       ldx L00B6
            lda L0602,X
            beq LAE0A
            lda L060B,X
            beq LAE0A
            lda L060C,X
            beq LAE03
            jsr LAE10
            jmp LAE0A
LAE03       ldx L00B6
            lda #$01
            sta L060C,X
LAE0A       lda #$01
            rts
LAE0D       lda #$00
            rts
LAE10       ldx #$00
LAE12       lda L0600,X
            beq LAE1F
            lda L0609,X
            bne LAE1F
            jmp LAE2E
LAE1F       txa
            clc
            adc #$10
            tax
            cpx #$C0
            beq LAE2B
            jmp LAE12
LAE2B       ldx L00B6
            rts
LAE2E       txa
            ldx L00B6
            ldy L0604,X
            tax
            tya
            sta L0604,X
            dec L0604,X
            and #$01
            beq LAE4D
            lda #$02
            sta L0603,X
            lda #$11
            sta L0608,X
            jmp LAE57
LAE4D       lda #$25
            sta L0603,X
            lda #$12
            sta L0608,X
LAE57       lda #$01
            sta L0609,X
            lda #$00
            sta L060C,X
            rts
LAE62       ldx #$00
LAE64       lda L0600,X
            bne LAE77
            lda L0603,X
            cmp COLCRS
            bne LAE77
            lda L0604,X
            cmp ROWCRS
            beq LAE85
LAE77       txa
            clc
            adc #$10
            tax
            cpx #$C0
            bne LAE64
            lda #$20
            jmp LB28E
LAE85       stx L00E4
            lda L0602,X
            beq LAE92
            ldx #$01
            ldy #$00
            beq LAE96
LAE92       ldx #$00
            ldy #$10
LAE96       lda #$13
            sta L0091
            jsr LB641
            ldx L00E4
            lda L0603,X
            sta L009E
            lda L0604,X
            sta L009F
LAEA9       lda L009E
            sta L060E,X
            lda L009F
            sta L060F,X
LAEB3       cpx #$C0
            beq LAED4
            txa
            clc
            adc #$10
            tax
            lda L0603,X
            ldy L00E4
            sec
            sbc L0603,Y
            beq LAEA9
            clc
            adc #$01
            beq LAEA9
            sec
            sbc #$02
            beq LAEA9
            jmp LAEB3
LAED4       ldx L00E4
            lda #$01
            sta L0600,X
            sta L0602,X
            sta L0601,X
            sta L0612,X
            lda #$00
            sta L060D,X
            sta L0607,X
            lda #$20
            jsr LB28E
            ldx L00E4
            lda L0615,X
            cmp #$04
            beq LAF50
            lda L0603,X
            pha
            lda L0604,X
            tay
            pla
            tax
            tya
            and #$01
            beq LAF13
            dex
            cpx #$03
            bcs LAF1A
            ldx #$03
            jmp LAF1A
LAF13       inx
            cpx #$25
            bcc LAF1A
            ldx #$25
LAF1A       sty L009B
            stx L009A
            jsr LB3D8
            beq LAF47
            ldx #$00
LAF25       lda L0603,X
            cmp L009A
            bne LAF3B
            lda L0604,X
            cmp L009B
            bne LAF3B
            lda #$01
            sta L060D,X
            jmp LAF50
LAF3B       txa
            clc
            adc #$10
            tax
            cmp #$C0
            bcs LAF50
            jmp LAF25
LAF47       ldy L009B
            ldx L009A
            lda #$00
            jsr LB0FA
LAF50       rts
LAF51       ldx L00B6
            lda L0603,X
            cmp L060E,X
            bne LAF68
            lda L0604,X
            cmp L060F,X
            bne LAF68
            lda #$00
            sta L0607,X
LAF68       jsr LADAF
            iny
            cpy L0088
            bcc LAF82
LAF70       ldx L00B6
            lda #$01
            sta L0601,X
            lda #$00
            sta L0607,X
            sta L060A,X
            jmp LACDD
LAF82       ldx L00B6
            lda L060A,X
            bne LAFC0
            lda L0604,X
            and #$01
            bne LAFA8
            jsr LADAF
            inx
            lda #$01
            jsr LADBA
            bne LAFC0
            ldx L00B6
            inc L0603,X
            lda #$01
            sta L060A,X
            jmp LAD05
LAFA8       jsr LADAF
            dex
            lda #$02
            jsr LADBA
            bne LAFC0
            ldx L00B6
            dec L0603,X
            lda #$01
            sta L060A,X
            jmp LAD05
LAFC0       lda #$04
            sta L00B1
            jsr LADAF
            iny
            cpy L0088
            bcc LAFCF
            jmp LAF70
LAFCF       jsr LB3D8
            beq LB02E
            ldx L00B6
            inc L0604,X
            inc L008B
            lda L008B
            cmp #$10
            bcs LAFE4
            jmp LAF68
LAFE4       ldx L00B6
            lda L00B8
            sta L0603,X
            lda L00B9
            sta L0604,X
            and #$01
            bne LB011
            jsr LADAF
            inx
            jsr LB3D8
            lda ICAX6Z
            cmp #$40
            bcc LB00E
            cmp #$48
            bcs LB00E
            lda #$01
            sta L00B1
            ldx L00B6
            inc L0603,X
LB00E       jmp LAD05
LB011       jsr LADAF
            dex
            jsr LB3D8
            lda ICAX6Z
            cmp #$40
            bcc LB02B
            cmp #$44
            bcs LB02B
            lda #$02
            sta L00B1
            ldx L00B6
            dec L0603,X
LB02B       jmp LAD05
LB02E       ldx L00B6
            inc L0604,X
            lda #$00
            sta L060A,X
            jmp LAD05
LB03B       ldx L00B6
            cpx L00AD
            beq LB044
            jmp LB0C5
LB044       dec L00A8
            beq LB050
            lda L00B1
            sta L0606,X
            jmp LB0C5
LB050       lda L00AD
            clc
            adc #$10
            sta L00AD
            cmp #$C0
            bne LB062
            lda #$00
            sta L00AC
            jmp LB0C5
LB062       ldx L00BD
            lda L0083,X
            beq LB09E
            lda NGFLAG
            beq LB09E
            ldx L00B6
            txa
            lsr
            lsr
            lsr
            lsr
            adc #$01
            and #$01
            beq LB088
            lda #$03
            sta L00A8
            sta L0614,X
            lda #$26
            sta L0613,X
            jmp LB094
LB088       lda #$02
            sta L0614,X
            lda #$03
            sta L00A8
            sta L0613,X
LB094       lda #$01
            sta L0612,X
            dec NGFLAG
            jmp LB0C5
LB09E       ldx L00B6
            lda #$02
            sta L00A8
            lda L00AA
            sta L0613,X
            lda L00AB
            sta L0614,X
            lda L00B1
            sta L0606,X
            lda L00F5
            bne LB0C5
            ldy L00BD
            lda L0083,Y
            beq LB0C5
            lda #$01
            sta L00F5
            sta L0612,X
LB0C5       rts
LB0C6       ldx #$00
            ldy #$00
            jsr LB0DE
            lda #$00
            tay
LB0D0       sta (ADRESS),Y
            iny
            bne LB0D0
            inc ADRESS+1
            ldx ADRESS+1
            cpx RAMTOP
            bcc LB0D0
            rts
LB0DE       lda SAVMSC
            sta ADRESS
            lda SAVMSC+1
            sta ADRESS+1
            iny
LB0E7       dey
            beq LB0F7
            lda ADRESS
            clc
            adc #$28
            sta ADRESS
            bcc LB0E7
            inc ADRESS+1
            bcs LB0E7
LB0F7       txa
            tay
            rts
LB0FA       sta ICAX6Z
            jsr LB0DE
            lda ICAX6Z
            bpl LB106
            sec
            sbc #$80
LB106       sec
            sbc #$20
            bpl LB10E
            clc
            adc #$60
LB10E       sta (ADRESS),Y
            lda ICAX6Z
            bpl LB11B
            clc
            lda (ADRESS),Y
            adc #$80
            sta (ADRESS),Y
LB11B       rts
LB11C       jsr LB240
            ldx L00BD
            lda STICK0,X
            eor #$0F
            ldx L00B2
            cpx #$3A
            bcs LB12E
            and #$FB
LB12E       cpx #$C3
            bcc LB134
            and #$F7
LB134       ldx L00B3
            cpx #$B0
            bcs LB13C
            and #$FE
LB13C       cpx #$D8
            bcc LB142
            and #$FD
LB142       sta L00B0
            jsr LB414
            jsr LB425
            lda #$F7
            jsr LB407
            jsr LB425
            jsr LB42B
            lda #$F7
            jsr LB407
            inx
            inx
            inx
            lda #$FB
            jsr LB407
            inx
            inx
            inx
            jsr LB42B
            lda #$FB
            jsr LB407
            jsr LB425
            jsr LB42B
            lda #$FD
            jsr LB407
            inx
            inx
            inx
            inx
            dey
            lda #$FE
            jsr LB407
            jsr LB425
            inx
            dey
            lda #$FE
            jsr LB407
            lda L00B0
            pha
            jsr LB240
            pla
            sta L00B0
            lda L00B0
            and #$01
            beq LB1B5
            dec L00B3
            ldx L00B3
            ldy #$09
LB1A1       lda L2401,X
            sta L2400,X
            inx
            dey
            bne LB1A1
            lda #$00
            sta L22FB,X
            lda #$05
            sta L22F9,X
LB1B5       lda L00B0
            and #$02
            beq LB1DB
            lda L00B3
            cmp #$D8
            bcs LB1DB
            inc L00B3
            ldx L00B3
            ldy #$09
LB1C7       lda L2406,X
            sta L2407,X
            dex
            dey
            bne LB1C7
            lda #$00
            sta L230A,X
            lda #$05
            sta L230C,X
LB1DB       lda L00B0
            and #$04
            beq LB1E5
            dec L00B2
            bne LB1ED
LB1E5       lda L00B0
            and #$08
            beq LB200
            inc L00B2
LB1ED       ldx L00B2
            stx HPOSP0
            inx
            inx
            stx HPOSM1
            inx
            inx
            stx HPOSM0
            cmp #$04
            beq LB1E5
LB200       jsr LB240
            jsr LB431
            rts
LB207       ldx L00BD
            lda STRIG0,X
            bne LB240
            ldx L00B4
            bne LB240
            lda #$0B
            sta L0092
            ldx L00B2
            inx
            inx
            inx
            inx
            stx HPOSM2
            stx L00B5
            ldx L00B3
            dex
            dex
            dex
            dex
            stx L00F0
LB229       lda #$20
            sta L2300,X
            sta L2301,X
            sta L2302,X
            sta L2303,X
            sta L2304,X
            sta L2305,X
            stx L00B4
            rts
LB240       ldy L00B4
            beq LB24D
            jsr LB24E
            jsr LB3AD
            jsr LB24E
LB24D       rts
LB24E       ldx L00B5
            ldy L00B4
            jsr LB3D5
            beq LB2A2
            bcc LB269
            ldx L00B5
            ldy L00B4
            jsr LB58E
            stx COLCRS
            sty ROWCRS
            pla
            pla
            jmp LAE62
LB269       adc #$01
            cmp #$04
            beq LB27C
            cmp #$09
            beq LB27C
            sta L00B0
            pla
            pla
            lda L00B0
            jmp LB28E
LB27C       pla
            pla
            lda #$20
            jsr LB28E
            lda #$13
            sta L0091
            ldx #$00
            ldy #$01
            jmp LB641
LB28E       ldx L00B5
            ldy L00B4
            sta ICAX6Z
            jsr LB58E
            lda ICAX6Z
            jsr LB0FA
LB29C       ldx L00B4
            dex
            jmp LB3BC
LB2A2       ldx L00B5
            ldy L00B4
            jsr LB58E
            stx COLCRS
            sty ROWCRS
            ldx L00E5
            ldy L00E6
            jsr LB41F
            jsr LB58E
            cpx COLCRS
            bne LB2EB
            cpy ROWCRS
            bne LB2EB
            pla
            pla
            dec L0082
            bne LB2CA
            inc L00E8
            jmp LB29C
LB2CA       lda #$00
            sta AUDC3
            lda #$13
            sta L0091
            jsr LB29C
            ldx #$02
            ldy #$00
            jsr LB641
            jsr LB79F
            lda RANDOM
            cmp #$10
            bcc LB2EA
            jmp LB706
LB2EA       rts
LB2EB       ldy L00B4
            cpy L00EB
            bcc LB310
            ldy L00EB
            jsr LB41F
            cpy L00B4
            bcc LB310
            ldx L00B5
            cpx L00EA
            bcc LB310
            ldx L00EA
            jsr LB419
            cpx L00B5
            bcc LB310
            lda L00B3
            sbc L00EB
            jmp LB313
LB310       jmp LB375
LB313       pha
            lda #$00
            sta L0096
            lda #$13
            sta L0091
            pla
            ldx #$09
            stx L00B0
            ldx #$12
            cmp #$11
            bcc LB337
            ldx #$06
            stx L00B0
            ldx #$0C
            cmp #$21
            bcc LB337
            ldx #$03
            stx L00B0
            ldx #$06
LB337       stx L00B1
            jsr LB891
            pla
            pla
            lda L00EB
            sta L00F1
            ldx L00B1
            ldy #$00
LB346       lda LA930,X
            pha
            stx L00B1
            tya
            clc
            adc L00EB
            tax
            pla
            sta L2600,X
            ldx L00B1
            inx
            iny
            cpy #$06
            bne LB346
            ldx L00EA
            stx HPOSP2
            jsr LB87F
            lda #$00
            sta L00EA
            sta L00EB
            ldx L00B0
            ldy #$00
            jsr LB641
            jmp LB29C
LB375       ldy L00B4
            cpy L00F3
            bcc LB3AC
            ldy L00F3
            jsr LB41F
            cpy L00B4
            bcc LB3AC
            ldx L00B5
            cpx L00F2
            bcc LB3AC
            ldx L00F2
            jsr LB419
            cpx L00B5
            bcc LB3AC
            pla
            pla
            lda #$00
            sta L0085
            sta L0095
            lda #$13
            sta L0091
            jsr LB973
            ldx #$10
            ldy #$00
            jsr LB641
            jmp LB29C
LB3AC       rts
LB3AD       ldx L00B4
            dex
            cpx #$30
            beq LB3BC
            jsr LB3BC
            stx L00B4
            jmp LB229
LB3BC       lda #$00
            sta L2301,X
            sta L2302,X
            sta L2303,X
            sta L2304,X
            sta L2305,X
            sta L2306,X
            ldy #$00
            sty L00B4
            rts
LB3D5       jsr LB58E
LB3D8       jsr LB0DE
            lda (ADRESS),Y
            sta ICAX6Z
            bpl LB3E4
            sec
            sbc #$80
LB3E4       clc
            adc #$20
            cmp #$60
            bcc LB3EE
            sec
            sbc #$60
LB3EE       pha
            lda ICAX6Z
            bpl LB3FA
            pla
            clc
            adc #$80
            jmp LB3FB
LB3FA       pla
LB3FB       cmp #$09
            bcc LB403
            cmp #$20
            sec
            rts
LB403       cmp #$20
            clc
            rts
LB407       sta L00B1
            jsr LB3D5
            bcs LB414
            lda L00B0
            and L00B1
            sta L00B0
LB414       ldx L00B2
            ldy L00B3
            rts
LB419       txa
            clc
            adc #$07
            tax
            rts
LB41F       tya
            clc
            adc #$08
            tay
            rts
LB425       txa
            clc
            adc #$04
            tax
            rts
LB42B       tya
            clc
            adc #$05
            tay
            rts
LB431       jsr LB414
            jsr LB58E
            stx COLCRS
            sty ROWCRS
            lda #$00
LB43D       tax
            lda L0600,X
            bne LB454
            lda L0603,X
            cmp COLCRS
            bne LB454
            lda L0604,X
            cmp ROWCRS
            bne LB454
            jmp LB49F
LB454       txa
            clc
            adc #$10
            cmp #$C0
            bcc LB43D
            jsr LB414
            jsr LB58E
            jsr LB48C
            inx
            jsr LB48C
            iny
            jsr LB48C
            inx
            iny
            jsr LB48C
            lda P0PL
            beq LB486
            cmp #$04
            bne LB483
            lda L00EF
            bne LB486
            lda L00EB
            beq LB486
LB483       jmp LB49F
LB486       lda #$00
            sta HITCLR
            rts
LB48C       cpy #$18
            bne LB491
            dey
LB491       jsr LB3D8
            cmp #$8A
            bcs LB49F
            jsr LB414
            jsr LB58E
            rts
LB49F       lda #$01
            sta L008C
            pla
            pla
            lda #$13
            sta L0091
            lda #$00
            sta L00A7
            sta L0096
            sta L0095
            sta L00E6
            sta AUDC3
            tax
LB4B7       sta L2300,X
            sta L2400,X
            sta L2500,X
            sta L2600,X
            sta L2700,X
            dex
            bne LB4B7
            lda L00B2
            ldx #$04
LB4CD       lda L00B2
            sta LCFFF,X
            lda RANDOM
            sta BOTSCR,X
            dex
            bne LB4CD
            lda #$06
            sta L00B0
LB4DF       ldy #$FF
LB4E1       lda L00B3
            clc
            adc #$08
            tax
LB4E7       jsr LB6DE
            sta L2400,X
            jsr LB6DE
            sta L2500,X
            jsr LB6DE
            sta L2600,X
            jsr LB6DE
            sta L2700,X
            dex
            cpx L00B3
            bne LB4E7
            dey
            bne LB4E1
            dec L00B0
            bne LB4DF
            lda #$00
            ldx #$08
LB50F       sta LCFFF,X
            dex
            bne LB50F
LB515       stx L00B0
            lda L0600,X
            bne LB524
            jsr LADB1
            lda #$20
            jsr LB0FA
LB524       lda L00B0
            clc
            adc #$10
            tax
            cpx #$C0
            bne LB515
            lda #$06
LB530       jsr LB57E
            sec
            sbc #$01
            bne LB530
            lda #$00
            ldx #$03
            ldy #$16
LB53E       stx COLCRS
            sty ROWCRS
            jsr LB589
            jsr LB3D8
            bcs LB564
            cmp #$00
            beq LB564
            jsr LB589
            lda #$00
            jsr LB0FA
            ldx #$00
            ldy #$05
            lda #$13
            sta L0091
            jsr LB641
            jsr LB57E
LB564       jsr LB589
            dey
            bne LB53E
            ldy #$16
            inx
            cpx #$26
            bne LB53E
            lda #$00
            sta L008C
            sta HITCLR
            jsr LB973
            jmp LA25D
LB57E       ldx #$30
LB580       ldy #$00
LB582       dey
            bne LB582
            dex
            bne LB580
            rts
LB589       ldx COLCRS
            ldy ROWCRS
            rts
LB58E       txa
            sec
            sbc #$30
            lsr
            lsr
            tax
            tya
            sec
            sbc #$20
            lsr
            lsr
            lsr
            tay
            rts
LB59E       lda LA98D
            sec
            sbc LA98A
            cmp L3804
            beq LB5AD
            jmp (L00D8)
LB5AD       ldx #$00
            ldy #$00
            sty L00D7
            jsr LB0DE
            ldx #$03
            lda #$D8
LB5BA       stx L00B0
            sta L00D6
            ldy #$01
            sty L00B1
LB5C2       ldy L00B1
            lda (L00D6),Y
            and #$F0
            lsr
            lsr
            lsr
            lsr
            jsr LB5F8
            lda (L00D6),Y
            and #$0F
            jsr LB5F8
            inc L00B1
            ldy L00B1
            cpy #$04
            bne LB5C2
            lda L00B0
            cmp #$25
            beq LB605
            cmp #$09
            bne LB5EE
            ldx #$11
            lda #$E0
            bne LB5BA
LB5EE       lda L00BC
            beq LB605
            ldx #$1F
            lda #$DC
            bne LB5BA
LB5F8       tax
            lda LA760,X
            ldy L00B0
            sta (ADRESS),Y
            inc L00B0
            ldy L00B1
            rts
LB605       ldy #$00
            sty L00D7
            jsr LB0DE
            lda #$BE
            ldx #$0A
LB610       sta L00D6
            stx L00B0
            lda #$00
            sta L00B1
LB618       inc L00B1
            lda L00B1
            cmp #$07
            beq LB636
            ldy #$00
            cmp (L00D6),Y
            ldy L00B0
            bcc LB62E
            lda #$00
            sta (ADRESS),Y
            beq LB632
LB62E       lda #$5E
            sta (ADRESS),Y
LB632       inc L00B0
            bne LB618
LB636       cpy #$0F
            beq LB63B
            rts
LB63B       ldx #$18
            lda #$BF
            bne LB610
LB641       lda L00BD
            beq LB647
            lda #$04
LB647       clc
            adc #$D8
            sta L00D6
            lda #$00
            sta L00B0
            sta L00D7
            sty L00B1
            ldy #$01
            lda (L00D6),Y
            pha
            sed
            ldy #$03
LB65C       clc
            lda L00B1
            adc (L00D6),Y
            sta (L00D6),Y
LB663       dey
            bmi LB66F
            lda #$00
            adc (L00D6),Y
            sta (L00D6),Y
            jmp LB663
LB66F       lda L00B0
            bne LB67B
            ldy #$02
            stx L00B1
            sty L00B0
            bne LB65C
LB67B       cld
            ldy #$01
            lda (L00D6),Y
            and #$0F
            sta L00B0
            pla
            and #$0F
            cmp L00B0
            beq LB6A6
            ldx L00BD
            lda L00BE,X
            cmp #$07
            bcs LB6A6
            lda #$11
            sta L0090
            lda #$01
            sta LOMEM
            lda #$00
            sta AUDC1
            sta L0092
            sta L0091
            inc L00BE,X
LB6A6       jsr LB59E
            ldy #$00
            ldx L00BD
            bne LB6B4
            lda L00D8
            jmp LB6B6
LB6B4       lda L00DC
LB6B6       bne LB6DD
            ldx L00BD
            beq LB6BE
            ldx #$04
LB6BE       lda L00D9,X
            cmp #$02
            bcc LB6D8
            ldy #$01
            cmp #$03
            bcc LB6D8
            ldy #$02
            cmp #$06
            bcc LB6D8
            ldy #$04
            cmp #$10
            bcc LB6D8
            ldy #$08
LB6D8       ldx L00BD
            tya
            sta L008D,X
LB6DD       rts
LB6DE       stx L00B1
            lda RANDOM
            sta L00E4
            txa
            sec
            sbc L00B3
            tax
            lda RANDOM
            and LA907,X
            and L00E4
            ldx L00B1
LB6F4       rts
LB6F5       lda L00E6
            bne LB739
            lda L00E7
            beq LB701
            inc L00E7
            bne LB6F4
LB701       lda RANDOM
            bne LB6F4
LB706       lda #$01
            sta L0082
            ldx L0604
            cpx #$12
            bcs LB6F4
            lda #$30
            sta L00E6
LB715       lda RANDOM
            cmp #$23
            bcs LB715
            asl
            asl
            clc
            adc #$3C
            tax
            sta L00E5
            lda #$00
            sta L00E8
            stx HPOSP1
            stx HPOSM3
            txa
            ldx #$00
            cmp L00B2
            bne LB736
            inx
LB736       stx L00E8
            rts
LB739       jsr LB74C
            jsr LB74C
            lda L00E8
            beq LB749
            jsr LB74C
            jsr LB74C
LB749       jmp LB77E
LB74C       inc L00E6
            ldy #$08
            ldx L00E6
            cpx #$DA
            bne LB75B
            pla
            pla
            jmp LB79F
LB75B       lda L2505,X
            sta L2506,X
            dex
            dey
            bne LB75B
            lda L2307,X
            and #$7F
            sta L2307,X
            lda L2308,X
            ora #$80
            sta L2308,X
            lda L2309,X
            ora #$80
            sta L2309,X
            rts
LB77E       lda RANDOM
            cmp #$10
            bcc LB786
LB785       rts
LB786       ldx L00E5
            ldy L00E6
            jsr LB3D5
            bne LB785
            ldx L00E5
            ldy L00E6
            jsr LB58E
            cpy #$15
            bcs LB785
            lda #$00
            jmp LB0FA
LB79F       ldx #$00
LB7A1       lda L2300,X
            and #$7F
            sta L2300,X
            lda #$00
            sta L2500,X
            dex
            bne LB7A1
            sta HPOSP1
            sta L00E6
            sta HPOSM3
LB7B9       ldx #$08
LB7BB       lda LA90D+2,X
            sta L252F,X
            dex
            bne LB7BB
            rts
LB7C5       lda L00EF
            beq LB7D9
            dec L00EF
            bne LB7E2
            lda L00F1
            sta L00EB
            jsr LB891
            lda #$00
            sta L00EB
            rts
LB7D9       lda L00EB
            bne LB80B
            lda RANDOM
            beq LB7E3
LB7E2       rts
LB7E3       ldx #$00
            stx L00ED
            inx
            stx L00EC
            ldy #$C0
            lda RANDOM
            bpl LB7F4
            ldy #$38
            dex
LB7F4       stx L00EE
            sty L00EA
            lda RANDOM
            and #$0F
            clc
            adc #$B0
            sta L00EB
            jsr LB8B1
            ldx L00EB
            jsr LB89F
            rts
LB80B       lda L0096
            bne LB813
            lda #$3C
            sta L0096
LB813       dec L00E9
            bne LB81A
            jmp LB888
LB81A       ldx L00EB
            lda L00ED
            beq LB824
            dex
            dex
            bne LB826
LB824       inx
            inx
LB826       stx L00B0
            lda L00EC
            beq LB836
            lda L00EE
            beq LB834
            dec L00EA
            bne LB836
LB834       inc L00EA
LB836       ldx L00BD
            lda L008D,X
            cmp #$04
            bcc LB848
            lda L00EB
            cmp #$B0
            bcc LB848
            lda #$B0
            sta L0089
LB848       lda L00B0
            cmp L0089
            bcc LB888
            cmp L008A
            bcs LB888
            lda L00EA
            cmp #$34
            bcc LB878
            cmp #$C5
            bcs LB878
            jsr LB891
            ldx L00B0
            stx L00EB
            jsr LB89F
            jsr LB8C8
            jsr LB3D8
            beq LB887
            bcs LB888
            jsr LB8C8
            lda #$20
            jmp LB0FA
LB878       jsr LB891
            lda #$00
            sta L00EB
LB87F       lda #$80
            sta L00EF
            lda #$00
            sta L0096
LB887       rts
LB888       lda L00ED
            eor #$01
            sta L00ED
            jmp LB8B1
LB891       ldx L00EB
            ldy #$0E
            lda #$00
LB897       sta L2600,X
            inx
            dey
            bne LB897
            rts
LB89F       ldy #$08
LB8A1       lda LA927,Y
            sta L2600,X
            inx
            dey
            bne LB8A1
            ldx L00EA
            stx HPOSP2
            rts
LB8B1       lda RANDOM
            ldx #$01
            cmp #$40
            bcc LB8BB
            dex
LB8BB       stx L00EC
            lda RANDOM
            and #$3F
            tax
            inx
            inx
            stx L00E9
            rts
LB8C8       ldx L00EA
            ldy L00EB
            inx
            inx
            jmp LB58E
LB8D1       lda L0085
            bne LB92D
            ldx L00BD
            lda L009C,X
            beq LB8E0
            lda RANDOM
            beq LB8E1
LB8E0       rts
LB8E1       lda #$01
            sta L0085
            lda RANDOM
            clc
            adc #$18
            cmp #$48
            bcc LB8E1
            cmp #$79
            bcs LB8E1
            and #$F8
            sta L00F3
            lda RANDOM
            cmp #$80
            bcs LB917
            lda #$00
            sta L00F4
            lda #$C5
            sta L00F2
            ldx L00F3
            ldy #$08
LB90A       lda LA91F,Y
            sta L2700,X
            inx
            dey
            bne LB90A
            jmp LB92D
LB917       lda #$01
            sta L00F4
            lda #$34
            sta L00F2
            ldx L00F3
            ldy #$08
LB923       lda LA917,Y
            sta L2700,X
            inx
            dey
            bne LB923
LB92D       lda L0095
            bne LB935
            lda #$14
            sta L0095
LB935       lda L00F4
            beq LB93E
            inc L00F2
            jmp LB940
LB93E       dec L00F2
LB940       lda L00F2
            cmp #$34
            bcc LB973
            cmp #$C5
            bcs LB973
            sta L00F2
            sta HPOSP3
            ldy L00F3
            ldx L00F2
            jsr LB3D5
            beq LB972
            lda ICAX6Z
            cmp #$40
            bcc LB972
            cmp #$44
            bcs LB972
            ldx L00F2
            ldy L00F3
            jsr LB58E
            lda ICAX6Z
            adc #$C0
            adc #$04
            jsr LB0FA
LB972       rts
LB973       ldx L00F3
            ldy #$08
LB977       lda #$00
            sta L2700,X
            inx
            dey
            bne LB977
            sta L0085
            sta L00F4
            sta L00F3
            sta L00F2
            sta L0095
            sta HPOSP3
            rts
;
            org $02E2
;
            .word LA000
;
         
