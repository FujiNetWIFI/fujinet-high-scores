; 
            icl 'kid_grid.inc'
;
; Start of code
;
		org $2000            
;
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
L203A       jsr L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00
L2050       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
L2100       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
            bvs L2372
            bvs L2351+1
            bpl L2309+2
            asl L0E0E
L2309       asl L0E0E
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
L2351       asl L0E0E
            asl L0E0E
L2357       asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
L2366       asl L0E0E
            asl L0E0E
            asl L0E0E
L236F       asl L0E0E
L2372       asl L0E0E
L2375       asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
L2381       asl L0E0E
            asl L0E0E
L2387       asl L0E0E
            asl L0E0E
            asl L0E0E
L2390       asl L0E0E
            asl L0E0E
L2396       asl L0E0E
L2399       asl L0E0E
            asl L0E0E
L239F       asl L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
L23AB       asl L0E0E
            asl L0E0E
L23B1       asl L4E0E
            .byte $00
L23B5       jsr L0E0E
            asl L0E0E
L23BB       asl L0E0E
            asl L0E0E
            asl L0E0E
L23C4       asl L0E0E
            asl.w SOUNDR
            .byte $23
L23CB       bpl L242D
            bcs L23CF
L23CF       bvc L236F+2
            beq L2413
            bcc L23B5
L23D5       bmi L2357
            bne L23F9
            bvs L2399+2
L23DB       bpl L243B+2
            bcs L23DF
L23DF       bvc L2381
            beq L2423
            bcc L23C4+1
L23E5       bmi L2366+1
            bne L2409
            bvs L23AB
            bpl L244D
            bcs L23EF
L23EF       bvc L2390+1
            beq L2433
            bcc L23D5
L23F5       bmi L2375+2
            bne L2419
L23F9       bvs L23BB
            bpl L245D
            bcs L23FF
L23FF       bvc L239F+2
            beq L2443
            bcc L23E5
            bmi L2387
            bne L2429
L2409       bvs L23CB
            bpl L246B+2
            bcs L240F
L240F       bvc L23B1
            beq L2453
L2413       bcc L23F5
            bmi L2396+1
            bne L2438+1
L2419       bvs L23DB
            bpl L247D
L241D       bcs L2423+1
            ora RAMLO+1
            asl TRAMSZ
L2423       asl TRAMSZ
            .byte $07,$07,$07
            php
L2429       php
            php
            ora #$09
L242D       ora #$0A
            asl
            asl
            .byte $0B,$0B
L2433       .byte $0B,$0B,$0C,$0C,$0C
L2438       ora L0D0D
L243B       asl L0E0E
            .byte $0F,$0F,$0F
            bpl L2453
L2443       bpl L2455
            ora (BRKKEY),Y
            ora (RTCLOK),Y
            .byte $12,$12,$13,$13
L244D       .byte $13,$14,$14,$14
            ora BUFADR,X
L2453       ora BUFADR,X
L2455       asl BUFADR+1,X
            asl ICCOMT,X
            .byte $17,$17
            clc
            clc
L245D       clc
            ora L1919,Y
            .byte $1A,$1A,$1A,$1A,$1B,$1B,$1B,$1C,$1C,$1C
L246B       ora L1D1D,X
            asl L1E1E,X
L2471       lda #$00
            sta L00B0
            lda #$05
            sta L00B1
            ldy #$10
            bne L247F
L247D       ldy #$00
L247F       lda #$00
L2481       sta (L00B0),Y
            iny
            bne L2481
            inc L00B1
            lda L00B1
            cmp #$23
            bne L247F
            rts
L248F       jsr L2471
            lda #$00
            sta SDLSTL
            lda #$23
            sta SDLSTH
            lda #$00
            sta L0500
L24A1       ldx L0500
            lda L24D8,X
            bne L24AC
            jmp L24DF
L24AC       tay
            lda L23CB,Y
            sta L00B0
            lda L241D+1,Y
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
L24CB       lda #$F0
            sta (L00B0),Y
            sta (L00B2),Y
            iny
            dex
            bne L24CB
            jmp L24A1
L24D8       bvc L251B
            .byte $32,$23,$14
            ora L0000
L24DF       sta L0500
L24E2       ldx L0500
            lda L2523,X
            bne L24EB
            rts
L24EB       tay
            inc L0500
            lda #$A0
            sta L00B0
            lda #$06
            sta L00B1
            lda #$19
            sta L0501
L24FC       ldx #$06
            lda #$00
            sta L0503
L2503       lda (L00B0),Y
            ora L0503
            sta (L00B0),Y
            jsr L3A3A
            dex
            beq L251B
            cpx #$03
            bne L2503
            lda #$0F
            sta L0503
            bne L2503
L251B       dec L0501
            bne L24FC
            jmp L24E2
L2523       and ICHIDZ
            .byte $1B
            asl BRKKEY,X
            .byte $0C,$07,$02,$00,$00,$00,$00,$00,$00,$00,$00
L2533       lda L04A0
            jsr L261B
            bcc L2543
            lda L04A1
            jsr L262F
            bcs L2544
L2543       rts
L2544       lda #$0F
            sta L04A2
            lda L04A0
            cmp L2649+1
            bne L255C
            lda #$0D
            and L04A2
            sta L04A2
            jmp L2569
L255C       cmp L2643
            bne L2569
            lda #$0E
            and L04A2
            sta L04A2
L2569       lda L04A1
            cmp L2651
            bne L257C
            lda #$07
            and L04A2
            sta L04A2
            jmp L2589
L257C       cmp L264C
            bne L2589
            lda #$0B
            and L04A2
            sta L04A2
L2589       lda L0450
            sec
            sbc L04A0
            bcs L2594
            eor #$FF
L2594       sta L04A3
            lda L0451
            sec
            sbc L04A1
            bcs L25A2
            eor #$FF
L25A2       sta L04A4
            lsr
            clc
            adc L04A4
            sta L04A4
            clc
            adc L04A3
            bcs L25F3
            cmp L04A5
            bcc L25BB
            jmp L25F3
L25BB       lda RANDOM
            lsr
            bcc L25FC
            lda L04A3
            cmp L04A4
            bcc L25DB
            lda L0450
            cmp L04A0
            bcc L25D6
            lda #$01
            jmp L25EA
L25D6       lda #$02
            jmp L25EA
