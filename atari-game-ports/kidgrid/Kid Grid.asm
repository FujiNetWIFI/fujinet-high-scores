; 
            icl 'Kid Grid.inc'
;
; Start of code
;
            org $3000
;
L3000       ldx #$00
L3002       lda L3010,X
            sta.w LOMEM,X
            inx
            cpx #$20
            bne L3002
            jmp LOMEM
L3010       ldx #$00
L3012       lda L302F,X
            sta L2180,X
            inx
            cpx #$00
            bne L3012
            inc.w L0084
            inc.w L0087
            dec.w L009E
            lda.w L009E
            bne L3010
            jmp L2190
            .byte $1F
L302F       .byte $00
            and L2180,X
            bcc L3054+2
            clc
            rts
L3037       jmp L2286
            .byte $00,$00,$00,$00,$00
L303F       lda CH
            cmp #$21
            bne L3037
            lda #$EA
L3048       sta L3970+1
            sta L3972
            sta L3973
            sta L3B3D
L3054       sta L3B3E
            sta L3B3F
L305A       lda #$23
            sta L2F46
            lda #$28
            sta L2F47
            lda #$25
            sta L2F48
            lda #$21
L306B       sta L2F49
            lda #$34
            sta L2F4A
            lda #$00
            sta L2F4B
            lda #$36
            sta L2F4C
            lda #$25
            sta L2F4D
            lda #$32
            sta L2F4E
            lda #$33
            sta L2F4F
            lda #$29
            sta L2F50
            lda #$2F
            sta L2F51
            lda #$2E
            sta L2F52
            lda #$00
            sta L2F53
            lda #$00
            sta L2F53
            jmp L2286
            .byte $00,$00,$00,$00
L30AC       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L30B6       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
L30C8       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
L30DA       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3119       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3123       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3B,$80,$22
            .byte $80,$22
L3135       lda #$3C
            sta PACTL
            lda #$03
            sta SKCTL
            lda #$5B
            sta CASINI
            lda #$3A
            sta CASINI+1
L3147       lda #$5B
            sta DOSVEC
            lda #$3A
            sta DOSVEC+1
            lda #$00
            sta COLDST
            jmp L2B00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3186       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3190       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
L31A2       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bvs L3221
            bvs L3200+1
L31B3       bpl L31B8+2
            asl L0E0E
L31B8       asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            lsr L1000
            asl L0E0E
L3200       asl L0E0E
            asl L0E0E
L3206       asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
L3215       asl L0E0E
            asl L0E0E
            asl L0E0E
L321E       asl L0E0E
L3221       asl L0E0E
L3224       asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
L3230       asl L0E0E
            asl L0E0E
L3236       asl L0E0E
            asl L0E0E
            asl L0E0E
L323F       asl L0E0E
            asl L0E0E
L3245       asl L0E0E
L3248       asl L0E0E
            asl L0E0E
L324E       asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
L325A       asl L0E0E
            asl L0E0E
L3260       asl L4E0E
            .byte $00
L3264       jsr L0E0E
            asl L0E0E
L326A       asl L0E0E
            asl L0E0E
            asl L0E0E
L3273       asl L0E0E
            asl.w SOUNDR
            .byte $23
L327A       bpl L32DC
            bcs L327E
L327E       bvc L321E+2
            beq L32C2
            bcc L3264
L3284       bmi L3206
            bne L32A8
            bvs L3248+2
L328A       bpl L32EA+2
            bcs L328E
L328E       bvc L3230
            beq L32D2
L3292       bcc L3273+1
L3294       bmi L3215+1
            bne L32B8
            bvs L325A
            bpl L32FC
            bcs L329E
L329E       bvc L323F+1
            beq L32E2
            bcc L3284
L32A4       bmi L3224+2
            bne L32C8
L32A8       bvs L326A
            bpl L330C
            bcs L32AE
L32AE       bvc L324E+2
            beq L32F2
            bcc L3294
L32B4       bmi L3236
            bne L32D8
L32B8       bvs L327A
            bpl L331A+2
            bcs L32BE
L32BE       bvc L3260
L32C0       beq L3302
L32C2       bcc L32A4
            bmi L3245+1
            bne L32E7+1
L32C8       bvs L328A
            bpl L332C
            bcs L32D2+1
            ora RAMLO+1
            asl TRAMSZ
L32D2       asl TRAMSZ
            .byte $07,$07,$07
            php
L32D8       php
            php
            ora #$09
L32DC       ora #$0A
            asl
            asl
            .byte $0B,$0B
L32E2       .byte $0B,$0B,$0C,$0C,$0C
L32E7       ora L0D0D
L32EA       asl L0E0E
            .byte $0F,$0F,$0F
            bpl L3302
L32F2       bpl L3304
            ora (BRKKEY),Y
            ora (RTCLOK),Y
            .byte $12,$12,$13,$13
L32FC       .byte $13,$14,$14,$14
            ora BUFADR,X
L3302       ora BUFADR,X
L3304       asl BUFADR+1,X
            asl ICCOMT,X
            .byte $17,$17
            clc
            clc
L330C       clc
            ora L1919,Y
            .byte $1A,$1A,$1A,$1A,$1B,$1B,$1B,$1C,$1C,$1C
L331A       ora L1D1D,X
            asl L1E1E,X
            lda #$00
            sta L00B0
L3324       lda #$05
            sta L00B1
            ldy #$10
            bne L332E
L332C       ldy #$00
L332E       lda #$00
L3330       sta (L00B0),Y
L3332       iny
            bne L3330
            inc L00B1
            lda L00B1
            cmp #$23
            bne L332E
            rts
            jsr L2471
            lda #$00
            sta SDLSTL
            lda #$23
            sta SDLSTH
L334B       lda #$00
            sta L0500
            ldx L0500
            lda L24D8,X
            bne L335B
            jmp L24DF
L335B       tay
            lda L23CB,Y
            sta L00B0
L3361       lda L241E,Y
            sta L00B1
            inc L0500
            lda L00B0
            clc
            adc #$28
            sta L00B2
            lda L00B1
            adc #$00
            sta L00B3
            ldx #$23
            ldy #$03
L337A       lda #$F0
            sta (L00B0),Y
            sta (L00B2),Y
            iny
            dex
            bne L337A
            jmp L24A1
            bvc L33CA
            .byte $32,$23,$14
            ora L0000
            sta L0500
            ldx L0500
            lda L2523,X
            bne L339A
            rts
L339A       tay
            inc L0500
            lda #$A0
            sta L00B0
            lda #$06
            sta L00B1
            lda #$19
L33A8       sta L0501
L33AB       ldx #$06
            lda #$00
            sta L0503
L33B2       lda (L00B0),Y
            ora L0503
            sta (L00B0),Y
L33B9       jsr L3A3A
            dex
            beq L33CA
            cpx #$03
            bne L33B2
            lda #$0F
            sta L0503
            bne L33B2
L33CA       dec L0501
            bne L33AB
            jmp L24E2
            and ICHIDZ
            .byte $1B
            asl BRKKEY,X
            .byte $0C
L33D8       .byte $07,$02,$00
L33DB       .byte $00,$00,$00,$00,$00,$00,$00
            lda L04A0
            jsr L261B
            bcc L33F2
            lda L04A1
L33ED       jsr L262F
L33F0       bcs L33F3
L33F2       rts
L33F3       lda #$0F
            sta L04A2
            lda L04A0
            cmp L264A
            bne L340B
            lda #$0D
            and L04A2
            sta L04A2
L3408       jmp L2569
L340B       cmp L2643
            bne L3418
            lda #$0E
            and L04A2
            sta L04A2
L3418       lda L04A1
            cmp L2651
            bne L342B
            lda #$07
L3422       and L04A2
            sta L04A2
            jmp L2589
L342B       cmp L264C
            bne L3438
            lda #$0B
            and L04A2
L3435       sta L04A2
L3438       lda L0450
            sec
            sbc L04A0
            bcs L3443
            eor #$FF
L3443       sta L04A3
            lda L0451
            sec
            sbc L04A1
            bcs L3451
            eor #$FF
