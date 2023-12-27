; 
        icl 'Caverns of Mars.inc'
	icl 'hiscore.asm'
;
; Start of code
;
            org $2A80
;
L2A80       .byte $00,$63,$E7
            ora #$F5
            ora #$A9
            .byte $00
            sta DOSVEC
            lda #$0A
            sta DOSVEC+1
            lda #$00
            sta TRAMSZ
            sta CMCMD
            sta COLDST
            clc
            rts
            jmp L0E57
            adc L0000
            .byte $00
            adc ADRESS
            .byte $00
            adc L00C8
            .byte $00
            adc ICAX3Z
            ora (ADRESS+1,X)
            bcc L2AAB+1
L2AAB       adc L00F4
            ora (ADRESS+1,X)
            cli
            .byte $02
            adc L00BC
            .byte $02
            adc ICHIDZ
            .byte $03
            adc L0084
            .byte $03
            adc L0000
            .byte $00
            eor L0000
            .byte $00,$80
            jsr L7546
            bmi L2AC6
L2AC6       lsr L00A5
            bmi L2ACA
L2ACA       lsr L008D
            bmi L2ACE
L2ACE       lsr FMSZPG,X
            .byte $13
            eor (CASINI+1,X)
            asl
            bvs L2B45+1
            bvs L2B2F+2
            and CHKSUM,X
            ora L1919,Y
            ora L7019,Y
            ora #$09
            ora #$09
            ora #$09
            bvs L2AF0+1
            ora #$09
            ora #$09
            ora #$70
            asl TRAMSZ
L2AF0       beq L2AFC+2
            .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C
            lsr FMSZPG+3
            .byte $13
L2AFC       jmp L326F+2
            .byte $0C,$0C,$0C
            bvs L2B10
            ora L0A0D
            ora L0E0D
            bvs L2B18
            .byte $0C,$0C,$0C,$0C
L2B10       .byte $0C
            asl TRAMSZ
            eor (CHKSNT,X)
            asl
            bvs L2B88
L2B18       bvs L2B8A
            bvs L2B8C
            bvs L2B64
            dec L7030,X
            bvs L2B93
L2B23       lsr FMSZPG+2
            bmi L2B96+1
            bvs L2B6F
            eor L4130,X
            adc.w DOSVEC,X
L2B2F       inc LF6EF
            sbc #$E3
            sbc L0000
            .byte $00,$00,$00
            beq L2B23+1
            cpx LF4EF
            .byte $00,$00,$00,$F7
            sbc (L00F2,X)
            .byte $F2
L2B45       sbc #$EF
            .byte $F2,$00,$E3,$EF
            sbc LE1ED
            inc LE5E4
            .byte $F2
            pha
            txa
            pha
            tya
            pha
            ldx #$3F
            lda #$88
            eor COLRSH
            and DRKMSK
L2B5F       tay
            lda #$0F
            eor COLRSH
L2B64       and DRKMSK
            sta WSYNC
            sta COLBK
            sty COLPF2
L2B6F       stx DMACLT
            lda #$00
            eor COLRSH
            and DRKMSK
            sta COLPF0
            lda #$44
            eor COLRSH
            and DRKMSK
L2B81       sta COLPF3
            pla
            tay
            pla
            tax
L2B88       pla
            rti
L2B8A       pha
            txa
L2B8C       pha
            lda #$00
            eor COLRSH
            and DRKMSK
L2B93       tax
            lda #$48
L2B96       eor COLRSH
            and DRKMSK
            sta WSYNC
            sta COLBK
            stx COLPF0
L2BA3       pla
            tax
            pla
            rti
            lda L1AA5
            bne L2BD5
L2BAC       lda #$00
            sta L1AA5
            lda L1AA6
            sta VSCROL
            inc L1A94
            inc L1A95
            bit L1A9B
            bmi L2BD2
            dec L1A9B
            lda L1A9B
            bpl L2BCF
            lda #$07
            sta L1A9B
L2BCF       sta HSCROL
L2BD2       jmp SYSVBV
L2BD5       sta L1A9C
            ora #$0E
            sta L1A9D
L2BDD       lda L1AA6
            bit L1A98
            bmi L2BF8
            clc
L2BE6       adc L1A9C
L2BE9       and L1A9D
            sta L1AA6
            bne L2BAC
            inc L00B0
            inc L00B0
            jmp L0B72
L2BF8       sec
            sbc L1A9C
            and L1A9D
            sta L1AA6
            cmp L1A9D
            bne L2BAC
            dec L00B0
            dec L00B0
            ldx #$00
            ldy #$00
L2C0F       jsr L1731
            cpy #$18
            bne L2C0F
            jmp L0B13
L2C19       ldx L0CA4
            bne L2C49
            ldx #$FF
            stx L0CA4
            ldx L0CA2
            cpx #$28
L2C28       bcc L2C2C
            ldx #$00
L2C2C       ldy #$00
L2C2E       lda L0CA7,X
            sta L37DF+1,Y
            lda L0CCF,X
            sta L37E6+2,Y
            lda L0CF7,X
            sta L37EE+2,Y
            inx
L2C41       iny
L2C42       cpy #$08
            bcc L2C2E
            stx L0CA2
L2C49       inc L0CA4
            ldx L0CA3
            cpx #$18
            bcc L2C55
            ldx #$00
L2C55       ldy #$00
L2C57       lda L0D1F,X
            sta L378F+1,Y
            lda L0D37,X
            sta L3798,Y
            lda L0D4F,X
            sta L37C6+2,Y
            inx
            iny
            cpy #$08
            bcc L2C57
            stx L0CA3
            lda L0CA6
            sta CDTMV2
            bit L1AB9
            bmi L2CCB
            bvs L2C8A
            lda L3022+2
            eor #$10
            sta L3022+2
            jmp L0C32
L2C8A       lda L1AA6
L2C8D       eor #$07
            sta L1AA6
            sta VSCROL
            and #$07
            cmp #$04
L2C99       bcc L2C9E
L2C9B       jmp L0C32
L2C9E       ldx #$00
            ldy #$0B
            lda L1ABC
            eor #$80
            sta L1ABC
L2CAA       bit L1ABC
            bmi L2CBA
            inc L0A04,X
            bne L2CC5
            inc L0A05,X
            jmp L0C2C
L2CBA       lda L0A04,X
            bne L2CC2
            dec L0A05,X
L2CC2       dec L0A04,X
L2CC5       inx
            inx
            inx
            dey
            bpl L2CAA
L2CCB       ldx L0CA1
            inx
            cpx #$08
            bcc L2CD5
            ldx #$00
L2CD5       bit L1AB7
            bmi L2CEA
            lda L0DFF,X
            sta COLOR2
            and #$0F
            ora #$70
            sta AUDF4
            jmp L0C6F
L2CEA       lda L0E07,X
            sta COLOR3
            bit L1A98
            bvs L2CF7
            bpl L2CFD
L2CF7       sta COLOR2
            jmp L0C6F
L2CFD       bit L1ABA
            bpl L2D08
            lda L0E17,X
            sta COLOR2
L2D08       stx L0CA1
            bit L1AB7
            bvc L2D31
            lda RANDOM
            and #$01
            beq L2D31
            ldy #$00
            ldx L0CA5
            cpx #$18
            bcc L2D22
            ldx #$00
L2D22       lda L1BEC,X
            sta PCOLR0,Y
            inx
            iny
            cpy #$09
            bcc L2D22
            stx L0CA5
L2D31       bit L1A98
            bpl L2D39
            jmp L1B3A
L2D39       rts
            .byte $00,$00,$00,$00,$00,$00,$00,$02,$0C,$02,$00,$0C,$0B,$00,$00,$00
            .byte $00,$03,$0C,$00,$00,$00,$00,$00,$03,$02,$03
            php
            .byte $00,$00,$00
            asl L8230
            .byte $0C,$0B,$00,$00,$00
            jsr L8030
            bmi L2D66
L2D66       bmi L2D68
L2D68       bmi L2D6C
            .byte $0C,$02
L2D6C       jsr L0000
            jsr L200C
            .byte $00,$00,$0C,$00,$3C
            jsr L0C00
            .byte $00
            sec
            .byte $23
            bmi L2D87
            .byte $00
            php
            bmi L2D8B
            jsr L380C
            .byte $00
L2D87       bit L3C1F+1
            .byte $00
L2D8B       .byte $0C,$00,$00
            jsr DOSINI
            bmi L2D93
L2D93       .byte $00
            jsr L0C00
            .byte $00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00
            cpy #$20
            .byte $00
            bmi L2DA7
L2DA7       .byte $00,$00,$00
            sec
            .byte $C2,$00
            bmi L2DB6+1
            .byte $00
            bmi L2DB2
L2DB2       .byte $00,$03
            iny
            .byte $00
L2DB6       jsr L0F00
            and.w L00FF,X
            .byte $FF
            asl
            .byte $FF
            ora APPMHI+1
            .byte $3C,$FF
            asl
            .byte $FF
            ora L00FF
            .byte $00,$0F
L2DC9       and L05FF,X
            .byte $FF,$00,$FF
L2DCF       asl
            beq L2E4E
            .byte $FF,$00,$FF
            ldy #$FF
            bvc L2DC9
            .byte $3C,$FF
            ldy #$FF
L2DDD       bvc L2DDD+1
            .byte $00
            beq L2E5E
            .byte $FF
L2DE3       bvc L2DE3+1
            .byte $00,$FF
            ldy #$00
            eor SOUNDR,X
            eor COLCRS,X
            plp
            .byte $00,$00,$00
            eor SOUNDR,X
            eor COLCRS,X
            plp
            .byte $00,$00,$00
            eor L00AA,X
            sta L00AA,X
            sta L0095,X
            .byte $00,$03,$0F
            rol L3EFA,X
            .byte $0F,$03,$00
            cpy #$F0
            ldy LBCAF,X
            beq L2DCF
            .byte $00
            eor COLCRS,X
            .byte $F7,$D7,$F7,$D7,$D7
            eor COLCRS,X
            eor DELTAC,X
            .byte $77,$77,$77,$F7
            eor COLCRS,X
            eor L00DD,X
            eor L5DDD,X
            .byte $DF
            eor APPMHI+1,X
            .byte $3C,$FF
            asl
            .byte $FF
            asl
            .byte $FF
            asl
            beq L2E6D+1
            .byte $FF
            ldy #$FF
            ldy #$FF
            ldy #$03
            .byte $0F,$0F,$0F
            sbc LF1FD,X
            sbc (L0000),Y
            cpy #$C0
            cpy #$FC
            .byte $FC,$3C,$3C
            sta COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
L2E4E       eor COLCRS,X
            .byte $00,$00
            ora (RAMLO+1,X)
            ora COLCRS,X
            bvc L2E98
            .byte $00,$00
            ora (RAMLO+1,X)
            eor COLCRS,X
L2E5E       bvc L2E9F+1
            .byte $00
            eor SOUNDR,X
            eor COLCRS,X
            plp
            .byte $00,$00,$00,$00
            rti
            bvc L2EC1+1
L2E6D       eor RAMLO+1,X
            ora (L00AA,X)
            tax
            eor L00AA,X
            .byte $FF
            tax
            eor L00AA,X
            .byte $03
            bit LEF08
            .byte $0C,$22,$3B,$03,$C2,$0C,$CF
            dey
            .byte $33
            bmi L2E92
            .byte $E2,$80
            cpy LC320
            .byte $32
            clv
            .byte $33
            cpy #$00
            .byte $00
