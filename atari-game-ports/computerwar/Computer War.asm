; 
        icl 'Computer War.inc'

	icl 'hiscore.asm'
;
; Start of code
;
            org $9000
;
L9000       lda #$00
            sta L00B8
            ldy #$90
            sty L00C7
            ldy #$B0
            sty L00C8
            ldy #$F8
            ldx #$A5
            lda #$06
            jsr SETVBV
            lda #$B2
            sta VDSLST
            lda #$9B
            sta VDSLST+1
            lda #$C0
            sta NMIEN
            ldy #$00
            sty L284C
            sty L00C2
            lda L074C
            bne L9031
            dey
L9031       sty L286D
            jsr LBD51
            lda LB1A5
            sta PMBASE
            ldy #$03
            sty GRACTL
            dey
            sty L284B
            dey
            sty PRIOR
            jmp LB232
L904D       lda L00B8
            cmp #$04
            bne L9057
            lda #$10
            sta L00B8
L9057       jsr LB07E
            lda #$2A
            sta DMACLT
            ldy #$30
L9061       lda L9119,Y
            sta L05FF,Y
            dey
            bne L9061
            lda #$A0
            sta CHBASE
            sta L00EC
            jsr L9155
            lda L284C
            bpl L9085
            lda #$40
            sta L0604
            lda #$30
            sta L0605
            bne L908C
L9085       lda L3428
            cmp #$05
            beq L908F
L908C       jsr L90A6
L908F       lda #$78
            sta L00E2
            lda #$AA
            sta L00E3
            lda #$0F
            sta L00E4
            lda #$00
            sta L00E5
            lda #$06
            sta L00E6
            jmp L9AA0
L90A6       lda #$06
            jsr L069B
            ldx #$00
            stx L00D1
            stx L00D2
            jsr L917D
            ldy #$1F
L90B6       lda #$00
            bit RANDOM
L90BB       bpl L90BF
            lda #$80
L90BF       sta L2876,Y
            dey
            bpl L90B6
            lda #$00
            sta L00D1
            lda #$34
            sta L00D2
            lda #$11
            ldx #$08
            jsr L90E0
            lda #$5D
            sta L00D1
            lda #$36
            sta L00D2
            lda #$07
            ldx #$06
L90E0       sta L00B5
            ldy #$00
            lda #$06
L90E6       sta (L00D1),Y
            lda #$04
            iny
            cpy L00B5
            bne L90E6
            lda #$00
L90F1       pha
            jsr L913B+1
            lda #$05
            sta (L00D1),Y
            iny
            lda L062D
            sec
            sbc L90BB
            cmp LBFFB
            beq L910A
            lda #$00
            sta L00BF
L910A       pla
L910B       sta (L00D1),Y
            eor #$01
            iny
            cpy L00B5
            bne L910B
            eor #$02
            dex
            bne L90F1
L9119       rts
            bvs L918C
            bvs L9160+2
            .byte $00,$34,$04,$04,$04,$04,$04,$04,$04
            sty RAMLO
            sty RAMLO
            .byte $04,$04
            sty RAMLO
            .byte $04,$04,$04,$04,$04,$04
            sty FMSZPG+3
            .byte $02,$07
            eor (L0000,X)
L913B       asl L00A5
            cmp (DSKFMS),Y
            adc #$28
            sta L00D1
            bcc L9147
            inc L00D2
L9147       ldy #$00
            rts
L914A       jsr L06BF
            lda #$A0
            sta L00B2
            lda #$39
            sta L00B3
L9155       lda #$0F
            sta COLPM0
            sta COLPM1
            sta COLPM2
L9160       sta COLPM3
            lda #$00
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta SIZEP0
            sta SIZEP1
            sta SIZEP2
            sta SIZEP3
            jmp LB07E
L917D       ldy #$00
            tya
            nop
            nop
            ldy #$00
            lda (L00CD),Y
            cmp #$40
            bne L9192
            lda #$BC
L918C       sta L00D1
            lda #$35
            sta L00D2
L9192       lda #$01
            sta L00B5
            lda LA579,X
            beq L91B4
            bmi L91A1
            sta L00B5
            lda #$80
L91A1       sta (L00D1),Y
            iny
            cpy #$0A
            bne L91AD
            pha
            jsr L913B+1
L91AC       pla
L91AD       dec L00B5
            bne L91A1
            inx
            bne L9192
L91B4       rts
L91B5       ldy #$80
            sty L00B9
            lda L284D
            bmi L91CE
            dec L0709
            ldy L0709
            cpy #$92
            bcc L91CB
            jmp L9527
L91CB       jmp L9880
L91CE       lda FEOF,Y
            sta L00B8
            jsr LBD51
            jsr LB0A3
            lda #$34
            sta L00E2
            ldy #$00
L91DF       ldx #$00
L91E1       lda #$06
            jsr LAF74
            lda #$AA
            sta AUDC1
            sta AUDC3
            lda #$1D
            sta AUDF1
            lda #$20
            sta AUDF3
            lda L926E,Y
            eor #$60
            sta L3000,X
            cmp #$40
            bne L920C
            lda #$09
            sta AUDC1
            sta AUDC3
L920C       inx
            iny
L920E       lda L00DD
            beq L9220
            cmp #$02
            bcs L920E
            lda #$00
            sta AUDC1
            sta AUDC3
            beq L920E
L9220       lda L926B+2,Y
            cmp #$2E
            bne L91E1
            lda L0709
            cmp #$91
            beq L9231
            dec L0709
L9231       lda #$30
            sta L00B5
L9235       lda RANDOM
            and #$07
            tax
            lda LBD00,X
            sta L00E4
            sta L00E6
            dec L00FB
L9244       lda L00FB
            bne L9244
            dec L00B5
            bne L9235
            lda L00E2
            adc #$52
            pha
            sty L00B5
            jsr LB0A3
            pla
            sta L00E2
            ldy L00B5
            cpy #$50
            bcs L9262
            jmp L91DF
L9262       lda #$91
            sta L0709
            lda #$80
            sta L00B9
L926B       jmp L9880
L926E       eor DRKMSK
            eor ATRACT
            eor L4D20,Y
            eor #$53
            .byte $53
            eor #$4C
L927A       eor ICHIDZ
            .byte $4F
            lsr FMSZPG+2,X
            .byte $52
            jsr L4E20
            .byte $4F,$52
            eor (FMSZPG+1,X)
            rol L4C41
            jmp L5520
            ror L6E53
            jsr L494D
            .byte $53,$53
            eor #$4C
            eor ICHIDZ
            jsr L2020
            .byte $42
            eor (RMARGN,X)
            eor RMARGN
            jsr L4341
            .byte $54
            eor #$56
            eor (ROWCRS,X)
            eor FMSZPG+1
            rol L4C47
            .byte $4F,$42
            eor (DSTAT,X)
            jsr L4854
            eor LMARGN
            eor L4E4F
            eor FMSZPG,X
            jmp L4145
            .byte $52,$57
            eor (LMARGN,X)
            jsr L4E49
            eor #$54
            eor #$41
            .byte $54
            eor FMSZPG+1
L92CD       rol L4D20
            bcc L927A+1
            .byte $02
            sta L00B8
L92D5       lda L00B8
            cmp #$04
            bne L92DE
            jsr LBD64
L92DE       jsr L931F
            lda L00B8
            cmp #$04
            bne L9308
            ldy #$02
            jsr LA761
            bcs L9308
            lda L286F
            sta L2872
            lda L2870
            sta L2873
            jsr LBD51
            lda L00EE
            sta L2874
            jsr LADF8
            jmp L92CD+1
L9308       lda L00B9
            bne L9316
            lda L284C
            beq L9319
            lda L2849
            beq L9319
L9316       jmp L92D5
L9319       sta L2849
            jmp L9564
L931F       lda L00FB
            beq L9326
            jmp L93B1
L9326       dec L00FB
            lda RANDOM
            and #$07
            cmp L2848
            bcs L93B1
            sta L00B7
            tax
            ldy L2808,X
            bne L9354
            lda L284A
            beq L93B1
            lda RANDOM
            cmp #$03
            bcs L93B1
            dec L284A
            jsr L9B09
            ldy #$00
            tya
            nop
            nop
            jmp L93B1
L9354       jsr L9555
            lda L284E
            cmp #$03
            beq L9360
            ldx #$41
L9360       lda L2808,X
            cmp L2830,X
            bne L939F
            lda L2818,X
            cmp L2838,X
            bne L939F
            lda L00B8
            cmp #$04
            bne L9379
            jsr LADF8
L9379       dec L2849
            lda #$00
            sta L2808,X
            lda L2840,X
            sta L284D
            stx L00B6
            jsr L91B5
            lda L00B8
            cmp #$04
            bne L93B1
            ldx L00B6
            cpx L286B
            bne L93B1
            jsr LBD51
            jmp L92CD+1
L939F       jsr L93BA
            jsr L946C
            lda L93B2,X
            ldy L2818,X
            ora L2980,Y
            sta L2980,Y
L93B1       rts
L93B2       .byte $02,$02
            php
            php
            jsr L8020
            .byte $80
L93BA       lda L2830,X
            sec
            sbc L2808,X
            jsr L94EC
            sta L00BA
            lda L2828,X
            jsr L94EC
            sta L00BC
            jsr L94F6
            lda L00BD
            sta L00D1
            lda L00BE
            sta L00D2
            lda L2838,X
            sec
            sbc L2818,X
            jsr L94EC
            sta L00BA
            lda L2820,X
            jsr L94EC
            sta L00BC
            jsr L94F6
            lda L00BD
            sbc L00D1
            lda L00BE
            sbc L00D2
            bcs L9416
            lda L2830,X
            sec
            sbc L2808,X
            bcc L940A
            lda L2820,X
            bpl L940F
            bmi L9450
L940A       lda L2820,X
            bpl L9450
L940F       lda L2828,X
            beq L946B
            bne L9432
L9416       lda L2838,X
            sec
            sbc L2818,X
            bcc L9426
            lda L2828,X
            bpl L942B
            bmi L9432
L9426       lda L2828,X
            bpl L9432
L942B       lda L2820,X
            beq L946B
            bne L9450
L9432       lda L2820,X
            bpl L943C
            dec L2820,X
            bne L943F
L943C       inc L2820,X
L943F       lda L2828,X
            bmi L944A
            dec L2828,X
            jmp L946B
L944A       inc L2828,X
            jmp L946B
L9450       lda L2828,X
            bpl L945A
            dec L2828,X
            bne L945D
L945A       inc L2828,X
L945D       lda L2820,X
            bmi L9468
            dec L2820,X
            jmp L946B
L9468       inc L2820,X
L946B       rts
L946C       ldy #$00
            lda L2800,X
            clc
            adc L2820,X
            sta L2800,X
            bcs L9484
            lda L2820,X
            bpl L948C
            dec L2808,X
            bne L948C
L9484       lda L2820,X
            bmi L948C
            inc L2808,X
L948C       lda L2808,X
            cmp #$78
            bcs L949B
            inc L2808,X
            nop
            nop
            jmp L94A2
L949B       cmp #$D0
            bcc L94AB
            dec L2808,X
L94A2       lda L2820,X
            jsr L94F0
            sta L2820,X
L94AB       lda L2810,X
            clc
            adc L2828,X
            sta L2810,X
            bcs L94C1
            lda L2828,X
            bpl L94C9
            dec L2818,X
            bne L94C9
L94C1       lda L2828,X
            bmi L94C9
            inc L2818,X
L94C9       txa
            lsr
            lda L2818,X
            bcs L94D2
            adc #$2C
L94D2       cmp #$3C
            bcs L94DB
            inc L2818,X
            bne L94E2
L94DB       cmp #$68
            bcc L94EB
            dec L2818,X
L94E2       lda L2828,X
            jsr L94F0
            sta L2828,X
L94EB       rts
L94EC       cmp #$00
            bpl L94F5
L94F0       eor #$FF
            clc
            adc #$01
L94F5       rts
L94F6       lda #$00
            ldy #$08
L94FA       asl
            rol L00BE
            asl L00BC
            bcc L9508
            clc
            adc L00BA
            bcc L9508
            inc L00BE
L9508       dey
            bne L94FA
            sta L00BD
            rts
L950E       ldx #$08
            lda L00BA
            sta L00BD
            lda L00BB
L9516       asl L00BD
            rol
            cmp L00BC
            bcc L9521
            sbc L00BC
            inc L00BD
L9521       dex
            bne L9516
            sta L00BE
            rts
L9527       dec L284C
            ldy L284D
            lda #$00
            sta L28BE,Y
            lda L3428
            cmp #$05
            bne L953C
            jsr L9AA0
L953C       ldx #$00
L953E       lda L2840,X
            cmp L284D
            bne L954E
            stx L00B7
            jsr L9B5D
            jmp L953C
L954E       inx
            cpx L2848
            bne L953E
            rts
L9555       ldy L2818,X
            lda L93B2,X
            eor #$FF
            and L2980,Y
            sta L2980,Y
            rts
L9564       jsr L904D
            lda #$00
            sta L00B9
            sta L00B2
            lda L284C
            bne L9575
            jmp L964D
L9575       lda #$08
            sta L00B5
            lda #$AA
            sta AUDC3
L957E       ldy #$AA
            ldx #$A2
            lda L00B5
            and #$01
            bne L958B
            tay
L9589       ldx #$80
L958B       sty L00E3
            stx L35A8
            sta L00B6
            lda L070F
            bne L959C
            lda #$50
            sta L070F
L959C       ldy #$02
            jsr L962A
            lda #$13
            jsr LAF74
L95A6       lda L00B6
            adc L00DD
            sta AUDF3
            lda L00DD
            bne L95A6
            dec L00B5
            bne L957E
            jsr LB07E
            lda #$13
            sta L00B3
            lda #$33
            sta L00B2
            lda #$06
            sta L00B8
            lda #$18
            sbc L284B
            cmp #$05
            bcs L95CF
            lda #$05
L95CF       sta L00DF
            ldx #$15
            jsr L917D
L95D6       jmp L95D6
L95D9       jsr LAE24
            ldx #$07
            lda #$00
            nop
            nop
L95E2       sta L2808,X
            dex
            bpl L95E2
            nop
            nop
            ldy L2848
            iny
            sty L2848
            sty L2849
            sty L284A
            lda #$3C
            sta L2874
            jmp L92CD+1