L3451       sta L04A4
            lsr
            clc
            adc L04A4
            sta L04A4
            clc
            adc L04A3
            bcs L34A2
            cmp L04A5
L3465       bcc L346A
            jmp L25F3
L346A       lda RANDOM
            lsr
            bcc L34AB
            lda L04A3
            cmp L04A4
            bcc L348A
            lda L0450
            cmp L04A0
            bcc L3485
            lda #$01
L3482       jmp L25EA
L3485       lda #$02
            jmp L25EA
L348A       lda L0451
            cmp L04A1
            bcc L3497
            lda #$04
            jmp L25EA
L3497       lda #$08
            and L04A2
            beq L34A2
            sta L04A6
            rts
L34A2       lda L04A6
            and L04A2
            beq L34AB
            rts
L34AB       lda #$00
            sta L04A3
            lda RANDOM
            and #$03
            tax
            inx
            sec
L34B8       rol L04A3
            dex
            bne L34B8
L34BE       lda L04A3
            and L04A2
            beq L34AB
            sta L04A6
            rts
            sta L04A3
            ldx #$00
L34CF       lda L2643,X
            beq L34DC
            inx
            cmp L04A3
            bne L34CF
            sec
            rts
L34DC       clc
            rts
            sta L04A3
            ldx #$00
L34E3       lda L264C,X
            beq L34F0
            inx
            cmp L04A3
            bne L34E3
            sec
            rts
L34F0       clc
            rts
            stx L0082,Y
            ror L4659+1
            .byte $32
            asl.w DOSVEC,X
            bvc L353D+1
            .byte $32,$23,$14
L3500       ora L0000
            lda #$00
            sta L04C0
            sta L04C1
            sta L04C2
            sta L04C3
L3510       lda M0PL
            jsr L271F
            lda M1PL
            jsr L271F
            lda M2PL
L351F       jsr L271F
            lda M3PL
            jsr L271F
L3528       lda L04C0
            beq L3550
            lda L0450
            sec
L3531       sbc L0400
            bcs L3538
            eor #$FF
L3538       cmp L04CF
            bcs L3550
L353D       lda L0451
            sec
            sbc L0401
            bcs L3548
            eor #$FF
L3548       cmp L04CF
            bcs L3550
            jmp L2730
L3550       lda L04C1
            beq L3578
            lda L0450
            sec
            sbc L0410
            bcs L3560
            eor #$FF
L3560       cmp L04CF
            bcs L3578
            lda L0451
            sec
            sbc L0411
            bcs L3570
            eor #$FF
L3570       cmp L04CF
            bcs L3578
            jmp L2730
L3578       lda L04C2
            beq L35A0
L357D       lda L0450
            sec
            sbc L0420
            bcs L3588
            eor #$FF
L3588       cmp L04CF
            bcs L35A0
            lda L0451
            sec
            sbc L0421
            bcs L3598
            eor #$FF
L3598       cmp L04CF
            bcs L35A0
            jmp L2730
L35A0       lda L04C3
            beq L35C8
            lda L0450
            sec
L35A9       sbc L0430
            bcs L35B0
            eor #$FF
L35B0       cmp L04CF
            bcs L35C8
            lda L0451
            sec
            sbc L0431
            bcs L35C0
            eor #$FF
L35C0       cmp L04CF
            bcs L35C8
            jmp L2730
L35C8       lda #$00
            sta HITCLR
            rts
            lsr
            rol L04C0
            lsr
            rol L04C1
            lsr
            rol L04C2
            lsr
            rol L04C3
            rts
            lda #$00
L35E1       sta AUDC2
            sta AUDC3
            sta AUDC4
            sta AUDCTL
            lda #$AA
            sta AUDC1
            ldy #$00
            ldx #$00
L35F6       tya
            sta AUDF1
L35FA       dex
            bne L35FA
            dey
            dey
            bne L35F6
            lda #$28
            sta AUDC1
            lda #$01
            sta L045F
L360B       lda L045F
            sta AUDF1
            lsr
            lsr
            lsr
            lsr
            eor #$0F
            sta COLOR4
L361A       ldy #$06
            ldx #$00
L361E       dex
            bne L361E
            dey
            bne L361E
            inc L045F
            bne L360B
            lda #$00
            sta AUDC1
            lda #$FF
            rts
            lda L0451
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0452
            bne L3653
            sty L0452
L3644       lda L27DF,X
            sta L2B00,Y
            iny
            inx
            cpx #$12
            bne L3644
            jmp L27B5
L3653       lda #$00
            sta L0452
L3658       lda L27F1,X
            sta L2B00,Y
            iny
            inx
            cpx #$12
            bne L3658
            lda L0450
            clc
            adc #$2D
            sta HPOSM3
            clc
            adc #$02
            sta HPOSM2
            clc
            adc #$02
            sta HPOSM1
            clc
            adc #$02
            sta HPOSM0
            rts
            lda #$28
            clc
L3683       adc L00B0
            sta L00B0
            lda #$00
            adc L00B1
            sta L00B1
            rts
            .byte $00,$00
            inc LD6D6,X
L3693       inc L3810,X
            jmp (L7CFE)
            sec
            plp
            pla
            .byte $0C,$00,$00,$00,$00,$00
            inc LD6D6,X
            inc L3810,X
            jmp (L7CFE)
            sec
            plp
            bit.w FKDEF
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
L36C1       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00
            lda STICK0
            lsr
            bcs L36EB
            lda L0451
            jsr L28FF
            bcc L371F
            lda #$08
            sta L0455
            bne L371F
L36EB       lsr
            bcs L36FD
            lda L0451
            jsr L28FF
            bcc L371F
            lda #$04
            sta L0455
            bne L371F
L36FD       lsr
            bcs L370F
            lda L0450
            jsr L2910
            bcc L371F
            lda #$02
            sta L0455
            bne L371F
L370F       lsr
            bcs L371F
            lda L0450
            jsr L2910
            bcc L371F
            lda #$01
            sta L0455
L371F       jsr L2921
            jsr L2782
            jsr L2A1E
            jsr L2A3C
            inc L0473
            lda L0473
            cmp #$10
            bcc L373A
            lda #$0A
            sta L0473
L373A       sta AUDF2
            rts
            sty L0456
            ldy L0451
            lda L23CB,Y
            sta L00B0
            lda L241E,Y
L374C       sta L00B1
            lda L0450
            lsr
            bcs L3765
            lsr
            tay
            bcs L377F
            lda (L00B0),Y
            and #$F0
            cmp #$50
            bne L376A
            lda #$00
            sta AUDC2
L3765       ldy L0456
            sec
            rts
L376A       lda (L00B0),Y
L376C       and #$0F
            ora #$50
            sta (L00B0),Y
            jsr L27D1
            lda (L00B0),Y
            and #$0F
            ora #$50
            sta (L00B0),Y
            bne L37A4
L377F       lda (L00B0),Y
            and #$0F
            cmp #$05
            bne L3791
            lda #$00
L3789       sta AUDC2
            ldy L0456
            sec
            rts
L3791       lda (L00B0),Y
            and #$F0
            ora #$05
            sta (L00B0),Y
L3799       jsr L27D1
            lda (L00B0),Y
            and #$F0
            ora #$05
            sta (L00B0),Y
L37A4       lda #$C3
            sta AUDC2
            ldy L0456
            clc
            rts
            ldx #$00
L37B0       lda L2643,X
            beq L37BD
            inx
            cmp L0450
            bne L37B0
            sec
            rts
L37BD       clc
            rts
            ldx #$00
L37C1       lda L264C,X
            beq L37CE
            inx
            cmp L0451
            bne L37C1
            sec
            rts
L37CE       clc
            rts
            lda L0455
            lsr
            bcc L37E5
            lda L0450
            cmp L2643
            beq L37F7
L37DE       inc L0450
            jsr L2970
            rts
L37E5       lsr
            bcc L37FB
L37E8       lda L0450
            cmp L264A
            beq L37F7
            dec L0450
            jsr L2970
            rts
L37F7       jsr L288F
            rts
L37FB       lsr
            bcc L380D
            lda L0451
L3801       cmp L264C
            beq L37F7
            inc L0451
            jsr L29C5
            rts
