; 
            icl 'Missile Command+.inc'
;
; Start of code
;
            org $0244
;
            .byte $01
;
            org $D301
;
            .byte $FF
				;
	icl 'hiscore.asm'
	
            org $7F00
;
L7F00       lda #$11
            sta SDLSTL
            lda #$7F
            sta SDLSTH
            lda RTCLOK+2
L7F0C       cmp RTCLOK+2
            beq L7F0C
            rts
            bvs L7F83
            bvs L7F56
            ora (COUNTR+1),Y
;
            org $02E2
;
            .word L7F00
;
            org $7FF8
;
L7FF8       ldx #$00
            txa
L7FFB       sta LOMEM,X
            inx
            bpl L7FFB
            sei
            lda #$06
            sta ABUFPT+1
            lda #$00
            sta ABUFPT
            tay
L800A       sta (ABUFPT),Y
            dey
            bne L800A
            inc ABUFPT+1
            ldx ABUFPT+1
            cpx #$3F
            bne L800A
            lda #$2E
            sta SDMCTL
            lda #$03
            sta GRACTL
            lda #$11
            sta GPRIOR
            lda #$08
            sta PMBASE
            lda #$C1
            sta VDSLST
            lda #$8D
            sta VDSLST+1
            lda #$07
            ldx #$8D
            ldy #$67
            jsr SETVBV
            lda #$C0
            sta NMIEN
L8043       lda #$EA
            sta VKEYBD
            lda #$8C
            sta VKEYBD+1
            lda #$40
            sta POKMSK
            sta IRQEN
            cli
            lda #$10
            sta L0089
            lda #$0D
            sta L008A
            lda #$75
            sta LOMEM+1
            ldx #$00
            ldy #$00
            stx L0094
L8067       stx L0095
            stx L0098
            stx L0099
            txa
            asl
            tax
            tya
            adc L0089
            sta L0089
L8075       sta L0D00,X
            lda #$00
            adc L008A
            sta L008A
            sta L0D01,X
            ldy #$00
            inx
            txa
            sta (L0089),Y
            iny
            lda L0095
            lsr
            sta L009A
            clc
            adc #$02
            sta (L0089),Y
            iny
            sta L00C3
            ldx L0094
L8097       lda L009A
            sta L009B
L809B       lda L9E2B,X
            sta (L0089),Y
            iny
            inx
            dec L009B
            bpl L809B
            lda #$FF
            sta (L0089),Y
            iny
            dec L0099
            bpl L8097
            stx L0094
            sty L0099
L80B3       dec L0098
            bmi L80D5
            lda L0099
            sec
            sbc L00C3
            sbc L00C3
            sta L0099
            ldx L00C3
L80C2       sty L009A
            ldy L0099
            lda (L0089),Y
            iny
            sty L0099
            ldy L009A
            sta (L0089),Y
            iny
            dex
            bne L80C2
            beq L80B3
L80D5       ldx L0095
            inx
            cpx #$08
            bne L8067
            ldy #$10
            lda #$40
            ldx #$00
L80E2       pha
            sta L08C0,X
            tya
            sta L08C1,X
            pla
            inx
            inx
            cpx #$C0
            beq L80F9
            clc
            adc #$28
            bcc L80E2
            iny
            bcs L80E2
L80F9       lda #$01
            sta L0606
            lda #$00
            sta L060F
            sta L0609
            sta L00E9
            ldx #$00
            lda #$00
L810C       sta L1004,X
            inx
            bne L810C
            jsr L919D
            lda #$34
            sta COLOR0
            sta COLOR1
            lda #$00
            sta COLOR4
            lda #$10
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            ldx #$00
L812E       stx L0600
            lda #$18
            sta L0601
L8136       lda L9E99,X
            sta L008B
            inx
            lda L9E99,X
            sta L008C
            inx
            stx L0600
            ldx #$1A
            clc
            lda L0601
            tay
            adc #$10
            sta L0601
            lda #$55
            jsr L9382
            ldx L0600
            cpx #$0E
            bne L8136
            ldx #$00
            stx L0600
            lda #$10
            sta L0601
L8167       lda L9EA7,X
            sta L008B
            inx
            lda L9EA7,X
            sta L008C
            inx
            stx L0600
            ldx #$30
            clc
            lda L0601
            tay
            adc #$10
            sta L0601
            lda #$55
            jsr L9382
            ldx L0600
            cpx #$10
            bne L8167
            lda #$0C
            sta L00EA
            lda #$16
            sta L0094
L8196       lda RANDOM
            and #$1F
            clc
            adc #$1F
            sta L00B0
            lda RANDOM
            and #$7F
            clc
            adc #$10
            sta L00AF
            ldx L0094
            stx L0098
            jsr L9645
            ldx #$10
            jsr L8E7C
            lda L0609
            bne L81CC
            dec L0094
            bpl L8196
            ldx #$F0
            jsr L8E7C
            ldy L0609
L81C7       lda #$00
            sta L0609
L81CC       ldx #$0F
            lda #$00
L81D0       sta L0620,X
            sta L0630,X
            dex
            bpl L81D0
            lda #$A0
            sta SDLSTL
            lda #$BE
            sta SDLSTH
            cpy #$00
            bne L8213
            ldx #$3B
L81E9       lda L9BBD,X
            sta L1004,X
            dex
            bpl L81E9
            jsr L972F
            lda L0085
            clc
            adc #$11
            sta L102D
            lda L0086
            clc
            adc #$10
            sta L1034
            lda L0083
            beq L8213
            ldx #$04
            lda #$00
L820D       sta L103B,X
            dex
            bpl L820D
L8213       lda #$00
            ldx #$89
L8217       sta L0000,X
            inx
            bne L8217
            dex
            txs
L821E       sta L0990,X
            sta L0F00,X
            dex
            bne L821E
            cpy #$00
            bne L8248
            ldx #$0D
L822D       lda L9B97+1,X
            sta L0F8F,X
            dex
            bpl L822D
            ldx #$09
L8238       lda L9B8E,X
            sta L0F05,X
            dex
            bpl L8238
            ldx #$80
            lda #$06
            jsr L921D
L8248       lda #$0C
            sta L00EA
            lda #$06
            sta L00F8
            sta L00E0
            clc
            lda L00D9
            adc L0086
            sta L00D9
            lda L0086
            lsr
            clc
            adc L00DA
            sta L00DA
L8261       jsr L9053
            lda L0606
            beq L826C
            jsr L8CC9
L826C       lda L0606
            bne L8279
            lda L0609
            beq L82DC
            jmp L81C7
L8279       lda #$14
            sta L0608
L827E       lda L0609
            bne L82BF
            lda L0608
            and #$01
            beq L8290
            jsr L8CC5
            jmp L82AF
L8290       jsr L8CC9
            lda L0608
            cmp #$0A
            bcs L82AF
            ldx #$09
            lda #$00
L829E       sta L0F05,X
            dex
            bpl L829E
            ldx #$21
L82A6       lda L9B6C,X
            sta L0F16,X
            dex
            bpl L82A6
L82AF       lda L0608
            bne L827E
            lda #$01
            sta L060F
            jsr L9053
            jmp L82DC
L82BF       cmp #$01
            beq L82C8
            ldy #$00
            jmp L81C7
L82C8       lda #$00
            sta L0606
            sta L060F
            sta L0609
            sta L0603
            sta L0604
            sta L0605
L82DC       lda #$10
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            jsr L8CC5
            ldx #$27
            lda #$00
L82ED       sta L1004,X
            sta L0F00,X
            dex
            bpl L82ED
            ldx #$80
            lda #$06
            jsr L91E6
            lda L0606
            bne L831D
            lda L0085
            beq L831D
            lda L00EF
            tax
            eor #$01
            tay
            lda L9C03,X
            tax
            lda #$1C
            sta L1004,X
            lda L9C01,Y
            ldx #$F4
            jsr L91E6
L831D       lda #$80
            sta L009C
            ldy #$3C
            sty L009D
            lda #$01
            ldy #$06
            ldx #$00
            jsr L970C
            lda #$62
            sta L00F3
            sta L00F0
            lda L0606
            bne L833E
            lda #$AA
            jsr L8F32
L833E       lda #$00
            sta L0602
L8343       ldx #$00
            stx L00A0
            stx ATRACT
            dex
            txs
            lda L0609
            beq L8370
            cmp #$20
            beq L8367
            ldx #$06
L8356       jsr L9709
            dex
            dex
            bpl L8356
            lda #$01
            sta L0606
            ldy #$00
            jmp L81C7
L8367       lda L00F1
            bne L8367
            lda #$00
            sta L0609
L8370       lda L00F2
            beq L8377
            jsr L9254
L8377       lda L00F0
            beq L838E
            lda L00F3
            bne L838B
            sta L00F0
            ldx #$00
            jsr L9709
            lda #$00
            jsr L8F32
L838B       jmp L8A14
L838E       lda L00F2
            bne L8395
            jmp L844E
L8395       lda L0606
            beq L83A7
            lda L060B
            beq L83A7
            lda #$00
            sta L060B
            jmp L83BC
L83A7       ldx #$00
            lda L0084
            bne L83AF
            ldx L00EF
L83AF       lda STRIG0,X
            tax
            eor L009E
            and L009E
            stx L009E
            lsr
            bcc L841D
L83BC       lda L00A5
            beq L841D
            lda L009C
            sec
            sbc #$2E
            cmp #$2D
            bcs L83CD
            ldx #$00
            beq L83D7
L83CD       cmp #$74
            bcs L83D5
            ldx #$01
            bne L83D7
L83D5       ldx #$02
L83D7       lda L062A,X
            bne L8417
            cpx #$00
            bne L83EB
            ldx #$01
            lda L062A,X
            bne L8417
            ldx #$02
            bne L8417
L83EB       cpx #$01
            bne L840E
            lda L009C
            sec
            sbc #$2E
            cmp #$50
            bcs L8403
            ldx #$00
            lda L062A,X
            bne L8417
            ldx #$02
            bne L8417
L8403       ldx #$02
            lda L062A,X
            bne L8417
            ldx #$00
            beq L8417
L840E       ldx #$01
            lda L062A,X
            bne L8417
            ldx #$00
L8417       stx L0602
            jmp L8455
L841D       lda L0603
            beq L842C
            lda #$00
            sta L0603
            sta L0602
            beq L8451
L842C       lda L0604
            beq L843D
            lda #$00
            sta L0604
            lda #$01
            sta L0602
            bne L8451
L843D       lda L0605
            beq L844E
            lda #$00
            sta L0605
            lda #$02
            sta L0602
            bne L8451
L844E       jmp L8512
L8451       lda L00A5
            beq L845D
L8455       ldx L0602
            lda L062A,X
            bne L846E
L845D       lda #$00
            sta AUDCTL
            lda #$1F
            ldy #$29
            ldx #$04
            jsr L970C
            jmp L8512
L846E       ldy #$07
L8470       lda L0505,Y
            beq L8478
            dey
            bpl L8470
L8478       dec L00A5
            ldx L0602
            dec L062A,X
            lda L9D22,X
            sta L00AD
            lda #$56
            sta L00AE
            ldx L009D
            inx
            stx L00B0
            lda L009C
            sec
            sbc #$2D
            sta L00AF
            jsr L95CC
            ldx L0602
            jsr L94CE
            ldx L0602
            lda L062A,X
            cmp #$03
            bne L84B6
            jsr L8FAE
            lda #$56
            sta L008B
            lda #$9B
            sta L008C
            jmp L84DE
