; 
            icl 'Congo Bongo.inc'
;
; Start of code
;
            org $2020
;
            lsr SAVADR+1
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
	icl 'hiscore.asm'
	
            org $7FE1
;
L7FE1       lda #$F2
            sta SDLSTL
            lda #$7F
            sta SDLSTH
L7FEB       lda RTCLOK+2
L7FED       cmp RTCLOK+2
            beq L7FED
            rts
            bvs L8064
            bvs L8037
            .byte $F2,$7F
L7FF8       ldx #$00
            txa
L7FFB       sta LOMEM,X
            inx
            bpl L7FFB
L8000       lda VVBLKD
            sta L0087
            lda VVBLKD+1
            sta L0088
L800A       lda VCOUNT
            cmp #$5F
            bne L800A
            ldx #$04
L8013       lda LB28D+2,X
            sta COLOR0,X
            dex
            bpl L8013
            lda #$00
            sta L009A
            sta L009C
            lda #$30
            sta L009B
            sta L009D
            ldx #$00
L802A       lda L8122,X
            cmp #$FF
            beq L803D
            ldy L8166,X
            sty L1012
L8037       jsr L83B2
            jmp L802A
L803D       lda #$E0
            sta CHBAS
            sta CHBASE
            lda #$97
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            jsr L82F2
            ldy #$E8
            ldx #$00
L8060       lda L008A,X
            and #$0F
L8064       clc
            adc #$D0
            sta L3000,Y
            dey
            lda L008A,X
            and #$F0
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$D0
            sta L3000,Y
            dey
            inx
            cpx #$03
            bcc L8060
L807F       ldx #$14
            jsr L810F
            ldx #$F0
            lda #$00
L8088       sta L33BF,X
            sta L34AF,X
            dex
            bne L8088
            ldx #$37
L8093       lda L81A9,X
            sta L3462,X
            dex
            bpl L8093
            lda #$1E
            sta COLOR4
            lda #$AF
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            lda #$40
            sta POKMSK
            sta IRQEN
            lda #$FF
            sta CH
L80B7       lda VCOUNT
            cmp #$2D
            bcc L80B7
L80BE       lda CH
            cmp #$1E
            beq L80C9
            cmp #$1F
            bne L80BE
L80C9       nop
            nop
            nop
            eor #$FF
            and #$01
            sta L0086
            ldx #$36
L80D4       lda L81E1,X
            sta L34DA,X
            dex
            bpl L80D4
            lda #$40
            sta POKMSK
            sta IRQEN
            lda #$FF
            sta CH
L80E9       lda VCOUNT
            cmp #$2D
            bcc L80E9
L80F0       lda CH
            cmp #$01
            beq L80FB
            cmp #$05
            bne L80F0
L80FB       and #$04
            sta L0089
            lda #$FF
            sta CH
            jsr L7FE1
            lda #$f4
            sta COLOR4
            jmp L8217+1
L810F       stx L06E8
L8112       ldy #$00
L8114       ldx #$00
L8116       dex
            bne L8116
            dey
            bne L8114
            dec L06E8
            bne L8112
            rts
L8122       .byte $00
            lsr
            .byte $00
            lsr
            .byte $00
            lsr
            .byte $00,$63,$6F
            ror L6F67
            .byte $00,$62,$6F
            ror L6F67
            .byte $00
            lsr
            .byte $00
            lsr
            .byte $00
            lsr
            .byte $00
            plp
            and #$27
            plp
            .byte $00,$33,$23,$2F,$32
            and L0000
            php
            .byte $23
            ora #$00
            ora (DSKFMS+1),Y
            clc
            .byte $13,$00,$33
            and ICPTHZ
            and (L0000,X)
            and ICAX5Z
            .byte $34
            and BUFRLO
            bmi L818D
            and #$33
            and BUFRHI
            .byte $0C,$00
            and #$2E
            .byte $23,$00,$FF
L8166       .byte $13,$14
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            .byte $02,$00,$00,$00,$00,$00
            ora (L0000,X)
            .byte $00,$00,$00,$00,$02
            ora (BRKKEY,X)
            ora (BRKKEY,X)
            .byte $14
            clc
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$57,$00,$00,$00
L818D       .byte $00,$00,$00,$00,$00
            ora (L0000,X)
            .byte $00,$00,$00,$04,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$02
L81A9       sbc L00EE
            .byte $F4
            sbc L00F2
            .byte $DA,$00,$00,$00,$00,$00
L81B4       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            cmp (L0000),Y
            inc L00EF
            .byte $F2,$00
            cmp (L0000),Y
            beq L81B4
L81C8       sbc (L00F9,X)
            sbc L00F2
            .byte $00,$00,$00,$00,$00,$00,$D2,$00
            inc L00EF
            .byte $F2,$00,$D2,$00
            beq L81C8
            sbc (L00F9,X)
            sbc L00F2
            .byte $F3
L81E1       sbc L00EE
            .byte $F4
            sbc L00F2
            .byte $DA,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            nop
            .byte $00
            inc L00EF
            .byte $F2,$00
            nop
            .byte $EF
            sbc LF4F3,Y
            sbc #$E3
            .byte $EB,$00,$00,$00,$00,$00,$00,$EB,$00
            inc L00EF
            .byte $F2,$00,$EB
            sbc L00F9
            .byte $E2,$EF
            sbc (L00F2,X)
L8217       cpx L00A0
            sta.w L00A9
L821C       sta L0000,Y
            iny
            bne L821C
L8222       sta L0600,Y
            sta L1000,Y
            sta L1300,Y
            sta L1400,Y
            sta L1500,Y
            sta L1600,Y
            sta L1700,Y
            dey
            bpl L8222
            sta AUDCTL
            sta LOMEM+1
            sty L00A7
            sty L101B
            sty L101C
L8247       lda VCOUNT
            cmp #$5F
            bcc L8247
            lda #$10
            sta PMBASE
            lda #$3E
            sta SDMCTL
            lda #$03
            sta SKCTL
            sta GRACTL
            lda #$01
            sta GPRIOR
            sta LOMEM
            lda #$40
            sta POKMSK
            sta IRQEN
            lda #$0F
            sta PCOLR0
            lda #$38
            sta PCOLR1
            lda #$24
            sta L009A
            lda #$B9
            sta L009B
            lda #$00
            sta L009C
            lda #$08
            sta L009D
            jsr L82F8
            lda #$AD
            sta L009A
            lda #$B9
            sta L009B
            jsr L82F8
            lda #$24
            sta L009A
            lda #$B9
            sta L009B
            lda #$00
            sta L009C
            lda #$0C
            sta L009D
            jsr L82F8
            lda #$BE
            sta L009A
            lda #$BB
            sta L009B
            jsr L82F8
            ldy #$00
            lda #$80
            sta L009A
            lda #$37
            sta L009B
L82BE       lda #$8E
            sta (L009A),Y
            inc L009A
            bne L82C8
            inc L009B
L82C8       lda L009B
            cmp #$3B
            bne L82BE
            lda L009A
            cmp #$40
            bne L82BE
            ldx L0086
L82D6       jsr L832D
            inc L00A8,X
            inc L101B,X
            lda #$02
            sta L00A6,X
            dex
            bpl L82D6
            sta L00EC
            sta L00B8
            jmp L8381
L82EC       lda #$40
            sta NMIEN
            rts
L82F2       lda #$C0
            sta NMIEN
            rts
L82F8       ldy #$00
L82FA       lda (L009A),Y
            cmp #$73
            beq L832C
            sta (L009C),Y
            inc L009A
            bne L8308
            inc L009B
L8308       inc L009C
            bne L82FA
            inc L009D
            bne L82FA
L8310       cpx #$01
            beq L8320
            sta L3006,Y
            sta L33C6,Y
            sta L3B46,Y
            jmp L8329
L8320       sta L3010,Y
            sta L33D0,Y
            sta L3B50,Y
L8329       dey
            bpl L8310
L832C       rts
L832D       sed
            clc
            lda L0095,X
            adc #$01
            sta L0095,X
            cld
            rts
L8337       lda #$4B
            sta L0082
            lda #$A0
            sta L0083
            lda #$D8
            sta L0084
            lda #$A0
            sta L0085
            rts
L8348       lda #$C0
            sta L0082
            lda #$9F
            sta L0083
            rts
L8351       lda #$00
            sta L0082
            lda #$A0
            sta L0083
            rts
L835A       lda #$02
            sta L00A5
            lda #$8B
            sta L0084
            lda #$A0
            sta L0085
            rts
L8367       lda #$01
            sta L00A5
            lda #$B6
            sta L0084
            lda #$A0
            sta L0085
            rts
L8374       lda #$03
            sta L00A5
            lda #$70
            sta L0084
            lda #$A0
            sta L0085
            rts
L8381       jsr L8A8C
            jsr L8B9A
            jsr L8337
            jsr L8BA7
            lda #$00
            sta L009A
            lda #$30
            sta L009B
            lda #$C0
            sta L009C
            lda #$33
            sta L009D
            ldx #$00
L839F       lda LB4A1+1,X
            cmp #$FF
            beq L83BE
            ldy LB58D,X
            sty L1012
L83AC       jsr L83B2
            jmp L839F
L83B2       sta (L009A),Y
            sta (L009C),Y
            dey
            bpl L83B2
            jsr L8E9F
            inx
            rts
L83BE       ldx #$00
L83C0       lda LB676+1,X
            cmp #$FF
            beq L83D3
            ldy LB74A,X
            sty L1012
            jsr L83B2
            jmp L83C0
L83D3       ldx #$00
            ldy #$00
L83D7       lda LB81B+1,X
            sta L009A
            lda LB81D,X
            sta L009B
            txa
            lsr
            tax
            lda LB8CC,X
            sta (L009A),Y
            txa
            asl
            tax
            inx
            inx
            cmp #$B0
            bcc L83D7
            jsr L8AEA
            ldy #$AC
            ldx #$87
            lda #$07
            jsr SETVBV
            lda #$08
            sta CHBAS
            lda #$57
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            lda #$D8
            sta VDSLST
            lda #$89
            sta VDSLST+1
            jsr L82F2
            jsr L8A99
            ldy #$13
L841F       sta L00EC,Y
            dey
            bpl L841F
            ldx #$C4
            lda #$50
            jsr L92EA
            ldx #$07
            ldy #$5D
L8430       tya
            sta L067E,X
            dey
            dex
            bpl L8430
            ldx #$0B
L843A       lda LB19E+1,X
            sta L069B,X
            dex
            bpl L843A
            stx L00B8
            stx L06C7
            stx L06C1
L844B       lda L00F1
            bne L8472
            lda L0099
            cmp #$18
            bcs L8464
            lda L0098
            cmp #$7D
            bcc L8464
            lda #$00
            sta L00F8
L845F       inc L0099
            jmp L8472
L8464       lda L0099
            cmp #$30
            bcs L8472
            lda L0098
            cmp #$98
            bcc L8472
            sta L00ED
L8472       lda L1003
            cmp #$20
            bcc L8497
            lda #$00
            sta L1003
            lda L0699
            asl
            tax
L8483       lda LAFD9,X
            sta L00D7
            lda LAFD9+1,X
            sta L00D8
            dec L0699
            bpl L8497
            lda #$02
            sta L0699
L8497       lda L1002
            cmp L00AA
            bcs L84E3
L849E       lda #$B9
            sta L009E
            lda #$84
            sta L009F
            lda L0099
            sta L0601
            ldy #$00
            ldx #$00
            jsr LAD4B
            cpx #$01
            bne L84CE
            jmp L873D
            lsr L7A6C
            tay
            plp
            pla
            .byte $00
            rts
L84C1       bcc L84C1
            rti
            inc LFE00,X
            .byte $00
            plp
            ldy #$FE
L84CB       bmi L84CB
            .byte $FF
L84CE       lda P1PF
            and #$04
            bne L84D8
            jmp L873D
L84D8       lda L00B8
            bne L84E0
            lda #$FF
            sta L00F1
L84E0       jmp L873D
L84E3       ldx L0661
            cpx #$04
            bcs L84F2
            jsr L84FD
            inc L0661
            bne L84E3
L84F2       lda #$00
            sta L0661
            sta L1002
            jmp L849E
L84FD       lda L0662,X
            bne L8555
            sta L066E,X
            lda RANDOM
            and L00AC
            beq L852E
            cmp #$04
            bcs L852E
            sta L0662,X
            ldy #$03
            lda RANDOM
            and #$1F
            ora #$04
            sta L069A
L851F       lda L0666,Y
            beq L852F
            cmp L069A
            bcs L852F
            lda #$00
            sta L0662,X
L852E       rts
L852F       dey
            bpl L851F
            lda #$F1
            sta L00E6
            lda #$AF
            sta L00E7
            jsr L86CC
            lda #$97
            sta L066A,X
            jsr L85B0
            ldy #$00
            lda (L00CF),Y
            sta L0686,X
            iny
            lda (L00CF),Y
            sta L068A,X
            lda L0662,X
L8555       asl
            tax
            lda LAFDD,X
            sta L00C9
            lda LAFDD+1,X
            sta L00CA
            ldx L0661
            jsr L85B0
            ldy L0666,X
            cpx L06B8
            bne L8581
            cpy #$03
            bcc L8581
            lda #$E5
            sta L00E6
            lda #$AF
            sta L00E7
            sta L06B8
            jsr L86CC
L8581       inc L0666,X
            lda (L00C9),Y
            bmi L85A2
            bne L85AA
            sta L0662,X
            sta L0666,X
            ldy #$00
            lda L0686,X
            sta (L00CF),Y
            sta (L00D1),Y
            iny
            lda L068A,X
            sta (L00CF),Y
            sta (L00D1),Y
            rts
L85A2       and #$7F
            jsr L85CF
            jmp L85AD
L85AA       jsr L85E5
L85AD       jmp L85FB
L85B0       clc
            lda #$00
            adc L066A,X
            sta L00CF
            lda #$30
            adc L066E,X
            sta L00D0
            clc
            lda #$C0
            adc L066A,X
            sta L00D1
            lda #$33
            adc L066E,X
            sta L00D2
            rts
L85CF       sta L0698
            sec
            lda L066A,X
            sbc L0698
            sta L0672,X
            lda L066E,X
            sbc #$00
            sta L0676,X
            rts
L85E5       sta L0698
            clc
            lda L066A,X
            adc L0698
            sta L0672,X
            lda L066E,X
            adc #$00
            sta L0676,X
            rts
L85FB       clc
            lda #$00
            adc L0672,X
            sta L00CB
            lda #$30
            adc L0676,X
            sta L00CC
            clc
            lda #$C0
            adc L0672,X
            sta L00CD
            lda #$33
            adc L0676,X
            sta L00CE
L8619       lda L0661
            clc
            adc L0697
            sta L0698
            tax
            ldy L0696
            lda L0686,X
            sta (L00CF),Y
            sta (L00D1),Y
            lda (L00CB),Y
            sta L068E,X
            sta L067D
            lda #$08
            sta L067C
            jsr L871D
            clc
            lda #$00
            adc L067A
            sta L00D3
            lda #$08
            adc L067B
            sta L00D4
            lda L0698
            sta L067D
            lda #$08
            sta L067C
            jsr L871D
            clc
            lda #$B0
            adc L067A
            sta L00D5
            lda #$0A
            adc L067B
            sta L00D6
            ldy #$07
L866C       lda (L00D7),Y
            ora (L00D3),Y
            sta (L00D5),Y
            dey
            bpl L866C
            ldy L0696
            ldx L0698
            lda L067E,X
            sta (L00CB),Y
            sta (L00CD),Y
            lda L068E,X
            sta L0686,X
            lda L0697
            bne L86A7
            clc
            adc #$04
            sta L0697
            iny
            sty L0696
            clc
            lda L00D7
            adc #$08
            sta L00D7
            lda L00D8
            adc #$00
            sta L00D8
            jmp L8619
L86A7       lda #$00
            sta L0696
            sta L0697
            ldx L0661
            lda L0672,X
            sta L066A,X
            lda L0676,X
            sta L066E,X
            sec
            lda L00D7
            sbc #$08
            sta L00D7
            lda L00D8
            sbc #$00
            sta L00D8
            rts
L86CC       tya
            pha
            stx L06B8
            lda #$04
            sta L06B9
            lda #$46
            sta L00CB
            lda #$30
            sta L00CC
            lda #$06
            sta L00CD
            lda #$34
            sta L00CE
            ldy #$00
L86E8       lda (L00E6),Y
            sta (L00CB),Y
            sta (L00CD),Y
            iny
            cpy L06B9
            bcc L86E8
            cpy #$0C
            bcc L86FE
            ldx L06B8
            pla
            tay
            rts
L86FE       clc
            lda L00CB
            adc #$24
            sta L00CB
            clc
            lda L00CD
            adc #$24
            sta L00CD
            lda L00CE
            adc #$00
            sta L00CE
            clc
            lda L06B9
            adc #$04
            sta L06B9
            bne L86E8
L871D       lda #$00
            sta L067B
            ldx #$08
L8724       asl
            rol L067B
            asl L067C
            bcc L8736
            clc
            adc L067D
            bcc L8736
            inc L067B
L8736       dex
            bne L8724
            sta L067A
            rts
L873D       lda L00F3
            beq L8769
            sta L00EC
L8743       lda LOMEM
            bne L8743
            ldx L0097
            dec L00A6,X
            jsr L8AA3
            bne L875E
            jsr L8B86
            ldx L0097
            lda L00A8,X
            cmp #$01
            beq L8764
            jmp L9740
L875E       jsr L8B3A
            jmp L800A
L8764       sta L00A0
            jmp L8381
L8769       lda L00ED
            bne L8791
            jsr LA0D9
            lda L1000
            and #$10
            bne L8784
            lda #$57
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            jmp L844B
L8784       lda #$77
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            jmp L844B
L8791       ldx L0097
            inc L00A8,X
            lda #$00
            sta L00A0
            jsr L8351
            jsr L8B4B
L879F       lda LOMEM
            bne L879F
            jmp L96CC
L87A6       jsr L8B9A
L87A9       jmp (L0087)
            lda #$00
            sta ATRACT
            sta L00B8
            lda LOMEM+1
            bne L87A6
            inc L00FD
            jsr L9F46
            lda L00EC
            ora L00ED
            bne L87A9
            lda P1PL
            sta L06BF
            sta HITCLR
            jsr L8B9A
            lda L06BA
            ora L06BB
            beq L8835
            lda L06C2
            bne L880A
            lda L00FA
            bne L8835
            lda L0089
            beq L87EA
            lda L06C7
            bne L8835
            jmp L87F1
L87EA       ldx L0097
            lda TRIG0,X
            bne L8835
L87F1       jsr L8367
            ldx #$FF
L87F6       inx
            lda L06BA,X
            beq L8806
            inc L06BE
            lda #$08
            sta L06C2
            bne L880A
L8806       cmp #$00
            beq L87F6
L880A       lda L1004
            and #$01
            bne L8835
            lda L06C2
            cmp #$05
            bcc L881F
            dec L0099
            dec L0099
            jmp L8823
L881F       inc L0099
            inc L0099
L8823       ldx #$08
            jsr L9DE7
            ldx #$00
            jsr L8C0F
            ldx #$01
            jsr L8C0F
            dec L06C2
L8835       ldx #$00
            jsr L8C66
            ldx #$01
            jsr L8C66
            lda L1004
            cmp L00AB
            bcs L8849
            jmp L8A69
L8849       lda L00F1
            bne L8877
            ldx L06A7
            cpx #$04
            bcs L8877
            cpx #$02
            bcs L8866
            lda L06BA,X
            ora L06BC,X
            ora L06C4
            ora L06C3
            bne L8869
L8866       jsr L8882
L8869       inc L06A7
            lda L06A8,X
L886F       beq L8849
            dec L06A8,X
            jmp L8849
L8877       ldx #$00
            stx L06A7
            stx L1004
L887F       jmp L8A69
L8882       lda L06A3,X
            asl
            tay
            lda LB177,Y
            sta L00DC
            lda LB177+1,Y
            sta L00DD
            lda L06A8,X
            bne L88C1
            ldy L06AC,X
            inc L06AC,X
            lda (L00DC),Y
            beq L88ED
            sta L06A8,X
            ldy L06AC,X
            inc L06AC,X
            lda (L00DC),Y
            and #$0F
            sta L06B0,X
            cmp #$0F
            beq L88B7
            jsr L89A0
L88B7       lda (L00DC),Y
            ldy #$FF
            sty L06B4
L88BE       jmp L8917
L88C1       lda L06B0,X
            jsr L89A0
            lda L06A8,X
            and #$02
            beq L88E4
            ldy L06AC,X
            dey
            lda (L00DC),Y
            bmi L88DD