L380D       lsr
            bcc L381E
L3810       lda L0451
            cmp L2651
            beq L37F7
            dec L0451
            jsr L29C5
L381E       rts
            lda L0450
            cmp L2643
            beq L383D
            ldx #$01
L3829       ldy #$23
L382B       lda L0450
            cmp L2643,X
            beq L383D
            bcs L3841
            inx
            tya
            sec
            sbc #$05
            tay
            bne L382B
L383D       jsr L288F
            rts
L3841       ldx #$00
L3843       lda L264C,X
L3846       cmp L2650
            beq L3857
            lda L0451
            cmp L264C,X
L3851       beq L3857
            inx
            dey
            bne L3843
L3857       jsr L288F
            bcc L385D
L385C       rts
L385D       tya
            tax
            dec L2803,X
            lda L0451
            cmp L2651
            beq L385C
L386A       cmp L264C
            beq L385C
            inx
            dec L2803,X
            rts
            lda L0451
            cmp L264C
            beq L3898
            ldx #$00
            ldy #$23
L3880       lda L2643,X
            cmp L2649
            beq L389C
            lda L0450
            cmp L2643,X
            beq L389C
            inx
            tya
            sec
            sbc #$05
            tay
            bne L3880
L3898       jsr L288F
            rts
L389C       ldx #$01
L389E       lda L0451
            cmp L264C,X
            beq L3898
            bcs L38AC
            inx
            dey
            bne L389E
L38AC       jsr L288F
            bcc L38B2
L38B1       rts
L38B2       tya
            tax
            dec L2803,X
            lda L0450
            cmp L264A
            beq L38B1
L38BF       cmp L2643
            beq L38B1
            txa
            clc
            adc #$05
            tax
            dec L2803,X
            rts
            ldx #$00
L38CF       lda L2803,X
            beq L38DA
            inx
            cpx #$24
            bne L38CF
            rts
L38DA       lda #$FF
            sta L2803,X
L38DF       stx L0457
            ldx #$03
            jsr L3324
            dec L2803
            rts
            ldx L0457
            bne L38F1
            rts
L38F1       cpx L041B
            bne L391D
            lda #$00
            sta L041B
L38FB       lda RANDOM
            and #$07
            cmp #$05
            bcs L38FB
            sta L047F
            inc L047F
            sta L042E
            inc L042E
L3910       jsr L3324
            dec L047F
            bne L3910
            nop
            nop
            ldx L0457
L391D       lda L2ADB,X
            tay
            lda L23CB,Y
            sta L00B0
            lda L241E,Y
            sta L00B1
            lda L042E
            bne L3935
            lda #$FF
            sta L042F
L3935       lda L2AB7,X
            lsr
L3939       tay
            lda #$18
            sta L00B2
L393E       lda #$03
            sta L00B3
            lda (L00B0),Y
            ora #$0F
            sta (L00B0),Y
            iny
            lda #$FF
L394B       sta (L00B0),Y
            iny
            dec L00B3
L3950       bne L394B
            dec L00B2
            beq L3960
            jsr L27D1
            tya
            sec
            sbc #$04
            tay
            bne L393E
L3960       lda #$00
            sta L0457
            rts
            .byte $00,$07,$07,$07,$07,$07
            ora (BRKKEY),Y
            ora (BRKKEY),Y
L3970       ora (DSKUTL+1),Y
L3972       .byte $1B
L3973       .byte $1B,$1B,$1B
            and ICBAHZ
            and ICBAHZ
            and ICAX6Z
            .byte $2F,$2F,$2F,$2F
            and L3939,Y
L3983       and L4338+1,Y
            .byte $43,$43,$43,$43,$00,$07
            asl ICBAHZ,X
            .byte $34,$43,$07
            asl ICBAHZ,X
            .byte $34,$43,$07
            asl ICBAHZ,X
            .byte $34,$43,$07
            asl ICBAHZ,X
            .byte $34,$43,$07
            asl ICBAHZ,X
            .byte $34,$43,$07
            asl ICBAHZ,X
            .byte $34,$43,$07
            asl ICBAHZ,X
            .byte $34,$43,$00
            ldx #$00
            lda #$00
L39B3       sta L0400,X
L39B6       inx
            bne L39B3
            lda #$20
            sta SDLSTL
            lda #$2C
            sta SDLSTH
L39C3       lda #$56
            sta COLOR4
            sta COLOR2
            lda #$0F
            sta COLOR1
            lda #$05
            sta L04AA
            lda #$01
            sta L04AB
            lda #$28
            sta L046F
            lda #$00
            sta L04F0
            lda #$08
            sta CONSOL
            lda CONSOL
            lsr
            bcs L3A18
L39EF       lda #$08
            sta CONSOL
L39F4       lda CONSOL
            lsr
            bcc L39EF
            ldx L04AB
            lda #$26
L39FF       clc
            adc #$08
            dex
            bne L39FF
            sta L04AC
L3A08       lda #$1B
            sec
            sbc L04AB
            sec
            sbc L04AB
            sta L045B
            jmp L3A5A+1
L3A18       lsr
            bcs L3A42
L3A1B       lda #$08
            sta CONSOL
            jsr L2BE8
            lda #$02
            bit CONSOL
            beq L3A1B
            lda L04AA
L3A2D       clc
            adc #$02
            cmp #$08
            bcc L3A36
            lda #$03
L3A36       sta L04AA
            clc
L3A3A       adc #$10
            sta L2FC7
            jmp L2BBA
L3A42       lsr
            bcs L3A69
L3A45       lda #$08
            sta CONSOL
            jsr L2BE8
            lda #$04
            bit CONSOL
            beq L3A45
            inc L04AB
            lda L04AB
L3A5A       cmp #$06
            bcc L3A60
            lda #$01
L3A60       sta L04AB
            clc
            adc #$10
            sta L2FBE
L3A69       lda CH
            cmp #$FF
L3A6E       bne L3A73
            jmp L2B35
L3A73       cmp #$00
            bne L3A81
            lda #$FF
            sta L04F0
            lda #$2C
            jmp L2BDD
L3A81       cmp #$28
            bne L3A8F
            lda #$00
            sta L04F0
            lda #$32
            sta L2FD3
L3A8F       lda #$FF
            sta CH
            jmp L2B35
            ldx #$00
            ldy #$30
L3A9B       dex
            bne L3A9B
            dey
            bne L3A9B
            rts
            eor (ICHIDZ,X)
            .byte $23
            bit FMSZPG+3
            lsr L009B
            .byte $9E,$0C
            asl L2020
            .byte $53,$54
            eor (ICHIDZ,X)
            bit BFENLO
            eor LTEMP+1
            .byte $9B
            tay
            .byte $0C
            asl L2020
            lsr
L3ABD       eor L2050
            eor #$4E
            .byte $54
            and L009B,X
            .byte $B2,$0C,$13
L3AC8       jsr L4E49
            .byte $54,$34
            jsr L704C
            bvs L3B42
            .byte $42
            rti
            bit VPRCED
            .byte $02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
            .byte $02,$02,$02,$02,$02
            eor (ICHIDZ,X)
            bit.w L0000
            .byte $00,$00,$00,$00
            eor (LMARGN),Y
            .byte $52
            eor HOLD1
            .byte $52,$52
            eor L0000
            eor (LMARGN),Y
            .byte $52
            eor HOLD1
            .byte $52,$52,$52
            eor HOLD1
            .byte $52,$52
            eor HOLD1
            .byte $52
            eor HOLD1
            .byte $52
            eor L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$5A
            eor HOLD1
            .byte $43,$7C
            eor (FMSZPG+2),Y
            .byte $7C,$00,$7C
L3B27       eor (FMSZPG+2),Y
            .byte $7C,$7C
            eor (LMARGN),Y
            eor HOLDCH
            .byte $5A
            eor HOLD1
            .byte $43,$5A
            eor OLDROW
            eor HOLD1
            .byte $43,$00,$00,$00,$00
L3B3D       .byte $00
L3B3E       .byte $00
L3B3F       .byte $00,$00,$00
L3B42       .byte $00,$00,$00,$00,$7C,$7C,$00,$7C,$5A,$43,$5A
            eor HOLDCH
            .byte $7C,$7C,$7C,$7C,$7C