L25DB       lda L0451
            cmp L04A1
            bcc L25E8
            lda #$04
            jmp L25EA
L25E8       lda #$08
L25EA       and L04A2
            beq L25F3
            sta L04A6
            rts
L25F3       lda L04A6
            and L04A2
            beq L25FC
            rts
L25FC       lda #$00
            sta L04A3
            lda RANDOM
            and #$03
            tax
            inx
            sec
L2609       rol L04A3
            dex
            bne L2609
            lda L04A3
            and L04A2
            beq L25FC
            sta L04A6
            rts
L261B       sta L04A3
            ldx #$00
L2620       lda L2643,X
            beq L262D
            inx
            cmp L04A3
            bne L2620
            sec
            rts
L262D       clc
            rts
L262F       sta L04A3
            ldx #$00
L2634       lda L264C,X
            beq L2641
            inx
            cmp L04A3
            bne L2634
            sec
            rts
L2641       clc
            rts
L2643       stx L0082,Y
            ror L465A
            .byte $32
L2649       asl.w DOSVEC,X
L264C       bvc L268E+1
            .byte $32,$23
L2650       .byte $14
L2651       ora L0000
L2653       lda #$00
            sta L04C0
            sta L04C1
            sta L04C2
            sta L04C3
            lda M0PL
            jsr L271F
            lda M1PL
            jsr L271F
            lda M2PL
            jsr L271F
            lda M3PL
            jsr L271F
            lda L04C0
            beq L26A1
            lda L0450
            sec
            sbc L0400
            bcs L2689
            eor #$FF
L2689       cmp L04CF
            bcs L26A1
L268E       lda L0451
            sec
            sbc L0401
            bcs L2699
            eor #$FF
L2699       cmp L04CF
            bcs L26A1
            jmp L2730
L26A1       lda L04C1
            beq L26C9
            lda L0450
            sec
            sbc L0410
            bcs L26B1
            eor #$FF
L26B1       cmp L04CF
            bcs L26C9
            lda L0451
            sec
            sbc L0411
            bcs L26C1
            eor #$FF
L26C1       cmp L04CF
            bcs L26C9
            jmp L2730
L26C9       lda L04C2
            beq L26F1
            lda L0450
            sec
            sbc L0420
            bcs L26D9
            eor #$FF
L26D9       cmp L04CF
            bcs L26F1
            lda L0451
            sec
            sbc L0421
            bcs L26E9
            eor #$FF
L26E9       cmp L04CF
            bcs L26F1
            jmp L2730
L26F1       lda L04C3
            beq L2719
            lda L0450
            sec
            sbc L0430
            bcs L2701
            eor #$FF
L2701       cmp L04CF
            bcs L2719
            lda L0451
            sec
            sbc L0431
            bcs L2711
            eor #$FF
L2711       cmp L04CF
            bcs L2719
            jmp L2730
L2719       lda #$00
            sta HITCLR
            rts
L271F       lsr
            rol L04C0
            lsr
            rol L04C1
            lsr
            rol L04C2
            lsr
            rol L04C3
            rts
L2730       lda #$00
            sta AUDC2
            sta AUDC3
            sta AUDC4
            sta AUDCTL
            lda #$AA
            sta AUDC1
            ldy #$00
            ldx #$00
L2747       tya
            sta AUDF1
L274B       dex
            bne L274B
            dey
            dey
            bne L2747
            lda #$28
            sta AUDC1
            lda #$01
            sta L045F
L275C       lda L045F
            sta AUDF1
            lsr
            lsr
            lsr
            lsr
            eor #$0F
            sta COLOR4
            ldy #$06
            ldx #$00
L276F       dex
            bne L276F
            dey
            bne L276F
            inc L045F
            bne L275C
            lda #$00
            sta AUDC1
            lda #$FF
            rts
L2782       lda L0451
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0452
            bne L27A4
            sty L0452
L2795       lda L27DF,X
            sta L2B00,Y
            iny
            inx
            cpx #$12
            bne L2795
            jmp L27B5
L27A4       lda #$00
            sta L0452
L27A9       lda L27F1,X
            sta L2B00,Y
            iny
            inx
            cpx #$12
            bne L27A9
L27B5       lda L0450
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
L27D1       lda #$28
            clc
            adc L00B0
            sta L00B0
            lda #$00
            adc L00B1
            sta L00B1
            rts
L27DF       .byte $00,$00
            inc LD6D6,X
            inc L3810,X
            jmp (L7CFE)
            sec
            plp
            pla
            .byte $0C,$00,$00,$00
L27F1       .byte $00,$00
            inc LD6D6,X
            inc L3810,X
            jmp (L7CFE)
            sec
            plp
            bit.w FKDEF
            .byte $00,$00
L2803       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00
L2827       lda STICK0
            lsr
            bcs L283C
            lda L0451
            jsr L28FF
            bcc L2870
            lda #$08
            sta L0455
            bne L2870
L283C       lsr
            bcs L284E
            lda L0451
            jsr L28FF
            bcc L2870
            lda #$04
            sta L0455
            bne L2870
L284E       lsr
            bcs L2860
            lda L0450
            jsr L2910
            bcc L2870
            lda #$02
            sta L0455
            bne L2870
L2860       lsr
            bcs L2870
            lda L0450
            jsr L2910
            bcc L2870
            lda #$01
            sta L0455
L2870       jsr L2921
            jsr L2782
            jsr L2A1E
            jsr L2A3C
L287C       inc L0473
            lda L0473
            cmp #$10
            bcc L288B
            lda #$0A
            sta L0473
L288B       sta AUDF2
            rts
L288F       sty L0456
            ldy L0451
            lda L23CB,Y
            sta L00B0
            lda L241D+1,Y
            sta L00B1
            lda L0450
            lsr
            bcs L28B6
            lsr
            tay
            bcs L28D0
            lda (L00B0),Y
            and #$F0
            cmp #$50
            bne L28BB
            lda #$00
            sta AUDC2
L28B6       ldy L0456
            sec
            rts
L28BB       lda (L00B0),Y
            and #$0F
            ora #$50
            sta (L00B0),Y
            jsr L27D1
            lda (L00B0),Y
            and #$0F
            ora #$50
            sta (L00B0),Y
            bne L28F5
L28D0       lda (L00B0),Y
            and #$0F
            cmp #$05
            bne L28E2
            lda #$00
            sta AUDC2
            ldy L0456
            sec
            rts