L88D6       ldy #$FF
            sty L06B4
            bne L88BE
L88DD       ldy #$00
            sty L06B4
            beq L88BE
L88E4       ldy L06AC,X
            dey
            lda (L00DC),Y
            jmp L88D6
L88ED       sta L06AC,X
            sta L06A8,X
            cpx #$00
            beq L88FE
            cpx #$01
            beq L890B
            jmp L897A
L88FE       lda #$01
            sta L06B5
            lda #$02
            sta L06B6
L8908       jmp L8934
L890B       lda #$03
            sta L06B5
            lda #$04
            sta L06B6
            bne L8908
L8917       and #$70
            lsr
            lsr
            tay
            lda L06B4
            bne L8923
            iny
            iny
L8923       txa
            asl
            tax
            lda LB188+1,Y
            sta L00DE,X
            lda LB18A,Y
            sta L00DF,X
            txa
            lsr
            tax
            rts
L8934       lda L06A3,X
            beq L8959
            cmp L06B5
            beq L8945
            lda L06B5
            sta L06A3,X
            rts
L8945       lda L06A5,X
            cmp #$08
            beq L8953
            lda L06B6
            sta L06A3,X
            rts
L8953       lda #$00
            sta L06A3,X
            rts
L8959       lda #$C8
            sta L069B,X
            lda #$80
            sta L069F,X
            sta L069D,X
            lda #$98
            sta L06A1,X
            lda L06B5
            sta L06A3,X
            lda #$05
            sta L06A5,X
            sta L06B7
            rts
L897A       lda L06A3,X
            cmp #$07
            bcc L8984
            beq L899A
            rts
L8984       lda L06B7
            bne L898F
            lda #$06
            sta L06A3,X
            rts
L898F       lda #$07
            sta L06A3,X
            lda #$00
            sta L06B7
            rts
L899A       lda #$08
            sta L06A3,X
            rts
L89A0       lsr
            bcc L89AD
L89A3       lsr
            bcc L89BB
L89A6       lsr
            bcc L89C9
L89A9       lsr
            bcc L89D1
            rts
L89AD       dec L069F,X
            dec L069F,X
            dec L069F,X
            dec L069F,X
            bne L89A3
L89BB       inc L069F,X
            inc L069F,X
            inc L069F,X
            inc L069F,X
            bne L89A6
L89C9       dec L069B,X
            dec L069B,X
            bne L89A9
L89D1       inc L069B,X
            inc L069B,X
            rts
            pha
            txa
            pha
            tya
            pha
            lda VCOUNT
            cmp #$20
            bcc L89E8
            cmp #$4C
            bcc L8A2B
L89E8       jsr L82EC
            lda L069B
            sta HPOSP2
            ldx L069F
            ldy #$0F
L89F6       lda (L00DE),Y
            sta L1600,X
            inx
            dey
            bpl L89F6
            lda L069C
            sta HPOSP3
            ldx L06A0
            ldy #$0F
L8A0A       lda (L00E0),Y
            sta L1700,X
            inx
            dey
            bpl L8A0A
            lda #$26
            sta VDSLST
            lda #$8A
            sta VDSLST+1
            jsr L82F2
            pla
            tay
            pla
            tax
            pla
            rti
            pha
            txa
            pha
            tya
            pha
L8A2B       jsr L82EC
            lda L069D
            sta HPOSP2
            ldx L06A1
            ldy #$0F
L8A39       lda (L00E2),Y
            sta L1600,X
            inx
            dey
            bpl L8A39
            lda L069E
            sta HPOSP3
            ldx L06A2
            ldy #$0F
L8A4D       lda (L00E4),Y
            sta L1700,X
            inx
            dey
            bpl L8A4D
            lda #$D8
            sta VDSLST
            lda #$89
            sta VDSLST+1
            jsr L82F2
            pla
            tay
            pla
            tax
            pla
            rti
L8A69       ldx #$08
L8A6B       inc L1000,X
            dex
            bpl L8A6B
            ldx L0097
            lda TRIG0,X
            beq L8A7C
            lda #$00
            sta L00FA
L8A7C       jsr L8C2A
            jsr L8BEE
            jmp (L0087)
L8A85       lda VCOUNT
            cmp #$5A
            bcc L8A85
L8A8C       lda #$00
            tax
L8A8F       sta L1400,X
            sta L1500,X
            inx
            bne L8A8F
            rts
L8A99       lda #$00
            tay
L8A9C       sta L0600,Y
            iny
            bne L8A9C
            rts
L8AA3       ldx L0086
L8AA5       lda L101B,X
            bne L8AC6
            lda L00A6,X
            bpl L8AC6
            txa
            pha
            jsr L8A8C
            sta COLOR4
            ldx #$0A
            jsr L810F
            pla
            tax
            lda #$00
            sta L0095,X
            lda #$FF
            sta L101B,X
L8AC6       dex
            bpl L8AA5
            lda L101B
            and L101C
            beq L8AE0
            ldx #$05
            jsr L9800
            ldx #$08
            jsr L9800
            lda #$FF
            sta LOMEM+1
            rts
L8AE0       lda #$f4
            sta COLOR4
            lda #$00
            sta LOMEM+1
            rts
L8AEA       ldx #$09
            ldy #$23
            lda #$02
            jsr L979E
            lda #$FF
            sta L06E4
            ldx L0097
            inx
            stx L301D
            stx L33DD
            stx L3B5D
            dex
            beq L8B0B
            ldx #$0C
            bne L8B0D
L8B0B       ldx #$0B
L8B0D       ldy #$26
            lda #$01
            jsr L979E
            lda L0086
            beq L8B21
            ldx #$06
            ldy #$0F
            lda #$03
            jsr L979E
L8B21       ldx #$03
            ldy #$05
            lda #$03
            jsr L979E
            lda #$0A
            ldx L0086
L8B2E       ldy L00A6,X
L8B30       dey
            bmi L8B36
            jsr L8310
L8B36       dex
            bpl L8B2E
            rts
L8B3A       jsr L82EC
            jsr L8A8C
            sta COLOR4
            ldx #$0C
            jsr L810F
	    jmp hiscore
            ;; jmp L8B9A
L8B4B       lda L00FD
            cmp #$05
            bcc L8B4B
            lda #$00
            sta L00FD
            lda #$01
            jsr L9790
            ldx #$09
            ldy #$23
            lda #$02
            jsr L979E
            lda #$01
            jsr L977C
            jsr L8BEE
            ldx L0097
            beq L8B76
            ldx #$06
            ldy #$0F
            jmp L8B7A
L8B76       ldx #$03
            ldy #$05
L8B7A       lda #$03
            jsr L979E
            lda L0094
            ora L0093
            bne L8B4B
            rts
L8B86       lda L0097
            eor #$FF
            and #$01
            tax
            lda L0095,X
            bne L8B97
            txa
            eor #$FF
            and #$01
            tax
L8B97       stx L0097
            rts
L8B9A       lda #$00
            tax
L8B9D       sta L1600,X
            sta L1700,X
            inx
            bne L8B9D
L8BA6       rts
L8BA7       ldx L0097
            lda L0095,X
            sta L1017
L8BAE       tay
            dey
            cpy #$09
            bcs L8BE9
            lda LAFFC+1,Y
            sta L00AA
            sec
            sbc #$04
            sta L00AF
            lda LB006,Y
            sta L00AB
            asl
            sta L00B0
            asl
            asl
L8BC8       adc #$03
            sec
            sbc L00AF
            sta L00AD
            sec
            sbc #$07
            sta L00AE
            lda LB00F,Y
            sta L00AC
            lda LB018,Y
            sta L0094
            lda LB028,Y
            sta L00B3
            lda LB020+1,Y
            sta L00B2
            rts
L8BE9       lda #$90
            sta L0094
            rts
L8BEE       ldx L0097
            lda L00B6,X
            bne L8BA6
            cpx #$00
            beq L8BFD
            lda L0091,X
            jmp L8BFF
L8BFD       lda L008F,X
L8BFF       cmp #$01
            bne L8C29
            inc L00A6,X
            ldy L00A6,X
            dey
            lda #$0A
            sta L00B6,X
            jmp L8310
L8C0F       lda L06BA,X
            beq L8C29
            lda L06C2
            cmp #$05
            bcc L8C23
            dec L069F,X
            dec L069F,X
            bne L8C29
L8C23       inc L069F,X
            inc L069F,X
L8C29       rts
L8C2A       lda L06DA
            ora L00EC
            ora L00ED
            bne L8C29
            inc L06E4
            lda L06E4
            cmp #$40
            bcc L8C29
            lda #$00
            sta L06E4
            lda L0094
            ora L0093
            beq L8C56
            lda #$01
            jsr L9790
            ldx #$09
            ldy #$23
            lda #$02
            jmp L979E
L8C56       ldy #$FF
            ldx L0097
            lda L00A8,X
            cmp #$01
            beq L8C63
            inc L00F2
            rts
L8C63       sty L00F1
L8C65       rts
L8C66       lda L06C3
            bne L8CB8
            lda L06C4
            bne L8CBB
            lda L06BA,X
            bne L8CC1
            lda L06BC,X
L8C78       bne L8CBE
            lda L00F1
            bne L8C65
            lda L00F8
            bne L8C65
            lda L0098
            cmp #$88
            bcc L8C65
            lda L0099
            cmp #$80
            bcs L8C65
            lda L06BF
            cpx #$00
            bne L8CB1
            and #$04
            beq L8C65
L8C99       lda L1017
            cmp #$03
            bcc L8C65
            lda L1004
            cmp L00AB
            bcc L8C65
            lda RANDOM
            and L00AC
            bne L8C65
            jmp L8D85
L8CB1       and #$08
            beq L8C65
            jmp L8C99
L8CB8       jmp L8DC7
L8CBB       jmp L8DE2
L8CBE       jmp L8CF9
L8CC1       lda L06BE
            bmi L8CD7
            lda L0099
            clc
            adc #$08
            sta L069F,X
            sta L06BC,X
            lda #$00
            sta L06BA,X
            rts
L8CD7       cmp #$FA
            bne L8CF8
            sta L06C4
            lda #$00
            sta L06BA
            sta L06BB
            lda L069F
            clc
            adc #$05
            sta L069F
            lda L06A0
            clc
            adc #$05
            sta L06A0
L8CF8       rts
L8CF9       lda L1004
            cmp L00AB
            bcc L8CF8
            inc L06C0
            cpx #$00
            bne L8D26
            lda L069B,X
            cmp #$C4
            bcc L8D4D
            lda L069F,X
            cmp #$78
            bcc L8D62
            lda #$01
            sta L06A3,X
            lda #$C8
            sta L069B,X
            lda #$80
            sta L069F,X
            bne L8D47
L8D26       lda L069B,X
            cmp #$9C
            bcs L8D5A
            cmp #$94
            bcc L8D4D
            lda L069F,X
            cmp #$78
            bcc L8D62
            lda #$04
            sta L06A3,X
            lda #$80
            sta L069F,X
            lda #$98
            sta L069B,X
L8D47       lda #$00
            sta L06BC,X
            rts
L8D4D       jsr L89D1
L8D50       lda L069F,X
            cmp #$78
            bcc L8D62
            jmp L8D68
L8D5A       dec L069B,X
            dec L069B,X
            bne L8D50
L8D62       inc L069F,X
            inc L069F,X
L8D68       cpx #$00
            bne L8D7B
            lda L06C0
            and #$01
            bne L8D77
            ldy #$04
            bne L8D82
L8D77       ldy #$06
            bne L8D82
L8D7B       lda L06C0
            and #$01
            asl
            tay
L8D82       jmp L8923
L8D85       lda #$00
            sta L06A8,X
            sta L06AC,X
            lda #$08
            sta L06A3,X
            sta L06BA,X
            lda L06BE
            sec
            sbc #$03
            sta L06BE
            lda L0099
            sec
            sbc #$06
            sta L069F,X
            cpx #$00
            bne L8DB6
            lda L0098
            sec
            sbc #$05
            sta L069B,X
            ldy #$0C
            bne L8D82
L8DB6       lda L0098
            clc
            adc #$06
            sta L069B,X
            lda #$E1
            sta L00E0
            lda #$B0
            sta L00E1
L8DC6       rts
L8DC7       cpx #$00
            beq L8DE1
            ldx #$08
            jsr L9DE7
            inc L0099
            lda L0099
            cmp #$B8
            bcc L8DE1
            lda #$FF
            sta L00F1
            lda #$00
            sta L06C3
L8DE1       rts
L8DE2       lda L1004
            and #$01
            bne L8DC6
            cpx #$00
            beq L8DE1
            inc L06C0
            lda L06C0
            and #$01
            sta L06B4
            lda L069B
            cmp #$96
            bcc L8E15
            cmp #$A2
            bcs L8E2E
            lda L069F
            cmp #$7C
            bcc L8E47
L8E0A       sta L06C3
            lda #$00
            sta L06C4
            jmp L835A
L8E15       inc L069B
            inc L069C
            inc L0098
            lda #$10
            ldx #$00
            jsr L8917
            lda #$10
L8E26       ldx NGFLAG
            jsr L8917
            jmp L8E51
L8E2E       dec L069B
            dec L069C
            dec L0098
L8E36       lda #$00
            ldx #$00
            jsr L8917
            lda #$00
            ldx #$01
            jsr L8917
            jmp L8E51
L8E47       inc L069F
            inc L06A0
            inc L0099
            bne L8E36
L8E51       ldx #$08
            jmp L9DE7
L8E56       jsr L8A8C
            jsr L8B9A
L8E5C       jsr L8337
            jsr L8A99
            ldy #$14
L8E64       sta L1000,Y
            dey
            bpl L8E64
            sty L06DB
            lda #$6C
            sta L100A
            jsr L8BA7
            jsr L82EC
            lda #$40
            sta L009A
            lda #$3B
            sta L009B
            ldx #$00
L8E82       lda LB293+1,X
            cmp #$FF
            beq L8EB2
            ldy LB331,X
L8E8C       sty L1012
            jsr L8E95
            jmp L8E82
L8E95       sta (L009A),Y
            dey
            bpl L8E95
L8E9A       jsr L8E9F
            inx
            rts
L8E9F       ldy L1012
L8EA2       inc L009A
            bne L8EA8
            inc L009B
L8EA8       inc L009C
            bne L8EAE
            inc L009D
L8EAE       dey
L8EAF       bpl L8EA2
            rts
L8EB2       ldx #$00
L8EB4       lda LB3CC+1,X
            cmp #$FF
            beq L8EC7
L8EBB       ldy LB438,X
            sty L1012
            jsr L8E95
            jmp L8EB4
L8EC7       ldx #$00
L8EC9       lda LB1CF,X
L8ECC       sta L060A,X
            lda LB1CF+1,X
            sta L060B,X
            inx
            inx
            cpx #$18
            bcc L8EC9
            ldx #$00
L8EDD       lda L8F37,X
            sta L0604,X
            inx
            cpx #$06
            bcc L8EDD
            ldx #$00
            txa
L8EEB       sta L0622,X
            sta L063D,X
            sta L062E,X
            sta L064C,X
            inx
            cpx #$0C
            bcc L8EEB
            ldx #$02
L8EFE       sta L0649,X
            sta L063A,X
            dex
            bpl L8EFE
            inc L063B
            lda #$02
            sta L063D
            lda #$06
            sta L063E
            inc L0630
            inc L062F
            lda #$08
            sta L0641
            sta L0642
            inc L0625
            inc L0628
            inc L0623
            inc L0629
            inc L0629
            inc L062D
            jmp L8F3C+1
L8F37       rti
            lsr L446C,X
            .byte $62
L8F3C       bvs L8F5E
            .byte $43,$8F
            jmp L8FC0
L8F43       ldx #$00
L8F45       lda L060A,X
            sta L009E
            lda L060B,X
            sta L009F
            txa
            lsr
            tax
            lda L0622,X
            sta L1013
            lda L063D,X
            sta L1014
L8F5E       lda L064C,X
            sta L1015
            txa
            asl
            tax
            jsr L8F71
            inx
            inx
            cpx #$06
            bcc L8F45
            rts
L8F71       txa
            pha
            ldx #$00
            ldy #$00
L8F77       lda L1013
            cmp #$01
            beq L8F8F
            lda L1015
            bne L8F89
            lda LB1EB+2,X
            jmp L8F9D
L8F89       lda LB1F9,X
            jmp L8F9D
L8F8F       lda L1015
            bne L8F9A
            lda LB1E5+2,X
            jmp L8F9D
L8F9A       lda LB1F2+1,X
L8F9D       pha
            tya
            clc
            adc L1014
            tay
            pla
            sta (L009E),Y
            inx
            iny
            tya
            sec
            sbc L1014
            tay
            and #$03
            cmp #$03
            bcc L8F77
            cpx #$06
            bcs L8FBD
            ldy #$28
            bne L8F77
L8FBD       pla
            tax
            rts
L8FC0       jsr L8FC6
            jmp L90AB
L8FC6       ldx #$00
L8FC8       lda L0610,X
            sta L009E
            lda L0611,X
            sta L009F
            txa
            lsr
            tax
            lda L0625,X
            sta L1013
            lda L064F,X
            sta L1015
            lda L0658,X
            sta L065F
            jsr L9001
            txa
            asl
            tax
            inx
            inx
            lda L0660
            bne L8FF9
            cpx #$0A
            bcc L8FC8
            rts
L8FF9       cpx #$08
            bcc L8FC8
            dec L0660
            rts
L9001       txa
            pha
            ldx #$00
            ldy #$00
L9007       lda L1013
            cmp #$01
            beq L9043
            cmp #$02
            beq L9074
            lda L1015
            bne L9028
            lda L065F
            bne L9022
            lda LB1FE+1,X
            jmp L9082
L9022       lda LB234+1,X
            jmp L9082
L9028       cmp #$02
            bcs L903D
            lda L065F
            bne L9037
            lda LB206+2,X
            jmp L9082
L9037       lda LB23C+2,X
            jmp L9082
L903D       lda LB223,X
            jmp L9082
L9043       lda L1015
            bne L9059
            lda L065F
            bne L9053
            lda LB211,X
            jmp L9082
L9053       lda LB247,X
            jmp L9082
L9059       cmp #$02
            bcs L906E
            lda L065F
            bne L9068
            lda LB21A,X
            jmp L9082
L9068       lda LB250,X
            jmp L9082
L906E       lda LB22C,X
            jmp L9082
L9074       lda L0653
            bne L907F
            lda LB259,X
            jmp L9082
L907F       lda LB261+1,X
L9082       sta (L009E),Y
            inx
            iny
            tya
            and #$03
            cmp #$03
            bcs L9090
            jmp L9007
L9090       cpx #$06
            bcs L909F
            inc L009E
            bne L909A
            inc L009F
L909A       ldy #$28
            jmp L9007
L909F       cpx #$09
            bcs L90A8
            ldy #$50
            jmp L9007
L90A8       pla
            tax
            rts
L90AB       jsr L90B1
            jmp L9121
L90B1       ldx #$00
L90B3       lda L061E,X
            sta L009E
            lda L061F,X
            sta L009F
            txa
            lsr
            tax
            lda L062C,X
            sta L1013
            lda L0656,X
            sta L1015
            txa
            asl
            tax
            jsr L90D9
            inx
            inx
            cpx #$04
            bcc L90B3
            rts
L90D9       txa
            pha
            ldx #$00
            ldy #$00
L90DF       lda L1013
            bne L90F5
            lda L1015
            bne L90EF
            lda LB274,X
            jmp L9103
L90EF       lda LB26B,X
            jmp L9103
L90F5       lda L1015
            bne L9100
            lda LB27D,X
            jmp L9103
L9100       lda LB284+2,X
L9103       sta (L009E),Y
            inx
            iny
            tya
            and #$03
            cmp #$03
            bcc L90DF
            cpx #$06
            bcs L9116
            ldy #$28
            bne L90DF
L9116       cpx #$09
            bcs L911E
            ldy #$50
            bne L90DF
L911E       pla
            tax
            rts
L9121       ldx L0097
            lda L0095,X
            sta L1017
            tay
            dey
            cpy #$09
            bcs L9134
            lda LB018,Y
            jmp L9136
L9134       lda #$90
L9136       sta L0094
            jsr L8AEA
            ldx #$90
            lda #$34
            jsr L92EA
L9142       lda L00A0
            beq L9142
            lda #$00
            sta L00A0
            ldy #$A2
            ldx #$92
            lda #$07
            jsr SETVBV
            lda #$0C
            sta CHBAS
            lda #$37
            sta SDLSTL
            lda #$BF
            sta SDLSTH
            jsr L82F2
            jsr L8A8C
            ldx #$06