L84B6       cmp #$00
            bne L84EF
            jsr L8FAE
            lda #$56
            sta L008B
            lda #$9B
            sta L008C
            ldx L0602
            sec
            lda L9D22,X
            sbc #$06
            tay
            ldx #$5C
            lda #$AA
            jsr L9382
            lda #$40
            sta L008B
            lda #$9B
            sta L008C
L84DE       ldx L0602
            sec
            lda L9D22,X
            sbc #$06
            tay
            ldx #$5C
            lda #$55
            jsr L9382
L84EF       lda #$1B
            sta L008B
            lda #$9E
            sta L008C
            ldx L009D
            lda L009C
            sec
            sbc #$2E
            tay
            lda #$55
            jsr L9382
            lda #$20
            sta AUDCTL
            lda #$2E
            ldy #$4C
            ldx #$04
            jsr L970C
L8512       ldx L0602
            lda L062A,X
            ldx #$A6
L851A       tay
            clc
            lda L08C0,X
            adc #$13
            sta L0089
            lda L08C1,X
            adc #$00
            sta L008A
            tya
            ldy #$02
L852D       ora (L0089),Y
            bne L8540
            dey
            bpl L852D
            inx
            inx
            cpx #$B6
            bne L851A
            ldx L0602
            jsr L8FAE
L8540       ldx #$02
L8542       bne L8548
            lda L00A8
            bne L8550
L8548       lda L04EF,X
            bne L8550
L854D       jmp L85E1
L8550       lda P1PF,X
            and #$04
            beq L854D
            lda #$00
            sta HPOSP1,X
            stx L0095
            cpx #$00
            bne L85B4
            lda L00A8
            beq L85B4
            lda #$01
            sta L0099
            lda #$00
            jsr L96D5
            lda L00A9
            lsr
            bcs L857E
            lda #$F6
            sta L008B
            lda #$9D
            sta L008C
            bne L8594
L857E       asl
            asl
            bcs L858C
            lda #$B2
            sta L008B
            lda #$9D
            sta L008C
            bne L8594
L858C       lda #$D4
            sta L008B
            lda #$9D
            sta L008C
L8594       lda L00AA
            sec
            sbc #$30
            tay
            lda #$AA
            ldx L00AB
            jsr L9382
            lda L00AB
            clc
            adc #$04
            tay
            lda #$00
            sta L00A8
            lda L00AA
            sec
            sbc #$2D
            ldx #$18
            bne L85D8
L85B4       lda #$01
            sta L0099
            lda #$25
            jsr L96D5
            lda L00B9,X
            jsr L96A1
            txa
            clc
            adc #$10
            tax
            lda #$00
            sta L04DF,X
            lda L0493,X
            clc
            adc #$02
            tay
            lda L0480,X
            adc #$02
L85D8       sta L00AF
            sty L00B0
            jsr L9631
            ldx L0095
L85E1       dex
            bmi L85E7
            jmp L8542
L85E7       lda #$90
            sta L008B
            lda #$09
            sta L008C
            ldy #$03
            clc
            lda #$0E
            adc L00A1
            tax
L85F7       sty L0095
            lda L04DF,X
            beq L8625
            lda M0PF,Y
            and #$04
            beq L8625
            lda #$00
            sta L0099
            lda #$25
            jsr L96D5
            jsr L9627
            lda L00A9,X
            jsr L96A1
            lda L0505,X
            sec
            sbc L04DF,X
            sta L04DF,X
            beq L8625
            jsr L9488
L8625       ldy L0095
            lda L00BC,Y
            tay
            lda #$00
            sta (L008B),Y
            dex
            dex
            ldy L0095
            dey
            bpl L85F7
            ldx #$07
            lda L00A1
            beq L8641
            dex
            lda #$00
            beq L8643
L8641       lda #$01
L8643       sta L00A1
            ldy #$03
            lda #$80
L8649       sta L0098
            lda L04E7,X
            beq L866A
            sty L0095
            lda L0098
            ldy L049B,X
            ora (L008B),Y
            sta (L008B),Y
            tya
            ldy L0095
            sta L00BC,Y
            lda L0488,X
            clc
            adc #$30
            sta HPOSM0,Y
L866A       lda L0098
            lsr
            lsr
            dex
            dex
            dey
            bpl L8649
            ldx #$0F
            stx HITCLR
            jsr L8F61
            ldx #$07
            jsr L8F61
            jsr L8E8E
            lda L00A8
            bne L8703
            lda L00C8
            beq L8690
            dec L00C8
            jmp L8703
L8690       lda L00A3
            beq L8703
            lda L0515
            bne L8703
            ldy RANDOM
            cpy #$18
            bcc L8703
            cpy #$34
            bcs L8703
            sty L00AB
            lda RANDOM
            sta L00A9
            lsr
            bcc L86C6
            asl
            asl
            bcs L86BC
            lda #$AA
            sta L008B
            lda #$9D
            sta L008C
            bne L86CE
L86BC       lda #$CC
            sta L008B
            lda #$9D
            sta L008C
            bne L86CE
L86C6       lda #$EE
            sta L008B
            lda #$9D
            sta L008C
L86CE       lda L00A9
            bmi L86D6
            lda #$30
            bne L86D8
L86D6       lda #$C8
L86D8       sta L00AA
            sta L0515
            sta L00A8
            lda #$07
            ldx #$01
            jsr L93FE
            lda L00AA
            sta HPOSP1
            lda #$00
            sta L00AC
            lda L00D8
            sta L00C8
            lda L00EE
            bne L8700
            lda #$6F
            ldy #$74
            ldx #$06
            jsr L970C
L8700       jmp L8858
L8703       lda L00CC
            bne L870A
            jmp L883A
L870A       lda L00A3
            beq L8715
            lda RANDOM
            and #$03
            bne L8718
L8715       jmp L87C0
L8718       ldy L00CB
            bne L871F
            jmp L8832
L871F       lda L00A8
            beq L8748
            lda L00CA
            beq L872B
            dec L00CA
            bpl L8748
L872B       lda L00AA
            cmp #$35
            bcc L8748
            cmp #$C1
            bcs L8748
            sec
            sbc #$2C
            tax
            lda #$08
            sta L00CA
            lda #$FF
            sta L0095
            lda L00AB
            clc
            adc #$04
            bne L876D
L8748       ldx #$07
L874A       lda L04E7,X
            beq L875A
            lda L049B,X
            cmp #$18
            bcc L875A
            cmp #$34
            bcc L875F
L875A       dex
            bpl L874A
            bmi L879B
L875F       pha
            lda #$00
            sta L0095
            lda L00B1,X
            sta L00C3
            lda L0488,X
            tax
            pla
L876D       sta L00AE
            stx L00AD
            sty L0097
L8773       jsr L9506
            txa
            ldy L0095
            bmi L8789
L877B       cmp L00C3,Y
            bne L8786
            jsr L96A1
            jmp L8794
L8786       dey
            bpl L877B
L8789       ldy L0095
            iny
            sta L00C3,Y
            sty L0095
            jsr L95AC
L8794       dec L0097
            bne L8773
            jmp L8832
L879B       lda RANDOM
            cmp #$A0
L87A0       bcs L87BD
            ldy #$07
L87A4       ldx L04E7,Y
            beq L87AE
            cmp L04AE,Y
            beq L87BD
L87AE       dey
            bpl L87A4
            sta L00AD
            lda #$08
            sta L00AE
            jsr L9506
            jsr L95AC
L87BD       jmp L8832
L87C0       ldx L00A7
            bne L87C7
L87C4       jmp L8858
L87C7       lda L00A2
            beq L87C4
            lda RANDOM
            cmp #$9E
            bcs L87C4
            ldx #$02
L87D4       ldy L0515,X
            beq L87DF
            dex
            bpl L87D4
            jmp L8832
L87DF       sta L00AD
            ldy #$08
            sty L00AE
            lda #$17
            sta L008B
            lda #$9E
            sta L008C
            lda #$02
            stx L0095
            inx
            jsr L93FE
            lda L00AD
            ldx L0095
            clc
            adc #$30
            sta HPOSP1,X
            jsr L9506
            txa
            inc L00EE
            dec L00A2
            dec L00A7
            ldx L0095
            sta L00B9,X
            tax
            clc
            lda L0095
            adc #$10
            tay
            lda L956F,X
            sec
            sbc #$02
            sta L00AF
            lda #$55
            sta L00B0
            jsr L95CC
            lda #$65
            ldy #$6A
            ldx #$06
            jsr L970C
            lda L00CB
            beq L8832
            dec L00CB
L8832       lda L00CB
            bne L8858
            sta L00CC
            beq L8858
L883A       dec L00C9
            bne L8858
            lda L00A3
            cmp #$05
            bcc L8846
            lda #$04
L8846       cmp L00A6
            bcc L884C
            lda L00A6
L884C       sta L00CB
            ora L00A2
            beq L8858
            sta L00CC
            lda L00D7
            sta L00C9
L8858       lda L00A8
            beq L8892
            lda L00D6
            clc
            adc L00AC
            sta L00AC
            bcc L8892
            ldx L00AA
            lda L00A9
            bmi L8872
            inx
            cpx #$C8
            bcs L887F
            bcc L8877
L8872       dex
            cpx #$30
            bcc L887F
L8877       stx HPOSP1
            stx L00AA
            jmp L8892
L887F       lda #$00
            sta L00A8
            sta HPOSP1
            sta L0515
            lda L00EE
            bne L8892
            ldx #$06
            jsr L9709
L8892       ldx #$12
L8894       lda L04DF,X
            bne L889C
            jmp L89BC
L889C       sec
            lda L00A4
            adc L04CC,X
            sta L04CC,X
            bcs L88AA
            jmp L89BC
L88AA       lda #$00
            sta L00C3
            lda L0493,X
            cmp #$0A
            bcc L8905
            cmp #$51
            bcs L8905
            lda L0480,X
            cmp #$02
            bcc L8905
            cmp #$99
            bcs L8905
            ldy #$07
L88C6       sty L0095
            lda L9D0E,Y
            clc
            adc L0480,X
            sta L0098
            lda L9D15+1,Y
            clc
            adc L0493,X
            asl
            tay
            lda L08C0,Y
            sta L0089
            lda L08C1,Y
            sta L008A
            lda L0098
            lsr
            lsr
            tay
            lda (L0089),Y
            pha
            lda L0098
            and #$03
            tay
            pla
            and L9D1E,Y
            eor L9D1E,Y
            bne L88FD
            sec
            bcs L88FE
L88FD       clc
L88FE       ror L00C3
            ldy L0095
            dey
            bpl L88C6
L8905       lda L00C3
            beq L890D
            sta L00B0,X
            bne L8936
L890D       lda L00B0,X
            beq L8936
            lda #$00
            sta L00B0,X
            ldy L00A9,X
            lda L956F,Y
            sec
            sbc #$02
            sta L00AF
            lda #$55
            sta L00B0
            lda L0480,X
            sta L00AD
            lda L0493,X
            sta L00AE
            stx L0095
            txa
            tay
            jsr L95CC
            ldx L0095
L8936       lda L00B0,X
            bne L8965
            jsr L96B8
            dec L04DF,X
            beq L8945
            jmp L8990