L3B54       .byte $00,$7C,$7C,$00,$7C,$7C,$00,$00,$5A
            eor OLDROW
            eor L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$7C
L3B70       .byte $00,$7C
            eor (FMSZPG+2),Y
            .byte $00,$7C,$7C,$5A,$43,$7C,$7C,$7C,$00,$7C,$7C
            eor (FMSZPG),Y
            .byte $5A
            eor HOLD1
            .byte $43,$5A
            eor OLDROW
            eor L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$5A,$43,$00,$5A
            .byte $43,$5A,$52,$43,$5A,$52,$52,$43,$5A,$43,$00,$5A,$43,$5A,$52,$52
            .byte $43,$5A,$52,$43,$5A,$52,$43,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bvs L3C3B
            adc COLAC+1
            adc BITMSK
            .byte $74,$73,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$80,$80,$00,$80,$80,$00,$00,$80,$80,$00
            .byte $80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
L3C35       .byte $00,$00,$00,$00,$00,$00
L3C3B       .byte $80,$80,$00,$80,$80,$00,$00,$80,$80,$00,$80,$80,$00,$80,$80,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$00,$80
            .byte $80,$00,$80,$80,$00,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $80,$80,$00,$80
L3C8F       .byte $80,$80,$00,$80,$80,$00,$80,$80,$00,$80,$80,$80,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$80,$80
L3CB5       .byte $00,$80,$80,$80,$00,$80,$80,$00,$80,$80,$80,$80,$80,$80,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
L3CE7       .byte $00,$00,$00,$00,$00
L3CEC       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$00,$80
L3D08       .byte $80,$80,$80,$80,$00,$00,$80,$80,$00,$80,$80,$80,$80,$80,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $80,$80,$00,$00,$00,$00,$00,$80,$80,$00,$80,$80
L3D34       .byte $00,$00,$80,$80,$00,$80,$80,$00,$80,$80,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3D4F       .byte $00,$80,$80,$80,$00,$80,$80,$00,$80,$80,$80,$80,$80,$80,$00,$80
            .byte $80,$00,$80,$80,$00,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80,$00
            .byte $80,$80,$00,$80,$80,$80,$00,$80,$80,$00,$80,$80,$00,$80,$80,$80
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$80,$80,$80,$80,$80,$80,$00,$80,$80,$00,$80,$80,$80,$00,$80
            .byte $80,$00
L3DB1       .byte $80,$80,$80,$80,$80,$80,$00,$00,$00,$00
L3DBB       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
L3DD3       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3DDD       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
L3DF4       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            php
            .byte $63
            ora #$00
            ora (DSKFMS+1),Y
            clc
            .byte $12,$00,$34,$32,$2F
            rol L3829
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3E3A       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3E44       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
L3E5C       .byte $00,$00,$00,$00,$00,$00
            bit SAVADR+1
            ror MLTTMP
            adc #$63
            adc BUFSTR,X
            .byte $74
            adc L111D,Y
            .byte $00,$00,$33,$74
            adc BITMSK,X
            .byte $73
            ora.w BUFADR,X
            .byte $00
            rol
            .byte $6F
L3E7B       adc L7473,Y
            adc #$63
            .byte $6B
            ora.w BUFRLO,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00
L3E98       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3EA6       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            lda L0401
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0402
            cmp #$02
            bcs L3ED3
            inc L0402
L3EC4       lda L3048+1,X
            sta L2C00,Y
            iny
            inx
L3ECC       cpx #$12
            bne L3EC4
            jmp L303F
L3ED3       inc L0402
            lda L0402
            cmp #$04
            bne L3EE2
            lda #$00
            sta L0402
L3EE2       lda L305A+1,X
            sta L2C00,Y
            iny
            inx
            cpx #$12
            bne L3EE2
            lda L0400
            clc
            adc #$2D
            sta HPOSP0
            rts
            .byte $00,$00
            inc LAAAA
            inc L287C,X
L3F00       jmp (LFEC6)
            .byte $44
            cpy TRAMSZ
            .byte $00,$00,$00,$00,$00,$00
L3F0C       inc LAAAA
            inc L287C,X
            jmp (LFEC6)
            .byte $44
            lsr L00C0
            .byte $00,$00,$00,$00
            lda L0411
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0412
L3F2A       cmp #$02
            bcs L3F40
            inc L0412
L3F31       lda L30B6,X
            sta L2D00,Y
            iny
            inx
            cpx #$12
            bne L3F31
            jmp L30AC
L3F40       inc L0412
            lda L0412
            cmp #$04
            bne L3F4F
            lda #$00
            sta L0412
L3F4F       lda L30C8,X
            sta L2D00,Y
            iny
            inx
            cpx #$12
            bne L3F4F
            lda L0410
            clc
            adc #$2D
            sta HPOSP1
            rts
            .byte $00,$00,$00,$00
            bvs L3F7C+1
            .byte $12
            tsx
            inc LBAFE,X
            bcc L3F00+2
            .byte $1C,$00,$00,$00,$00,$00,$00,$00,$00,$1C
L3F7C       bcc L3F0C+2
            tsx
            inc LBAFE,X
            .byte $12,$12
            bvs L3F86
L3F86       .byte $00,$00,$00
            lda L0421
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0422
            cmp #$02
            bcs L3FAD
L3F9B       inc L0422
L3F9E       lda L3123,X
            sta L2E00,Y
            iny
            inx
            cpx #$12
            bne L3F9E
            jmp L3119
L3FAD       inc L0422
            lda L0422
            cmp #$04
            bne L3FBC
            lda #$00
            sta L0422
L3FBC       lda L3135,X
            sta L2E00,Y
            iny
            inx
            cpx #$12
            bne L3FBC
            lda L0420
            clc
            adc #$2D
L3FCE       sta HPOSP2
            rts
            .byte $00,$00
            cpx #$A7
            lda L00E5
            .byte $67
            ror MLTTMP
            .byte $3C,$3C
            clc
            bit ADRESS
            asl L0000
            .byte $00,$00,$00,$00,$07
L3FE7       sbc L00A5
            .byte $A7
            inc MLTTMP
            ror NOCKSM
            .byte $3C
            clc
            bit ICPTLZ
            rts
            .byte $00,$00,$00
            lda L0431
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0432
            cmp #$02
            bcs L401A
            inc L0432
L400B       lda L3190,X
            sta L2F00,Y
            iny
            inx
            cpx #$12
            bne L400B
            jmp L3186
L401A       inc L0432
            lda L0432
            cmp #$04
            bne L4029
            lda #$00
            sta L0432
L4029       lda L31A2,X
            sta L2F00,Y
            iny
            inx
            cpx #$12
            bne L4029
            lda L0430
            clc
            adc #$2D
            sta HPOSP3
            rts
            .byte $00,$00
            clc
            .byte $3C
            ror L5A5A,X
            ror L7E42,X
            .byte $3C
            clc
            bit ADRESS
            asl L0000
            .byte $00,$00,$00,$00
            clc
            .byte $3C
            ror L5A5A,X
            ror L7E42,X
            .byte $3C
            clc
            bit ICPTLZ
            rts
            .byte $00,$00,$00
            lda L0460
            lsr
            bcc L409E
            lda #$02
            sta L0461
            lda #$FE
            sta L0460
            lda #$0F
            sta PCOLR0
            sta PCOLR1
            sta PCOLR2
            sta PCOLR3
            lda #$FC
            sta L0470
            lda #$00
            sta L04E0
            sta AUDF1
            sta AUDF3
            lda #$AB
            sta AUDC1
            sta AUDC3
            sta L0471
            lda #$FF
L409E       lsr
            bcc L40BA
            jsr L32A4+1
            jsr L32A4+1
            jsr L32A4+1
            dec L0461
            bne L40B9
            lda #$02
            sta L0461
            lda #$FC
            sta L0460
L40B9       rts
L40BA       lsr
            bcc L40D3
            jsr L32A4+1
            jsr L32A4+1
            dec L0461
            bne L40B9
            lda #$03
            sta L0461
            lda #$F8
            sta L0460
            rts