L916A       sta L00EC,X
            dex
            bpl L916A
L916F       lda L00ED
            beq L919D
L9173       lda LOMEM
            bne L9173
            ldx L0097
            dec L00A6,X
            jsr L8AA3
            bne L9194
            jsr L8B86
            ldx L0097
            lda L00A8,X
            cmp #$02
            beq L919A
            lda #$FF
            sta L00A0
            sta L00B8
            jmp L9264
L9194       jsr L8B3A
            jmp L800A
L919A       jmp L9209
L919D       lda L00EC
            beq L91BE
            lda #$FF
            sta L00EC
            sta L00B8
            jsr L8B9A
            ldx L0097
            jsr L832D
            dec L00A8,X
            jsr L8351
            jsr L8B4B
L91B7       lda LOMEM
            bne L91B7
            jmp L9264
L91BE       lda L100F
            cmp L00AE
            bne L91CD
            lda #$00
            sta L100F
            jsr L93D5
L91CD       lda L1011
            cmp L00AF
            bne L91DC
            lda #$00
            sta L1011
            jsr L9633
L91DC       lda L101A
            beq L91EC
            lda L1010
            cmp L1018
            bcc L9216
            jmp L91F3
L91EC       lda L1010
            cmp L00AD
            bcc L9216
L91F3       lda #$00
            sta L1010
            sta L101A
            jsr L9499
            lda L0657
            bne L9210
            inc L0657
            jmp L9213
L9209       lda #$FF
            sta L00A0
            jmp L8E56
L9210       dec L0657
L9213       jsr L90B1
L9216       lda L100E
            cmp L00B0
            bne L9225
            lda #$00
            sta L100E
            jsr L95A0
L9225       lda L100D
            and #$40
            bne L9248
            ldy #$00
L922E       lda L926C,Y
            sta L0CD0,Y
            lda L9284,Y
            sta L0CC0,Y
            lda L9294,Y
            sta L0D00,Y
            iny
            cpy #$08
            bcc L922E
            jmp L916F
L9248       ldy #$00
L924A       lda L9274,Y
            sta L0CD0,Y
            lda L927C,Y
            sta L0CC0,Y
            lda L928C,Y
            sta L0D00,Y
            iny
            cpy #$08
            bcc L924A
            jmp L916F
L9264       ldx #$07
            jsr L810F
            jmp L8381
L926C       .byte $00
            ora (COLCRS),Y
            .byte $77,$FF,$FF,$FF,$FF
L9274       ora (COLCRS),Y
            .byte $77,$FF,$FF,$FF,$FF,$FF
L927C       ror
            ror
            ror
            ror
            .byte $5A,$DA
            dec L00F6,X
L9284       .byte $5A,$5A,$5A,$5A
            dec L00D6,X
            sbc L00F5,X
L928C       tax
            tax
            ror
            ror
            .byte $5A,$5A
            dec L00D6,X
L9294       ror
            ror
            .byte $5A,$5A
            lsr L00D6,X
            sbc L00F5,X
L929C       jsr L8B9A
            jmp (L0087)
            lda #$00
            sta ATRACT
            lda LOMEM+1
            bne L929C
            inc L101D
            inc L00FD
            inc L06C9
            lda #$CA
            sta COLPM2
            sta COLPM3
L92BA       lda P1PL
            sta L06BF
            sta HITCLR
            jsr L9F46
            lda #$01
            sta VDSLST
            lda #$93
            sta VDSLST+1
            lda L00EC
            ora L00ED
            bne L92E7
            jsr L988C
            ldx #$0D
L92DB       inc L1005,X
            dex
            bpl L92DB
            jsr L8C2A
            jsr L8BEE
L92E7       jmp (L0087)
L92EA       sta L0098
            clc
            adc #$04
            sta L06D1
            txa
            sta L0099
            clc
            adc #$13
            sta L06D0
            jsr LA4D5+1
            jmp LA4F1+1
            pha
            txa
            pha
            tya
            pha
            lda L0604
            sta HPOSP2
            lda L0607
            sta HPOSP3
            ldy L0649
            ldx #$00
L9317       cpy #$00
            bne L932A
            lda LB1AA+1,X
            sta L1675,X
            lda LB1B4,X
            sta L1775,X
            jmp L9336
L932A       lda LB1BD,X
            sta L1675,X
            lda LB1C6,X
            sta L1775,X
L9336       inx
            cpx #$09
            bcc L9317
            lda #$4B
            sta VDSLST
            lda #$93
            sta VDSLST+1
            pla
            tay
            pla
            tax
            pla
            rti
            pha
            txa
            pha
            tya
            pha
            lda L0605
            sta HPOSP2
            lda L0608
            sta HPOSP3
            ldy L064A
            ldx #$00
L9361       cpy #$00
            bne L9374
            lda LB1AA+1,X
            sta L16A5,X
            lda LB1B4,X
            sta L17A5,X
            jmp L9380
L9374       lda LB1BD,X
            sta L16A5,X
            lda LB1C6,X
            sta L17A5,X
L9380       inx
            cpx #$09
            bcc L9361
            lda #$95
            sta VDSLST
            lda #$93
            sta VDSLST+1
            pla
            tay
            pla
            tax
            pla
            rti
            pha
            txa
            pha
            tya
            pha
            lda L0606
            sta HPOSP2
            lda L0609
            sta HPOSP3
            ldy L064B
            ldx #$00
L93AB       cpy #$00
            bne L93BE
            lda LB1AA+1,X
            sta L16D5,X
            lda LB1B4,X
            sta L17D5,X
            jmp L93CA
L93BE       lda LB1BD,X
            sta L16D5,X
            lda LB1C6,X
            sta L17D5,X
L93CA       inx
            cpx #$09
            bcc L93AB
            pla
            tay
            pla
            tax
            pla
            rti
L93D5       ldx #$00
L93D7       lda L060A,X
            sta L009E
            lda L060B,X
            sta L009F
            txa
            lsr
            tax
            lda L063D,X
            sta L1014
            txa
            asl
            pha
            ldx #$00
            ldy #$00
L93F1       lda #$8E
            pha
            tya
            clc
            adc L1014
            tay
            pla
            sta (L009E),Y
            inx
            iny
            tya
            sec
            sbc L1014
            tay
            and #$03
            cmp #$03
            bcc L93F1
            cpx #$06
            bcs L9413
            ldy #$28
            bne L93F1
L9413       pla
            tax
            inx
            inx
            cpx #$06
            bcc L93D7
            ldx #$00
L941D       lda L062E,X
            sta L1016
            lda L063D,X
            cmp #$06
            jsr L944A
            sta L063D,X
            lda L1016
            sta L062E,X
            lda L064C,X
            bne L943F
            inc L064C,X
            jmp L9442
L943F       dec L064C,X
L9442       inx
            cpx #$03
            bcc L941D
            jmp L8F43
L944A       bne L946D
            ldy L1016
            cpy #$01
            bcs L9456
            inc L1016
L9456       ldy L0622,X
            cpy #$01
            beq L9464
            cpy #$03
            bcs L9464
            inc L0622,X
L9464       jmp L948E
L9467       sec
            sbc #$01
            jmp L9498
L946D       cmp #$00
            bne L948E
            ldy L1016
            beq L9479
            dec L1016
L9479       ldy L0622,X
            beq L9485
            cpy #$02
            beq L9485
            dec L0622,X
L9485       jmp L948E
L9488       clc
            adc #$01
            jmp L9498
L948E       ldy L1016
            cpy #$01
            bcc L9488
            jmp L9467
L9498       rts
L9499       ldx #$00
L949B       lda L0610,X
            sta L009E
            lda L0611,X
            sta L009F
            txa
            pha
            ldx #$00
            ldy #$00
L94AB       lda #$8E
            sta (L009E),Y
            iny
            inx
            tya
            and #$03
            cmp #$03
            bcc L94AB
            cpx #$06
            bcs L94C6
            inc L009E
            bne L94C2
            inc L009F
L94C2       ldy #$28
            bne L94AB
L94C6       cpx #$09
            bcs L94CE
            ldy #$50
            bne L94AB
L94CE       dec L009E
            lda L009E
            cmp #$FF
            bne L94D8
            dec L009F
L94D8       pla
            lsr
            tax
            lda L0625,X
            beq L94E6
            jsr L9548
            jmp L94E9
L94E6       jsr L952B
L94E9       txa
            asl
            tax
            lda L009E
            sta L0610,X
            lda L009F
            sta L0611,X
            txa
            lsr
            tax
            lda L0625,X
            beq L9504
            inc L0640,X
L9501       jmp L9507
L9504       dec L0640,X
L9507       lda L0640,X
            beq L9516
            cmp #$08
            bne L9519
            dec L0625,X
            jmp L9519
L9516       inc L0625,X
L9519       txa
            asl
            tax
            inx
            inx
            cpx #$08
            bcs L9525
            jmp L949B
L9525       inc L0660
            jmp L8FC6
L952B       lda L009E
            cmp #$29
            bcc L9539
            sec
            sbc #$29
            sta L009E
            jmp L955D
L9539       lda #$FF
            sec
            sbc #$28
            clc
            adc L009E
            sta L009E
            dec L009F
            jmp L955D
L9548       lda L009E
            cmp #$D7
            bcs L9556
            clc
            adc #$29
            sta L009E
            jmp L955D
L9556       sec
            sbc #$D7
            sta L009E
            inc L009F
L955D       lda L0658,X
            bne L958B
            lda L064F,X
            bne L956D
            inc L064F,X
            jmp L9572
L956D       lda #$00
            sta L064F,X
L9572       lda L1017
            cmp #$03
            bcc L958A
            lda L101A
            bne L958A
            lda RANDOM
            and L00B3
            bne L958A
            lda #$02
            sta L0658,X
L958A       rts
L958B       dec L0658,X
            bne L959F
            lda #$02
            sta L064F,X
            lda L00AD
            lsr
            lsr
            sta L1018
            sta L101A
L959F       rts
L95A0       lda L0618
            sta L009E
            lda L0619
            sta L009F
            ldx #$00
            ldy #$00
L95AE       lda #$0C
            sta (L009E),Y
            iny
            inx
            tya
            and #$03
            cmp #$03
            bcc L95AE
            cpx #$06
            bcs L95C9
            inc L009E
            bne L95C5
            inc L009F
L95C5       ldy #$28
            bne L95AE
L95C9       cpx #$09
            bcs L95D1
            ldy #$50
            bne L95AE
L95D1       dec L009E
            lda L009E
            cmp #$FF
            bne L95DB
            dec L009F
L95DB       lda L009E
            cmp #$29
            bcc L95E9
            sec
            sbc #$29
            sta L009E
            jmp L95F5
L95E9       lda #$FF
            sec
            sbc #$28
            clc
            adc L009E
            sta L009E
            dec L009F
L95F5       lda L0653
            bne L9600
            inc L0653
            jmp L9603
L9600       dec L0653
L9603       inc L0644
            lda L0644
            cmp #$0D
            bcc L9624
            lda #$00
            sta L0644
            sta L0653
            lda LB1DC+1
            sta L0618
            lda LB1DC+2
            sta L0619
            jmp L962E
L9624       lda L009E
            sta L0618
            lda L009F
            sta L0619
L962E       ldx #$08
            jmp L8FC8
L9633       ldx #$02
L9635       lda L0604,X
            cmp L9672,X
            bcs L9648
            cmp L9674+1,X
L9640       bne L964B
            inc L063A,X
            jmp L964B
L9648       dec L063A,X
L964B       lda L063A,X
            beq L965F
            inc L0604,X
            inc L0604,X
            inc L0607,X
            inc L0607,X
            jmp L966B
L965F       dec L0604,X
            dec L0604,X
            dec L0607,X
            dec L0607,X
L966B       jsr L9677+1
            dex
            bpl L9635
            rts
L9672       lsr OLDADR
L9674       ror NOCKSM,X
            .byte $54
L9677       jmp (L09BD)
            bpl L9640+1
            .byte $B2
            bcs L9685
            lda #$00
L9681       sta L0649,X
            rts
L9685       lda #$01
            bne L9681
L9689       jsr L82EC
            ldy #$1F
L968E       lda LBF37,Y
            sta L3F00,Y
            dey
            bpl L968E
            iny
            sty L00A1
            lda #$04
            ldy #$16
L969E       sta L3F06,Y
            dey
            bpl L969E
            lda #$00
            sta L3F1E
            lda #$3F
            sta L3F1F
            rts
L96AF       jsr L9689
            lda #$C0
            sta L3F04
            lda #$33
            sta L3F05
            lda #$08
            sta CHBAS
            lda #$00
            sta SDLSTL
            lda #$3F
            sta SDLSTH
            rts
L96CC       jsr L96AF
            ldy #$DB
            ldx #$96
            lda #$07
            jsr SETVBV
            jmp L8E56
            lda #$00
            sta ATRACT
            sta L00FC
            jsr L8A8C
            jsr L8B9A
            jsr L9F46
            inc L00A1
            lda L00A0
            bne L9734
            lda L00A1
            cmp #$08
            bcc L9721
            lda #$00
            sta L00A1
            clc
            lda L3F04
            adc #$28
            sta L3F04
            lda L3F05
            adc #$00
            sta L3F05
            cmp #$3B
            bne L9721
            lda L3F04
            cmp #$40
            bne L9721
            lda #$FF
            sta L00A0
            lda #$00
            sta L00FC
            jmp (L0087)
L9721       lda L3F05
            cmp #$37
            bne L9734
            lda L3F04
            cmp #$80
            bne L9734
            lda #$0C
            sta CHBAS
L9734       jmp (L0087)
L9737       ldy #$49
            ldx #$97
            lda #$07
            jmp SETVBV
L9740       jsr L96AF
            jsr L9737
            jmp L8E56
            lda #$00
            sta ATRACT
            jsr L8A8C
            jsr L8B9A
            inc L00A1
            lda L00A1
            cmp #$F0
            bcc L975F
            lda #$FF
            sta L00A0
L975F       jmp (L0087)
L9762       sed
            ldx L0097
            beq L9769
            inx
            inx
L9769       clc
            adc L008D,X
            sta L008D,X
            lda L008E,X
            adc #$00
            sta L008E,X
            lda L008F,X
            adc #$00
            sta L008F,X
            cld
            rts
L977C       sed
            ldx L0097
            beq L9783
            inx
            inx
L9783       clc
            adc L008E,X
            sta L008E,X
            lda L008F,X
            adc #$00
            sta L008F,X
            cld
            rts
L9790       sta L06E2
            sed
            sec
            lda L0094
            sbc L06E2
            sta L0094
            cld
            rts
L979E       sta L06E3
            txa
            clc
            adc L06E3
            sta L06E3
L97A9       lda L008A,X
            and #$0F
            sta L3000,Y
            sta L33C0,Y
            sta L3B40,Y
            dey
            lda L008A,X
            and #$F0
            lsr
            lsr
            lsr
            lsr
            sta L3000,Y
            sta L33C0,Y
            sta L3B40,Y
            dey
            inx
            cpx L06E3
            bcc L97A9
            rts
L97D0       txa
            pha
            tya
            pha
            lda L06C6
            cmp #$0F
            beq L97FB
            lda L06C1
            bne L97FB
            lda #$10
            sta L06C1
            jsr L9762
            ldy L0097
            bne L97F2
            ldx #$03
            ldy #$05
            bne L97F6
L97F2       ldx #$06
            ldy #$0F
L97F6       lda #$03
            jsr L979E
L97FB       pla
            tay
            pla
            tax
            rts
L9800       ldy #$02
L9802       lda L008A,X
            cmp L008A,Y
            bcc L9819
            beq L9815
L980B       lda L008A,X
            sta L008A,Y
            dex
            dey
            bpl L980B
            rts
L9815       dex
            dey
            bpl L9802
L9819       rts
L981A       lda L06C5
            bne L9819
            lda L0098
            cmp #$B0
            bcc L9819
            sta L06C5
            jsr L8374
            jmp L982E
L982E       lda #$00
L9830       clc
            adc #$8A
            sta L009A
            lda #$30
            adc #$03
            sta L009B
            jsr L9866
            lda #$C0
            clc
            adc #$8A
            sta L009A
            lda #$33
            adc #$03
            sta L009B
            jsr L9866
            lda #$05
            jsr L977C
            ldx L0097
            bne L985D
            ldx #$03
            ldy #$05
            bne L9861
L985D       ldx #$06
            ldy #$0F
L9861       lda #$03
            jmp L979E
L9866       lda #$06
            sta L06D2
            ldy #$02
            jsr L987D
            tya
            clc
            adc #$24
            tay
            adc #$04
            sta L06D2
            jmp L987D
L987D       lda (L009A),Y
            dey
            dey
            sta (L009A),Y
            iny
            iny
            iny
            cpy L06D2
            bcc L987D
            rts
L988C       lda #$00
            sta L06D9
            sta L06CD
            lda L0089
            beq L98AD
L9898       ldx #$FF
            lda CH
            sta L00B5
            stx CH
            cmp #$FF
            beq L98B4
            and #$40
            beq L98B4
            jmp L98B8
L98AD       ldx L0097
            lda TRIG0,X
            beq L98B8
L98B4       lda #$00
            sta L00DB
L98B8       lda L00EE
            beq L98D7
            jsr L8A8C
            dec L0099
            lda L0099
            cmp #$28
            bcs L98D4
            sta L00ED
            lda #$00
            sta L00EE
            sta L00F1
L98CF       sta L00F2
            jmp L8A8C
L98D4       jmp L9A58
L98D7       lda L00F2
            beq L98E1
            jsr L8A8C
            jmp LA598
L98E1       jsr LA4F1+1
            lda L06DA
            beq L9924
            lda L06C9
            cmp #$20
            bne L98FB
            ldx #$04
            jsr L9DE7
            jsr L8367
            jmp L9A1D
L98FB       cmp #$40
            bne L9912
            ldx #$0C
            jsr L9DE7
            jsr L8367
            lda #$01
            sta L0656
            jsr L90B1
L990F       jmp L9A1D
L9912       cmp #$FF
            bcc L990F
            lda #$00
            sta L06DA
            jsr L8351
            lda #$FF
            sta L00EC
            bne L990F
L9924       lda L1005
            cmp #$09
            bcc L996D
            lda #$00
            sta L1005
            lda L06CC
            beq L994F
            lda L06DE
            bne L993F
            lda #$0E
            jmp L9941
L993F       lda #$0D
L9941       jsr L9B79
            ldx #$14
            jsr L9DBE
            dec L06CC
            jmp L9A01
L994F       lda L06CB
            beq L996D
            lda L06DE
            bne L995D
            lda #$0E
            bne L995F
L995D       lda #$0D
L995F       jsr L9B79
            ldx #$10
            jsr L9DBE
            dec L06CB
            jmp L9A01
L996D       lda L06DB
            bmi L9978
            jsr L9AB6
            jmp L9A01
L9978       lda L0089
            beq L9990
            lda L00DB
            bne L99AE
            lda L00B5
            cmp #$FF
            beq L998D
            and #$40
            bne L999B
            jmp L99AE
L998D       jmp L9A1E
L9990       lda L00DB
            bne L99AE
            ldx L0097
            lda TRIG0,X
            bne L99AE
L999B       lda #$FF
            sta L00DB
            jsr L9A7D
            jsr L9AB6
            jmp L9A01
L99A8       lda L06C6
            jmp L99BD
L99AE       jsr L9A35
            lda L0089
            bne L99A8
            ldx L0097
            lda STICK0,X
            sta L06C6
L99BD       cmp #$0F
            beq L9A1E
            jsr L9E52
            ldx L1006
            cpx #$05
            bcc L9A01
            ldx #$00
            stx L1006
            lda L06C6
            jsr L9B79
            jsr L9BDE
            jsr L9D7D
            bne L99FE
            jsr L9C3A
            lda L06CB
            ora L06CC
            ora L00EE
            bne L9A01
            lda L06CD
            beq L99FE
            lda #$01
            sta L06D9
            lda L06C6
            jsr L9B79
            jmp L9A01
L99FE       jsr L9DA1
L9A01       lda L06D1
            cmp #$BE
            bcc L9A1D
            lda L06D0
            cmp #$59
            bcs L9A1D
            sta L06DA
            lda #$00
            sta L06CC
            sta L06CB
            sta L06C9
L9A1D       rts
L9A1E       lda L06D3
            ora L06D4
            ora L06D5
L9A27       bne L9A2F
            jsr L9C3A
            jmp L9A01
L9A2F       jsr L9E52
            jmp L9A01
L9A35       lda L0089
            beq L9A4F
            ldx #$FF
            lda L00B5
            and #$3F