L8945       lda #$00
            sta LCFF1,X
            ldy L0480,X
            iny
            iny
            sty L00AF
            ldy L0493,X
            iny
            iny
            sty L00B0
            jsr L9631
            stx L0095
            jsr L9577+1
            ldx L0095
            jmp L89BC
L8965       lda L00C3
            and #$0F
            bne L8974
            inc L0480,X
            inc L0493,X
            jmp L8990
L8974       lda L00C3
            and #$F0
            bne L8983
            dec L0480,X
            inc L0493,X
            jmp L8990
L8983       and #$7E
            bne L898D
            inc L0493,X
            jmp L8990
L898D       dec L0493,X
L8990       lda L0480,X
            clc
            adc #$30
            sta LCFF1,X
            txa
            sec
            sbc #$0F
            asl
            tay
            lda L0493,X
            sec
            sbc #$01
            clc
            adc L9D5F+2,Y
            sta L0089
            lda #$00
            adc L9D62,Y
            sta L008A
            ldy #$04
L89B4       lda L9E15+1,Y
            sta (L0089),Y
            dey
            bpl L89B4
L89BC       dex
            cpx #$0F
            beq L89C4
            jmp L8894
L89C4       lda L00A0
            bne L8A17
            lda L00E0
            ora L062A
            ora L062B
            ora L062C
            ora L062D
            ora L062E
            ora L062F
            beq L89F5
            lda L00A3
            ora L00A2
            bne L8A14
            ldx #$0A
L89E6       ora L04E7,X
            dex
            bpl L89E6
            ora L00A8
            sta L00F2
            bne L89F5
            sta HPOSP0
L89F5       lda #$00
            sta L00A3
            sta L00A2
            ldx #$13
L89FD       lda L053E,X
            bpl L8A14
            dex
            bpl L89FD
            lda L00A6
            clc
            adc L00A7
            adc L00A5
            cmp #$13
            bne L8A14
            lda L00A8
            beq L8A1A
L8A14       jsr L91D3
L8A17       jmp L8343
L8A1A       ldx #$00
            stx HPOSP0
            lda L0606
            beq L8A27
            jmp L80F9
L8A27       stx L00E0
            stx L0600
            lda #$15
            sta L0096
            lda #$00
            sta SDLSTL
            lda #$BE
            sta SDLSTH
L8A3A       dec L062A,X
            bmi L8A65
            jsr L94CE
            lda L0096
            clc
            adc #$04
            sta L0096
            tay
            ldx #$20
            lda #$55
            jsr L9382
            lda #$00
            sta L0099
            lda #$05
            jsr L96D5
            ldx #$05
            jsr L91B8
            ldx L0600
            jmp L8A3A
L8A65       ldx L0600
            lda L062D,X
            beq L8A76
            jsr L8FAE
            ldx L0600
            jmp L8A3A
L8A76       inc L0600
            ldx L0600
            cpx #$03
            bne L8A3A
            lda #$6F
            sta L008B
            lda #$9D
            sta L008C
            lda #$0B
            sta L0096
            ldx #$05
L8A8E       stx L0095
            lda L0620,X
            bmi L8AC0
            inc L00E0
            lda #$00
            ldy L9D69,X
            ldx #$59
            jsr L9382
            lda L0096
            clc
            adc #$0E
            sta L0096
            tay
            ldx #$30
            lda #$55
            jsr L9382
            lda #$01
            sta L0099
            lda #$00
            jsr L96D5
            ldx #$0F
            jsr L91B8
            ldx L0095
L8AC0       dex
            bpl L8A8E
            lda L0083
            beq L8ACA
            jmp L8B57
L8ACA       lda #$00
            sta L0098
            lda L00DE
            and #$0F
            sta L0099
            lda L00DE
            lsr
            lsr
            lsr
            lsr
            tax
            lda #$00
            cpx #$01
            bcc L8AE7
            clc
L8AE2       adc #$0A
            dex
            bne L8AE2
L8AE7       adc L0099
            sta L0099
L8AEB       lda L0099
            cmp L00DF
            beq L8B2B
            lda L00E0
            cmp #$06
            beq L8B2B
            lda RANDOM
            lsr
            and #$07
            tax
            bcs L8B0F
L8B00       cpx #$06
            bcc L8B06
            ldx #$05
L8B06       lda L0620,X
            bmi L8B1E
            dex
            jmp L8B00
L8B0F       cpx #$06
            bcc L8B15
            ldx #$00
L8B15       lda L0620,X
            bmi L8B1E
            inx
            jmp L8B0F
L8B1E       lda #$00
            sta L0620,X
            inc L00E0
            inc L00DF
            inc L0098
            bne L8AEB
L8B2B       lda L0098
            beq L8B57
            jsr L8E6B
            lda #$A4
            sta AUDC2
            lda #$12
            sta L009A
L8B3B       lda RANDOM
            and #$1E
            bne L8B44
            lda #$1E
L8B44       adc #$08
            sta AUDF2
            ldx #$06
            jsr L91CC
            dec L009A
            bpl L8B3B
            lda #$00
            sta AUDC2
L8B57       ldy L00E0
            bne L8B82
            sec
            lda LOMEM
            sbc L00DC
            lda LOMEM+1
            sbc L00DD
            lda L0082
            sbc L00DE
            bcs L8B73
            ldx #$02
L8B6C       lda L00DC,X
            sta LOMEM,X
            dex
            bpl L8B6C
L8B73       ldy L00E0
            bne L8B82
            lda L0085
            beq L8B7F
            lda L00F8
            bne L8B8A
L8B7F       jmp L8BD3
L8B82       ldy L0085
            beq L8BB1
            ldy L00F8
            beq L8BB1
L8B8A       ldx #$0A
L8B8C       ldy L00F4,X
            lda L00DC,X
            sta L00F4,X
            sty L00DC,X
            dex
            bpl L8B8C
            ldx #$0F
L8B99       ldy L0630,X
            lda L0620,X
            sta L0630,X
            tya
            sta L0620,X
            dex
            bpl L8B99
            lda L00EF
            eor #$01
            sta L00EF
            bne L8BCB
L8BB1       ldx L00D9
            inx
            cpx #$15
            bcc L8BBA
            ldx #$13
L8BBA       stx L00D9
            txa
            lsr
            bcs L8BCB
            ldx L00DA
            inx
            cpx #$0A
            bcc L8BC9
            ldx #$00
L8BC9       stx L00DA
L8BCB       ldx #$5A
            jsr L91CC
            jmp L8261
L8BD3       lda #$00
            sta COLOR0
            sta COLOR4
            lda #$10
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            ldx #$00
            lda #$80
L8BE9       sta L1004,X
            inx
            bne L8BE9
            jsr L9753
            lda #$6E
            sta L008B
            lda #$97
            sta L008C
            ldx #$1D
            ldy #$20
            lda #$AA
            jsr L9382
            lda #$60
            sta L008B
            lda #$98
            sta L008C
            ldx #$31
            ldy #$20
            lda #$AA
            jsr L9382
            lda #$52
            sta L008B
L8C18       lda #$99
            sta L008C
            ldx #$1D
            ldy #$50
            lda #$AA
            jsr L9382
            lda #$44
            sta L008B
            lda #$9A
            sta L008C
            ldx #$31
            ldy #$50
            lda #$AA
            jsr L9382
            lda #$34
            sta COLOR0
            lda #$0B
            ldy #$10
            ldx #$00
            jsr L970C
            lda #$15
            ldy #$10
            ldx #$02
            jsr L970C
            lda #$06
            sta L0095
            lda #$01
            sta L0096
L8C55       lda L0096
            sta L0097
            lda #$00
            sta L00A0
            lda RANDOM
            ora #$08
            and #$FB
            sta COLOR1
L8C67       lda L00A0
            beq L8C67
            dec L0097
            beq L8C80
            lda RANDOM
            and #$0B
            ora COLOR1
            sta COLOR1
            lda #$00
            sta L00A0
            beq L8C67
L8C80       inc L0096
            dec L0095
            bne L8C55
            lda #$FF
            sta L0097
L8C8A       lda #$08
            sta L0095
L8C8E       lda #$00
            sta L00A0
            lda RANDOM
            and L0097
            sta COLOR1
L8C9A       lda L00A0
            beq L8C9A
            dec L0095
            bne L8C8E
            lsr L0097
            bcs L8C8A
            lda #$00
            sta COLOR1
            lda #$01
            sta L00F3
L8CAF       lda L00F3
            bne L8CAF
            ldx #$FF
            jsr L8E7C
            lda #$01
            sta L0606
            ldy #$00
            sty L0609
            jmp L81C7
L8CC5       lda #$00
            beq L8CCB
L8CC9       lda #$AA
L8CCB       pha
            lda #$AC
            sta L008B
            lda #$9B
            sta L008C
            ldx #$05
L8CD6       stx L0095
            lda L9BA6,X
            tay
            ldx #$46
            pla
            pha
            jsr L9382
            ldx L0095
            dex
            bpl L8CD6
            pla
            rts
            txa
            pha
            lda KBCODE
            cmp #$AD
            bne L8CFF
            sta L0609
            lda L0084
            eor #$FF
            sta L0084
            jmp L8D63
L8CFF       cmp #$3E
            bne L8D0F
            sta L0609
            lda L0087
            eor #$FF
            sta L0087
L8D0C       jmp L8D63
L8D0F       cmp #$01
            bne L8D1E
            lda L0603
            eor #$FF
            sta L0603
            jmp L8D63
L8D1E       cmp #$05
            bne L8D2D
            lda L0604
            eor #$FF
            sta L0604
            jmp L8D63
L8D2D       cmp #$00
            bne L8D3C
            lda L0605
            eor #$FF
            sta L0605
            jmp L8D63
L8D3C       cmp #$48
            bcs L8D56
            tax
            lda LBF77,X
            cmp #$3A
            bcs L8D56
            cmp #$30
            bcc L8D56
            sta L0609
            sbc #$30
            sta L0086
            jmp L8D63
L8D56       cmp #$20
            bne L8D63
            sta L0609
            lda L00F1
            eor #$FF
            sta L00F1
L8D63       pla
            tax
            pla
            rti
            cld
            lda #$FF
            sta L00A0
            clc
            lda L00EA
            adc #$10
            sta L00EA
            sta COLPF2
            dec L00F3
            lda L0607
            beq L8D83
            dec L0607
            jmp L8D90
L8D83       lda #$3C
            sta L0607
            lda L0608
            beq L8D90
L8D8D       dec L0608
L8D90       lda CONSOL
            tay
            eor L009F
            and L009F
            sty L009F
            lsr
            bcs L8DB9
            lsr
            bcc L8DAB
            lda L0085
            eor #$01
            sta L0085
            lda #$02
            jmp L8DBB
L8DAB       lsr
            bcc L8DBE
            lda L0083
            eor #$01
            sta L0083
            lda #$03
            jmp L8DBB
L8DB9       lda #$01
L8DBB       sta L0609
L8DBE       jmp XITVBV
            pha
            txa
            pha
            tya
            pha
            cld
            lda VCOUNT
            ldx #$04
L8DCC       cmp L8E77,X
            beq L8E07
            bcs L8DD6
            dex
            bpl L8DCC
L8DD6       lda L00F1
            bne L8E04
            lda PORTA
            tax
            eor L00EB
            and L00EB
            stx L00EB
            lsr
            lsr
            bcc L8DF4
            tay
            txa
            lsr
            bcc L8DF1
            inc L00EC
            bcs L8DF3
