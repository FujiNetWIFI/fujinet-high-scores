; 
            icl 'Hot Lips.inc'
;
; Start of code
				;
	icl 'hiscore.asm'
	
            org $2000
;
L2000       lda #$01
            sta COLDST
            lda #$3F
            sta MEMLO+1
            lda #$42
            sta LOMEM
L200E       jmp L2160+1
L2011       .byte $00
L2012       .byte $00
L2013       .byte $00
L2014       php
            php
            php
            php
            .byte $07
L2019       .byte $07
            asl TRAMSZ
            asl RAMLO+1
            ora RAMLO+1
L2020       .byte $04,$04,$03,$03,$02,$02,$02,$02
L2028       .byte $02,$02,$02,$02,$02
L202D       .byte $04,$04,$03,$03,$03,$03,$03,$03,$02,$02,$02,$02,$02,$02,$02,$02
            .byte $02,$02,$02,$02
            ora (NGFLAG,X)
            ora (NGFLAG,X)
L2045       ora (L0000,X)
            .byte $04,$04
            asl TRAMSZ
            php
            php
            asl
            asl
            .byte $0C,$0C
            asl L100E
            bpl L2068
            .byte $12,$14
            asl DSKFMS,X
            .byte $1A,$1C
            asl L1E1E,X
L205F       iny
            ldy L00A0,X
            sty L6478
            .byte $5A
            bvc L20B8
L2068       lsr FMSZPG+3
            .byte $3C,$3C,$32
L206D       .byte $32
            plp
            plp
            asl L1E1E,X
            .byte $14,$14,$14,$14,$14
L2078       .byte $00
L2079       .byte $00
L207A       .byte $00
L207B       .byte $00
L207C       .byte $00
L207D       .byte $00
L207E       .byte $00
L207F       .byte $00,$00,$00,$00
L2083       .byte $00,$00,$00,$00
L2087       .byte $00,$00,$00,$00
L208B       .byte $00,$00,$00,$00
L208F       .byte $00,$00,$00,$00
L2093       .byte $00,$00,$00,$00
L2097       bpl L20A7+2
            bpl L20AA+1
L209B       bpl L20AD
            bpl L20AD+2
            bpl L20B0+1
L20A1       bpl L20B3
            bpl L20B5
L20A5       bpl L20C7
L20A7       jsr L2020
L20AA       jsr L1020
L20AD       jsr L200E+2
L20B0       bpl L20D1+1
L20B2       .byte $00
L20B3       .byte $00
L20B4       .byte $00
L20B5       .byte $00
L20B6       .byte $00
L20B7       .byte $00
L20B8       .byte $00
L20B9       .byte $00
L20BA       .byte $00
L20BB       .byte $00
L20BC       .byte $00
L20BD       .byte $00
L20BE       .byte $00
L20BF       .byte $00
L20C0       .byte $00
L20C1       rol.w L0000,X
L20C4       .byte $00
L20C5       stx ICHIDZ
L20C7       jsr L7320
            .byte $74
            adc FTYPE,X
            rol L773E,X
            sei
L20D1       adc L2020,Y
            jsr L2020
            jsr L3B3A
            .byte $3C,$5B,$5B,$5B,$6B
            jmp (L206D)
L20E2       jsr L2020
            jsr L6120
            .byte $62,$63
            jsr L2020
            .byte $64
            adc MLTTMP
            jsr L2020
            .byte $67
            pla
            adc #$6A
            ror
            ror
            jsr L2020
            .byte $72,$72,$72,$6F
            bvs L2173
L2102       .byte $73,$74
            adc DELTAR,X
            ror DELTAR,X
            jsr L2020
            .byte $7A,$7A,$7A,$77
            sei
            adc L3B3A,Y
            .byte $3C
            and L3D3B+2,X
            jsr L2020
            ror L6E6E
            .byte $6B
            jmp (L616D)
            .byte $62,$63
            jsr L2020
            jsr L2020
            jsr L2020
            .byte $64
            adc MLTTMP
L212F       dec ICHIDZ
            cmp ICHIDZ,X
            cpx ICHIDZ
            .byte $F3
            jsr L2102
            ora (ICDNOZ),Y
            jsr L1121
            and (CASINI,X)
            and (L00F3,X)
            jsr L20E2+2
            cmp ICHIDZ,X
L2147       .byte $00
L2148       .byte $00
L2149       .byte $54,$D4,$34,$44,$53,$43,$4F,$52
            eor FMSZPG+5
            eor #$47
            pha
L2156       jsr L311F+1
            eor TEMP,X
L215B       jsr L3220
            eor TEMP,X
L2160       jsr LE820
            .byte $2F
            lda #$2A
            sta L00BA
L2168       jsr L2791
            dec L00BA
            bpl L2168
            ldx #$10
            lda #$0C
L2173       sta IOCB0+ICCOM,X
            jsr CIOV
            lda #$00
            sta L2FED
            jsr L302C
            jsr L2670
            lda #$3E
            sta SDMCTL
            sta L20C1
            jsr L2314
            lda #$16
            sta COLOR0
            lda #$0C
            sta COLOR1
            lda #$44
            sta COLOR2
            lda #$86
            sta COLOR3
            sta L20C5
            lda #$10
            sta COLOR4
            jmp L2B01
L21AE       lda #$FF
            sta CH
            lda #$00
            sta L20C1
            jsr L27BD
            lda LOMEM
            beq L21E6
            jmp L21F0
L21C2       jsr L27BD
            lda #$00
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta HPOSM0
            sta HPOSM1
            sta HPOSM2
            sta HPOSM3
            lda #$0A
            sta L00BA
            sta L20C1
L21E6       jsr L2791
            dec L00BA
            bne L21E6
            jmp L2B01
L21F0       lda #$18
            sta CHBAS
            lda #$31
            sta GPRIOR
            lda #$00
            sta HITCLR
            sta CONSOL
            sta ATRACT
            sta L2790
            sta L20C4
            lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            sta L20B2
            lda #$04
            sta L20C1+1
            lda #$10
L221E       sta PMBASE
L2221       lda SAVMSC
            clc
            adc #$2D
            sta L00C4
L2228       lda SAVMSC+1
            adc #$01
            sta L00C5
            lda SAVMSC
            clc
            adc #$05
            sta L00D2
            lda SAVMSC+1
            adc #$01
            sta L00D3
            lda SAVMSC
            clc
            adc #$F0
            sta L00C6
            lda SAVMSC+1
            adc #$00
            sta L00C7
            jsr L2314
            jsr L23AB
            ldy #$00
L2250       lda #$10
            sta L2097,Y
            sta (L00C0),Y
            ldx L20B3
            beq L2261
            sta L209B+1,Y
            sta (L00C2),Y
L2261       iny
            cpy #$05
            bne L2250
            lda L20B3
            beq L2274
            lda #$00
            ldy #$04
L226F       sta (L00CE),Y
            dey
            bpl L226F
L2274       jsr L22C0
            jsr L29BE
            jsr L2791
            jsr L2791
L2280       jsr L250A
            lda #$00
            sta ATRACT
            jsr L2F46
            jsr L2C55
            jsr L243F
            jsr L27A0
            lda CONSOL
            and #$07
            cmp #$07
            bne L22A4
            lda #$00
            sta L2011
            jmp L2280
L22A4       ldx L2011
            beq L22AC
            jmp L2280
L22AC       sta L2011
            lda #$00
            sta L207A
            sta L207B
            sta L207C
            sta L207D
            jmp L21C2
L22C0       lda #$01
            sta L2790
            jsr L27CC
            lda #$C7
            sta L207E
            lda #$86
            sta L2079
            jsr L22FD
            lda #$0F
            sta L281A
            sta L281B
            lda L20B2
            asl
            tax
            ldy #$00
            sty L2790
L22E7       lda L20A5+1,X
            jsr L2718
            beq L22F1
            ora #$80
L22F1       sta (L00C6),Y
            inx
            iny
            cpy #$05
            bne L22E7
            sta HITCLR
            rts
L22FD       lda L2079
            sta HPOSM3
            clc
            adc #$02
            sta HPOSM2
            adc #$02
            sta HPOSM1
            adc #$02
            sta HPOSM0
            rts
L2314       lda #$07
            ldy #$2F
            ldx #$23
            jsr SETVBV
            rts
            lda #$07
            ldy LE463
            ldx LE464
            jsr SETVBV
            lda #$E0
            sta NMIEN
            rts
            lda L20C1
            bne L2337
            jsr L30D4
L2337       lda L2790
            beq L233F
            jmp L23A8
L233F       lda L20B6
            beq L2347
            dec L20B6