L40D3       lsr
            bcc L40E9
            jsr L32A4+1
            dec L0461
            bne L40B9
            lda #$03
            sta L0461
            lda #$F0
            sta L0460
            rts
L40E9       lsr
            bcc L40FF
            jsr L3292+1
            dec L0461
            bne L40FE
            lda #$02
            sta L0461
            lda #$E0
            sta L0460
L40FE       rts
L40FF       lsr
            bcc L4118
            jsr L3292+1
            jsr L3292+1
            dec L0461
            bne L40FE
            lda #$02
            sta L0461
            lda #$C0
            sta L0460
            rts
L4118       jsr L3292+1
            jsr L3292+1
            jsr L3292+1
            dec L0461
            bne L40FE
            lda #$00
            sta L0460
            lda #$FF
            sta L04E0
            ldx L043F
            ldy #$00
L4135       lda L35E1+1,X
            sta PCOLR0,Y
            inx
            iny
            cpy #$04
            bne L4135
            rts
            jsr L32C0
            inc L0500
            inc L0500
            inc L0500
            inc L0500
            jmp L32B4
            jsr L32C0
            dec L0500
            dec L0500
            dec L0500
            dec L0500
            jsr L3000
            jsr L306B+2
            jsr L30DA
            jsr L3147
            dec L0470
            dec L0470
            dec L0470
            dec L0470
            lda L0470
            sta AUDF1
            clc
            adc #$04
            sta AUDF3
            and #$0F
            beq L418C
            rts
L418C       dec L0471
            lda L0471
            cmp #$9F
            bne L419B
            lda #$A0
            sta L0471
L419B       sta AUDC1
            sta AUDC3
            rts
            lda L0480,X
            clc
            adc #$10
            cmp #$A0
            beq L41B0
            sta L0480,X
            rts
L41B0       lda #$00
            sta L0480,X
            cpx #$02
            bne L41D0
            lda L044F
            cmp #$05
            bne L41D0
            inc L044F
            ldx L044F
            jsr L3435+1
            lda #$FF
            sta L042D
            ldx #$02
L41D0       lda #$00
            rts
            ldx #$03
L41D5       jsr L32F2+1
            pha
            jsr L3789
            dex
            pla
            beq L41D5
            rts
            ldx #$04
L41E3       lda L0480,X
            bne L41EC
            dex
            bpl L41E3
            rts
L41EC       ldx #$04
L41EE       jsr L334B
            pha
            jsr L3789
            dex
            pla
            beq L41EE
            rts
            lda L0480,X
            sec
            sbc #$10
            cmp #$F0
            beq L420A
            sta L0480,X
            lda #$01
            rts
L420A       lda #$90
            sta L0480,X
            lda #$00
            rts
            dec L041A
            beq L4218
            rts
L4218       lda L041B
            beq L4224
            tax
            jsr L33D8
            jsr L3332
L4224       lda #$AA
            sta L041A
            lda #$00
            sta L041B
            lda RANDOM
            and #$1F
            sta L041C
            lda RANDOM
            rol
            rol
            rol
            and #$03
            clc
            adc L041C
            sta L041C
            inc L041C
            ldx L041C
            lda L2803,X
            bpl L4251
            rts
L4251       stx L041B
            jmp L33ED+1
            .byte $02
            tax
            .byte $00
            asl
            .byte $00
            asl
            .byte $00
            tax
            .byte $00
            ldy #$00
            ldy #$00
            ldy #$00
            .byte $00,$00
            ldy #$BD
            .byte $DB
            rol
            clc
            adc #$04
            tay
            lda L23CB,Y
            sta L00B0
            lda L241E,Y
            sta L00B1
            lda L2AB7,X
            lsr
            tay
            iny
            lda #$09
            sta L00B2
            ldx #$00
            rts
            jsr L33B9+1
            lda #$00
            sta (L00B0),Y
            iny
            sta (L00B0),Y
            dec L00B2
            bne L4296
            rts
L4296       dey
            jsr L3A3A
            jmp L33DB
            jsr L33B9+1
            lda L33A8,X
            sta (L00B0),Y
            inx
            iny
            lda L33A8,X
            sta (L00B0),Y
            dec L00B2
            bne L42B1
            rts
L42B1       dey
            inx
            jsr L3A3A
            jmp L33F0+1
            tax
            tay
            ldx #$28
            ldx #$28
            tax
            tay
            .byte $02,$00
            asl
            .byte $80
            rol
            ldy #$AA
            tay
            rol
            ldy #$0A
            .byte $80
            php
            .byte $80
            php
            .byte $80
            plp
            ldy #$8A
            asl
            tay
            lda #$A1
            sta L00B0
            lda #$20
            sta L00B1
            lda #$0D
            sta L00B2
            ldx #$00
            rts
            jsr L3422+2
            lda L3408+2,X
            sta (L00B0),Y
            inx
            iny
            lda L3408+2,X
            sta (L00B0),Y
            dec L00B2
            bne L42F9
            rts
L42F9       inx
            dey
            jsr L3A3A
            jmp L3438+1
            jsr L3422+2
L4304       lda #$00
            sta (L00B0),Y
            iny
            sta (L00B0),Y
            dey
            jsr L3A3A
            dec L00B2
            bne L4304
            rts
            lda #$00
            sta AUDCTL
            sta AUDF1
            sta AUDF2
            sta AUDF3
            sta AUDF4
            ldx #$00
            stx L040A
            stx L040B
            stx L040D
            stx L040E
            lda L040A
            beq L4347
L4338       dec L040A
            dec L040C
            lda L040C
            sta AUDC1
            jmp L34BE+1
L4347       ldx L040D
            lda L3510,X
            beq L43A1
            sta L040A
            lda L3500,X
            sta AUDF1
            and #$F0
            ora #$0A
            sta COLOR3
            lda #$AA
            sta AUDC1
            sta L040C
            inx
            stx L040D
            jmp L3482+2
            lda L040B
            beq L4379
            dec L040B
            jmp L34E3+2
L4379       ldx L040E
            lda L351F+2,X
            sta AUDF2
            lda #$A8
            sta AUDC2
            lda L3528+1,X
L438A       sta L040B
            inx
            stx L040E
            jmp L34BE+1
            ldx #$00
            ldy #$20
L4398       dex
            bne L4398
            dey
            bne L4398
            jmp L3482+2
L43A1       lda #$00
            sta AUDC1
            sta AUDC2
            lda #$DC
            sta COLOR3
            rts
            .byte $F3
            sta L99B6,Y
            .byte $F3
            sta L99B6,Y
            .byte $F3
            dey
            ldx #$88
            .byte $F3
            sta L99B6,Y
            .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
            .byte $00
            adc L4C5B,Y
            .byte $5B
            rts
            .byte $5B
            eor (OLDCOL),Y
            .byte $0C,$04,$0C,$04,$0C,$02,$02
            bpl L438A+1
            ldy #$AA
            tay
            rol
            tay
            tax
            ldy #$A0
            tay
            asl
            ldy #$A0
            ldy #$00
            plp
            plp
            ldy #$A0
            ldy #$A8
            asl
            ldy #$A0
            ldy #$00
            plp
            plp
            ldy #$A0
            ldy #$A8
            asl
            tax
            tay
            tax
            tay
            tax
            tay
            ldy #$A8
            tax
            tay
            asl
            tay
            tay
            tay
            .byte $00
            tay
            plp
            ldy #$A8
            asl
            .byte $80
            asl
            tay
            tay
            tay
            .byte $00
            tay
            plp
            ldy #$A8
            asl
            .byte $80,$00
            tay
            tay
            tax
            tay
            tay
            plp
            tax
            tay
            asl
            .byte $80
            asl
            lda #$47
            sta L00B0
            lda #$05
            sta L00B1
            ldx #$00
            ldy #$00
L4439       lda L3531,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0B
            bne L4439
            cpx #$4D
            beq L444E
            jsr L3A3A
            jmp L3588
L444E       rts
            lda #$47
            sta L00B0
            lda #$05
            sta L00B1
            ldx #$00
            ldy #$00