L8DF1       dec L00EC
L8DF3       tya
L8DF4       lsr
            lsr
            bcc L8E04
            txa
            and #$04
            beq L8E02
            inc L00ED
            jmp L8E04
L8E02       dec L00ED
L8E04       jmp L8E65
L8E07       cmp #$66
            bne L8E12
            lda L00D2
            sta COLPF1
            bne L8E65
L8E12       lda L00E9
            bne L8E65
            ldx #$07
L8E18       lda L05CA,X
            beq L8E62
            dec L05CA,X
            bne L8E62
            dec L05BA,X
            bne L8E4F
            ldy L05C2,X
            bne L8E32
            tya
            sta AUDF1,X
            beq L8E62
L8E32       txa
            pha
            lda #$04
            sta L00E8
L8E38       lda L9C05,Y
            sta L05A2,X
            txa
            clc
            adc #$08
            tax
            iny
            dec L00E8
            bpl L8E38
            pla
            tax
            lda L05A2,X
            bne L8E59
L8E4F       clc
            lda L05AA,X
            adc L05A2,X
            sta L05A2,X
L8E59       sta AUDF1,X
            lda L05B2,X
            sta L05CA,X
L8E62       dex
            bpl L8E18
L8E65       pla
            tay
            pla
            tax
            pla
            rti
L8E6B       ldx #$09
L8E6D       lda L9B36,X
            sta L0F05,X
            dex
            bpl L8E6D
            rts
L8E77       asl ICBLLZ
            eor #$66
            ror
L8E7C       stx L00C3
L8E7E       lda #$00
            sta L00A0
            jsr L8E8E
L8E85       lda L00A0
            beq L8E85
            dec L00C3
            bne L8E7E
            rts
L8E8E       ldx L00CF
            inx
            cpx #$0A
            bcc L8E97
            ldx #$00
L8E97       stx L00CF
L8E99       ldy L053E,X
            bpl L8EA1
            jmp L8F25
L8EA1       cpy #$08
            bcc L8EB5
            lda #$00
            sta L0552,X
            ldy #$07
            dec L053E,X
            inc L0566,X
            inc L057A,X
L8EB5       stx L0095
            tya
            asl
            tax
            lda L0D00,X
            sta L008B
            lda L0D01,X
            sta L008C
            ldx L0095
            ldy L0566,X
            cpy #$FF
            bne L8ED4
            ldy #$9F
            dec L057A,X
            bne L8EDD
L8ED4       cpy #$A0
            bcc L8EE1
            ldy #$00
            inc L057A,X
L8EDD       tya
            sta L0566,X
L8EE1       lda L0552,X
            pha
            lda L057A,X
            tax
            pla
            jsr L9382
            ldx L0095
            lda L0552,X
            beq L8F00
            inc L053E,X
            dec L0566,X
            dec L057A,X
            jmp L8F25
L8F00       dec L053E,X
            bpl L8F1F
            lda L058E,X
            and #$7F
            tay
            lda #$00
            sta L0505,Y
            lda L058E,X
            bmi L8F1F
            lsr
            lsr
            lsr
            stx L0098
            tax
            inc L00A5,X
            ldx L0098
L8F1F       inc L0566,X
            inc L057A,X
L8F25       txa
            clc
            adc #$0A
            tax
            cpx #$14
            bcs L8F31
            jmp L8E99
L8F31       rts
L8F32       pha
            lda L00D9
            and #$FE
            cmp #$0B
            bcc L8F3D
            lda #$0A
L8F3D       tay
            lda LA2BF,Y
            sta L008B
            lda LA2C0,Y
            sta L008C
            ldx #$28
            ldy #$29
            pla
            pha
            jsr L9382
            lda #$8B
            sta L008B
            lda #$A3
            sta L008C
            ldx #$28
            ldy #$34
            pla
            jmp L9382
L8F61       lda L04DF,X
            beq L8FAA
            lda L00A4
            cpx #$08
            bcs L8F6F
            lda #$D0
            sec
L8F6F       adc L04CC,X
            sta L04CC,X
            bcc L8FAA
            dec L04DF,X
            bne L8F8F
            jsr L9482
            jsr L9627
            cpx #$08
            bcc L8FAA
            stx L0095
            jsr L9577+1
            ldx L0095
            bpl L8FAA
L8F8F       ldy L0480,X
            stx L0098
            lda #$55
            cpx #$08
            bcc L8F9C
            lda #$AA
L8F9C       sta L008E
            lda L0493,X
            tax
            jsr L942D
            ldx L0098
            jsr L96B8
L8FAA       dex
            bpl L8F61
            rts
L8FAE       lda L062D,X
            bne L8FB6
            jmp L9052
L8FB6       stx L0601
            dec L062D,X
            lda #$85
            sta L008B
            lda #$9D
            sta L008C
            cpx #$01
            beq L8FF7
            cpx #$02
            beq L9022
            ldx #$58
            ldy #$02
            lda #$AA
            jsr L9382
            lda #$23
            sta L008B
            lda #$9E
            sta L008C
            ldy #$12
L8FDF       sty L0095
            lda L9D25,Y
            tax
            lda L9D26,Y
            tay
            lda #$55
            jsr L9382
            ldy L0095
            dey
            dey
            bpl L8FDF
            jmp L904A
L8FF7       ldx #$58
            ldy #$49
            lda #$AA
            jsr L9382
            lda #$23
            sta L008B
            lda #$9E
            sta L008C
            ldy #$12
L900A       sty L0095
            lda L9D37+2,Y
            tax
            lda L9D3A,Y
            tay
            lda #$55
            jsr L9382
            ldy L0095
            dey
            dey
            bpl L900A
            jmp L904A
L9022       ldx #$58
            ldy #$8D
            lda #$AA
            jsr L9382
            lda #$23
            sta L008B
            lda #$9E
            sta L008C
            ldy #$12
L9035       sty L0095
            lda L9D4B+2,Y
            tax
            lda L9D4E,Y
            tay
            lda #$55
            jsr L9382
            ldy L0095
            dey
            dey
            bpl L9035
L904A       ldx L0601
            lda #$0A
            sta L062A,X
L9052       rts
L9053       lda #$00
            sta L00A1
            ldy #$07
L9059       sta L00BC,Y
            dey
            bpl L9059
            sta L00E7
            sta L00CF
            jsr L919D
            ldx #$12
L9068       sta L04DF,X
            sta L0505,X
            dex
            bpl L9068
            sta L00A8
            ldx #$06
L9075       sta HPOSP1,X
            dex
            bpl L9075
            sta L00C8
            sta L00C9
            sta L00CA
            ldx #$06
L9083       jsr L9709
            dex
            dex
            bpl L9083
            lda #$AA
            ldx #$77
L908E       sta L1EC8,X
            dex
            bpl L908E
            lda #$01
            sta L062D
            sta L062E
            sta L062F
            ldx #$00
            stx L0600
L90A4       jsr L8FAE
            inc L0600
            ldx L0600
            cpx #$03
            bne L90A4
            lda #$6F
            sta L008B
            lda #$9D
            sta L008C
            ldx #$05
L90BB       stx L0095
            lda L0620,X
            bmi L90CE
            ldy L9D69,X
            ldx #$59
            lda #$55
            jsr L9382
            ldx L0095
L90CE       dex
            bpl L90BB
            lda #$08
            sta L00A6
            sta L00A5
            lda #$03
            sta L00A7
            lda L060F
            beq L90E4
            lda #$00
            beq L90EA
L90E4       lda L00DA
            asl
            adc L00DA
            asl
L90EA       tax
            ldy #$05
L90ED       lda L9C7E,X
            sta L00D0,Y
            inx
            dey
            bpl L90ED
            lda L060F
            beq L9108
            lda #$05
            sta L00A4
            sta L00A3
            lda #$00
            sta L00A2
            beq L911A
L9108       lda L00D9
            asl
            adc L00D9
            tax
            ldy #$02
L9110       lda L9CBA,X
            sta L00A2,Y
            inx
            dey
            bpl L9110
L911A       lda L060F
            beq L9123
            lda #$00
            beq L912B
L9123       lda L00D9
            lsr
            sta L0098
            asl
            adc L0098
L912B       tax
            cpx #$13
            bcc L9132
            ldx #$12
L9132       ldy #$02
L9134       lda L9CF9,X
            sta L00D6,Y
            inx
            dey
            bpl L9134
            lda L0084
            beq L9149
            lda L00A4
            clc
            adc #$0A
            sta L00A4
L9149       lda L0087
            beq L915D
            lda L060F
            bne L915D
            clc
            lda L00A3
            adc L00A2
            sta L00A2
            lda #$00
            sta L00A3
L915D       lda L00D3
            sta COLOR4
            lda L00D4
            sta COLOR1
            lda L00D5
            sta COLOR0
            lda L00D1
            sta PCOLR0
            lda L00D0
            sta PCOLR1
            sta PCOLR2
            sta PCOLR3
            lda #$0A
            sta L00CF
            lda #$FF
            ldx #$13
L9184       sta L053E,X
            dex
            bpl L9184
            ldy L00E0
            cpy #$04
            bcc L9192
            ldy #$03
L9192       sty L00E0
            lda #$04
            sta L00CB
            sta L00CC
            sta L00F2
            rts
L919D       lda #$00
            ldy #$40
            sty L0089
            ldy #$10
            sty L008A
            ldx #$10
L91A9       ldy #$FF
L91AB       sta (L0089),Y
            dey
            bne L91AB
            sta (L0089),Y
            inc L008A
            dex
            bne L91A9
            rts
L91B8       stx L00F3
            lda #$00
            sta L00A0
            jsr L91D3
            lda #$5B
            ldy #$60
            ldx #$00
            jsr L970C
            ldx L00F3
L91CC       stx L00F3
L91CE       lda L00F3
            bne L91CE
            rts
L91D3       lda L00A0
            bne L91E1
            ldx L00EF
            lda L9C01,X
            ldx #$DC
            jsr L91E6
L91E1       lda L00A0
            beq L91E1
            rts
L91E6       sta L0098
            lda #$02
            sta L0099
L91EC       lda L0000,X
            tay
            and #$0F
            pha
            tya
            lsr
            lsr
            lsr
            lsr
            pha
            inx
            dec L0099
            bpl L91EC
            ldx #$F0
            ldy L0098
            lda #$05
            sta L0099
L9205       pla
            bne L920F
            lda L0099
            beq L9211
            txa
            bne L9211
L920F       ldx #$00
L9211       clc
            adc #$50
            sta L1004,Y
            iny
            dec L0099
            bpl L9205
            rts
L921D       sta L0098
            lda #$02
            sta L0099
L9223       lda L0000,X
            tay
            and #$0F
            pha
            tya
            lsr
            lsr
            lsr
            lsr
            pha
            inx
            dec L0099
            bpl L9223
            ldx #$F0
            ldy L0098
            lda #$05
            sta L0099
L923C       pla
            bne L9246
            lda L0099
            beq L9248
            txa
            bne L9248
L9246       ldx #$00
L9248       clc
            adc #$50
            sta L0F29,Y
            iny
            dec L0099
            bpl L923C
            rts
L9254       lda L0606
            bne L925C
            jmp L92F0
L925C       lda L060C
            bne L9296