L2347       lda L20B7
            beq L234F
            dec L20B7
L234F       lda L20B8
            beq L2357
            dec L20B8
L2357       lda L20B9
            beq L235F
            dec L20B9
L235F       lda L20BA
            beq L2367
            dec L20BA
L2367       lda L20BB
            beq L236F
            dec L20BB
L236F       lda L20BC
            beq L2377
            dec L20BC
L2377       lda L20BD
            beq L237F
            dec L20BD
L237F       lda L20BE
            beq L2387
            dec L20BE
L2387       lda L20BF
            beq L238F
            dec L20BF
L238F       lda L20C0
            beq L2397
            dec L20C0
L2397       jsr L2870
            jsr L2D0F
            jsr L24D9
            lda L20C1
            beq L23A8
            jsr L34BD
L23A8       jmp XITVBV
L23AB       lda #$BB
            sta VDSLST
            lda #$23
            sta VDSLST+1
            lda #$E0
            sta NMIEN
            rts
            rti
L23BC       lda L20B3
            cmp #$02
            bne L23C6
            jmp L2423
L23C6       ldx #$03
L23C8       lda L2097,X
            cmp #$19
            bne L23DA
            lda #$10
            sta L2097,X
            dex
            bpl L23C8
            jmp L23DD
L23DA       inc L2097,X
L23DD       ldx #$00
            lda L20B3
            beq L23E7
            jmp L2405
L23E7       lda L2097,X
            cmp L209B+1,X
            beq L23F3
            bcc L2405
            bcs L23FA
L23F3       inx
            cpx #$05
            bne L23E7
            beq L2405
L23FA       lda L2097,X
            sta L209B+1,X
            inx
            cpx #$05
            bne L23FA
L2405       ldy #$00
L2407       lda L2097,Y
            sta (L00C0),Y
            iny
            cpy #$05
            bne L2407
            lda L20B3
            bne L2422
            ldy #$00
L2418       lda L209B+1,Y
            sta (L00C2),Y
            iny
            cpy #$05
            bne L2418
L2422       rts
L2423       ldx #$03
L2425       lda L209B+1,X
            cmp #$19
            bne L2437
            lda #$10
            sta L209B+1,X
            dex
            bpl L2425
            jmp L243A
L2437       inc L209B+1,X
L243A       ldy #$00
            jmp L2418
L243F       lda L20BA
            bne L2457
            lda L2458
            bne L245A
            lda #$01
            sta L2458
            ldx L2012
            lda L205F,X
            sta L20BA
L2457       rts
L2458       .byte $00
L2459       .byte $00
L245A       lda #$00
            sta L2458
            lda L20C4
            beq L2467
            jmp L24BA
L2467       lda RANDOM
            and #$0F
            cmp #$09
            bcs L2467
            tay
            lda L2A97,Y
            sta L00BA
            jsr L2AF2
            lda L2AA1,Y
            sta L00BB
            lda SAVMSC
            sta L00D0
            lda SAVMSC+1
            sta L00D1
L2486       dec L00BB
            beq L2498
            lda #$28
            clc
            adc L00D0
            sta L00D0
            bcc L2495
            inc L00D1
L2495       jmp L2486
L2498       lda L00BA
            clc
            adc L00D0
            sta L00D0
            bcc L24A3
            inc L00D1
L24A3       ldy #$00
            lda #$8B
            sta (L00D0),Y
            lda #$01
            sta L20C4
            ldx L2012
            lda L205F,X
            sta L20BA
            jmp L2457
L24BA       jsr L24C4
            lda #$54
            sta (L00D0),Y
            jmp L2457
L24C4       lda L20C4
            beq L24D8
            lda #$00
            ldy #$00
            sty L20C4
            sta (L00D0),Y
            sty L2458
            sty AUDC4
L24D8       rts
L24D9       lda L20C4
            beq L2509
            lda L2458
            beq L2509
            lda L20BA
            and #$07
            bne L2509
            lda #$3C
            sta AUDF4
            ldx #$00
            ldy #$AA
            lda L2459
            eor #$01
            sta L2459
            beq L2501
            ldx #$8B
            ldy #$00
L2501       sty AUDC4
            txa
            ldy #$00
            sta (L00D0),Y
L2509       rts
L250A       lda M0PL
            ora M1PL
            ora M2PL
            ora M3PL
            beq L251B
            jmp L25A9
L251B       lda M0PF
            ora M1PF
            ora M2PF
            ora M3PF
            bne L2564
            ldx #$00
L252B       lda L207A,X
            beq L2541
            lda P0PF,X
            and #$02
            beq L2541
            lda L207F,X
            cmp #$67
            bne L2541
            jmp L25E5
L2541       lda P0PL,X
            beq L2553
            stx L00BC
            inc L00BC
            cmp L00BC
            bcs L2553
            lda #$04
            sta L20B6,X
L2553       inx
            cpx #$04
            bcc L252B
            lda L20C1+1
            bne L2560
            jmp L2621
L2560       sta HITCLR
            rts
L2564       sta L00BA
            and #$02
            bne L258C
            lda L00BA
            and #$04
            bne L2596
            lda L00BA
            and #$08
            beq L2560
            lda L20C4
            bne L257E
            jmp L2560
L257E       lda #$40
            jsr L329B
            jsr L23BC
            jsr L24C4
            jmp L2560
L258C       lda L207E
            cmp #$67
            beq L25A9
            jmp L2560
L2596       lda L20BB
            beq L259E
            jmp L2560
L259E       lda #$05
            sta L20BC
            sta L20BB
            jmp L2560
L25A9       jsr L2666
            lda #$00
            sta AUDC4
            dec L20B2
            lda L20B2
            bpl L25BC
            jmp L34BE
L25BC       lda #$04
            jsr L329B
L25C1       lda CONSOL
            and #$07
            cmp #$07
            bne L25D4
            lda L2078
            and #$04
            bne L25C1
            jsr L2791
L25D4       jsr L22C0
            lda L20C1+2
            pha
            jsr L29BE
            pla
            sta L20C1+2
            jmp L2560
L25E5       lda #$00
            sta L207A,X
            sta HPOSP0,X
            jsr L2666
            dec L20C1+1
            lda #$10
            jsr L329B
            jsr L23BC
            jsr L23BC
            jsr L23BC
            jsr L23BC
            jsr L23BC
            lda L20C1+1
            cmp L20C1+2
            bcs L2619
            lda L20C1+2
            cmp #$01
            beq L2619
            dec L20C1+2
L2619       lda #$00
            sta L2790
            jmp L2560
L2621       jsr L24C4
            inc L2012
            jsr L27BD
            lda #$01
            jsr L329B
            jsr L2FAA
L2632       jsr L2791
            lda L2078
            and #$01
            bne L2632
            jsr L2791
            lda #$04
            sta L20C1+1
            jsr L22C0
            jsr L29BE
            jsr L2791
            jmp L2560
            lda #$01
            sta L2790
            lda #$19
            sta L00BA
L2659       jsr L2791
            dec L00BA
            bne L2659
            lda #$00
            sta L2790
            rts
L2666       lda #$01
            sta L2790
            jsr L279A
            rts
            .byte $00
L2670       lda SDLSTL
            sta L00BA
            lda SDLSTH
            sta L00BB
            ldy #$03
            lda #$44
            sta (L00BA),Y
            ldy #$06
            lda #$04
L2684       sta (L00BA),Y
            iny
            cpy #$1D
            bcc L2684
            lda #$00
            sta SDMCTL
            lda #$00
            sta L0082
            sta L0084
            lda #$36
            sta L0083
            lda #$18
            sta L0085
            ldx #$05
            jsr L274B
            lda #$18
            sta CHBAS
            lda #$80
            sta L0082
            lda #$3A
            sta L0083
            lda SAVMSC
            sta L0084
            lda SAVMSC+1
            sta L0085
            ldx #$04
            jsr L274B
            jmp L26C2
            .byte $4B,$27
L26C2       jsr L26FC
            lda #$03
            sta SSKCTL
            sta SKCTL
            lda #$00
            sta AUDCTL
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            lda #$A0
            clc
            adc SAVMSC
            sta L00C0
            lda #$00
            adc SAVMSC+1
            sta L00C1
            lda #$D0
            clc
            adc SAVMSC
            sta L00C2
            lda #$02
            adc SAVMSC+1
            sta L00C3
            jsr L2405
            rts
L26FC       lda SAVMSC
            sta L00BA
            lda SAVMSC+1
            sta L00BB
            ldx #$08
L2706       ldy #$00
L2708       lda (L00BA),Y
            jsr L2718
            sta (L00BA),Y
            iny
            bne L2708
            inc L00BB
            dex
            bne L2706
            rts