L95FF       lda L00B8
            cmp #$04
            bne L9609
            lda L00FA
            beq L9645
L9609       lda L286E
            bne L9622
            lda L286F
            cmp #$05
            bcc L9618
            dec L2875
L9618       dec L2875
            bpl L9644
            lda #$02
            sta L2875
L9622       jsr LBD07+1
            bcs L9644
            ldy L284E
L962A       ldx L070C,Y
            inx
            txa
            cmp #$01
            bne L9635
            lda #$51
L9635       sta L070C,Y
            cmp #$5A
            bcc L9644
            sbc #$0A
            sta L070C,Y
            dey
            bpl L962A
L9644       rts
L9645       tay
            cmp (L00D7),Y
            bne L9644
            sta L00BF
            rts
L964D       jsr LB07E
            lda #$02
            sta L286E
            lda #$0C
            sta L00B8
            tax
L965A       lda (L00CB,X)
            cmp #$2E
            beq L9663
            sta L284E
L9663       jsr L914A
            lda #$00
            sta HPOSP0
            lda #$08
            jsr L982D
            lda #$50
            sta L00E4
            lda #$00
            jsr L982D
            lda #$0F
            sta L00E3
            lda #$AE
            jsr L982D
            lda #$10
            sta L00B8
            lda #$34
            sta L00E4
            lda #$00
            jsr L97F6
            lda #$DC
            sta L00E3
            lda #$C3
            jsr L97F6
            lda #$80
            jsr L982D
            lda #$06
            jsr L069B
            lda #$0C
            jsr LAF6B+1
L96A7       lda L0709
            cmp L284E
            bne L96B2
            jsr LA779
L96B2       lda #$95
            sta L0709
            jsr LAE24
            lda #$06
            jsr L98D0
            ldy L284B
            iny
            sty L2848
            iny
            sty L284B
            sty L00BA
            lda #$00
            sta L28B6
            sta L00BB
            lda #$0A
            sta L00BC
            jsr L950E
            ldx #$08
            ldy #$00
            lda L00BD
            beq L96EE
            iny
            ora #$50
            sta L3023
            lda (L00CF,X)
            bne L96EE
            sta L00BF
L96EE       lda L00BE
            ora #$50
            sta L3023,Y
            jsr LAE24
            lda #$43
            jsr LAF74
            lda #$A9
            sta AUDC2
L9702       lda L00DD
            beq L9712
            asl
            clc
            adc L00DD
            eor #$FF
            sta AUDF2
            jmp L9702
L9712       jsr LB07E
            jsr L914A
            ldx #$FF
            stx L284C
            inx
            stx L00B2
            jsr L904D
L9723       jsr LA74F
            lda #$02
            sta L00B8
            lda #$A9
            sta AUDC3
L972F       lda #$03
            tax
            jsr LAF6B+1
            lda L0604
            sta AUDF3
            clc
            adc #$28
            sta L0604
            bcc L974A
            inc L0605
            lda #$00
            nop
            nop
L974A       lda L0605
            cmp #$34
            bne L972F
            jsr LB07E
            lda #$1C
            jsr LAF6B+1
            jsr L9A40
            ldx L284B
            dex
L9760       ldy L28FE,X
            dey
            sty L00B6
            lda #$11
            sta L00D1
            lda #$34
            sta L00D2
L976E       jsr L913B+1
            dec L00B6
            bne L976E
            ldy L28BE,X
            lda #$00
            sta (L00D1),Y
            iny
            sta (L00D1),Y
            iny
            sta (L00D1),Y
            jsr L913B+1
            ldy L28BE,X
            lda #$00
            sta (L00D1),Y
            iny
            lda #$A1
            sta (L00D1),Y
            iny
            lda #$00
            sta (L00D1),Y
            jsr L913B+1
            ldy L28BE,X
            lda #$00
            sta (L00D1),Y
            iny
            sta (L00D1),Y
            iny
            sta (L00D1),Y
            lda L00BF
            sta L00B8
            lda #$F3
            sta AUDF1
            lda #$90
            sta AUDF2
            lda #$55
            sta AUDF3
            lda #$32
            sta AUDF4
            lda #$26
            jsr LAF74
            lda L00DD
L97C5       sbc L00BF
            bmi L97DF
            cmp #$21
            bcc L97CF
            lda #$0F
L97CF       ora #$A0
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            bne L97E3
L97DF       lda #$02
            sta L00B8
L97E3       lda L00DD
            bne L97C5
            dex
            bmi L97ED
            jmp L9760
L97ED       jsr L904D
            jsr L914A
            jmp L9E79
L97F6       sta L00B6
            ldy #$0A
            sty L2850
            ldy #$0A
            sty L2852
            ldy #$01
            sty L2851
            sty L2853
L980A       lda #$03
            jsr LAF6B+1
            lda L00B6
            jsr LA975
            lda L2850
            beq L9878
            dec L2850
            jsr LA966
            dec L2852
            inc L2853
            jsr LA966
            inc L2853
            bne L980A
L982D       sta L00B6
            ldx #$0A
            lda #$12
            sta L00D1
            lda #$34
            sta L00D2
            lda #$5A
            sta L00B0
            lda #$37
            sta L00B1
L9841       lda L00B6
            ldy #$15
L9845       sta (L00D1),Y
            sta (L00B0),Y
            dey
            bpl L9845
            jsr L913B+1
            lda L00B0
            sec
            sbc #$28
            sta L00B0
            bcs L985A
            dec L00B1
L985A       lda #$02
L985C       sta L00DD
L985E       ldy L00DD
            dey
            beq L986E
            txa
            asl
            asl
            asl
            adc L00B6
            sta AUDF1
            ldy #$A8
L986E       sty AUDC1
            lda L00DD
            bne L985E
            dex
            bpl L9841
L9878       jsr LB07E
            lda #$13
            jmp LAF6B+1
L9880       lda #$10
            sta L00B8
            jsr L904D
            jsr L914A
            lda #$00
            sta HPOSP0
            sta L28B5
            jsr LB07E
            jsr LBD51
            lda #$C0
            jsr LAF74
L989D       lda L00DD
            beq L98C0
            bmi L98B8
            lsr
            lsr
            lsr
            lsr
            tay
            beq L98B0
            bit RANDOM
            bmi L98B0
            dey
L98B0       sty L00E2
            sty L00E3
            sty L00E4
            sty L00E6
L98B8       lda #$80
            jsr L9A26
            jmp L989D
L98C0       jsr LAE24
            lda #$00
            jsr L98D0
            lda #$63
            jsr LAF6B+1
            jmp hiscore
L98D0       pha
            jsr LB0A3
            ldy #$5A
            pla
            sta L00E4
            sta L00E6
            beq L98DF
            ldy #$60
L98DF       sty L00E3
            lda RANDOM
            and #$07
            tay
            lda L9A1E,Y
            tay
            ldx #$00
            lda L0709
            cmp #$95
            bne L98F6
            ldy #$D6
L98F6       lda L9925,Y
            bmi L9922
            eor #$60
            sta L3000,X
            sta AUDF1
            lsr
            sbc #$08
            sta AUDF2
            iny
            inx
            lda #$06
            jsr LAF74
L9910       lda L00DD
            ora #$A0
            adc #$07
            sta AUDC1
            sta AUDC2
            lda L00DD
            bne L9910
            beq L98F6
L9922       jmp LB07E
L9925       bvc L9977+2
            eor #$4D
            eor (LMARGN,X)
            eor L4720,Y
            .byte $4F
            eor (DSTAT,X)
            jsr L4F4E
            .byte $54
            jsr L4559
            .byte $54
            eor (FMSZPG,X)
            pha
            eor #$45
            lsr FMSZPG+2,X
            .byte $44
            rol L57FF
            .byte $4F
            eor DSTAT,X
            .byte $44
            jsr L4F59
            eor ICHIDZ,X
            .byte $43
            eor (LMARGN,X)
            eor ICHIDZ
            .byte $54,$4F
            jsr L2020
            bvc L99A5
            eor (SAVMSC+1,X)
            jsr L4741
            eor (FMSZPG+6,X)
            lsr LFF3F
            .byte $54
            pha
            eor ICHIDZ
            .byte $4F
            lsr L594C
            jsr L4957
            lsr L494E
            lsr L2047
            jsr L2020
L9977       eor L564F
            eor ICHIDZ
            eor #$53
            jsr L4F4E
            .byte $54
            jsr L4F54
            jsr L4C50
            eor (SAVMSC+1,X)
            rol L48FF
            .byte $4F,$57
            jsr L4241
            .byte $4F
            eor ROWCRS,X
            jsr L2041
            lsr L4349
            eor ICHIDZ
            jsr L2020
            .byte $47
L99A1       eor (ATRACT,X)
            eor ICHIDZ
L99A5       .byte $4F
            lsr ICHIDZ
            .byte $43
            pha
            eor RMARGN
            .byte $53,$3F,$FF
            eor (LMARGN,X)
            eor ICHIDZ
            eor L554F,Y
            jsr L4C50
            eor (SAVMSC+1,X)
            eor #$4E
            .byte $47
            jsr L2041
            jsr L4720
            eor (ATRACT,X)
            eor ICHIDZ
            .byte $4F,$52
            jsr L5349
            jsr L4854
            eor #$53
            jsr L4552
            eor (DSTAT,X)
            .byte $3F,$FF
            eor L554F,Y
            jsr L4148
            lsr FMSZPG+2,X
            jsr L4542
            eor DRKMSK
            jsr L2020
            jsr L2020
            jsr L4944
            .byte $53,$43,$4F
            lsr L454E
            .byte $43,$54
            eor FMSZPG+1
            rol L4EFF
            eor ATRACT,X
            .byte $42
            eor LMARGN
            jsr L464F
            jsr L4142
            .byte $53
            eor RMARGN
            jsr L4F54
            jsr L4220
            eor ICHIDZ
            .byte $44
            eor #$53
            eor (CRITIC,X)
            jmp L4445
            jsr L5349
            .byte $FF
L9A1E       .byte $00
            rol L3E1E,X
            .byte $67
            txa
            ldy L0000,X
L9A26       sta L00B4
            lda RANDOM
            sta L00CF
            lda RANDOM
            and #$0F
            clc
            adc #$30
            sta L00D0
            ldy #$00
            lda L00B4
            sta (L00CF),Y
            nop
            nop
            rts
L9A40       ldy #$00
            sty L00B5
            ldx L284B
            stx L284C
            stx L00B6
L9A4C       lda L00B5
            eor #$FF
            sta L00B5
L9A52       lda RANDOM
            and #$1F
            cmp #$02
            bcc L9A52
            cmp #$14
            bcs L9A52
            sta L28BE,Y
L9A62       lda RANDOM
            and #$0F
            cmp #$02
            bcc L9A62
            cmp #$0A
            bcs L9A62
            bit L00B5
            bmi L9A75
            adc #$0A
L9A75       sta L28FE,Y
            tya
            tax
L9A7A       dex
            bmi L9A9A
            lda L28BE,X
            cmp L28BE,Y
            bne L9A7A
            lda L28FE,X
            cmp L28FE,Y
            bne L9A7A
            ldx #$00
            lda (L00D7,X)
            cmp #$2E
            beq L9A52
            sta L00BF
            sta L284E
L9A9A       iny
            dec L00B6
            bne L9A4C
            rts
L9AA0       lda #$12
            sta L00D1
            lda #$34
            sta L00D2
            ldx #$00
            ldy #$00
L9AAC       lda #$01
            sta L00B5
            lda LA480,X
            beq L9ADB
            bmi L9AC8
            sta L00B5
            lda #$80
            bit L00B5
            bvc L9AC8
            lda L00B5
            and #$BF
            sta L00B5
            lda LA47F,X
L9AC8       sta (L00D1),Y
            iny
            cpy #$16
            bne L9AD4
            pha
            jsr L913B+1
            pla
L9AD4       dec L00B5
            bne L9AC8
            inx
            bne L9AAC
L9ADB       lda #$A1
L9ADD       ldx L284C
            bmi L9B08
            sta L00B5
            ldx L284B
            dex
L9AE8       ldy L28FE,X
            sty L00B6
            lda #$12
            sta L00D1
            lda #$34
            sta L00D2
L9AF5       jsr L913B+1
            dec L00B6
            bne L9AF5
            ldy L28BE,X
            beq L9B05
            lda L00B5
            sta (L00D1),Y
L9B05       dex
            bpl L9AE8
L9B08       rts
L9B09       ldx L00B7
            stx L00B5
            lda RANDOM
            and #$0F
            adc #$04
            adc L28B6
            sta L2820,X
            sta L2828,X
            bit RANDOM
            bpl L9B44
L9B22       lda RANDOM
            and #$3F
            cmp #$2C
            bcs L9B22
            adc L00BF
            lsr L00B5
            bcc L9B33
            adc #$2B
L9B33       sta L2818,X
            lda #$78
            bit RANDOM
            bpl L9B3F
            lda #$CF
L9B3F       sta L2808,X
            bne L9B5D
L9B44       lda RANDOM
            and #$7F
            cmp #$58
            bcs L9B44
            adc #$78
            sta L2808,X
            lda #$10
            lsr L00B5
            bcc L9B5A
            lda #$67
L9B5A       sta L2818,X
L9B5D       lda RANDOM
            and #$3F
            asl
            tay
            lda L00B7
            tax
            lsr
            bcc L9B6B
            iny
L9B6B       cpy L284B
            bcs L9B5D
            lda L28BE,Y
            bne L9B99
            tya
            and #$01
            tay
L9B79       cpy L284B
            bcs L9B87
            lda L28BE,Y
            bne L9B5D
            iny
            iny
            bne L9B79
L9B87       lda #$FF
            sta L2840,X
            lda #$91
            sta L2830,X
            txa
            lsr
            lda #$3B
            adc #$00
            bne L9BAE
L9B99       tya
            sta L2840,X
            lda L28BE,Y
            asl
            asl
            adc #$79
            sta L2830,X
            lda L28FE,Y
            asl
            asl
            adc #$12
L9BAE       sta L2838,X
            rts
            pha
            lda VCOUNT
            cmp #$60
            bcs L9BE3
            cmp #$33
            beq L9C27
            cmp #$4B
            beq L9C2E
            lda L00B8
            cmp #$02
            bne L9C33
            lda L2809
            sta HPOSM0
            lda L280B
            sta HPOSM1
            lda L280D
            sta HPOSM2
            lda L280F
            sta HPOSM3
            jmp L9C33