L9261       ldx #$07
L9263       lda L04E7,X
            bne L9293
            dex
            bpl L9263
            lda L00A9
            beq L928B
            lda L00AB
            sta L049B
            lda L00AA
            ldx L00A9
            bmi L9280
            sec
            sbc #$20
            jmp L9283
L9280       sec
            sbc #$40
L9283       sta L0488
            ldx #$00
            jmp L92A3
L928B       lda #$0F
            sta L060D
            jmp L92F0
L9293       stx L060C
L9296       lda L0608
            bne L928B
            ldx L060C
            lda L04E7,X
            beq L9261
L92A3       lda L009C
            sec
            sbc #$2E
            sbc L0488,X
            bcs L92B1
            ldy #$07
            bne L92B3
L92B1       ldy #$11
L92B3       sty L060D
            sta L060E
            lda L009D
            sec
            sbc #$04
            sbc L049B,X
            bcc L92C7
            ldy #$0E
            bne L92C9
L92C7       ldy #$0D
L92C9       clc
            adc L060E
            sta L060E
            tya
            and L060D
            sta L060D
            lda L060E
            cmp #$04
            bcs L92ED
            lda L060B
            bne L92ED
            lda #$01
            sta L060B
            lda #$03
            sta L0608
L92ED       jmp L930A
L92F0       lda L0084
            beq L9308
            clc
            lda L009C
            adc L00EC
            tax
            clc
            lda L009D
            adc L00ED
            tay
            lda #$00
            sta L00EC
            sta L00ED
            beq L9343
L9308       ldx L00EF
L930A       jsr L9375
            ldx L009C
            ldy L009D
            lsr
            bcc L9324
            lsr
            bcc L932C
L9317       lsr
            bcc L933D
            lsr
            bcs L9343
            lda L009C
            adc #$01
            jmp L9342
L9324       sec
            lda L009D
            sbc #$01
            jmp L9330
L932C       lda L009D
            adc #$01
L9330       tay
            ldx L00EF
            jsr L9375
            ldx L009C
            lsr
            lsr
            jmp L9317
L933D       sec
            lda L009C
            sbc #$01
L9342       tax
L9343       tya
            bmi L934A
            cmp #$08
            bcs L934C
L934A       lda #$08
L934C       cmp #$4F
            bcc L9352
            lda #$4F
L9352       tay
            cpx #$2F
            bcs L9359
            ldx #$2F
L9359       cpx #$C9
            bcc L935F
            ldx #$C9
L935F       stx HPOSP0
            stx L009C
            sty L009D
            lda #$10
            sta L008B
            lda #$9E
            sta L008C
            lda #$02
            ldx #$00
            jmp L93FE
L9375       lda L0606
            beq L937E
            lda L060D
            rts
L937E       lda STICK0,X
            rts
L9382       sta L008E
            cpx #$61
            bcs L938F
            txa
            asl
            tax
            cpy #$A0
            bcc L9390
L938F       nop
L9390       tya
            lsr
            lsr
            clc
            adc L08C0,X
            sta L0089
            lda L08C1,X
            adc #$00
            sta L008A
            tya
            and #$03
            asl
            sta L008F
            ldy #$00
            lda (L008B),Y
            sta L009A
            iny
            lda (L008B),Y
            sta L008D
            iny
            sty L0090
L93B4       ldy #$FF
            sty L0098
            iny
L93B9       lda #$FF
            sta L0099
            sty L0091
            ldy L0090
            lda (L008B),Y
            inc L0090
            ldy L0091
            ldx L008F
            beq L93D2
L93CB       sec
            ror
            ror L0099
            dex
            bne L93CB
L93D2       and L0098
            tax
            and (L0089),Y
            sta (L0089),Y
            txa
            eor #$FF
            and L008E
            ora (L0089),Y
            sta (L0089),Y
            lda L0099
            sta L0098
            iny
            cpy L008D
            bne L93B9
            dec L009A
            beq L93FD
            lda L0089
            clc
            adc #$28
            sta L0089
            bcc L93B4
            inc L008A
            jmp L93B4
L93FD       rts
L93FE       sta L0098
            sty L0099
            txa
            asl
            tax
            lda L9D5F+2,X
            sta L0089
            lda L9D62,X
            sta L008A
            lda #$00
            ldy #$7F
L9413       sta (L0089),Y
            dey
            bpl L9413
            clc
            lda L0099
            adc L0089
            sta L0089
            bcc L9423
            inc L008A
L9423       ldy L0098
L9425       lda (L008B),Y
            sta (L0089),Y
            dey
            bpl L9425
            rts
L942D       cpx #$60
            bcs L9438
            txa
            asl
            tax
            cpy #$A0
            bcc L9439
L9438       nop
L9439       lda L08C0,X
            sta L0089
            lda L08C1,X
            sta L008A
            tya
            and #$03
            tax
            tya
            lsr
            lsr
            tay
            lda L945D,X
            tax
            and (L0089),Y
            sta L009B
            txa
            eor #$FF
            and L008E
            ora L009B
L945A       sta (L0089),Y
            rts
L945D       .byte $3F,$CF,$F3,$FC
L9461       lda L052B,X
            bpl L9477
L9466       cpx #$08
            bcs L946E
            dec L0493,X
            rts
L946E       inc L0493,X
            rts
L9472       lda L052B,X
            bpl L9466
L9477       lsr
            bcc L947E
            inc L0480,X
            rts
L947E       dec L0480,X
            rts
L9482       lda L0505,X
            sta L04DF,X
L9488       lda #$00
            sta L008E
            lda L04A6,X
            sta L0480,X
            lda L04B9,X
            sta L0493,X
            lda #$00
            sta L04F2,X
L949D       ldy L0480,X
            lda L0493,X
            stx L0098
            tax
            jsr L942D
            ldx L0098
            clc
            lda L04F2,X
            adc L0518,X
            sta L04F2,X
            cmp L0505,X
            bcc L94C5
            beq L94C5
            sbc L0505,X
            sta L04F2,X
            jsr L9461
L94C5       jsr L9472
            dec L04DF,X
            bne L949D
            rts
L94CE       lda L062A,X
            asl
            tay
            cpx #$00
            bne L94E2
            lda L9D25,Y
            tax
            lda L9D26,Y
            tay
            jmp L94F9
L94E2       cpx #$01
            bne L94F1
            lda L9D37+2,Y
            tax
            lda L9D3A,Y
            tay
            jmp L94F9
L94F1       lda L9D4B+2,Y
            tax
            lda L9D4E,Y
            tay
L94F9       lda #$23
            sta L008B
            lda #$9E
            sta L008C
            lda #$AA
            jmp L9382
L9506       lda RANDOM
            and #$0F
            ldx L00E0
            beq L9539
L950F       cmp #$06
            bcc L9517
            sbc #$06
            bcs L950F
L9517       tax
            bit RANDOM
L951B       lda L0620,X
            beq L9532
            bvc L952B
            inx
            cpx #$06
            bcc L951B
            ldx #$00
            beq L951B
L952B       dex
            bpl L951B
            ldx #$05
            bne L951B
L9532       inc L0620,X
            dec L00E0
            bpl L956B
L9539       ldx L00E7
            bne L954C
L953D       lda RANDOM
            and #$03
            cmp #$03
            beq L953D
            clc
            adc #$06
            tax
            bne L9563
L954C       cmp #$07
            bcc L9554
            sbc #$07
            bcs L954C
L9554       tax
            cpx #$06
            beq L9563
            lda L0620,X
            bne L9563
            txa
            adc #$04
            bcc L954C
L9563       lda L0620,X
            bmi L956B
            inc L0620,X
L956B       lda L956F,X
            rts
L956F       .byte $1B
            bit L623D
            .byte $72,$82
            ora #$50
L9577       sty L00B5,X
            lda #$C9
            ora #$90
            ora (L00EA,X)
            cmp #$06
            bcc L95A5
            sec
            sbc #$06
            sta L0602
L9589       ldx L0602
            lda L062A,X
            beq L959A
            dec L062A,X
            jsr L94CE
            jmp L9589
L959A       dec L00E7
            lda #$00
            ldx L0602
            sta L062A,X
            rts
L95A5       tax
            lda #$FF
            sta L0620,X
            rts
L95AC       ldy #$0F
L95AE       lda L0505,Y
            beq L95B9
            dey
            cpy #$07
            bne L95AE
            nop
L95B9       txa
            sta L00A9,Y
            dec L00A3
            dec L00CB
            dec L00A6
            lda L956F,X
            sta L00AF
            lda #$57
            sta L00B0
L95CC       lda L00AD
            sta L04A6,Y
            sta L0480,Y
            lda L00AE
            sta L04B9,Y
            sta L0493,Y
            sec
            sbc L00B0
            bcs L95E5
            eor #$FF
            adc #$01
L95E5       sta L00DB
            sec
            lda L00AF
            sbc L00AD
            bcs L95F7
            eor #$FF
            adc #$01
            tax
            lda #$00
            beq L95FA
L95F7       tax
            lda #$01
L95FA       sta L052B,Y
            txa
            cmp L00DB
            bcs L9607
            tax
            lda L00DB
            bcc L9613
L9607       tax
            lda #$80
            ora L052B,Y
            sta L052B,Y
            txa
            ldx L00DB
L9613       sta L0505,Y
            sta L04DF,Y
            inx
            txa
            sta L0518,Y
            lda #$00
            sta L04F2,Y
            sta L04CC,Y
            rts
L9627       lda L0480,X
            sta L00AF
            lda L0493,X
            sta L00B0
L9631       stx L0098
            lda #$0B
            ldy #$10
            ldx #$00
            jsr L970C
            lda #$15
            ldy #$1A
            ldx #$02
            jsr L970C
L9645       ldy L0098
            cpy #$18
            bcc L965A
            lda L00EE
            bne L9654
            ldx #$06
            jsr L9709
L9654       ldy #$10
            lda #$80
            bmi L967D
L965A       cpy #$10
            bcc L967B
            dec L00EE
            bne L967B
            sty L0099
            lda L00A8
            beq L9674
            lda #$6F
            ldy #$74
            ldx #$06
            jsr L970C
            jmp L9679
L9674       ldx #$06
            jsr L9709
L9679       ldy L0099
L967B       lda #$00
L967D       ldx L053E,Y
            bmi L9683
            nop
L9683       sty L0099
            ora L0099
            sta L058E,Y
            lda L00AF
            sta L0566,Y
            lda L00B0
            sta L057A,Y
            lda #$00
            sta L053E,Y
            lda #$FF
            sta L0552,Y
            ldx L0098
            rts
L96A1       cmp #$06
            beq L96B5
            tay
            lda L0620,Y
            bmi L96B4
            sbc #$00
            bne L96B1
            inc L00E0
L96B1       sta L0620,Y
L96B4       rts
L96B5       dec L00E7
            rts
L96B8       lda L04F2,X
            clc
            adc L0518,X
            sta L04F2,X
            cmp L0505,X
            bcc L96D2
            beq L96D2
            sbc L0505,X
            sta L04F2,X
            jsr L9461
L96D2       jmp L9472
L96D5       pha
            lda L0606
            beq L96DD
            pla
            rts
L96DD       pla
            sta L0098
            lda L00D9
            lsr
            cmp #$06
            bcc L96E9
            lda #$05
L96E9       sta L009A
            sed