L2718       cmp #$20
            bcs L271F
            ora #$40
            rts
L271F       cmp #$40
            bcs L2726
            and #$1F
            rts
L2726       cmp #$60
            bcs L272F
            and #$1F
            ora #$20
            rts
L272F       cmp #$80
            bcs L2734
            rts
L2734       cmp #$A0
            bcs L273B
            ora #$40
            rts
L273B       cmp #$C0
            bcs L2742
            and #$9F
            rts
L2742       cmp #$E0
            bcs L274A
            and #$BF
            ora #$20
L274A       rts
L274B       ldy #$00
L274D       lda (L0082),Y
            sta (L0084),Y
            iny
            bne L274D
            inc L0083
            inc L0085
L2758       dex
            bne L274B
            rts
            .byte $03,$03
            bmi L277D
            dec L277E
            beq L277D
            inc DAUX1
            bne L276D
            inc DAUX2
L276D       lda #$80
            clc
            adc DBUFLO
            sta DBUFLO
            bcc L2758
            inc DBUFHI
            bcs L2758
L277D       rts
L277E       .byte $00
L277F       sta L278F
            ldy #$00
L2784       lda (L00B0),Y
            sta (L00B2),Y
            iny
            cpy L278F
            bne L2784
            rts
L278F       .byte $00
L2790       .byte $00
L2791       ldy #$32
L2793       jsr L279A
            dey
            bne L2793
            rts
L279A       ldx #$00
L279C       dex
            bne L279C
            rts
L27A0       lda #$FF
            cmp CH
            beq L27B9
            sta CH
            sta L2790
L27AD       cmp CH
            beq L27AD
            lda #$00
            sta L2790
            lda #$FF
L27B9       sta CH
            rts
L27BD       lda #$00
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            rts
L27CC       ldx #$00
            ldy #$13
            jmp L27EC
            ldx #$00
            ldy #$14
            jmp L27EC
            ldx #$00
            ldy #$15
            jmp L27EC
            ldx #$00
            ldy #$16
            jmp L27EC
            ldx #$00
            ldy #$17
L27EC       stx L00B0
            stx L00B2
            sty L00B1
            sty L00B3
            inc L00B2
            lda #$00
            tay
            sta (L00B0),Y
            lda #$FF
            jsr L277F
            rts
            lda #$03
L2803       ldy L20B4
            ldx L20B5
            jsr SETVBV
            lda #$E0
            sta NMIEN
            lda VCOUNT
L2814       cmp VCOUNT
            beq L2814
            rts
L281A       .byte $00
L281B       .byte $00
L281C       .byte $00
L281D       .byte $00,$00
L281F       lsr COLCRS+1
            ror DELTAR
            stx L0096
            ldx L00B6
            dec L0000
L2829       .byte $27,$47,$67,$87,$A7,$C7,$00
L2830       sec
L2831       plp
            lsr ICBLLZ
            .byte $54
            plp
            .byte $62
            plp
L2838       .byte $00,$00
            clc
            .byte $3C,$5A,$5A
            ror L665A,X
            .byte $3C
            clc
            .byte $00,$00,$00,$00,$00
            clc
            .byte $3C,$7A,$5A
            ror L665A,X
            .byte $3C
            clc
            .byte $00,$00,$00,$00,$00
            clc
            .byte $3C,$5A,$5A
            ror L6666,X
            .byte $3C
            clc
            .byte $00,$00,$00,$00,$00
            clc
            .byte $3C
            lsr L7E5A,X
            .byte $5A
            ror NOCKSM
            clc
            .byte $00,$00,$00
L2870       lda L20C1
            bne L287A
            lda L20BC
            beq L287B
L287A       rts
L287B       lda L20C0
            bne L289F
            lda #$19
            sta L20C0
            inc L281D
            lda L20C5
            eor #$02
            sta L20C5
            sta COLOR3
            lda L281D
            cmp #$04
            bcc L289F
            lda #$00
            sta L281D
L289F       lda TRIG0
            bne L28AA
            jsr L2901
            jmp L287A
L28AA       lda STICK0
            sta L281A
            jsr L28D4
            lda L281C
            beq L28C1
            lda L281A
            sta L281B
            jmp L287A
L28C1       lda L281B
            cmp #$0F
            bne L28CB
            jmp L287A
L28CB       sta L281A
            jsr L28D4
            jmp L287A
L28D4       lda #$00
            sta L281C
            lda L281A
            and #$01
            bne L28E3
            jsr L294A
L28E3       lda L281A
            and #$02
            bne L28ED
            jsr L2925
L28ED       lda L281A
            and #$04
            bne L28F7
            jsr L2985
L28F7       lda L281A
            and #$08
            bne L2901
            jsr L296F
L2901       lda L281D
            asl
            tax
            lda L2830,X
            sta L00B4
            lda L2831,X
            sta L00B5
            lsr
            ldy #$00
            ldx L207E
L2916       lda (L00B4),Y
            sta L1300,X
            inx
            iny
            cpy #$0D
            bne L2916
            jsr L22FD
            rts
L2925       lda L207E
            cmp #$C7
            beq L2949
            cmp #$47
            bcc L293B
            cmp #$87
            bcs L293B
            lda L2079
            cmp #$86
            beq L2949
L293B       jsr L299B
            beq L2949
            inc L207E
            lda L281A
            sta L281C
L2949       rts
L294A       lda L207E
            cmp #$27
            beq L296E
            cmp #$67
            bcc L2960
            cmp #$88
            bcs L2960
            lda L2079
            cmp #$86
            beq L296E
L2960       jsr L299B
            beq L296E
            dec L207E
            lda L281A
            sta L281C
L296E       rts
L296F       lda L2079
            cmp #$C6
            beq L2984
            jsr L29AB
            beq L2984
            inc L2079
            lda L281A
            sta L281C
L2984       rts
L2985       lda L2079
            cmp #$46
            beq L299A
            jsr L29AB
            beq L299A
            dec L2079
            lda L281A
            sta L281C
L299A       rts
L299B       ldx #$00
L299D       lda L281F,X
            bne L29A3
            rts
L29A3       cmp L2079
            beq L29BB
            inx
            bne L299D
L29AB       ldx #$00
L29AD       lda L2829,X
            bne L29B3
            rts
L29B3       cmp L207E
            beq L29BB
            inx
            bne L29AD
L29BB       lda #$01
            rts
L29BE       lda #$01
            sta L2790
            jsr L2791
            lda #$00
            tax
L29C9       sta L1400,X
            sta L1500,X
            sta L1600,X
            sta L1700,X
            inx
            bne L29C9
L29D8       sta L2083,X
            sta L2087,X
            sta L208B,X
            sta L208F,X
            sta L2093,X
            sta L207A,X
            sta HPOSP0,X
            inx
            cpx #$04
            bne L29D8
            ldx #$00
L29F4       lda RANDOM
            and #$0F
            cmp #$08
            bcs L29F4
            tay
            lda L281F,Y
            sta L207A,X
            jsr L2AF2
            lda L2829,Y
            sta L207F,X
            lda L2149,X
            sta PCOLR0,X
            txa
            clc
            adc #$0A
            sta L20B6,X
            inx
            cpx L20C1+1
            bcs L2A23
L2A20       jmp L29F4
L2A23       ldx L2012
            lda L2014,X
            sta L2148
            lda L202D,X
            sta L20C1+2
            jsr L2AA8
            ldx L2012
            lda L2045+1,X
            bne L2A40
            jmp L2A7E
L2A40       tax
L2A41       lda RANDOM
            and #$0F
            cmp #$09
            bcs L2A41
            tay
            lda L2A97,Y
            sta L00BA
            jsr L2AF2
            lda L2AA1,Y
            sta L00BB
            lda SAVMSC
            sta L00BC
            lda SAVMSC+1
            sta L00BD
L2A60       dec L00BB
            beq L2A72
            lda #$28
            clc
            adc L00BC
            sta L00BC
            bcc L2A6F
            inc L00BD
L2A6F       jmp L2A60
L2A72       lda #$54
            ldy L00BA
            sta (L00BC),Y
            dex
            beq L2A7E
            jmp L2A41
L2A7E       lda #$02
            sta L2078
            lda #$00
            sta L2790
            sta L20C4
            lda #$FF
            sta L20BA
            sta L34B8
            sta L34BA
            rts
L2A97       asl DOSVEC
            asl L1612
            .byte $1A
            asl L2621+1,X
            .byte $FF
L2AA1       .byte $02
            asl DOSVEC
            asl LFF12