L445B       lda #$00
            sta (L00B0),Y
            inx
            iny
            cpy #$0B
            bne L445B
            cpx #$4D
            beq L444E
            jsr L3A3A
            jmp L35A9+1
            lda L0405,X
            lsr
            bcc L447A
            inc L0400,X
            bne L4490
L447A       lsr
            bcc L4482
            dec L0400,X
            bne L4490
L4482       lsr
            bcc L448A
            inc L0401,X
            bne L4490
L448A       lsr
            bcc L4490
            dec L0401,X
L4490       rts
            asl
            .byte $3A,$5A
            tsx
            stx L00DA
            .byte $34,$DC
            asl
            .byte $3A,$5A
            tsx
            ldy BUFRFL,X
            stx L00DC,Y
            .byte $5A,$3A
            dex
            txs
            stx L00C8
            asl L00DC
            .byte $3A
            rol
            txs
            tsx
            ldy L0098,X
            lsr L00DC,X
            .byte $3A
            tsx
            .byte $3A
            asl
            stx DSKUTL,Y
            lsr L00DC
            asl
            .byte $3A,$5A
            txs
            ldy SAVMSC,X
            rol L00DC
            nop
            ror
            asl
            tsx
            stx BUFRFL,Y
            dec L00DC,X
            lda #$00
            tax
L44CC       sta L2B00,X
            sta L2C00,X
            sta L2D00,X
            sta L2E00,X
            sta L2F00,X
            inx
            bne L44CC
            lda #$28
            sta PMBASE
            lda #$11
            sta GPRIOR
            lda #$96
            sta L0400
            sta L0410
            sta L0420
            sta L0430
            lda #$02
            sta L0405
            sta L0415
            sta L0425
            sta L0435
            sta L0455
            lda #$05
            sta L0401
            sta L0451
            lda #$0A
            sta L0450
            lda #$14
            sta L0411
            lda #$41
            sta L0421
            lda #$50
            sta L0431
            lda #$00
            sta L0402
            sta L0412
            sta L0422
            sta L0432
            rts
            ldx #$00
            lda #$2E
L4536       sta L2803,X
            inx
            cpx #$24
            bne L4536
            lda #$23
            sta L2803
            rts
            lda L043F
            clc
            adc #$08
            cmp #$38
            bne L4550
            lda #$00
L4550       sta L043F
            tax
            lda #$08
            sta L00B2
            ldy #$00
L455A       lda L35E1+1,X
            sta PCOLR0,Y
            iny
            inx
            dec L00B2
            bne L455A
            rts
            lda #$C1
            sta L00B2
            lda #$36
            sta L00B3
            rts
            tax
            tay
            ldy #$28
            ldy #$28
            ldy #$28
            ldy #$28
            ldy #$28
            tax
            tay
            tay
            .byte $00
            plp
            .byte $00
            plp
            .byte $00
            plp
            .byte $00
            tax
            ldy #$AA
            ldy #$AA
            ldy #$AA
            tay
            .byte $00
            plp
            .byte $00
            plp
            tax
            tay
            ldy #$00
            ldy #$00
            tax
            tay
            tax
            ldy #$02
            ldy #$02
            ldy #$AA
            tay
            .byte $02
            tay
            .byte $02
            tay
            tax
            tay
            tay
            .byte $00
            tay
            .byte $00
            tay
            .byte $00
            tay
            tay
            tay
            tay
            tax
            tay
            .byte $00
            tay
            tax
            tay
            ldy #$00
            ldy #$00
            tax
            tay
            .byte $00
            plp
            .byte $00
            plp
            tax
            tay
            tax
            .byte $80
            ldx #$80
            ldy #$00
            tax
            tay
            ldy #$28
            ldy #$28
            tax
            tay
            tax
            tay
            .byte $00
            plp
            .byte $00
            plp
            asl
            tay
            asl
            .byte $00
            asl
            .byte $00
            asl
            .byte $00
            rol
            ldy #$28
            ldy #$28
            ldy #$AA
            tay
            tay
            tay
            tay
            tay
            tax
            tay
            tax
            tay
            ldy #$28
            ldy #$28
            tax
            tay
            .byte $00
            tay
            .byte $00
            tay
            .byte $00
            tay
            txa
            asl
            tay
            stx L0486
            lda L0488
            lsr
            lsr
            lsr
            lsr
            tax
            inx
            lda #$00
L460D       dex
            beq L4615
            clc
            adc #$0E
            bne L460D
L4615       tax
            lda #$07
            sta L0487
            lda L36C1,X
            sta (L00B0),Y
            inx
            iny
            lda L36C1,X
            sta (L00B0),Y
            dec L0487
            beq L4634
            dey
            inx
            jsr L3A3A
            jmp L376C
L4634       ldx L0486
            rts
            lda #$82
            sta L00B0
            lda #$21
            sta L00B1
            lda L0480,X
            sta L0488
            jmp L374C+1
            tax
            tay
            tax
            tay
            tax
            tay
            tax
            ldy #$AA
            tay
            ldy #$00
            ldy #$00
            ldy #$28
L4659       ldy #$A0
            ldy #$00
            ldy #$00
            ldy #$00
            ldy #$28
            ldy #$A0
            ldy #$00
            tax
            tay
            tay
            .byte $00
            tay
            plp
            tax
            tay
            tax
            tay
            .byte $00
            plp
            tay
            .byte $00
            tay
            plp
            tay
            tay
            tay
            .byte $00,$00
            plp
            tay
            .byte $00
            tay
            plp
            tay
            tay
            tay
            .byte $00
            tax
            tay
            tax
            tay
            tax
            tay
            tay
            tay
            tax
            tay
            lda #$93
            sta L00B0
            lda #$1F
            sta L00B1
            ldx #$00
            ldy #$00
L469B       lda L3799+1,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0A
            bne L469B
            cpx #$46
            beq L46B0
            jsr L3A3A
            jmp L37E8+2
L46B0       rts
            tax
            tay
            tax
            tay
            ldy #$28
            tax
            tay
            tax
            tay
            ldy #$00
            asl
            .byte $00
            ldy #$28
            ldy #$28
            ldy #$00
            ldy #$00
            asl
            .byte $00
            ldy #$28
            ldy #$28
            ldy #$00
            tax
            tay
            asl
            .byte $80
            tay
            plp
            tay
            plp
            tax
            tay
            .byte $00
            plp
            asl
            .byte $80
            tay
            plp
            tay
            plp
            .byte $00
            plp
            .byte $00
            plp
            asl
            .byte $80
            tay
            plp
            tay
            plp
            .byte $00
            plp
            tax
            tay
            asl
            .byte $80
            tax
            tay
            tay
            plp
            tax
            tay
            lda #$86
            sta L00B0
            lda #$1F
            sta L00B1
            ldx #$00
            ldy #$00
L4703       lda L3801+1,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0A
            bne L4703
            cpx #$46
            beq L4718
            jsr L3A3A
            jmp L3851+1
L4718       rts
            lda #$7A
            sta L00B0
            lda #$21
            sta L00B1
            ldx #$00
            lda L0489
            asl
            asl
            asl
            asl
            sta L0488
            jmp L374C+1
            lda L046F
            sta L043E
            ldx #$00
L4738       lda L043E
            sta L04A5
            clc
            adc #$0A
            sta L043E
            lda L0400,X
            sta L04A0
            lda L0401,X
            sta L04A1
            lda L0405,X
            sta L04A6
            stx L043D
            jsr L2533
            ldx L043D
            lda L04A6
            sta L0405,X
            txa
            clc
            adc #$10
            tax
            cpx #$40
            bne L4738
            rts
            ldx #$00
L4771       stx L04A3
            jsr L35C0
            lda L04A3
            clc
            adc #$10
            tax
            cpx #$40
            bne L4771
            jsr L3000
            jsr L306B+2
            jsr L30DA
            jsr L3147
            rts
            jsr L3683
            jsr L248F
            nop
            nop
            nop
            jsr L361A
            jsr L3693+2
            jsr L2782
            jsr L288F
            jsr L288F
            jsr L3000
            jsr L306B+2
            jsr L30DA
            jsr L3147
            ldx #$05