L96EC       clc
            lda L0098
            adc L00DC
            sta L00DC
            lda L0099
            adc L00DD
            sta L00DD
            lda #$00
            adc L00DE
            sta L00DE
            bcc L9703
            sta L00DF
L9703       dec L009A
            bpl L96EC
            cld
            rts
L9709       lda #$00
            tay
L970C       pha
            lda L0606
            bne L972D
            pla
            inc L00E9
            sta L05C2,X
            tya
            sta L05C3,X
            lda #$01
            sta L05CA,X
            sta L05CB,X
            sta L05BA,X
            sta L05BB,X
            dec L00E9
            rts
L972D       pla
            rts
L972F       lda L0087
            beq L9738
            lda #$0A
            sta L102B
L9738       ldx #$03
            lda L0084
            beq L9749
L973E       lda L9BF9,X
            sta L1036,X
            dex
            bpl L973E
            bmi L9752
L9749       lda L9BFD,X
            sta L1036,X
            dex
            bpl L9749
L9752       rts
L9753       lda #$55
            ldy #$40
            sty L0089
            ldy #$10
            sty L008A
            ldx #$10
L975F       ldy #$FF
L9761       sta (L0089),Y
            dey
            bne L9761
            sta (L0089),Y
            inc L008A
            dex
            bne L975F
            rts
            .byte $14,$0C,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00
            .byte $00,$00,$FF,$FF,$FF,$FF
            beq L97D6
L97D6       .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$FF,$FF,$FF,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF
            .byte $FF
            cpy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$FF,$FF
            beq L9810
L9810       .byte $FF,$FF,$0F,$00
L9814       beq L9814+1
            .byte $FF,$00,$FF,$FF
            cpy #$00
            .byte $FF,$FF
L981E       .byte $0F,$00
L9820       beq L9820+1
            .byte $FF,$00,$FF,$FC,$00,$00,$03
L9829       cpy #$0F
            .byte $00
            beq L981E
            .byte $00,$00,$FF
            beq L9833
L9833       .byte $00,$03
L9835       cpy #$0F
            .byte $00
            beq L9829+1
            .byte $00,$00,$FF,$00,$00,$00,$03
L9841       cpy #$0F
            .byte $00
            beq L9835+1
            .byte $00,$00,$FC,$00,$00,$00,$03
            cpy #$0F
            .byte $00
            beq L9841+1
            .byte $00,$00
            beq L9856
L9856       .byte $00,$00,$03
            cpy #$0F
            .byte $FF
L985C       beq L985C+1
            beq L9860
L9860       .byte $14,$0C
            beq L9864
L9864       .byte $00,$00,$03
L9867       cpy #$0F
            .byte $FF
L986A       beq L986A+1
            beq L986E
L986E       .byte $FC,$00,$00,$00,$03
L9873       cpy #$0F
            .byte $00
            beq L9867+1
            .byte $00,$00,$FF,$00,$00,$00,$03
L987F       cpy #$0F
            .byte $00
            beq L9873+1
            .byte $00,$00,$FF
            beq L9889
L9889       .byte $00,$03
L988B       cpy #$0F
            .byte $00
            beq L987F+1
            .byte $00,$00,$FF,$FC,$00,$00,$03
            cpy #$0F
            .byte $00
            beq L988B+1
            .byte $00,$00,$FF,$FF
            cpy #$00
            .byte $03
            cpy #$0F
            .byte $00
L98A6       beq L98A6+1
            .byte $FF,$00,$FF,$FF
            beq L98AE
L98AE       .byte $03
            cpy #$0F
            .byte $00
L98B2       beq L98B2+1
            .byte $FF,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF
            .byte $FF
            cpy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FC,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$FF
            .byte $FF,$FF,$FF
            beq L98EC
L98EC       .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00
            .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$14,$0C,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00
            .byte $00,$00,$00,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$0F
            .byte $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$3F,$FF,$FF,$FF,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$03,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$FF,$FF,$FF,$00,$FF,$FF,$0F,$00
L99F5       beq L99F5+1
            beq L99F9
L99F9       .byte $0F,$FF,$FF,$00,$FF,$FF
L99FF       .byte $0F,$00
L9A01       beq L9A01+1
            beq L9A05
L9A05       .byte $03,$FF,$FF,$00
            beq L9A0B
L9A0B       .byte $0F,$00
            beq L99FF
            .byte $0F,$00,$00,$3F,$FF,$00
            beq L9A17
L9A17       .byte $0F
            cpy #$F0
            beq L9A2B
            .byte $00,$00,$0F,$FF,$00
L9A21       beq L9A23
L9A23       .byte $0F
            cpy #$F0
            beq L9A37
            .byte $00,$00,$00
L9A2B       .byte $FF,$00
L9A2D       beq L9A2F
L9A2F       .byte $0F
            bmi L9A21+1
            beq L9A43
            .byte $00,$00,$00
L9A37       .byte $3F,$00,$FF
            beq L9A4B
L9A3C       bmi L9A2D+1
            beq L9A4F
            .byte $00,$00,$00
L9A43       .byte $0F,$14,$0C,$00,$FF
L9A48       beq L9A59
            .byte $0C
L9A4B       beq L9A3C+1
            .byte $0F,$00
L9A4F       .byte $00,$00,$0F,$00
            beq L9A55
L9A55       .byte $0F,$0C
            beq L9A48+1
L9A59       .byte $0F,$00,$00,$00,$3F,$00
            beq L9A61
L9A61       .byte $0F,$03
            beq L9A55
            .byte $0F,$00,$00,$00,$FF,$00
            beq L9A6D
L9A6D       .byte $0F,$03
            beq L9A61
            .byte $0F,$00,$00,$0F,$FF,$00
            beq L9A79
L9A79       .byte $0F,$00
            beq L9A6D
            .byte $0F,$00,$00,$3F,$FF,$00,$FF,$FF,$0F,$00
L9A87       beq L9A87+1
            beq L9A8B
L9A8B       .byte $03,$FF,$FF,$00,$FF,$FF,$0F,$00
L9A93       beq L9A93+1
            beq L9A97
L9A97       .byte $0F,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$03,$FF,$FF,$FF,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$3F,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00,$FF
            .byte $FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$0F,$FF,$FF,$FF,$FF,$00
            .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L9B36       .byte $62,$6F
            ror L7375
            .byte $00,$63
            adc #$74
            adc L0405,Y
            .byte $FF,$FF,$FF,$FF
            cpy #$CC
            cpy #$FF
            cpy LF3CC
            .byte $FF
            cpy #$C0
            .byte $F3,$FF,$FF,$FF,$FF,$FF
            ora RAMLO
            .byte $FF,$FF,$FF,$FF,$CF,$03,$33,$3F,$CF,$33,$33,$3F,$C3,$03,$00,$3F
            .byte $FF,$FF,$FF,$FF
L9B6C       .byte $22,$2F
            rol L3335
            .byte $00,$23
            and #$34
            and L2500,Y
            rol ICBAHZ,X
            .byte $32
            and L0000,Y
            .byte $00,$00,$00,$00
            eor (TEMP),Y
L9B84       bvc L9BD6
            bvc L9B88
L9B88       bmi L9BB9
            and #$2E
            .byte $34,$33
L9B8E       plp
            and #$27
            plp
            .byte $00,$33,$23,$2F,$32
L9B97       and ICBALZ
            and ICPTLZ
            and ICAX5Z
            bit L0000
            .byte $00,$23
            and #$34
            and #$25
            .byte $33
L9BA6       .byte $1A,$2B,$3C
            adc (ROWAC+1,X)
            sta (RAMLO+1,X)
            .byte $03
L9BAE       beq L9BAE+1
            .byte $FF
L9BB1       beq L9BB1+1
            .byte $FF
            bmi L9B84+1
            .byte $FF
            cpy #$3F
L9BB9       .byte $FF
L9BBA       beq L9BBA+1
            .byte $FF
L9BBD       .byte $00,$00
            and L3329
            .byte $33
            and #$2C
            and L0000
            .byte $23,$2F
            and L212D
            rol L0B24
            .byte $00,$00,$00
            php
            .byte $23
            ora #$00
L9BD6       .byte $12
            bpl L9BE8+1
            ora L0000,X
            bmi L9BFE
            and ICAX3Z,X
            .byte $00
            bit L2525
            .byte $00,$00
            bmi L9BE7
L9BE7       .byte $00
L9BE8       bit L3625
            and ICAX3Z
            .byte $00,$00,$33,$34
            and #$2B
            .byte $00,$22,$2F
            rol L3335
L9BF9       .byte $34,$22
            and (ICAX3Z,X)
L9BFD       .byte $33
L9BFE       .byte $34
            and #$2B
L9C01       ora ICDNOZ,X
L9C03       .byte $1B,$27
L9C05       .byte $00
            bpl L9C09
            .byte $02
L9C09       jsr LA401
            .byte $00,$02
            jsr LA005+1
            .byte $04
            bpl L9C24
            .byte $00
            stx L00FE
            rti
            .byte $04,$00
            cpy #$04
            bpl L9C2E
            .byte $00
            stx L00FE
            rti
            .byte $04,$00
L9C24       clc
            .byte $FF,$02
            bpl L9C4D
            php
            .byte $00
            jsr NGFLAG
L9C2E       ldy L00FF
            bpl L9C35+1
            .byte $00
            rti
            .byte $00
L9C35       bpl L9C38
            .byte $33
L9C38       rol L00FA,X
            bpl L9C3D
            sec
L9C3D       bmi L9C49+1
            bpl L9C41+1
L9C41       and LF540,X
            clc
            ora (CRITIC,X)
            rti
            .byte $FA
L9C49       bpl L9C4C
            .byte $47
L9C4C       rti
L9C4D       asl POKMSK
            bpl L9C51
L9C51       .byte $82,$02
            jsr L5101
            sty L0000
            bpl L9C5E
            lsr L0084,X
            .byte $FF
            sec
L9C5E       .byte $04,$00
            bpl L9C62
L9C62       .byte $04
            ora (L0000,X)
            .byte $2F,$0F,$04
            ora (L0000,X)
L9C6A       bmi L9C6A
            ora (DSKFMS,X)
            adc L00A4
            .byte $00
            ora (DSKFMS,X)
            ror
L9C74       bvc L9C74
            ora (ICHIDZ,X)
            .byte $6F
            ldy L0000
            ora (ICHIDZ,X)
            .byte $74
L9C7E       sty BFENLO
            .byte $00,$1A,$0F
L9C83       cpy L0084
            cpy L0000
            .byte $1A,$0F,$34
            cld
            .byte $34,$00
            sty APPMHI+1
            pha
            dey
            .byte $1A,$00,$34,$0F
            cpy L0000
            pha
            sty DSKUTL
            .byte $0F
            sec
            sty NOCKSM
            stx.w DSKUTL
            .byte $1C,$1C,$00
            ror L38C4
            pha
            .byte $3A,$00,$1C
            cpy L0084
            dey
            pla
            .byte $DA,$0C,$34,$00,$1A
            dey
            .byte $00,$34,$1A,$0F
            rol
L9CBA       bpl L9CC3+1
            .byte $00
            ora DOSINI,X
            .byte $00,$1A,$0F,$00
L9CC3       jsr RTCLOK
            rol DOSINI
            .byte $00
            plp
            bpl L9CCD
            rol
L9CCD       asl L2B01
            ora (CASINI),Y
            and DAUX1
            .byte $2F
            ora L3404
            bpl L9CDF
            sec
            .byte $13
            ora BPTR