L9BE3       lda #$E0
            sta WSYNC
            sta CHBASE
            lda L28B5
            beq L9BF5
            lda #$06
            sta COLBK
L9BF5       lda #$72
            sta COLPF0
            lda #$1C
            sta COLPF1
            lda #$34
            sta COLPF2
            lda #$68
            sta COLPF3
            lda L0715
            and #$01
            beq L9C15
            lda #$0F
            sta COLPF3
L9C15       lda L00B9
            and #$08
            beq L9C33
            lda #$AC
            sta COLPF2
            lda #$C8
            sta COLPF0
            bne L9C33
L9C27       lda #$34
            sta COLPF0
            bne L9C33
L9C2E       lda #$78
            sta COLPF0
L9C33       pla
            rti
            rti
            lda L284F
            bpl L9C5D
            lda #$00
            sta AUDC3
            sta AUDC4
            ldy #$02
            jsr LA761
            bcs L9C4D
            jsr LAAD9
L9C4D       jsr L9CDA
            lda TRIG0
            bne L9C5D
            lda #$0C
            sta L284F
            jsr L9D56
L9C5D       lda L284F
            bmi L9C65
            dec L284F
L9C65       lda L00DF
            ldy #$00
            jsr L9E90
            lda L28B7
            beq L9C7B
            lda L00DD
            sta L00B4
            lsr
            adc L00B4
            jmp L9C7E
L9C7B       lda L00DD
            asl
L9C7E       ldy #$06
            jsr L9E90
            lda L00DD
            cmp #$11
            bcs L9CC5
            ora #$20
L9C8B       sta AUDC1
            ldy #$AF
            sty AUDC2
            ldy #$18
            cmp #$2F
            beq L9C9B
            ldy #$00
L9C9B       sty AUDF2
            cmp #$20
            bne L9CC5
            ldx #$32
            lda L28B7
            beq L9CAB
            ldx #$3C
L9CAB       stx L00DD
            lda #$20
            sta AUDF1
            dec L00DF
            bpl L9CC5
            jsr L914A
            clc
            lda L28B6
            adc #$04
            sta L28B6
            jmp L9E79
L9CC5       ldy #$1C
            and #$08
            beq L9CCD
            ldy #$A6
L9CCD       sty COLPM0
            sty COLPM1
            sty COLPM2
            sty COLPM3
            rts
L9CDA       lda PORTA
            ldy L00B3
            lsr
            bcs L9CE6
            ldy #$13
            bne L9CEB
L9CE6       lsr
            bcs L9CEF
            ldy #$1B
L9CEB       sty L00B3
            bne L9D10
L9CEF       ldy L00B2
            lsr
            bcs L9CFE
            cpy #$33
            beq L9CFE
            tya
            sec
            sbc #$08
            bne L9D09
L9CFE       lsr
            bcs L9D10
            cpy #$5B
            beq L9D10
            tya
            clc
            adc #$08
L9D09       sta L00B2
            lda #$0C
            sta L284F
L9D10       ldy #$00
            tya
L9D13       sta L2A00,Y
            sta L2B00,Y
            iny
            bne L9D13
            lda L00B2
            sta HPOSP0
            clc
            adc #$08
            sta HPOSP1
            adc #$08
            sta HPOSP2
            adc #$08
            sta HPOSP3
            ldx L00B3
            jsr L9D45
            ldy #$16
            inx
L9D39       lda #$80
            sta L2A00,X
            sta L2B80,X
            inx
            dey
            bpl L9D39
L9D45       lda #$FF
            sta L2A00,X
            sta L2A80,X
            sta L2B00,X
            lda #$80
            sta L2B80,X
            rts
L9D56       lda L00B2
            sec
            sbc #$CB
            lsr
            lsr
            lsr
            clc
            adc L00B3
            and #$0F
            tax
            ldy #$00
            lda L284E
            sta L00C2
L9D6B       lda L284E
            sta L00C3
L9D70       lda L2876,X
            cmp L2896,Y
            bne L9D89
            inx
            iny
            dec L00C3
            bne L9D70
            txa
            clc
            adc #$05
            tax
            dec L00C2
            bne L9D6B
            beq L9D9C
L9D89       lda #$CF
            sta AUDC3
            sta AUDC4
            lda #$46
            sta AUDF3
            lda #$2E
            sta AUDF4
L9D9B       rts
L9D9C       lda #$0C
            sta L00B8
            lda L00DF
            lsr
            sta L286F
            lda #$00
            sta L2870
            lda #$80
            sta L00BD
            sta L00BA
            lda #$60
            sta L00BE
            sta L00BC
            lda #$AF
            sta AUDC1
            sta AUDC2
L9DBF       lda L00BA
            ldx L00BC
            bne L9DDB
            adc #$08
            cmp L00BD
            bcc L9DE7
            sta L00BC
            lda L00BE
            sbc #$08
            sta L00BE
            lda L00BD
            sbc #$08
            sta L00BD
            bne L9DE7
L9DDB       sbc #$08
            bcc L9DFD
            cmp L00BD
            bcs L9DE7
            ldx #$00
            stx L00BC
L9DE7       sta L00BA
            sta AUDF1
            adc #$03
            sta AUDF2
            ldx #$18
            ldy #$00
L9DF5       iny
            bne L9DF5
            dex
            bne L9DF5
            beq L9DBF
L9DFD       ldy L284C
            dey
            bne L9E09
            sty L284C
            jmp L964D
L9E09       lda #$68
            sta L00E4
            jsr L914A
            lda #$12
            sta L00B8
L9E14       jmp L9E14
            jsr LAA35
            jsr LADAE
            dec L00DF
            lda L00DF
            and #$0E
            beq L9E30
            lsr
            ora #$40
            sta AUDC1
            sta AUDC2
            lda #$A1
L9E30       jsr L9ADD
            jsr L9EC3
            lda #$00
            sta AUDC3
            sta AUDC4
            lda TRIG0
            bne L9E6D
            lda L00B3
            sec
            sbc #$0D
            lsr
            lsr
            sta L00C3
            lda L00B2
            sec
            sbc #$75
            lsr
            lsr
            sta L00C2
            ldx L284B
            dex
L9E59       lda L00C2
            cmp L28BE,X
            bne L9E67
            lda L00C3
            cmp L28FE,X
            beq L9E6E
L9E67       dex
            bpl L9E59
            jmp L9D89
L9E6D       rts
L9E6E       lda L00AF,Y
            sta L00B8
            stx L284D
            jsr L9527
L9E79       lda #$10
            sta L00B8
            lda #$17
            sta L00D7
            lda #$A7
            sta L00D8
            lda #$4C
            jsr LAF74
            jsr LB07E
L9E8D       jmp L9E8D
L9E90       sty L00B4
            sta L00BA
            lda #$00
            sta L00BB
            lda #$0A
            sta L00BC
            jsr L950E
            ldx L00BD
            ldy L00B4
            jsr L9EAA
            iny
            iny
            ldx L00BE
L9EAA       lda LA5D0,X
            sta L35BC,Y
            lda LA5D8+2,X
            sta L35BD,Y
            lda LA5E2+2,X
            sta L35E4,Y
            lda LA5EC+2,X
            sta L35E5,Y
            rts