L28E2       lda (L00B0),Y
            and #$F0
            ora #$05
            sta (L00B0),Y
            jsr L27D1
            lda (L00B0),Y
            and #$F0
            ora #$05
            sta (L00B0),Y
L28F5       lda #$C3
            sta AUDC2
            ldy L0456
            clc
            rts
L28FF       ldx #$00
L2901       lda L2643,X
            beq L290E
            inx
            cmp L0450
            bne L2901
            sec
            rts
L290E       clc
            rts
L2910       ldx #$00
L2912       lda L264C,X
            beq L291F
            inx
            cmp L0451
            bne L2912
            sec
            rts
L291F       clc
            rts
L2921       lda L0455
            lsr
            bcc L2936
            lda L0450
            cmp L2643
            beq L2948
            inc L0450
            jsr L2970
            rts
L2936       lsr
            bcc L294C
            lda L0450
            cmp L2649+1
            beq L2948
            dec L0450
            jsr L2970
            rts
L2948       jsr L288F
            rts
L294C       lsr
            bcc L295E
            lda L0451
            cmp L264C
            beq L2948
            inc L0451
            jsr L29C5
            rts
L295E       lsr
            bcc L296F
            lda L0451
            cmp L2651
            beq L2948
            dec L0451
            jsr L29C5
L296F       rts
L2970       lda L0450
            cmp L2643
            beq L298E
            ldx #$01
            ldy #$23
L297C       lda L0450
            cmp L2643,X
            beq L298E
            bcs L2992
            inx
            tya
            sec
            sbc #$05
            tay
            bne L297C
L298E       jsr L288F
            rts
L2992       ldx #$00
L2994       lda L264C,X
            cmp L2650
            beq L29A8
            lda L0451
            cmp L264C,X
            beq L29A8
            inx
            dey
            bne L2994
L29A8       jsr L288F
            bcc L29AE
L29AD       rts
L29AE       tya
            tax
            dec L2803,X
            lda L0451
            cmp L2651
            beq L29AD
            cmp L264C
            beq L29AD
            inx
            dec L2803,X
            rts
L29C5       lda L0451
            cmp L264C
            beq L29E9
            ldx #$00
            ldy #$23
L29D1       lda L2643,X
            cmp L2649
            beq L29ED
            lda L0450
            cmp L2643,X
            beq L29ED
            inx
            tya
            sec
            sbc #$05
            tay
            bne L29D1
L29E9       jsr L288F
            rts
L29ED       ldx #$01
L29EF       lda L0451
            cmp L264C,X
            beq L29E9
            bcs L29FD
            inx
            dey
            bne L29EF
L29FD       jsr L288F
            bcc L2A03
L2A02       rts
L2A03       tya
            tax
            dec L2803,X
            lda L0450
            cmp L2649+1
            beq L2A02
            cmp L2643
            beq L2A02
            txa
            clc
            adc #$05
            tax
            dec L2803,X
            rts
L2A1E       ldx #$00
L2A20       lda L2803,X
            beq L2A2B
            inx
            cpx #$24
            bne L2A20
            rts
L2A2B       lda #$FF
            sta L2803,X
            stx L0457
            ldx #$03
            jsr L3324
            dec L2803
            rts
L2A3C       ldx L0457
            bne L2A42
            rts
L2A42       cpx L041B
            bne L2A6E
            lda #$00
            sta L041B
L2A4C       lda RANDOM
            and #$07
            cmp #$05
            bcs L2A4C
            sta L047F
            inc L047F
            sta L042E
            inc L042E
L2A61       jsr L3324
            dec L047F
            bne L2A61
            nop
            nop
            ldx L0457
L2A6E       lda L2ADB,X
            tay
            lda L23CB,Y
            sta L00B0
            lda L241D+1,Y
            sta L00B1
            lda L042E
            bne L2A86
            lda #$FF
            sta L042F
L2A86       lda L2AB7,X
            lsr
            tay
            lda #$18
            sta L00B2
L2A8F       lda #$03
            sta L00B3
            lda (L00B0),Y
            ora #$0F
            sta (L00B0),Y
            iny
            lda #$FF
L2A9C       sta (L00B0),Y
            iny
            dec L00B3
            bne L2A9C
            dec L00B2
            beq L2AB1
            jsr L27D1
            tya
            sec
            sbc #$04
            tay
            bne L2A8F
L2AB1       lda #$00
            sta L0457
            rts
L2AB7       .byte $00,$07,$07,$07,$07,$07
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (DSKUTL+1),Y
            .byte $1B,$1B,$1B,$1B
            and ICBAHZ
            and ICBAHZ
            and ICAX6Z
            .byte $2F,$2F,$2F,$2F
            and L3939,Y
            and L4339,Y
            .byte $43,$43,$43,$43
L2ADB       .byte $00,$07
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
L2B00       ldx #$00
            lda #$00
L2B04       sta L0400,X
            inx
            bne L2B04
            lda #$20
            sta SDLSTL
            lda #$2C
            sta SDLSTH
            lda #$56
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
L2B35       lda #$08
            sta CONSOL
            lda CONSOL
            lsr
            bcs L2B69
L2B40       lda #$08
            sta CONSOL
            lda CONSOL
            lsr
            bcc L2B40
            ldx L04AB
            lda #$26
L2B50       clc
            adc #$08
            dex
            bne L2B50
            sta L04AC
            lda #$1B
            sec
            sbc L04AB
            sec
            sbc L04AB
            sta L045B
            jmp L3A5B
L2B69       lsr
            bcs L2B93
L2B6C       lda #$08
            sta CONSOL
            jsr L2BE8
            lda #$02
            bit CONSOL
            beq L2B6C
            lda L04AA
            clc
            adc #$02
            cmp #$08
            bcc L2B87
            lda #$03
L2B87       sta L04AA
            clc
            adc #$10
            sta L2FC6+1
            jmp L2BBA
L2B93       lsr
            bcs L2BBA
L2B96       lda #$08
            sta CONSOL
            jsr L2BE8
            lda #$04
            bit CONSOL
            beq L2B96
            inc L04AB
            lda L04AB
            cmp #$06
            bcc L2BB1
            lda #$01
L2BB1       sta L04AB
            clc
            adc #$10
            sta L2FBC+2
L2BBA       lda CH
            cmp #$FF
            bne L2BC4
            jmp L2B35