L47B5       jsr L3789
            dex
            bpl L47B5
            ldx L044F
            beq L47CC
L47C0       stx L04A3
            jsr L3435+1
            ldx L04A3
            dex
            bne L47C0
L47CC       lda L046F
            cmp #$64
            bcs L47D9
            clc
            adc #$0A
            sta L046F
L47D9       lda #$01
            sta L041A
            lda #$0A
            sta L0473
            lda #$00
            sta L0460
            lda #$05
            sta L0489
            jsr L386A
            jsr L37DE+2
            jsr L3846+2
            dec L045B
            bne L47FE
            inc L045B
L47FE       rts
            lda L044F
            jsr L361A
            jsr L2782
            jsr L288F
            jsr L288F
            jsr L3000
            jsr L306B+2
            jsr L30DA
            jsr L3147
            ldx L044F
            jsr L3451+1
            dec L044F
            jsr L357D+1
            jsr L3A18
            jsr L35A0
            lda #$FF
            sta L04E0
            rts
            jsr L3A2D
            lda #$AA
            sta AUDC1
            sta AUDC2
            lda #$F0
            sta L0400
            lda #$00
            sta AUDCTL
            sta L0401
            lda #$FF
            sta L0403
L484F       ldx L0401
            lda L39F4,X
            beq L489A
            inc L0401
            sta L0402
            lda L0403
            eor #$FF
            sta L0403
            lda L0403
            bne L4870
            dec L0400
            jmp L39C3+1
L4870       inc L0400
            lda L0400
L4876       sta AUDF1
            pha
            sec
            sbc #$04
            sta AUDF2
            and #$F0
            ora #$08
            sta COLOR2
            pla
            cmp L0402
            beq L484F
            ldy #$02
            ldx #$00
L4891       dex
            bne L4891
            dey
            bne L4891
            jmp L39B6
L489A       lda #$00
            sta AUDC1
            sta AUDC2
            rts
            ldy #$E0
            bcc L4876+1
            .byte $80
            cpy #$70
            bcs L490C
            ldy #$50
            bcc L48EF+1
            .byte $80
            bmi L4922+1
            jsr L1060
            .byte $00
            ldx #$00
            lda #$00
L48BB       sta AUDF1,X
            inx
            cpx #$09
            bne L48BB
            sta L04E0
            rts
            lda #$05
            sta L0413
            ldx #$00
            ldy #$00
L48D0       dex
            bne L48D0
            dey
            bne L48D0
            dec L0413
            bne L48D0
            rts
            lda #$00
            ldx #$00
L48E0       sta HPOSP0,X
            inx
            cpx #$08
            bne L48E0
            rts
            lda L00B1
            cmp #$1F
            bne L48FA
L48EF       lda L00B0
            cmp #$C8
            bcc L48FA
            clc
            adc #$10
            sta L00B0
L48FA       clc
            lda L00B0
            adc #$28
            sta L00B0
            lda L00B1
            adc #$00
            sta L00B1
            rts
            .byte $00,$00
            lda #$3E
L490C       sta SDMCTL
            lda #$03
            sta GRACTL
            jsr L3B70
            lda L045B
            sta L04DF
            ldx #$FF
            txs
            lda #$02
L4922       sta L044F
            lda #$00
            sta COLOR4
            sta ATRACT
            sta AUDCTL
            sta L0457
            lda L04DF
            sta L045B
            ldx #$05
L493A       lda #$00
            sta L0480,X
            dex
            bpl L493A
            lda #$F8
            sta L043F
            jsr L3A08
            jsr L3A2D
            jsr L38DF+1
            lda L04AA
            sta L0489
            jsr L386A
            jsr L357D+1
            jsr L3465
            jsr L35A0
            lda #$04
            sta L04CF
            lda L04AC
            sta L046F
            lda #$FF
            sta L04E0
            lda #$00
            sta ATRACT
            sta HITCLR
            lda L2803
            bne L49A4
            jsr L3A08
            jsr L3983
            jsr L38DF+1
            lda L04AA
            sta L0489
            jsr L386A
            jsr L2782
            jsr L357D+1
            jsr L3A18
            jsr L3683
            jsr L35A0
            lda #$FF
            sta L04E0
L49A4       jsr L3361+2
            lda CH
            cmp #$FF
            beq L49CB
            cmp #$21
            bne L49C6
            lda #$FF
            sta CH
            jsr L3A08
L49BA       lda CH
            cmp #$21
            bne L49BA
            lda #$FF
            sta L04E0
L49C6       lda #$FF
            sta CH
L49CB       lda #$00
            sta ATRACT
            jsr L2827
            lda L0460
            beq L49DD
            jsr L31B3+1
            jmp L3B54
L49DD       lda STRIG0
            bne L49F8
            lda L0489
            beq L49F8
            lda #$FF
            sta L0460
            dec L0489
            lda L0489
            jsr L386A
            jmp L3B27+1
L49F8       jsr L38BF+1
            jsr L3880+1
            jsr L2653
            bne L4A11
            ldx #$00
            ldy L045B
L4A08       dex
            bne L4A08
            dey
            bne L4A08
            jmp L3AC8+2
L4A11       lda L044F
            beq L4A1C
            jsr L3950
            jmp L3ABD+1
L4A1C       jmp L3EA6
            lda #$00
            sta L042D
            sta L042E
            sta L042F
            sta L04E0
            sta L0403
            ldx #$96
            ldy #$3B
            lda #$00
            sta NMIEN
            stx VVBLKD
            sty VVBLKD+1
            lda #$40
            sta NMIEN
            rts
            lda L04E0
            beq L4AB9
            lsr
            bcc L4A6E
            lda #$A1
            sta AUDC1
            sta AUDC3
            lda #$F0
            sta L04E1
            lda #$B0
            sta L04E2
            lda #$00
            sta L04E3
            lda #$F0
            sta L04E0
            lda #$F0
            sta L04E4
L4A6E       lda L04E3
            bne L4A92
            dec L04E4
            dec L04E4
            dec L04E4
            dec L04E4
            lda L04E4
            cmp L04E2
            beq L4AB1
            sta AUDF1
            clc
            adc #$03
            sta AUDF3
            bne L4AB9
L4A92       inc L04E4
            inc L04E4
            inc L04E4
            inc L04E4
            lda L04E4
            cmp L04E1
            beq L4AB1
            sta AUDF1
            clc
            adc #$03
            sta AUDF3
            bne L4AB9
L4AB1       lda L04E3
            eor #$FF
            sta L04E3
L4AB9       lda L042E
            beq L4B08
            cmp #$80
            beq L4ADA
            lda L042E
            sta L04E5
            inc L04E5
            lda #$A9
            sta AUDC4
            lda #$40
            sta L04E6
            lda #$80
            sta L042E
L4ADA       dec L04E6
            dec L04E6
            dec L04E6
            dec L04E6
            lda L04E6
            sta AUDF4
            cmp #$10
            bne L4B3E
            dec L04E5
            bne L4B00
            lda #$00
            sta L042E
            sta AUDC4
            jmp L3C8F
L4B00       lda #$40
            sta L04E6
            jmp L3C8F
L4B08       lda L042F
            beq L4B3E
            lsr
            bcc L4B1D
            lda #$A9
            sta AUDC4
            lda #$10
            sta L04E5
            sta L042F
L4B1D       inc L04E5
            inc L04E5
            inc L04E5
            inc L04E5
            lda L04E5
            cmp #$40
            beq L4B36
            sta AUDF4
            jmp L3C8F
L4B36       lda #$00
            sta L042F
            sta AUDC4
L4B3E       lda #$08
            sta CONSOL
            lda L04E7
            bne L4B56
            lda CONSOL
            lsr
            bcs L4B64
            lda #$FF
            sta L04E7
            jmp L3CB5
L4B56       lda CONSOL
            lsr
            bcc L4B64
            lda #$00
            sta L04E7
            jmp L3A6E
L4B64       lda L04F0
            beq L4B90
            lda STICK0
            sta L04F1
            lda #$0F
            lsr L04F1
            bcs L4B78
            and #$07
L4B78       lsr L04F1
            bcs L4B7F
            and #$0B