L9CDF       .byte $0C
            ora SOUNDR
            asl L4406
            bpl L9CEB+2
            pha
            .byte $12,$07
            lsr
L9CEB       asl L4C07
            bpl L9CF6+1
            jmp L0712
            jmp L0714
L9CF6       jmp L0714
L9CF9       beq L9C83
            plp
            ldy #$78
            .byte $32,$80
            jmp (L8043+1)
            rts
            lsr
            rts
            bvc L9D58
            rti
            sec
            .byte $54
            jsr L5820
L9D0E       inc LFFFD,X
            ora (CASINI+1,X)
            ora CMCMD
L9D15       asl L00FE
            ora (CASINI+1,X)
            ora RAMLO+1
            .byte $03
            ora (L00FE,X)
L9D1E       cpy #$30
            .byte $0C,$03
L9D22       asl
            eor (L0095),Y
L9D25       .byte $57
L9D26       ora #$59
            asl SAVMSC+1
            .byte $0C,$5B,$03,$5B
            ora #$5B
            .byte $0F
            eor L5D00,X
            asl OLDCHR
            .byte $0C
L9D37       eor L5712,X
L9D3A       bvc L9D95
            eor L5359
            .byte $5B
            lsr
            .byte $5B
            bvc L9D9F
            lsr OLDCHR,X
            .byte $47
            eor L5D4D,X
            .byte $53
L9D4B       eor L5759,X
L9D4E       sty SAVMSC+1,X
            sta (SAVMSC+1),Y
            .byte $97,$5B
            stx L945A+1
            .byte $5B
L9D58       txs
            eor L5D8B,X
            sta (OLDCHR),Y
            .byte $97
L9D5F       eor L109D,X
L9D62       asl
            bcc L9D6E+1
            bpl L9D72
            bcc L9D74
L9D69       .byte $17
            plp
            and L6E5E,Y
L9D6E       ror L0405,X
            .byte $F3
L9D72       .byte $FF,$FF
L9D74       .byte $FF,$F3,$33,$FF,$FF,$C3
            bmi L9D4B
            .byte $FF,$00,$00,$03,$FF,$00,$00,$00,$FF,$07
            ora L00FF
            .byte $00,$00,$3F,$FF,$FC,$00,$00,$0F,$FF
            beq L9D93
L9D93       .byte $00,$03
L9D95       .byte $FF
            cpy #$00
            .byte $00,$00,$FF,$00,$00,$00,$00
L9D9F       .byte $3F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            jsr L8C18
            .byte $FF,$0C
            clc
            bmi L9DF1+1
            php
            .byte $03,$F3,$FF,$FF,$FC,$3F,$FF,$3F,$0F,$FF,$00,$00,$FF,$FF,$0F,$FF
            .byte $FC,$3F,$FF
L9DC6       beq L9DC6+1
            .byte $FF,$CF,$FF,$FF,$04
            clc
            and (L00FF),Y
            bmi L9DEA
            .byte $0C,$02
            php
            .byte $03,$FF,$CF,$FF,$FC
L9DDA       .byte $3F,$FF
            beq L9DDA
            .byte $FF,$00,$00,$FF
L9DE2       beq L9DE2+1
            .byte $FF,$FC,$3F,$FF,$FF,$0F
L9DEA       .byte $FF,$FF,$F3,$FF
            sta (OLDROW,X)
            .byte $3C
L9DF1       ror L3C7E,X
            .byte $5A
            sta (WARMST,X)
            .byte $03,$3F,$FC,$FF
            cpy LFF33
            beq L9E0F
            .byte $FF
            cpy #$03
            .byte $FF
            cpy #$03
            .byte $FF
            beq L9E18
            .byte $FF
            cpy LFF33
            .byte $3F,$FC
L9E0F       .byte $FF
            bpl L9E3A
            bpl L9E24
            sec
L9E15       bpl L9E17
L9E17       sed
L9E18       bvs L9E3A
            .byte $00,$03,$02,$33,$FF,$CF,$FF,$33,$FF,$03
L9E24       .byte $02,$CF,$FF,$CF,$FF,$33,$FF
L9E2B       .byte $0F,$C3,$3C
L9E2E       beq L9E2E+1
            .byte $CF
L9E31       .byte $3F,$3F,$CF,$FC,$3F,$F3,$CF,$CF,$F3
L9E3A       .byte $3F,$FC,$FC,$03,$FF
            beq L9E31
            .byte $FF,$C3,$FC,$3F,$0F,$FF,$0F,$3F,$FF,$CF,$FF,$00,$FF
L9E4E       beq L9E4E+1
            .byte $0F,$C3,$FF,$C3,$CF,$FF,$F3,$3F,$FF,$FC,$3F,$FF,$FC,$FF
            cpy #$3F
            .byte $FF,$FC,$3F,$C3,$FF,$F3,$FF,$FC,$FF,$CF,$FF,$FF,$3F,$CF,$FF,$FF
            .byte $3F,$3F,$FF,$FF,$CF,$3F,$FF,$FF,$CF,$FF
            beq L9E8B
            .byte $FF,$FF,$0F
L9E7F       beq L9E7F+1
            .byte $FC,$FF,$FF,$3F,$F3,$FF,$FF,$CF,$CF,$FF
L9E8B       .byte $FF,$F3,$CF,$FF,$FF,$F3,$3F,$FF,$FF,$FC,$3F,$FF,$FF,$FC
L9E99       .byte $B7,$9E
            sbc (L009E),Y
            .byte $2B,$9F,$2B,$9F
            sbc (L009E),Y
            adc L009F
            .byte $9F,$9F
L9EA7       cmp L139F,Y
            ldy #$B7
            .byte $9E,$B7,$9E
            eor L87A0
            ldy #$C1
            ldy #$FB
            ldy #$0E
            .byte $04,$00,$FF
            beq L9ECC
            .byte $00,$FF
            beq L9ED0
            .byte $00,$0F,$00,$0F,$00,$0F,$00,$0F,$00,$00,$00
L9ECC       .byte $0F,$00,$00,$00
L9ED0       .byte $0F,$00,$00,$00,$0F,$00,$00,$00,$0F,$00
            beq L9ECC
            .byte $0F,$00
            beq L9ED0
            .byte $0F,$00,$FF
            beq L9EF4
            .byte $00,$FF
            beq L9EF8
            .byte $00,$FF
            beq L9EFC
            .byte $00,$FF
            beq L9F00
            asl.w RAMLO
L9EF4       .byte $00,$00,$FF,$00
L9EF8       .byte $00,$00,$FF,$FF
L9EFC       .byte $00,$FF,$FF,$FF
L9F00       .byte $00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF
            .byte $00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF
            .byte $00,$FF,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF
            asl LF004
            .byte $00,$00,$FF
            beq L9F33
L9F33       .byte $00,$FF,$00,$FF
            beq L9F48
            .byte $00,$FF
            beq L9F4C
            .byte $00,$FF,$FF,$FF,$00,$FF,$FF,$FF
            beq L9F47
L9F47       .byte $00
L9F48       .byte $FF
            beq L9F4B
L9F4B       .byte $00
L9F4C       .byte $FF,$FF,$FF
            beq L9F60
            .byte $FF,$FF
            beq L9F64
            .byte $00,$FF
            beq L9F68
            .byte $00,$FF
            beq L9F6C
            beq L9F5F
L9F5F       .byte $00
L9F60       .byte $FF
            beq L9F63
L9F63       .byte $00
L9F64       .byte $FF
            asl.w RAMLO
L9F68       .byte $FF,$FF,$FF,$00
L9F6C       .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF
            asl.w RAMLO
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$00,$0F,$FF,$00,$00,$0F,$FF,$00
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF
            asl LFF04
            .byte $00,$00,$FF,$FF,$00,$00,$FF
            beq L9FF4
            beq L9FF6
            beq L9FF8
            beq L9FFA
            .byte $00,$FF,$FF,$FF,$00,$FF,$FF,$FF,$00
L9FF4       .byte $FF,$FF
L9FF6       .byte $FF,$00
L9FF8       .byte $FF,$FF
L9FFA       .byte $FF,$00,$FF,$FF,$FF,$00,$FF,$FF,$FF
            beq LA013+1
LA005       beq LA016
            beq LA018
            beq LA019+1
            .byte $FF,$00,$00,$FF,$FF,$00,$00,$FF
LA013       asl LF004
LA016       .byte $00,$00
LA018       .byte $FF
LA019       beq LA01B
LA01B       .byte $00,$FF,$00,$FF
            beq LA02F+1
            .byte $00,$FF
            beq LA033+1
            .byte $00,$FF
            beq LA037+1
            .byte $00,$FF
            beq LA03B+1
            .byte $00,$FF
LA02F       beq LA03F+1
            .byte $00,$FF
LA033       beq LA043+1
            .byte $00,$FF
LA037       beq LA048
            .byte $00,$FF
LA03B       beq LA04C
            .byte $00,$FF
LA03F       beq LA050
            .byte $00,$FF
LA043       beq LA054
            beq LA047
LA047       .byte $00
LA048       .byte $FF
            beq LA04B
LA04B       .byte $00
LA04C       .byte $FF
            asl LFF04
LA050       .byte $00,$0F,$FF,$FF
LA054       .byte $00,$0F,$FF
            beq LA068
            .byte $00,$FF
            beq LA06C
            .byte $00,$FF,$00,$FF
            beq LA072
            .byte $00,$FF
            beq LA076
            .byte $00
LA068       .byte $FF
            beq LA079+1
            .byte $00
LA06C       .byte $FF
            beq LA07D+1
            .byte $00,$00,$00
LA072       .byte $0F,$00,$00,$00
LA076       .byte $0F,$00,$FF
LA079       beq LA08A
            .byte $00,$FF
LA07D       beq LA08E
            .byte $00,$FF
            beq LA092
            .byte $00,$FF
            beq LA096
            asl.w RAMLO
LA08A       .byte $FF
            beq LA09B+1
            .byte $00
LA08E       .byte $FF
            beq LA09F+1
            .byte $00
LA092       .byte $0F
            beq LA0A4
            .byte $00
LA096       .byte $0F
            beq LA0A8
            .byte $00,$00
LA09B       beq LA0AC
            .byte $00,$00
LA09F       beq LA0B0
            .byte $00,$00,$00
LA0A4       .byte $0F,$00,$00,$00
LA0A8       .byte $0F,$00
            beq LA0AC
LA0AC       .byte $0F,$00
            beq LA0B0
LA0B0       .byte $0F,$00,$FF,$00,$0F,$00,$FF,$00,$0F,$00,$FF
            beq LA0CC
            .byte $00,$FF
            beq LA0D0
            asl.w RAMLO
            .byte $00,$0F,$FF,$00,$00,$0F,$FF,$00
LA0CC       .byte $FF,$00,$FF,$00
LA0D0       .byte $FF,$00,$FF,$00,$FF
            beq LA0E5+1
            .byte $00,$FF
            beq LA0E9+1
            .byte $00,$FF
            beq LA0EE
            .byte $00,$FF
            beq LA0F2
            .byte $00,$FF
LA0E5       beq LA0F6
            .byte $00,$FF
LA0E9       beq LA0FA
            .byte $00,$FF,$00