L2BC4       cmp #$00
            bne L2BD2
            lda #$FF
            sta L04F0
            lda #$2C
            jmp L2BDD
L2BD2       cmp #$28
            bne L2BE0
            lda #$00
            sta L04F0
            lda #$32
L2BDD       sta L2FD2+1
L2BE0       lda #$FF
            sta CH
            jmp L2B35
L2BE8       ldx #$00
            ldy #$30
L2BEC       dex
            bne L2BEC
            dey
            bne L2BEC
            rts
            eor (ICHIDZ,X)
            .byte $23
            bit FMSZPG+3
            lsr L009B
            .byte $9E,$0C
            asl L2020
            .byte $53
L2C00       .byte $54
            eor (ICHIDZ,X)
            bit BFENLO
            eor LTEMP+1
            .byte $9B
            tay
            .byte $0C
            asl L2020
            lsr
            eor L2050
            eor #$4E
            .byte $54
            and L009B,X
            .byte $B2,$0C,$13
            jsr L4E49
            .byte $54,$34
            jsr L704C
            bvs L2C93
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
            eor (FMSZPG+2),Y
            .byte $7C,$7C
            eor (LMARGN),Y
            eor HOLDCH
            .byte $5A
            eor HOLD1
            .byte $43,$5A
            eor OLDROW
            eor HOLD1
            .byte $43,$00,$00,$00,$00,$00,$00,$00,$00,$00
L2C93       .byte $00,$00,$00,$00,$7C,$7C,$00,$7C,$5A,$43,$5A
            eor HOLDCH
            .byte $7C,$7C,$7C,$7C,$7C,$00,$7C,$7C,$00,$7C,$7C,$00,$00,$5A
            eor OLDROW
            eor L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C,$7C,$00
            .byte $7C
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
            .byte $43,$5A,$52,$43,$5A
L2D00       .byte $52,$43,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            bvs L2D8C
            adc COLAC+1
            adc BITMSK
            .byte $74,$73,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$80,$80,$00,$80,$80,$00,$00,$80,$80,$00
            .byte $80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L2D8C       .byte $80,$80,$00,$80,$80,$00,$00,$80,$80,$00,$80,$80,$00,$80,$80,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$80,$80,$80,$00,$80
            .byte $80,$00,$80,$80,$00,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $80,$80,$00,$80,$80,$80,$00,$80,$80,$00,$80,$80,$00,$80,$80,$80
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00
L2E00       .byte $00,$00,$00,$00,$80,$80,$00,$80,$80,$80,$00,$80,$80,$00,$80,$80
            .byte $80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$80,$80,$80,$80,$80,$80,$00,$80,$80,$80,$80,$80,$00,$00,$80
            .byte $80,$00,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$00,$00,$00,$00,$00
            .byte $80,$80,$00,$80,$80,$00,$00,$80,$80,$00,$80,$80,$00,$80,$80,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$80,$80,$80,$00,$80,$80,$00,$80,$80,$80,$80,$80,$80,$00,$80
            .byte $80,$00,$80,$80,$00,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$80,$80,$80,$00,$00,$80,$00
            .byte $80,$80,$00,$80,$80,$80,$00,$80,$80,$00,$80,$80,$00,$80,$80,$80
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$80,$80,$80,$80,$80,$80,$00,$80,$80,$00,$80,$80,$80,$00,$80
L2F00       .byte $80,$00,$80,$80,$80,$80,$80,$80,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$22
            adc L2100,Y
            .byte $72,$74
            adc #$00
            plp
            adc (COLAC,X)
            .byte $6F
            adc ENDPT,X
            adc BITMSK,X
            adc #$61
            ror.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00
            php
            .byte $63
            ora #$00
            ora (DSKFMS+1),Y
            clc
            .byte $12,$00,$34,$32,$2F
            rol L3829
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
            bit SAVADR+1
            ror MLTTMP
            adc #$63
            adc BUFSTR,X
            .byte $74
L2FBC       adc L111D,Y
            .byte $00,$00,$33,$74
            adc BITMSK,X
            .byte $73
L2FC6       ora.w BUFADR,X
            .byte $00
            rol
            .byte $6F
            adc L7473,Y
            adc #$63
            .byte $6B
L2FD2       ora.w BUFRLO,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3000       lda L0401
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0402
            cmp #$02
            bcs L3024
            inc L0402
L3015       lda L3049,X
            sta L2C00,Y
            iny
            inx
            cpx #$12
            bne L3015
            jmp L303F
L3024       inc L0402
            lda L0402
            cmp #$04
            bne L3033
            lda #$00
            sta L0402
L3033       lda L305B,X
            sta L2C00,Y
            iny
            inx
            cpx #$12
            bne L3033
L303F       lda L0400
            clc
            adc #$2D
            sta HPOSP0
            rts
L3049       .byte $00,$00
            inc LAAAA
            inc L287C,X
L3051       jmp (LFEC6)
            .byte $44
            cpy TRAMSZ
            .byte $00,$00,$00,$00
L305B       .byte $00,$00
L305D       inc LAAAA
            inc L287C,X
            jmp (LFEC6)
            .byte $44
            lsr L00C0
            .byte $00,$00,$00,$00
L306D       lda L0411
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0412
            cmp #$02
            bcs L3091
            inc L0412
L3082       lda L30B6,X
            sta L2D00,Y
            iny
            inx
            cpx #$12
            bne L3082
            jmp L30AC
L3091       inc L0412
            lda L0412
            cmp #$04
            bne L30A0
            lda #$00
            sta L0412
L30A0       lda L30C8,X
            sta L2D00,Y
            iny
            inx
            cpx #$12
            bne L30A0
L30AC       lda L0410
            clc
            adc #$2D
            sta HPOSP1
            rts
L30B6       .byte $00,$00,$00,$00
            bvs L30CD+1
            .byte $12
            tsx
            inc LBAFE,X
            bcc L3051+2
            .byte $1C,$00,$00,$00,$00
L30C8       .byte $00,$00,$00,$00,$1C
L30CD       bcc L305D+2
            tsx
            inc LBAFE,X
            .byte $12,$12
            bvs L30D7
L30D7       .byte $00,$00,$00
L30DA       lda L0421
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0422
            cmp #$02
            bcs L30FE
            inc L0422
L30EF       lda L3123,X
            sta L2E00,Y
            iny
            inx
            cpx #$12
            bne L30EF
            jmp L3119