L9EC3       ldy #$10
            rts
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
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (L0000,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            bcc L9FFD
L9FFD       .byte $04,$0F
L9FFF       beq L9FFF+1
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
            sbc LFDFD,X
            sbc LFDFD,X
            sbc LFFFD,X
            .byte $FF,$FF,$FF,$FF,$FF
            eor COLCRS,X
            sbc LFDFD,X
            sbc LFDFD,X
            eor COLCRS,X
            .byte $00,$00,$00,$00,$00,$00
            eor COLCRS,X
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00,$00,$00,$00,$00,$00
            ora (NGFLAG,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $FF,$FF
            cmp L00D5,X
            .byte $DF,$DF,$DF,$DF,$FF,$FF,$57,$57,$F7,$F7,$F7,$F7,$FF,$FF,$F7,$F7
            .byte $F7,$F7,$F7,$F7,$FF,$FF,$5F,$5F,$DF,$DF,$DF,$DF,$FF,$FF
            sbc L00F5,X
            .byte $F7,$F7,$F7,$F7,$D7,$D7,$D7,$D7,$D7,$D7,$D7,$D7,$F7,$F7,$F7,$F7
            .byte $F7,$F7,$F7,$F7,$DF,$DF,$DF,$DF,$DF,$DF
            cmp L00D5,X
            .byte $F7,$F7,$F7,$F7,$F7,$F7,$57,$57
            cmp L00D5,X
            .byte $DF,$DF,$DF,$DF,$DF,$DF,$57,$57,$F7,$F7,$F7,$F7,$F7,$F7
            cmp L00D5,X
            .byte $D7,$D7,$D7,$D7,$D7,$D7,$D7,$D7,$D7,$D7,$D7,$D7
            cmp L00D5,X
            .byte $57,$57,$FF,$FF,$FF,$FF,$57,$57,$FF,$FF
            cmp L00D5,X
            .byte $DF,$DF,$FF,$FF
            sbc L00F5,X
            .byte $FF,$FF,$DF,$DF
            cmp L00D5,X
            .byte $DF,$DF
            cmp L00D5,X
            .byte $FF,$FF,$FF,$FF,$DF,$DF,$57,$57,$5F,$5F,$5F,$5F
            cmp L00D5,X
            .byte $FF,$FF,$FF,$FF
            cmp L00D5,X
            .byte $FF,$FF,$57,$57,$FF,$FF,$FF,$FF
            cmp L00D5,X
            .byte $DF,$DF,$DF,$DF
            cmp L00D5,X
            .byte $57,$57,$D7,$D7,$D7,$D7,$57,$57,$FF,$FF
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $57,$57,$D7,$D7,$D7,$D7,$57,$57,$FF,$FF,$EB,$EB,$EB,$EB,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$F7
            cmp L00D5,X
            .byte $F7
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $FF,$FF,$FF,$FF
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $FF,$FF,$FF,$FF
            sbc L00F5,X
            sbc L00F5,X
            sbc L00F5,X
            sbc L00F5,X
            .byte $5F,$5F,$5F,$5F,$5F,$5F,$5F,$5F,$3F,$3F,$FF,$FF
            sbc L00F5,X
            sbc L00F5,X
            .byte $FC,$FC,$FF,$FF,$5F,$5F,$5F,$5F
            sbc L00F5,X
            sbc L00F5,X
            .byte $FF,$FF,$7F,$7F,$5F,$5F,$5F,$5F,$FF,$FF,$FC,$FC
            cmp L00D5,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF
            tax
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            tax
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
            tax
            inc LFEFE,X
            .byte $BF,$AF,$EF,$EF,$AF,$FB
            inc LBFFE,X
            .byte $AF,$EF,$EF,$AF,$BF,$BF,$BF
            inc LFEFE,X
            inc LFEFE,X
            inc LBFFE,X
            .byte $EF,$FB,$FB,$FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$BF,$EF,$FB,$FB
            .byte $FB,$FB,$FB
            inc LFEFE,X
            inc LFFFF,X
            .byte $FF,$FF
            inc LFBFE,X
            .byte $FB,$EF,$EF,$BF,$BF,$FF,$FF,$FF,$FF
            tax
            .byte $EF,$EF,$EF,$EF,$EF,$EF,$EF,$AF,$EF,$AF,$AF,$EF,$EF,$EF,$EF,$EF
            .byte $EF,$FB,$FB,$FB
            inc LFEFE,X
            .byte $EF,$EF,$EB,$EF,$EB,$EB,$EF,$AF,$EF,$EF,$EF,$EF,$EF,$EF,$EF,$EF
            .byte $FA,$FA,$FB,$FB,$EF,$EF
            tsx
            tsx
            .byte $FF,$FF,$EB
            ldx LFFFF,Y
            .byte $FF,$FF,$FF,$FF,$FF
            inc LEFBB,X
            .byte $FF,$FF,$BF,$BF,$EF,$EF,$FA
            tsx
            .byte $EF,$FA
            inc LFEFE,X
            inc LFFFF,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$BF,$BF,$BF,$BF
            inc LFEFE,X
            inc LFEAA,X
            inc LBFFE,X
            .byte $BF,$EF,$EF,$BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$AF,$EF,$FA,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$EB
            ldx LFFBE,Y
            .byte $FF,$FF,$FF,$EF
            nop
            .byte $BF,$BF,$EF,$EF,$BF
            tsx
            .byte $EF,$EF,$BF,$FF,$FF,$FF,$BF,$BF,$AF,$EF,$EF,$EF,$FF,$FF,$FF,$BF
            .byte $BF,$AF,$FA
            inc LEFAF,X
            .byte $EF,$EF,$EF,$FF,$AF
            nop
            .byte $FB,$FB,$EF,$EF
            tax
            inc LFBFB,X
            .byte $AF,$AF,$EF,$EF,$BF,$BF,$EF,$EF,$FF,$FF,$FF,$FF
            inc LFEFE,X
            inc LFFFF,X
            .byte $FF,$FF,$FF,$FF,$AF,$AF,$FF,$FF,$FA,$FA,$EF,$EB,$FB,$FB,$EF,$AF
            .byte $FF,$FF,$FF,$EB
            ldx LBFBE,Y
            .byte $EF,$EB,$BF,$FB,$FB,$FA,$FA,$EF,$EF,$EF,$EF
            nop
            .byte $EF,$EF,$EF,$EF
            nop
            .byte $BF,$FF
            tax
            .byte $BF,$BF
            tsx
            .byte $FB,$BB,$BF,$EF,$AF,$BF,$BF,$BF,$FB,$FB,$FB,$FB
            inc LEEEE
            inc LBEBE
            ldx LBFBE,Y
            .byte $FF,$BF,$BF,$FB,$BB,$EF,$EF,$EF,$EF,$BF
            tsx
            .byte $EF,$EF
            inc LEEEA
            inc LAFE9+1
            .byte $EF,$EF
            inc LEBEE
            .byte $EB,$EF,$EF
            inc LFBFE,X
            .byte $FB,$EF,$EF,$BF,$BF
            inc LFEFE,X
            .byte $FF,$FF,$FF,$FF,$FF,$FB,$FB,$AF,$BF,$FF,$FF,$FF,$FF
            inc LFEFE,X
            inc LFBFB,X
            .byte $FB,$FB,$BF,$BF,$BF,$BF,$BF,$BF,$FF,$FF,$BF,$EF,$EF,$FB,$BF,$BF
            .byte $FF,$AF
            inc LFEFE,X
            inc LFFAA,X
            .byte $FF,$FF
            inc LFBEA
            .byte $FB,$FB,$FF,$FF,$FF
            inc LFABE
            ldx LFEEE
            inc LAAFE,X
            inc LFBFB,X
            .byte $FB,$EF,$AF,$BF,$FB,$FB,$AF,$BF
            tax
            .byte $FF,$FF,$FF,$BF,$BF,$EF,$EF
            tax
            .byte $EF,$EF,$AF,$FF,$FF,$FF,$FF
            tax
            .byte $EF,$EF,$EF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$AF,$EF,$EF,$EF,$EF,$EF
            .byte $EB,$FB,$FB,$FF,$FF,$FF,$FF
            nop
            .byte $EF,$EF,$EF,$FB,$FB
            inc LFFFE,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$BF,$BF,$EF,$EF
            inc LFEFE,X
            inc LEFEA,X
            .byte $EF,$EF,$EF,$EF,$EF,$EF,$AF,$FF,$FF,$FF
            nop
            .byte $FF,$BF,$BF,$EF,$EF,$EF,$EF,$FF,$FF,$BF,$BF,$BF,$BF
            ldx LFFBE,Y
            .byte $FF,$FF,$FF,$FF,$FF,$BF,$BF,$FF,$FF,$FF,$FF,$FF,$AF,$EB
            inc LFBFB,X
            .byte $EF,$EF,$FB,$FB,$FB,$FB,$BB,$BB,$EB,$EB
            ldx LBBBE,Y
            .byte $BB,$EB,$EB,$FF,$FF,$FF,$FF,$FF,$FF
            inc LEBBE,X
            .byte $FF,$FF,$FF,$FF,$FF,$BB,$BB,$BB,$BB
            inc LEEEE
            inc LBBBA+1
            inc LFBEE
            .byte $FB
            inc LFFFE,X
            .byte $FF,$BF,$BF,$EF,$EF,$FB,$FB
            nop
            .byte $AF,$AB
            inc LFFFF,X
            .byte $FF,$FF,$BF,$BF,$EF,$EF,$FB,$FB,$FB,$FB,$FB,$FB,$FB,$FB,$AF,$EF
            .byte $FF,$FF,$FB,$FB,$FB,$FB,$FB,$FB,$EF,$EF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FA,$FA,$FF,$FF,$AF,$AF,$FA,$FA,$FF,$FF,$03
            cpy #$00
            .byte $00,$03
            cpy #$00
            .byte $00,$03
            cpx #$00
            .byte $00,$03
            cpx #$00
            rti
            .byte $03
            beq LA413
LA413       rts
            .byte $03,$FF,$FF,$FC,$03,$FF,$FF
            inc LFF03,X
            .byte $FF,$FF,$03,$FF,$FF,$FF,$03,$FF,$FF
            inc LFF03,X
            .byte $FF,$FC,$03
            beq LA42F
LA42F       rts
            .byte $03
            cpx #$00
            rti
            .byte $03
            cpx #$00
            .byte $00,$03
            cpy #$00
            .byte $00,$03
            cpy #$00
            .byte $00
            ora (L0000,X)
            .byte $00,$00
            ora (L0000,X)
            .byte $00,$00
            ora (LOMEM,X)
            .byte $00,$00
            ora (LOMEM,X)
            .byte $00,$00,$03
            cpy #$00
            .byte $00,$07
            cpx #$00
            .byte $00,$0F
            beq LA45B
LA45B       .byte $00,$3F,$FF,$00,$00,$FF,$FC,$00,$00,$0F
            beq LA467
LA467       .byte $00,$07
            cpx #$00
            .byte $00,$03
            cpy #$00
            .byte $00
            ora (LOMEM,X)
            .byte $00,$00
            ora (LOMEM,X)
            .byte $00,$00,$00,$80,$00,$00,$00,$80,$00
LA47F       .byte $00
LA480       ldx LC342
            ldx LAF43+1
            ldx L04B0
            lda (WARMST),Y
            .byte $B2
            ora L00B2
            .byte $02,$B3
            ldy NGFLAG,X
            ldx L00B7,Y
            php
            .byte $B2
            ora L00B2
            lda LB843
            lda LB209,Y
            ora L00B2
            .byte $04
            tsx
            .byte $BB
            ora #$B2
            ora L00B2
            ora L00BC
LA4A9       .byte $03
            ldx L00BE,Y
            .byte $BF
            cpy #$E7
            ldx LAEC2+1
            .byte $44,$C3
            cmp L00E8
            dec CASINI
            ldy LCE02,X
            iny
            cmp #$01
            lda L00E0,X
            ora (L00B2,X)
            ora L00B2
            ora (L00BD,X)
            dex
            .byte $CB
            ora (L00BC,X)
            .byte $02
            cpy LCDC2
            ldx NGFLAG,Y
            lda (NGFLAG),Y
            .byte $B2
            ora L00B2
            .byte $02
            bne LA4A9
            .byte $D2,$D3,$E7
            ldx LE6E5
            .byte $D4
            cmp L00C1,X
            .byte $C2
            ora (L00B2,X)
            ora L00B2
            .byte $02
            dec L00D7,X
            cld
            cmp L01B7,Y
            .byte $DB,$DC
            cmp LDE01,X
            ldx LE1AE
            ldx LC344
            .byte $02,$E2
            ora (L00E3,X)
            .byte $02,$C7
            cpy CASINI+1
            cmp (L00C2,X)
            .byte $04
            ldx #$02
            .byte $B2,$04,$DB
            lda L06E4
            sbc #$07
            .byte $B2,$02
            nop
            sbc (NGFLAG,X)
            cmp (L00C2,X)
            asl L00EB
            cpx LB206
            .byte $02
            ldy LB600+2,X
            .byte $B7,$07,$EB
            inc L00EC
            .byte $04
            sbc LAEAD+1
            inc LB600+1
            cmp LE909,X
            .byte $EF
            lda LF0AD
            sbc (L00BC),Y
            .byte $02
            nop
            .byte $F2,$F3
            asl
            cmp (L00F4,X)
            sbc (NGFLAG),Y
            sbc L00E9,X
            .byte $DA
            lda NEWCOL
            .byte $F7,$0B
            sed
            .byte $BB,$02,$DC
            lda LE904,Y
            .byte $DF
            asl
            .byte $DC,$EF
            sbc LBC01+1,Y
            .byte $12,$B2,$02
            sbc #$01
            dec LC1F2
            .byte $FA
            cpy #$EC
            .byte $0C,$FB
            ora (L00C1,X)
            .byte $BF,$FC
            sbc LC102,X
            cmp LCACC,X
            inc LDC09,X
            .byte $FF,$CF,$02
            lda CASINI,X
            .byte $DC,$B7
            asl LECEB
            ora (L00B7,X)
            ora #$00
LA579       .byte $89
            txa
            .byte $89
            txa
            .byte $89
            sty L8C8D
            .byte $89
            txa
            stx L908F
            sta (L0092),Y
            .byte $93
            sty L0093,X
            sta L0091,X
            .byte $00,$14,$00
LA590       ora (CASINI,X)
            .byte $03,$04
            ora TRAMSZ
            .byte $07,$00
            ora (CASINI,X)
            .byte $03,$04
            ora TRAMSZ
            .byte $07,$00
            ora (CASINI,X)
            .byte $03,$04
            ora TRAMSZ
            .byte $07,$00
            ora (CASINI,X)
            .byte $03,$04
            ora TRAMSZ
            .byte $07,$00
LA5B0       .byte $00
            ora TRAMSZ
            ora (CMCMD,X)
            .byte $03,$04,$00,$03
            ora (RAMLO+1,X)
            .byte $07,$02,$04
            asl NGFLAG
            .byte $02,$04,$00,$02
            ora TRAMSZ
            .byte $07,$03,$04,$00
            ora (TRAMSZ,X)
            .byte $03,$07
            ora CASINI
LA5D0       .byte $89,$8B,$97,$97,$89,$89,$89,$97
LA5D8       sta L8A89
            .byte $80
            txa
            sty L9C8B+1
            .byte $9C
            txa
LA5E2       sty L9589+1
            stx L989D
            sta L9D9B,Y
            .byte $80
LA5EC       sta L91AC,X
            .byte $80
            stx L009E,Y
            txs
            ldy #$9E
            .byte $8F
            ldy #$93
            cli
            lda L00EC
            sta CHBASE
            lda #$00
            sta DLISTL
            lda #$06
            sta DLISTH
            ldy #$04
LA60A       lda L00E2,Y
            sta COLPF0,Y
            dey
            bpl LA60A
            lda L00ED
            beq LA619
            dec L00ED
LA619       ldx L00B8
            cpx #$02
            bne LA637
            lda L2808
            sta HPOSM0
            lda L280A
            sta HPOSM1
            lda L280C
            sta HPOSM2
            lda L280E
            sta HPOSM3
LA637       ldy #$01
            jsr LA761
            bcs LA64D
            lda #$00
            sta L28B3
            cpx #$0E
            beq LA64A
            jmp L9000
LA64A       jmp LA6B3
LA64D       ldy #$03
            jsr LA761
            bcs LA663
            cpx #$06
            beq LA663
            lda L28B3
            bne LA66E
            dec L28B3
LA660       jmp LA660
LA663       lda L28B3
            beq LA677
            jsr LB07E
            jmp XITVBV
LA66E       inc L28B3
            pla
            pla
            pla
            pla
            pla
            pla
LA677       jsr LAFAD
            jsr L95FF
            lda #$00
            sta L00FB
            lda L00DD
            beq LA687
            dec L00DD
LA687       jsr LA68D
            jmp XITVBV
LA68D       ldy L00B8
            lda L00C8,Y
            pha
            lda L00C7,Y
            pha
            rts
LA698       bit ICBAHZ
            rol ICSTAZ
            .byte $2F
LA69D       rol L0460
            lda #$CB
            ldx BFENLO
            .byte $AB
            and L009C,X
            .byte $D4,$92
            txs
            asl BFENLO
            tax
            .byte $03,$B2
            sta L16A6,X
            .byte $9E
LA6B3       lda #$00
            ldy #$3F
LA6B7       sta L0700,Y
            dey
            bpl LA6B7
            ldy #$05
LA6BF       lda LA698,Y
            sta L0702,Y
            dey
            bpl LA6BF
            jmp L96A7
LA6CB       rts
            jsr LADAE
            jsr LAA35
            jsr LAF9F
            lda L00B2
            beq LA6CB
            lda TRIG0
            bne LA6CB
            ldx #$01
            stx HPOSP0
            stx L2851
            stx L2853
            lda L00B2
            lsr
            lsr
            sec
            sbc #$1D
            cmp #$14
            bcc LA6F6
            sbc #$01
LA6F6       sta L2850
            lda L00B3
            lsr
            lsr
            sbc #$03
            sta L2852
            lda #$00
            sta L00B8
            ldy #$07
LA708       sta HPOSP0,Y
            dey
            bpl LA708
            lda #$7A
            sta L00E2
            jsr LA74F
LA715       jmp LA715
            jsr LAA35
            jsr LADAE
            lda #$AC
            sta AUDC1
            lda L00DD
            beq LA744
            asl
            adc L00DD
            and #$0F
            tay
            ldx LB3B9+1,Y
            stx AUDF1
            ldy #$A2
            and #$08
            tax
            beq LA73E
            ldx #$15
            ldy #$80
LA73E       sty L35A8
            jmp L917D
LA744       lda #$9D
            sta L00D7
            lda #$A6
            sta L00D8
            jmp L95D9
LA74F       lda #$04
            sta L060D
            sta L0613
            lda #$80
            sta L35A8
            ldx #$15
            jmp L917D
LA761       sec
            lda L00ED
            bne LA778
            lda #$08
            sta CONSOL
            lda CONSOL
LA76E       lsr
            dey
            bne LA76E
            bcs LA778
            ldy #$20
            sty L00ED
LA778       rts
LA779       ldy #$00
            sty L06CD
            iny
            sty L06CE
            jmp L06C9
            php
            .byte $07,$07
            asl
            .byte $3F,$07,$00
            rti
            cpy #$3F
            ora (L0085,X)
            sty L0083
            .byte $8F
            stx L8C8D
            .byte $3F,$07,$00
            rti
            .byte $3F
            ora (L0091,X)
            cmp L0090
            cpy L008F
            .byte $C3,$9B,$CF
            txs
            dec LCD99
            tya
            cpy L073F
            .byte $00,$3F,$02,$54,$3F
            ora (L0091,X)
            cmp L0090
            cpy FEOF
            .byte $02,$57,$3F
            ora (L008F,X)
            .byte $C3
            sty L00CF,X
            eor LCE96,X
            .byte $5C
            sty L00CD,X
            .byte $5B,$92
            cpy ERRFLG
            .byte $1A,$54
            cmp (FEOF),Y
            ora (L008B,X)
            txa
            .byte $3F,$02,$1A,$54
            cmp (FEOF),Y
            ora (L0088,X)
            .byte $8B,$3F,$03
            ora L3F5A,X
            ora (L00D4,X)
            txa
            cmp L0089,X
            dec L0088,X
            asl L965A+1,X
            .byte $3F,$02
            dec FEOF
            ora (ABUFPT+2,X)
            .byte $5B
            stx L00C0,Y
            .byte $3F
            ora ABUFPT+2
            .byte $5B
            stx FEOF,Y
            ora (L00C3,X)
            cmp L00C6
            iny
            and (OLDADR,X)
            sta ERRFLG,Y
            cmp #$3F
            ora (ICDNOZ,X)
            lsr LC099,X
            .byte $3F
            ora ICDNOZ
            lsr L3F99,X
            ora (L00C6,X)
            iny
            cmp #$CB
            and OLDCHR
            sta FEOF,X
            .byte $02
            cmp L013F
            and OLDCHR
            sta L00C0,X
            .byte $3F
            ora ICBAHZ
            eor L3F95,X
            ora (L00C5,X)
            .byte $C7
            cmp #$CB
            .byte $3F,$07
            rti
            .byte $3F
            ora (ICBALZ,X)
            tya
            cpy L9723
            .byte $CB,$22
            stx L00CA,Y
            and (L0095,X)
            cmp #$20
            sty L00C8,X
            .byte $1F,$93,$C7
            asl LC692,X
            .byte $3F,$07
            ora LD458,X
            .byte $3F
            ora (L0085,X)
            sty L0083
            .byte $8F
            stx L8C8D
            .byte $3F,$07
            jsr L985C+1
            .byte $3F
            ora (L00C5,X)
            cpy L00C3
            .byte $CF
            dec LCCCD
            .byte $3F,$07,$1B,$3F,$03
            sta (FEOF),Y
            ora (ROWCRS,X)
            .byte $CB
            lsr L00CA,X
            .byte $3F
            ora DINDEX
            .byte $3F
            ora (L00C8,X)
            dey
            .byte $D4,$87,$D3
            stx L00D2
            sta L00D1
            .byte $3F,$07
            cpy FEOF
            ora (BUFADR+1,X)
            .byte $53
            sta L5316
            sta L4000
            .byte $80
            asl RMARGN,X
            sta L5316
            sta L5316
            sta L5316
            sta L073F
            cmp FEOF
            ora (RTCLOK+2,X)
            eor (L008C),Y
            .byte $14
            eor (L008C),Y
            .byte $00
            rti
            .byte $80,$14
            eor (L008C),Y
            .byte $14
            eor (L008C),Y
            .byte $14
            eor (L008C),Y
            .byte $14
            eor (L008C),Y
            .byte $3F,$07
            cmp #$3F
            ora (DSKUTL+1,X)
            cli
            .byte $92,$1B
            cli
            .byte $92,$00
            rti
            .byte $80,$1B
            cli
            .byte $92,$1B
            cli
            .byte $92,$1B
            cli
            .byte $92,$1B
            cli
            .byte $92,$3F,$07
            dex
            .byte $3F
            ora (DSKFMS+1,X)
            lsr L0091,X
            ora L9155+1,Y
            .byte $00
            rti
            .byte $80
            ora L9155+1,Y
            ora L9155+1,Y
            ora L9155+1,Y
            ora L9155+1,Y
            .byte $3F,$03,$1C
            cpy L013F
            lsr L0093,X
            cli
            sty COLCRS+1,X
            .byte $93,$3F,$02,$1C
            cpy L013F
            cli
            sty COLCRS+1,X
            .byte $93,$3F,$02,$1C
            cpy L013F
            cli
            sty COLCRS+1,X
            .byte $93
            and (L00A5),Y
            cmp L59D0,X
            lda #$02
            sta L00DD
            lda L0604
            cmp #$12
            beq LA92E
            inc L0604
            ldx #$16
            clc
            adc #$28
            sta L00D1
            lda #$34
            sta L00D2
            ldy #$00
LA924       lda #$80
            sta (L00D1),Y
            jsr L913B+1
            dex
            bne LA924
LA92E       lda #$23
            jsr LA975
            lda L2850
            beq LA93E
            dec L2850
            jsr LA966
LA93E       lda L2852
            beq LA949
            dec L2852
            inc L2853
LA949       jsr LA966
            inc L2853
            lda #$24
            jsr LA975
            lda L3412
            cmp #$28
            bne LA962
            lda L3781
            cmp #$2B
            beq LA963
LA962       rts
LA963       jmp LB3C9+1
LA966       clc
            lda L2850
            adc L2851
            cmp #$27
            beq LA974
            inc L2851
LA974       rts
LA975       sta L00B5
            lda #$00
            sta L00D2
            lda L2852
            asl
            asl
            asl
            sta L00D1
            asl
            rol L00D2
            asl
            rol L00D2
            adc L00D1
            bcc LA990
            inc L00D2
            clc
LA990       adc L2850
            bcc LA998
            inc L00D2
            clc
LA998       adc #$12
            bcc LA99E
            inc L00D2
LA99E       sta L00D1
            clc
            lda L00D2
            adc #$34
            sta L00D2
            ldy L2851
            lda L00B5
            cmp #$24
            bmi LA9B2
            lda #$29
LA9B2       sta (L00D1),Y
            lda L00B5
            dey
            bpl LA9B2
            cmp #$24
            bmi LA9C2
            iny
            lda #$28
            sta (L00D1),Y
LA9C2       ldx L2853
            dex
            beq LA9ED
LA9C8       jsr L913B+1
            ldy #$28
            lda (L00D1),Y
            cmp #$07
            beq LA9F0
            lda L00B5
            cmp #$24
            bmi LA9DF
            lda #$27
            sta L00B5
            lda #$26
LA9DF       ldy #$00
            sta (L00D1),Y
            lda L00B5
            ldy L2851
            sta (L00D1),Y
            dex
            bne LA9C8
LA9ED       jsr L913B+1
LA9F0       ldy L2851
            lda L00B5
            cmp #$24
            bmi LA9FF
            lda #$25
            sta L00B5
            lda #$2B
LA9FF       sta (L00D1),Y
            lda L00B5
            dey
            bpl LA9FF
            cmp #$24
            bmi LAA0F
            iny
            lda #$2A
            sta (L00D1),Y
LAA0F       lda #$68
            sbc L2851
            sbc L2853
            sta AUDF1
            adc #$20
            sta AUDF3
            lsr
            lsr
            lsr
            lsr
            ora #$A0
            bcc LAA2E
            ldy RANDOM
            bmi LAA2E
            adc #$00
LAA2E       sta AUDC1
            sta AUDC3
            rts
LAA35       lda L00E4
            cmp #$0F
            beq LAA4D
            lda L00B8
            cmp #$0E
            beq LAA4D
            lda #$80
            ldy #$28
LAA45       sta L2876,Y
            dey
            bpl LAA45
            bmi LAA63
LAA4D       lda RANDOM
            and #$1F
            tax
            lda L2876,X
            eor #$80
            ldy L00B8
            cpy #$0C
            bne LAA60
            lda #$80
LAA60       sta L2876,X
LAA63       lda #$29
            sta L00CF
            lda #$34
            sta L00D0
            lda #$10
            ldx #$00
            jsr LAAE8
LAA72       lda RANDOM
            and #$07
            cmp #$06
            bcs LAA72
            ldy RANDOM
            bpl LAA82
            adc #$08
LAA82       tax
            ldy #$00
            lda L284E
            sta L00C2
LAA8A       lda L284E
            sta L00C3
LAA8F       lda L2876,X
            sta L2896,Y
            inx
            iny
            dec L00C3
            bne LAA8F
            txa
            clc
            adc #$05
            tax
            dec L00C2
            bne LAA8A
            lda L284B
            cmp #$04
            beq LAABC
            lda RANDOM
            and L284E
            beq LAABC
            sta L00C0
LAAB5       jsr LAABF
            dec L00C0
            bne LAAB5
LAABC       jmp LAADC
LAABF       ldy #$08
LAAC1       lda L2896,Y
            sta L289F,Y
            dey
            bpl LAAC1
            ldy #$08
LAACC       ldx LAB06,Y
            lda L289F,X
            sta L2896,Y
            dey
            bpl LAACC
            rts
LAAD9       jsr LAABF
LAADC       lda #$86
            sta L00CF
            lda #$36
            sta L00D0
            lda #$06
            ldx #$20
LAAE8       sta L00C3
            lda #$04
            sta L00C2
LAAEE       ldy #$00
LAAF0       jsr LAB0F
            jsr LAB0F
            inx
            cpy L00C3
            bcc LAAF0
            jsr LAB27
LAAFE       jsr LAB27
            dec L00C2
            bne LAAEE
            rts
LAB06       asl CASINI+1
            .byte $00,$07,$04
            ora (WARMST,X)
            ora CASINI
LAB0F       sty L00B4
LAB11       lda (L00CF),Y
            and #$7F
            eor L2876,X
            sta (L00CF),Y
            tya
            clc
            adc #$28
            tay
            cmp #$3C
            bcc LAB11
            ldy L00B4
            iny
            rts
LAB27       lda L00CF
            clc
            adc #$28
            sta L00CF
            bcc LAB32
            inc L00D0
LAB32       ldy #$00
            rts
            lda L286C
            bne LAB4F
            inc L286C
            jsr LAB50
            jsr LAB75
            jsr LB7CE
            jsr LAC54
            jsr LBA40+1
            dec L286C
LAB4F       rts
LAB50       lda L00FA
            bne LAB71
            ldy #$03
LAB56       lda M0PL,Y
            bne LAB60
            dey
            bpl LAB56
            bmi LAB71
LAB60       lda L00F1
            cmp #$40
            bcc LAB6D
            lda L2860
            cmp #$4C
            bcc LAB71
LAB6D       lda #$01
            sta L00FA
LAB71       sta HITCLR
            rts
LAB75       lda #$00
            sta L00FC
            ldx #$04
            lda PORTA
            ldy L28B2
            beq LAB88
            dec L28B2
            and #$FE
LAB88       lsr
            bcs LABA1
            ldy L00C0
            cpy #$07
            bne LAB9E
            ldy L00C2
            cpy #$0D
            beq LABA1
            inc L00C2
            inx
            inx
            inx
            ldy #$FF
LAB9E       iny
            sty L00C0
LABA1       lsr
            bcs LABB6
            ldy L00C0
            bne LABB3
            ldy L00C2
            beq LABB6
            dec L00C2
            dex
            dex
            dex
            ldy #$08
LABB3       dey
            sty L00C0
LABB6       lsr
            bcs LABD1
            lda L2859
            clc
            adc #$0A
            sta L2859
            bcc LABE9
            lda L285A
            cmp #$04
            beq LABE9
            inc L285A
            jmp LABE9
LABD1       lsr
            bcs LABE9
            lda L2859
            sec
            sbc #$0A
            sta L2859
            bcs LABE9
            lda L285A
            cmp #$FC
            beq LABE9
            dec L285A
LABE9       lda L285A
            bmi LAC00
            lda L00C1
            clc
            adc L285A
            cmp #$04
            bcc LAC10
            sbc #$04
            dec L00C3
            dex
            jmp LAC0E
LAC00       lda L00C1
            clc
            adc L285A
            bpl LAC10
            clc
            adc #$04
            inc L00C3
            inx
LAC0E       dec L00FC
LAC10       sta L00C1
LAC12       txa
            asl
            tay
            ldx #$22
LAC17       lda L0600,X
            clc
            adc LAD10,Y
            sta L0600,X
            inx
            lda L0600,X
            adc LAD11,Y
            sta L0600,X
            inx
            inx
            cpx #$49
            bne LAC17
            lda L00C3
            bne LAC3D
            lda #$38
            sta L00C3
            ldx #$09
            bne LAC12
LAC3D       cmp #$39
            bne LAC49
            lda #$01
            sta L00C3
            ldx #$0A
            bne LAC12
LAC49       lda L00C1
            sta HSCROL
            lda L00C0
            sta VSCROL
            rts
LAC54       jsr LAD4F
            lda L00FC
            beq LAC6B
            lda L28B1
            bmi LAC68
            ldy L00C3
            jsr LB5EB
            jmp LAC6B
LAC68       jsr LAD82
LAC6B       lda L00DD
            bne LAC73
            ldy #$06
            sty L00DD
LAC73       asl
            tax
LAC75       lda LAD26,X
            sta L00B4
            ldy #$58
LAC7C       lda L09FE,Y
            sta L09FF,Y
            dey
            cpy L00B4
            bne LAC7C
            inx
            txa
            lsr
            bcs LAC75
LAC8C       lda RANDOM
            ldx L28B1
            bmi LACA0
            cmp #$10
            bcs LACA3
            and #$03
            beq LAC8C
            tax
            lda LAD31,X
LACA0       sta L09FF
LACA3       lda L28B1
            bne LACD1
            lda #$00
            sta L00F7
            sta L00F8
            sta L00F9
            ldy #$57
LACB2       lda L0A00,Y
            and #$03
            tax
            lda #$FF
            sta L00F6,X
            dey
            bpl LACB2
            ldy #$03
LACC1       lda L00F6,Y
            beq LACCB
            dey
            bne LACC1
            beq LACD1
LACCB       jsr LAD35
            sta L00E1,Y
LACD1       ldy L28B1
            dey
            bmi LAD0F
            dec L00DF
            bne LAD0F
            tya
            asl
            asl
            adc #$08
            sta L00DF
            lda L06AF
            cmp #$BF
            beq LACF0
            sta L00B8
            lda #$00
            sta L06AF
LACF0       ldy #$6F
            lda L28B1
            eor #$0F
            clc
            adc #$3C
LACFA       sta (L00E0),Y
            dey
            bpl LACFA
            nop
            nop
            dec L28B1
            lda L00E0
            clc
            adc #$70
            sta L00E0
            bcc LAD0F
            inc L00E1
LAD0F       rts
LAD10       .byte $8F
LAD11       .byte $FF
LAD12       bcc LAD12+1
            sta (L00FF),Y
            .byte $FF,$FF,$00,$00
            ora (L0000,X)
            .byte $6F,$00
            bvs LAD20
LAD20       adc (L0000),Y
            sec
            .byte $00
            iny
            .byte $FF
LAD26       .byte $00
            rti
            plp
            bpl LAD7B
            sec
            jsr L4808
            bmi LAD49
LAD31       .byte $57
            eor L00AA,X
            .byte $FF
LAD35       lda RANDOM
            ldx L28B1
            bpl LAD42
            and #$1F
            clc
            adc #$38
LAD42       ora #$04
            asl
            ldx #$04
LAD47       cmp L00E2,X
LAD49       beq LAD35
            dex
            bpl LAD47
            rts
LAD4F       lda L28B1
            bpl LAD81
            ldx L286B
            lda L2808,X
            lsr
            lsr
            sta L00B4
            lda L2818,X
            lsr
            lsr
            sec
            sbc L00B4
            cmp #$F1
            bpl LAD81
            clc
            adc L00B4
            clc
            adc L00B4
            cmp #$3D
            bpl LAD81
            lda #$0B
            sta L28B1
            lda #$F0
LAD7B       sta L00E0
            lda #$3A
            sta L00E1
LAD81       rts
LAD82       lda #$EF
            sta L00CF
            lda #$3A
            sta L00D0
            ldx #$0A
LAD8C       ldy L00C3
            lda RANDOM
            and #$07
            clc
            adc #$40
            sta (L00CF),Y
            pha
            tya
            adc #$38
            tay
            pla
            sta (L00CF),Y
            lda L00CF
            adc #$70
            sta L00CF
            bcc LADAA
            inc L00D0
LADAA       dex
            bpl LAD8C
            rts
LADAE       lda PORTA
            ldy L00B3
            lsr
            bcs LADBC
            cpy #$10
            beq LADBC
            dec L00B3
LADBC       lsr
            bcs LADC5
            cpy #$61
            beq LADC5
            inc L00B3
LADC5       ldy L00B2
            beq LADDB
            lsr
            bcs LADD2
            cpy #$78
            beq LADD2
            dec L00B2
LADD2       lsr
            bcs LADDB
            cpy #$C8
            beq LADDB
            inc L00B2
LADDB       lda L00B2
            sta HPOSP0
            ldx L00B3
            ldy #$08
LADE4       lda LADEF,Y
            sta L29FF,X
            inx
            dey
            bpl LADE4
            rts
LADEF       .byte $00,$C3
            sta (LOMEM+1,X)
            sta (LOMEM+1,X)
            sta (L00C3,X)
            .byte $00
LADF8       ldy L286B
            lda L2808,Y
            sec
            sbc #$04
            cmp #$78
            bcs LAE07
            lda #$78
LAE07       cmp #$C9
            bcc LAE0D
            lda #$C8
LAE0D       sta L00B2
            lda L2818,Y
            sec
            sbc #$03
            cmp #$10
            bcs LAE1B
            lda L00BF
LAE1B       cmp #$62
            bcc LAE21
            lda #$61
LAE21       sta L00B3
            rts
LAE24       lda L00BF
            sta L00B8
            jsr LB07E
            ldx #$00
LAE2D       lda L074B,X
            cmp L070C,X
            bcc LAE3F
            bne LAE3C
            inx
            cpx #$04
            bne LAE2D
LAE3C       jmp LAF51
LAE3F       jsr LAF52
            ldx #$09
LAE44       lda LAF62,X
            sta L0740,X
            dex
            bpl LAE44
            lda L286D
            bne LAE3C
            dec L286D
            jsr LB0A3
            lda #$06
            ldy #$09
LAE5C       sta L00E2,Y
            dey
            bpl LAE5C
            lda #$03
            jsr LAF6B+1
            lda #$A9
            sta AUDC1
            sta AUDC2
            ldy #$FA
            lda #$00
            sta L28B5
            sta L00C3
            lda #$1F
            sta L00C2
LAE7C       iny
            bmi LAE9B
            lda LAF5E,Y
            beq LAE7C
            sta L302B,Y
            lda #$4F
            sta AUDC3
            sta AUDC4
            lda LB3B9+1,Y
            sta AUDF3
            lda LB3B1+1,Y
            sta AUDF4
LAE9B       lda #$13
            jsr LAF74
LAEA0       lda VCOUNT
            bmi LAECD
            and #$1F
            cmp L00C2
            bne LAEAF
            ldx #$00
LAEAD       beq LAEB5
LAEAF       cmp L00C3
            bne LAEA0
            ldx #$05
LAEB5       sta WSYNC
            lda L00E6,X
            sta COLBK
            sta COLPF2
            lda L00E2,X
LAEC2       sta COLPF0
            lda L00E3,X
            sta COLPF1
            jmp LAEA0
LAECD       lda L00C3
            beq LAED5
            cmp #$0F
            bne LAEFC
LAED5       sta L00C0
            ldx #$04
            stx L00B5
            tax
            beq LAEE0
            ldx #$05
LAEE0       lda RANDOM
            sta L00E2,X
            inx
            dec L00B5
            bpl LAEE0
            cpy #$0E
            bne LAEF8
            lda L00DD
            cmp #$30
            bcs LAEF8
            lda #$06
            sta L00E1,X
LAEF8       lda L00E1,X
            sta L00DF,X
LAEFC       lda L00C0
            beq LAF07
            dec L00C3
            inc L00C2
            jmp LAF0B
LAF07       inc L00C3
            dec L00C2
LAF0B       jsr LAF52
LAF0E       lda VCOUNT
            bmi LAF0E
            lda L00C3
            ora #$30
            sta AUDF1
            lda L00C2
            ora #$30
            sta AUDF2
            lda L00DD
            tax
            ora #$A0
            sta AUDC3
            txa
            asl
            cmp #$08
            bcc LAF31
            lda #$08
LAF31       ora #$A0
            sta AUDC4
            txa
            beq LAF3F
LAF39       jmp LAEA0
LAF3C       jmp LAE7C
LAF3F       cpy #$0D
            bmi LAF3C
LAF43       bne LAF51
            lda #$00
            sta AUDC3
            lda #$60
            sta L00DD
            iny
            bne LAF39
LAF51       rts
LAF52       ldx #$03
LAF54       lda L070C,X
            sta L074B,X
            dex
            bpl LAF54
            rts
LAF5E       ror L7765
            .byte $00
LAF62       pla
            adc #$67
            pla
            .byte $00,$73,$63,$6F,$72
LAF6B       adc ICHIDZ
            .byte $74,$AF
LAF6F       lda L00DD
            bne LAF6F
            rts
LAF74       bit L28B7
            bmi LAF9C
            sta L00DE
            lda #$00
            sta L00DD
            lda L00DE
            asl
            rol L00DD
            adc L00DE
            bcc LAF8A
            inc L00DD
LAF8A       asl
            rol L00DD
            adc L00DE
            bcc LAF93
            inc L00DD
LAF93       lsr L00DD
            ror
            lsr L00DD
            ror
            lsr L00DD
            ror
LAF9C       sta L00DD
            rts
LAF9F       lda #$C2
            sta AUDC1
            lda RANDOM
            and #$2F
            sta AUDF1
            rts
LAFAD       lda L00B9
            bpl LAFC8
            inc L00B9
            bne LAFBA
            sta AUDC2
            beq LAFEC
LAFBA       and #$20
            eor #$10
            sta AUDF2
            lda #$CF
            sta AUDC2
            bne LAFEC
LAFC8       bne LAFDF
            lda L0709
            cmp #$92
            bne LAFEC
            lda L00FA
            bne LAFEC
            lda L00B8
            cmp #$0E
            beq LAFEC
            lda #$0C
            sta L00B9
LAFDF       dec L00B9
            lda L00B9
            sta AUDF2
            lsr
            ora #$A0
LAFE9       sta AUDC2
LAFEC       rts
LAFED       lda L285F
            beq LB001
            lda #$20
            sta AUDF1
            lda L2863
            clc
            adc #$09
            eor #$0F
            and #$0F
LB001       sta AUDC1
            lda L00EE
            jsr L94EC
            cmp #$06
            bcs LB054
            dec L2865
            bpl LB054
            lda L00EF
            asl
            sta L00B4
            lda L00EE
            rol
            asl L00B4
            rol
            asl L00B4
            rol
            sec
            sbc #$04
            jsr L94EC
            cmp #$05
            bcs LB02C
            lda #$05
LB02C       sta L2865
            sta L2866
            sta AUDF3
            lda #$A7
            sta AUDC3
            lda L00F1
            lsr
            lsr
            lsr
            clc
            adc L2866
            cmp #$0F
            bcc LB049
            lda #$0F
LB049       sta AUDF4
            eor #$0F
            sta AUDC4
            jmp LB059
LB054       lda #$00
            sta AUDC3
LB059       lda L2858
            beq LB07D
            dec L2858
            bne LB066
            jmp LB07E
LB066       lsr
            cmp #$0F
            bcc LB06D
            lda #$0F
LB06D       sta AUDC3
            sta AUDC4
            eor #$0F
            sta AUDF3
            adc #$15
            sta AUDF4
LB07D       rts
LB07E       lda L284E
            asl
            clc
            adc L284E
            tay
            dey
            lda #$00
LB08A       sta AUDF1,Y
            dey
            bne LB08A
            rts
            ldy #$0E
            sty L00B8
            iny
            iny
            sty L00BF
            ldx #$13
LB09B       lda LA69D+2,X
            sta L00C7,X
            dex
            bpl LB09B
LB0A3       ldy #$00
LB0A5       lda LB12E+2,Y
            sta L05FF,Y
            dey
            bne LB0A5
            sty L28B5
            lda #$2A
            sta DMACLT
            lda #$E0
            sta L00EC
            ldy #$F8
            sty L28B8
            lda #$0F
            sta L00E2
            lda #$00
            sta L00E6
            sta L06CD
            sta L00E4
            sta L00E3
            sta L00DD
            sta L00E5
            sta L28B7
            lda #$30
            sta L06CE
            jsr L06C9
            ldy #$07
LB0DF       sta HPOSP0,Y
            dey
            bpl LB0DF
            lda #$85
            sta L00DB
            ldy #$A7
            sty L00DC
            lda #$03
            sta L27A7,Y
            sta SKCTL
            ldx #$00
            stx AUDCTL
            ldy #$00
LB0FC       lda (L00DB),Y
            ora #$A0
            sta AUDC1,X
            sta L28A9,X
            lda #$01
            sta L28AA,X
            inx
            inx
            iny
            cpy #$04
            bne LB0FC
            tya
            clc
            adc L00DB
            sta L00DB
            lda #$00
            adc L00DC
            sta L00DC
            ldx #$0F
            lda PAL
            and #$08
            beq LB12C
            dec L28B7
            ldx #$12
LB12C       stx L00DF
LB12E       jmp LB07E
            bvs LB1A3
            bvs LB1A5
            bvs LB1A7
            lsr L0000
            bmi LB1AB
            asl ROWAC
LB13D       bvs LB145+1
            bvs LB1B1
            bvs LB145
            bvs LB1B4+1
LB145       bvs LB14C+1
            bvs LB1B7+2
            lsr FREQ
            .byte $07
LB14C       bvs LB13D+1
            lsr CASINI
            .byte $07
            eor (L0000,X)
LB153       asl L0000
            .byte $00,$34
            plp
            .byte $2F,$32
            rol L2500
            and.w ICBLHZ
            rol ICBLHZ,X
            bit ICBAHZ
            .byte $2F,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bmi LB1A2
            and BUFRHI
            and ICAX5Z
            .byte $34,$33,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$E3,$EF
            sbc LF5F0
            .byte $F4
            sbc L00F2
            .byte $00,$F7
            sbc (L00F2,X)
            .byte $00,$00,$00,$00,$23,$6F
            bvs LB20C+1
            .byte $72
            adc #$67
            pla
            .byte $74,$00
            php
            .byte $23
            ora #$00
            ora (DSKFMS+1),Y
            clc
            .byte $13
LB1A2       .byte $00
LB1A3       .byte $00,$34
LB1A5       plp
            .byte $2F
LB1A7       .byte $32
            rol L2500
LB1AB       and.w ICBLHZ
            rol SAVADR+1,X
            .byte $64
LB1B1       adc SHFAMT
            .byte $00
LB1B4       bit L6474
LB1B7       asl L3230
            and BUFRHI
            .byte $33,$00,$33,$34
            and (BUFRLO,X)
            .byte $34,$00,$34,$2F,$00
            bmi LB1F5
            and (RECVDN,X)
            .byte $FF
            ldy #$04
LB1CE       sta L00E2,Y
            sta COLPF0,Y
            dey
            bpl LB1CE
            ldy #$00
            sty L00D1
            ldy #$30
            sty L00D2
            ldx L00BF
            lda #$07
            ldy #$00
LB1E5       sta (L00D1),Y
            iny
            bne LB1E5
            inc L00D2
            dex
            bne LB1E5
            rts
            lda #$29
            sta L06CE
LB1F5       lda #$80
            sta L06CD
            lda #$00
            tay
LB1FD       sta L0600,Y
            iny
            bne LB1FD
            rts
            ldx #$06
LB206       dec L28AA,X
LB209       lda L28A9,X
LB20C       sta AUDC1,X
            dex
            dex
            bpl LB206
LB213       ldx #$00
LB215       lda L28AA,X
            beq LB225
            cmp #$01
            bne LB22B
            lda #$00
            sta AUDF1,X
            beq LB22B
LB225       jsr LB319
            jmp LB213
LB22B       inx
            inx
            cpx #$08
            bne LB215
            rts
LB232       lda L00DD
            beq LB254
            lsr
            eor #$7F
            cmp VCOUNT
            bne LB254
            lda VCOUNT
            beq LB254
            cmp #$78
            bcs LB254
            ldx #$04
            sta WSYNC
LB24C       lda L00E7,X
            sta COLPF0,X
            dex
            bpl LB24C
LB254       lda L00C2
            beq LB232
            lda RANDOM
            and #$07
            tay
            lda LBD00,Y
            sta L00E5
            sta L00EA
            jmp LB232
LB268       inc L28B8
            ldy L28B8
            nop
            nop
            cpy #$1B
            bne LB291
            jsr LB30B
            lda (L00DB),Y
            cmp #$02
            beq LB285
            lda #$78
            sta L00C9
            lda #$A7
            sta L00CA
LB285       lda #$00
            sta L00E2
            lda #$98
            sta L00E3
            sta L00E4
            sta L00E6
LB291       cpy #$28
            beq LB299
            cpy #$39
            bne LB2DF
LB299       lda L00C2
            bne LB2FF
            lda L00E5
            adc #$44
            sta L00E5
            bcc LB2CF
            sta L00C2
            jsr LB30B
            lda #$B4
            sta L00E2
            lda #$60
            sta L00E3
            lda #$ED
            sta L00E4
            sta L00E6
            ldy #$3C
LB2BA       lda LB153+1,Y
            bmi LB2CB
            cpy #$64
            bcc LB2C5
            ora #$40
LB2C5       sta L3000,Y
            iny
            bne LB2BA
LB2CB       ldy #$28
            bne LB2D1
LB2CF       ldy #$34
LB2D1       sty L28B8
            lda #$00
            sta L3035
            sta L3036
            sta L3037
LB2DF       cpy #$41
            bne LB2E8
            ldy #$64
            sty L28B8
LB2E8       cpy #$77
            bcc LB2FF
            cpy #$7D
            bne LB30A
            jsr LB30B
            lda #$06
            sta L00E2
            sta L00E3
            sta L00E4
            sta L00E6
            bne LB30A
LB2FF       lda LB153+1,Y
            sta L3000,Y
            bne LB30A
            jmp LB268
LB30A       rts
LB30B       ldx #$04
LB30D       lda L00E2,X
            sta L00E7,X
            dex
            bpl LB30D
            lda #$F8
            sta L00DD
            rts
LB319       ldy #$00
            lda (L00DB),Y
            cmp #$31
            bne LB333
            jsr LB0A3
            lda L00C2
            beq LB330
            lda #$00
            sta L3428
            jsr L904D
LB330       jmp LB232
LB333       cmp #$3F
            bne LB34E
LB337       jsr LB39D
            lda (L00DB),Y
            tay
            lda #$00
            clc
LB340       adc L00DF
            dey
            bne LB340
            sta L28A8
            jsr LB39D
            jmp LB319
LB34E       pha
            lsr
            lsr
            lsr
            lsr
            lsr
            lsr
            asl
            tay
            pla
            and #$3F
            tax
            lda LB3A4,X
            sta AUDF1,Y
            lda L28A9,Y
            adc #$03
            sta AUDC1,Y
            lda L28A8
            sta L28AA,Y
            cpy #$04
            bne LB39D
            lda L0604
            beq LB37E
            jsr LB268
            jmp LB39D
LB37E       jsr LAA35
            inc L28B8
            ldy L28B8
            cpy #$44
            bne LB39D
            jsr LA74F
            jsr LB30B
            lda #$00
            sta L00E2
            sta L00E3
            sta L00E4
            sta L00E5
            sta L00E6
LB39D       inc L00DB
            bne LB3A3
            inc L00DC
LB3A3       rts
LB3A4       .byte $00,$F3
            inc L00D9
            cpy LB6C1
            lda L99A1+1
            bcc LB337+1
            .byte $80
LB3B1       adc L6C72,Y
            ror FKDEF
            .byte $5B
            eor HOLD1,X
LB3B9       jmp L4448
            rti
            .byte $3C
            and L3235,Y
            .byte $2F
            and L282A
            and ICSTAZ
            and (ABUFPT+3,X)
LB3C9       ora L10A9,X
            sta L00B8
            sta L28B5
            jsr LB07E
            lda #$00
            sta L00FA
            ldx #$07
LB3DA       lda L2808,X
            cmp L00B2
            bcc LB3FA
            sbc #$08
            cmp L00B2
            bcs LB3FA
            lda L2818,X
            cmp L00B3
            bcc LB3FA
            sbc #$07
            cmp L00B3
            bcs LB3FA
            stx L286B
            jmp LB45C
LB3FA       dex
            bpl LB3DA
            lda L3428
            cmp #$07
            beq LB456
            lda #$7A
            jsr L069B
            jsr LB0A3
            lda #$7A
            sta L00E4
            sta L00E6
            lda #$AC
            sta AUDC1
            ldy #$1E
LB419       lda LB4F3,Y
            eor #$60
            sta L3000,Y
            dey
            bpl LB419
            ldy #$0C
            sty L286C
LB429       lda #$13
            jsr LAF74
LB42E       jsr L931F
            lda #$00
            sta AUDF1
            lda L00DD
            and #$03
            bne LB42E
            lda #$17
            sta AUDF1
            lda L00DD
            bne LB42E
            lda RANDOM
            sta L00E4
            sta L00E6
            lda RANDOM
            sta L00E2
            dec L286C
            bne LB429
LB456       jsr LAE24
            jmp L92CD+1
LB45C       lda L3428
            cmp #$07
            beq LB466
            jsr LB512
LB466       ldy #$01
            sty SIZEP0
            sty SIZEP1
            sty SIZEP2
            sty SIZEP3
            lda RANDOM
            bpl LB47B
            ldy #$FF
LB47B       sty L00EE
            lda #$80
            sta L00EF
            lda RANDOM
            and #$3F
            adc #$10
            sta L00F1
            lda #$00
            sta L00F0
            sta L286C
            sta L00F3
            sta L00F2
            lda #$F8
            sta L00F4
            lda #$08
            sta L00F5
            lda #$30
            sta L28B2
            lda #$00
            sta COLPM2
            sta COLPM3
            sta HITCLR
            sta L285F
            sta L2864
            sta SIZEM
            sta L2865
            sta L2858
            ldy #$7F
LB4BE       sta L2A00,Y
            dey
            bpl LB4BE
            ldy #$06
            lda L2874
            cmp #$3C
            beq LB4E6
            jsr L94EC
            clc
            adc #$02
            bit RANDOM
            bpl LB4DB
            jsr L94F0
LB4DB       sta L00EE
            ldy L2873
            sty L2870
            ldy L2872
LB4E6       sty L286F
            lda #$04
            sta L00B8
            sta L2875
            jmp L92D5
LB4F3       lsr L204F
            eor DRKMSK
            eor ATRACT
            eor L4D20,Y
            eor #$53
            .byte $53
            eor #$4C
            eor RMARGN
            jsr L4E49
            .byte $54
            pha
            eor #$53
            jsr L4553
            .byte $43,$54,$4F,$52
LB512       lda L00E2
            jsr L069B
            lda #$08
            sta L00EC
            lda #$00
            sta L00C0
            sta L00C1
            sta L00C2
            sta L00C3
            sta L2859
            sta L285A
            lda #$FF
            sta L28B1
            jsr LAD4F
            pla
            pla
            sta L285E
            pha
            lda #$65
            pha
            ldy #$60
LB53E       lda LB67D,Y
            sta L05FF,Y
            dey
            bne LB53E
            lda #$3F
            sta DMACLT
            lda #$00
            tay
LB54F       sta L2B00,Y
            sta L2C00,Y
            sta L2D00,Y
            sta L2E00,Y
            sta L2F00,Y
            iny
            bne LB54F
LB561       lda LB6CD+1,Y
            sta L0800,Y
            dey
            bne LB561
            jsr LAD35
            sta L00E2
            jsr LAD35
            sta L00E3
            jsr LAD35
            sta L00E4
            lda #$08
            sta L00E5
            ldy #$3F
            lda #$55
LB581       ldx L28B1
            bpl LB589
            lda RANDOM
LB589       sta L09FF,Y
            dey
            bpl LB581
            lda L28B1
            bmi LB5DF
            lda #$00
            sta L28B1
            ldy #$01
            sty L00B6
            lda #$FF
            sta L285A
            lda #$96
            sta L3AB7
LB5A7       jsr LB5EB
            inc L00B6
            ldy L00B6
            cpy #$39
            bne LB5A7
            lda #$00
            sta L285A
            lda #$F0
            sta L00CF
            lda #$3A
            sta L00D0
            lda #$40
LB5C1       ldy #$00
LB5C3       sta (L00CF),Y
            iny
            cpy #$70
            bne LB5C3
            pha
            lda L00CF
            clc
            adc #$70
            sta L00CF
            bcc LB5D6
            inc L00D0
LB5D6       pla
            clc
            adc #$01
            cmp #$4B
            bne LB5C1
            rts
LB5DF       lda #$38
            sta L00C3
LB5E3       jsr LAD82
            dec L00C3
            bne LB5E3
            rts
LB5EB       lda L285A
            bpl LB61F
            dey
            jsr LB657
            lda L3A47,Y
            and #$1F
            cmp #$07
            bne LB603
            lda L3AB7,Y
LB600       jsr LB668
LB603       lda L3A47,Y
            and #$7F
            tax
            lda LA5B0,X
            sta L00B5
            lda RANDOM
LB611       and #$1F
            tax
            lda LA590,X
            cmp L00B5
            beq LB64D
            inx
            txa
            bne LB611
LB61F       jsr LB657
            lda L3A11,Y
            and #$1F
            cmp #$07
            bne LB631
            lda L3A81,Y
            jsr LB668
LB631       lda L3A11,Y
            and #$7F
            tax
            lda LA590,X
            sta L00B5
            lda RANDOM
LB63F       and #$1F
            tax
            lda LA5B0,X
            cmp L00B5
            beq LB64D
            inx
            txa
            bne LB63F
LB64D       txa
            ora #$80
            sta L3A10,Y
            sta L3A48,Y
            rts
LB657       lda #$87
            sta L3A10,Y
            sta L3A48,Y
            lda #$96
            sta L3A80,Y
            sta L3AB8,Y
            rts
LB668       cmp #$96
            bne LB678
            lda L28B1
            bne LB678
            lda RANDOM
            cmp #$E0
            bcc LB67D
LB678       tya
            clc
            adc #$70
            tay
LB67D       rts
            bvs LB6F0
            bvs LB6F6
            .byte $00
            bmi LB6F8+1
            bvs LB6B7
            .byte $74
            cpx #$30
            .byte $74
            bvc LB6BE
            .byte $74
            cpy #$31
            .byte $74
            bmi LB6C4+1
            .byte $74
            ldy #$32
            .byte $74
            bpl LB6CB+1
            .byte $74,$80,$33,$74
            beq LB6D2
            .byte $74
            rts
            .byte $34,$74
            bne LB6D9
            .byte $74
            rti
            and ENDPT,X
            bcs LB6E0
            .byte $74
            jsr L7436
            bcc LB6E7
            .byte $74,$00,$37,$74
            bvs LB6EE
LB6B7       .byte $74
            cpx #$37
            .byte $74
            bvc LB6F5
            .byte $74
LB6BE       cpy #$38
            .byte $74
LB6C1       bmi LB6FC
            .byte $54
LB6C4       ldy #$39
            .byte $80
            bvc LB70F
            .byte $00,$07
LB6CB       eor (L0000,X)
LB6CD       asl L0000
            .byte $00,$00,$00
LB6D2       .byte $00,$00
            bmi LB6D2
            .byte $00,$00,$00
LB6D9       .byte $03,$0F,$3F,$FF,$FF,$00,$00
LB6E0       .byte $03,$0F,$3F,$FF,$FF,$FF,$00
LB6E7       .byte $00,$00,$00
            cpy #$F0
            .byte $FC,$FF
LB6EE       .byte $03,$0F
LB6F0       .byte $3F,$FF,$FF,$FF,$FF
LB6F5       .byte $FF
LB6F6       .byte $00,$00
LB6F8       cpy #$F0
            .byte $FC,$FF
LB6FC       .byte $FF,$FF,$00
            cpy #$F0
            .byte $FC,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00
LB70F       .byte $00,$00,$00,$00,$03,$0F,$FF,$00,$00,$00
LB719       .byte $00,$00
            bmi LB719
            .byte $FF,$00,$00,$00,$03,$3F,$FF,$FF,$FF,$00,$03,$0F,$3F,$FF,$FF,$FF
            .byte $FF,$00,$00,$00
            cpy #$F0
            .byte $FC,$FF,$FF,$00,$00
            cpy #$FC
            .byte $FF,$FF,$FF,$FF,$00
            cpy #$F3
            .byte $FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$0F,$0F,$00,$00,$00
            .byte $00,$00,$0C,$3F,$FF,$00,$00,$00,$00,$00,$0F,$3F,$FF,$00,$00,$00
            .byte $00,$00
            cpy #$F0
            .byte $FC,$00,$00,$00,$00
            cpy #$FC
            .byte $FF,$FF,$00,$00,$3C,$FF,$FF,$FF,$FF,$FF,$00,$00,$C3,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$03
            .byte $0F,$3F,$00,$00,$00,$00,$03,$0F,$3F,$FF,$00,$00,$00,$00,$00,$00
            cpy #$FC
            .byte $00,$00,$00,$00,$00
            cpy #$FC
            .byte $FF,$00,$00,$03,$3F,$FF,$FF,$FF,$FF,$00,$00,$00
            cpy #$FC
            .byte $FF,$FF,$FF,$00,$03,$CF,$FF,$FF,$FF,$FF,$FF
            cpy #$F0
            .byte $FC,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$0F,$3F
LB7CE       jsr LB983
            jsr LB7DC
            lda L00FA
            bmi LB7DB
            jsr LAFED
LB7DB       rts
LB7DC       ldx L2854
            lda #$00
LB7E1       sta L2C00,X
            sta L2D00,X
            sta L2E00,X
            sta L2F00,X
            inx
            cpx L2855
            bcc LB7E1
            lda #$00
            sta L00CF
            ldy #$0B
            lda L00C5
            beq LB7FF
            iny
            iny
LB7FF       sty L00D0
            lda #$00
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta L00C6
            lda L00FA
            bne LB81D
            sta COLPM0
            sta COLPM1
            beq LB83E
LB81D       lda L2867
            cmp #$28
            bcc LB83E
            lsr
            lsr
            bcc LB83E
            ldy #$0F
            lsr
            bcc LB82F
            ldy #$34
LB82F       sty COLPF0
            sty COLPF1
            sty COLPF2
            sty COLPF3
            sty COLBK
LB83E       ldy L00EE
            beq LB85C
            iny
LB843       bne LB887
            lda L00EF
            adc #$30
            cmp #$30
            bcs LB887
            sta HPOSP3
            sbc #$0F
            cmp #$20
            bcs LB8C7
            sta HPOSP2
            jmp LB8C7
LB85C       lda L00EF
            cmp #$F1
            bcs LB887
            sta HPOSP0
            adc L00BF
            cmp #$F1
            bcs LB8C7
            sta HPOSP1
            adc L284E
            cmp #$F1
            bcs LB8C7
            sta HPOSP2
            adc L284E
            cmp #$F1
            bcs LB8C7
            sta HPOSP3
            bne LB8C7
LB884       jmp LB941
LB887       dec L00C6
            lda L00FA
            bne LB884
            lda L285F
            bne LB884
            lda #$C8
            ldy L00EE
            bpl LB89A
            lda #$28
LB89A       sta HPOSP0
            sta HPOSP1
            lda #$42
            sta L00CF
            lda #$B9
            sta L00D0
            ldy L00DD
            dey
            bne LB8B5
            lda L285B
            eor #$FF
            sta L285B
LB8B5       lda #$34
            ldy #$CA
            bit L285B
            bpl LB8C1
            tya
            ldy #$34
LB8C1       sta COLPM0
            sty COLPM1
LB8C7       lda L2856
            beq LB8E6
            lda L00C6
            bne LB8E6
            lda L00EF
            ldy L00EE
            bne LB8DA
            cmp #$A0
            bcc LB8E1
LB8DA       iny
            bne LB8E6
            cmp #$C8
            bcc LB8E6
LB8E1       lda #$0A
            sta L2858
LB8E6       lda L2858
            cmp #$28
            bcc LB901
            lda #$00
            sta COLPF0
            sta COLPF1
            sta COLPF2
            sta COLPF3
            sta COLBK
            jmp LB941
LB901       lda L00C2
            asl
            asl
            asl
            adc L00C0
            sbc #$70
            sta L00B4
            lda L00F0
            sbc L00B4
            tax
            stx L2854
            ldy #$00
LB916       cpx #$D2
            bcs LB93D
            lda (L00CF),Y
            cmp #$AA
            beq LB93D
            sta L2C00,X
            iny
            lda (L00CF),Y
            sta L2D00,X
            iny
            lda (L00CF),Y
            sta L2E00,X
            iny
            lda (L00CF),Y
            sta L2F00,X
            inx
            iny
            bne LB916
            inc L00D0
            bne LB916
LB93D       inx
            stx L2855
LB941       rts
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $C3,$3C,$00,$00,$C3,$3C,$00,$00,$C3,$3C,$00,$00,$C3,$3C,$00,$00
            .byte $C3,$3C,$00,$00,$C3,$3C,$00,$00,$C3,$3C,$00,$00,$C3,$3C,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00
            tax
LB983       lda L285F
            bne LB9BB
            lda L2864
            beq LB990
            dec L2864
LB990       lda TRIG0
            beq LB998
LB995       jmp LBA2E
LB998       lda L2864
            cmp #$40
            bcs LB995
            adc #$30
            sta L2864
            lda #$D8
            sta L2862
            sta L285F
            lda #$28
            sta L2860
            lda #$D8
            sta L2861
            lda #$F0
            sta L2863
LB9BB       ldx L2862
            ldy #$07
            lda #$00
LB9C2       sta L2B00,X
            inx
            dey
            bpl LB9C2
            lda L00FA
            bne LBA29
            lda L2863
            cmp #$06
            beq LBA29
            clc
            adc #$01
            sta L2863
            clc
            lda L2860
            adc #$04
            sta L2860
            sta HPOSM0
            adc #$02
            sta HPOSM1
            lda L2861
            sbc #$03
            sta L2861
            sta HPOSM2
            adc #$01
            sta HPOSM3
            clc
            lda L2862
            adc L2863
            sta L2862
            tax
            lda L2863
            adc #$10
            lsr
            lsr
            lsr
            sta L00B4
            lsr
            clc
            adc L00B4
            tay
            lda LBA3C+1,Y
            tay
LBA19       lda LBA2F,Y
            beq LBA2E
            sta L2B00,X
            inx
            sta L2B00,X
            dey
            inx
            bne LBA19
LBA29       lda #$00
            sta L285F
LBA2E       rts
LBA2F       .byte $00
            sta LFFFF,Y
            sta L1100,Y
            .byte $BB
            ora (L0000),Y
            sta L0099,Y
LBA3C       ora (RAMLO),Y
            php
            .byte $0B
LBA40       ora LFAA5
            beq LBA53
            bmi LBA4D
            dec L286C
            jmp LBC61
LBA4D       jsr LBC08
            jmp LBA56
LBA53       jsr LBA59
LBA56       jmp LBB19
LBA59       lda L00F1
            lsr
            cmp L00F0
            bcs LBA80
            eor #$FF
            sbc #$5F
            cmp L00F0
            bcc LBA79
            lda #$07
            bit L28B7
            adc #$00
            cmp RANDOM
            bcc LBA84
            lda RANDOM
            bcc LBA80
LBA79       lda #$FD
            sta L00F3
            jmp LBA84
LBA80       lda #$03
            sta L00F3
LBA84       ldy L00F1
            cpy #$60
            bcc LBA96
            lda L00F5
            eor #$FF
            clc
            adc #$01
            tay
            ldx #$00
            beq LBAF8
LBA96       cpy #$1F
            bcs LBAA5
            ldy L00C6
            beq LBAA5
            lda L00F4
            jsr L94EC
            sta L00F4
LBAA5       lda #$0F
            bit L28B7
            bpl LBAAE
            lda #$0C
LBAAE       cmp RANDOM
            bcc LBB18
            ldx L00F2
            beq LBAC0
            ldy L00F4
            beq LBADC
            lda RANDOM
            bpl LBADC
LBAC0       ldy L00F4
            beq LBB15
            bpl LBACA
            iny
            jmp LBACB
LBACA       dey
LBACB       ldx L00F2
            bmi LBAD6
            bne LBAD9
            lda RANDOM
            bpl LBAD9
LBAD6       dex
            bne LBAF8
LBAD9       inx
            bne LBAF8
LBADC       ldx L00F2
            beq LBB15
            bpl LBAE6
            inx
            jmp LBAE7
LBAE6       dex
LBAE7       ldy L00F4
            bmi LBAF2
            bne LBAF5
            lda RANDOM
            bpl LBAF5
LBAF2       dey
            bne LBAF8
LBAF5       iny
            bne LBAF8
LBAF8       stx L00F2
            sty L00F4
            txa
            bpl LBB04
            eor #$FF
            clc
            adc #$01
LBB04       sta L00B4
            tya
            bpl LBB0E
            eor #$FF
            clc
            adc #$01
LBB0E       clc
            adc L00B4
            cmp L00F5
            beq LBB18
LBB15       jmp LA779
LBB18       rts
LBB19       lda L00F3
            jsr LBBD7
            clc
            adc L00F0
            bcc LBB29
            bit L00F3
            bpl LBB2F
            bmi LBB2D
LBB29       bit L00F3
            bmi LBB2F
LBB2D       sta L00F0
LBB2F       lda L00EF
            pha
            lda L00F2
            jsr LBBD7
            clc
            adc L00EF
            adc L285A
            sta L00EF
            pla
            cmp #$20
            bcs LBB52
            lda L00EF
            bpl LBB66
            dec L00EE
            lda L00EE
            cmp #$F7
            beq LBB62
            bne LBB66
LBB52       cmp #$E0
            bcc LBB66
            lda L00EF
            bmi LBB66
            inc L00EE
            lda L00EE
            cmp #$08
            bne LBB66
LBB62       eor #$F0
            sta L00EE
LBB66       lda L00FA
            bne LBBD6
            dec L28B4
            bpl LBBC0
            ldy #$08
            sty L28B4
            lda L00F4
            jsr LBBD7
            clc
            adc L00F1
            cmp #$C0
            bcc LBBBA
            lda L284C
            cmp #$05
            bcs LBB9B
            ldy L00F5
            dey
            dey
            tya
            bit L00F2
            bpl LBB93
            jsr L94F0
LBB93       sta L00F2
            lda #$02
            sta L00F4
            bne LBBC0
LBB9B       lda #$40
            sta L2858
            ldy #$F9
            lda L00EF
            bpl LBBA8
            ldy #$07
LBBA8       sty L00EE
            ldy #$80
            sty L00F0
            lda L00F5
            sta L00F4
            lda #$00
            sta L00F2
            lda #$40
            bne LBBBE
LBBBA       cmp #$70
            bcs LBBC0
LBBBE       sta L00F1
LBBC0       dec L2875
            bne LBBD6
            jsr LBD07+1
            ldx #$14
            lda PAL
            and #$08
            beq LBBD3
            ldx #$18
LBBD3       stx L2875
LBBD6       rts
LBBD7       tay
            jsr L94EC
            ldx #$00
            stx L00B4
            ldx #$08
LBBE1       asl L00B4
            rol
            cmp L00F1
            bcc LBBEC
            sbc L00F1
            inc L00B4
LBBEC       dex
            bne LBBE1
            lsr L00B4
            ror
            lsr L00B4
            ror
            lsr L00B4
            ror
            cmp RANDOM
            lda #$00
            adc L00B4
            cpy #$80
LBC01       bcc LBC07
            eor #$FF
            adc #$00
LBC07       rts
LBC08       lda L2854
            cmp #$FC
            bcs LBC5B
            lda RANDOM
            and #$07
LBC14       tax
            lda L0B00,X
            beq LBC52
            cmp #$AA
            beq LBC5A
            sta L00B4
            and RANDOM
            sta L0B00,X
            eor L00B4
            ldy RANDOM
            cpy #$60
            bcs LBC3E
            ldy L0B04,X
            cpy #$AA
            beq LBC5A
            pha
            ora L0B04,X
            sta L0B04,X
            pla
LBC3E       ldy RANDOM
            cpy #$60
            bcs LBC52
            ldy L0AFC,X
            cpy #$AA
            beq LBC5A
            ora L0AFC,X
            sta L0AFC,X
LBC52       txa
            clc
            adc #$07
            cmp #$64
            bcc LBC14
LBC5A       rts
LBC5B       lda #$AA
            sta L0B00
            rts
LBC61       ldy #$FF
            lda L285E
            cmp #$B4
            beq LBC6B
            iny
LBC6B       sty L00FA
            lda #$3C
            sta L2867
            sta L2874
            ldy L00C5
            beq LBC8A
            ldy #$00
LBC7B       lda L0D00,Y
            sta L0B00,Y
            lda L0E00,Y
            sta L0C00,Y
            iny
            bne LBC7B
LBC8A       sty L00C5
            iny
            sty L00F3
            iny
            sty L2869
            sty L286A
            dec L2849
            jsr LADF8
            lda #$00
            ldx L286B
            sta L2808,X
            sta L2868
            jsr L9555
LBCAA       lda RANDOM
            and #$07
            tay
            lda LBD00,Y
            ldy #$03
LBCB5       sta COLPM0,Y
            dey
            bpl LBCB5
            lda RANDOM
            and #$03
            asl
            tay
            lsr
            adc L2867
            lsr
            lsr
            sta L00B5
            lda RANDOM
            bpl LBCD1
            and #$DF
LBCD1       and #$E0
            ora L00B5
            sta AUDC1,Y
            lda RANDOM
            sta AUDF1,Y
            dec L2868
            bne LBCAA
            lda #$08
            sta L2868
            dec L2869
            bne LBCAA
            lda L286A
            adc #$01
            sta L286A
            sta L2869
            dec L2867
            bne LBCAA
            jmp LB3C9+1
LBD00       .byte $34
            plp
            .byte $42,$0F
            clc
            .byte $3C,$32
LBD07       lsr L70AD
            plp
            bne LBD27
            lda L286F
            bne LBD1F
            lda L286E
            beq LBD4F
            lda #$0A
            sta L286F
            dec L286E
LBD1F       lda #$0A
            sta L2870
            dec L286F
LBD27       dec L2870
            ldy #$02
LBD2C       lda L286E,Y
            ora #$D0
            sta L0713,Y
            dey
            bpl LBD2C
            ldy #$00
            sty L0712
LBD3C       lda L0713,Y
            cmp #$D0
            bne LBD4D
            lda #$00
            sta L0713,Y
            iny
            cpy #$03
            bcc LBD3C
LBD4D       clc
            rts
LBD4F       sec
            rts
LBD51       lda #$00
            ldy #$02
LBD55       sta L0713,Y
            sta L286E,Y
            dey
            bpl LBD55
            lda #$3C
            sta L2874
            rts
LBD64       lda #$00
            sta L2857
            sta L00BB
            lda L00F1
            lsr
            sta L00BA
            lsr
            sta L28BD
            lsr
            sta L28BA
            lda #$FF
            sta L285D
            lda L00F2
            tay
            jsr L94EC
            cmp #$02
            bcc LBD98
            sta L00BC
            jsr L950E
            lda L00BD
            cmp #$20
            bcs LBD98
            sta L285D
            sta L28BA
LBD98       lda #$00
            sta L28B8
            sta L28BB
            lda #$00
            sta L28BC
            sta L28B9
            lda L28BA
            bne LBDB0
            jmp LBEA7
LBDB0       tya
            bpl LBDD4
            lda L285D
            bmi LBDD4
            lda L28BA
            jsr L94F0
            sta L28BA
            lda #$3E
            sta L28BB
            sta L28B8
            ldy #$3F
            lda LOMEM,Y
            cmp #$10
            beq LBDD4
            inc L00F2
LBDD4       lda #$00
            sta L00B0
            ldy #$0B
            lda L00C5
            bne LBDE0
            iny
            iny
LBDE0       sty L00B1
LBDE2       lda #$04
            sta L285C
            ldx #$08
LBDE9       jmp LBDF9
            lda L28B9
            bmi LBDF5
            cmp #$E0
            bcc LBDF9
LBDF5       clc
            jmp LBE2A
LBDF9       lda L28B9
            and #$F0
            sta L00D1
            lda L28B8
            lsr
            lsr
            lsr
            clc
            adc L00D1
            lsr
            ldy L285D
            bpl LBE12
            clc
            adc #$40
LBE12       sta L00D1
            lda #$A4
            sta L00D2
            ldy #$00
            lda (L00D1),Y
            pha
            lda L28B8
            lsr
            and #$07
            tay
            iny
            pla
LBE26       asl
            dey
            bne LBE26
LBE2A       rol L00C4
            dex
            bne LBE42
            ldy #$00
            lda L00C4
            sta (L00B0),Y
            inc L00B0
            bne LBE3B
            inc L00B1
LBE3B       ldx #$08
            dec L285C
            beq LBE58
LBE42       clc
            lda L28B8
            adc L28BA
            bmi LBE4F
            cmp #$40
            bcc LBE52
LBE4F       clc
            bcc LBE2A
LBE52       sta L28B8
            jmp LBDE9
LBE58       clc
            lda L28B8
            adc L28BA
            bmi LBE6A
            cmp #$40
            bcs LBE6A
            lda #$FF
            sta L2857
LBE6A       lda L28BB
            sta L28B8
            clc
            lda L28BC
            adc L28BD
            sta L28BC
            sta L28B9
            cmp #$80
            bcs LBE84
            jmp LBDE2
LBE84       lda L00B0
            bne LBE91
            lda L00B1
            lsr
            bcc LBE91
            dec L00B0
            dec L00B1
LBE91       ldy #$00
            lda #$AA
            sta (L00B0),Y
            lda L00C5
            beq LBE9F
            lda #$01
            sta L00C5
LBE9F       dec L00C5
            lda L2857
            sta L2856
LBEA7       rts
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00
LBEBE       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
LBFBE       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LBFFB       bcc LBFFD
LBFFD       .byte $04
LBFFE       .byte $0F,$F0
	org $02E0
	.word hiscore_init
;
         