L9A3F       inx
            cpx #$09
            bcs L9A50
            cmp LAEFC,X
            bne L9A3F
            lda LAEF2+1,X
            sta L06C6
L9A4F       rts
L9A50       lda #$0F
            sta L06C6
            ldx #$08
            rts
L9A58       lda L0098
            sta HPOSP0
            sta HPOSP1
            ldx L0099
            ldy #$17
L9A64       lda LA565,Y
            sta L1400,X
            lda LA57D,Y
            sta L1500,X
            inx
            dey
            bpl L9A64
            ldx L06D0
            lda #$00
            sta L1300,X
            rts
L9A7D       jsr L9A35
            jsr L8367
            lda L0089
            bne L9A94
            ldx #$FF
            ldy L0097
            lda STICK0,Y
L9A8E       inx
            cmp LAEF2+1,X
            bne L9A8E
L9A94       stx L06DB
            txa
            asl
L9A99       tax
L9A9A       lda LAF04+1,X
            sta L00EA
            lda LAF04+2,X
            sta L00EB
            lda LAF19+2,X
            cpx #$10
            beq L9AB2
            sta L00B9
            lda LAF1C,X
            sta L00BA
L9AB2       rts
L9AB3       jmp L9B6D
L9AB6       ldx L06DD
            bne L9AB3
            ldy L06DC
            lda (L00EA),Y
            bmi L9AD8
            sta L06DD
            iny
            lda (L00EA),Y
            sta L06C6
            iny
            sty L06DC
            jsr L9B79
            dec L06DD
            jmp L9BDE
L9AD8       lda #$9C
            sta L06CE
            jsr L9D5D
            beq L9AFE
            lda L06D1
            cmp #$C2
            bcs L9B1D
            lda L06D0
            cmp #$68
            bcs L9B1D
            ldx #$09
            jsr L9A94
            lda #$00
            sta L06DC
            sta L06DD
            rts
L9AFE       lda #$94
            sta L06CE
            jsr L9D5D
            beq L9B1D
            lda L06D1
            cmp #$C8
            bcs L9B1D
            ldx #$0A
            jsr L9A94
            lda #$00
            sta L06DC
            sta L06DD
L9B1C       rts
L9B1D       lda #$00
            sta L06DC
            sta L06DD
            sta L06D3
            sta L06D4
            sta L06D5
            ldx L06DB
            cpx #$08
            beq L9B42
            sec
            lda L00B9
            sbc #$0C
            sta L00B9
            lda L00BA
            sbc #$00
            sta L00BA
L9B42       lda #$FF
            sta L06DB
            jsr L9C3A
            lda L06D3
            ora L06D4
            ora L06D5
            beq L9B1C
            lda #$01
            jsr L977C
            ldy L0097
            beq L9B64
            ldy #$0F
            ldx #$06
            bne L9B68
L9B64       ldy #$05
            ldx #$03
L9B68       lda #$03
            jmp L979E
L9B6D       lda L06C6
            jsr L9B79
            dec L06DD
            jmp L9BDE
L9B79       cmp #$0F
            beq L9BC7
            lsr
            bcc L9B8A
L9B80       lsr
            bcc L9B99
L9B83       lsr
            bcc L9BA8
L9B86       lsr
            bcc L9BB7
            rts
L9B8A       ldx L06D9
            bne L9B94
            jsr L9BBE
            bne L9B80
L9B94       jsr L9BC8
            bne L9B80
L9B99       ldx L06D9
            bne L9BA3
            jsr L9BC8
            bne L9B83
L9BA3       jsr L9BBE
            bne L9B83
L9BA8       ldx L06D9
            bne L9BB2
            jsr L9BD2
            bne L9B86
L9BB2       jsr L9BD8
            bne L9B86
L9BB7       ldx L06D9
            beq L9BD8
            bne L9BD2
L9BBE       jsr LA9D3
            dec L06D0
            dec L06D0
L9BC7       rts
L9BC8       jsr LA9DC
            inc L06D0
            inc L06D0
            rts
L9BD2       dec L0098
            dec L06D1
            rts
L9BD8       inc L0098
            inc L06D1
            rts
L9BDE       lda #$00
            sta L1012
            lda L0099
            cmp #$1E
            bcc L9C02
            cmp #$CB
            bcs L9C10
L9BED       adc #$0A
            sta L1012
            lda L0098
            cmp #$30
            bcc L9C14
            cmp #$CC
            bcs L9C18
            lda #$00
L9BFE       .byte $8D,$E5
;
            org $A000
;
            asl
            adc DOSVEC,Y
            asl
            adc RAMLO+1,Y
            ora KEYDEF
            asl
            rts
            asl
            .byte $00
            asl
            rts
            ora L0000
            ora FKDEF
            asl
            eor (DOSVEC),Y
            .byte $00
            asl
            eor (RAMLO+1),Y
            .byte $00
            ora HOLD1
            asl
            .byte $2F
            asl
            and DOSVEC,X
            .byte $3C
            asl
            rti
            asl
            pha
            asl
            rti
            asl
            .byte $3C
            asl
            and DOSVEC,X
            .byte $2F
            asl
            and DOSVEC,X
            .byte $3C
            asl
            eor (DOSVEC),Y
            pha
            asl
            .byte $3C
            asl
            and L230A
            asl
            plp
            asl
            and DOSVEC,X
            and L280A
            plp
            .byte $3C,$64,$00,$00,$02
            rts
            asl L0100
            .byte $72,$0F,$00
            ora (FKDEF,X)
            .byte $0F,$00
            ora (FKDEF,X)
            .byte $07,$00
            ora (COLAC,X)
            .byte $0F,$00
            ora (FKDEF,X)
            .byte $07,$00
LA063       ora (COLAC,X)
            .byte $0F,$00
            ora (FKDEF,X)
            .byte $0F,$00
            ora (FKDEF,X)
            .byte $0F,$00,$FF,$64,$8F,$64,$8F,$64
            stx L8D62+2
            iny
            sty L8BC8
            iny
            txa
            iny
            .byte $89
            iny
            .byte $87
            iny
            stx L00C8
            sta L00C8
            sty L00C8
            .byte $82,$00
            and L00AE
            rol L00AE
            .byte $27
            ldx LAE28
            and #$AD
            rol
            lda LAC2B
LA099       bit L2DAC
            ldy LAC2E
            .byte $2F
            ldy L8B30
            and (L008A),Y
            .byte $32
            lda #$33
            lda #$34
            lda #$35
            tay
            rol L00A7,X
            .byte $37
            ldx BUFRFL
            lda RECVDN
            ldy L0000
            .byte $32
            tax
            bmi LA063+1
            rol L2CAA
            tax
            rol
            tax
            plp
            tax
            rol L00AA
            bit L00AA
            .byte $23
            tax
            .byte $22
            tax
            and (L00AA,X)
            jsr L1FAA
            tax
            asl L1DAA,X
            tax
            .byte $1C
            tax
            .byte $1B
            tax
            .byte $00
LA0D9       lda L1007
            cmp #$04
            bcs LA0E1
            rts
LA0E1       lda #$00
            sta L1007
            txa
            pha
            lda L0089
            beq LA110
            ldx #$FF
            lda CH
            sta L00B5
            stx CH
            cmp #$FF
            beq LA109
            jsr L9A35
            lda L00B5
            eor #$FF
            and #$40
LA103       sta L06C7
            jmp LA11E
LA109       and #$0F
            sta L06C6
            bne LA103
LA110       ldx L0097
            lda STICK0,X
            sta L06C6
            lda STRIG0,X
            sta L06C7
LA11E       pla
            tax
            lda L00F1
            beq LA138
LA124       lda L00FB
            bne LA132
            lda L00F1
            bmi LA12F
            jsr LA9D8
LA12F       jmp LA595
LA132       jsr LA9CF
            jmp LA53A
LA138       lda L06BA
            ora L06BB
            ora L06C3
            ora L06C4
            beq LA149
            jmp LA4F1+1
LA149       lda L00F6
            bne LA171
            jsr LA6D6
            lda L00F9
            beq LA171
            lda L00F8
            beq LA171
            cmp #$09
            beq LA171
            ldx #$03
LA15E       cmp LA16A,X
            bne LA16E
            lda #$01
            sta L00F8
            jmp LA171
LA16A       .byte $07,$03
            ora CASINI
LA16E       dex
            bpl LA15E
LA171       jsr L981A
            lda L00F8
            beq LA17E
            jsr LA979
            jmp LA4F1+1
LA17E       lda L00F4
            beq LA1A1
            jsr L8A85
            jsr LA4D5+1
            ldx #$05
LA18A       inc L0099
            dex
            bpl LA18A
            inc L0098
            clc
            lda L0099
            adc #$14
            cmp #$D8
            bcs LA19D
            jmp LA4F1+1
LA19D       lda #$00
            sta L00F4
LA1A1       lda L00EF
            sta L1019
            beq LA1D2
            jsr LA8A1
            lda L00FF
            beq LA1C3
            lda L00F0
            bmi LA1CC
            lda L00EF
            cmp #$03
            beq LA1C6
            cmp #$04
            beq LA1C6
            lda L00F0
            cmp #$08
            bcs LA1CC
LA1C3       jmp LA4F1+1
LA1C6       lda L00F0
            cmp #$08
            bcc LA1C3
LA1CC       lda #$00
            sta L00EF
            sta L00F0
LA1D2       lda L06C6
            cmp #$0F
            bne LA1F5
            lda L00FA
            bne LA1E2
            lda L06C7
            beq LA1E5
LA1E2       jmp LA4F1+1
LA1E5       inc L00FA
            lda #$09
            sta L00F8
            lda L00B9
            sta L009C
            lda L00BA
            sta L009D
            bne LA1E2
LA1F5       cmp #$0B
            bne LA238
            jsr LA734
            lda L00F1
            beq LA203
            jmp LA124
LA203       lda L00FA
            bne LA20C
            lda L06C7
            beq LA230
LA20C       jsr LA7ED
            lda L00EF
            bne LA223
            jsr LA6F6
            lda L00F9
            bne LA229
            jsr LA60B
            lda L00F9
            bne LA229
            dec L0098
LA223       jsr LA482
            jmp LA4F1+1
LA229       ldx #$00
            jsr L9DE7
            bne LA270
LA230       inc L00FA
            lda #$01
            sta L00F8
            bne LA270
LA238       cmp #$07
            bne LA282
            jsr LA74D
            lda L00F1
            beq LA246
            jmp LA124
LA246       lda L00FA
            bne LA24F
            lda L06C7
            beq LA27A
LA24F       jsr LA810
            lda L00EF
            bne LA26D
            jsr LA6D6
            lda L00F9
            bne LA273
            jsr LA645
            lda L00F9
            bne LA273
            jsr LA62A
            lda L00F9
            bne LA273
            inc L0098
LA26D       jsr LA49E
LA270       jmp LA4F1+1
LA273       ldx #$04
            jsr L9DE7
            bne LA270
LA27A       inc L00FA
            lda #$02
            sta L00F8
            bne LA270
LA282       cmp #$0E
            bne LA2D0
            jsr LA74D
            lda L00F1
            beq LA290
LA28D       jmp LA124
LA290       jsr LA764
            lda L00F1
            bne LA28D
            lda L00FA
            bne LA2A0
            lda L06C7
            beq LA2C8
LA2A0       jsr LA7C1
            jsr LA810
            lda L00EF
            bne LA2BB
            jsr LA645
            lda L00F9
            bne LA2C1
            jsr LA6D6
            lda L00F9
            bne LA2C1
            jsr LA9D3
LA2BB       jsr LA4B9+1
LA2BE       jmp LA4F1+1
LA2C1       ldx #$0C
            jsr L9DE7
            bne LA2BE
LA2C8       inc L00FA
            lda #$03
            sta L00F8
            bne LA2BE
LA2D0       cmp #$0D
            bne LA325
            jsr LA734
            lda L00F1
            beq LA2DE
LA2DB       jmp LA124
LA2DE       jsr LA764
            lda L00F1
            bne LA2DB
            lda L00FA
            bne LA2EE
            lda L06C7
            beq LA31D
LA2EE       jsr LA71F
            lda L00F4
            bne LA310
            jsr LA7C1
            jsr LA7ED
            lda L00EF
            bne LA310
            jsr LA6F6
            lda L00F9
            bne LA316
            jsr LA645
            lda L00F9
            bne LA316
            jsr LA9DC
LA310       jsr LA4D5+1
LA313       jmp LA4F1+1
LA316       ldx #$08
            jsr L9DE7
            bne LA313
LA31D       inc L00FA
            lda #$04
            sta L00F8
            bne LA313
LA325       cmp #$0A
            bne LA364
            jsr LA764
            lda L00F1
            beq LA333
            jmp LA124
LA333       lda L00FA
            bne LA33C
            lda L06C7
            beq LA35C
LA33C       jsr LA7C1
            lda L00EF
            bne LA34F
            jsr LA645
            lda L00F9
            bne LA355
            jsr LA9D3
            dec L0098
LA34F       jsr LA4B9+1
LA352       jmp LA4F1+1
LA355       ldx #$0C
            jsr L9DE7
            bne LA352
LA35C       inc L00FA
            lda #$07
            sta L00F8
            bne LA352
LA364       cmp #$06
            bne LA3C0
            jsr LA764
            lda L00F1
            beq LA372
LA36F       jmp LA124
LA372       jsr LA74D
            lda L00F1
            bne LA36F
            lda L00FA
            bne LA382
            lda L06C7
            beq LA3B8
LA382       jsr LA7C1
            jsr LA810
            lda L00EF
            bne LA3AB
            jsr LA645
            lda L00F9
            bne LA3B1
            jsr LA6D6
            lda L00F9
            bne LA3B1
            jsr LA62A
            lda L00F9
            bne LA3B1
            jsr LA69A
            bne LA3B1
            jsr LA9D3
            inc L0098
LA3AB       jsr LA4B9+1
LA3AE       jmp LA4F1+1
LA3B1       ldx #$0C
            jsr L9DE7
            bne LA3AE
LA3B8       inc L00FA
            lda #$05
            sta L00F8
            bne LA3AE
LA3C0       cmp #$09
            bne LA41A
            jsr LA734
            lda L00F1
            beq LA3CE
LA3CB       jmp LA124
LA3CE       jsr LA764
            lda L00F1
            bne LA3CB
            lda L00FA
            bne LA3DE
            lda L06C7
            beq LA40F
LA3DE       jsr LA71F
            lda L00F4
            bne LA402
            jsr LA7C1
            jsr LA7ED
            lda L00EF
            bne LA402
            jsr LA6F6
            lda L00F9
            bne LA408
            jsr LA645
            lda L00F9
            bne LA408
            jsr LA9DC
            dec L0098
LA402       jsr LA4D5+1
LA405       jmp LA4F1+1
LA408       ldx #$08
            jsr L9DE7
            bne LA405
LA40F       inc L00FA
            lda #$06
            sta L00F8
            sta L1012
            bne LA405
LA41A       cmp #$05
            bne LA468
            jsr LA764
            lda L00F1
            beq LA428
            jmp LA124
LA428       lda L00FA
            bne LA431
            lda L06C7
            beq LA45F
LA431       jsr LA71F
            lda L00F4
            bne LA452
            jsr LA7C1
            lda L00EF
            bne LA452
            jsr LA645
            lda L00F9
            bne LA458
            jsr LA62A
            lda L00F9
            bne LA458
            jsr LA9DC
            inc L0098
LA452       jsr LA4D5+1
            jmp LA4F1+1
LA458       ldx #$08
            jsr L9DE7
            bne LA468
LA45F       inc L00FA
            lda #$08
            sta L00F8
            sta L1012
LA468       jmp LA4F1+1
LA46B       lda L1008
            and #$08
            bne LA47A
            lda #$00
            sta L06C1
            jmp LA47F
LA47A       inx
            inx
            jsr L97D0
LA47F       jmp L9DE7
LA482       ldx #$00
            beq LA46B
            .byte $87
            lda LADD9+2
            .byte $33
            ldx LADA7
            ora L8BAE
            ldx LAD86+1
            dec L00AD,X
            .byte $53
            ldx LADA7
            php
            ldx LAEAA+1
LA49E       ldx #$04
            bne LA46B
            .byte $7F
            lda LADCC
            .byte $2B
            ldx LAD9F
            inc L83AC+1,X
            ldx LAD7F
            .byte $C7
            lda LAE5B
            .byte $9F
            lda LADF7+2
            .byte $B3
LA4B9       ldx L0CA2
            bne LA46B
            .byte $8F
            lda LADEF
            .byte $3B
            ldx LADAE+1
            and (L00AE,X)
            .byte $93
            ldx LAD8F
            .byte $F4
            lda LAE43
            .byte $AF
            lda LAE26
            .byte $9B
LA4D5       ldx L08A2
            bne LA46B
            .byte $8F
            lda LADEF
            .byte $3B
            ldx LADB7
            and (L00AE,X)
            .byte $93
            ldx LAD8F
            .byte $F4
            lda LAE43
            .byte $B7
            lda LAE26
            .byte $9B
LA4F1       ldx LFD20
            lda L00A5
            tya
            sta HPOSP0
            sta HPOSP1
            ldx L0099
            ldy #$00
LA501       lda (L00B9),Y
            sta L00BD,Y
            iny
            cpy #$0C
            bcc LA501
            ldy #$00
LA50D       lda (L00BD),Y
            sta L1400,X
            lda (L00C3),Y
            sta L1500,X
            lda (L00C1),Y
            sta L140D,X
            lda (L00C7),Y
            sta L150D,X
            inx
            iny
            cpy #$08
            bcc LA50D
            ldy #$00
LA529       lda (L00BF),Y
            sta L1400,X
            lda (L00C5),Y
            sta L1500,X
            inx
            iny
            cpy #$05
            bcc LA529
            rts
LA53A       jsr LA5FD
            lda L0099
            cmp #$28
            bcc LA560
            lda L0098
            sta HPOSP0
            sta HPOSP1
            ldx L0099
            ldy #$17
LA54F       lda LA565,Y
            sta L1400,X
            lda LA57D,Y
            sta L1500,X
            inx
            dey
            bpl LA54F
            rts
LA560       lda #$FF
            sta L00F3
            rts
LA565       .byte $00,$00,$00,$00
            rol FTYPE,X
            rol L083E,X
            .byte $1C,$1C
            eor L4177,X
            eor (L0000,X)
            .byte $00,$7F
            rol.w ABUFPT,X
            rol L3E41,X
LA57D       .byte $77,$77
            rol LTEMP,X
            .byte $00,$00,$00,$00
            rol ICCOMZ,X
            .byte $22,$22
            php
            rol L3E36,X
            rol
            .byte $00,$00,$00,$00,$00,$00,$00
LA595       jsr LA5FD
LA598       lda L00B8
            bne LA5CA
            lda L00F2
            cmp #$0A
LA5A0       bcs LA5C1
            lda L0098
            sta HPOSP0
            sta HPOSP1
            ldx L0099
            ldy #$15
LA5AE       lda LA5D1,Y
LA5B1       sta L1400,X
            lda LA5E7,Y
            sta L1500,X
            inx
            dey
            bpl LA5AE
            inc L00F2
            rts
LA5C1       lda #$FF
            sta L00FB
LA5C5       sta L00EE
            jmp L8348
LA5CA       lda #$00
            sta L00EE
            sta L00F1
            rts
LA5D1       .byte $00,$00
            bmi LA5C5
LA5D5       beq LA60F
            tya
            bvc LA5B1+1
            cld
            sed
            beq LA63E
            .byte $00,$00,$00,$00,$00,$00
LA5E4       inc L387C,X
LA5E7       asl L081E
            php
            .byte $00
LA5EC       cpy #$60
            rol L2327
            .byte $03,$00
            bpl LA5EC+1
            .byte $FC
            inx
            sed
            .byte $00,$00,$00,$00,$00
LA5FD       ldx L0097
            lda L00A8,X
            cmp #$01
            bne LA608
            jmp L8A85
LA608       jmp L8A8C
LA60B       lda #$19
            sta L009E
LA60F       lda #$A6
            sta L009F
            jsr LAD41
            stx L00F9
            rts
            bmi LA652+1
            pla
            bcc LA656
            pha
            bvc LA5A0+1
            pha
            cli
            pha
            bvs LA5D5+1
            clv
            .byte $8F
LA628       bcs LA628+1
LA62A       lda #$38
            sta L009E
            lda #$A6
            sta L009F
            jsr LAD41
            stx L00F9
            rts
            .byte $54,$5C
            bcc LA5E4
            .byte $64
            pla
LA63E       sty L0094
            iny
            .byte $FA,$64
            iny
            .byte $FF