L30FE       inc L0422
            lda L0422
            cmp #$04
            bne L310D
            lda #$00
            sta L0422
L310D       lda L3135,X
            sta L2E00,Y
            iny
            inx
            cpx #$12
            bne L310D
L3119       lda L0420
            clc
            adc #$2D
            sta HPOSP2
            rts
L3123       .byte $00,$00
            cpx #$A7
            lda L00E5
            .byte $67
            ror MLTTMP
            .byte $3C,$3C
            clc
            bit ADRESS
            asl L0000
            .byte $00,$00
L3135       .byte $00,$00,$07
            sbc L00A5
            .byte $A7
            inc MLTTMP
            ror NOCKSM
            .byte $3C
            clc
            bit ICPTLZ
            rts
            .byte $00,$00,$00
L3147       lda L0431
            clc
            asl
            clc
            adc #$18
            tay
            ldx #$00
            lda L0432
            cmp #$02
            bcs L316B
            inc L0432
L315C       lda L3190,X
            sta L2F00,Y
            iny
            inx
            cpx #$12
            bne L315C
            jmp L3186
L316B       inc L0432
            lda L0432
            cmp #$04
            bne L317A
            lda #$00
            sta L0432
L317A       lda L31A2,X
            sta L2F00,Y
            iny
            inx
            cpx #$12
            bne L317A
L3186       lda L0430
            clc
            adc #$2D
            sta HPOSP3
            rts
L3190       .byte $00,$00
            clc
            .byte $3C
            ror L5A5A,X
            ror L7E42,X
            .byte $3C
            clc
            bit ADRESS
            asl L0000
            .byte $00,$00
L31A2       .byte $00,$00
            clc
            .byte $3C
            ror L5A5A,X
            ror L7E42,X
            .byte $3C
            clc
            bit ICPTLZ
            rts
            .byte $00,$00,$00
L31B4       lda L0460
            lsr
            bcc L31EF
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
L31EF       lsr
            bcc L320B
            jsr L32A5
            jsr L32A5
            jsr L32A5
            dec L0461
            bne L320A
            lda #$02
            sta L0461
            lda #$FC
            sta L0460
L320A       rts
L320B       lsr
            bcc L3224
            jsr L32A5
            jsr L32A5
            dec L0461
            bne L320A
            lda #$03
            sta L0461
            lda #$F8
            sta L0460
            rts
L3224       lsr
            bcc L323A
            jsr L32A5
            dec L0461
            bne L320A
            lda #$03
            sta L0461
            lda #$F0
            sta L0460
            rts
L323A       lsr
            bcc L3250
            jsr L3293
            dec L0461
            bne L324F
            lda #$02
            sta L0461
            lda #$E0
            sta L0460
L324F       rts
L3250       lsr
            bcc L3269
            jsr L3293
            jsr L3293
            dec L0461
            bne L324F
            lda #$02
            sta L0461
            lda #$C0
            sta L0460
            rts
L3269       jsr L3293
            jsr L3293
            jsr L3293
            dec L0461
            bne L324F
            lda #$00
            sta L0460
            lda #$FF
            sta L04E0
            ldx L043F
            ldy #$00
L3286       lda L35E2,X
            sta PCOLR0,Y
            inx
            iny
            cpy #$04
            bne L3286
            rts
L3293       jsr L32C0
            inc L0500
            inc L0500
            inc L0500
            inc L0500
            jmp L32B4
L32A5       jsr L32C0
            dec L0500
            dec L0500
            dec L0500
            dec L0500
L32B4       jsr L3000
            jsr L306D
            jsr L30DA
            jsr L3147
L32C0       dec L0470
            dec L0470
            dec L0470
            dec L0470
            lda L0470
            sta AUDF1
            clc
            adc #$04
            sta AUDF3
            and #$0F
            beq L32DD
            rts
L32DD       dec L0471
            lda L0471
            cmp #$9F
            bne L32EC
            lda #$A0
            sta L0471
L32EC       sta AUDC1
            sta AUDC3
            rts
L32F3       lda L0480,X
            clc
            adc #$10
            cmp #$A0
            beq L3301
            sta L0480,X
            rts
L3301       lda #$00
            sta L0480,X
            cpx #$02
            bne L3321
            lda L044F
            cmp #$05
            bne L3321
            inc L044F
            ldx L044F
            jsr L3436
            lda #$FF
            sta L042D
            ldx #$02
L3321       lda #$00
            rts
L3324       ldx #$03
L3326       jsr L32F3
            pha
            jsr L3789
            dex
            pla
            beq L3326
            rts
L3332       ldx #$04
L3334       lda L0480,X
            bne L333D
            dex
            bpl L3334
            rts
L333D       ldx #$04
L333F       jsr L334B
            pha
            jsr L3789
            dex
            pla
            beq L333F
            rts
L334B       lda L0480,X
            sec
            sbc #$10
            cmp #$F0
            beq L335B
            sta L0480,X
            lda #$01
            rts
L335B       lda #$90
            sta L0480,X
            lda #$00
            rts
L3363       dec L041A
            beq L3369
            rts
L3369       lda L041B
            beq L3375
            tax
            jsr L33D8
            jsr L3332
L3375       lda #$AA
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
            bpl L33A2
            rts
L33A2       stx L041B
            jmp L33EE
L33A8       .byte $02
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
L33B9       ldy #$BD
            .byte $DB
            rol
            clc
            adc #$04
            tay
            lda L23CB,Y
            sta L00B0
            lda L241D+1,Y
            sta L00B1
            lda L2AB7,X
            lsr
            tay
            iny
            lda #$09
            sta L00B2
            ldx #$00
            rts
L33D8       jsr L33B9+1
L33DB       lda #$00
            sta (L00B0),Y
            iny
            sta (L00B0),Y
            dec L00B2
            bne L33E7
            rts
L33E7       dey
            jsr L3A3A
            jmp L33DB
L33EE       jsr L33B9+1
L33F1       lda L33A8,X
            sta (L00B0),Y
            inx
            iny
            lda L33A8,X
            sta (L00B0),Y
            dec L00B2
            bne L3402
            rts
L3402       dey
            inx
            jsr L3A3A
            jmp L33F1