LA0EE       .byte $FF,$00,$FF,$00
LA0F2       .byte $FF,$00,$00,$0F
LA0F6       .byte $FF,$00,$00,$0F
LA0FA       .byte $FF
            asl LFF04
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            beq LA11B
            .byte $FF,$FF
            beq LA11E+1
            .byte $FF,$FF
            beq LA122+1
            .byte $FF
            beq LA117
LA117       .byte $00,$0F
            beq LA11B
LA11B       .byte $00,$0F,$FF
LA11E       beq LA12F
            .byte $FF,$FF
LA122       beq LA133
            .byte $FF,$FF
            beq LA136+1
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
LA12F       .byte $FF,$FF,$FF,$FF
LA133       .byte $FF,$FF,$0F
LA136       ora.w L0000
            .byte $00,$FF,$00,$FF,$00,$FF,$00,$00,$00,$FF,$FF,$00,$00,$00,$FF,$00
            .byte $FF,$00,$FF,$00,$00,$00,$FF,$FF,$00,$00,$00,$FF,$00,$FF,$00,$FF
            .byte $00,$00,$00,$FF,$FF,$FF,$00,$FF,$FF,$00,$FF,$00,$FF,$00,$FF,$FF
            .byte $FF,$FF,$FF,$00,$FF,$FF,$00,$FF,$00,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $00,$FF,$FF,$00,$FF,$00,$FF,$00,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF,$FF,$FF,$00,$FF,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$FF,$FF,$00,$FF,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$FF,$FF,$00,$FF,$FF,$00,$FF,$00,$FF,$00,$FF,$FF,$FF,$FF
            .byte $FF,$00,$FF,$FF,$00,$FF,$00,$FF,$00,$FF,$FF,$FF,$FF,$FF,$00,$FF
            .byte $FF,$00,$FF,$00,$FF,$00,$FF,$FF,$FF,$FF,$FF,$00,$FF,$FF,$00,$FF
            .byte $00,$FF,$00,$00,$00,$FF,$FF,$FF,$00,$FF,$FF,$00,$FF,$00,$FF,$00
            .byte $00,$00,$FF,$FF,$FF,$00,$FF,$FF,$00,$FF,$00,$FF,$00,$00,$00,$FF
            .byte $FF,$0F
            ora.w L0000
            .byte $00,$FF,$00,$FF,$00,$FF,$00,$00,$0F,$FF,$FF,$00,$00,$00,$FF,$00
            .byte $FF,$00,$FF,$00,$00,$03,$FF,$FF,$00,$00,$00,$FF,$00,$FF,$00,$FF
            .byte $00,$00,$00,$FF,$FF,$00,$FF,$FF,$FF,$00,$3F,$00,$FF,$00,$FF,$00
            .byte $3F,$FF,$00,$FF,$FF,$FF,$00,$3F,$00,$FF,$00,$FF
            cpy #$3F
            .byte $FF,$00,$FF,$FF,$FF,$00,$0F,$00,$FF,$00,$FF
            beq LA288
            .byte $FF,$00,$00,$00,$FF,$00,$0F,$00,$FF,$00,$FF
            beq LA295
            .byte $FF,$00,$00,$00,$FF,$00,$C3,$00,$FF,$00,$FF
            beq LA2A2
            .byte $FF,$00,$00,$00,$FF,$00
            beq LA26B
LA26B       .byte $FF,$00,$FF
            beq LA2AF
            .byte $FF,$00,$FF,$FF,$FF,$00
            beq LA278
LA278       .byte $FF,$00,$FF
            beq LA2BC
            .byte $FF,$00,$FF,$FF,$FF,$00,$FC,$00,$FF,$00,$FF
LA288       cpy #$3F
            .byte $FF,$00,$FF,$FF,$FF,$00,$FC,$00,$FF,$00,$FF
LA295       .byte $00,$3F,$FF,$00,$00,$00,$FF,$00,$FF,$00,$FF,$00,$00
LA2A2       .byte $00,$FF,$FF,$00,$00,$00,$FF,$00,$FF,$00,$FF,$00,$00
LA2AF       .byte $03,$FF,$FF,$00,$00,$00,$FF,$00,$FF,$00,$FF,$00,$00
LA2BC       .byte $0F,$FF,$FF
LA2BF       .byte $CB
LA2C0       ldx #$EB
            ldx #$0B
            .byte $A3,$2B,$A3,$4B,$A3,$6B,$A3
            asl
            .byte $03,$FC,$3F,$FF
            beq LA311
            .byte $FF
            cpy #$3F
            .byte $FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF,$FC,$3F,$FF
            cpy #$03
            .byte $FF
            cpy #$03
            .byte $FF
            asl
            .byte $03
            cpy #$03
            .byte $FF,$00,$00,$FF,$0F
LA2F4       beq LA2F4+1
            .byte $FF
LA2F7       beq LA2F7+1
            .byte $FF,$C3,$FF,$FC,$0F,$FF
            beq LA340
            .byte $FF,$C3,$FF,$FF,$00,$00,$FF,$00,$00,$FF
            asl
            .byte $03
            cpy #$03
            .byte $FF,$00
LA311       .byte $00,$FF,$0F
LA314       beq LA314+1
            .byte $FF
LA317       beq LA317+1
            .byte $FC,$03,$FF,$FC,$03,$FF,$FF
LA320       beq LA320+1
            .byte $0F
LA323       beq LA323+1
            .byte $00,$00,$FF
            cpy #$03
            .byte $FF
            asl
            .byte $03,$0F,$FF,$FF,$0F,$FF,$FF,$0F,$0F,$FF,$0F,$0F,$FF,$00,$03,$FF
            .byte $00,$03,$FF,$FF
LA340       .byte $0F,$FF,$FF,$0F,$FF,$FF,$0F,$FF,$FF,$0F,$FF
            asl
            .byte $03,$00,$03,$FF,$00,$03,$FF,$0F,$FF,$FF,$0F,$FF,$FF,$00,$03,$FF
            .byte $00,$00,$FF,$FF
LA360       beq LA360+1
            .byte $FF
LA363       beq LA363+1
            .byte $00,$00,$FF,$00,$03,$FF
            asl
            .byte $03
            cpy #$03
            .byte $FF,$00,$03,$FF,$0F,$FF,$FF,$0F,$FF,$FF,$00,$03,$FF,$00,$00,$FF
            .byte $0F
LA380       beq LA380+1
            .byte $0F
LA383       beq LA383+1
            .byte $00,$00,$FF
            cpy #$03
            .byte $FF
            asl
            .byte $13,$FF,$FF,$FC,$00,$3F
            beq LA394
LA394       .byte $FF,$00,$0F,$C3,$FC,$3C,$00,$03
            beq LA39E
LA39E       .byte $3F,$FF,$3F,$CF,$FC,$00,$0F
            cpy #$00
            .byte $3F,$00,$0F,$C3,$FC,$3C,$00,$03
            cpy #$00
            .byte $3F,$FF,$0F,$0F,$FC,$3F,$C3,$C3,$FC,$3F
LA3BB       beq LA3BB+1
            cpy #$FC
            .byte $3F
LA3C0       beq LA3C0+1
            .byte $C3,$FF,$FF,$FF
            cpy #$3F
            .byte $FC,$3F,$C3,$C3,$FC,$3F
LA3CE       beq LA3CE+1
            cpy #$3C
            .byte $3F
LA3D3       beq LA3D3+1
            .byte $C3,$FF,$FF,$FF
LA3D9       beq LA3D9+1
            .byte $FC,$3F,$C3,$C3,$FC,$3F
LA3E1       beq LA3E1+1
            .byte $C3,$0C,$3F
LA3E6       beq LA3E6+1
            beq LA3EC+1
            .byte $FF,$FF
LA3EC       beq LA3EC+1
            .byte $FC,$00,$0F,$C3,$FC,$3F
LA3F4       beq LA3F4+1
            .byte $C3,$0C,$3F
LA3F9       beq LA3F9+1
            .byte $FC,$00,$FF,$FF
            cpy #$3F
LA401       .byte $FC,$00,$3F,$C3,$FC,$3F
LA407       beq LA407+1
            .byte $C3
            cpy #$3F
LA40C       beq LA40C+1
            .byte $FF,$FC,$3F,$FF,$0F,$0F,$FC,$3F,$FF,$C3,$FC,$3F
LA41A       beq LA41A+1
            .byte $C3
            beq LA45E
LA41F       beq LA41F+1
            .byte $FF,$FC,$3F,$FF,$3F,$CF,$FC,$3F,$FF
            cpy #$00
            .byte $3F,$00,$0F,$C3,$FC,$3F
LA432       beq LA432+1
            cpy #$00
            .byte $3F,$FF,$FF,$FF,$FC,$3F,$FF
            beq LA43F
LA43F       .byte $FF,$00,$0F,$C3,$FC,$3F
LA445       beq LA445+1
            cpy #$00
            .byte $FF,$FF
            ror L6D80
            .byte $2F
            sta (COLAC,X)
            .byte $80
;
            org $BE00
;
            .byte $80
            cpy #$D0
            bne LBDD5
            dec RAMLO
            bpl LBD8F
            cmp L1180
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            sta L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
LBE2D       ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            sta L0D8D
            ora L0D8D
            ora L0D8D
            ora L468D
            .byte $00,$0F
            eor L1B80
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L8D8D
            ora L0D8D
            sta L0D8D
            ora L0D8D
            ora.w SOUNDR
            .byte $BE
;
            org $BEA0
;
            bvs LBF11+1
            bvs LBEEA
            .byte $04
            bpl LBE2D
            asl L0086
            asl L0086
            asl FMSZPG+3
            .byte $00,$0F
            stx TRAMSZ
            stx TRAMSZ
            stx TRAMSZ
            stx ATRACT
            ldy #$19
            sta L0D0D
            sta L0D0D
            sta L0D0D
            sta L0D0D
            sta L0D0D
            sta L0D0D
            sta L0D0D
            sta L0D0D
            sta L0D8D
            sta L8D0C+1
            sta L0D0D
            sta L0D0D
            eor (L00A0,X)
            .byte $BE
;
            org $BF00
;
            bvs LBF70+2
            bvs LBF49+1
            .byte $04
            bpl LBF0C+1
            asl ATRACT
            jsr L0112
LBF0C       jsr L66BF
            pla
            .byte $80
LBF11       cpy #$D0
            bne LBEE5
            dec RAMLO
            bpl LBE9F
            cmp L1180
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            sta L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
LBF49       ora L0D8D
            sta L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L0D8D
            ora L8D8D
            ora L0D8D
            sta L0D8D
LBF70       ora L0D8D
            ora L1041
            .byte $BF
LBF77       jmp (L3B6A)
            .byte $80,$80,$6B,$2B
            rol
            .byte $6F,$80
            bvs LBFF8
            .byte $9B
            adc #$2D
            and L8075+1,X
            .byte $63,$80,$80,$62
            sei
            .byte $7A,$34,$80,$33
            rol DSKUTL+1,X
            and BUFRLO,X
            and (ICAX3Z),Y
            jsr L6E2E
            .byte $80
            adc L812E+1
            .byte $72,$80
            adc KEYDEF
            .byte $7F,$74,$77
            adc (RECVDN),Y
            .byte $80
            bmi LBFE2
            ror L3C38,X
            rol L6866,X
            .byte $64,$80,$82,$67,$73,$61
;
            org $BFFA
;
            nop
            sty L0400
            .byte $00,$80
;
            org $02E2
;
            .word L7FF8
;
         