L2AA7       .byte $00
L2AA8       lda #$00
            sta L2AA7
            lda SAVMSC
            sta L00BC
            lda SAVMSC+1
            sta L00BD
            ldx L2AA1
            dex
            stx L00BA
            lda #$05
            sta L00BB
L2ABF       lda #$28
            clc
            adc L00BC
            sta L00BC
            bcc L2ACA
            inc L00BD
L2ACA       dec L00BA
            bne L2ABF
            ldx #$00
L2AD0       lda L2A97,X
            cmp #$28
            bcs L2AE1
            tay
            lda L2AA7
            sta (L00BC),Y
            inx
            jmp L2AD0
L2AE1       lda #$00
            sta L2AA7
            dec L00BB
            bne L2AEB
            rts
L2AEB       lda #$04
            sta L00BA
            jmp L2ABF
L2AF2       lda RANDOM
            and #$07
            cmp #$02
            beq L2AF2
            cmp #$05
            bcs L2AF2
            tay
            rts
L2B01       lda SAVMSC
            clc
            adc #$50
            sta L00CC
            lda SAVMSC+1
            adc #$00
            sta L00CD
            lda SAVMSC
            clc
            adc #$80
            sta L00CE
            lda SAVMSC+1
            adc #$02
            sta L00CF
            lda SAVMSC
            clc
            adc #$90
            sta L00C8
            lda SAVMSC+1
            adc #$01
            sta L00C9
            lda SAVMSC
            clc
            adc #$20
            sta L00CA
            lda SAVMSC+1
            adc #$03
            sta L00CB
            jsr L2C23
            lda L2013
            sta L2012
            jsr L2FAA
L2B41       lda TRIG0
            beq L2B57
            lda CONSOL
            and #$07
            cmp #$07
            bne L2B57
            lda #$00
            sta L2011
            jmp L2B41
L2B57       ldx L2011
            bne L2B41
            ldx #$01
            stx L2011
            ldx TRIG0
            bne L2B69
            jmp L21AE
L2B69       cmp #$03
            bne L2B70
            jmp L2B99
L2B70       cmp #$05
            beq L2B7E
            cmp #$06
            bne L2B7B
            jmp L21AE
L2B7B       jmp L2B41
L2B7E       inc L2012
            inc L2013
            lda L2012
            cmp #$05
            bcc L2B93
            jsr L2C23
            lda #$00
            sta L2013
L2B93       jsr L2FAA
            jmp L2B41
L2B99       lda L20B3
            bne L2BA1
            jmp L2BCC
L2BA1       lda #$4D
            sta L00BA
            lda #$21
            sta L00BB
            jsr L2C05
            lda #$52
            sta L00BA
            lda #$21
            sta L00BB
            jsr L2C14
            ldy #$00
            sty L20B3
L2BBC       lda L20A1,Y
            sta L209B+1,Y
            sta (L00C2),Y
            iny
            cpy #$05
            bne L2BBC
            jmp L2B41
L2BCC       lda #$57
            sta L00BA
            lda #$21
            sta L00BB
            jsr L2C05
            lda #$5C
            sta L00BA
            lda #$21
            sta L00BB
            jsr L2C14
            ldx #$00
L2BE4       lda L209B+1,X
            sta L20A1,X
            inx
            cpx #$05
            bne L2BE4
            ldy #$00
            lda #$10
L2BF3       sta L209B+1,Y
            sta (L00C2),Y
            iny
            cpy #$05
            bne L2BF3
            lda #$01
            sta L20B3
            jmp L2B41
L2C05       ldy #$00
L2C07       lda (L00BA),Y
            jsr L2718
            sta (L00CC),Y
            iny
            cpy #$05
            bne L2C07
            rts
L2C14       ldy #$00
L2C16       lda (L00BA),Y
            jsr L2718
            sta (L00CE),Y
            iny
            cpy #$05
            bne L2C16
            rts
L2C23       lda #$00
            sta L2012
            tay
L2C29       sta (L00C8),Y
            iny
            cpy #$05
            bne L2C29
            ldy #$28
L2C32       sta (L00C8),Y
            iny
            cpy #$2D
L2C37       bne L2C32
            ldy #$50
L2C3B       sta (L00C8),Y
            iny
            cpy #$55
            bne L2C3B
            ldy #$78
L2C44       sta (L00C8),Y
            iny
            cpy #$7D
            bne L2C44
            ldy #$A0
L2C4D       sta (L00C8),Y
            iny
            cpy #$A5
            bne L2C4D
            rts
L2C55       ldx #$00
            stx L2D0E
L2C5A       lda L207A,X
            beq L2C6A
            lda L2093,X
            bne L2C6A
            jsr L2C9D
            jmp L2C9C
L2C6A       inc L2D0E
            ldx L2D0E
            cpx #$04
            bcc L2C5A
            lda L2079
            cmp #$74
            bcc L2C8E
            cmp #$98
            bcs L2C92
            lda L207E
            cmp #$67
            bcs L2C8A
            lda #$86
            bne L2C94
L2C8A       lda #$84
            bne L2C94
L2C8E       lda #$83
            bne L2C94
L2C92       lda #$85
L2C94       ldy #$00
            sta (L00D2),Y
            ldy #$02
            sta (L00D2),Y
L2C9C       rts
L2C9D       lda L207A,X
            sec
            sbc L2079
            bcs L2CAD
            lda L2079
            sec
            sbc L207A,X
L2CAD       sta L00BC
            lda L207F,X
            sec
            sbc L207E
            bcs L2CBF
            lda L207E
            sec
            sbc L207F,X
L2CBF       sta L00BD
            cmp L00BC
            bcs L2CDF
L2CC5       lda #$00
            sta L208F,X
            lda #$01
            sta L208B,X
            lda L2079
            cmp L207A,X
            bcs L2D08
            lda #$FF
            sta L208B,X
            jmp L2D08
L2CDF       lda L207A,X
            cmp #$86
            bne L2CF1
            lda L207F,X
            cmp #$47
            beq L2CC5
            cmp #$87
            beq L2CC5
L2CF1       lda #$00
            sta L208B,X
            lda #$01
            sta L208F,X
            lda L207E
            cmp L207F,X
            bcs L2D08
            lda #$FF
            sta L208F,X
L2D08       lda #$01
            sta L2093,X
            rts
L2D0E       .byte $00
L2D0F       ldx #$FF
            stx L2ECD
L2D14       inc L2ECD
            ldx L2ECD
            cpx #$04
            bcc L2D1F
            rts
L2D1F       lda L207A,X
            beq L2D14
            lda L20B6,X
            bne L2D14
            lda L2093,X
            bne L2D31
            jmp L2D99
L2D31       lda L208B,X
            bne L2D41
            lda L208F,X
            beq L2D3E
            jmp L2D64
L2D3E       jmp L2D14
L2D41       ldy #$00
L2D43       lda L2829,Y
            beq L2D5C
            cmp L207F,X
            beq L2D50
            iny
            bne L2D43
L2D50       lda L208B,X
            sta L2083,X
            lda L208F,X
            sta L2087,X
L2D5C       lda #$00
            sta L2093,X
            jmp L2D99
L2D64       ldy #$00
            lda L207A,X
            cmp #$86
            bne L2D8C
            lda L207F,X
            cmp #$67
            beq L2D5C
            cmp #$47
            bne L2D81
            lda L208F,X
            cmp #$01
            beq L2D5C
            bne L2D8C
L2D81       cmp #$87
            bne L2D8C
            lda L208F,X
            cmp #$FF
            beq L2D5C
L2D8C       lda L281F,Y
            beq L2D5C
            cmp L207A,X
            beq L2D50
            iny
            bne L2D8C
L2D99       lda L20C1+2
            cmp #$01
            bne L2DAC
            lda L2E49
            eor #$01
            sta L2E49
            bne L2DAC
            lda #$02
L2DAC       sta L20B6,X
            lda L207F,X
            sta L2ECC
            txa
            asl
            tay
            lda L2E4A,Y
            sta L00B6
            lda L2E4B,Y
            sta L00B7
            lda L207A,X
            clc
            adc L2083,X
            sta L207A,X
            sta HPOSP0,X
            cmp #$86
            bne L2DEA
            lda L2087,X
            beq L2DEA
            bmi L2DE3
            lda L207F,X
            cmp #$47
            beq L2DF7
            bne L2DEA
L2DE3       lda L207F,X
            cmp #$87
            beq L2DF7
L2DEA       lda L207F,X
            clc
            adc L2087,X
            sta L207F,X
            sta L2ECC
L2DF7       lda L20BE
            bne L2E04
            lda #$02
            sta L20BE
            inc L2E52
L2E04       lda L2E52
            cmp #$08
            bcc L2E10
            lda #$00
            sta L2E52