L340A       tax
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
L3423       ldy #$8A
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
L3436       jsr L3423+1
L3439       lda L340A,X
            sta (L00B0),Y
            inx
            iny
            lda L340A,X
            sta (L00B0),Y
            dec L00B2
            bne L344A
            rts
L344A       inx
            dey
            jsr L3A3A
            jmp L3439
L3452       jsr L3423+1
L3455       lda #$00
            sta (L00B0),Y
            iny
            sta (L00B0),Y
            dey
            jsr L3A3A
            dec L00B2
            bne L3455
            rts
L3465       lda #$00
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
L3484       lda L040A
            beq L3498
            dec L040A
            dec L040C
            lda L040C
            sta AUDC1
            jmp L34BF
L3498       ldx L040D
            lda L3510,X
            beq L34F2
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
            jmp L3484
L34BF       lda L040B
            beq L34CA
            dec L040B
            jmp L34E5
L34CA       ldx L040E
            lda L3521,X
            sta AUDF2
            lda #$A8
            sta AUDC2
            lda L3529,X
L34DB       sta L040B
            inx
            stx L040E
            jmp L34BF
L34E5       ldx #$00
            ldy #$20
L34E9       dex
            bne L34E9
            dey
            bne L34E9
            jmp L3484
L34F2       lda #$00
            sta AUDC1
            sta AUDC2
            lda #$DC
            sta COLOR3
            rts
L3500       .byte $F3
            sta L99B6,Y
            .byte $F3
            sta L99B6,Y
            .byte $F3
            dey
            ldx #$88
            .byte $F3
            sta L99B6,Y
L3510       .byte $04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04,$04
            .byte $00
L3521       adc L4C5B,Y
            .byte $5B
            rts
            .byte $5B
            eor (OLDCOL),Y
L3529       .byte $0C,$04,$0C,$04,$0C,$02,$02
L3530       bpl L34DB+1
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
L357E       lda #$47
            sta L00B0
            lda #$05
            sta L00B1
            ldx #$00
L3588       ldy #$00
L358A       lda L3530+1,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0B
            bne L358A
            cpx #$4D
            beq L359F
            jsr L3A3A
            jmp L3588
L359F       rts
L35A0       lda #$47
            sta L00B0
            lda #$05
            sta L00B1
            ldx #$00
L35AA       ldy #$00
L35AC       lda #$00
            sta (L00B0),Y
            inx
            iny
            cpy #$0B
            bne L35AC
            cpx #$4D
            beq L359F
            jsr L3A3A
            jmp L35AA
L35C0       lda L0405,X
            lsr
            bcc L35CB
            inc L0400,X
            bne L35E1
L35CB       lsr
            bcc L35D3
            dec L0400,X
            bne L35E1
L35D3       lsr
            bcc L35DB
            inc L0401,X
            bne L35E1
L35DB       lsr
            bcc L35E1
            dec L0401,X
L35E1       rts
L35E2       asl
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
L361A       lda #$00
            tax
L361D       sta L2B00,X
            sta L2C00,X
            sta L2D00,X
            sta L2E00,X
            sta L2F00,X
            inx
            bne L361D
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
L3683       ldx #$00
            lda #$2E
L3687       sta L2803,X
            inx
            cpx #$24
            bne L3687
            lda #$23
            sta L2803
            rts
L3695       lda L043F
            clc
            adc #$08
            cmp #$38
            bne L36A1
            lda #$00
L36A1       sta L043F
            tax
            lda #$08
            sta L00B2
            ldy #$00
L36AB       lda L35E2,X
            sta PCOLR0,Y
            iny
            inx
            dec L00B2
            bne L36AB
            rts
            lda #$C1
            sta L00B2
            lda #$36
            sta L00B3
            rts
L36C1       tax
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
L374D       txa
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
L375E       dex
            beq L3766
            clc
            adc #$0E
            bne L375E
L3766       tax
            lda #$07
            sta L0487
L376C       lda L36C1,X
            sta (L00B0),Y
            inx
            iny
            lda L36C1,X
            sta (L00B0),Y
            dec L0487
            beq L3785
            dey
            inx
            jsr L3A3A
            jmp L376C
L3785       ldx L0486
            rts
L3789       lda #$82
            sta L00B0
            lda #$21
            sta L00B1
            lda L0480,X
            sta L0488
            jmp L374D
L379A       tax
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
            ldy #$A0
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
L37E0       lda #$93
            sta L00B0
            lda #$1F
            sta L00B1
            ldx #$00
L37EA       ldy #$00
L37EC       lda L379A,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0A
            bne L37EC
            cpx #$46
            beq L3801
            jsr L3A3A
            jmp L37EA
L3801       rts
L3802       tax
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
L3810       ldy #$28
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
L3829       tay
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
L3848       lda #$86
            sta L00B0
            lda #$1F
            sta L00B1
            ldx #$00
L3852       ldy #$00
L3854       lda L3802,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0A
            bne L3854
            cpx #$46
            beq L3869
            jsr L3A3A
            jmp L3852
L3869       rts
L386A       lda #$7A
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
            jmp L374D
L3881       lda L046F
            sta L043E
            ldx #$00
L3889       lda L043E
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
            bne L3889
            rts
L38C0       ldx #$00
L38C2       stx L04A3
            jsr L35C0
            lda L04A3
            clc
            adc #$10
            tax
            cpx #$40
            bne L38C2
            jsr L3000
            jsr L306D
            jsr L30DA
            jsr L3147
            rts
L38E0       jsr L3683
            jsr L248F
            nop
            nop
            nop
            jsr L361A
            jsr L3695
            jsr L2782
            jsr L288F
            jsr L288F
            jsr L3000
            jsr L306D
            jsr L30DA
            jsr L3147
            ldx #$05
L3906       jsr L3789
            dex
            bpl L3906
            ldx L044F
            beq L391D
L3911       stx L04A3
            jsr L3436
            ldx L04A3
            dex
            bne L3911
L391D       lda L046F
            cmp #$64
            bcs L392A
            clc
            adc #$0A
            sta L046F
L392A       lda #$01
            sta L041A
            lda #$0A
            sta L0473
            lda #$00
            sta L0460
L3939       lda #$05
            sta L0489
            jsr L386A
            jsr L37E0
            jsr L3848
            dec L045B
            bne L394F
            inc L045B