L2E92       .byte $00,$00,$00,$00,$00,$00
L2E98       bmi L2ECA+1
            .byte $32,$33,$34,$33,$32
L2E9F       and (ICCOMZ),Y
            rol ICBLLZ
            bit L2C2E
            plp
            rol BUFRFL
            .byte $3A
            rol
            bit L2C2E
            rol
            sec
            .byte $0F
            rol
            .byte $0F
            rol
            .byte $0F
            rol
            .byte $0F
            rol
            lda #$00
            sta ATRACT
            lda KBCODE
            cmp #$EC
L2EC1       bne L2EC8
            lda #$FF
            sta L1AB8
L2EC8       and #$3F
L2ECA       cmp #$12
            bne L2ED3
            lda #$40
            sta L1ABA
L2ED3       cmp #$3E
            bne L2EDC
            lda #$FF
            sta L1ABF
L2EDC       cmp #$39
            bne L2EE5
            lda #$FF
            sta L1AC0
L2EE5       cmp #$08
            bne L2EEE
            lda #$FF
            sta L1AC1
L2EEE       pla
            rti
            lda #$00
            sta L1A8D
            sta L1A8E
            sta L1A8F
            sta L1AC2
            jsr L1D83
            lda #$3B
            sta SDLSTL
            lda #$0A
            sta SDLSTH
            lda #$07
            sta HSCROL
            lda #$39
            sta SDMCTL
            lda #$26
            sta COLOR0
            lda #$88
            sta COLOR1
            lda #$30
            sta COLOR2
            lda #$00
            sta COLOR3
            lda #$40
            sta L1ABA
            lda #$00
            sta L1AB7
            sta L3022+2
            sta L1ABF
            sta L1AC0
            sta L1AC1
            lda #$80
            sta L1AB9
            lda #$01
            sta L0CA6
            lda #$34
            sta CHBAS
            lda #$03
            sta SSKCTL
            sta SKCTL
            lda #$1F
            sta VKEYBD
            lda #$0E
            sta VKEYBD+1
            lda #$40
            sta POKMSK
            sta IRQEN
L2F67       lda VCOUNT
            cmp #$19
            bne L2F67
            lda #$0E
            sta VVBLKI
            lda #$0B
            sta VVBLKI+1
            lda #$F1
            sta VDSLST
            lda #$0A
            sta VDSLST+1
            lda #$FF
            sta NMIEN
            lda #$80
            sta CDTMA2
            lda #$0B
            sta CDTMA2+1
            lda #$03
            sta CDTMV2
            jsr L132D
            lda #$A4
            sta AUDC4
            lda #$00
            sta L1A98
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta HPOSM0
            sta HPOSM1
            sta HPOSM2
            sta HPOSM3
            sta AUDCTL
            sta STIMER
            lda #$0C
            sta L1CA3
            jsr L152A
            jsr L1D66
            lda #$00
            bit L1ABA
            bvs L2FD6
            sta L1ABA
L2FD6       asl L1ABA
            sta HITCLR
            ldy #$00
            sty AUDC1
L2FE1       lda #$D0
            sta L0700,Y
            lda #$20
            sta L0701,Y
            iny
            iny
            cpy #$18
            bne L2FE1
            lda #$78
            sta L1A90
            lda #$19
            sta L1A91
            jsr L1610
            sta HITCLR
            lda #$00
            sta L1AAB
            sta L1AAA
            sta L1AA9
            sta L1AA2
            sta L00B2
            jsr L183C
            lda #$05
            sta L1AAC
            lda #$01
            sta L1A9F
            ldx #$11
            lda #$00
L3022       sta L308C+1,X
            inx
            cpx #$19
            bcc L3022
            jsr L1C3E
            lda #$99
            sta L1A92
            jsr L1AD5
            lda #$2D
            sta L00B3
            jsr L169D
            lda #$00
            sta L1AA6
            sta L00B0
L3043       sta L1AB8
L3046       lda #$06
            sta L00B1
            lda #$2D
            sta L00B3
            jsr L169D
            lda #$00
            sta L1A98
            sta L00B0
            jsr L1551
            lda #$43
L305D       sta L0A36
            lda #$13
            sta L0A37
            jsr L155D
            lda #$78
            sta L1A90
            lda #$19
            sta L1A91
            jsr L1610
L3075       lda #$99
            sta L1A92
            jsr L1AD5
            lda #$01
            sta L1A99
            sta L1A9A
            lda L1A9F
            cmp #$01
            beq L308F
L308C       inc L1A9A
L308F       lda #$15
            sta L1A93
            ldy #$00
            sty HITCLR
L3099       lda L30CC+2,Y
            sta L30A9,Y
            iny
            cpy #$0F
            bne L3099
            lda #$11
            sta L30AC
L30A9       jsr L1C3E
L30AC       lda #$44
L30AE       sta COLOR0
L30B1       lda #$88
L30B3       sta COLOR1
            lda #$0F
            sta COLOR2
            lda #$28
L30BD       sta COLOR3
            lda #$00
            sta COLOR4
            lda #$88
            sta PCOLR0
            lda #$88
L30CC       sta PCOLR1
            lda #$44
            sta PCOLR2
            lda #$44
            sta PCOLR3
            lda #$15
            sta L1AB4
            lda #$20
            sta L1AB5
            lda #$01
            sta L1A9E
            sta L1DC2
            jsr L152A
            sta HITCLR
L30F1       lda #$01
            sta L1AA5
            jsr L1741
            jsr L18EA
            jsr L16AA
            jsr L1610
            jsr L1AF4
            jsr L1C6A
            jsr L1CC0
            jsr L1C89
            jsr L171A
            lda L00B0
            cmp #$FE
            bne L30F1
            jsr L132D
            lda #$2E
            sta L00B3
            jsr L169D
            lda #$00
            sta L00B0
            lda #$10
            sta L1A93
            lda #$20
            sta L1AB4
L312F       sta L1AB5
            lda #$02
            sta L1A9E
            sta L1DC2
            lda #$12
            sta L30AC+1
L313F       lda #$02
            sta L1AA5
            lda L1AA6
            cmp #$00
            bne L315A
            inc L1AB1
            lda L1AB1
            and #$01
            cmp #$01
            bne L315A
            jsr L1AF4
L315A       jsr L1741
            jsr L18EA
            jsr L16AA
            jsr L1610
            jsr L1C6A
            jsr L1CC0
            jsr L1C89
            lda RANDOM
            and #$01
            sta AUDF4
            lda #$02
            sta AUDC4
            jsr L171A
            lda L00B0
            cmp #$E2
            bne L313F
            lda #$16
            sta L00B0
            jsr L169D
L318C       lda #$02
            sta L1AA5
            lda L1AA6
            cmp #$00
            bne L31A7
            inc L1AB1
            lda L1AB1
            and #$01
            cmp #$01
            bne L31A7
            jsr L1AF4
L31A7       jsr L1741
            lda RANDOM
            and #$01
            sta AUDF4
            lda #$02
            sta AUDC4
            jsr L18EA
            jsr L16AA
            jsr L1610
            jsr L1C6A
            jsr L1CC0
            jsr L1C89
            jsr L171A
            lda L00B0
            cmp #$00
            bne L31D5
            jmp L1081
L31D5       cmp #$FE
            bne L318C
            jsr L132D
            lda #$2F
            sta L00B3
            jsr L169D
            lda #$00
            sta L00B0
            lda #$15
            sta L1A93
            sta L1AB4
            lda #$20
            sta L1AB5
            lda #$03
            sta L1A9E
            sta L1DC2
            lda #$13
            sta L30AE
            lda L1AC2
            bne L3209
            jmp L1252
L3209       lda #$01
            sta L1AA5
            jsr L1741
            jsr L18EA
            jsr L16AA
            jsr L1610
            jsr L1AF4
            jsr L1CDC
            jsr L1C6A
            jsr L1CC0
L3226       jsr L1C89
            jsr L171A
            lda L00B0
            cmp #$FE
            bne L3209
            jsr L132D
            lda #$38
            sta L00B3
            jsr L169D
            lda #$00
            sta L00B0
            lda #$15
            sta L1A93
            sta L1AB4
            lda #$20
            sta L1AB5
            lda #$04
            sta L1A9E
            sta L1DC2
            lda #$14
            sta L30AE+1
            lda L1AC2
            cmp #$02
            bcs L3264
            jmp L1257
L3264       lda #$01
            sta L1AA5
            jsr L1741
            jsr L18EA
L326F       jsr L16AA
            jsr L1610
            jsr L1D16
            jsr L1AF4
            jsr L1CC0
            jsr L1C89
            jsr L1C6A
            jsr L171A
            lda L00B0
            cmp #$FE
            bne L3264
            jsr L132D
            lda #$39
            sta L00B3
            jsr L169D
            lda #$00
            sta L00B0
            lda #$15
            sta L1A93
            sta L1AB4
            lda #$00
            sta L1AB5
            lda #$05
            sta L1A9E
            sta L1DC2
            lda #$15
            sta L30AE+2
            lda L1AC2
            cmp #$03
            bcs L32BF
            jmp L125C
L32BF       lda #$01
            sta L1AA5
            jsr L1741
            jsr L18EA
            jsr L16AA
            jsr L1610
            jsr L1AF4
            jsr L1C6A
            jsr L1C89
            jsr L1CC0
            jsr L171A
            lda L00B0
            cmp #$FE
            bne L32BF
            jsr L132D
            jmp L125C
            lda #$14
            sta L30AE+1
            lda #$15
            sta L30AE+2
            lda #$3A
            sta L00B3
            jsr L169D
            lda #$00
            sta L00B0
L3300       sta L1DC2
            lda #$15
            sta L1A93
            lda #$00
            sta L1AB4
            lda #$80
            sta L1AB5
            lda #$00
            sta L1A9E
            lda #$22
            sta L30B1+1
            lda #$21
            sta L30B3
            lda #$33
            sta L30B3+1
            lda #$25
            sta L30B3+2
            jsr L1706
            lda #$20
            sta L1A98
            ldx L1A95
            inx
L3337       cpx L1A95
            bne L3337
            sta HITCLR
L333F       lda #$01
            sta L1AA5
            jsr L1741
            jsr L18EA
            bit L1A98
            bvs L335E
            jsr L1610
            jsr L1AF4
            jsr L1C6A
            lda L00B0
            cmp #$FE
            bne L333F
L335E       lda #$02
            sta L0CA6
            ldx #$99
            lda #$00
L3367       sta L3767,X
            dex
            bne L3367
            ldx L1AC2
            lda L133F,X
            sta L1A96
            jsr L1AC3
            lda #$07
            sta L1A9B
            lda #$13
            ldy #$43
            sta L0A37
            sty L0A36
            jsr L1B54
            ldx #$51
L338D       lda L1A9B
            bne L338D
            dex
            bmi L33BE
            lda #$08
            sta HSCROL
            inc L0A36
            bne L33A2
            inc L0A37
L33A2       lda #$28
            sta AUDF1
            lda #$A8
            sta AUDC1
L33AC       lda L1A9B
            cmp #$06
            bne L33AC
            lda #$00
            sta AUDC2
            sta AUDC1
            jmp L12F4