LA645       lda L06C6
            and #$01
            bne LA656
            lda #$64
            sta L009E
            lda #$A6
LA652       sta L009F
            bne LA65E
LA656       lda #$91
            sta L009E
            lda #$A6
            sta L009F
LA65E       jsr LAD41
            stx L00F9
            rts
            .byte $00
            sec
            .byte $7C
            sty LTEMP,X
            pha
            jmp (L4684)
            cli
            .byte $5C,$74,$AB
            bne LA6CF
            bvs LA6CA+1
            pla
            bvc LA6DB+1
            ror LC090,X
            .byte $D4
            ldx L00B8
            ldy #$B4
            ror
            .byte $7C
            plp
            .byte $3C
            sei
            bcc LA69E+1
            bit LFECC
            .byte $64
            iny
            .byte $00,$34
            dey
            tay
            .byte $FF
            bmi LA65E+1
            .byte $DC
            inc LFEC8,X
            .byte $64
            iny
            .byte $FF
LA69A       lda L0099
            cmp #$A0
LA69E       bcs LA6C2
            clc
            adc #$13
            sta L06D0
            lda L0098
            sta L06D1
            lda #$44
            sta L06CE
            jsr L9D5D
            beq LA6C2
            lda #$48
            sta L06CE
            jsr L9D5D
            bne LA6C2
            dec L0098
            rts
LA6C2       lda #$00
            rts
LA6C5       lda L0098
            clc
            adc #$03
LA6CA       sta L0600
            lda L0099
LA6CF       clc
            adc #$14
            sta L0601
            rts
LA6D6       jsr LA6C5
            lda #$E9
LA6DB       sta L009A
            lda #$A6
            sta L009B
            ldy #$00
            jsr LA832
            stx L00F9
            rts
            pla
            .byte $74
            rts
            .byte $74
            stx L8C78
            sty ICBLLZ,X
            cpy #$CC
LA6F4       bne LA6F4+1
LA6F6       jsr LA6C5
            lda #$18
            sta L009A
            lda #$A7
            sta L009B
            ldy #$00
            jsr LA832
            beq LA70D
LA708       lda #$01
            sta L00F9
            rts
LA70D       lda L0098
            cmp #$30
            bcc LA708
            lda #$00
            sta L00F9
            rts
            bmi LA771+1
            bcs LA744
            .byte $44
LA71D       bcc LA71D+1
LA71F       lda #$2F
            sta L009E
            lda #$A7
            sta L009F
            jsr LAD41
            beq LA72E
            dec L00F4
LA72E       rts
            sei
            sty LB0A5+1
            .byte $FF
LA734       jsr LA6C5
            lda #$84
            sta L009A
            lda #$A7
            sta L009B
            ldy #$00
LA741       jsr LA832
LA744       beq LA72E
LA746       lda #$01
            sta L00F1
LA74A       jmp L835A
LA74D       jsr LA6C5
            lda #$9A
            sta L009A
            lda #$A7
            sta L009B
LA758       ldy #$00
            jsr LA832
LA75D       beq LA763
            lda #$FF
            sta L00F1
LA763       rts
LA764       lda #$A4
            sta L009E
LA768       lda #$A7
            sta L009F
            jsr LAD41
            beq LA763
LA771       lda L06C6
            and #$01
            bne LA77D
            lda #$FF
            sta L00F1
            rts
LA77D       lda #$01
            sta L00F1
            jmp L835A
            .byte $63,$7B,$80,$A7,$AF
            bcs LA74A
            .byte $C7
            bcs LA7F8+1
            .byte $7F
            sec
            sta L0097
            bvs LA813
            .byte $93
            bne LA746
            .byte $C3
LA798       bne LA798+1
            cli
            rts
            bcs LA7FE
            .byte $74
LA79F       bne LA741
            ldy L00D0,X
            .byte $FF,$54
            pla
            bcc LA758
            bcc LA74A
            bvc LA80B+1
            .byte $80
            ldy L6E60
            bcc LA768+1
            bcc LA74A+2
            dey
            tya
            cpx #$FE
            cpy L00FE
            cpy #$C8
            bcc LA75D+1
            iny
LA7BF       bne LA7BF+1
LA7C1       lda #$67
            sta L009E
            lda #$A8
            sta L009F
            jsr LAD41
            beq LA7EC
            lda L06C6
            and #$03
            cmp #$02
            bne LA7E0
            lda #$01
            sta L00EF
LA7DB       lda #$00
            sta L00F0
            rts
LA7E0       cmp #$01
            bne LA7EC
            lda #$02
            sta L00EF
            lda #$07
            sta L00F0
LA7EC       rts
LA7ED       jsr LA6C5
            lda L0098
            sec
            sbc #$03
            sta L0600
LA7F8       lda #$78
            sta L009A
            lda #$A8
LA7FE       sta L009B
            ldy #$00
            jsr LA832
            beq LA80F
            lda #$03
            sta L00EF
LA80B       lda #$07
            sta L00F0
LA80F       rts
LA810       jsr LA6C5
LA813       lda L0098
            sec
LA816       sbc #$03
            sta L0600
            lda #$8B
            sta L009A
            lda #$A8
            sta L009B
            ldy #$00
            jsr LA832
            cpx #$00
            beq LA80F
            lda #$04
            sta L00EF
LA830       bne LA7DB
LA832       lda L0600
            sec
            sbc (L009A),Y
            bcc LA858
            asl
LA83B       sta L0602
            iny
            lda L0600
            cmp (L009A),Y
            beq LA848
            bcs LA859
LA848       iny
            lda L0601
            sec
            sbc (L009A),Y
            bcc LA85A
            cmp L0602
            beq LA864
            bne LA85A
LA858       iny
LA859       iny
LA85A       iny
            lda (L009A),Y
            cmp #$FF
            bne LA832
            ldx #$00
            rts
LA864       ldx #$01
            rts
            .byte $3C
            rts
            cpy #$D0
            .byte $44
            cli
            ldy #$B0
            bcs LA830+1
            cpy #$D0
            clv
            iny
            bcc LA816+1
            .byte $FF
            rol FMSZPG+3,X
            .byte $80
            lsr COLCRS+1
            bvs LA8D4+1
            ror FKDEF
            ldx L00BE,Y
            ldy #$C6
            dec L7A90
            stx LFF28
            .byte $32,$42
            bcc LA8D0+1
            .byte $52
LA890       .byte $80,$52,$62
            bvs LA90B
            txa
            sec
            stx L009A
            plp
            .byte $C2
            dex
            ldy #$B2
            tsx
LA89F       bcs LA89F+1
LA8A1       lda L1019
            cmp #$03
            bcs LA8BE
            lda L06C6
            cmp #$0E
            beq LA8B6
            cmp #$0D
            beq LA8BA
            jmp LA8D4
LA8B6       lda #$01
            bne LA8D6
LA8BA       lda #$02
            bne LA8D6
LA8BE       lda L06C6
            cmp #$0F
            beq LA8D4
            and #$06
            cmp #$06
            beq LA8B6
            lda L06C6
            and #$09
LA8D0       cmp #$09
            beq LA8BA
LA8D4       lda #$00
LA8D6       sta L00FF
            bne LA8DB
            rts
LA8DB       ldy L00FF
            lda L1019
            cmp #$01
            bne LA8E6
            beq LA905
LA8E6       cmp #$02
            bne LA8EC
            beq LA918
LA8EC       cmp #$03
            bne LA8F2
            beq LA92B
LA8F2       cpy #$01
            beq LA8FB
            dec L00F0
            jmp LA936
LA8FB       inc L00F0
LA8FD       dec L0099
            dec L0099
            ldx #$10
            bne LA93E
LA905       cpy #$01
            beq LA90E
            dec L00F0
LA90B       jmp LA923
LA90E       inc L00F0
LA910       dec L0099
            dec L0099
            ldx #$14
            bne LA93E
LA918       cpy #$02
            beq LA921
            inc L00F0
            jmp LA910
LA921       dec L00F0
LA923       inc L0099
            inc L0099
            ldx #$14
            bne LA93E
LA92B       cpy #$02
            beq LA934
            inc L00F0
            jmp LA8FD
LA934       dec L00F0
LA936       inc L0099
            inc L0099
            ldx #$10
            bne LA93E
LA93E       lda L00F0
            and #$02
            beq LA946
            inx
            inx
LA946       jmp L9DE7
            .byte $7F
            lda LADD1
            .byte $2B
            ldx LAD9F
            .byte $03
            ldx LAE83
            .byte $7F
            lda LADE8+2
            .byte $4B
            ldx LAD9F
            .byte $1C
            ldx LAEA3
            .byte $97
            lda LADE0
            .byte $73
            ldx LADBD+2
            .byte $12
            ldx LAECB
            .byte $8F
            lda LADE5
            .byte $7B
            ldx LADB7
            .byte $17
            ldx LAED3
LA979       lda L00F7
            bne LA984
            lda L00F6
            bne LA984
            jsr L8367
LA984       lda L00F8
            cmp #$01
            bne LA999
            ldx #$03
            lda L00F7
            cmp #$03
            jsr LAAF1
            jsr LA482
            jmp LAA98
LA999       cmp #$02
            bne LA9AC
            ldx #$03
            lda L00F7
            cmp #$03
            jsr LAB05
            jsr LA49E
            jmp LAA98
LA9AC       cmp #$03
            bne LA9E1
            ldx #$01
            lda L00F7
            cmp #$04
            bcs LA9C3
LA9B8       jsr LA9CF
            dec L0099
            dex
            bpl LA9B8
            jmp LA9C9
LA9C3       jsr LA9D8
            dex
            bpl LA9C3
LA9C9       jsr LA4B9+1
            jmp LAA98
LA9CF       dec L0099
            dec L0099
LA9D3       dec L0099
            dec L0099
            rts
LA9D8       inc L0099
            inc L0099
LA9DC       inc L0099
            inc L0099
            rts
LA9E1       cmp #$04
            bne LAA04
            ldx #$01
            lda L00F7
            cmp #$02
            bcs LA9F6
LA9ED       jsr LA9CF
            dex
            bpl LA9ED
            jmp LA9FE
LA9F6       jsr LA9D8
            inc L0099
            dex
            bpl LA9F6
LA9FE       jsr LA4D5+1
            jmp LAA98
LAA04       cmp #$09
            bne LAA2A
            ldx #$02
            lda L00F7
            cmp #$03
            bcs LAA19
LAA10       jsr LA9D3
            dex
            bpl LAA10
            jmp LAA1F
LAA19       jsr LA9DC
            dex
            bpl LAA19
LAA1F       lda L009C
            sta L00B9
            lda L009D
            sta L00BA
            jmp LAA98
LAA2A       cmp #$05
            bne LAA3D
            ldx #$02
            lda L00F7
            cmp #$04
            jsr LAB05
            jsr LA49E
            jmp LAA98
LAA3D       cmp #$06
            bne LAA50
            ldx #$02
            lda L00F7
            cmp #$02
            jsr LAAF1
            jsr LA482
            jmp LAA98
LAA50       cmp #$07
            bne LAA76
            ldx #$04
            lda L00F7
            cmp #$04
            bcs LAA68
LAA5C       jsr LA9D3
            dex
            bpl LAA5C
LAA62       jsr LA4B9+1
            jmp LAA98
LAA68       ldx #$03
LAA6A       inc L0099
            dec L0098
            dec L0098
            dex
            bpl LAA6A
            jmp LAA62
LAA76       ldx #$03
            lda L00F7
            cmp #$02
            bcs LAA8D
LAA7E       dec L0099
            inc L0098
            inc L0098
            dex
            bpl LAA7E
LAA87       jsr LA4D5+1
            jmp LAA98
LAA8D       ldx #$04
LAA8F       jsr LA9DC
            dex
            bpl LAA8F
            jmp LAA87
LAA98       inc L00F7
            lda L00F7
            cmp #$06
            bcs LAAA1
            rts
LAAA1       lda L00F8
            cmp #$09
            beq LAAD2
            lda L00F6
            bne LAAD2
            lda #$00
            sta L00F7
            lda L00F8
            cmp #$01
            bne LAACC
            lda L0099
            cmp #$AE
            bcc LAACC
            lda L0098
            cmp #$8E
            bcc LAACC
            cmp #$B0
            bcs LAACC
            lda #$FF
            sta L00F1
            jmp LAAF0
LAACC       jsr LAB19
            jmp LAADA
LAAD2       lda #$00
            sta L00F8
            sta L00F7
            sta L00F6
LAADA       lda L0099
            cmp #$50
            bcc LAAF0
            cmp #$5C
            bcs LAAF0
            lda L0098
            cmp #$88
            bcc LAAF0
            cmp #$AC
            bcs LAAF0
            sta L00F1
LAAF0       rts
LAAF1       bcs LAAFC
LAAF3       dec L0098
            jsr LA9D3
            dex
            bpl LAAF3
            rts
LAAFC       dec L0098
            jsr LA9DC
            dex
            bpl LAAFC
            rts
LAB05       bcs LAB10
LAB07       inc L0098
            jsr LA9D3
            dex
            bpl LAB07
            rts
LAB10       inc L0098
            jsr LA9DC
            dex
            bpl LAB10
            rts
LAB19       jsr LAC17
            lda L00F6
            bne LAB4A
            jsr LAB65
            lda L00F1
            bne LAB44
            jsr LAC5F+2
            lda L00F6
            bne LAB4A
            jsr LAC71
            lda L00F6
            bne LAB4A
            lda L00F1
            bne LAB44
            jsr LAC98
            lda L00F4
            bne LAB44
            lda #$00
            sta L00F8
LAB44       rts
LAB45       lda #$01
            sta L00F6
            rts
LAB4A       lda L00F8
LAB4C       sta L1012
            and #$01
            bne LAB5C
            sec
            lda L1012
            sbc #$01
            sta L00F8
LAB5B       rts
LAB5C       clc
            lda L1012
            adc #$01
            sta L00F8
            rts
LAB65       lda #$82
            sta L009E
LAB69       lda #$AB
            sta L009F
            jsr LAD41
            beq LAB7A
            cpy #$40
            bcs LAB7B
            lda #$FF
            sta L00F1
LAB7A       rts
LAB7B       lda #$01
LAB7D       sta L00F1
            jmp L835A
            sty LA890
LAB85       bne LABEB
            dey
            cld
            inc L845F+1,X
            bne LAB65+1
            rts
            .byte $7C
            cpy #$D0
            .byte $5C,$7C
            clv
            cpy #$58
            .byte $7C
            tay
            clv
            ldy L00B4
            cld
            inc LB0A0,X
            bne LAB7A
            bcc LAB4C
            cpy #$D0
            dey
            ldy L6C64
            .byte $80
LABAB       dey
LABAC       rts
            tya
            sty L0088
            tya
            ldy #$88
            bcc LAB45
            tay
            ldy #$A8
            pha
            .byte $6F
            tay
            ldy LD0B0
            ldy LB8AF+1
            bne LAB5B
            tay
            bcc LAB85+1
            sty L0098,X
            dey
            cpy #$90
            sty LOMEM,X
            cpy #$8C
LABCF       bcc LAC49
            bcc LAB5B
            sty L906E+2
            iny
            inc LFEC0,X
            pla
            jmp (L887F+1)
            pla
            bvs LAB69
            bcc LAC3B
            .byte $74
            bcc LAB7D+1
            cli
            sei
            tya
            ldy #$58
LABEB       .byte $7C
LABEC       ldy #$A8
            .byte $44
            pha
            cld
            inc L4440,X
LABF4       bne LABF4
            .byte $3C
            rti
            clv
            inc L3C38,X
LABFC       bcs LABFC
            .byte $34
            sec
            tay
            inc L3430,X
            ldy #$FE
            bit L9830
            inc L2C28,X
LAC0C       bcc LAC0C
LAC0E       .byte $00
            plp
            plp
            inc LA79F+1,X
            pha
            cli
            .byte $FF
LAC17       lda #$28
            sta L009E
            lda #$AC
            sta L009F
            jsr LAD41
            beq LAC27
            jsr LAB45
LAC27       rts
            plp
            sec
            plp
LAC2B       bcc LAC65
            pha
LAC2E       plp
            .byte $80
            pha
            cli
            plp
            bvs LAC8D
            pla
            plp
            rts
            jmp (HOLDCH)
LAC3B       sec
            ldx L00D0
            rti
            bvs LABCF
            ldy #$50
            rts
            ldy #$A8
            rti
            rts
            clv
LAC49       iny
LAC4A       bcc LABEC
            bcs LAC0E
LAC4E       cpy #$C8
LAC50       rti
            rts
            cpy #$D0
            pha
            cli
            ldy #$B0
            .byte $00
            inc LFEDC,X
LAC5C       bne LAC5C
            .byte $00
LAC5F       inc LA9FE+1,X
            ldx L9E85
LAC65       lda #$AC
            sta L009F
            jsr LAD41
            beq LAC27
            jmp LAB45
LAC71       lda #$17
            sta L009E
            lda #$AD
            sta L009F
            jsr LAD41
            beq LACAD
            ldy #$03
            lda L00F8
LAC82       cmp LAC94,Y
            beq LAC8D
            dey
            bpl LAC82
            jmp LAB45
LAC8D       lda #$01
            sta L00F1
            jmp L835A
LAC94       ora (RAMLO,X)
            asl CMCMD
LAC98       lda #$3C
            sta L009E
            lda #$AD
            sta L009F
            jsr LAD41
            cpx #$01
LACA5       bne LACAD
            dec L00F4
            lda #$00
LACAB       sta L00F8
LACAD       rts
            .byte $9C
            ldy #$38
            bvc LAC4A+1
            .byte $9C
            bmi LACFE
            sty L0098,X
            plp
            rti
            bcc LAC50
            plp
            sec
            sty L2890
            bmi LAC4E+1
            bcc LAD0B+2
            rts
            dey
            sty L5840
            sty L0088
            sec
            bvc LAC4E+1
            sty STATUS
            pha
            .byte $7C
LACD3       .byte $80
            plp
            rti
            .byte $64
            pla
            sei
            bcc LAD3B
            .byte $64
            bvs LAC65+1
            .byte $5C
            rts
            pla
            .byte $80
            cli
            .byte $5C
            rts
            sei
            .byte $54
            cli
            dey
            ldy #$50
LACEB       .byte $54,$80
            tya
            jmp L7850
            bcc LAD3B
            jmp L886F+1
            .byte $44
            pha
            tya
            bcs LAD3B
            .byte $44
            bcc LACA5+1
LACFE       .byte $3C
            rti
            dey
            ldy #$38
            .byte $3C,$80
            tya
            cpy L98CF+1
            bcs LACD3
LAD0B       cpy LA890
            ldy LA8BE+2,X
            cpy #$B8
            ldy LB8A0,X
            .byte $FF,$7C,$80
            cli
            sty DELTAC+1,X
            .byte $7C
            bvc LACAB
            .byte $74
            sei
            pha
            sty ROWAC
            .byte $74
            rti
            .byte $7C
            jmp (L3870)
            .byte $74
            pla
            jmp (L6C28)
            cpy L00C8
            clv
            cpx #$C0
            cpy L00B0
            cld
            tay
            clv
            bcc LACEB
LAD3B       .byte $FF,$7C
            sty LD0A8
            .byte $FF
LAD41       ldy #$00
            lda L0099
            clc
            adc #$14
            sta L0601
LAD4B       lda L0098
            sta L0600
LAD50       lda (L009E),Y
            cmp #$FF
            beq LAD7C
            cmp L0600
            bcs LAD76
            iny
            lda (L009E),Y
            cmp L0600
            bcc LAD77
            iny
            lda (L009E),Y
            cmp L0601
            bcs LAD78
            iny
            lda (L009E),Y
            cmp L0601
            bcc LAD79
            ldx #$01
            rts
LAD76       iny
LAD77       iny
LAD78       iny
LAD79       iny
            bne LAD50
LAD7C       ldx #$00
            rts
LAD7F       sec
            .byte $7C
            inc.w LOMEM,X
            .byte $00,$00
LAD86       bmi LADA3+1
            rol L017F,X
            .byte $00,$00,$00,$0C
LAD8F       .byte $1C
            rol L417F,X
            .byte $00,$00,$00,$00
            sec
            .byte $7C
            inc.w LOMEM+1,X
            .byte $00,$00,$00
LAD9F       .byte $00,$00,$00,$7C
LADA3       ror HOLDCH,X
            sec
            php
LADA7       .byte $00,$00,$00
LADAA       rol L3E6E,X
            .byte $1C
LADAE       bpl LADB0
LADB0       .byte $00,$00
            rol L3E2A,X
            rol ABUFPT,X
LADB7       .byte $00,$00,$00
            rol L3E3E,X