L394F       rts
L3950       lda L044F
            jsr L361A
            jsr L2782
            jsr L288F
            jsr L288F
            jsr L3000
            jsr L306D
            jsr L30DA
            jsr L3147
            ldx L044F
            jsr L3452
            dec L044F
            jsr L357E
            jsr L3A18
            jsr L35A0
            lda #$FF
            sta L04E0
            rts
L3983       jsr L3A2D
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
L39A0       ldx L0401
            lda L39F4,X
            beq L39EB
            inc L0401
            sta L0402
            lda L0403
            eor #$FF
            sta L0403
L39B6       lda L0403
            bne L39C1
            dec L0400
            jmp L39C4
L39C1       inc L0400
L39C4       lda L0400
L39C7       sta AUDF1
            pha
            sec
            sbc #$04
            sta AUDF2
            and #$F0
            ora #$08
            sta COLOR2
            pla
            cmp L0402
            beq L39A0
            ldy #$02
            ldx #$00
L39E2       dex
            bne L39E2
            dey
            bne L39E2
            jmp L39B6
L39EB       lda #$00
            sta AUDC1
            sta AUDC2
            rts
L39F4       ldy #$E0
            bcc L39C7+1
            .byte $80
            cpy #$70
            bcs L3A5D
            ldy #$50
            bcc L3A40+1
            .byte $80
            bmi L3A73+1
            jsr L1060
            .byte $00
L3A08       ldx #$00
            lda #$00
L3A0C       sta AUDF1,X
            inx
            cpx #$09
            bne L3A0C
            sta L04E0
            rts
L3A18       lda #$05
            sta L0413
            ldx #$00
            ldy #$00
L3A21       dex
            bne L3A21
            dey
            bne L3A21
            dec L0413
            bne L3A21
            rts
L3A2D       lda #$00
            ldx #$00
L3A31       sta HPOSP0,X
            inx
            cpx #$08
            bne L3A31
            rts
L3A3A       lda L00B1
            cmp #$1F
            bne L3A4B
L3A40       lda L00B0
            cmp #$C8
            bcc L3A4B
            clc
            adc #$10
            sta L00B0
L3A4B       clc
            lda L00B0
            adc #$28
            sta L00B0
            lda L00B1
            adc #$00
            sta L00B1
            rts
            .byte $00,$00
L3A5B       lda #$3E
L3A5D       sta SDMCTL
            lda #$03
            sta GRACTL
            jsr L3B70
            lda L045B
            sta L04DF
L3A6E       ldx #$FF
            txs
            lda #$02
L3A73       sta L044F
            lda #$00
            sta COLOR4
            sta ATRACT
            sta AUDCTL
            sta L0457
            lda L04DF
            sta L045B
            ldx #$05
L3A8B       lda #$00
            sta L0480,X
            dex
            bpl L3A8B
            lda #$F8
            sta L043F
            jsr L3A08
            jsr L3A2D
            jsr L38E0
            lda L04AA
            sta L0489
            jsr L386A
            jsr L357E
            jsr L3465
            jsr L35A0
            lda #$04
            sta L04CF
            lda L04AC
            sta L046F
L3ABE       lda #$FF
            sta L04E0
            lda #$00
            sta ATRACT
            sta HITCLR
L3ACA       lda L2803
            bne L3AF5
            jsr L3A08
            jsr L3983
            jsr L38E0
            lda L04AA
            sta L0489
            jsr L386A
            jsr L2782
            jsr L357E
            jsr L3A18
            jsr L3683
            jsr L35A0
            lda #$FF
            sta L04E0
L3AF5       jsr L3363
            lda CH
            cmp #$FF
            beq L3B1C
            cmp #$21
            bne L3B17
            lda #$FF
            sta CH
            jsr L3A08
L3B0B       lda CH
            cmp #$21
            bne L3B0B
            lda #$FF
            sta L04E0
L3B17       lda #$FF
            sta CH
L3B1C       lda #$00
            sta ATRACT
            jsr L2827
            lda L0460
            beq L3B2E
L3B28       jsr L31B4
            jmp L3B54
L3B2E       lda STRIG0
            bne L3B49
            lda L0489
            beq L3B49
            lda #$FF
            sta L0460
            dec L0489
            lda L0489
            jsr L386A
            jmp L3B28
L3B49       jsr L38C0
            jsr L3881
            jsr L2653
            bne L3B62
L3B54       ldx #$00
            ldy L045B
L3B59       dex
            bne L3B59
            dey
            bne L3B59
            jmp L3ACA
L3B62       lda L044F
            beq L3B6D
            jsr L3950
            jmp L3ABE
L3B6D       jmp L3EA6
L3B70       lda #$00
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
            beq L3C0A
            lsr
            bcc L3BBF
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
L3BBF       lda L04E3
            bne L3BE3
            dec L04E4
            dec L04E4
            dec L04E4
            dec L04E4
            lda L04E4
            cmp L04E2
            beq L3C02
            sta AUDF1
            clc
            adc #$03
            sta AUDF3
            bne L3C0A
L3BE3       inc L04E4
            inc L04E4
            inc L04E4
            inc L04E4
            lda L04E4
            cmp L04E1
            beq L3C02
            sta AUDF1
            clc
            adc #$03
            sta AUDF3
            bne L3C0A
L3C02       lda L04E3
            eor #$FF
            sta L04E3
L3C0A       lda L042E
            beq L3C59
            cmp #$80
            beq L3C2B
            lda L042E
            sta L04E5
            inc L04E5
            lda #$A9
            sta AUDC4
            lda #$40
            sta L04E6
            lda #$80
            sta L042E
L3C2B       dec L04E6
            dec L04E6
            dec L04E6
L3C34       dec L04E6
            lda L04E6
            sta AUDF4
            cmp #$10
            bne L3C8F
            dec L04E5
            bne L3C51
            lda #$00
            sta L042E
            sta AUDC4
            jmp L3C8F
L3C51       lda #$40
            sta L04E6
            jmp L3C8F
L3C59       lda L042F
            beq L3C8F
            lsr
            bcc L3C6E
            lda #$A9
            sta AUDC4
            lda #$10
            sta L04E5
            sta L042F
L3C6E       inc L04E5
            inc L04E5
            inc L04E5
            inc L04E5
            lda L04E5
            cmp #$40
            beq L3C87
            sta AUDF4
            jmp L3C8F
L3C87       lda #$00
            sta L042F
            sta AUDC4