L2E10       asl
            tay
            lda L2E53,Y
            sta L00B8
            lda L2E54,Y
            sta L00B9
            lda L2087,X
            bne L2E2B
            lda L2ECE,Y
            sta L00B8
            lda L2ECE+1,Y
            sta L00B9
L2E2B       ldy #$00
            sty L2ECB
L2E30       ldy L2ECB
            cpy #$0D
            bne L2E3A
            jmp L2D14
L2E3A       lda (L00B8),Y
            ldy L2ECC
            sta (L00B6),Y
            inc L2ECC
            inc L2ECB
            bne L2E30
L2E49       .byte $00
L2E4A       .byte $00
L2E4B       .byte $14,$00
            ora L0000,X
            asl L0000,X
            .byte $17
L2E52       .byte $00
L2E53       .byte $63
L2E54       rol L2E6E+2
            adc L8A2E,X
            rol L2E97
            ldy ICAX5Z
            lda (ICAX5Z),Y
            ldx.w ICAX5Z,Y
            plp
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L2838)
L2E6E       jmp (L0000)
            plp
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L2838)
            jmp (L0000)
            .byte $44
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L2C37+1)
            rts
            .byte $00,$00,$44
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L2C37+1)
            rts
            .byte $00
L2E97       .byte $00,$00
            jmp (L5438)
            .byte $54,$7C,$44
            jmp (L2838)
            jmp (L0000)
            .byte $00
            jmp (L5438)
            .byte $54,$7C,$44
            jmp (L2838)
            jmp (L0000)
            .byte $44
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L6838)
            .byte $0C,$00,$00,$44
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L6838)
            .byte $0C,$00
L2ECB       .byte $00
L2ECC       .byte $00
L2ECD       .byte $04
L2ECE       dec LEB2E,X
            rol L2EF6+2
            ora ICAX6Z
            .byte $12,$2F,$1F,$2F
            bit L392F
            .byte $2F,$00
            plp
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L2838)
            jmp (L0000)
            .byte $44
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L2838)
L2EF6       jmp (L0000)
            .byte $00
            jmp (L5438)
            .byte $54,$7C,$44
            jmp (L5038)
            cld
            .byte $00,$00,$44
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L5038)
            cld
            .byte $00,$00
            plp
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L2838)
            jmp (L0000)
            .byte $44
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L2838)
            jmp (L0000)
            .byte $00
            jmp (L5438)
            .byte $54,$7C,$44
            jmp (L1438)
            rol L0000,X
            .byte $00,$44
            plp
            sec
            .byte $54,$54,$7C,$44
            jmp (L1438)
            rol L0000,X
L2F46       lda L20BD
            beq L2F4C
            rts
L2F4C       inc L2147
            lda L2147
            cmp #$0C
            bcc L2F5B
            lda #$00
            sta L2147
L2F5B       asl
            tax
            lda L212F,X
            sta L00BA
            lda L212F+1,X
            sta L00BB
            lda L00C4
            sta L00BC
            lda L00C5
            sta L00BD
            ldx #$05
L2F71       ldy #$00
            lda (L00BA),Y
            jsr L2718
            sta (L00BC),Y
            iny
            lda (L00BA),Y
            jsr L2718
            sta (L00BC),Y
            iny
            lda (L00BA),Y
            jsr L2718
            sta (L00BC),Y
            lda L00BC
            clc
            adc #$28
            sta L00BC
            bcc L2F95
            inc L00BD
L2F95       lda L00BA
            clc
            adc #$03
            sta L00BA
            bcc L2FA0
            inc L00BB
L2FA0       dex
            bne L2F71
            lda L2148
            sta L20BD
            rts
L2FAA       ldx L2012
            inx
            txa
            asl
            asl
            asl
            asl
            sta COLOR4
            lda #$05
            sta L2FE6
            ldy #$00
            ldx #$00
L2FBF       lda #$7B
            sta (L00C8),Y
            cpx L2012
            beq L2FE6+1
            iny
            inx
            cpx L2FE6
            beq L2FD2
            jmp L2FBF
L2FD2       tya
            sec
            sbc #$05
            clc
            adc #$28
            tay
            lda #$05
            clc
            adc L2FE6
            sta L2FE6
            jmp L2FBF
L2FE6       ora FKDEF
            jmp L3053
            .byte $53,$3A
L2FED       .byte $00
            jsr L4F48
            .byte $54
            jsr L494C
            bvc L3048+2
            jsr L629B
            adc L2020,Y
            .byte $67,$72
            adc MLTTMP+1
            jsr L6F79
            adc BITMSK,X
            .byte $67,$9B,$43,$4F
            bvc L3065
            .byte $52
            eor #$47
            pha
            .byte $54
            jsr L4328
            and #$20
            and (RECVDN),Y
            sec
L3019       .byte $32,$9B
            jmp (L6E6F)
            .byte $64,$6F
            ror L2020
            .byte $73,$6F
            ror ENDPT
            .byte $77
            adc (COLAC,X)
            adc L009B
L302C       ldx #$10
            lda #$03
            sta IOCB0+ICCOM,X
            lda #$EB
            sta IOCB0+ICBAL,X
            lda #$2F
            sta IOCB0+ICBAH,X
            lda #$08
            sta IOCB0+ICAX1,X
            lda L2FED
            sta IOCB0+ICAX2,X
L3048       jsr L30CC
            lda #$00
            sta IOCB0+ICBLH,X
            sta COLCRS+1
            rts
L3053       lda #$01
            sta L2FED
            jsr L302C
            lda SDLSTL
            sta L00BA
            lda SDLSTH
            sta L00BB
L3065       ldy #$08
            lda #$07
            sta (L00BA),Y
            lda #$EE
            sta IOCB0+ICBAL,X
            lda #$2F
            sta IOCB0+ICBAH,X
            lda #$03
            sta ROWCRS
            lda #$05
            sta COLCRS
            jsr L30C0
            lda #$F9
            sta IOCB0+ICBAL,X
            lda #$2F
            sta IOCB0+ICBAH,X
            lda #$06
            sta ROWCRS
            lda #$03
            sta COLCRS
            jsr L30C0
            lda #$08
            sta IOCB0+ICBAL,X
            lda #$30
            sta IOCB0+ICBAH,X
            lda #$0F
            sta ROWCRS
            lda #$01
            sta COLCRS
            jsr L30C0
            lda #$1B
            sta IOCB0+ICBAL,X
            lda #$30
            sta IOCB0+ICBAH,X
            lda #$11
            sta ROWCRS
            lda #$02
            sta COLCRS
            jsr L30C0
            rts
L30C0       ldx #$10
            lda #$26
            sta IOCB0+ICBLL,X
            lda #$09
            sta IOCB0+ICCOM,X
L30CC       ldx #$10
            jsr CIOV
            ldx #$10
            rts
L30D4       inc L34B8
            inc L34BA
            inc L34BC
            lda L2078
            bne L30E3
            rts
L30E3       cmp #$04
            bne L30EA
            jmp L310E
L30EA       cmp #$02
            bne L30F1
            jmp L31C4
L30F1       cmp #$40
            bne L30F8
            jmp L3179
L30F8       cmp #$10
            bne L30FF
            jmp L312E
L30FF       cmp #$01
            bne L3106
            jmp L3159
L3106       cmp #$20
            bne L310D
            jmp L31A4
L310D       rts
L310E       lda L34BC
            cmp L34B9
            bcs L3117
            rts
L3117       lda #$4F
            sta L00B4
            lda #$33
            sta L00B5
L311F       lda #$B5
            sta L00B6
            lda #$34
            sta L00B7
            jsr L323D
            inc L34B5
            rts
L312E       lda L34BC
            cmp L34B9
            bcs L3137
            rts
L3137       lda #$04
            sta L00B4
            lda #$33
            sta L00B5
            lda #$B4
            sta L00B6
            lda #$34
            sta L00B7
            jsr L323D
            inc L34B4
            lda L34B4
            beq L3153
            rts
L3153       lda #$02
            sta L2078
            rts
L3159       lda L34BC
            cmp L34B9
            bcs L3162
            rts
L3162       lda #$8B
            sta L00B4
            lda #$33
            sta L00B5
            lda #$B1
            sta L00B6
            lda #$34
            sta L00B7
            jsr L323D
            inc L34B1
            rts
L3179       lda L34BC
            cmp L34B9
            bcs L3182
            rts
L3182       lda #$EE
            sta L00B4
            lda #$33
            sta L00B5
            lda #$B6
            sta L00B6
            lda #$34
            sta L00B7
            jsr L323D
            inc L34B6
            lda L34B6
            beq L319E
            rts