LADBD       rol.w ABUFPT,X
            .byte $00,$00,$7C
LADC3       .byte $7C
            sbc LB9FD,X
            sed
            inx
            beq LADC3
            sei
LADCC       sed
            clv
            clv
            tya
            cli
LADD1       sed
            cpx #$F0
            sed
            sei
            asl L0E16,X
LADD9       asl L1E1C,X
            .byte $1A,$1A,$12,$14
LADE0       .byte $EF
            inc L7C7C,X
            .byte $7C
LADE5       rol COUNTR+1,X
            .byte $7F
LADE8       rol L7C3E,X
            .byte $7C,$74
            sei
            .byte $3C
LADEF       rol COUNTR,X
            ror L3C3C,X
            rol FEOF,X
            .byte $3F
LADF7       asl.w ABUFPT+2,X
            bpl LAE08
            asl NGFLAG
            .byte $00
            rti
            rti
            rts
            jsr L1800
            .byte $0C,$07,$00
LAE08       .byte $00
            php
            bmi LAE6C
            .byte $80,$00,$04,$04,$0C
            php
            bpl LAE14
LAE14       .byte $00,$00,$00
            eor #$00
            .byte $00
            eor (L0000,X)
            .byte $03,$12
            asl
            asl L0000
            php
            .byte $00,$00,$42,$42
LAE26       php
            .byte $00
LAE28       .byte $00
            and (ICDNOZ,X)
            sei
            sei
            sei
            .byte $00,$00,$00,$00,$00
            asl L1E1E,X
            .byte $00,$00,$00,$00,$00
            asl L3E2E,X
            asl L0000
            .byte $00,$00,$00
LAE43       .byte $3C,$3A
            rol.w STATUS,X
            .byte $00,$00,$00
            ror L607E,X
            rts
            .byte $00,$00,$00,$00
            rol L7377,X
            .byte $00,$00,$00,$00,$00
LAE5B       .byte $7C
            inc.w L00CE
            .byte $00,$00,$00,$00
            rol L6E3E,X
            .byte $00,$00,$00,$00,$00,$7C
LAE6C       .byte $7C
            ror L0000,X
            .byte $00,$00,$00,$00
            sec
            .byte $7C
            ror L6066,X
            .byte $00,$00,$00,$1C
            rol L667E,X
            asl L0000
            .byte $00,$00
LAE83       .byte $00,$00,$00
            bmi LAEB8
            sec
            sec
            .byte $00,$00,$00,$00,$0C,$0C,$1C,$1C,$00
            jsr POKMSK
            bmi LAF0E
            ror CMCMD,X
            .byte $07,$02,$04,$00
            asl LTEMP+1
            .byte $37
            bvs LAF13
LAEA3       .byte $00,$00
            asl CMCMD
            .byte $E7
            cpy #$E0
LAEAA       cpx #$00
            .byte $00,$00,$33,$73,$77,$07,$00,$00,$00,$00
            dec L00C7
LAEB8       .byte $E7
            cpx #$00
            .byte $00,$00,$00,$6F,$6F,$E3
            cpx #$00
            .byte $00,$00,$00
            inc L00F6,X
LAEC8       .byte $C7,$07,$00
LAECB       .byte $00,$00,$00,$00,$07,$67
            cpx #$E0
LAED3       .byte $00,$00,$00,$00
            cpx #$E6
            .byte $07,$07
LAEDB       stx L00A4
            .byte $92
            ldy L00A2
            ldy L00AE
            ldy L00BE
            ldy L00CA
            ldy L00DA
            ldy L00E6
            ldy FMSZPG+6
            lda #$55
            lda #$61
            lda #$6D
LAEF2       lda #$0E
            ora L070B
            asl
            asl BOOT
            ora APPMHI+1
LAEFC       .byte $2B,$23
            and L2D01,X
            .byte $0B
            ora ICBAHZ,X
LAF04       and LAF30+1,Y
            rol L00AF,X
            .byte $5B,$AF,$3B,$AF,$42
LAF0E       .byte $AF,$62,$AF
            adc #$AF
LAF13       eor #$AF
            .byte $54,$AF
            bvs LAEC8
LAF19       adc LE6AF,Y
LAF1C       ldy L00CA
            ldy L0092
            ldy L00AE
            ldy L00E6
            ldy L00AE
            ldy L00CA
            ldy L00CA
            ldy L00BE
            ldy L0092
            ldy L0092
LAF30       ldy DOSINI
            asl L0D04
            .byte $FF,$04
            asl L0D0C
            .byte $FF
            asl TRAMSZ
            asl CMCMD
            asl RAMLO+1
            .byte $FF
            php
            asl L0A04
            .byte $03
            ora #$FF
            .byte $04
            asl RAMLO
            .byte $0F,$02,$07,$04
            ora DOSVEC
            ora L0CFF
LAF55       asl L0F03
            .byte $0C
            ora L06FF
            asl
            .byte $04,$0B
            asl BOOT
            .byte $FF
            php
LAF63       asl L0604
            .byte $04
            ora L00FF
            .byte $04
            asl
            .byte $04
            ora #$08
            ora L08FF
            asl
            .byte $04,$0B
            php
            ora #$04
            ora L04FF
            asl
            .byte $04
            ora #$02
LAF7E       ora L05FF
            ora #$0B
LAF83       ora L980B
            sta LA099+1,Y
LAF89       sbc LFFFE,X
            .byte $9B
            lda L00A1
            .byte $A3,$93
            sta L00AA,X
            tax
            rol ICPTLZ
            tax
            rol ICPTLZ
            rol ICPTLZ
LAF9B       rol TEMP
            tax
            bvc LAFEF+1
            tax
            rol TEMP
            tax
            rol ICPTHZ
            .byte $00
            tax
            tax
            rol ICPTLZ
LAFAB       bvc LAF55+2
LAFAD       rol L00AA
LAFAF       rol ICPTLZ
            bvc LB002+1
            tax
            bvc LB006
            tax
            rol TEMP
            tax
            rol TEMP
            bvc LAF63+1
            rol
            bvc LB011
            .byte $00
            tax
            rol ICPTLZ
            rol L00AA
            rol TEMP
            tax
            rol TEMP
            bvc LB01E
            ldx TEMP
            rol
            rol
            ldx TEMP
            rol TEMP
            bvc LB002
            .byte $00
LAFD9       ora L2DBB,X
            .byte $BB
LAFDD       and L92BA+1,X
            .byte $AF,$A7,$AF,$C2,$AF,$0C
            eor FMSZPG+3
            .byte $47,$0C
            pha
            eor #$4A
            .byte $0C,$4B
LAFEF       jmp L0C4D
            eor (LMARGN),Y
            .byte $47
            lsr L4948
            lsr
            .byte $4F
            bvc LB048
LAFFC       eor L1F23
            .byte $1B,$17,$14
LB002       ora (APPMHI),Y
            .byte $0C
            asl
LB006       ora #$08
            .byte $07,$07
LB00A       asl TRAMSZ
            ora RAMLO+1
            .byte $04
LB00F       .byte $0F,$0F
LB011       .byte $0F,$07,$07,$07,$07,$03,$03
LB018       bvc LB078+2
            bvs LAF9B+1
LB01C       bcc LAFAD+1
LB01E       bcc LAFAF+1
LB020       bcc LB01C
            beq LB00A
            .byte $DC
            iny
            ldy L00A0,X
LB028       .byte $82,$64,$3F,$1F,$0F,$0F,$07,$07,$03
            ldy #$A0
            eor (HOLD1),Y
            .byte $3F,$3F
LB037       ror DELTAR,X
            lda #$A9
            adc (ROWAC+1),Y
            ora (CASINI,X)
            asl
            .byte $04
            plp
            plp
            .byte $52,$52
            rol L763E,X
LB048       ror L00A9,X
            lda #$71
            adc (NGFLAG),Y
            .byte $02
            asl
            .byte $04
            ora RAMLO+1
            txa
            txa
            .byte $FC,$FC
            ror L956D+1
            sta L008E,X
            stx L4080
            bvc LB07F+2
            .byte $14,$14
            lsr
            lsr
            .byte $7C,$7C
            ror L956D+1
            sta L008E,X
            stx L4080
            bvc LB091
            .byte $03,$03
            asl L00FE
            .byte $FC
            tya
            sec
LB078       ror LD35E,X
            .byte $BB
            cmp L7D7D,Y
LB07F       and LC039,Y
            cpy #$60
            .byte $7F,$3F
            ora L7C18,Y
            ror LBBD2,X
LB08C       lda LFCFD,Y
            clv
            clv
LB091       .byte $00,$00
            asl FTYPE
            .byte $5C,$9C
            tya
            .byte $9C
            lsr L3A12,X
            sec
            .byte $54,$54
            sec
LB0A0       sec
            asl TRAMSZ
            .byte $1C,$3C
LB0A5       bvc LB037
            tya
            .byte $9C
            lsr BUFADR+1,X
            .byte $3A,$3A,$54,$54
            sec
            sec
            asl
            asl
            .byte $1A
LB0B4       asl LFCBC,X
            .byte $7C,$7A
            adc (ICDNOZ),Y
            adc (ROWAC+1),Y
            .byte $FA
            sed
            bvs LB131
            .byte $00,$02,$1A
            rol L7E7E,X
            .byte $7C,$7A
            adc (COLAC),Y
            adc (ROWAC+1),Y
            .byte $FA
            sed
            bvs LB141
            ora BUFADR,X
            .byte $3A,$3A
            lsr L8E5C+2,X
            stx L8483+1
            lsr L154E
            ora APPMHI,X
            asl.w L0000
            rts
            .byte $7C,$3A
            and L3919,Y
            .byte $7A
            pha
            .byte $5C,$1C
            rol
            rol
            .byte $1C,$1C
            ora (APPMHI+1,X)
            .byte $04
            asl
            .byte $04,$0B,$04
            ora #$00
            ora (L008F,X)
            asl L00CA
            php
            .byte $8B
            ora L0095
            php
            .byte $8B
            ora L00CA
            php
            .byte $8B
            asl L0095
            .byte $02,$4F,$00
            ora (L009F,X)
            ora (L0096,X)
            php
            .byte $97,$03
LB114       stx CASINI,Y
            .byte $97,$03
            sta TRAMSZ,X
            .byte $97
            ora (L0095,X)
            .byte $00
            ora (L008F,X)
            .byte $02
            dex
            asl L008B
            .byte $02
            dex
            php
LB127       .byte $8B,$03
            sta WARMST,X
            .byte $8B
            ora (L0089,X)
            .byte $02,$4F,$00
LB131       ora (L008F,X)
            asl L00CA
            clc
            .byte $97
            asl L0095
LB139       .byte $00,$02,$1F,$04
            ora L1501,X
            .byte $03
LB141       ora L1501,X
            .byte $03
            ora L9501,X
            .byte $07,$97,$02
LB14B       .byte $4F,$00
LB14D       ora (L008F,X)
            asl L008B
            asl L0097
            .byte $02,$5F,$00
            ora (L009F,X)
            ora (L009E,X)
            .byte $04
            stx TRAMSZ,Y
LB15D       .byte $17,$04
            sta CASINI,X
            .byte $97,$03,$AF
            ora L00AE
            ora (L00CA,X)
LB168       .byte $03,$97,$03,$BF,$04
LB16D       ldx LB601,Y
            asl L0097
            ora (L00B6,X)
            .byte $02,$BF,$00
LB177       sbc (L00B0),Y
            .byte $FA
            bcs LB188+1
            lda (ABUFPT+2),Y
            lda (CHKSUM),Y
            lda (XMTDON),Y
            lda (ATRACT),Y
            lda (COLCRS+1),Y
            lda (DELTAR),Y
LB188       lda (CHKSUM),Y
LB18A       bcs LB1CC+1
            bcs LB1DF
            bcs LB1F1
            bcs LB203
            bcs LB114+1
            bcs LB127
            bcs LB139
            bcs LB14B
            bcs LB15D
            bcs LB16D+2
LB19E       bcs LB168
            tya
LB1A1       sty LOMEM,X
            .byte $80,$80
            cpy L0198
            .byte $04,$07
LB1AA       ora APPMHI+1
            .byte $1F
LB1AD       .byte $3F,$7F,$FF,$FF,$FF,$7F,$3C
LB1B4       .byte $00
            cpy LFE9E
LB1B8       inc LF0FC,X
            .byte $80,$00
LB1BD       .byte $00
            ora (CMCMD,X)
            .byte $1F,$3F,$3F,$3F,$1F,$00
LB1C6       .byte $00
            cpy #$90
            sed
            sed
            sed
LB1CC       beq LB14D+1
            .byte $00
LB1CF       sta NOCKSM
            .byte $7B
            and L3E70,X
            adc CHKSNT,X
            .byte $80
            rol L3CE1,X
            .byte $5C
LB1DC       and L3D6B,X
LB1DF       adc NOCKSM,X
            .byte $7F,$3B,$B2,$3B
LB1E5       cmp LA83B,X
            lda #$AA
            .byte $AB
LB1EB       ldy LAFAD
            bcs LB1A1
            .byte $B2
LB1F1       .byte $B3
LB1F2       ldy L00A8,X
            lda #$AA
            ldx LADAA+2
LB1F9       .byte $AF
            bcs LB1AD
            .byte $B2,$B3
LB1FE       lda L008E,X
            ldx L00B7,Y
            clv
LB203       lda LBBBA,Y
LB206       ldy L8EBB+2,X
            ldx L00B7,Y
            clv
            lda LBBBE,Y
            .byte $BF,$93
LB211       cpy #$C1
            .byte $C2,$C3
            cpy L00C5
            dec L00C7
            iny
LB21A       cpy #$C9
            .byte $C2
            dex
            cpy L00C5
            sta L00C7,X
            iny
LB223       stx LCCCB
            cmp L8ECC+2
            .byte $CF
            bne LB1B8+2
LB22C       stx LD2D1
            .byte $D3,$D4
            stx LD6D5
LB234       stx LFE8E
            .byte $FF,$9B
            lda L00BA
            .byte $BB
LB23C       ldy L8EBB+2,X
            inc L9BFE+1,X
            lda L00BE
            .byte $BB,$BF,$93
LB247       cpy #$C1
            .byte $C2,$C3
            sbc LC69F,X
            lda (L00A3,X)
LB250       cpy #$C9
            .byte $C2
            dex
            sbc L959F,X
            lda (L00A3,X)
LB259       .byte $0C,$D7
            cld
            cmp LDBDA,Y
            .byte $0C,$DC
LB261       cmp LD70C,X
            cld
            dec LE0DF,X
            sbc (L00E2,X)
            .byte $0C
LB26B       .byte $E3
            cpx L00E5
            inc L00E7
            inx
            sbc #$EA
            .byte $EB
LB274       cpx LEEED
            .byte $EF
            beq LB26B
            .byte $F2,$F3,$F4
LB27D       .byte $0C,$0C,$0C,$0C,$FB,$FC,$0C
LB284       sbc L0CFA,Y
            sbc L00F6,X
            .byte $0C,$F7
            sed
            .byte $0C
LB28D       sbc L1FFA,Y
            .byte $FA
            iny
            dey
LB293       rol APPMHI
            sta L0F98,Y
            .byte $0C,$92
            stx LA099
            .byte $0F,$0C
            bpl LB2AE
            .byte $14,$0C
            stx L9898+1
            .byte $0F,$0C,$92
            stx LA099
            .byte $0B,$0F
LB2AE       .byte $0C
            bpl LB2BE
            .byte $0F,$0C
            stx L9898+1
            .byte $0F,$0C,$92
            stx L9A99
            ldy #$1E
LB2BE       .byte $0C,$0C
            ora (DOSINI+1),Y
            .byte $0F,$0C
            stx L9898+1
            .byte $0F,$0C
            sta L998D+1,X
            ldy #$0F
            .byte $0C,$17
            asl DOSINI+1,X
            .byte $0F,$0C
            stx L9898+1
            .byte $1C,$0C,$1B,$92
            stx LA099
            .byte $0F,$0C
            bpl LB2EF
            .byte $14,$0C
            stx L9898+1
            .byte $0B
            stx L0C22
            ora (DOSINI+1),Y
            .byte $0F,$0C
LB2EF       stx L9A99
            stx LA099
            .byte $0F
            bit DOSINI
            bpl LB305+2
            .byte $0B
            stx LA099
            .byte $0B,$0F,$0C,$17
            asl DOSINI+1,X
            .byte $0B
LB305       stx L9A99
            txs
            ldy #$1E
            .byte $0C,$0C
LB30D       bpl LB31B+1
            .byte $0F,$0C,$27
            stx L0C0F
            sta L998D+1,X
            ldy #$0F
            .byte $0C
LB31B       ora (DOSINI+1),Y
            .byte $14,$0C
            asl L8E26+1
            sta L1C98,Y
            .byte $0C,$1B,$92
            stx LA099
            .byte $0F,$0C,$17
            asl DOSVEC+1,X
            .byte $FF
LB331       .byte $27,$00,$00,$00
            ora (L0000,X)
            ora #$00
            .byte $00,$00
            asl L0000
            .byte $02,$00
            php
            .byte $00,$00,$00,$00
            ora (L0000,X)
            ora #$00
            .byte $00,$02,$00,$03,$00,$02,$00,$07
            ora (L0000,X)
            .byte $00,$00
            ora (L0000,X)
            ora #$00
            .byte $02,$00,$00,$00,$02,$00,$02,$00
            asl CASINI
            .byte $00,$00,$00
            ora (L0000,X)
            .byte $0C,$00,$00,$00,$03,$00,$00
            ora (L0000,X)
            ora CASINI+1
            .byte $00,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$03,$00,$02,$00,$04,$04
            .byte $00,$00,$02,$0C,$00
            asl L0000
            .byte $02,$00,$03
            ora L0000
LB38E       .byte $02,$0B,$00,$00,$00,$00
            ora L0000
            .byte $02,$03
            asl L0000,X
            .byte $00,$02,$00,$03,$00,$00,$00,$03,$17,$00,$00
            ora (L0000,X)
            .byte $00,$00,$02,$00,$00,$00,$02,$00
            ora #$00
            ora (L0000,X)
            .byte $0C,$00,$00,$00,$03,$00,$00,$00
            ora (L0000,X)
            .byte $00,$07,$00,$00,$00,$00,$00,$00,$0C,$00,$00,$00,$03,$00,$00
LB3CC       ora (APPMHI,X)
            .byte $27
            stx L9898+1
            .byte $0B
            stx L0C22
            bpl LB3E3
            asl L8E26+1
            sta L8E9A,Y
            sta L0FA0,Y
            bit DOSINI
LB3E3       asl L0B26
            stx LA099
            .byte $0B,$0F,$0C
            asl L9A27
            stx L9A99
            ldy #$0F
            .byte $0C
            asl L8E26+1
            .byte $0F,$0C
            sta L998D+1,X
            ldy #$1E
            .byte $0C,$0C
            asl L8E26+1
            sta L1C98,Y
            .byte $0C,$1B,$92
            stx LA099
            .byte $0F,$0C
            asl L0B26
            stx L9898+1
            .byte $0B
            stx L0C22
            asl L9A27
            stx L9A99
            stx LA099
            .byte $0F
            bit DOSINI
            asl L8E26+1
            sta L0BA0,Y
            asl L8E26+1
            sta L9A9A,Y
            asl L8E26+1
            asl L8E26+1
            .byte $FF
LB438       ora (L0000,X)
            .byte $07,$00,$00,$02,$0C,$00
            asl L0000
            ora (CASINI,X)
            .byte $00,$07,$00,$02,$0B,$00,$00,$00,$00,$07,$00,$00
            ora (DSKFMS,X)
            .byte $00,$00,$02,$00,$04
            ora (L0000,X)
            .byte $00
            ora VDSLST,Y
            .byte $00,$00,$03
            ora L0000
            ora #$00
            ora (L0000,X)
            .byte $0C,$00,$00,$00,$00
            ora (TRAMSZ,X)
            .byte $00,$07,$00,$00,$00,$00,$00,$00,$0C,$00,$00,$00
            ora (RAMLO,X)
            .byte $00
            ora (WARMST,X)
            .byte $00,$00,$02,$0C,$00,$03
            ora L0000
            .byte $00
            ora #$00
            .byte $02,$0B,$00,$00,$00
LB48E       .byte $00
            ora (TRAMSZ,X)
            .byte $00,$1A,$00,$00,$02
            asl
            .byte $00,$17,$00,$00
            ora (DOSVEC+1,X)
            .byte $00,$1A,$0C,$00
LB4A1       ora L0B0E,Y
            ora L0F0B
            .byte $0C
            bpl LB4B7
            .byte $1F,$0C,$0B
            ora L0D0B
            .byte $1F,$0C