L33BE       lda #$80
            sta L1A9B
            jmp L13AB
            lda #$00
            sta HITCLR
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            rts
            and (COLCRS+1),Y
            ror L0099,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            inc LF6EF
            sbc #$E3
            sbc L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
            and ICAX5Z
            and ICAX4Z
            and L2400,Y
            and BUFRHI
            .byte $34,$32,$2F
            and L2425,Y
            .byte $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$22,$2F
            and.w ICCOMZ
            .byte $34
            and #$2D
            and BUFRLO
            .byte $00,$33
            and BFENLO
            .byte $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F
            and BUFRHI
            .byte $23
            and (STATUS,X)
            and L0000
            .byte $34
            and #$2D
            and L0000
            .byte $00,$00,$00,$00,$00,$00
            lda #$02
            sta L1AB6
            lda #$C0
            sta L1A98
            jsr L146B
            lda #$A5
            sta L30B3+2
            lda #$B3
            sta L30B3+1
            lda #$A1
            sta L30B3
            lda #$A2
            sta L30B1+1
            lda #$80
            sta L1A98
            lda L1AC2
            cmp #$03
            bcc L348A
            lda #$05
            sta L1A9E
            lda #$39
            sta L00B3
            jsr L169D
            lda #$FE
            sta L00B0
            lda L1A99
            sta L1AB6
            jsr L146B
L348A       lda #$95
            sta L30AE+2
            lda L1AC2
            cmp #$02
            bcc L34B4
            lda #$04
            sta L1A9E
            lda #$05
            sta L0CA6
            lda #$38
            sta L00B3
            jsr L169D
            lda #$FE
            sta L00B0
            lda L1A9A
            sta L1AB6
            jsr L146B
L34B4       lda #$94
            sta L30AE+1
            lda L1AC2
            cmp #$01
            bcc L34D9
            lda #$03
            sta L1A9E
            lda #$2F
            sta L00B3
            jsr L169D
            lda #$FE
            sta L00B0
            lda L1A9A
            sta L1AB6
            jsr L146B
L34D9       lda #$93
            sta L30AE
            lda #$92
            sta L30AC+1
            lda #$01
            sta L1A9E
            lda #$2D
            sta L00B3
            jsr L169D
            lda #$FE
            sta L00B0
            lda L1A9A
            sta L1AB6
            jsr L146B
            lda #$91
            sta L30AC
            jmp L1485
L3504       lda L1AB6
            sta L1AA5
            jsr L1741
            jsr L18EA
            jsr L1610
            jsr L1AF4
            jsr L1C6A
            lda L00B0
            bne L3504
            rts
            lda #$00
            sta L1A98
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
L352F       sta HPOSM0
            sta HPOSM1
            sta HPOSM2
            sta HPOSM3
            sta L1AB7
            jsr L132D
            lda #$01
            sta L0CA6
            inc L1A9F
            lda L1A9F
            cmp #$06
            bcc L3553
            jsr L198D
L3553       clc
            adc #$10
            sta L312F+1
            lda #$00
            sta L3043
            sta SDLSTL
            lda #$30
            sta SDLSTH
            sta L3043+1
            lda #$0A
            sta VDSLST+1
            lda #$F1
            sta VDSLST
            lda #$26
            sta COLOR0
            lda #$88
            sta COLOR1
            lda #$46
            sta COLOR3
            lda #$32
            sta COLOR2
            lda #$21
            sta SDMCTL
            lda #$A4
            sta AUDC4
            lda #$80
            jsr L1536
            lda #$00
            sta L1ABB
            lda #$06
            sta L1AAD
L35A0       jsr L1BD8
            dec L1AAD
            bpl L35A0
            lda #$12
            sta L3043
            sta SDLSTL
            lda #$30
            sta SDLSTH
            sta L3043+1
            sta HITCLR
            lda #$FF
            jsr L1536
            jmp L0FB1
            lda L1A95
            clc
            adc #$06
L35C9       cmp L1A95
            bne L35C9
            rts
            clc
            adc L1A95
            sta L1AAD
L35D6       jsr L17AA
            bcc L35E1
L35DB       jsr L17AA
            bcc L35DB
            rts
L35E1       lda L1AAD
            cmp L1A95
            bne L35D6
            rts
            ldx #$98
L35EC       lda L0D66,X
            sta L3767,X
            dex
            bne L35EC
            rts
            lda #$80
            sta L1A9B
            sta L1AB7
            lda #$07
            sta L0CA6
            lda #$34
            sta CHBAS
            ldx #$00
            ldy #$00
L360C       jsr L1731
            cpy #$18
            bne L360C
            lda #$30
            sta PACTL
            lda #$F0
            sta PORTA
            lda #$34
            sta PACTL
            lda #$03
            sta SIZEP2
            sta SIZEP3
            sta GRACTL
            lda #$01
            sta SIZEP0
            lda #$00
            sta SIZEP1
            lda #$38
            sta PMBASE
            lda #$24
            sta GPRIOR
            ldy #$00
L3643       lda #$FF
            sta L3DFF+1,Y
            sta L3F00,Y
            lda #$0A
            sta L3AFF+1,Y
            lda #$00
            sta L3C00,Y
            sta L3D00,Y
            iny
            cpy #$B9
            bne L3643
L365D       lda #$00
            sta L3C00,Y
            sta L3D00,Y
            sta L3DFF+1,Y
            sta L3F00,Y
            sta L3AFF+1,Y
            iny
            cpy #$FF
            bne L365D
            jsr L132D
            lda #$3D
            sta SDMCTL
            lda #$03
            sta SDLSTL
            lda #$0A
            sta SDLSTH
            lda #$20
            sta HPOSP2
            lda #$40
            sta HPOSM0
            lda #$BF
            sta HPOSM1
            lda #$C0
            sta HPOSP3
            lda #$B9
            sta VDSLST
            lda #$0A
            sta VDSLST+1
            lda #$C0
            sta NMIEN
L36A8       rts
            lda L1A98
            cmp #$40
            beq L36A8
            lda PORTA
            cmp #$0F
            beq L36BB
            lda #$00
            sta ATRACT
L36BB       lda PORTA
            cmp #$0E
            bne L36C5
            dec L1A91
L36C5       cmp #$06
            bne L36CF
            dec L1A91
            inc L1A90
L36CF       cmp #$07
            bne L36D6
            inc L1A90
L36D6       cmp #$05
            bne L36E0
            inc L1A90
            inc L1A91
L36E0       cmp #$0D
            bne L36E7
            inc L1A91
L36E7       cmp #$09
            bne L36F1
            inc L1A91
            dec L1A90
L36F1       cmp #$0B
            bne L36F8
            dec L1A90
L36F8       cmp #$0A
            bne L3702
            dec L1A90
            dec L1A91
L3702       lda L1A91
            cmp #$14
            bne L370C
            inc L1A91
L370C       bit L1A98
            bmi L3717
            cmp #$81
            bne L371E
            beq L371B
L3717       cmp #$A1
            bne L371E
L371B       dec L1A91
L371E       ldx #$00
            ldy L1A91
L3723       lda L30BD,X
            sta L3C00,Y
            inx
            iny
            cpx #$11
            bne L3723
            lda L1A90
            sta HPOSP0
            rts
            ldy #$FF
L3738       iny
            lda (L00B2),Y
            sta L0600,Y
            cpy #$FF
            bne L3738
            rts
            sta HITCLR
            lda L1AA2
            bne L3772
            lda TRIG0
            bne L3794
            lda #$01
            sta L1AA2
            sta L1ABD
            sta L1ABE
            lda L1A91
            sta L1AA1
            lda L1A90
            sta HPOSM2
L3767       clc
            adc #$0F
            sta HPOSM3
            lda #$00
            sta L1CA3
L3772       lda L1AA2
            cmp #$03
            beq L379F
            ldy L1AA1
            lda #$0A
            jsr L16FC
            lda L1AA1
            clc
            adc #$03
            cmp #$B3
            bcs L379F
            sta L1AA1
            tay
L378F       lda #$FA
            jsr L16FC
L3794       rts
            sta L3B01+2,Y
L3798       sta L3B04,Y
            sta L3B05,Y
            rts
L379F       lda #$00
            sta L1AA2
            sta L1ABD
            sta L1ABE
            ldy L1AA1
            lda #$0A
            jsr L16FC
            rts
            lda L1AA2
            beq L37C9
L37B8       lda VCOUNT
            cmp #$60
            bne L37B8
            ldx #$00
            jsr L17FB
            ldx #$01
L37C6       jsr L17FB
L37C9       rts
            lda (L00B0),Y
            sta L0A04,X
            iny
            inx
            lda (L00B0),Y
            sta L0A04,X
            inx
            iny
            inx
            rts
L37DA       lda L1AA5
            bne L37DA
L37DF       lda L1AB8
            beq L37EE
            lda #$00
L37E6       sta L1AB8
            pla
            pla
            jmp L1D9D
L37EE       jsr L1787
            bcc L37F6
            jmp L0E68
L37F6       jsr L17AA
            bcc L3816
            lda #$00
            sta AUDC2
            sta AUDC3
            sta AUDC1
            sta AUDC4
            jsr L152A
L380C       jsr L17AA
            bcc L380C
            lda #$00
            sta L1ABF
L3816       rts
            ldx #$00
L3819       inx
            nop
            cpx #$FF
            bne L3819
            rts
            lda L1ABF
            beq L382D
            lda #$00
L3827       sta L1ABF
            jmp L17A2
L382D       lda CONSOL
            cmp #$06
            bne L3841
L3834       lda CONSOL
            cmp #$07
            bne L3834
            sec
            lda #$00
            sta ATRACT
            rts
L3841       clc
            rts
            lda L1AC0
            beq L3850
            lda #$00
            sta L1AC0
            jmp L17C5
L3850       lda CONSOL
            cmp #$05
            bne L3864
L3857       lda CONSOL
            cmp #$07
            bne L3857
            sec
            lda #$00
            sta ATRACT
            rts
L3864       clc
            rts
            lda L1AC1
            beq L3873
            lda #$00
            sta L1AC1
            jmp L17F3
L3873       lda CONSOL
            cmp #$03
            bne L3892
L387A       lda CONSOL
            cmp #$07
            bne L387A
            lda L1A95
            clc
            adc #$0C
L3887       cmp L1A95
            bne L3887
            sec
            lda #$00
            sta ATRACT
            rts
L3892       clc
            rts
            lda L1ABD,X
            beq L38D4
            lda M2PF,X
            and #$07
            beq L38D4
            lda #$00
            sta HPOSM2,X
            sta L1ABD,X
            inc L1AA2
            lda M2PF,X
            and #$02
            bne L38D4
            lda #$1F
            sta L1CDB
            lda M2PF,X
            and #$01
            beq L38CB
            lda L1AB4
            jsr L183C
            jsr L1AC3
            jsr L18C0
            rts
L38CB       lda L1AB5
            jsr L183C
            jsr L18C0
L38D4       rts
            ldx #$00
            stx L1A97
            sta L1AA8
            clc
            sed
            lda L1AAB
            adc L1AA8
            sta L1AAB
            lda L1AAA
            adc #$00
            sta L1AAA
            lda L1AA9
            adc #$00
            sta L1AA9
            cld
            clc
            ldy #$0C
            lda L1AA9
            jsr L1888
            lda L1AA9
            jsr L18A5
            lda L1AAA
            jsr L1888
            lda L1AAA
            jsr L18A5
            lda L1AAB
            jsr L1888
            lda L1AAB
            jsr L18A5
            rts
            lsr
            lsr
            lsr
            lsr
            bit L1A97
            bmi L3933
            ora #$00
            beq L3936
            ldx #$80
            stx L1A97