L319E       lda #$02
            sta L2078
            rts
L31A4       lda L34BC
            cmp L34B9
            bcs L31AD
            rts
L31AD       lda #$06
            sta L00B4
            lda #$34
            sta L00B5
            lda #$B7
            sta L00B6
            lda #$34
            sta L00B7
            jsr L323D
            inc L34B7
            rts
L31C4       lda L34B2
            asl
            clc
            adc L34B2
            tax
            lda L34B8
            cmp L32C3+1,X
            bcs L31D8
            jmp L31F9
L31D8       lda L32C3,X
            cmp #$FF
            bne L31EA
            lda #$00
            sta L34B2
            tax
            lda #$FF
            sta L34B8
L31EA       lda L32C2,X
            sta AUDF1
            lda L32C3,X
            sta AUDC1
            inc L34B2
L31F9       lda L34BA
            cmp L34BB
            bcs L3202
            rts
L3202       lda L34B3
L3205       asl
            clc
            adc L34B3
            tax
            lda L32D2,X
            cmp #$FF
            bne L3220
            lda #$00
            sta L34B3
            sta L34BB
            tax
            lda #$FF
            sta L34BA
L3220       lda L32D1,X
            sta AUDF2
            lda L32D2,X
            sta AUDC2
            lda L32D3,X
            clc
            adc L20C1+1
            adc L34BB
            sta L34BB
            inc L34B3
            rts
L323D       lda L34BC
            cmp L34B9
            bcs L325A
            rts
L3246       lda #$00
            tay
            sta AUDC1
            sta AUDC2
            sta L34B9
            sta L2078
            lda #$FF
            sta (L00B6),Y
            rts
L325A       ldy #$00
            sty L329A
            lda (L00B6),Y
            asl
            clc
            adc (L00B6),Y
            tay
            lda (L00B4),Y
            sta AUDF1
            lda L2078
            and #$24
            beq L327D
            lda #$04
            sta L329A
            clc
            adc (L00B4),Y
            sta AUDF2
L327D       iny
            lda (L00B4),Y
            cmp #$FF
            beq L3246
            sta AUDC1
            ldx L329A
            beq L328F
            sta AUDC2
L328F       iny
            lda (L00B4),Y
            clc
            adc L34B9
            sta L34B9
            rts
L329A       .byte $00
L329B       ldy #$00
            sty L34BC
            sty L34B9
            sty AUDC1
            sty AUDC2
            sty AUDC3
            sty AUDC4
            sty L34B5
            sty L34B4
            sty L34B1
            sty L34B6
            sty L34B7
            sta L2078
            rts
L32C2       .byte $14
L32C3       sty.w NGFLAG
            .byte $00,$00,$0C
            sty.w NGFLAG
            .byte $00,$03,$FF,$FF,$02
L32D1       .byte $1F
L32D2       iny
L32D3       ora (L0000,X)
            .byte $00,$03
            rol
            iny
            ora (L0000,X)
            .byte $00,$03
            and L00C8
            ora (L0000,X)
            .byte $00,$03,$33
            iny
            ora (L0000,X)
            .byte $00,$03,$3F
            iny
            ora (L0000,X)
            .byte $00,$03
            and L01C8,Y
            .byte $00,$00,$03,$37
            iny
            ora (L0000,X)
            .byte $00,$03,$33
            iny
            ora (L0000,X)
            .byte $00,$03,$FF,$FF
            ora (ADRESS,X)
            .byte $AF,$00
            ror.w L00AF
            sei
            .byte $AF,$00,$82,$AF,$00
            sty.w L00AF
            stx L00AF,Y
            .byte $00
            ldy #$AF
            .byte $00
            tax
            .byte $AF,$00
            ldy L00AF,X
            .byte $00
            ldx.w L00AF,Y
            iny
            .byte $AF,$00
            iny
            ldx LC201
            ldx LBC01
            ldx LB601
            lda LB001
            lda LAA01
            lda LA401
            ldy L9E01
            ldy L9801
            .byte $AB
            ora (L0092,X)
            .byte $AB
            ora (L008C,X)
            tax
            ora (L0086,X)
            tax
            ora (LOMEM,X)
            lda #$01
            .byte $FF,$FF
            ora (HOLD1,X)
            tax
            .byte $0F,$00,$00,$0F
            rts
            tax
            .byte $0F,$00,$00,$0F
            eor (L00AA),Y
            .byte $0F,$00,$00,$0F
            rts
            tax
            .byte $0F,$00,$00,$0F
            eor (L00AA),Y
            .byte $03,$00,$00
            asl
            eor (L00AA),Y
            .byte $03,$00,$00
            asl
            rts
            tax
            .byte $03,$00,$00
            asl
            pha
            tax
            .byte $03,$00,$00
            asl
            eor (L00AA),Y
            .byte $0C,$00,$00,$0C
            rts
            tax
            ora LFFFF,Y
            .byte $00
            iny
            ldy LB405
            ldy LBE03
            ldy LAA05
            ldy LB403
            ldy LA005
            ldy LAA03
            ldy L9605
            ldy LA003
            ldy L8C05
            ldy L9603
            ldy L8205
            ldy L8C03
            ldy L7805
            ldy L8203
            ldy L6E05
            ldy L7803
            ldy L6405
            ldy L6E03
            ldy L5A05
            ldy L6403
            ldy L5005
            ldy L5A03
            ldy L4605
            ldy L5003
            ldy L3C04+1
            ldy L4603
            ldy L3205
L33DD       ldy L3C01+2
            ldy L2803+2
            ldy L3202+1
            ldy L3C04+1
            ldy LFF0A
            .byte $FF
            ora (BFENHI,X)
            ldy L4008
            ldy L4804
            ldy L4008
            ldy L3503+1
            ldy L4808
            ldy L5104
            ldy LFF10
            .byte $FF
            ora (L00A2,X)
            ldy.w APPMHI+1
            .byte $00,$0F
            cmp (L00AC,X)
            .byte $0F,$00,$00,$0F
            ldx #$AC
            .byte $0F,$00,$00,$0F
            cmp (L00AC,X)
            .byte $0F,$00,$00,$0F
            ldx #$AC
            .byte $03,$00,$00
            asl
            ldx #$AC
            .byte $03,$00,$00
            asl
            cmp (L00AC,X)
            .byte $03,$00,$00
L342F       asl
            bcc L33DD+1
            .byte $03,$00,$00
            asl
            ldx #$AC
            .byte $0C,$00,$00,$0C
            cmp (L00AC,X)
            .byte $0F,$C2
            ldy LC302
            ldy LC402
            ldy LC502
            ldy LC602
            ldy LC702
            ldy LC802
            ldy LCA02
            ldy LCC02
            ldy LCE02
            ldy M2PF
            ldy POT2
            ldy DLISTL
            ldy LD602
            ldy LD802
            tax
            .byte $02,$DA
            tax
            .byte $02,$DC
            lda #$02
            dec TABMAP+6,X
            cpx #$A8
            .byte $02,$E2
            tay
            .byte $02
            cpx L00A7
            .byte $02
            inc L00A7
            .byte $02
            nop
            ldx CASINI
            inc TABMAP+2
            .byte $F2
            ldy CASINI
            inc L00A3,X
            .byte $02,$FA
            ldx #$08
            .byte $64,$8F
            ora (BITMSK,X)
            .byte $8F
            ora (DELTAC+1,X)
            stx L8201
            stx L9101
            sty LA001
            txa
            ora (L00B4,X)
            dey
            ora (L00C8,X)
            stx NGFLAG
            .byte $DC
            sty NGFLAG
            beq L342F
            ora (L00FF,X)
            .byte $FF,$00
L34B1       .byte $00
L34B2       .byte $00
L34B3       .byte $00
L34B4       .byte $00
L34B5       .byte $00
L34B6       .byte $00
L34B7       .byte $00
L34B8       .byte $00
L34B9       .byte $00
L34BA       .byte $00
L34BB       .byte $00
L34BC       .byte $00
L34BD       rts
L34BE       lda #$01
            sta L2790
            lda #$20
            jsr L329B
L34C8       lda L2078
            cmp #$20
            beq L34C8
            lda L20B3
            bne L34D7
	    jmp hiscore
            ;; jmp L3544
L34D7       cmp #$02
            bne L34F4
            ldy #$04
L34DD       lda L2156+1,Y
            jsr L2718
            sta (L00CC),Y
            lda #$00
            sta (L00CE),Y
            dey
            bpl L34DD
            lda #$01
            sta L20B3
            jmp L3544
L34F4       ldy #$04
L34F6       lda #$00
            sta (L00CC),Y
            lda L215B+1,Y
            jsr L2718
            sta (L00CE),Y
            dey