L3C8F       lda #$08
            sta CONSOL
            lda L04E7
            bne L3CA7
            lda CONSOL
            lsr
            bcs L3CB5
            lda #$FF
            sta L04E7
            jmp L3CB5
L3CA7       lda CONSOL
            lsr
            bcc L3CB5
            lda #$00
            sta L04E7
            jmp L3A6E
L3CB5       lda L04F0
            beq L3CE1
            lda STICK0
            sta L04F1
            lda #$0F
            lsr L04F1
            bcs L3CC9
            and #$07
L3CC9       lsr L04F1
            bcs L3CD0
            and #$0B
L3CD0       lsr L04F1
            bcs L3CD7
            and #$0E
L3CD7       lsr L04F1
            bcs L3CDE
            and #$0D
L3CDE       sta STICK0
L3CE1       pla
            tay
            pla
            tax
            pla
            rti
L3CE7       ldx #$00
            stx L04B0
L3CEC       ldx L04B0
            lda L3D34,X
            beq L3D30
            sta AUDF1
            clc
            adc #$01
            sta AUDF2
            lda #$AF
            sta AUDC1
            sta AUDC2
            sta L04B1
L3D08       lda L04B1
            cmp #$A4
            beq L3D28
            dec L04B1
            lda L04B1
            sta AUDC1
            sta AUDC2
            ldx #$00
            ldy #$08
L3D1F       dex
            bne L3D1F
            dey
            bne L3D1F
            jmp L3D08
L3D28       ldx #$00
            inc L04B0
            jmp L3CEC
L3D30       jsr L3A08
            rts
L3D34       and ICSTAZ
            plp
            and L3C34+1
            pha
            .byte $32,$2F
            pha
            and NOCKSM,X
            pha
            eor (FMSZPG+5),Y
            eor (FKDEF),Y
            jmp (L9079)
            adc L7290,Y
            bcc L3DA8
            .byte $5B,$00
L3D4F       tax
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
L3DA8       plp
            asl
            .byte $80,$00,$00
            ldx #$88
            tax
            tay
L3DB1       lda #$45
            sta L00B0
            lda #$05
            sta L00B1
            ldx #$00
L3DBB       ldy #$00
L3DBD       lda L3D4F,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0E
            bne L3DBD
            cpx #$62
            beq L3DD2
            jsr L3A3A
            jmp L3DBB
L3DD2       rts
L3DD3       lda #$45
            sta L00B0
            lda #$05
            sta L00B1
            ldx #$00
L3DDD       ldy #$00
L3DDF       lda #$00
            sta (L00B0),Y
            inx
            iny
            cpy #$0E
            bne L3DDF
            cpx #$62
            beq L3DF3
            jsr L3A3A
            jmp L3DDD
L3DF3       rts
L3DF4       .byte $00
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
L3E3A       lda #$93
            sta L00B0
            lda #$1F
            sta L00B1
            ldx #$00
L3E44       ldy #$00
L3E46       lda L3DF4,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0A
            bne L3E46
            cpx #$46
            beq L3E5B
            jsr L3A3A
            jmp L3E44
L3E5B       rts
L3E5C       ldx #$00
L3E5E       lda L0480,X
            cmp L0440,X
            bcc L3E6D
            bne L3E6E
            inx
            cpx #$05
            bne L3E5E
L3E6D       rts
L3E6E       ldx #$00
L3E70       lda L0480,X
            sta L0440,X
            inx
            cpx #$05
            bne L3E70
            rts
L3E7C       jsr L3E3A
            ldx #$00
L3E81       lda L0440,X
            sta L0488
            lda #$82
            sta L00B0
            lda #$21
            sta L00B1
            jsr L374D
            inx
            cpx #$06
            bne L3E81
            rts
L3E98       jsr L37E0
            ldx #$00
L3E9D       jsr L3789
            inx
            cpx #$06
            bne L3E9D
            rts
L3EA6       jsr L3A08
            lda #$00
            sta L04E0
            sta L0407
            jsr L3CE7
            jsr hiscore
            jsr L3A2D
            lda #$40
            sta L046F
            lda #$31
            sta L0406
            jsr L248F
            jsr L361A
            jsr L3F86
L3ECD       jsr L38C0
            jsr L3881
            lda RANDOM
            and #$7F
            sta L0450
            sta L0451
            inc L0407
            inc L0406
            lda L0406
            cmp #$32
            bne L3EF1
            jsr L3E7C
            jsr L3DB1
L3EF1       cmp #$64
            bne L3F00
            lda #$00
            sta L0406
            jsr L3E98
            jsr L3DD3
L3F00       lda STRIG0
            bne L3F08
            jmp L3A6E
L3F08       lda L0407
            cmp #$05
            bne L3F1E
            lda #$00
            sta L0407
            lda RANDOM
            and #$F0
            ora #$08
            sta COLOR1
L3F1E       ldx #$00
            ldy #$19
L3F22       dex
            bne L3F22
            dey
            bne L3F22
            jmp L3ECD
L3F2B       ldy #$A0
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
L3F86       lda #$53
            sta L00B0
            lda #$20
            sta L00B1
            jsr L3FD0
            jsr L3FD0
            jsr L3FE8
            jsr L3FE8
            ldx #$00
L3F9C       ldy #$00
            lda #$28
            sta (L00B0),Y
            iny
L3FA3       lda L3F2B,X
            sta (L00B0),Y
            inx
            iny
            cpy #$0E
            bne L3FA3
            cpx #$5B
            beq L3FBC
            lda #$A0
            sta (L00B0),Y
            jsr L3A3A
            jmp L3F9C
L3FBC       lda #$A0
            sta (L00B0),Y
            jsr L3A3A
            jsr L3FE8
            jsr L3FE8
            jsr L3FD0
            jsr L3FD0
            rts
L3FD0       ldy #$00
            lda #$2A
            sta (L00B0),Y
            lda #$AA
            iny
L3FD9       sta (L00B0),Y
            iny
            cpy #$0E
            bne L3FD9
            lda #$A0
            sta (L00B0),Y
            jsr L3A3A
            rts
L3FE8       lda #$28
            ldy #$00
            sta (L00B0),Y
            lda #$A0
            ldy #$0E
            sta (L00B0),Y
            jsr L3A3A
            rts
            .byte $00,$00,$00,$00,$00,$00,$00,$00
;

        icl "hiscore.asm"
        
        org $02E0
        .word $2B00
        