L3933       clc
            adc #$10
L3936       sta L3075,Y
            sta L3046+1,Y
            iny
            rts
            and #$0F
            bit L1A97
            bmi L394E
            ora #$00
            beq L3951
            ldx #$80
            stx L1A97
L394E       clc
            adc #$10
L3951       sta L3075,Y
            sta L3046+1,Y
            iny
            rts
            lda L1AA1
            sec
            sbc #$03
            clc
            adc L1AA6
            lsr
            lsr
            lsr
            and #$FE
            tay
            clc
            lda (L00B0),Y
            adc #$30
            sta (L00B0),Y
            iny
            lda (L00B0),Y
            adc #$00
            sta (L00B0),Y
            ldx #$00
            ldy #$00
L397B       jsr L1731
            cpy #$18
            bne L397B
            rts
            lda P0PF
            and #$01
            bne L39B2
            lda P0PF
            and #$04
            bne L3999
            lda P0PL
            and #$0C
            bne L39B2
            rts
L3999       lda L1A98
            beq L39B2
            bit L1A98
            bvs L3A22
            bmi L39B2
            lda #$40
            sta L1A98
            lda #$00
            sta L1AA5
            jmp L1989
L39B2       ldx #$00
            ldy L1A91
L39B7       lda L1A06,X
            sta L3C00,Y
            inx
            iny
            cpx #$11
            bne L39B7
            lda #$00
            sta AUDC2
            sta AUDC3
            sta AUDC4
            lda #$30
            sta AUDF2
            lda #$0F
            sta AUDC2
            jsr L19E1
            lda #$00
            sta AUDC2
            lda #$99
            sta L1A92
            jsr L1AD5
            dec L1AAC
            jsr L1C3E
            lda L1AAC
            beq L3A26
            lda #$00
            sta L1AA6
            sta L1AA2
            bit L1A98
            bpl L3A06
            lda #$FE
            bvc L3A06
            lda #$58
L3A06       sta L00B0
            jsr L169D
            lda #$78
            sta L1A90
            lda #$19
            bit L1A98
            bpl L3A19
            lda #$A0
L3A19       sta L1A91
            jsr L155D
            jsr L1610
L3A22       sta HITCLR
            rts
L3A26       lda #$7D
            sta SDLSTL
            lda #$0A
            sta SDLSTH
            lda #$3F
            sta SDMCTL
            lda #$0F
            sta COLOR0
            lda #$01
            sta L0CA6
            lda #$00
            sta L1AB7
            sta L1A98
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta HPOSM0
            sta HPOSM1
            sta HPOSM2
            sta HPOSM3
            sta COLOR4
            jsr L132D
            lda #$0F
        sta COLOR2
	jmp hiscore
            ;; jsr L1A17
L3A6D       jsr L1787
            bcc L3A6D
            jsr L152A
            pla
        pla
            jmp L0E68
            lda #$00
            sta L1AAF
L3A7F       inc L1AAF
            lda #$00
            sta L1AB0
L3A87       inc L1AB0
            nop
            nop
            nop
            nop
            nop
            nop
            lda L1AB0
            cmp #$FF
            bne L3A87
            lda L1AAF
            cmp #$FF
            bne L3A7F
            rts
            .byte $4B,$4F
            ldy #$B0
            jmp LB9D3
            .byte $53
            lsr LA239
            lda ICBLLZ
            and #$34
            lsr DSTAT
            lda L1A8F
            cmp L1AA9
            bcc L3ACC
            bne L3AEE
            lda L1A8E
            cmp L1AAA
            bcc L3ACC
            bne L3AEE
            lda L1A8D
            cmp L1AAB
            bcs L3AEE
L3ACC       lda #$00
            sta L1A97
            ldy #$0E
            lda L1AA9
            sta L1A8F
            jsr L1A56
            lda L1AAA
            sta L1A8E
            jsr L1A56
            lda L1AAB
            sta L1A8D
            jsr L1A56
L3AEE       rts
            sta L1AAD
            lsr
            lsr
            lsr
            lsr
            bit L1A97
            bmi L3B04
            ora #$00
            beq L3B07
L3AFF       ldx #$80
L3B01       stx L1A97
L3B04       clc
L3B05       adc #$10
L3B07       sta L305D,Y
            iny
            lda L1AAD
            and #$0F
            bit L1A97
            bmi L3B1E
            ora #$00
            beq L3B21
            ldx #$80
            stx L1A97
L3B1E       clc
            adc #$10
L3B21       sta L305D,Y
            iny
            rts
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (CASINI,X)
            .byte $80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            sed
            clc
            lda L1A92
            adc L1A93
            sta L1A92
            bcc L3B6E
            lda #$99
            sta L1A92
L3B6E       ldy #$0E
            lda L1A92
            lsr
            lsr
            lsr
            lsr
            clc
            cld
            beq L3B7D
            adc #$10
L3B7D       sta L308C+1,Y
            lda L1A92
            and #$0F
            clc
            adc #$10
            iny
            sta L308C+1,Y
            rts
            bit L1A98
            bmi L3BB1
            lda L1AA6
            bne L3BAD
            lda L1A9E
            jsr L183C
            sec
            sed
            lda L1A92
            sbc #$01
            sta L1A92
            cld
            bcs L3BAD
            jmp L1919
L3BAD       jsr L1AD5
            rts
L3BB1       lda L1AA6
            bne L3BBC
            lda L1A9E
            jsr L183C
L3BBC       lda L1A94
            cmp #$04
            bcc L3BEC
            lda #$00
            sta AUDC1
            lda L1A96
            beq L3BD0
            jmp L1AD5
L3BD0       jmp L1B86
            lda L1A94
            cmp #$5C
            bcc L3BE3
            lda #$00
            sta L1A94
            jsr L1B54
            rts
L3BE3       cmp #$04
            bcc L3BEC
            lda #$00
            sta AUDC1
L3BEC       rts
            lda L1A96
            beq L3C1E
            sed
            sec
            sbc #$01
            sta L1A96
            sta L1A92
            cld
            lsr
            lsr
            lsr
L3C00       lsr
            beq L3C06
            clc
            adc #$10
L3C06       sta L13A5
            lda L1A96
            and #$0F
            clc
            adc #$10
            sta L13A6
            lda #$FF
            sta AUDF1
            lda #$A8
            sta AUDC1
L3C1E       rts
L3C1F       lda #$00
            sta L1AA5
            sta L1A98
            sta L1AAE
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            lda #$01
            sta L1AAC
            jsr L1C3E
            lda #$C0
            sta L1AB7
            lda #$02
            sta L0CA6
            lda #$08
            sta L1AAD
            lda #$40
            sta L1ABB
            lda #$80
            sta L1ABC
L3C57       jsr L1BD8
            lda #$03
            sta L0CA6
            dec L1AAD
            bpl L3C57
            lda #$80
            sta L1AB7
            lda #$0F
            sta L0CA6
            jmp L1900
            lda RANDOM
            and #$03
            clc
            adc L1A95
            adc #$01
L3C7C       cmp L1A95
            bne L3C7C
            jsr L1C07
            rts
            rol L402E
            rti
            rti
            rol.w L00B8
            jsr LB0B0
            sec
            sec
            sec
            bcs L3C95
L3C95       .byte $00
            rol L8888
            .byte $44,$44,$44
            dey
            .byte $0F
            plp
            .byte $00
            lda RANDOM
            and #$1F
            ora #$03
            sta L1CDB
            lda L1ABB
            sta L1AB9
            cmp #$00
            bne L3CB9
            lda #$2C
            sta COLOR2
L3CB9       lda #$01
            sta L0CA6
            lda L1A95
            clc
            adc #$01
L3CC4       cmp L1A95
            bne L3CC4
            jsr L1CC0
            lda L1CDB
            bne L3CB9
            lda #$80
            sta L1AB9
            rts
            ldx #$06
            ldy L1AAC
            dey
            dey
            bmi L3CE9
            lda #$81
L3CE2       sta L308C+2,X
            dex
            dey
            bpl L3CE2
L3CE9       lda #$00
L3CEB       sta L308C+2,X
            dex
            bpl L3CEB
            lda #$82
            ldy #$11
            ldx L1A9F
            dex
            beq L3D02
L3CFB       sta L308C+1,Y
            iny
            dex
L3D00       bne L3CFB
L3D02       rts
            clc
            inc L1C84
            lda L1C84
            and #$03
            tax
            lda L1C85,X
            clc
            adc L1A91
            sta AUDF2
            lda #$A2
            sta AUDC2
            rts
            .byte $00,$32,$3C
            lsr TEMP
            lda L1CA3
            cmp #$0C
            beq L3D3B
            ldx L1CA3
            lda L1CA4,X
            sta AUDC3
            lda L1CB0,X
            sta AUDF3
            inc L1CA3
L3D3B       rts
            .byte $00
            ldx L00A7
            tay
            .byte $A7
            lda L00A5
            ldy L00A3
            ldx #$A2
            lda (L0000,X)
            .byte $3C
            eor (FMSZPG+3,X)
            .byte $4B
            bvc L3DA4
            .byte $5A,$5F,$64
            adc #$6E
            sei
            .byte $82
            sty.w L0096
            lda L1CDB
            and #$FF
            cmp #$00
            beq L3D73
            lda #$30
            sta AUDF1
            lda L1CDB
            clc
            lsr
            lsr
            sta AUDC1
            dec L1CDB
L3D73       rts
            .byte $00
            lda L1AA6
            cmp #$00
            bne L3DA1
            inc L1D09
            lda L1D09
            and #$03
            sta L1D09
            tax
            ldy #$00
L3D8A       lda L1D0A,X
            sta L2B5F,Y
            lda L1D0E,X
            sta L2B81,Y
            lda L1D12,X
            sta L2BA3,Y
            iny
            cpy #$08
            bne L3D8A
L3DA1       rts
            .byte $00,$FB
L3DA4       .byte $00,$00,$00,$00,$FB,$00,$00,$00,$00,$FB,$00
            inc L1AB3
            lda L1AB3
            and #$3F
            sta L1AB3
            cmp #$00
            bne L3DF7
            ldx #$00
            lda #$00
L3DC2       sta L2BE6+1,X
            sta L2C41,X
            sta L2C9B,X
            inx
            cpx #$10
            bne L3DC2
            jsr L1D5F
            lda #$6D
            sta L2BE6+1,Y
            lda #$6E
            sta L2BE6+2,Y
            jsr L1D5F
            lda #$6D
            sta L2C41,Y
            lda #$6E
            sta L2C42,Y
            jsr L1D5F
            lda #$6D
            sta L2C9B,Y
            lda #$6E
            sta L2C9B+1,Y
L3DF7       rts
            lda RANDOM
            and #$0E
            tay
            rts
L3DFF       jsr L17CD
            bcc L3E16
            inc L1AC2
            lda L1AC2
            cmp #$04
            bcc L3E13
            lda #$00
            sta L1AC2
L3E13       jsr L1D83
L3E16       jsr L1787
            bcc L3DFF
            rts
            ldx L1AC2
            lda L1D99,X
            tax
            ldy #$00