L3503       bpl L34F6
            lda #$02
            sta L20B3
            lda #$03
            sta L20B2
            lda #$04
            sta L20C1+1
            jsr L2C23
            lda L2013
            sta L2012
            jsr L2FAA
            jsr L22C0
            jsr L29BE
            lda #$01
            sta L2790
L352B       lda TRIG0
            beq L353E
            lda CONSOL
            and #$07
            cmp #$06
            bne L352B
            lda #$01
            sta L2011
L353E       lda #$00
            sta L2790
            rts
L3544       pla
            pla
            jmp L21C2
            sta L00EE
            sta L35D7
            sty L00EF
            sty L35D8
            lda #$01
            sta L35DA
            lda #$00
            sta AUDCTL
            lda #$03
            sta SSKCTL
            sta SKCTL
            rts
            dec L35DA
            bne L3590
L356B       jsr L35CC
            cmp #$FF
            beq L35BF
            cmp #$FE
            beq L35B3
            cmp #$FC
            beq L35A2
            cmp #$FD
            beq L3591
            sta L35DA
            ldx L35D9
            bmi L3590
L3586       jsr L35CC
            sta AUDF1,X
            dex
            dex
            bpl L3586
L3590       rts
L3591       jsr L35CC
            tax
            dex
            txa
            bmi L359C
            and #$03
            asl
L359C       sta L35D9
            jmp L356B
L35A2       ldx L35D9
            bmi L356B
L35A7       jsr L35CC
            sta AUDC1,X
            dex
            dex
            bpl L35A7
            bmi L356B
L35B3       ldx #$07
            lda #$00
L35B7       sta AUDF1,X
            dex
            bpl L35B7
            bmi L356B
L35BF       lda L35D7
            sta L00EE
            lda L35D8
            sta L00EF
            jmp L356B
L35CC       ldy #$00
            lda (L00EE),Y
            inc L00EE
            bne L35D6
            inc L00EF
L35D6       rts
L35D7       .byte $00
L35D8       .byte $00
L35D9       .byte $00
L35DA       .byte $00,$00,$00,$00,$00,$00,$0F,$D2
            rts
            dec L35DA
            bne L360D
            jsr L35CC
            cmp #$FF
            beq L363C
            cmp #$FE
            beq L3630
            .byte $80,$00
            ror
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00
            clc
            clc
            clc
            clc
L360D       .byte $00
            clc
            .byte $00,$00
            ror MLTTMP
            ror L0000
            .byte $00,$00,$00,$00,$00,$00
            plp
            nop
            nop
            nop
            plp
            .byte $00,$00,$00
            plp
            tax
            tax
            inc.w NOCKSM,X
            .byte $00,$00
            plp
            .byte $AF,$AF,$AF
            plp
L3630       .byte $00,$00,$00,$3C
            inc LAAAA,X
            plp
            .byte $00
            clc
            clc
            clc
L363C       .byte $00,$00,$00,$00,$00
            asl L181C
            clc
            .byte $1C
            asl.w L0000
            bvs L3683
            clc
            clc
            sec
            bvs L3650
L3650       .byte $00,$44
            eor (HOLD1),Y
            eor (FMSZPG+1),Y
            .byte $00,$00,$C3,$C3,$00,$3C,$3C,$00,$C3,$C3,$00,$00,$00,$00,$00
            clc
            clc
            bmi L3669
L3669       .byte $00,$00
            ror.w L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00
            clc
            clc
            .byte $00,$03,$03,$0C,$0C
            bmi L36AE
            cpy #$C0
            .byte $00
            php
            .byte $22
L3683       .byte $22,$22,$22
            php
            .byte $00,$00
            php
            plp
            php
            php
            php
            rol
            .byte $00,$00
            php
            .byte $22
            asl
            plp
            jsr ICAX1Z
            .byte $00
            rol
            .byte $02
            php
            .byte $02,$22
            php
            .byte $00,$00,$02
            asl
            asl
            .byte $22
            rol
            .byte $02,$00,$00
            rol
            jsr CDTMA2
            .byte $22
L36AE       php
            .byte $00,$00
            php
            jsr L2228
            .byte $22
            php
            .byte $00,$00
            rol
            .byte $02
            asl
            plp
            jsr ICHIDZ
            .byte $00
            php
            .byte $22
            php
            .byte $22,$22
            php
            .byte $00,$00
            php
            .byte $22,$22
            asl
            .byte $02
            php
            .byte $00,$00,$00,$0F,$3F,$FF,$FF,$FF
            rol
            .byte $00,$00,$C3,$FF,$FF,$FF,$FF
            rol
L36E0       .byte $00,$00
            beq L36E0
            .byte $FF,$FF,$FF
            rol
            rol
            rol
            .byte $00,$00,$00,$00,$00,$00
            rol
            rol
            rol
            rol
            .byte $00
            rol
            rol
            rol
            .byte $00
            php
            .byte $22,$02
            php
            .byte $00
            php
            .byte $00,$00,$3C
            ror BITMSK
            ror L3E60
            .byte $00,$00
            php
            rol
            .byte $22,$22
            rol
            .byte $22,$00,$00
            plp
            .byte $22
            plp
            .byte $22,$22
            plp
            .byte $00,$00
            php
            .byte $22
            jsr L221E+2
            php
            .byte $00,$00
            plp
            .byte $22,$22,$22,$22
            plp
            .byte $00,$00
            rol
            jsr L2028
            jsr ICAX1Z
            .byte $00
            rol
            jsr L2028
            jsr ICHIDZ
            .byte $00
            php
            .byte $22
            jsr L2221+1
            php
            .byte $00,$00,$22,$22
            rol
            .byte $22,$22,$22,$00,$00
            rol
            php
            php
            php
            php
            rol
            .byte $00,$00,$02,$02,$02,$02,$22
            php
            .byte $00,$00,$22,$22
            plp
            plp
            .byte $22,$22,$00,$00
            jsr L2020
            jsr L2A20
            .byte $00,$00,$22
            rol
            rol
            rol
            .byte $22,$22,$00,$00,$22
            rol
            rol
            rol
            .byte $22,$22,$00,$00
            php
            .byte $22,$22,$22,$22
            php
            .byte $00,$00
            plp
            .byte $22,$22
            plp
            jsr ICHIDZ
            .byte $00
            php
            .byte $22,$22,$22
            plp
            .byte $02,$00,$00
            plp
            .byte $22,$22
            plp
            plp
            .byte $22,$00,$00
            php
            .byte $22
            php
            .byte $02,$22
            php
            .byte $00,$00
            rol
            php
            php
            php
            php
            php
            .byte $00,$00,$22,$22,$22,$22,$22
            rol
            .byte $00,$00,$22,$22,$22,$22,$22
            php
            .byte $00,$00,$22,$22
            rol
            rol
            rol
            .byte $22,$00,$00,$22,$22
            php
            php
            .byte $22,$22,$00,$00,$22,$22,$22
            php
            php
            php
            .byte $00,$00
            rol
            .byte $02
            php
            php
            jsr ICAX1Z
            rol
            rol
            .byte $00,$00,$00,$00
            rol
            rol
            cpy #$C0
            bmi L3814
            .byte $0C,$0C,$03,$03,$00
            sei
            clc
            clc
            clc
            clc
            sei
            .byte $00,$00
            php
            .byte $1C
            rol LOGCOL,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00
            rol COUNTR+1,X
            .byte $7F
            rol L081C,X
            .byte $00
            bpl L381A
            bpl L381C
            ora POKMSK,X
            bpl L3820
            ora (NGFLAG,X)
            ora (NGFLAG,X)
L3814       ora (NGFLAG,X)
            ora (NGFLAG,X)
            bpl L382A
L381A       bpl L382C
L381C       bvc L381E
L381E       .byte $00,$00
L3820       bpl L3832
            bpl L3833+1
            bvc L3836
            bpl L3838
            .byte $00,$00
L382A       .byte $00,$00
L382C       bvc L383E
            bpl L3840
            eor ROWCRS,X
L3832       .byte $54
L3833       bvc L3885
            rti
L3836       rti
            .byte $00
L3838       eor COLCRS,X
            ora BUFADR,X
            ora RAMLO+1
L383E       ora (NGFLAG,X)
L3840       ora (NGFLAG,X)
            ora RAMLO+1
            ora BUFADR,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $00
            rti
            rti
            bvc L38A5
            .byte $54,$54
            eor POKMSK,X
            bpl L386B
            bpl L386D
            bpl L386F
            bvc L3871
            bpl L3873
            bpl L3875
            bpl L3877
            ora COLCRS,X
            .byte $00,$00