LB4B2       bpl LB4C0+1
            .byte $0F,$0C,$0B
LB4B7       and L393B,X
            .byte $3B
            and L0D0B,X
            .byte $0F,$0C
LB4C0       bpl LB4CF
            .byte $23,$0C
            bpl LB4D3
            .byte $1F,$0C
            jsr L0B0C
LB4CB       and L393A,X
            .byte $3C
LB4CF       .byte $0B
            and L1F0D,Y
LB4D3       .byte $0C
            and ICBALZ
            .byte $0F,$0C
            bpl LB4E7
            .byte $0B,$0F,$0C
            and L393A,X
            .byte $3C,$0B
            ora L0C0F
            bpl LB4F4
LB4E7       .byte $0F
            jsr L200C
            bpl LB4F6+2
            ora L0C1F
            .byte $27,$0C,$27,$0C
LB4F4       .byte $0B,$3B
LB4F6       and L393A,Y
            .byte $3B,$3C,$0B
            ora L0C23
            bpl LB50E
            .byte $0B
            ora L390B
            plp
            .byte $3A,$3B
            plp
            .byte $0B
            and L0B3D,Y
            .byte $3B
LB50E       rol L3C0B,X
            .byte $0B
            ora L0F24
            .byte $0C
            jsr L100C
            .byte $0B
            and L260D,Y
            .byte $0B
            plp
            .byte $0B,$0B
            rol L0F0B,X
            .byte $0C
            bpl LB534
            .byte $B2
            lda #$AA
            lda #$AA
            lda #$91
            ora L0B0B
            rol L0D0B,X
LB534       .byte $1F,$0C
            bpl LB544+1
            .byte $B3,$B2
            stx L8EAF+1
            bcs LB4CB+2
            sta (DOSVEC+1),Y
            .byte $22,$0B,$0B
LB544       rol L0F0B,X
            .byte $0C
            bpl LB557
            .byte $0F,$0C
            bpl LB55B
            stx L0FB3
            .byte $0C,$0B
            rol L0D0B,X
            .byte $23
LB557       .byte $0C
            bpl LB567
            .byte $23
LB55B       .byte $0C
            bpl LB56B
            stx L0F0D
            .byte $0C,$0B,$1F,$0C
            and ICBALZ
LB567       .byte $0F,$0C
            and ICBALZ
LB56B       .byte $1B,$1C
            ora LB30D,X
            stx L0F0D
            .byte $0C,$0B
            ora L0C0F
            bpl LB585+2
            .byte $1F,$0C,$27,$0C
            bpl LB58B
            .byte $1B,$1C
            ora LB38E,X
LB585       ora L0C0F
            .byte $27,$0C,$27
LB58B       .byte $0C,$FF
LB58D       .byte $27
            ora DDEVIC
            .byte $00,$02,$00,$00,$00
            ora.w DOSINI+1
            .byte $03,$00,$00,$02,$00,$00,$00,$0C,$00,$00,$00,$00,$00,$00,$07,$00
            .byte $00,$02,$00,$00,$00,$02,$00,$00,$00,$00,$00
            ora #$01
            .byte $00,$00
            ora (L0000,X)
            .byte $04
            ora (NGFLAG,X)
            .byte $00
LB5BE       .byte $02,$00,$00,$00,$02,$00,$00
            ora (L0000,X)
            php
            .byte $00,$00
            ora (L0000,X)
            php
            .byte $02,$00,$02,$00,$00,$00,$00,$00,$00,$00
            ora (L0000,X)
            .byte $00
            ora (L0000,X)
            ora (L0000,X)
            ora (L0000,X)
            .byte $00,$00,$00,$00,$00,$00
            asl CASINI+1
            .byte $00,$02,$00,$00
            ora NGFLAG
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$07,$03
            .byte $00,$00,$00
LB601       .byte $00,$00,$00,$03
            ora (NGFLAG,X)
            .byte $00,$00,$00,$04,$02,$00
            ora L0000
            .byte $02,$00,$04,$00,$02,$00,$02,$00,$00,$00,$00,$07,$02,$00
            ora L0000
            .byte $00,$02,$00,$03,$00,$00,$00,$00,$02,$00,$02,$00,$02,$00,$03,$02
            .byte $00
            ora (L0000,X)
            .byte $02,$00,$00,$00,$02,$00,$02,$00,$00,$00
            bpl LB63F+1
            .byte $00
LB63F       ora (L0000,X)
            .byte $00,$02,$00,$00,$00,$02,$00
            ora (NGFLAG,X)
            .byte $00,$00,$0F
            ora (L0000,X)
            .byte $02,$00,$00,$00,$02,$00,$00,$00,$02,$00,$00,$00,$00
            ora (L0000,X)
            asl.w NGFLAG
            .byte $00,$02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$02
            .byte $00,$02,$00
            ora (L0000,X)
LB676       asl DOSINI
            bpl LB686+1
            .byte $0F,$0C
            bpl LB68B
            .byte $3A,$3B,$0B
            and L1B0B,Y
            .byte $1C,$9E
LB686       stx L3A0D
            .byte $3B,$0B
LB68B       plp
            and L280B,Y
            .byte $0B
            and (DOSVEC+1,X)
            .byte $0F,$0C,$0C
            bpl LB6A4
            .byte $0F,$0C
            jsr L100C
            .byte $0B,$1B,$1C,$9E
            ora L280B
            .byte $0B
LB6A4       plp
            .byte $0B
            ora L1F23
            .byte $0C
LB6AA       bpl LB6B7+2
            .byte $0B,$1B,$1C
            ora L260D,X
            .byte $0B,$0F,$0C
            and ICBALZ
LB6B7       ora L0C0F
            bpl LB6C7
            .byte $3A,$3B,$0B,$13,$0C,$17
            ora L0D0B
            .byte $1F,$0C
LB6C7       bpl LB6D4+2
            .byte $1F,$0C,$92
            lda #$AA
            lda #$AA
            lda #$14
            .byte $0C
            clc
LB6D4       ora L0F0B
            .byte $0C
            bpl LB6E5+2
            .byte $0F,$0C
            ora L0C0F
            jsr L200C
            .byte $0C,$92,$AB
LB6E5       ldy LACAB
            .byte $AB
            ora DOSINI,X
            ora L0B0D,Y
            ora L0C1F
            .byte $27,$0C
            bpl LB702
            .byte $1F,$0C
            jsr L0B0D
            lda LADAE
            ldx L16AD
            .byte $0C
            txs
LB702       lda #$AA
            lda #$AA
            sta (DOSINI+1),Y
            .byte $0B
            plp
            .byte $0B
            ora L3B3A
            ora L0B26
            .byte $22,$0B
            stx LABAB
            .byte $AB,$AB
            ora L8E0A+2
            bcs LB6AA+1
            .byte $AB
            ldy L0BB1
            .byte $22,$0B
            ora L0D0B
            .byte $0F,$0C,$92
            lda #$AA
            lda #$AA
            ora L0C1F
            .byte $92
            lda L0FAE
            .byte $0C
            bpl LB743+1
            .byte $0B
            ora L0C1F
            .byte $92
            stx L8EAF+1
            ora L0C0F
            .byte $92
LB743       stx L0F0D
            .byte $0C
            bpl LB754
            .byte $FF
LB74A       ora (L0000,X)
            .byte $00,$00,$02,$00,$00,$00,$00,$00