L4B7F       lsr L04F1
            bcs L4B86
            and #$0E
L4B86       lsr L04F1
            bcs L4B8D
            and #$0D
L4B8D       sta STICK0
L4B90       pla
            tay
            pla
            tax
            pla
            rti
            ldx #$00
            stx L04B0
            ldx L04B0
            lda L3D34,X
            beq L4BDF
            sta AUDF1
            clc
            adc #$01
            sta AUDF2
            lda #$AF
            sta AUDC1
            sta AUDC2
            sta L04B1
            lda L04B1
            cmp #$A4
            beq L4BD7
            dec L04B1
            lda L04B1
            sta AUDC1
            sta AUDC2
            ldx #$00
            ldy #$08
L4BCE       dex
            bne L4BCE
            dey
            bne L4BCE
            jmp L3D08
L4BD7       ldx #$00
            inc L04B0
            jmp L3CEC
L4BDF       jsr L3A08
            rts
            and ICSTAZ
            plp
            and L3C35
            pha
            .byte $32,$2F
            pha
            and NOCKSM,X
            pha
            eor (FMSZPG+5),Y
            eor (FKDEF),Y
            jmp (L9079)
            adc L7290,Y
            bcc L4C57
            .byte $5B,$00
            tax
            tay
            plp
            .byte $00
            rol
            tay
            ldy #$A8
            .byte $00,$00
            tax
            tay
            tax
            tay
            ldy #$28
            plp
            .byte $00
            plp
            plp
            ldy #$A8
            .byte $00,$00
            ldx #$88
            ldy #$00
            ldy #$28
            plp
            .byte $00
            plp
            plp
            ldy #$A8
            .byte $00,$00
            ldx #$88
            ldy #$00
            tax
            ldy #$A8
            .byte $00
            tax
            tay
            tax
            tay
            .byte $00,$00
            ldx #$88
            tax
            tay
            ldy #$00
            tay
            .byte $00
            tay
            plp
            asl
            .byte $80,$00,$00
            ldx #$88
            tay
            .byte $00
            ldy #$00
            tay
            .byte $00
            tay
            plp
            asl
            .byte $80,$00,$00
            ldx #$88
            tay
            .byte $00
            ldy #$00
            tax
            tay
            tay
L4C57       plp
            asl
            .byte $80,$00
L4C5B       .byte $00
            ldx #$88
            tax
            tay
            lda #$45
            sta L00B0
            lda #$05
            sta L00B1
            ldx #$00
            ldy #$00
L4C6C       lda L3D4F,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0E
            bne L4C6C
            cpx #$62
            beq L4C81
            jsr L3A3A
            jmp L3DBB
L4C81       rts
            lda #$45
            sta L00B0
            lda #$05
            sta L00B1
            ldx #$00
            ldy #$00
L4C8E       lda #$00
            sta (L00B0),Y
            inx
            iny
            cpy #$0E
            bne L4C8E
            cpx #$62
            beq L4CA2
            jsr L3A3A
            jmp L3DDD
L4CA2       rts
            .byte $00
            ldy #$28
            ldy #$AA
            tay
            ldy #$28
            .byte $00,$00,$00
            ldy #$28
            ldy #$A0
            .byte $00
            ldy #$28
            .byte $00,$00,$00
            ldy #$28
            ldy #$A0
            .byte $00
            ldy #$28
            .byte $00,$00,$00
            tax
            tay
            tay
            tay
            tay
            tax
            tay
            .byte $00,$00,$00
            tay
            plp
            tay
            tay
            plp
            tay
            plp
            .byte $00,$00,$00
            tay
            plp
            tay
            tay
            plp
            tay
            plp
            .byte $00,$00,$00
            tay
            plp
            tay
            tax
            tay
            tay
            plp
            .byte $00,$00
            lda #$93
            sta L00B0
            lda #$1F
            sta L00B1
            ldx #$00
            ldy #$00
L4CF5       lda L3DF4,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0A
            bne L4CF5
            cpx #$46
            beq L4D0A
            jsr L3A3A
            jmp L3E44
L4D0A       rts
            ldx #$00
L4D0D       lda L0480,X
            cmp L0440,X
            bcc L4D1C
            bne L4D1D
            inx
            cpx #$05
            bne L4D0D
L4D1C       rts
L4D1D       ldx #$00
L4D1F       lda L0480,X
            sta L0440,X
            inx
            cpx #$05
            bne L4D1F
            rts
            jsr L3E3A
            ldx #$00
L4D30       lda L0440,X
            sta L0488
            lda #$82
            sta L00B0
            lda #$21
            sta L00B1
            jsr L374C+1
            inx
            cpx #$06
            bne L4D30
            rts
            jsr L37DE+2
            ldx #$00
L4D4C       jsr L3789
            inx
            cpx #$06
            bne L4D4C
            rts
            jsr L3A08
            lda #$00
            sta L04E0
            sta L0407
            jsr L3CE7
            jsr L3E5C
            jsr L3A2D
            lda #$40
            sta L046F
            lda #$31
            sta L0406
            jsr L248F
            jsr L361A
            jsr L3F86
            jsr L38BF+1
            jsr L3880+1
            lda RANDOM
            and #$7F
            sta L0450
            sta L0451
            inc L0407
            inc L0406
            lda L0406
            cmp #$32
            bne L4DA0
            jsr L3E7B+1
            jsr L3DB1
L4DA0       cmp #$64
            bne L4DAF
            lda #$00
            sta L0406
            jsr L3E98
            jsr L3DD3
L4DAF       lda STRIG0
            bne L4DB7
            jmp L3A6E
L4DB7       lda L0407
            cmp #$05
            bne L4DCD
            lda #$00
            sta L0407
            lda RANDOM
            and #$F0
            ora #$08
            sta COLOR1
L4DCD       ldx #$00
            ldy #$19
L4DD1       dex
            bne L4DD1
            dey
            bne L4DD1
            jmp L3ECC+1
            ldy #$A0
            ldy #$AA
            ldy #$00
            tax
            tay
            tax
            ldy #$A0
            tax
            ldy #$A0
            ldy #$A0
            ldy #$A0
            .byte $00
            ldy #$00
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            .byte $00
            ldy #$00
            ldy #$A0
            ldy #$A0
            ldy #$AA
            tay
            tay
            ldy #$A8
            .byte $00
            tay
            tay
            tax
            tay
            tay
            ldy #$A8
L4E0E       tay
            plp
            tay
            ldy #$A8
            .byte $00
            tay
            plp
            tay
            tay
            tay
            ldy #$A8
            tay
            plp
            tay
            ldy #$A8
            .byte $00
            tay
            plp
            tay
            tay
            tay
            ldy #$A8
            tay
            plp
            tay
            tax
            tay
            .byte $00
            tax
            tay
            tay
            tay
            tay
            tax
            tay
            lda #$53
            sta L00B0
            lda #$20
            sta L00B1
            jsr L3FCE+2
            jsr L3FCE+2
            jsr L3FE7+1
            jsr L3FE7+1
L4E49       ldx #$00
            ldy #$00
            lda #$28
            sta (L00B0),Y
            iny
L4E52       lda L3F2A+1,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0E
            bne L4E52
            cpx #$5B
            beq L4E6B
            lda #$A0
            sta (L00B0),Y
            jsr L3A3A
            jmp L3F9B+1
L4E6B       lda #$A0
            sta (L00B0),Y
            jsr L3A3A
            jsr L3FE7+1
            jsr L3FE7+1
            jsr L3FCE+2
            jsr L3FCE+2
            rts
            ldy #$00
            lda #$2A
            sta (L00B0),Y
            lda #$AA
            iny
L4E88       sta (L00B0),Y
            iny
            cpy #$0E
            bne L4E88
            lda #$A0
            sta (L00B0),Y
            jsr L3A3A
            rts
            lda #$28
            ldy #$00
            sta (L00B0),Y
            lda #$A0
            ldy #$0E
            sta (L00B0),Y
            jsr L3A3A
            rts
            .byte $00,$00,$00,$00,$00,$00,$00,$00
;
            org $02E0
;
            .word L3000
;
         