L386B       .byte $00,$00
L386D       .byte $00,$00
L386F       .byte $00,$00
L3871       .byte $00,$00
L3873       .byte $00,$00
L3875       .byte $00,$00
L3877       eor L0000,X
            .byte $00,$00,$00,$14,$14,$14,$14,$3C,$FF,$3C,$3C,$FF
L3885       .byte $C3,$FF,$3C,$00,$00,$00,$00
            ora POKMSK,X
            bpl L38A0
            .byte $00,$00,$00,$00
            eor L0000,X
            .byte $00,$00
            bpl L38AA
            bpl L38AB+1
            eor POKMSK,X
            bpl L38B0
L38A0       .byte $00,$FF,$FF,$FF,$FF
L38A5       .byte $FF,$FF,$FF
            eor ROWCRS,X
L38AA       .byte $14
L38AB       bpl L38AD
L38AD       .byte $00,$00,$00
L38B0       rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            .byte $00,$00,$00,$00
            eor POKMSK,X
            bpl L38D0
            bpl L38D2
            bpl L38D4
            eor L0000,X
            .byte $00,$00
            bpl L38DA
            bpl L38DC
            bpl L38DC+2
            bpl L38E0
L38D0       bpl L38E2
L38D2       bpl L38E3+1
L38D4       ora L0000,X
            .byte $00,$00
            sei
            rts
L38DA       sei
            rts
L38DC       ror L1E18,X
            .byte $00
L38E0       .byte $00
            clc
L38E2       .byte $3C
L38E3       ror L1818,X
            clc
            .byte $00,$00
            clc
            clc
            clc
            ror L183C,X
            .byte $00,$00
            clc
            bmi L3972
            bmi L390E
            .byte $00,$00,$00
            clc
            .byte $0C
            ror L180C,X
            .byte $00,$00,$00
            clc
            .byte $3C
            ror L3C7E,X
            clc
            .byte $00,$0F,$3F,$FF,$FF,$FF
            rol
L390E       rol
            rol
            .byte $C3,$FF,$FF,$FF,$FF
            rol
L3916       rol
            rol
            beq L3916
            .byte $FF,$FF,$FF
            rol
            rol
            rol
            rol
            rol
            rol
            .byte $FF,$FF,$FF,$3F,$0F
            rol
            rol
            rol
            .byte $FF,$FF,$FF,$FF
L392F       .byte $C3
            rol
            rol
            rol
            .byte $FF,$FF,$FF,$FC
            beq L3939
L3939       .byte $00,$00,$00,$00,$00,$0F,$3F,$00,$00,$00,$00,$00,$00,$C3,$FF,$00
            .byte $00,$00,$00
L394C       .byte $00,$00
            beq L394C
            .byte $FF,$FF,$FF
            rol
            rol
            rol
            .byte $00,$00
            rol
            .byte $FF,$FF,$FF,$3F,$0F,$00,$00
            rol
            .byte $FF,$FF,$FF,$FF,$C3,$00,$00
            rol
            .byte $FF,$FF,$FF,$FC
            beq L396F
L396F       .byte $00,$00,$00
L3972       .byte $00,$00,$00,$00
            rol
            rol
            .byte $3F,$0F,$00,$00,$00,$00,$00,$00,$FF,$C3,$00,$00,$00,$00,$00,$00
            .byte $FC
            beq L398B
L398B       .byte $00,$00,$00,$00,$00,$00,$00
            rol
            rol
            rol
            .byte $FF,$FF,$FF,$00,$00,$00,$00
L399C       .byte $0F,$3F,$FF,$FF,$00,$00,$00,$00,$C3,$FF,$FF,$FF,$00,$00
L39AA       .byte $00,$00
            beq L39AA
            .byte $FF,$FF
            rol
            rol
            rol
            rol
            .byte $00,$00,$00,$00,$FF,$FF,$3F,$0F,$00,$00,$00,$00,$FF,$FF,$FF,$C3
            .byte $00,$00,$00,$00,$FF,$FF,$FC
            beq L39CD
L39CD       .byte $00,$00,$00,$00,$00,$00,$00
            rol
            rol
            rol
            rol
            .byte $3C,$FF,$FF
            tay
            .byte $FF,$FF,$3C,$00
            clc
            clc
            clc
            clc
            clc
            clc
            clc
            clc
            .byte $00
            ror L7C78,X
            ror L0666
            .byte $00,$00,$0C,$3C,$3C,$FC,$3C,$3C,$0C,$00
            bmi L3A37
            .byte $3C,$3F,$3C,$3C
            bmi L399C
            .byte $00,$00,$00,$00,$FC
            beq L3A08
L3A08       .byte $00,$00,$00,$00,$00,$00,$00
            rol
            rol
            rol
            .byte $FF,$FF,$FF,$00,$00,$00,$00,$0F,$3F,$FF,$FF,$00,$00,$00,$00,$C3
            .byte $FF,$FF,$FF,$00,$00
L3A27       .byte $00,$00
            beq L3A27
            .byte $FF,$FF
            rol
            rol
            rol
            rol
            .byte $00,$00,$00,$00,$FF,$FF
L3A37       .byte $3F,$0F,$00,$00,$00,$00,$FF,$FF,$FF,$C3,$00,$00,$00,$00,$FF,$FF
            .byte $FC
            beq L3A4A
L3A4A       .byte $00,$00,$00,$00,$00,$00,$00
            rol
            rol
            rol
            rol
            .byte $3C,$FF,$FF
            tay
            .byte $FF,$FF,$3C,$00
            clc
            clc
            clc
            clc
            clc
            clc
            clc
            clc
            jmp L1900
            and L0097
            bit APPMHI
            rti
            php
            .byte $00,$00,$00,$00
            and L0094
            .byte $12
            asl.w L0000
            .byte $00,$00,$00,$00,$14,$33
            ora #$94
            jsr L2020
            jsr L1120
            .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12
            .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12
            .byte $12
            ora ICHIDZ
            jsr L2020
            jsr L2019
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L1920
            .byte $53,$43,$4F,$52
            eor DSKFMS+1
            jsr L1211
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora L2020,Y
            jsr L2020
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L3019
            bmi L3B52+1
            bmi L3B55
            ora L1A20,Y
            .byte $12,$03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
L3B3A       jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L2019
            jsr L2020
            jsr L2019
            jsr L2020
L3B52       jsr L2020
L3B55       jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L1920
            bcc L3B91+1
            bcc L3B93+1
            bcc L3B8F
            jsr L1211
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RAMLO+1),Y
            ldy ICHIDZ
            ldy BRKKEY
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
L3B8F       ora (RTCLOK),Y
L3B91       ora ICHIDZ
L3B93       ora (RTCLOK),Y
            ora ICHIDZ
            ora L2020,Y
            jsr L2020
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            ora L2020,Y
            jsr L1919
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            jsr L2020
            jsr L2019
            .byte $1A,$12,$03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr HATABS
            adc (PALNTS,X)
            .byte $63,$1A,$03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L2019
            jsr L2020
            jsr L2019
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
L3C01       jsr L2020
L3C04       jsr L2020
            jsr L2020
            jsr L2020
            jsr L1920
            jsr L2020
            jsr L1920
            jsr L1211
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RAMLO+1),Y
            .byte $64
            adc MLTTMP
            ora (RAMLO+1),Y
            jsr L1211
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora L2020,Y
            jsr L2020
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            ora L2020,Y
            jsr L1919
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            jsr L2020
            jsr L2019
            .byte $1A,$12,$03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L181A
            .byte $12,$12,$12
            clc
            .byte $03
            jsr L121A
            .byte $03
L3C7E       jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L2019
            jsr L2020
            jsr L2019
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L1920
            jsr L2020
            jsr L1920
            jsr L1211
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora L2020,Y
            jsr L2020
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L4819
            eor #$47
            pha
            jsr L2019
            .byte $1A,$12,$03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L2019
            jsr L2020
            jsr L2019
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
L3D3B       jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L1920
            and L3939,Y
            and L1939,Y
            jsr L1211
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora (RTCLOK),Y
            ora ICHIDZ
            ora L2020,Y
            jsr L2020
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            ora L1920,Y
            jsr L2019
            jsr L2020
            jsr L2019
            .byte $1A,$12,$03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L121A
            .byte $03
            jsr L2019
            jsr L2020
            jsr L2019
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L1920
            jsr L2020
            jsr L1A20
            .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12
            .byte $12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12
            .byte $12,$03
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
L3E60       jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            ora L2020,Y
            jsr L2020
            .byte $1A,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12,$12
;
            org $02E2
;
            .word L2000
;
         