LB754       .byte $00
            ora (L0000,X)
            .byte $02,$00,$00,$03,$00,$00,$00,$00,$00,$00,$00,$02,$00,$00,$00,$00
            .byte $02,$00,$00,$00,$00,$00,$00,$00
            asl L0000
            .byte $02,$00,$03,$02,$00
            ora (L0000,X)
            .byte $04,$00,$00,$00,$02,$00,$00,$0B,$00,$02,$00,$02,$00
            asl L0000
            .byte $02,$00,$00,$00,$00,$02,$00
            ora L0000
            .byte $00,$04,$00,$02,$00
            ora (CMCMD,X)
            .byte $00,$00,$02,$00
            ora (L0000,X)
            asl L0000
            ora (L0000,X)
            ora (L0000,X)
            ora (L0000,X)
            .byte $02,$00
            ora (CASINI+1,X)
            .byte $00,$02,$00,$00,$00,$02,$02,$00,$00,$00,$02,$00,$00,$00
            ora (L0000,X)
            ora (L0000,X)
            .byte $00,$00,$02,$00
            ora (CASINI+1,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$07
            ora (L0000,X)
            ora (L0000,X)
            .byte $00,$00,$02,$00
            ora (L0000,X)
            ora (L0000,X)
            .byte $00,$00,$00,$00
            ora (NGFLAG,X)
            .byte $00,$00,$03,$00,$04,$00,$00,$00
            ora (L0000,X)
            ora (L0000,X)
            .byte $00,$03,$02,$00,$00,$00,$00,$00
            ora (L0000,X)
            .byte $00
            ora (NGFLAG,X)
            .byte $03,$00
            asl L0000
            ora (L0000,X)
            ora (L0000,X)
            .byte $00,$00
            asl L0000
            .byte $00
            ora (L0000,X)
            .byte $02,$00,$00
            ora (RAMLO,X)
            .byte $00
            asl L0000
            .byte $02,$00,$00
            ora (L0000,X)
            asl L0000
            ora (L0000,X)
            .byte $00,$02,$00
LB81B       ora (RTCLOK+2,X)
LB81D       and BUFADR,X
            and BUFADR+1,X
            and ICCOMT,X
            and DSKFMS,X
            and DSKFMS+1,X
            and DSKUTL,X
            and DSKUTL+1,X
            and ABUFPT,X
            and ABUFPT+1,X
            and NOCKSM,X
            and BPTR,X
            and FTYPE,X
            and FEOF,X
            and FREQ,X
            and SOUNDR,X
            and CRITIC,X
            and FMSZPG,X
            and FMSZPG+1,X
            and FMSZPG+2,X
            and FMSZPG+3,X
            and ADRESS,X
            and ADRESS+1,X
            and L008C,X
            and L008D,X
            and L00B4,X
            and L00B5,X
            and L00DC,X
            and L00DD,X
            and RAMLO+1,X
            rol L009B,X
            rol L009C,X
            rol L009D,X
            rol L009E,X
            rol L009F,X
            rol L00A0,X
            rol L00A1,X
            rol L00A2,X
            rol L00C4,X
            rol L00C5,X
LB86B       rol L00C6,X
            rol L00C7,X
            rol L00C8,X
            rol L00C9,X
            rol L00CA,X
            rol L00EC,X
            rol L00ED,X
            rol L00EE,X
            rol L00EF,X
            rol L00F0,X
            rol L00F1,X
            rol L00F2,X
            rol RTCLOK+2,X
            .byte $37
            ora LTEMP+1,X
            asl LTEMP+1,X
            .byte $17,$37
            clc
            .byte $37
            ora L1A37,Y
            .byte $37
            and L3E37,X
            .byte $37,$3F,$37
            rti
            .byte $37
            eor (LTEMP+1,X)
            .byte $42,$37
            ror LTEMP+1
LB8A0       .byte $67,$37
            pla
            .byte $37
            adc #$37
            ror
            .byte $37
            sed
            rol L00F9,X
            rol L00FA,X
            rol L00FB,X
LB8AF       rol L00FC,X
            rol L00FD,X
            rol ICHIDZ,X
            .byte $37
            and (LTEMP+1,X)
            .byte $22,$37,$23,$37
            bit LTEMP+1
            and LTEMP+1
            rol LTEMP+1
            eor L4E37
            .byte $37,$4F,$37
            ror LTEMP+1,X
            .byte $77,$37
LB8CC       ldx L00B4,Y
            ldy L00B5,X
            ldy L00B4,X
            ldy L00B5,X
            ldy L00B4,X
            stx LB0B4+2
            stx L8E8C+2
            bcs LB86B+1
            stx L8E8C+2
            .byte $B3
            stx LB38E
            stx LB38E
            stx LB4B2+1
            lda L00B4,X
            ldy L00B5,X
            ldy L00B4,X
            lda L00AB,X
            ldy LABAB
            ldy LABAB
            .byte $B7,$B7,$B7,$B7,$B7,$B7,$B7
            stx LAFAB
            .byte $AB,$AB,$AF,$AB
            ldy L00B5,X
            ldy L00B4,X
            lda L00B4,X
            stx LB08C+2
            stx LB48E
            lda L00B4,X
            ldy L00B5,X
            ldy L008E,X
            stx L8EAF+1
            stx LABAC
            .byte $B7,$B7,$B7,$B3,$B3,$DF,$77,$77,$77,$77,$77,$DF,$FF,$DF,$5F,$DF
            .byte $DF,$DF,$DF,$57,$FF,$DF,$77,$F7,$DF,$7F,$7F,$57,$FF,$DF,$77,$F7
            .byte $DF,$F7,$77,$D7,$FF,$F7,$D7,$77,$77
            eor L00F7,X
            .byte $F7,$FF,$57,$7F,$57,$F7,$F7,$77,$D7,$FF,$F7,$DF,$7F,$5F,$77,$77
            .byte $DF,$FF,$57,$F7,$F7,$DF,$7F,$7F,$7F,$FF,$DF,$77,$77,$DF,$77,$77
            .byte $DF,$FF,$DF,$77,$77,$D7,$F7,$DF,$7F,$FF,$FF,$77
            cmp LF7F5,X
            .byte $D7,$77
            sbc.w L0000,X
            .byte $00,$00,$00,$00,$00,$00
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            sta L0095,X
            lda L00A5
            lda #$A9
            tax
            tax
            ror
            ror
            .byte $5A,$5A
            lsr COLCRS+1,X
            eor COLCRS,X
            .byte $73
            nop
            nop
            .byte $FA,$FA
            inc LFFFE,X
            .byte $FF,$7F,$7F,$5F,$5F,$57,$57
            eor COLCRS,X
            sta L0095,X
            sta L0095,X
            sta L0095,X
            sta L0095,X
            sta L0095,X
            lda L00A5
            lda L00A5
            lda L00A5
            lda L00A5
            lda L00A5
            lda #$A9
            lda #$A9
            lda #$A9
            lda #$A9
            lda #$A9
            tax
            tax
            tax
            tax
            ror
            ror
            ror
            ror
            ror
            ror
            ror
            ror
            .byte $5A,$5A,$5A,$5A,$5A,$5A,$5A,$5A,$5A,$5A
            lsr COLCRS+1,X
            lsr COLCRS+1,X
            .byte $57,$57,$57,$57,$57,$57,$57,$57
LB9FD       ora BUFADR,X
            .byte $00,$00
            ora (NGFLAG,X)
            .byte $00,$00
            eor COLCRS,X
            .byte $00
            bvc LBA5F
            eor L0000,X
            ora RAMTOP
            ror
            asl
            .byte $5A
            lsr COLCRS+1,X
            .byte $00
            ora COUNTR+1
            .byte $7F,$0F,$5F,$57,$57,$00
            ora L0094
            sta (LOMEM+1,X)
            sta LOMEM+1
            sta (L00AA,X)
            tax
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor (TEMP,X)
            php
            plp
            plp
            plp
            plp
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$80
            ldy #$20
            sta L0095,X
            lda #$A9
            lda L00A5
            lda (L00A1,X)
            ldx #$A2
            .byte $82
            txa
            asl
            rol
            rol
            tax
            ror
            ror
            lsr COLCRS+1,X
            .byte $5A,$5A,$54,$54,$00,$00,$14,$14
            bvc LBAAB
            rti
            rti
            eor COLCRS,X
LBA5F       eor COLCRS,X
            eor COLCRS,X
            .byte $64,$5A
            php
            php
            .byte $02,$02
            php
            php
            .byte $02,$02,$57,$DF,$FF,$FF,$FF,$FF,$FF,$FF,$57,$DF,$FF,$FF,$77
            cmp LFFFF,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
            cmp L00FF,X
            .byte $FF,$77
            cmp LFFFF,X
            .byte $FF
            cmp L00D5,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
            cmp L00FF,X
            .byte $7F,$7F,$7F,$7F,$7F,$FF,$7F,$7F,$7F,$7F,$7F,$FF,$FF
            cmp L00FF,X
            .byte $77
            cmp LFFFF,X
            .byte $FF
LBAAB       .byte $FF,$FF
            nop
            nop
            .byte $FA,$FA
            inc LFFFE,X
            cmp COUNTR+1,X
            .byte $7F,$DF,$DF,$F7,$F7
            sbc LDFFD,X
            .byte $DF,$DF,$DF,$DF,$DF,$FF,$FF,$57
LBAC6       .byte $DF,$7F,$FF,$FF,$FF,$FF,$FF,$57,$DF,$7F,$77
            cmp LFFFF,X
            .byte $FF,$5F,$5F,$5F,$5F
            sbc L00F5,X
            sbc L00F5,X
            cmp L00D5,X
            .byte $F7,$FF,$FF,$FF,$FF,$FF
            cmp L00D5,X
            .byte $F7,$7F,$7F,$7F,$7F,$7F
LBAED       .byte $03
            cpy LCF3C
            .byte $F3,$FF,$3C,$3C,$0C,$C3,$33
LBAF8       .byte $33,$CF,$3F,$3F,$0F,$C3,$0C,$0C
            bmi LBB35
            .byte $C3,$FC
            beq LBAC6
            bmi LBAF8
            cpy L33FF
            .byte $03,$00,$03,$0C,$3F
            cpy LC0F3
            .byte $00,$00
            rol
            .byte $22
            ldx #$88
            rol
            tax
            tay
            tay
            .byte $03,$0F,$3F,$3C,$33,$3F,$0F,$03
            cpy #$F0
            .byte $FC,$0C,$FC,$FC
LBB2B       beq LBAED
            .byte $00,$03,$0F,$0F,$3C,$33
LBB33       .byte $3F,$0F
LBB35       beq LBB33
            cpy LFC3C
            beq LBB2B+1
            cpy #$0F
            .byte $3F,$33,$3C,$3F,$0F,$0F,$03,$00
            cpy #$F0
            beq LBB86
            cpy LF0FC
            eor COLCRS,X
            lsr COLCRS,X
            cli
            .byte $5A
            cli
            lsr
            eor RAMLO+1,X
            and (L0090,X)
            plp
            tax
            php
            ldy #$55
            eor COLCRS,X
            eor COLCRS,X
            eor BUFADR,X
            ora L00D2
            .byte $00
            asl
            asl
            asl
            asl
            asl
            .byte $02,$80
            asl
            tax
            tax
            tax
            rol
            rol
            tay
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $02,$04,$04
            tay
            tay
            tax
            tay
            eor L00A8,X
LBB86       ldy #$20
            .byte $00
            asl
            txs
            .byte $5A,$5A
            php
            .byte $00
            jsr L8000
            lda #$95
            sta COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            adc DINDEX
            tay
            tay
            ldy #$60
            eor COLCRS,X
            eor COLCRS,X
            eor CASINI,X
            .byte $03,$14,$54
            cli
            .byte $5A
            eor COLCRS,X
            eor COLCRS,X
            lsr COLCRS,X
            cli
            .byte $5A
            eor L554A,Y
            ora ICDNOZ
            bcc LBBE2
LBBBA       tax
            cli
            ldy #$73
LBBBE       ror L7FEB
            ror L7E5E,X
            .byte $77
            eor L00FF,X
            .byte $FF,$7F,$7F,$5F,$5F,$57,$57,$03,$03,$03,$03
LBBD2       .byte $C3,$C3,$D3,$77
            sta L0095,X
            lda #$A9
            lda L00A5
            lda (L00A1,X)
            .byte $FF
            sbc LFEFA,X
LBBE2       .byte $FF,$FF,$FF,$FF
            ldx #$A2
            .byte $82
            txa
            asl
            rol
            rol
            asl
            ror
            ror
            lsr COLCRS+1,X
            .byte $5A,$5A,$54,$54
            ror
            ror
            ror
            ror
            .byte $5A,$DA
            dec L00F6,X
            .byte $FD,$FD
;
            org $02E2
;
            .word L7FE1
;
            org $9C00
;
            asl FKDEF
L9C02       lda L06D5
            bne L9C39
            lda L06DB
            bpl L9C39
            lda #$0D
            bne L9C1A
L9C10       lda #$0E
            bne L9C1A
L9C14       lda #$07
            bne L9C1A
L9C18       lda #$0B
L9C1A       jsr L9B79
            lda #$FF
            sta L06E5
            lda L06DB
            bmi L9C34
            lda #$FF
            sta L06DB
            lda #$00
            sta L06DC
            sta L06DD
L9C34       lda L1012
            beq L9BED
L9C39       rts
L9C3A       lda #$00
            sta L06D5
            sta L06D3
            sta L06D4
            sta L06DF
            jsr L9DF2
            sta L06D8
            cmp #$0B
            bne L9C7C
            lda L06D1
            cmp #$C2
            bcc L9C68
            lda L06D0
            cmp #$90
            bcs L9C68
            lda #$03
            sta L06CC
L9C65       jmp L9D46
L9C68       lda #$30
            sta L06CE
            jsr L9D5D
            beq L9C7C
            lda #$40
            sta L06CE
            jsr L9D5D
            beq L9C39
L9C7C       lda #$9C
            sta L06CE
            jsr L9D5D
            bne L9CA2
            lda #$94
            sta L06CE
            jsr L9D5D
            beq L9CA2
            lda L06D1
            cmp #$C2
            bcc L9CA2
            cmp #$C8
            bcs L9CA2
            lda #$03
            sta L06CB
            bne L9C65
L9CA2       lda #$92
            sta L06CE
            jsr L9D5D
            beq L9CBE
            lda L06D1
            cmp #$C2
            bcs L9CBE
            lda L06D0
            cmp #$7C
            bcs L9CBE
            sta L06CD
            rts
L9CBE       lda L06D8
            cmp #$A8
            bcc L9CEC
            cmp #$B6
            bcs L9CEC
            lda L06D0
            cmp #$6D
            bcc L9CE0
            cmp #$70
            bcs L9CD6
            bcc L9CE6
L9CD6       cmp #$9D
            bcc L9CE0
            cmp #$A0
            bcs L9CE0
            bcc L9CE6
L9CE0       lda #$FF
            sta L06D4
            rts
L9CE6       jsr L8A8C
            jmp LA598
L9CEC       lda L06D8
            cmp #$B6
            bcc L9CFD
            cmp #$C9
            bcs L9CFD
L9CF7       lda #$FF
            sta L06D5
            rts
L9CFD       ldx #$08
L9CFF       cmp LAF89,X
            beq L9CF7
            dex
            bpl L9CFF
            cmp #$CB
            bcc L9D11
            cmp #$D7
            bcs L9D11
            bcc L9D34
L9D11       ldx #$04
L9D13       cmp LAF83+1,X
            beq L9CE6
            dex
            bpl L9D13
            cmp #$D7
            bcc L9D25
            cmp #$E3
            bcs L9D25
            bcc L9D3D
L9D25       jsr L9D7D
            bne L9D33
            lda L06D8
            cmp #$8E
            bne L9D33
            beq L9CE6
L9D33       rts
L9D34       jsr L8367
            jsr L8A8C
            jmp LA598
L9D3D       jsr L8374
            jsr L8A8C
            jmp LA598
L9D46       ldx #$03
            lda L06C6
L9D4B       cmp LAF7E+2,X
            beq L9D57
            dex
            bpl L9D4B
            lda #$00
            beq L9D59
L9D57       lda #$FF
L9D59       sta L06DE
            rts
L9D5D       sec
            lda L06D1
            sbc L06CE
            bcc L9D77
            sta L06D2
            sec
            lda L06D0
            sbc #$20
            bcc L9D7A
            lsr
            cmp L06D2
            bcc L9D7A
L9D77       lda #$00
            rts
L9D7A       lda #$FF
            rts
L9D7D       lda L06BF
            and #$0C
            beq L9D8F
            lda L06D0
            cmp #$82
            bcc L9D9B
            cmp #$94
            bcs L9D93
L9D8F       lda #$00
            beq L9D9D
L9D93       cmp #$B2
            bcc L9D9B
            cmp #$C2
            bcc L9D8F
L9D9B       lda #$FF
L9D9D       sta L06D3
            rts
L9DA1       lda L06C6
            lsr
            bcc L9DB2
            lsr
            bcc L9DB6
            lsr
            bcc L9DBA
            ldx #$04
L9DAF       jmp L9DBE
L9DB2       ldx #$0C
            bne L9DAF
L9DB6       ldx #$08
            bne L9DAF
L9DBA       ldx #$00
            beq L9DAF
L9DBE       lda L06E5
            bne L9DCD
            inc L06C8
            lda L06C8
            and #$02
            bne L9DD6
L9DCD       jsr L9DE7
            lda #$00
            sta L06C1
            rts
L9DD6       inx
            inx
            jsr L9DE7
            lda L06CB
            ora L06CC
            bne L9DE6
            jsr L97D0
L9DE6       rts
L9DE7       lda LAEDB,X
            sta L00B9
            lda LAEDB+1,X
            sta L00BA
            rts
L9DF2       sec
            lda L06D1
            sbc #$30
            ldy #$00
            ldx #$04
            stx L06D6
            sec
            jsr L9E48
            sty L06D7
            sec
            lda L06D0
            sbc #$20
            ldy #$00
            ldx #$08
            stx L06D6
            sec
            jsr L9E48
            sty L067D
            lda #$28
            sta L067C
            jsr L871D
            clc
            lda L067A
            adc L06D7
            sta L067A
            lda L067B
            adc #$00
            sta L067B
            clc
            lda #$40
            adc L067A
            sta L00E8
            lda #$3B
            adc L067B
            sta L00E9
            ldy #$00
            lda (L00E8),Y
            rts
L9E48       sbc L06D6
            iny
            cmp L06D6
            bcs L9E48
            rts
L9E52       lda L06D3
            beq L9E74
            lda L1011
            bne L9E74
            lda L06D0
            cmp #$80
            bcc L9E6C
            cmp #$B0
            bcc L9E70
            ldx #$02
L9E69       jmp L9ECA
L9E6C       ldx #$00
            beq L9E69
L9E70       ldx #$01
            bne L9E69
L9E74       lda L06D4
            beq L9E97
            lda L100F
            bne L9E97
            lda L06D0
            cmp #$70
            bcc L9E8F
L9E85       cmp #$A0
            bcc L9E93
            ldx #$02
L9E8B       jmp L9EE8
L9E8E       rts
L9E8F       ldx #$00
            beq L9E8B
L9E93       ldx #$01
            bne L9E8B
L9E97       lda L06D5
            beq L9E8E
            lda L1010
            bne L9E8E
            lda #$58
            sta L06CE
            jsr L9D5D
            bne L9EBB
            lda L06D0
            cmp #$88
            bcs L9EB6
            ldx #$01
            bne L9EB8
L9EB6       ldx #$03
L9EB8       jmp L9EF9
L9EBB       lda L06D0
            cmp #$80
            bcs L9EC6
            ldx #$00
            beq L9EB8
L9EC6       ldx #$02
            bne L9EB8
L9ECA       lda L06BF
            and #$0C
            bne L9ED7
            jsr L8A8C
            jsr LA598
L9ED7       lda L063A,X
            bne L9EE2
L9EDC       jsr L9BD2
            jmp L9BD2
L9EE2       jsr L9BD8
            jmp L9BD8
L9EE8       lda L062E,X
            beq L9EF3
            jsr L9EDC
            jmp L9EDC
L9EF3       jsr L9EE2
            jmp L9EE2
L9EF9       lda L064F,X
            cmp #$02
            bne L9F1D
            stx L06E1
            jsr L9DF2
            cmp #$CB
            bcc L9F1A
            cmp #$D7
            bcs L9F1A
            jsr L8367
            jsr LA595
            lda #$00
            sta L06D5
            rts
L9F1A       ldx L06E1
L9F1D       lda L0625,X
            bne L9F35
            lda L0640,X
            cmp #$08
            beq L9F3A
L9F29       ldy #$03
L9F2B       jsr L9BD2
            jsr L9BBE
            dey
            bpl L9F2B
            rts
L9F35       lda L0640,X
            beq L9F29
L9F3A       ldy #$03
L9F3C       jsr L9BD8
            jsr L9BC8
            dey
            bpl L9F3C
            rts
L9F46       lda L00A3
            beq L9F53
            dec L00A3
L9F4C       lda L00A4
            beq L9F94
            dec L00A4
            rts
L9F53       lda #$AA
            sta AUDC1
            ldx #$00
            lda (L0082,X)
            sta LOMEM
            beq L9F87
            cmp #$FF
            beq L9F7C
            sta L00A3
            dec L00A3
            inc L0082
            bne L9F6E
            inc L0083
L9F6E       lda (L0082,X)
            sta AUDF1
            inc L0082
            bne L9F79
            inc L0083
L9F79       jmp L9F4C
L9F7C       lda #$4B
            sta L0082
            lda #$A0
            sta L0083
            jmp L9F53
L9F87       lda #$A0
            sta AUDC1
            lda #$00
            sta AUDF1
            jmp L9F4C
L9F94       ldx #$00
            lda (L0084,X)
            beq L9FB5
            sta AUDF2
            lda L00A5
            sta L00A4
            dec L00A4
            inc L0084
            bne L9FA9
            inc L0085
L9FA9       lda (L0084,X)
            sta AUDC2
            inc L0084
            bne L9FB4
            inc L0085
L9FB4       rts
L9FB5       lda #$A0
            sta AUDC2
            lda #$00
            sta AUDF2
            rts
            asl
            .byte $80
            asl
            jmp (L600A)
            asl
            eor (RAMLO+1),Y
            jmp (L6605)
            asl
            rts
            asl
            jmp (L800A)
            .byte $02,$80
            asl
            .byte $80
            asl
            jmp (L600A)
            asl
            jmp (L6028)
            .byte $00,$00
            bpl L9FE2
L9FE2       .byte $00,$FF,$00,$FF,$02,$00,$00,$00,$00,$FF,$00,$FF,$02,$00,$00,$00
            .byte $00
            nop
            .byte $00,$B7,$64,$00
            rti
            rts
            .byte $00,$80,$00,$04,$F9,$9F
;
            org $BC00
;
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$00
            ora (COLCRS),Y
            .byte $77,$FF,$FF,$FF,$FF
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            cmp L00E5,X
            .byte $00,$00
            ora (NGFLAG,X)
            ora RAMLO+1
            ora L7F19,Y
            .byte $7F,$5F,$5F
            eor L455D,X
            eor L0094
            bcc LBC29+1
LBC29       ora BOOT
            ora L5A1A,Y
            .byte $FF,$7F,$5F
LBC31       .byte $9F,$97,$57
            eor COLCRS,X
            tax
            tax
            ror
            ror
            .byte $5A,$5A
            dec L00D6,X
            eor L00D5,X
            eor L0095,X
            sta L00D5,X
LBC44       sbc L00FD,X
            .byte $80,$80
            lda L00A5
            lda #$A9
            tax
            tax
            eor OLDCHR,X
            eor L00D5,X
            eor DINDEX,X
            .byte $57,$5F
            eor COLCRS,X
            .byte $54,$54
LBC5A       bvc LBCAC
LBC5C       rti
            rti
            ror
            .byte $5A
            lsr COLCRS+1,X
            eor COLCRS,X
            eor COLCRS,X
            cpy #$C0
            beq LBC5A
            .byte $FC,$FC,$FF,$FF,$FC
            beq LBC31
            cpy #$F0
LBC73       .byte $FC
            sbc LFFFD,X
            .byte $FF,$FF,$FF
            cpy L0120
            .byte $03,$FF,$FF,$FF,$FC
            beq LBC44
            .byte $00,$00,$FF,$FF,$FF,$0F,$03,$00,$00,$00
            bmi LBC5C
            .byte $00,$C3,$FF
            cmp LFFF7,X
            .byte $00,$00,$00,$00
            cpy #$F7
            adc.w L00FF,X
            .byte $00,$00,$00,$00,$77
            cmp LF0FF,X
            .byte $FC
            cpy LC000
            .byte $77
LBCAC       cmp LFFFF,X
            .byte $FF,$FF
            beq LBC73
            .byte $00,$00,$00,$FF,$FF,$FF,$3F,$0F,$03,$00,$00,$FF,$FF,$FF,$FF,$33
            .byte $00
            rti
            cpy #$00
            .byte $00,$00,$00,$00
            cmp LFF77,X
            .byte $00,$00,$00,$00,$03,$DF,$7F,$FF,$0C,$33,$00,$C3,$FF,$77,$DF,$FF
            .byte $0F,$3F,$33,$00
LBCE2       .byte $03
            cmp LFF77,X
            .byte $FF,$FF,$FF
            cpy #$C0
            .byte $00,$00
LBCED       bmi LBCED+1
            .byte $FF,$FF,$FF,$3F,$0F,$8F,$AB
            bpl LBCF8
LBCF8       .byte $00,$00,$00
            rti
            bne LBCE2
            rol
            asl
            .byte $02,$02,$00,$00,$00,$00,$BF,$BF,$BF,$BF,$BF
            ldy L303C,X
            sbc #$ED
            .byte $EF,$FF,$F7,$FF,$FF,$FF,$00
            cpy #$70
            .byte $F4
LBD1A       adc LFFDF,X
            .byte $FF,$00,$00,$00,$00,$00
            bvs LBD1A
            .byte $FF,$BF,$BF,$BF,$B3,$B3,$83,$83,$03,$00
            cpy #$70
            .byte $F4
            adc L00FF,X
            sbc LFFFF,X
            .byte $FF,$FF,$F7,$FF
            sbc LFFFF,X
            .byte $3F,$3F,$0F,$0F,$03,$00,$00,$00,$FF,$FF,$FF,$BF,$BF,$AF,$AF,$AB
            bpl LBDA0
            .byte $F4,$FC,$F4
            sbc L00FD,X
LBD55       sbc L2AA8,X
            asl
            .byte $02,$00,$00,$00,$00,$FF,$3F,$0F,$8F,$83,$03,$00,$04,$F7
            sbc LFEFF,X
            .byte $FA,$FF,$FF,$FF,$00
            ldy #$40
            .byte $80
            ldy #$D0
            .byte $F4
            sbc L4C04,X
            rti
            cpy #$00
            .byte $03,$03,$0F,$CF,$CF,$C3,$C3,$C3
            cpy #$40
            beq LBD55+2
            .byte $F4,$F4,$FC,$F4
            sbc L00FD,X
            sbc LEAF8,X
            .byte $D2,$D2
            sbc (L00E1,X)
            .byte $D2,$D2,$FF,$FF,$3F,$3F,$0F,$03,$03,$03,$E2,$D2
LBDA0       sta (LOMEM+1),Y
            rti
            eor (L0091,X)
            .byte $92,$00,$00
            sty L0084
            sty L807F+1
            .byte $02
            inx
            .byte $FF
            inc LB5BE
            .byte $D7,$FF,$FF
            inx
            .byte $9E
            stx DELTAC,Y
            sbc LFFFF,X
            .byte $FF,$FF
            inc LF9FE,X
            sbc LC8C8,Y
            cmp #$BF
            .byte $AF,$0B,$07,$07,$0B,$07,$07
            ora #$18
            clc
            and LC209,Y
            .byte $F2,$72,$0B,$0F,$2F,$0B,$07
            asl CRITIC
            eor (OLDCOL+1,X)
            .byte $F7,$DF,$7F
            adc LFFFD,X
            .byte $FF
            sta (L0092),Y
            nop
            .byte $7B,$FF,$FF,$FF,$FF
            adc L0095
            lda LFFBF,X
            .byte $DF,$FF,$7F
            eor COLCRS,X
            eor COLCRS,X
            eor L00D5,X
            sbc L00FD,X
            .byte $5F,$5F,$7F,$7F,$FF,$DF,$D7,$57,$FF,$FF,$FF,$FF,$FF,$FF
            sbc L55FD,X
            cmp L00D5,X
            cmp L00D5,X
            cmp L00F5,X
            sbc L00F5,X
            sbc INSDAT,X
            adc L555D,X
            eor COLCRS,X
            adc ENDPT+1,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $5F,$5F,$7F,$7F,$7F,$7F,$77,$5F,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            eor L00D5,X
            cmp L00D5,X
            cmp L00D5,X
            cmp L00D5,X
            eor L5555,X
            eor COLCRS,X
            eor COLCRS,X
            eor L00F7,X
            .byte $F7
            adc ENDPT+1,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $54
            bvc LBE94
            eor L6A6B
            eor #$02
            ora ICBAHZ,X
            ldx L00DD,Y
            and L5899,Y
            tay
            stx MLTTMP,Y
            adc #$AA
            .byte $42
            ora (RAMLO+1,X)
            ora CASINI
            .byte $00,$02,$02,$02,$02,$02,$00
            ldy #$00
            tay
            tax
            txa
            tax
            ldx #$80
            ora BUFADR
            ora BUFADR,X
            sta (L0000,X)
            .byte $00,$80,$04
            ora BOOT
            and L00AA
            lda L0099
            stx L0000,Y
            .byte $00
            rti
            bvc LBEF4+1
            .byte $5A
            ror COLCRS
            .byte $00
            rol
            .byte $1A,$1A
            lda L0095
LBE94       adc COLCRS
            eor ROWCRS,X
            .byte $52
            eor (ZCHAIN,X)
            ror
            lsr
            .byte $02
            eor BUFADR,X
            and L0095
            ora #$A9
            php
            tay
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor BUFADR,X
            .byte $02,$00,$02,$02,$02,$00,$00
            rti
            ldy #$00
            tay
            tax
            txa
            tax
            ldx #$80
            ora BUFADR,X
            ora BUFADR,X
            sta (L0000,X)
            .byte $00,$80
            rti
            bvc LBF18+1
            pla
            tax
            pla
            eor COLCRS,X
            .byte $00,$00
            rti
            bvc LBF2D
            .byte $5A
            eor COLCRS,X
            .byte $00
            rol
            .byte $1A
            clc
            lda L0095
            sta COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
LBEE2       eor COLCRS+1,X
            lsr ADRESS+1,X
            eor COLCRS,X
            eor COLCRS,X
            eor ADRESS+1,X
            eor COLCRS,X
            eor SAVMSC+1,X
            stx MLTTMP,Y
            .byte $6B,$5B
LBEF4       lsr L6567,X
            sta L0095,X
            eor LA565,Y
            sta L00D5,X
            .byte $5B,$5B
            lsr SOUNDR
            rti
            rti
            bvc LBF59+1
            sta L0095,X
            eor RAMLO+1
            ora RAMLO+1
            ora COLCRS,X
            lsr MLTTMP,X
            adc SAVMSC+1
            ror OLDROW
            lsr BUFCNT,X
            eor COLCRS,X
LBF18       adc L0095
            sta COLCRS,X
            adc L00A5
            lda #$6A
            .byte $5A
            lsr COLCRS,X
            eor COLCRS,X
            eor L00FF,X
            .byte $FF,$FF
            cmp L00D5,X
            eor COLCRS,X
LBF2D       adc L00FF,X
            .byte $FF,$FF,$FF,$7F,$5F,$9F,$AB,$73
LBF37       bvs LBFA8+1
            bvs LBF7F
            rti
            .byte $3B,$04,$04,$04,$04,$04,$04,$04
            sty RAMLO
            .byte $04,$04,$04,$04
            sty RAMLO
            .byte $04,$04,$04,$04
            sty RAMLO
            .byte $04,$04
            eor (LTEMP+1,X)
            .byte $BF
            bvs LBFC9
LBF59       bvs LBF9F
            .byte $00
            bmi LBEE2
            .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
            sty RAMLO
            .byte $04,$04,$04,$04,$04,$04,$04,$04,$04
            eor (DINDEX,X)
            .byte $BF
            bvs LBFE9
            bvs LBFBF
            cpy #$33
            sty RAMLO
LBF7F       .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04
            sty RAMLO
            .byte $04,$04,$04,$04,$04,$04,$04,$04,$04
            eor (DELTAC,X)
            .byte $BF
            bvs LC009
            bvs LBFE2
            .byte $00
            bmi LBFA4+1
            .byte $07
LBF9F       .byte $07,$07,$07,$07,$07
LBFA4       asl TRAMSZ
            asl TRAMSZ
LBFA8       asl TRAMSZ
            asl TRAMSZ
            eor (L0097,X)
            .byte $BF
            bvs LC021
            bvs LBFF9
            cpy #$33
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
LBFBF       asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
LBFC9       asl TRAMSZ
            asl SOUNDR
            .byte $AF,$BF
            jmp (L800A)
            .byte $02,$80
            asl
            .byte $80
            asl
            jmp (L600A)
            asl
            jmp (L6028)
            .byte $00,$00
            bpl LBFE2
LBFE2       .byte $00,$FF,$00,$FF,$02,$00,$00
LBFE9       .byte $00,$00,$FF,$00,$FF,$02,$00,$00,$00,$00
            nop
            .byte $00,$B7,$64,$00
            rti
LBFF9       rts
            .byte $00,$80,$00,$04,$F9,$BF
;
            org $02E2
;
            .word L7FF8
;
         