L3E25       lda L0A95,X
            sta L134A,Y
            inx
            iny
            cpy #$09
            bne L3E25
            rts
            .byte $00
            ora #$12
            .byte $1B
            lda L1DC2
            asl
            tay
            lda L1DB4,Y
            sta L1DC0
            lda L1DB5,Y
            sta L1DC1
            jsr L132D
            jmp (L1DC0)
            lda (APPMHI+1),Y
            sta (POKMSK,X)
            .byte $43
            ora (L009C),Y
            ora (L00F7),Y
            ora (OLDCOL+1),Y
            .byte $12,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3E66       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00
L3EFA       .byte $00,$00,$00,$00,$00,$00
L3F00       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L402E       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
L4130       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$62,$62,$62,$62,$62,$62,$62
            .byte $62,$62,$62,$62,$63,$00,$00,$00,$00,$00,$00,$00,$00,$64
            adc ADRESS+1
            adc ADRESS+1
            adc ADRESS+1
            adc ADRESS+1
            adc ADRESS+1
            adc FKDEF
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (PALNTS,X)
            .byte $63,$00,$00,$00,$00,$00,$00,$00,$00,$64
            adc FKDEF
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (PALNTS,X)
            .byte $63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$64
            adc FKDEF
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (PALNTS,X)
            .byte $63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$64
            adc FKDEF
            adc (OLDADR,X)
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$62,$63,$00,$00,$00,$00,$00,$00,$00,$00,$64
            adc OLDADR
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L625F,X
            .byte $63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$64
            adc OLDADR
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L625F,X
            .byte $63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$64
            adc OLDADR
            .byte $5F
            rts
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (PALNTS,X)
            .byte $63,$6F
            bvs L4311
            .byte $00,$00,$00,$00,$00,$64
            adc FKDEF
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (L0000,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            rts
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (PALNTS,X)
            .byte $63,$FC
            sbc.w L00FE,X
            .byte $00,$00,$00,$00,$64
            adc FKDEF
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (OLDADR,X)
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$62,$63,$00,$00,$00,$00,$00,$6F
            bvs L4366
            .byte $64
            adc OLDADR
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
L4311       lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L625F,X
            .byte $63,$00,$00,$00,$00,$00,$FC
            sbc L64FE,X
            adc OLDADR
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            rts
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (PALNTS,X)
            .byte $63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L4366       .byte $00,$64
            adc FKDEF
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (OLDADR,X)
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$62,$63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$64
            adc OLDADR
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$43,$03,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00
            pha
            eor #$66
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B
            eor CMCMD
            php
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$54
            eor FMSZPG+1,X
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0F,$00,$00
L444D       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$03,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            pha
            eor #$4A
            .byte $4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$5C
            eor L5755+1,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora #$0A
            .byte $0B,$0B,$5A,$5B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bvc L454C
            .byte $0B,$0B,$0B,$0B,$0B,$43
            lsr FMSZPG+4
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            bvc L456E
            ror DOSVEC+1
            .byte $0B,$0B
            eor ZCHAIN
            .byte $4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            jmp L444D
            .byte $0B,$0B,$0B,$43
            lsr DINDEX,X
            .byte $00,$00,$00,$00,$00,$00,$00
L454C       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            jmp L444D
            .byte $0B,$0B,$0B,$0B,$0B,$0B
            eor LMARGN
            .byte $53,$00,$00,$00,$00,$00,$00,$00
L456E       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora TRAMSZ
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$43
            lsr DINDEX,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00
            ora TRAMSZ
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B
            eor OLDROW
            .byte $5B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$54
            eor FMSZPG+1,X
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$43
            lsr FMSZPG+4
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$5C
            eor L0B44,X
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            eor ZCHAIN
            .byte $4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00
            bvc L4655
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$43,$03,$04,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            pha
            eor #$66
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            eor LMARGN
            .byte $53,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            jmp L444D
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$43
L4655       lsr.w COLRSH
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$5C
            eor L0B44,X
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            eor ZCHAIN
            .byte $4B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            cli
            eor L0B66,Y
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $43
            lsr.w COLRSH
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            cli
            eor L0B66,Y
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            eor OLDROW
            .byte $5B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora #$0A
            .byte $44,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $43
            lsr FMSZPG+4
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora #$0A
            .byte $44,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B
            eor LMARGN
            .byte $53,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            pha
            eor #$66
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$43
            lsr.w COLRSH
            .byte $00,$00,$00,$00,$00,$00,$00
            bvc L4780
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B
            eor ZCHAIN
            .byte $4B,$00,$00,$00,$00,$00,$00,$00,$00,$54
            eor FMSZPG+1,X
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$43,$03,$04,$00,$00,$00,$00,$00,$00,$5C
            eor L0B44,X
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
L4780       .byte $0B,$0B,$0B,$0B,$0B
            eor OLDROW
            .byte $5B,$00,$00,$00,$00,$00,$00
            pha
            eor #$66
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$43,$0C,$0C,$0C,$0C
            lsr DINDEX,X
            .byte $00,$6F
            bvs L481E
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$43,$0C,$0C,$0C,$0C
            lsr DINDEX,X
            .byte $00,$FC
            sbc.w L00FE,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$6F
            bvs L486B
            .byte $00
            bvc L484E
            .byte $0C,$0C,$0C
L4800       .byte $0C
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L481E       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FC
            sbc.w L00FE,X
            bvc L487E
            .byte $0C,$0C,$0C,$0C
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$43,$0C,$0C,$0C,$0C
            lsr DINDEX,X
            .byte $00,$72,$73,$00,$00,$00,$00,$00,$00,$00
L484E       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
L486B       .byte $0B,$0B,$43,$0C,$0C,$0C,$0C
            lsr DINDEX,X
            .byte $00,$FC
            inc.w L0000,X
            .byte $00,$00,$00,$00,$00
L487E       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$72,$73,$00
            pha
            eor #$0C
            .byte $0C,$0C,$0C
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$FC
            inc L4800,X
            eor #$0C
            .byte $0C,$0C,$0C
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$43,$0C,$0C,$0C,$0C
            lsr.w COLRSH
            .byte $74
            adc L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$43,$0C,$0C,$0C,$0C
            lsr.w COLRSH
            .byte $FC
            inc.w L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$74
            adc L0000,X
            cli
            eor L0C0C,Y
            .byte $0C,$0C
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$FC
            inc L5800,X
            eor L0C0C,Y
            .byte $0C,$0C
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$74
            adc L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FC
            inc.w L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            sei
            adc KEYDEF+1,Y
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FC
            sbc.w L00FE,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$43,$0C,$0C,$0C,$0C
            lsr FMSZPG+4
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bvc L4AA2
            .byte $0C,$0C,$0C,$0C
            ror DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            eor DOSINI+1
            ora L5A0C+1
            .byte $5B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            jmp L0D4D
            ora L0D0D
            .byte $44,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            ora L0D0D
            ora L0D0D
            ora L0D0D
            ora L0D0D
            ora L0D0D
            ora L0D0D
            lsr
            .byte $4B,$00,$00
L4AA2       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora #$0A
            ora L0D0D
            ora L0D0D
            ora L0D0D
            ora L0D0D
            ora L0D0D
            ora L0D0D
            lsr L5E5F,X
            .byte $5F
            lsr L625F,X
            .byte $63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$64
            adc OLDADR
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L625F,X
            .byte $62,$63,$00,$00,$00,$00,$00,$00,$64
            adc ADRESS+1
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62,$62
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$62,$62,$63,$00,$3B,$3C
            and.w FTYPE,X
            .byte $64
            adc ADRESS+1
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$62,$62,$63,$00,$3F
            rti
            eor (CRITIC,X)
            .byte $00,$64
            adc ADRESS+1
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L5E5F,X
            .byte $5F,$62,$62,$62,$62,$62,$63,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$64
            adc ADRESS+1
            adc ADRESS+1
            adc OLDADR
            .byte $5F
            lsr L5E5F,X
            .byte $5F
            lsr L625F,X
            .byte $62,$62,$62,$62,$62,$63,$00,$00,$00,$00,$00,$00,$64
            adc ADRESS+1
            adc ADRESS+1
            adc ADRESS+1
            lsr L5E5F,X
            .byte $5F
            lsr L625F,X
            .byte $62,$62,$63,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$64
            adc ADRESS+1
            adc DOSVEC+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0F,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            asl L0B0B
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B
            .byte $0B,$0B,$0B,$0B,$0B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            bne L4DBB
            bne L4DBD
            bne L4DBE+1
            bne L4DC0+1
            bne L4DC3
            bne L4DC5
            bne L4DC7
            bne L4DC9
            bne L4DCA+1
            bne L4DCD
            bne L4DCF
            bne L4DD1
            bne L4DD3
            asl LA327
            .byte $27
            sec
            plp
            stx ICBLHZ,Y
L4DBB       .byte $9E,$23
L4DBD       .byte $F3
L4DBE       and #$D0
L4DC0       jsr L20D0
L4DC3       .byte $44,$27
L4DC5       lsr
            .byte $27
L4DC7       .byte $EB,$27
L4DC9       tax
L4DCA       and #$C4
            .byte $23
L4DCD       .byte $07
            rol
L4DCF       bne L4DF1
L4DD1       cpx ICSTAZ
L4DD3       ror ICBALZ
            inc L7424
            and L00D7
            and L00D9
            and L00DB
            and L00DD
            and SAVMSC
            .byte $23,$5A,$23,$8F,$23
            sta L8B23
            .byte $23,$89,$23,$54,$23,$89,$23
L4DF1       .byte $87,$23
            sta ICSTAZ
            .byte $83,$23
            sta (ICSTAZ,X)
            .byte $7F,$23
            adc L0E23,X
            .byte $27
            rol L3827+1,X
            plp
            stx ICBLHZ,Y
            .byte $9E,$23,$F3
            and #$D0
            jsr L20D0
            .byte $44,$27
            sbc ICPTHZ
            .byte $EB,$27
            tax
            and #$C4
            .byte $23,$07
            rol
            bne L4E3B
            bne L4E3D
            asl L3E25+2
            plp
            sta L9627,X
            and #$9E
            .byte $23,$F3
            and #$D0
            jsr L20D0
            .byte $44,$27
            lsr
            .byte $27,$EB,$27
            tax
            and #$C4
            .byte $23,$07
            rol
            bne L4E5B
L4E3B       bne L4E5D
L4E3D       asl LA327
            .byte $27,$02,$27
            stx ICBLHZ,Y
            .byte $9E,$23,$F3
            and #$D0
            jsr L20D0
            .byte $44,$27
            lsr
            .byte $27
            bvc L4E79+1
            tax
            and #$C4
            .byte $23,$07
            rol
            bne L4E7B
L4E5B       bne L4E7D
L4E5D       .byte $44
            plp
            rol L3827+1,X
            plp
            stx ICBLHZ,Y
            .byte $9E,$23,$F3
            and #$D0
            jsr L20D0
            .byte $44,$27
            lsr
            .byte $27
            bvc L4E99+1
            tax
            and #$C4
            .byte $23
            cpy ICSTAZ
L4E79       cpy ICSTAZ
L4E7B       cpy ICSTAZ
L4E7D       .byte $44
            rol CRITIC
            rol LOGCOL
            rol ADRESS+1
            rol CMCMD
            rol
            bne L4EA9
            bne L4EAB
            bne L4EAD
            .byte $44,$27
            lsr
            .byte $27,$EB,$27
            tax
            and #$07
            rol
            bne L4EB9
L4E99       bne L4EBB
            bne L4EBD
            bne L4EBF
            bne L4EC1
            bne L4EC3
            bne L4EC5
            bne L4EC7
            bne L4EC9
L4EA9       bne L4EC9+2
L4EAB       bne L4ECC+1
L4EAD       bne L4ECF
            bne L4ED1
            bne L4ED3
            .byte $F4
            plp
            sec
            and #$DE
            plp
L4EB9       bne L4EDB
L4EBB       inx
            plp
L4EBD       bne L4EDE+1
L4EBF       inc ICBLLZ
L4EC1       .byte $F4
            plp
L4EC3       cpx ICBLLZ
L4EC5       bne L4EE5+2
L4EC7       .byte $DA
            plp
L4EC9       inc LD028
L4ECC       jsr L2944
L4ECF       .byte $DC
            plp
L4ED1       .byte $F4
            plp
L4ED3       nop
            plp
            .byte $44
            and #$DE
            plp
            bne L4EFA+1
L4EDB       cpx LD028
L4EDE       jsr L28E2
            bne L4F03
            inx
            plp
L4EE5       bit LE629
            plp
            .byte $44
            and #$EE
            plp
            .byte $DC
            plp
            .byte $F4
            plp
            bne L4F13
            .byte $DC
            plp
            .byte $F4
            plp
            dec LD028,X
L4EFA       jsr L28F0
            rti
            and #$E4
            plp
            bne L4F23
L4F03       nop
            plp
            .byte $32
            and #$EE
            plp
            bne L4F29+2
            inc ICBLLZ
            bne L4F2F
            .byte $E2
            plp
            bne L4F33
L4F13       .byte $F2
            plp
            bne L4F36+1
            .byte $E2
            plp
            .byte $DC
            plp
            bit LDC29
            plp
            nop
            plp
            bne L4F42+1
L4F23       .byte $DC
            plp
            bne L4F47
            .byte $F4
            plp
L4F29       rol LEE29,X
            plp
            bne L4F4F
L4F2F       cpx ICBLLZ
            .byte $F4
            plp
L4F33       cpx #$28
            .byte $3C
L4F36       and #$F0
            plp
            bne L4F5B
            inc ICBLLZ
            bne L4F5F
            inc L2C28
L4F42       and #$EC
            plp
            bne L4F66+1
L4F47       nop
            plp
            bne L4F6B
            inx
            plp
            .byte $F4
            plp
L4F4F       inc ICBLLZ
            bne L4F73
            cpx ICBLLZ
            rol LE229
            plp
            bne L4F7B
L4F5B       inx
            plp
            bne L4F7E+1
L4F5F       .byte $F2
            plp
            rti
            and #$DC
            plp
            .byte $34
L4F66       and #$38
            and #$E6
            plp
L4F6B       inc ICBLLZ
            bne L4F8F
            cpx #$28
            bne L4F93
L4F73       beq L4F9D
            rol LEC29
            plp
            bne L4F9B
L4F7B       dec L3226+2,X
L4F7E       and #$F4
            plp
            sec
            and #$DE
            plp
            bne L4FA7
            inx
            plp
            bne L4FAB
            inc ICBLLZ
            .byte $F4
            plp
L4F8F       cpx ICBLLZ
            bne L4FB3
L4F93       .byte $DA
            plp
            inc LD028
            jsr L20D0
L4F9B       bne L4FBD
L4F9D       bne L4FBF
            bne L4FC1
            bne L4FC1+2
            bne L4FC4+1
            bne L4FC6+1
L4FA7       bne L4FC8+1
            bne L4FCB
L4FAB       bne L4FCD
            bne L4FCF
            bne L4FD1
            bne L4FD3
L4FB3       asl L0827
            .byte $27,$02,$27
            stx ICBLHZ,Y
            ror ICPTLZ,X
L4FBD       eor #$2B
L4FBF       .byte $6B,$2B
L4FC1       sta L972B
L4FC4       rol L00F3
L4FC6       and #$D0
L4FC8       jsr L20D0
L4FCB       bne L4FED
L4FCD       .byte $44,$27
L4FCF       sbc ICPTHZ
L4FD1       .byte $EB,$27
L4FD3       tax
            and #$8A
            rol L00A1
            .byte $2B,$C3,$2B,$C3,$2B
            lda (ICAX2Z,X)
            .byte $C3,$2B,$C3,$2B
            lda (ICAX2Z,X)
            .byte $AB
            rol CMCMD
            rol
            bne L500A+1
            bne L500C+1
L4FED       bne L500F
            lda #$27
            rol L9D28,X
            .byte $27
            stx ICBLHZ,Y
            ror ICPTLZ,X
            sta LAF2B
            .byte $2B,$AF,$2B,$6B,$2B,$AF,$2B,$AF,$2B
            eor #$2B
            .byte $97
            rol L00F3
L500A       and #$D0
L500C       jsr L20D0
L500F       bne L5030+1
            bne L5032+1
            bne L5034+1
            cpx ICSTAZ
            ror ICBALZ
            inc L7424
            and L00FA
            and LOMEM
            rol RMARGN
            .byte $2B
            adc ICAX2Z,X
            .byte $97,$2B
            lda (ICPTLZ,X)
            .byte $1B
            rol L0095
            and APPMHI+1
            and L0087
L5030       bit RAMLO
L5032       bit L00D0
L5034       jsr L20D0
            bne L5058+1
            .byte $44,$27
            sbc ICPTHZ
            .byte $EB,$27
            tax
            and #$8A
            rol L00A1
            .byte $2B,$AB
            rol CMCMD
            rol
            bne L506B
            bne L506D
            bne L506F
            lda #$27
            .byte $A3,$27
            sta L9627,X
            and #$76
L5058       rol FMSZPG+6
            .byte $2B,$6B,$2B
            sta L972B
            rol L00F3
            and #$D0
            jsr L20D0
            bne L5089
            .byte $7A
            plp
L506B       sbc ICPTHZ
L506D       .byte $EB,$27
L506F       tax
            and #$8A
            rol OLDCHR
            .byte $2B,$7F,$2B
            lda (ICAX2Z,X)
            .byte $AB
            rol CMCMD
            rol
            bne L509F
            bne L50A1
            bne L50A3
            asl L0827
            .byte $27,$02,$27
L5089       stx ICBLHZ,Y
            ror ICPTLZ,X
            eor #$2B
            .byte $6B,$2B
            sta L972B
            rol L00F3
            and #$D0
            jsr L7070
            bvs L510D
            bvs L510F
L509F       bvs L5111
L50A1       bvs L5113
L50A3       bvs L5115
            bvs L5117
            rts
            ora (ABUFPT+3,X)
            bmi L511C
            bvs L511E
            .byte $47
            sbc STATUS,X
            bvs L50B9+1
            bvs L5125
            .byte $07,$07
            bvs L5129
L50B9       lsr L00D1
            and (TRAMSZ),Y
            .byte $00
            cpx #$0C
            .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C
            bvs L50D4+1
            .byte $0C,$0C,$0C
            bvs L50DA
            ora L0A0D
            ora L0E0D
L50D4       bvs L50E1+1
            .byte $0C,$0C,$0C,$0C
L50DA       .byte $0C
            eor (RTCLOK,X)
            bmi L50DF
L50DF       .byte $00,$00
L50E1       and L352F,Y
            .byte $32,$00,$33,$23,$2F,$32
            and L0000
            .byte $00,$00,$00,$00,$00,$00
            bpl L50F4
L50F4       .byte $00,$00,$00,$00,$00
            plp
            and #$27
            plp
            .byte $00,$33,$23,$2F,$32
            and L0000
            .byte $00,$00,$00,$00,$00,$00
            bpl L510C
L510C       .byte $00
L510D       .byte $00,$00
L510F       .byte $00,$00
L5111       .byte $00,$00
L5113       .byte $33,$23
L5115       .byte $2F,$32
L5117       and L0000
            .byte $00,$00,$00
L511C       .byte $00,$00
L511E       .byte $00,$00
            bpl L5122
L5122       .byte $00,$00,$00
L5125       .byte $00,$00,$00,$00
L5129       .byte $00,$00,$00,$00,$00,$00
            rol BFENHI
            and ICAX3Z
            .byte $00
            bpl L5136
L5136       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            clc
            .byte $3C,$3C
            ror MLTTMP
            ror LFF7E,X
            .byte $DB,$DB,$C3
            sta (LOMEM+1,X)
            sta (LOMEM+1,X)
            .byte $00,$00,$00,$00
            sta (L0092),Y
            .byte $93
            sty L0095,X
            .byte $00
            ldx #$A1
            .byte $B3
            lda L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$27
            and (ICAX4Z,X)
            and L0000
            .byte $00,$2F
            rol ICBAHZ,X
            .byte $32,$00,$00,$00,$00,$00,$00,$23,$2F
            rol L3226+1
            and (BFENLO,X)
            and ICAX3Z,X
            and (BFENLO,X)
            and #$2F
            rol.w BUFRHI
            .byte $63
            adc (DELTAR,X)
            adc COLAC
            ror L6400
            adc COLAC+1
            .byte $74,$72,$6F
            adc L6465,Y
            sbc LF5EF,Y
            .byte $00
            sbc (L00F2,X)
            sbc L0000
            sbc L00EE
            .byte $F4
            sbc L00F2
            sbc #$EE
            .byte $E7,$00,$00,$00,$00,$E3
            sbc (L00F6,X)
            sbc L00F2
            inc.w L0000
            .byte $00,$00,$00,$00,$00,$3C
            clc
            ror COUNTR
            .byte $7C
            ror NOCKSM
            .byte $00,$00,$00
            ror NOCKSM
            ror FKDEF
            ror DELTAR
            rts
            .byte $00,$00,$00
            rts
            ror MLTTMP
            .byte $7C
            ror COUNTR
            .byte $3C,$00,$00,$00
            rts
            ror MLTTMP
            rts
            .byte $7C
            ror.w TRAMSZ,X
            .byte $00,$00
            ror COUNTR
            .byte $3C
            rts
            jmp (L066E)
            .byte $00,$00,$00,$3C
            ror DSKFMS
            ror L6666,X
            .byte $3C,$00,$00,$00,$00,$00,$3C
            ror.w L0000,X
            .byte $00,$00,$00,$00
            ror FKDEF
            .byte $00,$00,$00,$00,$00,$00
            ror HOLDCH
            .byte $00,$00,$00,$00,$00,$00
            ror FKDEF
            .byte $00,$00,$00,$00,$00,$00
            ror FKDEF
            .byte $00,$00,$00,$00,$00,$00,$3C
            rts
            .byte $00,$00,$00,$00,$00,$63
            clc
            .byte $7C,$3C,$00,$00,$00,$00,$77,$3C
            ror FKDEF
            .byte $00,$00,$00,$00,$7F
            ror MLTTMP
            .byte $3C,$00,$00,$00,$00,$6B
            ror HOLDCH
            asl L0000
            .byte $00,$00,$00,$63
            ror L066C,X
            .byte $00,$00,$00,$00,$63
            ror MLTTMP
            .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$5A,$5B,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$5C
            eor.w L0000,X
            .byte $00,$00,$00,$00,$00,$FF,$FF
            sed
            .byte $FF,$FF,$FF,$9F,$FF,$FF,$FF,$FB,$FF,$FF,$F7,$FF,$FF,$7F,$FF
            cpx #$7F
            .byte $FF,$FF,$07,$FF,$FF,$FF
            cmp (L00FF),Y
            .byte $FF,$23,$FF
            inc LFF1F,X
            .byte $80
            and LFEFF,X
            .byte $03,$FF,$FF,$FF,$80,$FF
            inc LFF01,X
            sed
            .byte $0F,$FF,$00
            clc
            .byte $FF,$FC
            ora (L00FF,X)
            .byte $FF,$E3,$00,$7F
            sed
            .byte $00,$FF
            beq L52D2
            inc.w RTCLOK+2,X
            .byte $3F
            beq L52D1
L52D1       .byte $7F
L52D2       .byte $FF
            cpy #$0E
            .byte $3F
            cpx #$00
            .byte $7F
            cpx #$03
            .byte $FB,$3C,$07,$1F
            cpx #$00
            .byte $3F,$7F,$80
            asl LC00F,X
            .byte $00,$3F
            cpy #$00
            beq L5355
            .byte $0F,$0B
            cpy #$00
            .byte $0C
            rol L3300,X
            .byte $07,$80,$00,$0F,$00,$00
            rts
            rti
            clc
            ora (LOMEM,X)
            .byte $00,$00
            clc
            .byte $00
            and (NGFLAG,X)
            .byte $00,$00,$02,$00,$04,$00
            clc
            .byte $00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00
            bpl L5329
            .byte $00
            ror.w L0000,X
            .byte $00,$00
            nop
            .byte $00,$00,$00,$00,$00,$00,$00
L5329       clc
            .byte $0B,$00,$E7,$00,$00,$00,$00,$7F,$00,$00,$00,$00,$00,$00,$00,$0F
            ora (L0000,X)
            sta (L0000,X)
            .byte $00,$00,$00
            ora L0000,X
            .byte $00,$00,$00,$00,$00,$00,$07,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $00,$00
L5355       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            eor L00FF,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
            eor COLCRS,X
            eor L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            ora L00FF,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            eor COLCRS,X
            .byte $54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7F,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$3F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FC,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
            asl L0000
            .byte $00
            bmi L541D
L541D       .byte $00,$0F
            ldy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$07,$02,$00,$3C,$00,$00,$1C
            sed
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            ora (APPMHI+1,X)
            .byte $00,$0F,$00,$00
            bmi L549C
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            ora (OLDCHR,X)
            .byte $00,$03,$00,$00
            rts
            .byte $07,$00,$00,$00,$00,$00,$00,$00,$00
            ora (L00F0,X)
            .byte $00,$00,$00,$00
            rti
            .byte $03,$00,$00,$00,$00,$00,$00,$00,$00
L5468       .byte $00
            ldy #$00
            .byte $E3,$EF
            beq L5468
            .byte $F2
            sbc #$E7
            inx
            .byte $F4,$00
            cmp (L00D9),Y
            cld
            cmp (L0000),Y
            .byte $00,$00,$00,$00,$00
            sbc (L00F4,X)
            sbc (L00F2,X)
            sbc #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
L549C       .byte $00,$00,$00,$00,$00,$00
            sec
            jmp (LD67C)
            dec L0082
            .byte $82
            bmi L54E3
            .byte $3C
            sec
            bmi L54CF
            jsr L8020
            tay
            pla
            .byte $5A
            lsr COLCRS,X
            eor COLCRS,X
            .byte $00,$00,$00,$00,$80
            tay
            pla
            .byte $5A,$00,$00,$00,$00,$02
            rol
            lda #$A5
            .byte $02
            rol
            and #$A5
            sta COLCRS,X
L54CF       eor COLCRS,X
            eor COLCRS,X
            eor COLCRS+1,X
            .byte $5A
            cli
            tay
            .byte $80,$5A
            cli
            tay
            .byte $80,$00,$00,$00,$00
            lda ICBAHZ
L54E3       rol
            .byte $02,$00,$00,$00,$00
            eor COLCRS,X
            eor L0095,X
            lda ICBAHZ
            rol
            .byte $02
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            tax
            tax
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor L00AA,X
            sta L0095,X
            sta L0095,X
            sta L0095,X
            sta L0095,X
            lsr COLCRS+1,X
            lsr COLCRS+1,X
            lsr COLCRS+1,X
            lsr COLCRS+1,X
            .byte $00,$3C
            ror BITMSK
            ror MLTTMP,X
            .byte $3C,$00,$00
            clc
            sec
            clc
            clc
            clc
            ror.w L0000,X
            .byte $3C
            ror DOSINI
            clc
            bmi L55AD+1
            .byte $00,$00
            ror L180C,X
            .byte $0C
            ror NOCKSM
            .byte $00,$00,$0C,$1C,$3C
L553D       jmp (L0C7E)
            .byte $00,$00
            ror L7C60,X
            asl MLTTMP
            .byte $3C,$00,$00,$3C
            rts
            .byte $7C
            ror MLTTMP
            .byte $3C,$00,$00
            ror L0C06,X
            clc
            bmi L5588
            .byte $00,$00,$3C
            ror NOCKSM
            ror MLTTMP
            .byte $3C,$00,$00,$3C
            ror FTYPE
            asl DOSINI
            sec
            .byte $00,$00,$03,$0F,$0F,$3C,$3C,$3F,$3F,$00
            cpy #$F0
            beq L55B2
            .byte $3C,$FC,$FC,$FF,$F3,$F3
            beq L553D+1
            cpy #$C0
            cpy #$FF
            .byte $CF,$CF,$0F,$03,$03,$03
L5588       .byte $03,$00,$33,$33,$3F,$03,$03,$00,$00,$00,$00,$00,$00
L5595       .byte $00,$00
            clc
            clc
            tax
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            clc
            .byte $3C
            ror MLTTMP
            ror.w MLTTMP,X
            .byte $00,$7C
            ror HOLDCH
L55AD       ror MLTTMP
            .byte $7C,$00,$00
L55B2       .byte $3C
            ror FKDEF
            rts
            ror NOCKSM
            .byte $00,$00
            sei
            jmp (L6666)
            jmp (DELTAC+1)
            .byte $00
            ror L7C60,X
            rts
            rts
            ror.w L0000,X
            ror L7C60,X
            rts
            rts
            rts
            .byte $00,$00
            rol L6060,X
            ror L3E66
            .byte $00,$00
            ror MLTTMP
            ror L6666,X
            ror L0000
            .byte $00
            ror L1818,X
            clc
            clc
            ror.w L0000,X
            asl TRAMSZ
            asl TRAMSZ
            ror NOCKSM
            .byte $00,$00
            ror BUFSTR
            sei
            sei
            jmp (MLTTMP)
            .byte $00
            rts
            rts
            rts
            rts
            rts
            ror.w L0000,X
            .byte $63,$77,$7F,$6B,$63,$63,$00,$00
            ror DELTAR
            ror L6E7E,X
            ror L0000
            .byte $00,$3C
            ror MLTTMP
            ror MLTTMP
            .byte $3C,$00,$00,$7C
            ror MLTTMP
            .byte $7C
            rts
            rts
            .byte $00,$00,$3C
            ror MLTTMP
            ror BUFSTR
            rol L0000,X
            .byte $00,$7C
            ror MLTTMP
            .byte $7C
            jmp (MLTTMP)
            .byte $00,$3C
            rts
            .byte $3C
            asl TRAMSZ
            .byte $3C,$00,$00
            ror L1818,X
            clc
            clc
            clc
            .byte $00,$00
            ror MLTTMP
            ror MLTTMP
            ror COUNTR
            .byte $00,$00
            ror MLTTMP
            ror MLTTMP
            .byte $3C
            clc
            .byte $00,$00,$63,$63,$6B,$7F,$77,$63,$00,$00
            ror MLTTMP
            .byte $3C,$3C
            ror MLTTMP
            .byte $00,$00
            ror MLTTMP
            .byte $3C
            clc
            clc
            clc
            .byte $00,$00
            ror L180C,X
            bmi L56CF
L566F       ror.w L0000,X
            .byte $00,$03,$0F,$3F,$FF
            inc.w L00FF
            .byte $FF,$FF,$FF,$FF,$FF
            inc.w L00FF
            .byte $FC,$FF,$FF,$FF,$FF
            inc.w L00FF
            .byte $00,$00
            cpy #$F0
            .byte $FC
            cpx LFFFC
            inc LFFFF
            .byte $3F,$0F,$03,$00,$FF
            inc LFFFF
            .byte $FF,$FF,$FF,$FF,$FF
            inc LFFFF
            .byte $FF,$FF,$FF,$FC,$FC
            cpx LFCFC
            beq L566F
            .byte $00,$00
            lsr COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor L0095,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS+1,X
            ldy #$68
            cli
            .byte $5A
            lsr COLCRS,X
L56CF       eor COLCRS,X
            .byte $00,$00,$00,$00,$80,$80
            tay
            ror
            .byte $00,$00,$00,$00,$02,$02
            rol
            lda #$0A
            and #$25
            lda L0095
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            lsr OLDROW,X
            cli
            pla
            ldy #$5A
            tay
            .byte $80,$80,$00,$00,$00,$00
            lda ICAX1Z
            .byte $02,$02,$00,$00,$00,$00
            eor COLCRS,X
            eor L0095,X
            lda ICBAHZ
            and #$0A
            .byte $80,$80
            ldy #$6A
            .byte $5A
            lsr COLCRS,X
            eor L0000,X
            .byte $00,$00,$00,$00
            tay
            ror
            lsr L0000,X
            .byte $00,$00,$00,$00
            rol
            lda #$95
            .byte $02,$02
            asl
            lda #$A5
            sta COLCRS,X
            eor COLCRS,X
            eor COLCRS+1,X
            lsr RAMTOP,X
            ldy #$80
            .byte $80
            lsr OLDROW,X
            tay
            .byte $00,$00,$00,$00,$00
            sta L00A5,X
            rol
            .byte $00,$00,$00,$00,$00
            eor COLCRS,X
            sta L0095,X
            lda #$0A
            .byte $02,$02
            tay
            tay
            cli
            .byte $5A
            lsr COLCRS,X
            eor COLCRS,X
            .byte $00,$00,$00,$00
L5755       ldy #$68
            .byte $5A
            lsr L0000,X
            .byte $00,$00,$00
            asl
            and #$A5
            sta ICAX1Z,X
            rol
            and L00A5
            sta COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS+1,X
            .byte $5A
            cli
            cli
            tay
            lsr OLDROW,X
            pla
            ldy #$00
            .byte $00,$00,$00
            sta L00A5,X
            and #$0A
            .byte $00,$00,$00,$00
            eor COLCRS,X
            eor L0095,X
            lda ICBAHZ
            and ICAX1Z
            .byte $AF,$AF,$AF,$AF,$AF
            tax
            tax
            tax
            .byte $FA,$FA,$FA,$FA,$FA
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $AF,$AF,$AF,$AF,$AF
            tax
            tax
            tax
            .byte $FA,$FA,$FA,$FA,$FA
            tax
            lsr L00AA,X
            adc L00AA
            lsr L00AA,X
            adc L00AA
            lsr L00AA,X
            ror L00AA
            lsr L00AA,X
            ror L00AA
            sta L00AA,X
            sta L95AA,Y
            tax
            sta L95AA,Y
            tax
            eor L95AA,Y
            tax
            eor L5595,Y
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $67,$00,$00,$00,$00,$00,$00,$00
            pla
            .byte $00,$00,$00,$00,$00,$00,$00
            adc #$00
            .byte $00,$00,$00,$00,$00,$00
            ror
            .byte $00,$00,$00,$00,$00,$00,$00
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
L5800       .byte $FF,$03,$0F
            rol LFAFA,X
            rol CASFLG,X
            cpy #$F0
            ldy LAFAF,X
            ldy LC0F0,X
            eor COLCRS,X
            .byte $F7,$D7,$F7,$D7,$D7
            eor COLCRS,X
            eor DELTAC,X
            .byte $77,$77,$77,$F7
            eor COLCRS,X
            eor L00DD,X
L5824       eor L5DDD,X
            .byte $DF
            eor APPMHI+1,X
            .byte $3C,$FF
            asl
            .byte $FF
            asl
            .byte $FF
            asl
            beq L586E+1
            .byte $FF
            ldy #$FF
            ldy #$FF
            ldy #$03
            .byte $0F,$0F,$0F
            sbc LF1FD,X
            sbc (L0000),Y
            cpy #$C0
            cpy #$FC
            .byte $FC,$3C,$3C
            ror L0000,X
            .byte $00,$00,$00,$00,$00,$00,$77,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (RAMLO+1,X)
            eor COLCRS,X
            bvc L58A1
            .byte $00
            eor SOUNDR,X
            eor COLCRS,X
            plp
            .byte $00,$00,$00,$00
            rti
            bvc L58C3
L586E       eor RAMLO+1,X
            ora (L00AA,X)
            tax
            eor L00AA,X
            .byte $FF
            tax
            eor L00AA,X
            .byte $03
            bit LEF08
            .byte $0C,$22,$3B,$03,$C2,$0C,$CF
            dey
            .byte $33
            bmi L5893
            .byte $E2,$80
            cpy LC320
            .byte $32
            clv
            .byte $33
            cpy #$7F
            .byte $00
L5893       .byte $00,$00,$00,$00,$00,$00
            bne L58BB
            bne L58BD
            bne L58BF
            bne L58C1
L58A1       bne L58C3
            bne L58C4+1
            bne L58C7
            bne L58C8+1
            bne L58CB
            bne L58CD
            bne L58CE+1
            bne L58D0+1
            bne L58D2+1
            asl LA327
            .byte $27
            sec
            plp
            stx ICBLHZ,Y
L58BB       .byte $9E,$23
L58BD       .byte $9E,$23
L58BF       adc #$23
L58C1       .byte $6B,$23
L58C3       .byte $CF
L58C4       and L00D9
            .byte $2B
L58C7       .byte $33
L58C8       bit L2C8D
L58CB       cmp (ICBAHZ),Y
L58CD       .byte $D3
L58CE       and L00D5
L58D0       and APPMHI+1
L58D2       bit L2BDD+2
            and L932C,Y
            bit L2C0F
            .byte $0F
            bit L2C0F
            .byte $0F
            bit L2BDD+2
            and L932C,Y
            bit L2595
            .byte $0F
            and L0087
            bit RAMLO
            bit L00D0
            jsr L20D0
            asl L3E25+2
            plp
            sec
            plp
            stx ICBLHZ,Y
            .byte $9E,$23,$F3
            and #$D0
            jsr L20D0
            .byte $44,$27
            sbc ICPTHZ
            .byte $EB,$27
            tax
            and #$C4
            .byte $23,$07
            rol
            bne L5930+1
            bne L5932+1
            asl LA327
            .byte $27
            sec
            plp
            stx ICBLHZ,Y
            .byte $9E,$23
            adc #$23
            .byte $6B,$23,$CF
            and L00D9
            .byte $2B,$33
            bit L2C8D
            cmp (ICBAHZ),Y
            .byte $D3
            and L00D5
            and L0095
L5930       and APPMHI+1
L5932       and L0087
            bit RAMLO
            bit L00D0
            jsr L20D0
            .byte $44,$27
            lsr
            .byte $27
            bvc L5968
            tax
            and #$C4
            .byte $23,$8F,$23
            sta LBC23
            and L00E5
            .byte $2B,$3F
            bit L2C99
            cmp L5824+1,X
            .byte $23,$5A,$23,$07
            rol
            bne L597A+1
            bne L597D
            bne L597F
            .byte $44,$27
            lsr
            .byte $27
            bvc L598C
            tax
            and #$EB
L5968       .byte $2B
            eor ICAX3Z
            .byte $9F
            bit L2C19+2
            .byte $1B
            bit L2C19+2
            .byte $1B
            bit L2BE9+2
            eor ICAX3Z
            .byte $9F
L597A       bit L2A07
L597D       bne L599F
L597F       bne L59A1
            bne L59A3
            .byte $44,$27
            lsr
            .byte $27,$EB,$27
            tax
            and #$C4
L598C       .byte $23
            cpy ICSTAZ
            cpy ICSTAZ
            .byte $07
            rol
            bne L59B5
            bne L59B6+1
            bne L59B8+1
            bne L59BA+1
            bne L59BD
            bne L59BE+1
L599F       bne L59C1
L59A1       bne L59C2+1
L59A3       bne L59C5
            bne L59C6+1
            bne L59C9
            bne L59CA+1
            bne L59CC+1
            bne L59CE+1
            bne L59D0+1
            bne L59D2+1
            beq L59D4+1
L59B5       clc
L59B6       and (L008C,X)
L59B8       and (L00F8,X)
L59BA       and (FMSZPG+5,X)
            .byte $22
L59BD       sed
L59BE       and (FMSZPG+5,X)
            .byte $22
L59C1       sed
L59C2       and (FMSZPG+5,X)
            .byte $22
L59C5       sed
L59C6       and (FMSZPG+5,X)
            .byte $22
L59C9       sed
L59CA       and (L008C,X)
L59CC       and (DSKFMS,X)
L59CE       and (L008C,X)
L59D0       and (FREQ,X)
L59D2       and (L00B4,X)
L59D4       and (ICHIDZ,X)
            and (L0094,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (POKMSK,X)
            and (L0084,X)
            and (POKMSK,X)
            and (L0084,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (POKMSK,X)
            and (L0084,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (FREQ,X)
            and (L00B4,X)
L5A0C       and (L00F8,X)
            and (FMSZPG+5,X)
            .byte $22
            rti
            and (L00B4,X)
            and (FREQ,X)
            and (L00B4,X)
            and (FREQ,X)
            and (L00B4,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (POKMSK,X)
            and (L0084,X)
            and (POKMSK,X)
            and (L0084,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (POKMSK,X)
            and (L0084,X)
            and (POKMSK,X)
            and (L0084,X)
            and (POKMSK,X)
            and (L0084,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (POKMSK,X)
            and (L0084,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (ICHIDZ,X)
            and (L0094,X)
            and (ADRESS,X)
            and (L00D8,X)
            and (BUFRFL,X)
            and (L00AC,X)
            and (BUFRFL,X)
            and (L00AC,X)
            and (BUFRFL,X)
            and (L00AC,X)
            and (L00F8,X)
            and (L008C,X)
            and (DSKFMS,X)
            and (FMSZPG+5,X)
            .byte $22
            clc
            and (L008C,X)
            and (L00F8,X)
            and (L008C,X)
            and (L00F0,X)
            jsr L20D0
            bne L5ABA+1
            bne L5ABC+1
            bne L5ABE+1
            bne L5AC0+1
            bne L5AC2+1
            bne L5AC5
            bne L5AC7
            bne L5AC9
            bne L5ACB
            bne L5ACD
            bne L5ACF
            bne L5AD1
            bne L5AD3
            .byte $27,$2B
            cld
            and (L00D8,X)
            and (L00D8,X)
L5ABA       and (L00D8,X)
L5ABC       and (L00D8,X)
L5ABE       and (L00D8,X)
L5AC0       and (L00D8,X)
L5AC2       and (L00E7,X)
            rol
L5AC5       .byte $27
            rol
L5AC7       .byte $27
            rol
L5AC9       .byte $27
            rol
L5ACB       .byte $27
            rol
L5ACD       .byte $27
            rol
L5ACF       .byte $27
            rol
L5AD1       .byte $27
            rol
L5AD3       .byte $27
            rol
            .byte $27
            rol
            .byte $27
            rol
            .byte $27
            rol
            .byte $27
            rol
            .byte $27
            rol
            .byte $27
            rol
            .byte $27
            rol
            .byte $07,$2B,$47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $47
            rol
            .byte $A7
            rol
            .byte $C7
            rol
            .byte $67
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            .byte $87
            rol
            bne L5B59
            bne L5B5B
            bne L5B5D
            bne L5B5F
            bne L5B61
            bne L5B63
            bne L5B65
            bne L5B67
            bne L5B69
            bne L5B6B
            bne L5B6D
            bne L5B6F
            bne L5B71
            bne L5B73
            bne L5B75
            bne L5B77
            bne L5B79
L5B59       bne L5B7B
L5B5B       bne L5B7D
L5B5D       bne L5B7F
L5B5F       bne L5B81
L5B61       bne L5B83
L5B63       bne L5B85
L5B65       bne L5B87
L5B67       bne L5B89
L5B69       bne L5B8B
L5B6B       bne L5B8D
L5B6D       bne L5B8F
L5B6F       bne L5B91
L5B71       bne L5B93
L5B73       bne L5B95
L5B75       bne L5B97
L5B77       bne L5B99
L5B79       bne L5B9B
L5B7B       bne L5B9D
L5B7D       bne L5B9F
L5B7F       bne L5BA1
L5B81       bne L5BA3
L5B83       bne L5BA5
L5B85       bne L5BA7
L5B87       bne L5BA9
L5B89       bne L5BAB
L5B8B       bne L5BAD
L5B8D       bne L5BAF
L5B8F       bne L5BB1
L5B91       bne L5BB3
L5B93       bne L5BB5
L5B95       bne L5BB7
L5B97       bne L5BB9
L5B99       .byte $00,$00
L5B9B       .byte $00,$00
L5B9D       .byte $00,$00
L5B9F       .byte $00,$00
L5BA1       .byte $00,$00
L5BA3       .byte $00,$00
L5BA5       .byte $00,$00
L5BA7       .byte $00,$00
L5BA9       .byte $00,$00
L5BAB       .byte $00,$00
L5BAD       .byte $00,$00
L5BAF       .byte $00,$00
L5BB1       .byte $00,$00
L5BB3       .byte $00,$00
L5BB5       .byte $00,$00
L5BB7       .byte $00,$00
L5BB9       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
L5C00       ldy #$00
            ldx #$32
L5C04       lda L2A80,Y
L5C07       sta L09E7,Y
            iny
            bne L5C04
            inc L5C04+2
            inc L5C07+2
            dex
            bne L5C04
            lda #$00
            sta CASINI
            sta DOSINI
            lda #$00
            sta CASINI+1
            sta DOSINI+1
            jsr L09ED
            jsr L09F5
            jmp (DOSVEC)
;
            org $02E0
;
            .word myinit
;
         
