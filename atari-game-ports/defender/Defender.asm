; 
            icl 'Defender.inc'
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
            org $8000
;
L8000       pla
            pla
            lsr L00F8
            lda #$00
            beq L800B
            sec
            ror L00F8
L800B       jsr LB889
            jsr LA268
            lda #$01
            sta COLDST
            lda #$F3
            sta L00C6
            lda #$12
            sta L00C7
            lda #$53
            sta L00C8
            jsr L9D18
            sec
            ror L00A0
            jsr L9E5E
            lsr L00A0
            lda #$01
            sta L00E1
L8031       lda #$08
            sta CONSOL
            lsr L00F2
            lda #$01
            sta L00F1
            lda #$00
            sta L009A
            sta ATRACT
            lda #$7E
            sta COLOR2
            lda #$00
            sta L00E9
            sta L00EA
            sta L00A0
            sta L00D5
            lda #$04
            sta L009E
            sta L00A5
            sta L17C6
            sta L17C7
            sta L19C6
            sta L19C7
            lda #$FF
            sta L00AF
            lda #$00
            sta L00B0
            sta L00AE
            sta L00BE
            sta L00ED
            sta L00EF
            lda L00E1
            jmp L80E6
L8078       jsr L8D79
            lda #$FF
            sta L00BD
            jsr LB8A1
            jsr L9FB1
            lda L00E1
            beq L808F
            jsr L86B0
            jsr L8780
L808F       jsr L8259
L8092       jsr L811F
L8095       lda L00AB
            bpl L8095
            clc
            lda COLOR0
            adc #$10
            sta COLOR0
            lda L00BD
            beq L80B7
            sec
            sbc #$01
            sta L00BD
            lsr
            lsr
            lsr
            lsr
            ora #$A0
            sta AUDC3
            sta AUDC4
L80B7       lda #$FF
            sta L00AF
            jsr LBAA0
            lda L00BE
            bmi L8100
            lda L00B0
            bpl L8092
            lda #$03
L80C8       pha
            lda #$FF
            jsr L8874
            pla
            sec
            sbc #$01
            bne L80C8
            lda #$00
            sta L00B0
            sta ATRACT
            inc L00E1
            lda L00E1
            cmp #$07
            bcc L80E6
            lda #$00
            sta L00E1
L80E6       tay
            lda L80F9,Y
            sta L00BB
            lda #$01
            sta L00E2
            cpy #$04
            bcc L8078
            inc L00E2
            jmp L8078
L80F9       .byte $3F,$3F,$1F,$0F,$3F,$1F,$0F
L8100       lda #$CA
            sta COLOR0
            lda #$00
            sta L00AF
            sta L00B0
            sta L00BE
            sta L00AE
            sta L00AC
            sta L00F0
            sta L00E0
            bit L00F8
            bpl L811C
            jmp L8031
L811C       jmp L8369
L811F       lda #$55
            sta L00EE
            lda L00E1
            asl
            tay
            lda L8148,Y
L812A       sta L00E7
            lda L8148+1,Y
            sta L00E8
            lda #$09
            sta L143A
            lda #$00
            sta L1439
            ldy #$00
L813D       lda (L00E7),Y
            beq L8147
            jsr L972E
            iny
            bne L813D
L8147       rts
L8148       lsr LOMEM+1,X
            .byte $7B
            sta (L00A0,X)
L814D       sta (L00C5,X)
            sta (L00EA,X)
            sta (APPMHI+1,X)
            .byte $82,$34,$82
            ldy #$A0
            ldy #$C4
            ldy #$C5
            ldy #$C6
            ldy #$C5
            ldy #$CE
            ldy #$C4
            ldy #$C5
            ldy #$D2
            ldy #$A0
            .byte $C7
            ldy #$C1
            ldy #$CD
            ldy #$C5
            ldy #$A0
L8173       cpy L00A0
            cmp L00A0
            cmp LCFA0
            .byte $00
            ldy #$A0
            ldy #$A0
            ldy #$A0
            .byte $CF
            ldy #$CE
            ldy #$C5
            ldy #$A0
            bne L812A
            cpy LC1A0
            ldy #$D9
            ldy #$C5
            ldy #$D2
            ldy #$A0
            cmp L00A0
            cmp (L00A0,X)
L8199       .byte $D3
            ldy #$D9
            ldy #$A0
            ldy #$00
            ldy #$A0
            ldy #$A0
            .byte $CF
            ldy #$CE
            ldy #$C5
            ldy #$A0
            bne L814D
            cpy LC1A0
            ldy #$D9
            ldy #$C5
            ldy #$D2
            ldy #$A0
            dec LCFA0
L81BB       ldy #$D2
            ldy #$CD
            ldy #$C1
            ldy #$CC
            ldy #$00
            ldy #$A0
            ldy #$A0
            ldy #$A0
            .byte $CF
            ldy #$CE
            ldy #$C5
            ldy #$A0
            bne L8173+1
            cpy LC1A0
            ldy #$D9
            ldy #$C5
            ldy #$D2
            ldy #$A0
            iny
            ldy #$C1
L81E2       ldy #$D2
            ldy #$C4
            ldy #$A0
            ldy #$00
            ldy #$A0
            ldy #$A0
            ldy #$A0
            .byte $D4
            ldy #$D7
            ldy #$CF
            ldy #$A0
            bne L8199
            cpy LC1A0
            ldy #$D9
            ldy #$C5
            ldy #$D2
            ldy #$A0
            cmp L00A0
            cmp (L00A0,X)
            .byte $D3
            ldy #$D9
            ldy #$A0
            ldy #$00
            ldy #$A0
            ldy #$A0
            .byte $D4
            ldy #$D7
            ldy #$CF
            ldy #$A0
            bne L81BB+1
            cpy LC1A0
            ldy #$D9
            ldy #$C5
            ldy #$D2
            ldy #$A0
            dec LCFA0
            ldy #$D2
            ldy #$CD
            ldy #$C1
            ldy #$CC
            ldy #$00
            ldy #$A0
            ldy #$A0
            ldy #$A0
            .byte $D4
            ldy #$D7
            ldy #$CF
            ldy #$A0
            bne L81E2+1
            cpy LC1A0
            ldy #$D9
            ldy #$C5
            ldy #$D2
            ldy #$A0
            iny
            ldy #$C1
            ldy #$D2
            ldy #$C4
            ldy #$A0
            ldy #$00
L8259       lda #$06
            sta L143A
            lda #$00
            sta L1439
            lda #$FF
            sta L00EE
            lda #$95
            sta L00E7
            lda #$82
            sta L00E8
            ldy #$00
L8271       lda (L00E7),Y
            beq L8294
            cmp #$F0
            bcc L8288
L8279       and #$0F
            sta L00E3
            asl
            asl
            asl
            asl
            ora L00E3
            sta L00EE
            jmp L828B
L8288       jsr L972E
L828B       inc L00E7
            bne L8271
            inc L00E8
            jmp L8271
L8294       rts
            .byte $FF
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$C4
            ldy #$C5
            ldy #$C6
            ldy #$C5
            ldy #$CE
            ldy #$C4
            ldy #$C5
            ldy #$D2
            sta L8D8D
            sta L8D8D
            .byte $FF
            ldy #$D3
            ldy #$C5
            ldy #$CC
            ldy #$C5
            ldy #$C3
            ldy #$D4
            ldy #$A0
            .byte $C7
            ldy #$C1
            ldy #$CD
            ldy #$C5
            ldy #$A0
            cmp (L00A0,X)
            dec LC4A0
            ldy #$A0
            bne L8279
            .byte $D2
            ldy #$C5
            ldy #$D3
            ldy #$D3
            sta LA08C+1
            ldy #$A0
            ldy #$A0
            ldy #$D4
            ldy #$C8
            ldy #$C5
            ldy #$A0
            .byte $D3
            ldy #$D4
            ldy #$C1
            ldy #$D2
            ldy #$D4
            ldy #$A0
            .byte $C2
            ldy #$D5
            ldy #$D4
            ldy #$D4
            ldy #$CF
            ldy #$CE
            sta L8D8D
            sta LA0F5
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            cpy #$A0
            ldy #$B1
            ldy #$B9
            ldy #$B8
            ldy #$B2
            ldy #$A0
            cmp (L00A0,X)
            .byte $D4
            ldy #$C1
            ldy #$D2
            ldy #$C9
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$04,$FF,$03
            asl L00FF
            ora CASINI
            ora (L00FF,X)
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
L8369       jsr L8D79
            lda #$FF
            sta L00A9
            lda #$00
            sta L142F
            sta L1430
            sta L1431
            sta L1432
            lda #$03
            sta L009E
            sta L00A5
            lda #$07
            sta L0D2E
            lda #$00
            sta L0D2D
            sta L0D2B
            ldy L00E1
            lda L80F9,Y
            sta L00BB
            jsr LA816+1
            lda L00D7
            sta L00FE
            lda L00D8
            sta L00FF
            jsr LA268
            jsr LAE17
            lda #$00
            sta L00A0
            lda #$00
            sta L009A
            sta L00E0
            jsr LAE55
            jsr L89B8+1
            jsr L8A0D
            lda #$01
            sta L00F1
            lda #$FF
            sta L00F4
            lsr L00F7
            jmp L845B
L83C9       inc L009A
            beq L8427
            lda L009A
            cmp #$64
            bcc L83D7
            lda #$63
            sta L009A
L83D7       lda L009A
            and #$01
            bne L83EA
            lda L00BB
            lsr
            sta L00BB
            cmp #$03
            bcs L83EA
            lda #$03
            sta L00BB
L83EA       jsr L8D79
            jsr LB8A1
            jsr L9E5E
            jsr L9FB1
            lda #$10
L83F8       pha
            jsr LA832
            pla
            sec
            sbc #$01
            bne L83F8
            jsr L9642
            jsr L9442
            inc L009E
            jsr L86B0
            dec L009E
            jsr L8780
            lda #$1E
L8414       pha
            lda #$FF
            jsr L8874
            pla
            sec
            sbc #$01
            bne L8414
            lda L009E
            bne L8427
            jmp LB70E
L8427       lda L009A
            clc
            adc #$01
L842C       sec
            sbc #$05
            bcs L842C
            adc #$05
            bne L843F
            jsr LA268
            jsr LAE17
            lda #$00
            sta L00A0
L843F       jsr LAE55
            lda #$00
            sta L0087
            sta L0095
            lda #$FC
            sta L0099
            sta L00C2
            sta L00CC
            sta L0098
            sta L00A6
            bit L00F7
            bpl L845B
            jmp LB6D1
L845B       ldy #$00
            lda #$00
L845F       sta L052B,Y
            iny
            bpl L845F
L8465       jsr LB8A1
            lda #$00
            sta L00A4
            lda TRIG0
            ldy L00F1
            cpy #$02
            bne L8478
            lda TRIG1
L8478       sta L00A3
            lda #$00
            sta L00D5
            sta L00B0
            sta L00AE
            sta L00AC
            sta L00BE
            sta L00AF
            sta L00F0
            lda #$50
            sta L00C3
            lda #$01
            sta L00C5
            lda #$78
            sta L00C4
            ldy #$00
            lda #$00
L849A       sta L051A,Y
            iny
            cpy #$10
            bcc L849A
            jsr L8D79
            lda #$7E
            sta COLOR2
            lda #$FF
            sta L00D4
            lda #$00
            sta L0093
            lda #$00
            sta L00EF
            sta L00F6
            lda #$00
            sta L0D2D
            jsr L9E5E
            jsr L9FB1
            lsr L00AD
            jsr L9442
            sec
            ror L00AD
            jsr L86B0
            jsr L8780
            lda L00E2
            cmp #$01
            beq L84FF
            lda L00F4
            cmp L00F1
            beq L84FF
            lda L00F1
            sta L00F4
            cmp #$01
            beq L84EB
            jsr L8B3E
            jmp L84EE
L84EB       jsr L8B09
L84EE       lda #$19
L84F0       pha
            lda #$FF
            jsr L8874
            pla
            sec
            sbc #$01
            bne L84F0
            jsr L8B73
L84FF       lda #$00
            sta ATRACT
L8503       jsr LBAA0
            bit L00B0
            bpl L8511
            bit L00AF
            bpl L852A
            jmp L8031
L8511       bit L00BE
            bpl L852A
            bit L00AF
            bpl L852A
            jmp L8369
L851C       lda L00E1
            bne L852A
            jsr L895C
            lda L00E0
            beq L852A
            jmp L8031
L852A       bit L00AF
            bmi L8503
            inc L00D4
            lda L00D4
            and #$3F
            bne L8558
            jsr L9E5E
            jsr L8B8A
            jsr LAC18
L853F       bit L00AB
            bpl L853F
            jsr LA4CC
            inc L0087
            bne L854C
            inc L00F6
L854C       lda L0087
            and #$3F
            bne L8558
            jsr LAE98
            jsr LBB7B
L8558       lda L00D4
            clc
            adc #$20
            bne L8582
            jsr L9FB1
            lda L00BD
            lsr
            sta L00BD
            ora #$A0
            sta AUDC3
            sta AUDC4
            bit L00AD
            bpl L857F
            lda L0087
            and #$08
            bne L857F
            jsr L93BC
            jmp L8582
L857F       jsr L9442
L8582       lda L00D4
            and #$07
            bne L858B
            jsr LA832
L858B       lda L00D4
            clc
            adc #$B3
            bne L8595
            jsr L8780
L8595       lda L00D4
            clc
            adc #$A0
            bne L859F
            jsr L86B0
L859F       lda L00D4
            adc #$40
            and #$3F
            bne L85AA
            jsr L8881
L85AA       jsr L9A17
            jsr L9C1A
            lda L00D4
            and #$07
            beq L85B9
            jmp L851C
L85B9       jsr LA20C
            jsr LB586+2
            jsr L9962
            lda L00E1
            bne L85C9
            jmp L88BD
L85C9       lda L0093
            and #$03
            beq L85D2
            jsr L8681
L85D2       inc L0093
            lda L0093
            and #$03
            beq L85DF
            jsr LACEE
            bcc L85F3
L85DF       lda TRIG0
            ldy L00F1
            cpy #$02
            bne L85EB
            lda TRIG1
L85EB       eor L00A3
            and #$01
            bne L861C
            beq L8603
L85F3       cmp #$88
            beq L8670
            cmp #$95
            beq L8677
            cmp #$C1
            beq L8630
            cmp #$DA
            beq L8650
L8603       clc
            lda L00C3
            adc L0089
            sta L0091
            lda L008A
            adc #$00
L860E       sta L0092
            jsr LB5A1
            jsr L9986
            jsr LA193
            jmp L851C
L861C       lda TRIG0
            ldy L00F1
            cpy #$02
            bne L8628
            lda TRIG1
L8628       sta L00A3
            jsr L99D0
            jmp L8603
L8630       lda #$00
            sta L00EA
            inc L00E9
            lda L00E9
            cmp #$03
            bcc L863E
            dec L00E9
L863E       sec
            lda L00C4
            sbc L00E9
            sta L00C4
            cmp #$20
            bcs L8603
            lda #$20
            sta L00C4
            jmp L8603
L8650       lda #$00
            sta L00E9
            inc L00EA
            lda L00EA
            cmp #$03
            bcc L865E
            dec L00EA
L865E       clc
            lda L00C4
            adc L00EA
            sta L00C4
            cmp #$B4
            bcc L8603
            lda #$B4
            sta L00C4
            jmp L8603
L8670       lda #$FF
            sta L00C5
            jmp L867B
L8677       lda #$01
            sta L00C5
L867B       jmp L8603
            jmp L8603
L8681       lda L00C5
            bmi L86A5
            lda L00C3
            cmp #$20
            beq L86AF
            bcc L8699
L868D       dec L00C3
            clc
            lda L00D5
            adc #$03
            sta L00D5
            jmp L86AF
L8699       inc L00C3
            sec
            lda L00D5
            sbc #$03
            sta L00D5
            jmp L86AF
L86A5       lda L00C3
            cmp #$76
            beq L86AF
            bcc L8699
            bcs L868D
L86AF       rts
L86B0       lda L0085
            pha
            inc L00AA
            lda L00AA
            sta L0085
            lda L00C3
            pha
            lda L00C4
            pha
            lda L00C5
            pha
            lda #$00
            sta L00C5
            lda L00F1
            cmp #$02
            bne L86D0
            lda #$FF
            sta L00C5
L86D0       lda L009E
            cmp #$02
            beq L870C
            bcc L8724
            cmp #$03
            beq L86F4
            lda #$1C
            sta L00C3
            lda L00F1
            cmp #$01
            beq L86EA
            lda #$96
            sta L00C3
L86EA       lda #$00
            sta L00C4
            jsr LB586+2
            jsr LB5A1
L86F4       lda #$10
            sta L00C3
            lda L00F1
            cmp #$01
            beq L8702
            lda #$8A
            sta L00C3
L8702       lda #$00
            sta L00C4
            jsr LB586+2
            jsr LB5A1
L870C       lda #$04
            sta L00C3
            lda L00F1
            cmp #$01
            beq L871A
            lda #$7E
            sta L00C3
L871A       lda #$00
            sta L00C4
            jsr LB586+2
            jsr LB5A1
L8724       ldy #$0A
            sty L00DF
            ldy #$22
            sty L00E3
            lda L00F1
            cmp #$01
            beq L8736
            ldy #$7A
            sty L00E3
L8736       ldy #$07
            sty L00F9
            lda L00A5
            beq L8760
            cmp #$04
            bcc L8744
            lda #$03
L8744       pha
            jsr LAB2C
            lda L0085
            and #$02
            lsr
            clc
            adc #$1A
            jsr L1F00
            clc
            lda L00DF
            adc #$06
            sta L00DF
            pla
            sec
            sbc #$01
            bne L8744
L8760       lda L00DF
            cmp #$18
            bcs L8773
            jsr LAB2C
            clc
            lda L00DF
            adc #$06
            sta L00DF
            jmp L8760
L8773       pla
            sta L00C5
            pla
            sta L00C4
            pla
            sta L00C3
            pla
            sta L0085
            rts
L8780       lda L00E2
            cmp #$02
            bcs L8787
            rts
L8787       lda L0085
            pha
            inc L00AA
            lda L00AA
            sta L0085
            lda L00C3
            pha
            lda L00C4
            pha
            lda L00C5
            pha
            lda #$00
            sta L00C5
            lda L00F1
            cmp #$02
            beq L87A7
            lda #$FF
            sta L00C5
L87A7       lda L00F1
            cmp #$01
            beq L87B3
            lda L17C6
            jmp L87B6
L87B3       lda L19C6
L87B6       clc
            adc #$01
            cmp #$02
            beq L87F3
            bcc L880B
            cmp #$03
            beq L87DB
            lda #$1C
            sta L00C3
            lda L00F1
            cmp #$01
            bne L87D1
            lda #$96
            sta L00C3
L87D1       lda #$00
            sta L00C4
            jsr LB586+2
            jsr LB5A1
L87DB       lda #$10
            sta L00C3
            lda L00F1
            cmp #$01
            bne L87E9
            lda #$8A
            sta L00C3
L87E9       lda #$00
            sta L00C4
            jsr LB586+2
            jsr LB5A1
L87F3       lda #$04
            sta L00C3
            lda L00F1
            cmp #$01
            bne L8801
            lda #$7E
            sta L00C3
L8801       lda #$00
            sta L00C4
            jsr LB586+2
            jsr LB5A1
L880B       ldy #$0A
            sty L00DF
            ldy #$22
            sty L00E3
            lda L00F1
            cmp #$01
            bne L881D
            ldy #$7A
            sty L00E3
L881D       ldy #$07
            sty L00F9
            lda L00F1
            cmp #$01
            beq L882D
            lda L17C7
            jmp L8830
L882D       lda L19C7
L8830       beq L8854
            cmp #$04
            bcc L8838
            lda #$03
L8838       pha
            jsr LAB2C
            lda L0085
            and #$02
            lsr
            clc
            adc #$1A
            jsr L1F00
            clc
            lda L00DF
            adc #$06
            sta L00DF
            pla
            sec
            sbc #$01
            bne L8838
L8854       lda L00DF
            cmp #$18
            bcs L8867
            jsr LAB2C
            clc
            lda L00DF
            adc #$06
            sta L00DF
            jmp L8854
L8867       pla
            sta L00C5
            pla
            sta L00C4
            pla
            sta L00C3
            pla
            sta L0085
            rts
L8874       pha
            sec
L8876       sbc #$01
            bcs L8876
            pla
            sec
            sbc #$01
            bcs L8874
            rts
L8881       bit L00AE
            bmi L8886
            rts
L8886       jsr L8E32
            jsr LB8A1
            jsr LB7F1
            inc L00D0
            jsr L9E5E
            jsr L9FB1
            lda #$10
L8899       pha
            jsr LA832
            pla
            sec
            sbc #$01
            bne L8899
            jsr L9442
            jsr L86B0
            jsr L97E7
            lsr L00AE
            lda L00E1
            beq L88BC
            lda RANDOM
            cmp #$AA
            bcc L88BC
            jmp LB64C
L88BC       rts
L88BD       sec
            ror L00ED
            sec
            ror L0D2B
            lda #$05
            sta L00D5
            lda L0093
            and #$03
            beq L88D1
            jsr L8681
L88D1       inc L0093
            lda L0093
            and #$03
            beq L892B
            lda #$00
            sta L0098
L88DD       ldy L0098
            lda L0AEB,Y
            bne L88F0
L88E4       lda L0098
            clc
            adc #$04
            sta L0098
            bpl L88DD
            jmp L8603
L88F0       lda L0AEE,Y
            and #$07
            beq L88E4
            cmp #$03
            beq L88E4
            cmp #$07
            beq L88E4
            lda L0AEB,Y
            cmp L00C4
            ror
            eor #$FF
            sta L00F3
            bit L00F3
            bpl L891C
            dec L00C4
            lda L00C4
            cmp #$20
            bcs L8959
            lda #$20
            sta L00C4
            jmp L8603
L891C       inc L00C4
            lda L00C4
            cmp #$A0
            bcc L8959
            lda #$A0
            sta L00C4
            jmp L8603
L892B       lda L0087
            beq L894C
            lda L009C
            cmp #$08
            bcs L8952
            lda RANDOM
            and #$07
            bne L8959
            bit L00A0
            bmi L8946
            lda L00C4
            cmp #$90
            bcs L8959
L8946       jsr L99D0
            jmp L8959
L894C       sec
            ror L00AE
            jmp L8959
L8952       sec
            ror L00AC
            lda #$00
            sta L009C
L8959       jmp L8603
L895C       lda L00D4
            and #$3F
            beq L8963
            rts
L8963       lda L00AB
            bpl L895C
            lda #$01
            sta L1439
            lda #$14
            sta L143A
            lda L00EE
            pha
            lda L0087
            and #$03
            tay
            lda L89B5,Y
            sta L00EE
            ldy #$00
L8980       lda L898F,Y
            beq L898B
            jsr L972E
            iny
            bne L8980
L898B       pla
            sta L00EE
            rts
L898F       ldy #$C4
            ldy #$C5
            ldy #$C6
            ldy #$C5
            ldy #$CE
            ldy #$C4
            ldy #$C5
            ldy #$D2
            ldy #$A0
            ldy #$A0
            cpy #$A0
            lda (L00B9),Y
            clv
            .byte $B2
            ldy #$A0
            cmp (L00A0,X)
            .byte $D4
            ldy #$C1
            ldy #$D2
            ldy #$C9
            .byte $00
L89B5       .byte $FF
            tax
            .byte $FF
L89B8       eor L00A2,X
            .byte $00
L89BB       cpx #$80
            bcs L89CB
            lda L0AEB,X
            sta L1600,X
            lda L0B6B,X
            sta L1680,X
L89CB       lda L0C6B,X
            sta L1700,X
            inx
            cpx #$C0
            bcc L89BB
            lda L142F
            sta L17C0
            lda L1430
            sta L17C1
            lda L1431
            sta L17C2
            lda L1432
            sta L17C3
            lda L00A0
            sta L17C4
            lda L00BB
            sta L17C5
            lda L009E
            sta L17C6
            lda L00A5
            sta L17C7
            lda L009B
            sta L17C8
            lda L009A
            sta L17C9
            rts
L8A0D       ldx #$00
L8A0F       cpx #$80
            bcs L8A1F
            lda L0AEB,X
            sta L1800,X
            lda L0B6B,X
L8A1C       sta L1880,X
L8A1F       lda L0C6B,X
            sta L1900,X
            inx
            cpx #$C0
            bcc L8A0F
            lda L142F
            sta L19C0
            lda L1430
            sta L19C1
            lda L1431
            sta L19C2
            lda L1432
            sta L19C3
            lda L00A0
            sta L19C4
            lda L00BB
            sta L19C5
            lda L009E
            sta L19C6
            lda L00A5
            sta L19C7
            lda L009B
            sta L19C8
            lda L009A
            sta L19C9
            rts
L8A61       ldx #$00
L8A63       cpx #$80
            bcs L8A73
            lda L1600,X
            sta L0AEB,X
            lda L1680,X
            sta L0B6B,X
L8A73       lda L1700,X
            sta L0C6B,X
            inx
            cpx #$C0
            bcc L8A63
            lda L17C0
            sta L142F
            lda L17C1
            sta L1430
            lda L17C2
            sta L1431
            lda L17C3
            sta L1432
            lda L17C4
            sta L00A0
            lda L17C5
            sta L00BB
            lda L17C6
            sta L009E
            lda L17C7
            sta L00A5
            lda L17C8
            sta L009B
            lda L17C9
            sta L009A
            rts
L8AB5       ldx #$00
L8AB7       cpx #$80
            bcs L8AC7
            lda L1800,X
            sta L0AEB,X
            lda L1880,X
            sta L0B6B,X
L8AC7       lda L1900,X
            sta L0C6B,X
L8ACD       inx
            cpx #$C0
            bcc L8AB7
            lda L19C0
            sta L142F
            lda L19C1
            sta L1430
            lda L19C2
            sta L1431
            lda L19C3
            sta L1432
            lda L19C4
            sta L00A0
            lda L19C5
            sta L00BB
            lda L19C6
            sta L009E
            lda L19C7
            sta L00A5
            lda L19C8
L8B01       sta L009B
            lda L19C9
            sta L009A
            rts
L8B09       lda #$00
            sta L1439
            lda #$0A
            sta L143A
            ldy #$00
L8B15       lda L8B21,Y
            beq L8B20
            jsr L972E
            iny
            bne L8B15
L8B20       rts
L8B21       ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            bne L8ACD
            cpy LC1A0
            ldy #$D9
            ldy #$C5
            ldy #$D2
            ldy #$A0
            .byte $CF
            ldy #$CE
            ldy #$C5
            .byte $00
L8B3E       lda #$00
            sta L1439
            lda #$0A
            sta L143A
            ldy #$00
L8B4A       lda L8B56,Y
            beq L8B55
            jsr L972E
            iny
            bne L8B4A
L8B55       rts
L8B56       ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            bne L8B01+1
            cpy LC1A0
            ldy #$D9
            ldy #$C5
            ldy #$D2
            ldy #$A0
            .byte $D4
            ldy #$D7
            ldy #$CF
L8B72       .byte $00
L8B73       lda #$00
            sta L1439
            lda #$0A
            sta L143A
            ldy #$00
L8B7F       lda #$A0
            jsr L972E
            iny
            cpy #$28
            bcc L8B7F
            rts
L8B8A       lda L00AC
            bmi L8BA4
L8B8E       lda LB568
            pha
            eor #$FF
            nop
            nop
            nop
            pla
            cmp LB568
            beq L8BA3
            sec
            ror L00F8
            jmp L8031
L8BA3       rts
L8BA4       lda #$00
            sta L00AC
            lda L00A5
            beq L8B8E
            dec L00A5
            jsr L8E4E
            lda #$00
            sta L0098
            lda #$0F
            sta COLOR4
            jmp L8BD0
L8BBD       lda L0098
            clc
            adc #$04
            sta L0098
            bpl L8BD0
            lda #$00
            sta L00AC
            lda #$00
            sta COLOR4
            rts
L8BD0       jsr L9C0B+2
            lda COLOR4
            eor #$0F
            sta COLOR4
            ldy L0098
            lda L0AEB,Y
            beq L8BBD
            sta L00DF
            lda L0AEC,Y
            sta L00DD
            lda L0AED,Y
            sta L00DE
            sec
            lda L00DD
            sbc L008B
            sta L00E3
            lda L00DE
            sbc L008C
            sta L00E4
            bcs L8C09
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
L8C09       lda L00E4
L8C0B       bne L8BBD
            lda L00E3
            cmp #$A0
L8C11       bcs L8BBD
L8C13       tya
            pha
L8C15       lda L0085
L8C17       and #$04
L8C19       asl
L8C1A       clc
L8C1B       adc L0AEE,Y
L8C1E       and #$0F
            tay
            lda LA592,Y
            sta L00A9
            pla
            tay
            lda L0AEE,Y
            sta L00F9
            and #$07
            beq L8BBD
            cmp #$03
L8C33       beq L8BBD
            cmp #$01
            beq L8C43
            cmp #$05
            beq L8C69
            jsr L8CC3
            jmp L8BBD
L8C43       jsr L8CC3
            lda L00F9
            cmp #$11
            beq L8C4F
            jmp L8BBD
L8C4F       ldy L0098
            lda L0B6B,Y
            tax
            lda L0AEB,X
            beq L8C33
            lda L0AEE,X
            cmp #$08
            bne L8C0B
            lda #$10
            sta L0AEE,X
            jmp L8BBD
L8C69       jsr L8CC3
            jsr L8CF2
            and #$03
            sta L00E6
            sec
            lda #$06
            sbc L00E6
            sta L00E5
            lda L00E5
L8C7C       pha
            jsr L8C9E
L8C80       pla
            sec
            sbc #$01
            bne L8C7C
            lda L00E6
            beq L8C9B
L8C8A       pha
            jsr L8D0C
            lda #$06
            sta L00F9
            jsr LA4A5
            pla
            sec
            sbc #$01
            bne L8C8A
L8C9B       jmp L8BBD
L8C9E       lda #$06
            jsr LA7B2
            jsr L8CF2
            and #$0F
            sbc #$07
            clc
            adc L00C9
            sta L00C9
            jsr L8CF2
            and #$0F
            sbc #$07
            clc
            adc L00CA
            sta L00CA
            lda #$01
            sta L00CB
            jsr L9BE7
            rts
L8CC3       ldy L0098
            lda #$00
            sta L0AEB,Y
            lda #$80
            sta L0AED,Y
            jsr LA12D
            jsr LA786
            lda L00E3
            clc
            adc #$07
            sta L00E3
            jsr LAB2C
            lda L00E3
            sta L00C9
            lda L00DF
            sta L00CA
            lda #$01
            sta L00CB
            jsr L9BE7
            jsr LA7AE
            rts
L8CF2       clc
            lda L00C6
            adc L00C7
            adc L00C8
            pha
            lda L00C7
            sta L00C6
            lda L00C8
            sta L00C7
            pla
            sta L00C8
            ror L00C8
            ror L00C7
            ror L00C6
            rts
L8D0C       jsr L8CF2
            and #$FE
            sta L00DD
            lda L00C7
            and #$01
            sta L00DE
            eor L0092
            beq L8D0C
            jsr L8CF2
            and #$1F
            adc #$30
            sta L00DF
            rts
L8D27       inc L00B6
            lda L00B6
            and L00B4
            bne L8D33
            inc L00B1
            inc L00B1
L8D33       ldy L00B1
            lda (L00B2),Y
            sta AUDF1
            iny
            lda (L00B2),Y
            sta AUDC1
            and #$0F
            bne L8D4A
            jsr L8D68
            jsr LB47F
L8D4A       rts
L8D4B       cpx L00B7
            bcs L8D59
            pha
            lda L00B1
            cmp #$20
            bcs L8D58
            pla
            rts
L8D58       pla
L8D59       stx L00B7
            sta L00B3
            sty L00B2
            lda #$00
            sta L00B1
            lda L00B5
            sta L00B4
            rts
L8D68       lda #$00
            sta L00B7
L8D6C       lda #$01
            sta L00B5
            tax
            lda #$8E
            ldy #$86
            jsr L8D4B
            rts
L8D79       lda #$FF
            sta AUDF3
            lda #$FE
            sta AUDF4
            lda #$AF
            sta AUDC3
            sta AUDC4
            lda #$1F
L8D8D       sta L00BD
            lda #$00
            sta AUDF2
            sta AUDC2
            rts
L8D98       ldx #$03
            lda #$01
            sta L00B5
            lda #$8E
            ldy #$8A
            jsr L8D4B
            rts
L8DA6       ldx #$05
            lda #$00
            sta L00B5
            lda #$91
            ldy #$20
            jsr L8D4B
            rts
L8DB4       ldx #$05
            lda #$00
            sta L00B5
            lda #$90
            ldy #$DA
            jsr L8D4B
            rts
L8DC2       ldx #$05
            lda #$00
            sta L00B5
            lda #$91
            ldy #$AC
            jsr L8D4B
            rts
L8DD0       ldx #$1E
            lda #$01
            sta L00B5
            lda #$92
            ldy #$08
            jsr L8D4B
            rts
L8DDE       ldx #$0A
            lda #$01
            sta L00B5
            lda #$90
            ldy #$6A
            jsr L8D4B
            rts
L8DEC       ldx #$0A
            lda #$00
            sta L00B5
            lda #$90
            ldy #$1A
            jsr L8D4B
            rts
L8DFA       ldx #$0A
            lda #$00
            sta L00B5
            lda #$90
            ldy #$60
            jsr L8D4B
            rts
L8E08       ldx #$14
            lda #$01
            sta L00B5
            lda #$90
            ldy #$A2
            jsr L8D4B
            rts
L8E16       ldx #$19
            lda #$01
            sta L00B5
            lda #$92
            ldy #$E2
            jsr L8D4B
            rts
L8E24       ldx #$1E
            lda #$01
L8E28       sta L00B5
            lda #$92
            ldy #$B0
            jsr L8D4B
            rts
L8E32       ldx #$32
            lda #$01
            sta L00B5
            lda #$8E
            ldy #$CE
            jsr L8D4B
            rts
L8E40       ldx #$64
            lda #$00
L8E44       sta L00B5
            lda #$8F
            ldy #$12
            jsr L8D4B
            rts
L8E4E       ldx #$7D
            lda #$01
            sta L00B5
            lda #$92
            ldy #$76
            jsr L8D4B
            rts
L8E5C       ldx #$96
            lda #$01
            sta L00B5
            lda #$8F
            ldy #$DC
            jsr L8D4B
            rts
L8E6A       ldx #$C8
            lda #$01
            sta L00B5
            lda #$91
            ldy #$66
            jsr L8D4B
            rts
L8E78       ldx #$C8
            lda #$01
            sta L00B5
            lda #$93
            ldy #$52
            jsr L8D4B
            rts
            .byte $00,$00,$00,$00,$13
            sty L8C11+1
            ora (L008C),Y
            ora (L008C),Y
            .byte $12
            sty L8C13
            .byte $14
            sty L8C15
L8E9A       asl L008C,X
            .byte $17
            sty L8C17+1
            clc
            sty L8C19
            ora L1A8C,Y
            sty L8C1A
            .byte $1B
            sty L8C1B
            .byte $1B
            sty L8C1B+1
            .byte $1C
            sty L8C1B+1
            ora L1D8C,X
            sty L8C1B+2
            ora L1E8C,X
            sty L8C1E
            asl L1E8C,X
            sty L8C1E+1
            .byte $1F
            sty L8C1E+1
            .byte $1F
L8ECD       .byte $80,$1F,$8F,$1F
L8ED1       .byte $8F,$1F,$8F,$1F
L8ED5       .byte $8F
            asl L1E8F,X
            .byte $8F
            asl L1E8F,X
            .byte $8F
            ora L1D8F,X
L8EE1       .byte $8F
            ora L1D8F,X
            .byte $8F,$1C,$8F,$1C
L8EE9       .byte $8F,$1C,$8F,$1B,$8F,$1B,$8F,$1B,$8F,$1A,$8F,$1A,$8F
            ora L198F,Y
L8EF9       .byte $8F
            clc
            .byte $8F
            clc
            .byte $8F
L8EFE       .byte $17,$8F
            asl L008F,X
            ora L008F,X
            .byte $14,$8F,$12,$8F
            ora (L008F),Y
            bpl L8E9A+1
            asl L0D8F
            .byte $8F,$0C,$80,$0C,$AF
            ora L0CAF
            .byte $AF
            ora L01AF
            .byte $AB
            ora (L00AB,X)
            .byte $0F,$AB
            bpl L8ECD
            .byte $0F,$AB
            bpl L8ED1
            .byte $0F,$AB
            bpl L8ED5
            ora (L00AB,X)
            ora (L00AB,X)
            .byte $0C,$AB
            ora L0FAB
            .byte $AB
            bpl L8EE1
            .byte $0C,$AB
            ora L0FAB
            .byte $AB
            bpl L8EE9
            .byte $0C,$AB
            ora L0EAB
            .byte $AB,$0F,$AB,$0C,$AB
            ora L0FAB
            .byte $AB
            bpl L8EF9
            .byte $0C,$AB
            ora L0EAB
            .byte $AB,$0F,$AB
            asl L0DAB
            tax
            .byte $0C
            lda #$0D
            tay
            asl L0DA7
            ldx DOSINI
            lda DOSINI+1
            ldy DOSINI
            .byte $A3
            ora L0CA2
            lda (DOSINI+1,X)
            ldy #$FF
            .byte $AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF
            ldx LAEFF
            .byte $FF
            ldx LAEFF
            .byte $FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF
            ldx LAEFF
            .byte $FF
            ldx LAEFF
            .byte $FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF
            ldx LAEFF
            .byte $FF
            ldx LAEFF
            .byte $FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF,$AF,$FF
            ldx LAEFF
            .byte $FF
            ldx LAEFF
            .byte $FF
            lda LADFF
            .byte $FF
            lda LACFE+1
            .byte $FF
            ldy LACFE+1
            .byte $FF,$AB,$FF,$AB,$FF
            tax
            .byte $FF
            tax
            .byte $FF
            lda #$FF
            tay
            .byte $FF,$A7,$FF
            ldx L00FF
            ldy #$28
            .byte $6F
            and L126F,Y
            .byte $6F
            ora (SHFAMT),Y
            bpl L9055
            .byte $0F,$6F
            plp
            .byte $6F
            and L0E6F,Y
            .byte $6F
            ora L0C6F
            .byte $6F,$0B,$6F
            plp
            .byte $6F
            and L0A6F,Y
            .byte $6F
            ora #$6F
            php
            .byte $6F,$07,$6F
            plp
            ror L6D39
            php
            jmp (L6B07)
            asl RAMTOP
            ora SAVADR+1
            plp
            pla
            and L0467,Y
            ror CASINI+1
            adc CASINI
            .byte $64
            ora (LOGCOL,X)
            ora (FKDEF,X)
            .byte $17,$AF
            clc
            .byte $AF
            ora L1AAF,Y
            .byte $AF,$1B,$AF,$1C
            lda (ABUFPT,X)
            lda (ICCOMT,X)
            .byte $AF
            clc
            .byte $AF
            ora L1AAF,Y
            .byte $AF,$1B,$AF,$1C
            lda (ABUFPT,X)
            lda (ICCOMT,X)
            .byte $AF
            clc
            .byte $AF
            ora L1AAF,Y
            .byte $AF,$1B,$AF,$1C
            lda (ABUFPT,X)
            lda (ICCOMT,X)
            .byte $AF
            clc
            .byte $AF
            ora L1AAF,Y
            .byte $AF,$1B,$AF,$1C
            lda (ABUFPT,X)
            lda (ICCOMT,X)
            .byte $AF
            clc
L9055       .byte $AF
            ora L1AAF,Y
            .byte $AF,$1B,$AF,$1C
            lda (ABUFPT,X)
            ldy #$04
            .byte $6F
            ora SHFAMT
            asl SHFAMT
            .byte $07,$6F
            ora #$60
            asl SHFAMT
            ora SHFAMT
            asl SHFAMT
            .byte $07,$6F
            php
            .byte $6F
            ora #$6F
            asl
            .byte $6F,$0B,$6F,$0C,$6F
            ora L0E6F
            .byte $6F,$0F,$6F
            bpl L90F3
            ora (SHFAMT),Y
            .byte $12,$6F,$13,$6F,$14
L908B       .byte $6F
            ora BITMSK,X
            asl BUFSTR+1,X
            .byte $17
            jmp (L6B18)
            ora L1A6A,Y
            adc #$1B
            pla
            .byte $1C,$67
            ora L1E66,X
            adc ABUFPT+3
            rts
            asl L00CF
            ora L00CF
            asl L00CF
            .byte $07,$CF
            php
            .byte $CF
            ora #$CF
            asl
            .byte $CF,$0B,$CF,$0C,$CF
            ora L0ECF
            .byte $CF,$0F,$CF
            bpl L908B
            ora (L00CF),Y
            .byte $12,$CF,$13,$CF,$14,$CF
            ora L00CE,X
            asl L00CD,X
            .byte $17
            cpy LCB18
            ora L1ACA,Y
            cmp #$1B
            iny
            .byte $1C,$C7
            ora L1EC6,X
            cmp ABUFPT+3
            cpy #$EB
            .byte $AF
            inc.w L00AF,X
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L00EB,X)
            ldx LAEFD+1
            .byte $00
            lda (L0000,X)
            lda (L0000,X)
L90F3       lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L00EB,X)
            tax
            inc.w L00AA,X
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L00EB,X)
            lda L00FE
            lda L0000
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L0000,X)
            lda (L00EB,X)
            ldx #$FE
            ldx #$00
            ldy #$EB
            .byte $8F
            inc.w L008F,X
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L00EB,X)
            stx L8EFE
            .byte $00
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L00EB,X)
            txa
            inc.w L008A,X
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L00EB,X)
            .byte $87
            inc.w L0087,X
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L0000,X)
            sta (L00EB,X)
            sta L00FE
            sta L0000
            .byte $80,$0B
            sty L860E+1
            .byte $13,$8F,$17,$8F
            clc
            stx DSKFMS+1
            txa
            .byte $17
            txa
            .byte $1B
            sta DSKUTL+1
            sty L891C
            .byte $1C
            txa
            .byte $1A
            sty L851C+1
            .byte $1A
            stx L8A1C+1
            ora L1E87,X
            sta (DSKFMS+1,X)
            sta ABUFPT+2
            .byte $89
            asl L1E81,X
            .byte $87
            asl L1F86,X
            sta (ABUFPT+2,X)
            stx NGFLAG
            sta (ABUFPT+3,X)
            sta ABUFPT+1
            sta ABUFPT+3
            sta ABUFPT+3
            sta ABUFPT+3
            sta ABUFPT+3
            sta NGFLAG
            sta (ICHIDZ,X)
            sty ICHIDZ
            sta (ICHIDZ,X)
            .byte $80
            jmp (L6C6F)
            adc (MLTTMP,X)
            adc (MLTTMP,X)
            adc (FKDEF,X)
            adc (FKDEF,X)
            adc (OLDCOL,X)
            adc (OLDCOL,X)
            adc (COLCRS,X)
            .byte $6F
            eor FKDEF+1,X
            eor (FKDEF+1),Y
            eor (FKDEF+1),Y
            jmp L4C61
            adc (FMSZPG+5,X)
            adc (FMSZPG+5,X)
            adc (FMSZPG+1,X)
            .byte $6F,$44
            adc (FREQ,X)
            adc (FREQ,X)
            adc (NOCKSM,X)
            adc (NOCKSM,X)
            adc (RECVDN,X)
            adc L6139
            and FKDEF+1,X
            and FKDEF+1,X
            .byte $32
            adc (BUFRLO,X)
            adc (ICAX6Z,X)
            ror
            .byte $2F
            adc (ICAX4Z,X)
            adc (ICAX4Z,X)
            adc (ICAX1Z,X)
            adc (ICAX1Z,X)
            pla
            plp
            adc (ICBLLZ,X)
            adc (ICBAHZ,X)
            adc (ICBAHZ,X)
            ror ICSTAZ
            adc (ICSTAZ,X)
            adc (ICDNOZ,X)
            .byte $64
            and (FKDEF+1,X)
            .byte $1F,$63,$1F
L9203       adc (ABUFPT+1,X)
            .byte $62
            ora L5160,X
L9209       lda #$E5
L920B       tax
L920C       eor (L00AB),Y
            sbc L00AC
L9210       eor (L00AC),Y
L9212       sbc L00AC
L9214       eor (L00AC),Y
            sbc L00AB
L9218       eor (L00AA),Y
            sbc L00A9
            eor (L00A9),Y
            sbc L00A9
            eor (L00AA),Y
            sbc L00AB
            eor (L00AB),Y
            sbc L00AB
            eor (L00AB),Y
            sbc L00AA
            eor (L00A9),Y
            sbc L00A8
            eor (L00A8),Y
            sbc L00A8
            eor (L00A9),Y
            sbc L00AA
            eor (L00AA),Y
            sbc L00AA
            eor (L00AA),Y
            sbc L00A9
            eor (L00A8),Y
            sbc L00A7
            eor (L00A7),Y
L9246       sbc L00A7
            eor (L00A8),Y
            sbc L00A9
            eor (L00A9),Y
L924E       sbc L00A9
            eor (L00A9),Y
            sbc L00A8
            eor (L00A7),Y
L9256       sbc L00A6
            eor (L00A6),Y
            sbc L00A6
            eor (L00A7),Y
            sbc L00A8
            eor (L00A8),Y
            sbc L00A8
            eor (L00A8),Y
            sbc L00A7
            eor (L00A6),Y
            sbc L00A5
            eor (L00A4),Y
            sbc L00A3
            eor (L00A2),Y
            sbc L00A1
            eor (L00A0),Y
            bcc L9246+1
            bcc L9209
            bcc L9203+1
            bcc L9203
            bcc L924E+1
            bcc L9210+1
            bcc L920C
            bcc L920B
            bcc L9256+1
            bcc L9218+1
            bcc L9214
            bcc L9212+1
            ldx L00CF,Y
            ldx L008F,Y
            ldx L008E,Y
            ldx L008D,Y
            ldx L008C,Y
            ldx L008B,Y
            ldx L008A,Y
            ldx L0089,Y
            ldx L0088,Y
            ldx L0087,Y
            ldx L0086,Y
            ldx L0085,Y
            ldx L0084,Y
            ldx L0083,Y
            ldx L0082,Y
            ldx LOMEM+1,Y
            ldx LOMEM,Y
            and (L008E,X)
            and (L008E,X)
            and (L008E,X)
            .byte $23
            stx L8E28
            and L358E
            stx L8E44
            eor L008D,X
            rts
            sta L8D6C
            jmp (L6C8D)
            sty L8B72
            adc L798A,Y
            .byte $89
            adc L7988,Y
            .byte $87
            adc L7986,Y
            sta LOMEM
            .byte $44,$80,$43,$80,$42,$80
            eor (LOMEM,X)
            rti
            dey
            tay
            .byte $80
            lda #$79
            tax
            .byte $5B,$AB
            and L00A6,X
            .byte $32
            ldx ICAX6Z
            ldx L0088
            tay
            .byte $80
            lda #$79
            tax
            .byte $5B,$AB
            and L00A6,X
            .byte $32
            ldx ICAX4Z
            ldx ICBLLZ
            ldx L0088
            tay
            .byte $80
            lda #$79
            tax
            .byte $5B,$AB
            and L00A6,X
            .byte $32
            ldx ICAX4Z
            ldx ICBAHZ
            ldx L0088
            tay
            .byte $80
            lda #$79
            tax
            .byte $5B,$AB
            and L00A6,X
            .byte $32
            ldx ICAX1Z
            ldx ICSTAZ
            ldx L0088
            tay
            .byte $80
            lda #$79
            tax
            .byte $5B,$AB
            and L00A6,X
            .byte $32
            ldx ICBLLZ
            ldx ICDNOZ
            ldx L0088
            tay
            .byte $80
            lda #$79
            tax
            .byte $5B,$AB
            and L00A6,X
            .byte $32
            ldx ICBAHZ
            ldx ABUFPT+3
            ldx L0088
            tay
            .byte $80
            lda #$79
            tax
            .byte $5B,$AB
            and L00A6,X
            .byte $32
            ldx ICSTAZ
            ldx ABUFPT+1
            ldx L0088
            ldy #$16
            .byte $8F,$17,$8F
            clc
            .byte $8F
            ora L168F,Y
            .byte $8F,$17,$8F
            clc
            .byte $8F
            ora L1A8F,Y
            .byte $8F
            asl L008F,X
            .byte $17,$8F
            clc
            .byte $8F
            ora L1A8F,Y
            .byte $8F,$1B,$8F
            asl L008F,X
            .byte $17,$8F
            clc
            .byte $8F
            ora L1A8F,Y
            .byte $8F,$1B,$8F,$1C,$8F
            asl L008F,X
            .byte $17,$8F
            clc
            .byte $8F
            ora L1A8F,Y
            .byte $8F,$1B,$8F,$1C,$8F
            ora L1E8F,X
            .byte $8F
            asl L008F,X
            .byte $17,$8F
            clc
            .byte $8F
            ora L1A8F,Y
            .byte $8F,$1B,$8F,$1C,$8F
            ora L1E8F,X
            .byte $8F,$1F,$8F
            asl L008F,X
            .byte $17,$8F
            clc
            .byte $8F
            ora L1A8F,Y
            .byte $8F,$1B,$8F,$1C,$8F
            ora L1E8F,X
            .byte $8F,$1F,$8F
            jsr L208F
            .byte $80
L93BC       lda #$01
            sta L1439
            lda L00E2
            cmp #$01
            beq L93D2
            lda L00F1
            cmp #$01
            beq L93D2
            lda #$20
            sta L1439
L93D2       lda #$02
            sta L143A
            ldy #$07
L93D9       lda #$A0
            jsr L972E
            dey
            bne L93D9
L93E1       rts
L93E2       lda #$01
            sta L1439
            lda L00E2
            cmp #$01
            beq L93E1
            lda L00F1
            cmp #$01
            bne L93F8
            lda #$20
            sta L1439
L93F8       lda #$02
            sta L143A
            lda #$FF
            sta L00EE
            lsr L0510
            lda L00F1
            cmp #$01
            beq L9426
            lda L17C3
            jsr L9483
            lda L17C2
            jsr L9483
            lda L17C1
            jsr L9483
            sec
            ror L0510
            lda L17C0
            jmp L9483
L9426       lda L19C3
            jsr L9483
            lda L19C2
            jsr L9483
            lda L19C1
            jsr L9483
            sec
            ror L0510
            lda L19C0
            jmp L9483
L9442       lda #$01
            sta L1439
            lda L00E2
            cmp #$01
            beq L9458
            lda L00F1
            cmp #$01
            beq L9458
            lda #$20
            sta L1439
L9458       lda #$02
            sta L143A
            lda #$FF
            sta L00EE
            lsr L0510
            lda L1432
            jsr L9483
            lda L1431
            jsr L9483
            lda L1430
            jsr L9483
            sec
            ror L0510
            lda L142F
            jsr L9483
            jmp L93E2
L9483       sta L0517
            ldy #$01
L9488       lda #$00
            sta L0518
L948D       sec
            lda L0517
            sbc L9507,Y
            bcc L949E
            sta L0517
            inc L0518
            bne L948D
L949E       lda L0518
            asl
            asl
            asl
            sta L0516
            bit L0510
            bmi L94B5
            lda L0516
            beq L94B8
            sec
            ror L0510
L94B5       jsr L94BC
L94B8       dey
            bpl L9488
            rts
L94BC       sty L0519
            lda L143A
            asl
            asl
            asl
            clc
            adc L143A
            sta L0512
            sta L0513
            clc
            adc #$08
            sta L0514
L94D5       ldy L0513
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
L94E0       sta L00C0
            ldx L0516
            lda L950A,X
            ldy L1439
            and L00EE
            sta (L00C0),Y
            inc L0516
            inc L0513
            lda L0513
            cmp L0514
            bcc L94D5
            inc L0515
            inc L1439
            ldy L0519
            rts
L9507       ora (DOSVEC,X)
            .byte $64
L950A       .byte $FC
            cpy LCCCC
            cpy LCCCC
            .byte $FC,$3C
            cpy L0C0C
            .byte $0C,$0C,$0C,$0C,$FC
            cpy L300C
            bmi L94E0
            cpy #$FC
            .byte $FC,$0C,$0C,$FC,$0C,$0C,$0C,$FC
            cpy LCCCC
            cpy L0CFC
            .byte $0C,$0C,$FC
            cpy #$C0
            .byte $FC,$0C,$0C,$0C,$FC,$FC
            cpy #$C0
            .byte $FC
            cpy LCCCC
            .byte $FC,$FC,$0C,$0C
            bmi L9577
            cpy #$C0
            cpy #$FC
            cpy L30CC
            cpy LCCCC
            .byte $FC,$FC
            cpy LCCCC
            .byte $FC,$0C,$0C,$FC,$00,$00,$00,$00,$00,$00,$00,$00,$3F
            cpy #$CF
            cpy LCFCC
            cpy #$3F
            beq L9578
            cpy L0C0C
            cpy LF00C
L9572       .byte $3C,$C3,$C3,$C3,$FF
L9577       .byte $C3
L9578       .byte $C3,$C3,$FC,$C3,$C3,$FC,$C3,$C3,$C3,$FC,$3F
            cpy #$C0
            cpy #$C0
            cpy #$C0
            .byte $3F,$FC,$C3,$C3,$C3,$C3,$C3,$C3,$FC,$FF
            cpy #$C0
            .byte $FF
            cpy #$C0
            cpy #$FF
            .byte $FF
            cpy #$C0
            .byte $FF
            cpy #$C0
            cpy #$C0
            .byte $3F
            cpy #$C0
            .byte $CF,$C3,$C3,$C3,$3F,$C3,$C3,$C3,$FF,$C3,$C3,$C3,$C3,$FF
            bmi L95E5
            bmi L95E7
            bmi L95E9
            .byte $FF
            clc
            clc
            clc
            clc
            clc
            ora L0E19,Y
            .byte $C3,$C3
            cpy LCCFC
            .byte $C3,$C3,$C3
            cpy #$C0
            cpy #$C0
            cpy #$C0
            cpy #$FF
            .byte $C3,$FF,$F3,$C3
L95D6       .byte $C3,$C3,$C3,$C3,$C3,$F3,$F3,$FF,$CF,$CF,$C3,$C3,$3C,$C3,$C3
L95E5       .byte $C3
L95E6       .byte $C3
L95E7       .byte $C3,$C3
L95E9       .byte $3C,$FC,$C3,$C3,$FC
            cpy #$C0
            cpy #$C0
            .byte $1F
            ora L1919,Y
            ora L091D,Y
            .byte $17,$FC,$C3,$C3,$FC
            cpy LC3CC
            .byte $C3,$3F
            cpy #$C0
            .byte $3C,$03,$03,$03,$FC,$FF
            bmi L963B+2
            bmi L963F
            bmi L9641
            bmi L95D6
            .byte $C3,$C3,$C3,$C3,$C3,$C3,$3C,$C3,$C3,$C3,$C3,$C3,$3C,$3C
            bmi L95E6
            .byte $C3,$C3,$C3,$F3,$F3,$FF,$CF,$C3,$C3,$C3,$3C,$3C,$C3,$C3,$C3,$C3
            .byte $C3,$C3,$3C,$3C,$3C,$3C,$3C,$1F
L963B       ora L0408,Y
            .byte $02
L963F       ora (DSKFMS+1,X)
L9641       .byte $1F
L9642       lda #$08
            sta L1439
            lda #$06
            sta L143A
            lda #$FF
            sta L00EE
            ldy #$00
L9652       lda L96D6,Y
            beq L965D
            jsr L972E
            iny
            bne L9652
L965D       lda L009A
            lsr L0510
            jsr L9483
            ldy #$00
L9667       lda L96EE,Y
            beq L9672
            jsr L972E
            iny
            bne L9667
L9672       lda L009A
            cmp #$06
            bcc L967A
            lda #$05
L967A       lsr L0510
            jsr L9483
            sec
            ror L0510
            lda #$00
            jsr L9483
            lda #$22
            sta L00E3
            lda #$90
            sta L00DF
            lda #$00
            sta L00E4
            jmp L96A2
L9698       lda L00E4
            clc
            adc #$04
            sta L00E4
            bpl L96A2
            rts
L96A2       ldy L00E4
            lda L0AEB,Y
            beq L9698
            lda L0AEE,Y
            and #$07
            bne L9698
            lda #$00
            sta L00F9
            jsr L1F00
            jsr L96C7
            jsr L9442
            clc
            lda L00E3
            adc #$0A
            sta L00E3
            jmp L9698
L96C7       lda L009A
            cmp #$06
            bcc L96CF
            lda #$05
L96CF       clc
            adc #$07
            jmp LA7B2
            rts
L96D6       cmp (L00A0,X)
            .byte $D4
            ldy #$D4
            ldy #$C1
            ldy #$C3
            ldy #$CB
            ldy #$A0
            ldy #$D7
            ldy #$C1
            ldy #$D6
            ldy #$C5
            ldy #$A0
            .byte $00
L96EE       sta LA08C+1
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$C3
            ldy #$CF
            ldy #$CD
            ldy #$D0
            ldy #$CC
            ldy #$C5
            ldy #$D4
            ldy #$C5
            ldy #$C4
            sta L8D8D
            sta L8D8D
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            .byte $C2
            ldy #$CF
            ldy #$CE
            ldy #$D5
            ldy #$D3
            ldy #$A0
            cld
            ldy #$A0
            .byte $00
L972E       pha
            lda L143A
            asl
            asl
            asl
            clc
            adc L143A
            sta L0512
            lda L1439
            sta L0515
            pla
            cmp #$C0
            beq L9758
            cmp #$8D
            beq L9769
            cmp #$A0
            beq L9772
            cmp #$C1
            bcc L977B
            cmp #$DB
            bcc L978F
L9757       rts
L9758       lda #$58
            sta L0516
            jsr L94BC
            lda #$60
            sta L0516
            jsr L94BC
            rts
L9769       lda #$00
            sta L1439
            inc L143A
            rts
L9772       lda #$50
            sta L0516
            jsr L94BC
            rts
L977B       cmp #$B0
            bcc L9757
            cmp #$BA
            bcs L9757
            and #$0F
            asl
            asl
            asl
            sta L0516
            jsr L94BC
            rts
L978F       sec
            sbc #$C1
            asl
            asl
            asl
            sta L0516
            sty L0519
            lda L0512
            sta L0513
            clc
            adc #$08
            sta L0514
L97A7       ldy L0513
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldx L0516
            lda L9572,X
            and L00EE
            ldy L0515
            sta (L00C0),Y
            inc L0516
            inc L0513
            lda L0513
            cmp L0514
            bcc L97A7
            inc L0515
            ldy L0519
            inc L1439
            rts
L97D9       lda #$01
            sta L0501
            sta L00E4
            jsr L97F7
            jsr L9830
            rts
L97E7       lda #$0A
            sta L0501
            lda #$FF
            sta L00E4
            jsr L97F7
            jsr L9868
            rts
L97F7       ldx #$00
L97F9       jsr L8CF2
            and #$0F
            sec
            sbc #$07
            cmp #$08
            beq L97F9
            sta L0400,X
            inx
            bne L97F9
            lda #$00
            sta L050C
            lda #$BF
            sta L050D
            lda #$04
            sta L050E
            lda #$9C
            sta L050F
            lda L00C3
            clc
            adc #$05
            sta L0507
            lda L00C4
            clc
            adc #$04
            sta L0508
            rts
L9830       lda #$FF
            sta L00E3
            jsr L9895
            inc L0501
            jsr L9895
L983D       dec L0501
            jsr L9895
            inc L0501
            inc L0501
            jsr L9895
            lda L0501
            lsr
            eor #$0F
            ora #$70
            sta COLOR2
            lda L0501
            cmp #$10
            bcc L983D
            jsr L9895
            dec L0500
            jsr L9895
            rts
L9868       lda #$FF
            sta L00E3
            jsr L9895
            dec L0501
            jsr L9895
L9875       inc L0501
            jsr L9895
            dec L0501
            dec L0501
            jsr L9895
            lda L0501
            cmp #$01
            bcs L9875
            jsr L9895
            inc L0501
            jsr L9895
            rts
L9895       lda #$00
            sta L0509
L989A       lda L0501
            sta L0500
            inc L0500
            lda L0509
            tax
            lda L0400,X
            sta L0503
            lda L0401,X
            sta L0504
            lda L0507
            sta L0505
            lda L0508
            sta L0506
L98BF       clc
            lda L0503
            adc L0505
            sta L0505
            clc
            lda L0504
            adc L0506
            sta L0506
            dec L0500
            bne L98BF
            bit L00E4
            bmi L98F6
            ldy L0506
            cpy L050C
            bcc L9946
            cpy L050D
            bcs L9946
            ldx L0505
            cpx L050E
            bcc L9946
            cpx L050F
            bcs L9946
L98F6       ldx L0505
            ldy L0506
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldy L1B00,X
            lda L00E3
            and L1C00,X
            eor (L00C0),Y
            sta (L00C0),Y
            lda L00E3
            and L1C01,X
            ldy L1B01,X
            eor (L00C0),Y
            sta (L00C0),Y
            ldy L0506
            lda L1E01,Y
            sta L00C1
            lda L1D01,Y
            sta L00C0
            ldy L1B00,X
            lda L00E3
            and L1C00,X
            eor (L00C0),Y
            sta (L00C0),Y
            lda L00E3
            and L1C01,X
            ldy L1B01,X
            eor (L00C0),Y
            sta (L00C0),Y
            jmp L9951
L9946       ldx L0509
            lda #$00
            sta L0400,X
            sta L0401,X
L9951       inc L0509
            inc L0509
            lda L0509
            cmp #$FA
            bcs L9961
            jmp L989A
L9961       rts
L9962       lda #$00
            sta L00F9
            lda L00C5
            bmi L9978
            lda L00C3
            sec
            sbc #$06
            sta L00E3
            lda L00C4
            sta L00DF
            jmp LAB2C
L9978       lda L00C3
            clc
            adc #$0B
            sta L00E3
            lda L00C4
            sta L00DF
            jmp LAB2C
L9986       bit L0D2B
            bmi L9994
            lda #$00
            sta AUDF2
            sta AUDC2
            rts
L9994       lda #$1F
            sta AUDF2
            lda #$82
            sta AUDC2
            lda L00C5
            bmi L99B9
            lda L00C3
            sec
            sbc #$06
            sta L00E3
            lda L00C4
            sta L00DF
            lda L0085
            and #$01
            clc
            adc #$13
            sta L0088
            jmp L1F80
L99B9       lda L00C3
            clc
            adc #$0B
            sta L00E3
            lda L00C4
            sta L00DF
            lda L0085
            and #$01
            clc
            adc #$11
            sta L0088
            jmp L1F80
L99D0       lsr ATRACT
            ldy #$00
L99D4       lda L051A,Y
            beq L99E6
            tya
            clc
            adc #$04
            tay
            cpy #$10
            bcc L99D4
            jsr LB47F
            rts
L99E6       lda L00C4
            clc
            adc #$05
            sta L051A,Y
            lda L00C3
            and #$FC
            ldx L00C5
            bmi L99FC
            clc
            adc #$0C
            jmp L99FF
L99FC       sec
            sbc #$04
L99FF       sta L051B,Y
            sta L051C,Y
            lda L00C5
            bmi L9A0E
            lda #$02
            jmp L9A10
L9A0E       lda #$FE
L9A10       sta L051D,Y
            jsr L8D98
            rts
L9A17       lda L00C2
            clc
            adc #$04
            sta L00C2
            cmp #$10
            bcc L9A26
            lda #$00
            sta L00C2
L9A26       ldy L00C2
            lda L051A,Y
            bne L9A2E
            rts
L9A2E       tax
            lda L1E00,X
            sta L00C1
            lda L1D00,X
            sta L00C0
            lda L051C,Y
            beq L9A80
            clc
            adc L051D,Y
            cmp #$A0
            bcc L9A48
            lda #$00
L9A48       sta L051C,Y
            beq L9A7F
            tax
            ldy L1B00,X
            lda #$FF
            sta (L00C0),Y
            ldy L00C2
            lda L051C,Y
            sec
            sbc L051B,Y
            bcs L9A64
            eor #$FF
            adc #$01
L9A64       cmp #$10
            bcc L9A7F
            lda L051C,Y
            cmp L051B,Y
            bcc L9A75
            sbc #$0C
            jmp L9A77
L9A75       adc #$0C
L9A77       tax
            ldy L1B00,X
            lda L00C6
            sta (L00C0),Y
L9A7F       rts
L9A80       lda L051B,Y
            clc
            adc L051D,Y
            sta L051B,Y
            tax
            cmp #$A0
            bcc L9A94
            lda #$00
            sta L051A,Y
L9A94       ldy L1B00,X
            lda #$00
            sta (L00C0),Y
            rts
L9A9C       sec
            lda L00DD
            sbc L0089
            sta L00E3
            lda L00DE
            sbc L008A
            sta L00E4
            bcs L9AB7
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
L9AB7       lda L00E4
            bne L9ACF
            lda L00E3
            cmp #$A0
            bcs L9ACF
            ldy #$00
L9AC3       lda L0AEB,Y
            beq L9AD0
            tya
            clc
            adc #$04
            tay
            bpl L9AC3
L9ACF       rts
L9AD0       inc L00BA
            lda L00DF
            sta L0AEB,Y
            lda L00DD
            sta L0AEC,Y
            lda L00DE
            sta L0AED,Y
            lda L0094
            sta L0AEE,Y
            lda #$E2
            sta L0B6D,Y
            lda L0094
            cmp #$0B
            beq L9ACF
            lda L00C4
            sec
            sbc L00DF
            bcs L9B0E
            eor #$FF
            adc #$01
            lsr
            lsr
            lsr
            lsr
            lsr
            adc #$01
            eor #$FF
            clc
            adc #$01
            sta L0B6B,Y
            jmp L9B18
L9B0E       lsr
            lsr
            lsr
            lsr
            lsr
            adc #$01
            sta L0B6B,Y
L9B18       lda L00F9
            cmp #$06
            bne L9B3B
            tya
            pha
            jsr L8DEC
            pla
            tay
            lda L00C3
            cmp L00E3
            bcs L9B33
            lda #$FC
            sta L0B6C,Y
            jmp L9ACF
L9B33       lda #$04
            sta L0B6C,Y
            jmp L9ACF
L9B3B       tya
            pha
            lda L00F9
            and #$07
            cmp #$02
            beq L9B4B
            jsr L8DFA
            jmp L9B4E
L9B4B       jsr L8DDE
L9B4E       pla
            tay
            lda #$00
            sta L00E5
            lda L00C6
            bpl L9B5C
            lda L00D5
            sta L00E5
L9B5C       lda L00C3
            sec
            sbc L00E3
            bcs L9B79
            eor #$FF
            adc #$01
            lsr
            lsr
            lsr
            lsr
            lsr
            adc #$01
            eor #$FF
            clc
            adc L00E5
            sta L0B6C,Y
            jmp L9ACF
L9B79       lsr
            lsr
            lsr
            lsr
            lsr
            adc L00E5
            sta L0B6C,Y
            jmp L9ACF
            ldy L0098
            ldx L0098
            inc L0B6D,X
            bne L9B9A
L9B8F       lda #$00
            sta L00DF
            lda #$80
            sta L00DE
            jmp L9BD9
L9B9A       lda L00F9
            cmp #$0B
            beq L9BE0
            lda L0B6B,X
            clc
            adc L00DF
            sta L00DF
            lda L00DF
            cmp #$20
            bcc L9B8F
            cmp #$C0
            bcs L9B8F
            lda L0B6C,X
            bmi L9BC5
            clc
            adc L00DD
            sta L00DD
            lda L00DE
            adc #$00
            sta L00DE
            jmp L9BD9
L9BC5       eor #$FF
            clc
            adc #$01
            sta L00E3
            sec
            lda L00DD
            sbc L00E3
            sta L00DD
            lda L00DE
            sbc #$00
            sta L00DE
L9BD9       lda #$0D
            sta L0088
            jmp LA5B2
L9BE0       lda #$10
            sta L0088
            jmp LA5B2
L9BE7       ldy #$00
L9BE9       lda L052B,Y
            beq L9BF8
            tya
            clc
            adc #$04
            tay
            cpy #$80
            bcc L9BE9
            rts
L9BF8       lda L00CA
            sta L052B,Y
            lda L00C9
            .byte $99
;
            org $A000
;
            lda #$28
            sta L00DB
            lda #$50
            sta L00DC
LA008       ldy #$00
            lda (L00E7),Y
            lsr
            lsr
            lsr
            tay
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldx L00DB
            ldy L1B00,X
            lda #$55
            and L1C00,X
            ora (L00C0),Y
            sta (L00C0),Y
            inc L00DB
            clc
            lda L00E7
            adc #$08
            sta L00E7
            bcc LA035
            inc L00E8
LA035       dec L00DC
            bne LA008
LA039       lda L009A
            and #$03
            tay
            lda LA0AB,Y
            sta L00BC
            ldy #$1D
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldy #$27
            ldx #$00
LA053       lda L00BC
            sta (L00C0),Y
            inx
            dey
            bpl LA053
            ldy #$00
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldy #$1E
            lda L00BC
            and #$C0
            sta (L00C0),Y
            dey
            ldx #$00
LA072       lda L00BC
            sta (L00C0),Y
            dey
            inx
            cpx #$14
            bcc LA072
            ldy #$01
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldy #$15
            lda #$FF
LA08C       sta (L00C0),Y
            dey
            cpy #$12
            bcs LA08C
            ldy #$1C
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldy #$15
            lda #$FF
LA0A3       sta (L00C0),Y
            dey
            cpy #$12
            bcs LA0A3
            rts
LA0AB       tax
            eor L00FF,X
            .byte $00
LA0AF       sec
            lda L00DD
            sbc L008D
            sta L00E3
            lda L00DE
            sbc L008E
            sta L00E4
            bcs LA0CA
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LA0CA       lsr L00E4
            ror L00E3
            lsr L00E4
            ror L00E3
            lsr L00E4
            ror L00E3
            clc
            lda L00E3
            adc #$28
            sta L00E3
            lda L00DF
            lsr
            lsr
            lsr
            tay
            pha
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldx L00E3
            ldy L1B00,X
            lda L00A9
LA0F5       and L1C00,X
            ora (L00C0),Y
            sta (L00C0),Y
            ldy L1B01,X
            lda L00A9
            and L1C01,X
            ora (L00C0),Y
            sta (L00C0),Y
            pla
            tay
            lda L1E01,Y
            sta L00C1
            lda L1D01,Y
            sta L00C0
            ldy L1B00,X
            lda L00A9
            and L1C00,X
            ora (L00C0),Y
            sta (L00C0),Y
            ldy L1B01,X
            lda L00A9
            and L1C01,X
            ora (L00C0),Y
            sta (L00C0),Y
            rts
LA12D       sec
            lda L00DD
            sbc L008F
            sta L00E3
            lda L00DE
            sbc L0090
            sta L00E4
            bcs LA148
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LA148       lsr L00E4
            ror L00E3
            lsr L00E4
            ror L00E3
            lsr L00E4
            ror L00E3
            clc
            lda L00E3
            adc #$28
            sta L00E3
            lda L00DF
            lsr
            lsr
            lsr
            tay
            pha
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldx L00E3
            ldy L1B00,X
            lda #$00
            sta (L00C0),Y
            ldy L1B01,X
            sta (L00C0),Y
            pla
            tay
            lda L1E01,Y
            sta L00C1
            lda L1D01,Y
            sta L00C0
            ldy L1B00,X
            lda #$00
            sta (L00C0),Y
            ldy L1B01,X
            sta (L00C0),Y
            rts
LA193       lda L00C4
            lsr
            lsr
            lsr
            sec
            sbc #$01
            sta L00E3
            tay
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            lda L00C3
            lsr
            lsr
            lsr
            clc
            adc #$46
            sta L00E4
            tax
            ldy L1B00,X
            lda #$FF
            and L1C00,X
            ora (L00C0),Y
            sta (L00C0),Y
            ldy L00E3
            lda L1E01,Y
            sta L00C1
            lda L1D01,Y
            sta L00C0
            ldx L00E4
            ldy L1AFF,X
            lda #$FF
            and L1BFF,X
            ora (L00C0),Y
            sta (L00C0),Y
            ldy L1B00,X
            lda #$FF
            and L1C00,X
            ora (L00C0),Y
            sta (L00C0),Y
            ldy L1B01,X
            lda #$FF
            and L1C01,X
            ora (L00C0),Y
            sta (L00C0),Y
            ldy L00E3
            lda L1E02,Y
            sta L00C1
            lda L1D02,Y
            sta L00C0
            ldx L00E4
            ldy L1B00,X
            lda #$FF
            and L1C00,X
            ora (L00C0),Y
            sta (L00C0),Y
            rts
LA20C       lda L00C4
            lsr
            lsr
            lsr
            sec
            sbc #$01
            sta L00E3
            tay
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            lda L00C3
            lsr
            lsr
            lsr
            clc
            adc #$46
            sta L00E4
            tax
            ldy L1B00,X
            lda #$00
            sta (L00C0),Y
            ldy L00E3
            lda L1E01,Y
            sta L00C1
            lda L1D01,Y
            sta L00C0
            ldx L00E4
            ldy L1AFF,X
            lda #$00
            sta (L00C0),Y
            ldy L1B00,X
            sta (L00C0),Y
            ldy L1B01,X
            sta (L00C0),Y
            ldy L00E3
            lda L1E02,Y
            sta L00C1
            lda L1D02,Y
            sta L00C0
            ldx L00E4
            ldy L1B00,X
            lda #$00
            sta (L00C0),Y
            rts
LA268       ldy #$00
LA26A       lda #$00
            sta L0AEB,Y
            sta L0B6B,Y
            sta L052B,Y
            sta L0C6B,Y
            iny
            bpl LA26A
LA27B       sta L0C6B,Y
            iny
            cpy #$C0
            bcc LA27B
            ldx #$00
LA285       lda #$00
            sta L051A,X
            inx
            cpx #$10
            bcc LA285
            ldx #$00
LA291       lda LAA7B,X
            sta L1F00,X
            lda LAAD7,X
            sta L1F80,X
            inx
            bpl LA291
            lda #$2F
            sta L00E7
            lda #$0D
            sta L00E8
            ldy #$00
LA2AA       lda #$00
            sta (L00E7),Y
            inc L00E7
            bne LA2B4
            inc L00E8
LA2B4       lda L00E7
            cmp #$2F
            lda L00E8
            sbc #$14
            bcc LA2AA
            ldx #$00
LA2C0       lda LA8B3,X
            sta L0D2F,X
            lda LA8C3,X
            sta L0D6F,X
            lda LA8D3,X
            sta L0DAF,X
            lda LA8E3,X
            sta L0DEF,X
            lda LA8F3,X
            sta L0E2F,X
            lda LA903,X
            sta L0E6F,X
            lda LA912+1,X
            sta L0EAF,X
            lda LA923,X
            sta L0EEF,X
            lda LA932+1,X
            sta L0F2F,X
            lda LA943,X
            sta L0F6F,X
            lda LA953,X
            sta L0FAF,X
            lda LA963,X
            sta L0FEF,X
            lda LA973,X
            sta L102F,X
            lda LA981+2,X
            sta L106F,X
            lda LA993,X
            sta L10AF,X
            lda LA9A3,X
            sta L10EF,X
            lda LA9B3,X
            sta L112F,X
            lda LA9E3,X
            sta L116F,X
            lda LA9F3,X
            sta L11AF,X
            lda LA9C3,X
            sta L11EF,X
            lda LA9D3,X
            sta L122F,X
            lda LAA03,X
            sta L126F,X
            lda LAA13,X
            sta L12AF,X
            lda LAA23,X
            sta L12EF,X
            lda LAA33,X
            sta L132F,X
            lda LAA43,X
            sta L136F,X
            lda LAA53,X
            sta L13AF,X
            lda LAA63,X
            sta L13EF,X
            inx
            cpx #$10
            bcs LA370
            jmp LA2C0
LA370       lda #$2F
            sta LOMEM
            lda #$0D
            sta LOMEM+1
            jsr LAB9F
            lda #$AF
            sta LOMEM
            lda #$13
            sta LOMEM+1
            jsr LAB9F
            lda #$EF
            sta LOMEM
            lda #$13
            sta LOMEM+1
            jsr LAB9F
            lda #$6F
            sta LOMEM
            lda #$10
            sta LOMEM+1
            jsr LAB9F
            lda #$6F
            sta LOMEM
            lda #$0D
            sta LOMEM+1
            jsr LAB9F
            lda #$2F
            sta LOMEM
            lda #$13
            sta LOMEM+1
            jsr LAB9F
            lda #$6F
            sta LOMEM
            lda #$13
            sta LOMEM+1
            jsr LAB9F
            lda #$AF
            sta LOMEM
            lda #$0D
            sta LOMEM+1
            jsr LAB9F
            lda #$EF
            sta LOMEM
            lda #$0D
            sta LOMEM+1
            jsr LAB9F
            lda #$2F
            sta LOMEM
            lda #$0E
            sta LOMEM+1
            jsr LAB9F
            lda #$6F
            sta LOMEM
            lda #$0E
            sta LOMEM+1
            jsr LAB9F
            lda #$AF
            sta LOMEM
            lda #$0E
            sta LOMEM+1
            jsr LAB9F
            lda #$EF
            sta LOMEM
            lda #$0E
            sta LOMEM+1
            jsr LAB9F
            lda #$2F
            sta LOMEM
            lda #$0F
            sta LOMEM+1
            jsr LAB9F
            lda #$6F
            sta LOMEM
            lda #$0F
            sta LOMEM+1
            jsr LAB9F
            lda #$AF
            sta LOMEM
            lda #$0F
            sta LOMEM+1
            jsr LAB9F
            lda #$EF
            sta LOMEM
            lda #$0F
            sta LOMEM+1
            jsr LAB9F
            lda #$2F
            sta LOMEM
            lda #$10
            sta LOMEM+1
            jsr LAB9F
            lda #$AF
            sta LOMEM
            lda #$10
            sta LOMEM+1
            jsr LAB9F
            lda #$EF
            sta LOMEM
            lda #$10
            sta LOMEM+1
            jsr LAB9F
            lda #$2F
            sta LOMEM
            lda #$11
            sta LOMEM+1
            jsr LAB9F
            lda #$6F
            sta LOMEM
            lda #$11
            sta LOMEM+1
            jsr LAB9F
            lda #$AF
            sta LOMEM
            lda #$11
            sta LOMEM+1
            jsr LAB9F
            lda #$EF
            sta LOMEM
            lda #$11
            sta LOMEM+1
            jsr LAB9F
            lda #$2F
            sta LOMEM
            lda #$12
            sta LOMEM+1
            jsr LAB9F
            lda #$6F
            sta LOMEM
            lda #$12
            sta LOMEM+1
            jsr LAB9F
            lda #$AF
            sta LOMEM
            lda #$12
            sta LOMEM+1
            jsr LAB9F
            lda #$EF
            sta LOMEM
            lda #$12
            sta LOMEM+1
            jsr LAB9F
            rts
LA4A5       ldy #$00
LA4A7       lda L0AEB,Y
            beq LA4B6
            tya
            clc
            adc #$04
            tay
            cpy #$80
            bcc LA4A7
            rts
LA4B6       lda L00DF
            sta L0AEB,Y
            lda L00DD
            sta L0AEC,Y
            lda L00DE
            sta L0AED,Y
            lda L00F9
            sta L0AEE,Y
            clc
            rts
LA4CC       lda #$7C
            sta L0098
            lda #$00
            sta L009C
            sta L00A1
            sta L00A2
            inc L0085
            jmp LA520
LA4DD       lda L0098
            sec
            sbc #$04
            sta L0098
            bpl LA520
            bit L00EF
            bpl LA4ED
            jmp LB64C
LA4ED       lda L00E1
            beq LA4F6
            bit L00ED
            bpl LA4F6
            rts
LA4F6       lda L009C
            ora L009B
            ora L009D
            bne LA509
            jsr LB86D
            jsr LB769
            pla
LA505       pla
            jmp L83C9
LA509       lda L00A0
            bmi LA51F
            lda L00A1
            bne LA51F
            jsr LB769
            jsr L9E0A
            sec
            ror L00A0
            pla
            pla
            jmp L8465
LA51F       rts
LA520       ldy L0098
            lda L0AEB,Y
            beq LA4DD
            sta L00DF
            lda L0AEC,Y
            sta L00DD
            lda L0AED,Y
            sta L00DE
            lda L0AEE,Y
            sta L00F9
            and #$07
            cmp #$03
            beq LA556
            lda L0085
            and #$03
            asl
            asl
            asl
            sta L00E3
            lda L00F9
            and #$07
            adc L00E3
            tay
            lda LA592,Y
            sta L00A9
            jsr LA12D
LA556       jsr LA786
            bcs LA56D
            lda L00F9
            cmp #$07
            bne LA56D
            lda L00E3
            clc
            adc #$05
            sta L00E3
            bcs LA56D
            jsr LAB2C
LA56D       lda L00F9
            and #$07
            asl
            tay
            lda LA582,Y
            sta L00A7
            lda LA582+1,Y
            sta L00A8
            ldy L0098
            jmp (L00A7)
LA582       inc L00AE
            stx LF4B0
            .byte $B2
            stx L009B
            sbc (L00B3),Y
            sta L00B4
            lda L00B4
            .byte $D4
            tsx
LA592       .byte $FF
            eor L00AA,X
            .byte $00,$FF
            tax
            tax
            eor L00FF,X
            eor COLCRS,X
            .byte $00
            tax
            .byte $FF
            tax
            .byte $FF,$FF
            eor L00AA,X
            .byte $00,$FF
            eor L00AA,X
            eor L00FF,X
            eor COLCRS,X
            .byte $00
            tax
            .byte $FF
            tax
            .byte $FF
LA5B2       sec
            lda L00DD
            sbc L0089
            sta L00E3
            lda L00DE
            sbc L008A
            sta L00E4
            bcs LA5CD
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LA5CD       lda L00DE
            bmi LA5EB
            lda L00DD
            cmp #$80
            lda L00DE
            sbc #$02
            bcc LA5F8
            sec
            lda L00DD
            sbc #$80
            sta L00DD
            lda L00DE
            sbc #$02
            sta L00DE
            jmp LA5F8
LA5EB       clc
            lda L00DD
            adc #$80
            sta L00DD
            lda L00DE
            adc #$02
            sta L00DE
LA5F8       ldy L0098
            lda L00DF
LA5FC       sta L0AEB,Y
            lda L00DD
            sta L0AEC,Y
            lda L00DE
            sta L0AED,Y
            lda L00F9
            sta L0AEE,Y
            lda L00F9
            and #$07
            cmp #$03
            beq LA629
            ldx #$00
LA618       lda L051A,X
            bne LA645
LA61D       txa
            clc
            adc #$04
            tax
            cpx #$10
            bcc LA618
            jsr LA0AF
LA629       jsr LA749
            bcs LA642
            lda L00F9
            cmp #$07
            bne LA642
            lda L00E3
            clc
            adc #$05
            sta L00E3
            bcs LA642
            lda #$19
            jsr L1F80
LA642       jmp LA4DD
LA645       lda L00DF
            cmp L051A,X
            bcs LA61D
            adc #$08
            cmp L051A,X
            bcc LA61D
            lda L00E4
            bne LA61D
            lda L00E3
            cmp #$A0
            bcs LA61D
            lda L051D,X
            bpl LA676
            lda L00E3
            cmp L051B,X
            bcs LA673
            lda L051C,X
            clc
            adc #$01
            cmp L00E3
            bcc LA687
LA673       jmp LA61D
LA676       lda L00E3
            cmp L051B,X
            bcc LA673
            lda L051C,X
            sec
            sbc #$01
            cmp L00E3
            bcc LA673
LA687       lda #$00
            sta L051C,X
            lda L00F9
            cmp #$05
            bne LA698
            jsr LA711
            jmp LA6BB
LA698       cmp #$11
            bne LA6BB
            ldy L0098
            lda L0B6B,Y
            tay
            lda L0AEB,Y
            beq LA6BB
            lda L0AEE,Y
            cmp #$08
            bne LA6BB
            lda #$10
            sta L0AEE,Y
            lda #$00
            sta L0B6B,Y
            jsr L8E08
LA6BB       lda L00E3
            sta L00C9
            lda L00DF
            clc
            adc #$04
            sta L00CA
            lda #$01
            sta L00CB
            ldy L0098
            lda #$00
            sta L0AEB,Y
            lda L00F9
            and #$07
            beq LA6FF
            cmp #$05
            beq LA6F3
            cmp #$07
            beq LA6ED
            cmp #$06
            beq LA6F9
            cmp #$04
            bne LA705
            jsr L8DB4
            jmp LA708
LA6ED       jsr L8DC2
            jmp LA708
LA6F3       jsr L8DD0
            jmp LA708
LA6F9       jsr L8DA6
            jmp LA708
LA6FF       jsr L8E24
            jmp LA708
LA705       jsr L8DB4
LA708       jsr L9BE7
            jsr LA7AE
            jmp LA4DD
LA711       lda L00DF
            pha
            sec
            sbc #$12
            sta L00DF
            cmp #$20
            bcs LA721
            lda #$20
            sta L00DF
LA721       lda #$06
            sta L00F9
LA725       pha
            jsr LA4A5
            bcs LA734
            jsr L8CF2
            sta L0B6B,Y
            sta L0B6C,Y
LA734       clc
            lda L00DF
            adc #$06
            sta L00DF
            pla
            sec
            sbc #$01
            bne LA725
            pla
            sta L00DF
            lda #$05
            sta L00F9
            rts
LA749       sec
            lda L00DD
            sbc L0089
            sta L00E3
            lda L00DE
            sbc L008A
            sta L00E4
            bcs LA764
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LA764       lda L00E4
            bne LA784
            lda L00E3
            cmp #$A0
            bcs LA784
            lda L00F9
            and #$07
            beq LA77F
            lda L00E3
            pha
            jsr LB5FB
            pla
            sta L00E3
            bcs LA784
LA77F       lda L0088
            jmp L1F00
LA784       sec
            rts
LA786       sec
            lda L00DD
            sbc L008B
            sta L00E3
            lda L00DE
            sbc L008C
            sta L00E4
            bcs LA7A1
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LA7A1       lda L00E4
            bne LA784
            lda L00E3
            cmp #$A0
            bcs LA784
            jmp LAB2C
LA7AE       lda L00F9
            and #$07
LA7B2       asl
            tay
            clc
            lda LA7FD,Y
            adc L142F
            sta L142F
            cmp #$64
            bcc LA7CA
            sbc #$64
            sta L142F
            inc L1430
LA7CA       clc
            lda LA7FE,Y
            adc L1430
            sta L1430
            cmp #$64
            bcc LA7FA
            sbc #$64
            sta L1430
            inc L1431
            txa
            pha
            jsr L8E5C
            pla
            tax
            inc L009E
            inc L00A5
            lda L1431
            cmp #$64
            bcc LA7FA
            sbc #$64
            sta L1431
            inc L1432
LA7FA       lsr L00AD
            rts
LA7FD       .byte $00
LA7FE       .byte $00,$32
            ora (BUFRLO,X)
            ora (DSKFMS+1,X)
            .byte $00,$32,$02,$00
            asl
            .byte $00,$02,$00,$02,$00
            ora (L0000,X)
            .byte $02,$00,$03,$00,$04,$00
LA816       ora L00A0
            .byte $00
LA819       jsr L8CF2
            and #$7F
            adc #$20
            sta L0C2B,Y
            jsr L8CF2
            and #$7F
            sta L0C2C,Y
            iny
            iny
            cpy #$20
            bcc LA819
            rts
LA832       jsr L8CF2
            lda L0095
            clc
            adc #$02
            sta L0095
LA83C       cmp #$20
            bcc LA844
            lda #$00
            sta L0095
LA844       ldy L0095
            lda L0C2B,Y
            sta L00DF
            ldx L0C2C,Y
            stx L00DD
            tay
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            lda #$00
            ldy L1B00,X
            sta (L00C0),Y
            lda L0095
            and #$02
            bne LA874
            lda L00C7
            and #$1F
            bne LA874
            lda L00C6
            and #$7F
            sta L00DD
LA874       lda L00D5
            bpl LA88C
            eor #$FF
            clc
            adc #$01
            adc L00DD
            sta L00DD
            cmp #$A0
            bcc LA899
            sbc #$A0
            sta L00DD
            jmp LA899
LA88C       lda L00DD
            sec
            sbc L00D5
            sta L00DD
            bcs LA899
            adc #$A0
            sta L00DD
LA899       ldy L0095
            lda L00DD
            sta L0C2C,Y
            lda L00C6
            and #$07
            beq LA8B2
            ldx L00DD
            lda L00C6
            and L1C00,X
            ldy L1B00,X
            sta (L00C0),Y
LA8B2       rts
LA8B3       plp
            .byte $00
            plp
            .byte $00,$14,$00,$14,$00,$14,$00,$0C,$00,$0C,$00,$0C,$00
LA8C3       .byte $00,$00
            ora L0000,X
            .byte $44
            rti
            .byte $44
            rti
            ora L0000,X
            .byte $04,$00
            ora L0000,X
            .byte $44
            rti
LA8D3       .byte $1F,$00
            ora L0000,X
            eor (FREQ),Y
            eor (FREQ),Y
            ora L0000,X
            .byte $04,$00
            ora L0000,X
            .byte $44
            rti
LA8E3       .byte $3C,$00
            and L6A00,X
            rti
            ror
            rti
            ror
            rti
            rol
            .byte $00
            ora L4800,Y
            rti
LA8F3       .byte $00,$00
            ora (L0000),Y
            ror
            rti
            ror
            rti
            ror
            rti
            rol
            .byte $00
            ora L4800,Y
            rti
LA903       bmi LA905
LA905       .byte $F4,$00
            cpx LAEFF+1
            .byte $80,$EB,$80,$AB
            cpy #$EB
            cpy #$AF
LA912       cpy #$00
            .byte $00,$00,$00,$00,$00
            dey
            .byte $00
            dey
            .byte $00,$FF
            cpy #$FC
            .byte $00,$00,$00
LA923       bmi LA925
LA925       .byte $F4,$00
            ldy LEF00,X
            .byte $80,$AB,$80
            nop
            cpy #$AB
            cpy #$AF
LA932       cpy #$00
            .byte $00,$00,$00,$00,$00
            jsr L2800
            .byte $00,$FF
            cpy #$FC
            .byte $00,$00,$00
LA943       .byte $00,$00,$00,$00,$00,$00
            php
            .byte $80
            php
            .byte $80,$FF
            cpy #$0F
            cpy #$00
            .byte $00
LA953       .byte $03,$00,$07
            cpy #$0E
            cpy #$BE
            .byte $80
            tsx
            cpy #$FA
            .byte $80,$FA
            cpy #$FE
            .byte $80
LA963       .byte $00,$00,$00,$00,$00,$00,$02,$00
            asl
            .byte $00,$FF
            cpy #$0F
            cpy #$00
            .byte $00
LA973       .byte $03,$00,$07
            cpy #$0E
            cpy #$0F
            .byte $80
            tsx
            .byte $80,$FA
            cpy #$FA
            .byte $80
LA981       inc L3080,X
            .byte $00,$FC,$00,$FC,$00
            bmi LA98B
LA98B       .byte $00,$00,$00,$00,$00,$00,$00,$00
LA993       rol
            .byte $80
            rol
            .byte $80,$80,$80
            sty L8C80
            .byte $80,$82,$80
            tax
            .byte $00,$00,$00
LA9A3       rol
            .byte $80
            rol
            .byte $80
            inc LCE80,X
            .byte $80
            dec LFE80
            .byte $80
            tax
            .byte $00,$00,$00
LA9B3       .byte $44,$00
            bpl LA9B7
LA9B7       .byte $44,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LA9C3       .byte $00,$00,$02,$80
            asl
            .byte $80
            rol
            cpy #$AB
            .byte $00
            rol
            cpy #$0A
            .byte $80,$02,$80
LA9D3       .byte $00,$00,$00,$00,$00,$00
            asl
            .byte $00,$22,$00
            asl
            .byte $00,$00,$00,$00,$00
LA9E3       .byte $00,$00
            ldy #$00
            tay
            .byte $00
            nop
            .byte $00,$3A,$80
            nop
            .byte $00
            tay
            .byte $00
            ldy #$00
LA9F3       .byte $00,$00,$00,$00,$00,$00
            plp
            .byte $00,$22,$00
            plp
            .byte $00,$00,$00,$00,$00
LAA03       iny
            cpy #$2A
            .byte $00
            rol
            .byte $00
            ldx L2A80
            .byte $00
            rol
            .byte $00
            iny
            cpy #$00
            .byte $00
LAA13       .byte $0C,$00
            tax
            .byte $80
            ldx LE280
            cpy #$AE
            .byte $80
            tax
            .byte $80,$0C,$00,$00,$00
LAA23       php
            .byte $00
            rol
            .byte $00
            stx LOMEM,Y
            rol
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LAA33       ora (FREQ,X)
            php
            .byte $00
            plp
            .byte $80
            eor FREQ,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00
LAA43       bvc LAA45
LAA45       dey
            .byte $00
            txa
            .byte $00
            eor FREQ,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00
LAA53       .byte $3C
            cpy #$A3
            .byte $00,$3C
            cpy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LAA63       .byte $3C
            cpy #$03
            .byte $00,$3C
            cpy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$02,$BB,$5A
            bmi LAAD7
            inc LA83C+1
LAA7B       asl
            tay
            lda LAB57,Y
            sta L1F43
            sta L1F4D
            lda LAB58,Y
            sta L1F44
            sta L1F4E
            lda L00DF
            sta L0082
            ldx L00E3
            lda L1B00,X
            sta L0083
            lda L1B04,X
            sta L00B8
            ldy L1A00,X
            ldx LAB8F,Y
            lda L00F9
            and #$07
            tay
            lda LAB96+1,Y
            sta L0084
LAAAF       ldy L0082
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldy L0083
            lda LA8B3,X
            ora (L00C0),Y
            sta (L00C0),Y
            ldy L00B8
            inx
            lda LA8B3,X
            ora (L00C0),Y
            sta (L00C0),Y
            inx
            inc L0082
            dec L0084
            bne LAAAF
            clc
            rts
LAAD7       asl
            tay
            lda LAB57,Y
            sta L1FBD
            sta L1FC7
            lda LAB58,Y
            sta L1FBE
            sta L1FC8
            lda L00DF
            sta L0082
            ldx L00E3
            lda L1B00,X
            sta L0083
            lda L1B04,X
            sta L00B8
            ldy L1A00,X
            ldx LAB8F,Y
            lda #$08
            sta L0084
LAB05       ldy L0082
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldy L0083
            lda LA8B3,X
            ora (L00C0),Y
            sta (L00C0),Y
            ldy L00B8
            inx
            lda LA8B3,X
            ora (L00C0),Y
LAB22       sta (L00C0),Y
            inx
            inc L0082
            dec L0084
            bne LAB05
            rts
LAB2C       ldx L00DF
            lda L00F9
            and #$07
            tay
            lda LAB96+1,Y
            sta L0084
            ldy L00E3
            lda L1B00,Y
            tay
LAB3E       lda L1E00,X
            sta L00C1
            lda L1D00,X
            sta L00C0
            lda #$00
            sta (L00C0),Y
            iny
            sta (L00C0),Y
            dey
            inx
            dec L0084
            bne LAB3E
            clc
            rts
LAB57       .byte $2F
LAB58       ora L0D6F
            .byte $AF
            ora L0DEF
            .byte $2F
            asl L0E6F
            .byte $AF
LAB64       asl L0EEF
            .byte $2F,$0F,$6F,$0F,$AF,$0F,$EF,$0F,$2F
            bpl LABE0+1
            bpl LAB22+1
            bpl LAB64+1
            bpl LABA7
            ora (SHFAMT),Y
            ora (L00AF),Y
            ora (L00EF),Y
            ora (ICAX6Z),Y
            .byte $12,$6F,$12,$AF,$12,$EF,$12,$2F,$13,$6F,$13,$AF,$13,$EF,$13
LAB8F       .byte $00
            bpl LABB2
            bmi LABD4
            bvc LABF6
LAB96       bvs LAB9F+1
            php
            php
            .byte $04,$07,$07,$04,$04
LAB9F       ldx #$00
            lda #$01
            sta L00E3
            ldy #$00
LABA7       lda (LOMEM),Y
            sta L0C4B,X
            iny
            inx
            cpx #$10
            bcc LABA7
LABB2       lda #$08
            sta L0084
            lda #$02
            sta L0082
            jsr LABD9
            ldy L00E3
            lda LAB8F,Y
            tay
            ldx #$00
LABC5       lda L0C4B,X
            sta (LOMEM),Y
            iny
            inx
            cpx #$10
            bcc LABC5
            inc L00E3
            lda L00E3
LABD4       cmp #$04
            bcc LABB2
            rts
LABD9       ldx #$00
LABDB       ldy #$02
LABDD       lsr L0C4B,X
LABE0       ror L0C4C,X
            dey
            bne LABDD
            inx
            inx
            dec L0084
            bne LABDB
            rts
LABED       ldy #$00
LABEF       lda L0C6B,Y
            beq LABFE
            tya
            clc
LABF6       adc #$06
            tay
            cpy #$C0
            bcc LABEF
            rts
LABFE       lda L00DF
            sta L0C6B,Y
            lda L00DD
            sta L0C6C,Y
            lda L00DE
            sta L0C6D,Y
            lda L00F9
            sta L0C6E,Y
            lda #$30
            sta L0C6F,Y
            rts
LAC18       lda #$00
            sta L0086
            sta L009D
            jmp LAC2D
LAC21       lda L0086
            clc
            adc #$06
            sta L0086
            cmp #$C0
            bcc LAC2D
            rts
LAC2D       ldy L0086
            lda L0C6B,Y
            beq LAC21
            sta L00CA
            lda L0C6E,Y
            and #$07
            cmp #$07
            beq LAC41
            inc L009D
LAC41       sec
            lda L0C6C,Y
            sbc L008B
            sta L00E3
            lda L0C6D,Y
            sbc L008C
            sta L00E4
            bcs LAC5E
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LAC5E       lda L00E4
            bne LAC74
            lda L00E3
            cmp #$A0
            bcs LAC74
            lda L00E3
            sta L00C9
            lda L0C6F,Y
            sta L00CB
            jsr L9C6C
LAC74       ldx L0086
            lda L0C6F,X
            sec
            sbc #$04
            sta L0C6F,X
            bne LACA7
            lda L0C6B,X
            sta L00DF
            lda #$00
            sta L0C6B,X
            lda L0C6C,X
            sta L00DD
            lda L0C6D,X
            sta L00DE
            lda L0C6E,X
            sta L00F9
            jsr LA4A5
            bcs LACA4
            lda #$00
            sta L0B6B,Y
LACA4       jmp LAC21
LACA7       sec
            lda L0C6C,X
            sbc L0089
            sta L00E3
            lda L0C6D,X
            sbc L008A
            sta L00E4
            bcs LACC4
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LACC4       lda L00E4
            bne LACDA
            lda L00E3
            cmp #$A0
            bcs LACDA
            lda L00E3
            sta L00C9
            lda L0C6F,X
            sta L00CB
            jsr L9C62
LACDA       jmp LAC21
            ldy #$00
LACDF       lda #$30
            sta L0C6F,Y
            tya
            clc
            adc #$06
            tay
            cpy #$C0
            bcc LACDF
            rts
LACEE       inc L0D2C
            lda L0D2C
            and #$01
            php
            tax
            jsr LADB0
            plp
            beq LAD01
LACFE       jmp LAD85
LAD01       lsr L0D2B
            tya
            and #$0C
            cmp #$08
            beq LAD29
            cmp #$04
            bne LAD64
            inc L0D2D
            lda L0D2D
            and #$01
            bne LAD41
            ldx L0D2E
            dex
            stx L0D2E
            bpl LAD41
            inx
            stx L0D2E
            jmp LAD41
LAD29       inc L0D2D
            lda L0D2D
            and #$01
            bne LAD41
            ldx L0D2E
            inx
            stx L0D2E
            cpx #$0F
            bcc LAD41
            dec L0D2E
LAD41       ldx L0D2E
            lda LADA0,X
            sta L00D5
            tya
            and #$0C
            cmp #$08
            beq LAD5C
            cmp #$04
            bne LAD9E
            lda #$88
            sec
            ror L0D2B
            clc
            rts
LAD5C       lda #$95
            sec
            ror L0D2B
            clc
            rts
LAD64       inc L0D2D
            lda L0D2D
            and #$03
            bne LAD41
            ldx L0D2E
            cpx #$07
            beq LAD41
            bcc LAD7E
            dex
            stx L0D2E
            jmp LAD41
LAD7E       inx
            stx L0D2E
            jmp LAD41
LAD85       tya
            and #$03
            cmp #$02
            beq LAD94
            cmp #$01
            bne LAD98
            clc
            lda #$C1
            rts
LAD94       lda #$DA
            clc
            rts
LAD98       lda #$00
            sta L00E9
            sta L00EA
LAD9E       sec
            rts
LADA0       .byte $FA,$FB,$FC
            sbc LFFFE,X
            .byte $FF,$00
            ora (NGFLAG,X)
            .byte $02,$03,$04
            ora TRAMSZ
            .byte $00
LADB0       lda L00F1
            cmp #$02
            beq LADBF
            lda PORTA
            and #$0F
            eor #$0F
            tay
            rts
LADBF       lda PORTA
            lsr
            lsr
            lsr
            lsr
            eor #$0F
            tay
            rts
            lda BRKKEY,X
            cmp L1437,X
            bcc LADD6
            sta L1437,X
            bcs LADDE
LADD6       cmp L1433,X
            bcs LADDE
            sta L1433,X
LADDE       lda L1437,X
            clc
            adc L1433,X
            ror
            sta L1435,X
            bit L00F2
            bmi LAE02
            clc
            lda L1435,X
            adc LAE15,X
            sta L00EB
            sec
            lda L1435,X
            sbc LAE15,X
            sta L00EC
LADFF       jmp LAE12
LAE02       clc
            lda L1435,X
            adc #$10
            sta L00EB
            sec
            lda L1435,X
            sbc #$10
            sta L00EC
LAE12       ldy BRKKEY,X
            rts
LAE15       nop
            nop
LAE17       nop
            asl
LAE19       pha
            jsr L8CF2
            sta L00DD
            lda L00C7
            and #$01
            sta L00DE
            clc
            lda L00DD
            adc #$AB
            sta L00E7
            lda L00DE
            adc #$05
            sta L00E8
            ldy #$00
            lda (L00E7),Y
            clc
            adc #$08
            sta L00DF
            lda #$00
            sta L00F9
            jsr LA4A5
            pla
            sec
            sbc #$01
            bne LAE19
            rts
LAE49       .byte $00
LAE4A       .byte $00
LAE4B       .byte $0F,$03
            ora (RTCLOK+2,X)
            .byte $04,$03,$14
            asl RAMLO
            .byte $14
LAE55       lda L009A
            asl
            clc
            adc L009A
            cmp #$09
            bcc LAE61
            lda #$09
LAE61       tax
            lda LAE49,X
            beq LAE7D
LAE67       pha
            jsr L8D0C
            lda L00C6
            and #$08
            clc
            adc #$04
            sta L00F9
            jsr LABED
            pla
            sec
            sbc #$01
            bne LAE67
LAE7D       lda LAE4A,X
            beq LAE93
LAE82       pha
            jsr L8D0C
            lda #$05
            sta L00F9
            jsr LABED
            pla
            sec
            sbc #$01
            bne LAE82
LAE93       lda LAE4B,X
            sta L009B
LAE98       lda L009B
            beq LAEE5
            jsr L8E32
            jsr L8D0C
            lda #$01
            sta L00F9
            jsr LABED
            dec L009B
            beq LAEE5
            jsr L8D0C
            lda #$01
            sta L00F9
            jsr LABED
            dec L009B
            beq LAEE5
            jsr L8D0C
            lda #$01
            sta L00F9
            jsr LABED
            dec L009B
            beq LAEE5
            jsr L8D0C
            lda #$01
            sta L00F9
            jsr LABED
            dec L009B
            beq LAEE5
            jsr L8D0C
            lda #$01
            sta L00F9
            jsr LABED
            dec L009B
            beq LAEE5
LAEE5       rts
            ldy L0098
            inc L00A1
            lda L00F9
            beq LAF55
            cmp #$10
            beq LAF6E
            bcc LAF5F
LAEF4       clc
            lda L0091
            adc #$02
            sta L00DD
            lda L0092
LAEFD       adc #$00
LAEFF       sta L00DE
            lda L00C4
            clc
            adc #$0A
            sta L00DF
            clc
            lda L00DD
            adc #$AB
            sta L00E7
            lda L00DE
            adc #$05
            sta L00E8
            ldy #$00
            lda (L00E7),Y
            cmp L00DF
            bcs LAF4E
            lda #$0C
            jsr LA7B2
            lda #$00
            sta L00F9
            clc
            lda L0098
            lsr
            adc L00DD
            sta L00DD
            lda L00DE
            adc #$00
            sta L00DE
            clc
            lda L0098
            lsr
            adc L00E7
            sta L00E7
            lda L00E8
            adc #$00
            sta L00E8
            ldy #$00
            lda (L00E7),Y
            clc
            adc #$08
            sta L00DF
            jsr L8E16
LAF4E       lda #$00
            sta L0088
            jmp LA5B2
LAF55       jsr LB047
            lda #$00
            sta L0088
            jmp LA5B2
LAF5F       sec
            lda L00DF
            sbc L0B6B,Y
            sta L00DF
            lda #$00
            sta L0088
            jmp LA5B2
LAF6E       ldx L0098
            inc L0B6B,X
            lda L0B6B,X
            lsr
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$01
            clc
            adc L00DF
            sta L00DF
            sec
            lda L00C4
            sbc L00DF
            bcs LAF8E
            eor #$FF
            adc #$01
LAF8E       cmp #$0A
            bcs LAFD4
            sec
            lda L00DD
            sbc L0089
            sta L00E3
            lda L00DE
            sbc L008A
            sta L00E4
            bcs LAFAE
            clc
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LAFAE       lda L00E4
            bne LAFD4
            lda L00E3
            cmp #$A0
            bcs LAFD4
            sec
            sbc L00C3
            bcs LAFC1
            eor #$FF
            adc #$01
LAFC1       cmp #$10
            bcs LAFD4
            lda #$0C
            jsr LA7B2
            lda #$18
            sta L00F9
            jsr L8E16
            jmp LAEF4
LAFD4       clc
            lda L00DD
            adc #$AB
            sta L00E7
            lda L00DE
            adc #$05
            sta L00E8
            ldy #$00
            lda (L00E7),Y
            cmp L00DF
            bcs LB040
            lda L0B6B,X
            cmp #$28
            bcs LAFFF
            lda #$04
            jsr LA7B2
            lda #$00
            sta L00F9
            jsr L8E16
            jmp LB040
LAFFF       sec
            lda L00DD
            sbc L0089
            sta L00E3
            lda L00DE
            sbc L008A
            sta L00E4
            bcs LB01A
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LB01A       lda L00E4
            bne LB033
            lda L00E3
            cmp #$A0
            bcs LB033
            lda L00E3
            sta L00C9
            lda L00DF
            sta L00CA
            lda #$01
            sta L00CB
            jsr L9BE7
LB033       jsr L8E24
            ldy L0098
            lda #$00
            sta L0AEB,Y
            jmp LA4DD
LB040       lda #$00
            sta L0088
            jmp LA5B2
LB047       lda L0085
            and #$07
            bne LB08D
            lda L0098
            and #$04
            bne LB05C
            inc L00DD
            bne LB077
            inc L00DE
            jmp LB077
LB05C       sec
            lda L00DD
            sbc #$01
            sta L00DD
            lda L00DE
            sbc #$00
            sta L00DE
            bcs LB077
            lda L00DD
            adc #$80
            sta L00DD
            lda L00DE
            adc #$02
            sta L00DE
LB077       clc
            lda L00DD
            adc #$AB
            sta L00E7
            lda L00DE
            adc #$05
            sta L00E8
            ldy #$00
            lda (L00E7),Y
            clc
            adc #$08
            sta L00DF
LB08D       rts
            lda #$01
            sta L00B9
            lda L009A
            lsr
            lsr
            clc
            adc L00B9
            sta L00B9
            lda L0098
            and #$08
            bne LB0A3
            inc L00B9
LB0A3       lda L00B9
            cmp #$04
            bcc LB0AD
            lda #$03
            sta L00B9
LB0AD       inc L009C
            lda L00A0
            bpl LB0B9
            jsr LB2DE
            jmp LB2F4
LB0B9       lda L00F9
            cmp #$09
            beq LB0DF
            bcc LB0E2
            lda #$03
            sta L0094
            lda L0085
            and L00BB
            bne LB0CE
            jsr L9A9C
LB0CE       sec
            lda L00DF
            sbc L00B9
            sta L00DF
            cmp #$20
            bcs LB0DC
            jsr LB251
LB0DC       jmp LB166
LB0DF       jmp LB18F
LB0E2       lda L0085
            and #$01
            bne LB10D
            lda L0098
            lsr
            lsr
            and #$04
            bne LB100
            clc
            lda L00DD
            adc L00B9
            sta L00DD
            lda L00DE
            adc #$00
            sta L00DE
            jmp LB10D
LB100       sec
            lda L00DD
            sbc L00B9
            sta L00DD
            lda L00DE
            sbc #$00
            sta L00DE
LB10D       lda L00B9
            lsr
            clc
            adc #$01
            adc L00DF
            sta L00DF
            clc
            lda #$AB
            adc L00DD
            sta L00E7
            lda #$05
            adc L00DE
            sta L00E8
            ldy #$00
            lda (L00E7),Y
            sec
            sbc #$1E
            sta L00E3
            lda L00DF
            cmp L00E3
            bcc LB166
            lda L00B9
            lsr
            clc
            adc #$01
            sta L00E3
            sec
            lda L00DF
            sbc L00E3
            sta L00DF
            dec L00DF
            lda L00F9
            cmp #$09
            beq LB166
            lda #$09
            sta L00F9
            jsr LB22C
            bcc LB166
            lda #$01
            sta L00F9
            lda #$03
            sta L0094
            lda L0085
            adc #$01
            and #$03
            bne LB166
            jsr L9A9C
LB166       lda L0085
            and #$02
            lsr
            clc
            adc #$01
            sta L0088
            lda L0085
            adc L0098
            and #$3F
            bne LB18C
            lda L00D5
            bpl LB181
            eor #$FF
            clc
            adc #$01
LB181       cmp #$03
            bcc LB18C
            lda #$03
            sta L0094
            jsr L9A9C
LB18C       jmp LA5B2
LB18F       lda L0B6B,Y
            tax
            lda L0AEB,X
            beq LB19D
            lda L0AEE,X
            beq LB1A9
LB19D       jsr LB22C
            bcc LB1A6
            lda #$01
            sta L00F9
LB1A6       jmp LB166
LB1A9       lda L00DD
            cmp L0AEC,X
            lda L00DE
            sbc L0AED,X
            bcs LB1C3
            clc
            lda L00DD
            adc L00B9
            sta L00DD
            bcc LB1C0
            inc L00DE
LB1C0       jmp LB10D
LB1C3       sec
            lda L00DD
            sbc L0AEC,X
            sta L00E3
            lda L00DE
            sbc L0AED,X
            sta L00E4
            bcs LB1E0
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LB1E0       lda L00E4
            bne LB21C
            lda L00E3
            cmp #$03
            bcs LB21C
            lda L0AEB,X
            sec
            sbc #$0C
            cmp L00DF
            bcs LB208
            lda #$11
            sta L00F9
            lda #$08
            sta L0AEE,X
            lda L00B9
            sta L0B6B,X
            jsr L8E40
            jmp LB166
LB208       inc L00DF
            lda #$03
            sta L0094
            lda L0085
            adc L0098
            and L00BB
            bne LB219
            jsr L9A9C
LB219       jmp LB166
LB21C       sec
            lda L00DD
            sbc L00B9
            sta L00DD
            lda L00DE
            sbc #$00
            sta L00DE
            jmp LB10D
LB22C       jsr L8CF2
            clc
            adc #$01
            and #$0F
            asl
            asl
            tax
            lda L0AEE,X
            beq LB23E
LB23C       sec
            rts
LB23E       lda L0AEB,X
            beq LB23C
            txa
            ldy L0098
            sta L0B6B,Y
            clc
            rts
            rts
LB24C       lda #$01
            sta L00F9
            rts
LB251       ldy L0098
            lda L0B6B,Y
            tax
            lda L0AEB,X
            beq LB24C
            lda L0AEE,X
            cmp #$08
            bne LB24C
            lda L0AEB,X
            sta L00DF
            lda #$00
            sta L0AEB,X
            lda L0AEC,X
            sta L00DD
            lda L0AED,X
            sta L00DE
            lda L008B
            pha
            lda L008C
            pha
            lda L008F
            pha
            lda L0090
            pha
            cpx L0098
            bcc LB297
            lda L0089
            sta L008B
            lda L008A
            sta L008C
            lda L008D
            sta L008F
            lda L008E
            sta L0090
LB297       jsr LA12D
            jsr LA786
            pla
            sta L0090
            pla
            sta L008F
            pla
            sta L008C
            pla
            sta L008B
            sec
            lda L00DD
            sbc L008B
            sta L00E3
            lda L00DE
            sbc L008C
            sta L00E4
            bcs LB2C4
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LB2C4       lda L00E4
            bne LB2DB
            lda L00E3
            cmp #$A0
            bcs LB2DB
            sta L00C9
            lda L00DF
            sta L00CA
            lda #$01
            sta L00CB
            jsr L9BE7
LB2DB       jsr L8E24
LB2DE       ldy L0098
            lda L0AEB,Y
            sta L00DF
            lda L0AEC,Y
            sta L00DD
            lda L0AED,Y
            sta L00DE
            lda #$02
            sta L00F9
            rts
LB2F4       inc L009C
            lda L0091
            cmp L00DD
            lda L0092
            sbc L00DE
            bcs LB319
            lda L00C6
            and #$03
            clc
            adc #$02
            sta L00E5
            sec
            lda L00DD
            sbc L00E5
            sta L00DD
            lda L00DE
            sbc #$00
            sta L00DE
            jmp LB32A
LB319       clc
            lda L00C6
            and #$03
            adc #$02
            adc L00DD
            sta L00DD
            lda L00DE
            adc #$00
            sta L00DE
LB32A       sec
            lda L00DD
            sbc L0089
            sta L00E3
            lda L00DE
            sbc L008A
            sta L00E4
            bcs LB345
            lda L00E3
            adc #$80
            sta L00E3
            lda L00E4
            adc #$02
            sta L00E4
LB345       lda L00E4
            bne LB35E
            lda L00E3
            cmp #$A0
            bcs LB35E
            sec
            lda L00E3
            sbc L00C3
            bcs LB35A
            eor #$FF
            adc #$01
LB35A       cmp #$20
            bcc LB39D
LB35E       lda L00C4
            clc
            adc #$40
            cmp #$B0
            bcc LB36D
            sec
            sbc #$B0
            clc
            adc #$20
LB36D       cmp L00DF
            bcs LB386
            lda L00C6
            and #$03
            clc
            adc #$01
            sta L00E3
            sec
            lda L00DF
            sbc L00E3
            sta L00DF
            sta L00DF
            jmp LB3D2
LB386       clc
            lda L00C6
            and #$03
            clc
            adc #$01
            adc L00DF
            sta L00DF
            cmp #$B0
            bcc LB3D2
            lda #$20
            sta L00DF
            jmp LB3D2
LB39D       lda L00DF
            cmp L00C4
            bcc LB3BE
            lda L00C6
            and #$03
            clc
            adc #$01
            sta L00E3
            sec
            lda L00DF
            sbc L00E3
            sta L00DF
            cmp #$20
            bcs LB3D2
            lda #$B0
            sta L00DF
            jmp LB3D2
LB3BE       clc
            lda L00C6
            and #$03
            clc
            adc #$01
            adc L00DF
            sta L00DF
            cmp #$B0
            bcc LB3D2
            lda #$20
            sta L00DF
LB3D2       lda L0085
            and #$02
            lsr
            clc
            adc #$03
            sta L0088
            lda #$03
            sta L0094
            lda L0085
            adc #$06
            and #$0F
            bne LB3EB
            jsr L9A9C
LB3EB       jsr LB47F
            jmp LA5B2
            inc L009C
            lda L00F9
            cmp #$0C
            bcs LB409
            sec
            lda L00DD
            sbc #$02
            sta L00DD
            lda L00DE
            sbc #$00
            sta L00DE
            jmp LB416
LB409       clc
            lda L00DD
            adc #$02
            sta L00DD
            lda L00DE
            adc #$00
            sta L00DE
LB416       ldx L0098
            lda L0085
            and #$03
            bne LB421
            inc L0B6B,X
LB421       lda L0B6B,X
            and #$1F
            tax
            cmp #$08
            beq LB42F
            cmp #$18
            bne LB43B
LB42F       lda RANDOM
            bpl LB43B
            txa
            clc
            adc #$0E
            and #$1F
            tax
LB43B       clc
            lda L00DF
            adc LB568,X
            sta L00DF
            cmp #$20
            bcc LB452
            cmp #$B0
            bcc LB456
            lda #$20
            sta L00DF
            jmp LB456
LB452       lda #$B0
            sta L00DF
LB456       lda L00C4
            sec
            sbc L00DF
            bcs LB461
            eor #$FF
            adc #$01
LB461       cmp #$20
            bcs LB472
            lda #$0B
            sta L0094
            lda L0085
            and #$03
            bne LB472
            jsr L9A9C
LB472       lda L0085
            and #$02
            lsr
            clc
            adc #$0E
            sta L0088
            jmp LA5B2
LB47F       lda #$02
            nop
            nop
            nop
            rts
            inc L009C
            inc L00DF
            lda L00DF
            cmp #$B0
            bcc LB493
            lda #$20
            sta L00DF
LB493       inc L00DD
            bne LB499
            inc L00DE
LB499       lda L0085
            and #$01
            clc
            adc #$15
            sta L0088
            jmp LA5B2
            inc L009C
            sec
            lda L0091
            sbc L00DD
            sta L00E3
            lda L0092
            sbc L00DE
            sta L00E4
            bcs LB4C8
            lda L00E3
            eor #$FF
            sta L00E3
            lda L00E4
            eor #$FF
            sta L00E4
            inc L00E3
            bne LB4C8
            inc L00E4
LB4C8       lda L00E4
            bne LB4D2
            lda L00E3
            cmp #$64
            bcc LB4DE
LB4D2       lda L00DD
            cmp L0091
            lda L00DE
            sbc L0092
            ror
            sta L0B6B,Y
LB4DE       ldy L0098
            lda L0B6B,Y
            bmi LB4F5
            clc
            lda L00DD
            adc #$02
            sta L00DD
            lda L00DE
            adc #$00
            sta L00DE
            jmp LB502
LB4F5       sec
            lda L00DD
            sbc #$02
            sta L00DD
            lda L00DE
            sbc #$00
            sta L00DE
LB502       ldx L0098
            lda L0085
            and #$01
            bne LB50D
            inc L0B6C,X
LB50D       lda L0B6C,X
            and #$1F
            tax
            clc
            lda L00DF
            adc LB568,X
            sta L00DF
            lda L00DF
            cmp L00C4
            bcc LB526
            dec L00DF
            jmp LB528
LB526       inc L00DF
LB528       cmp #$20
            bcs LB533
            lda #$B0
            sta L00DF
            jmp LB53B
LB533       cmp #$B0
            bcc LB53B
            lda #$20
            sta L00DF
LB53B       lda #$03
            sta L0094
            lda L0085
            adc #$04
            and #$0F
            bne LB561
            lda L00DD
            cmp L0091
            lda L00DE
            sbc L0092
            bcs LB559
            lda L0B6B,Y
            bpl LB55E
            jmp LB561
LB559       lda L0B6B,Y
            bpl LB561
LB55E       jsr L9A9C
LB561       lda #$17
            sta L0088
            jmp LA5B2
LB568       sbc LFDFD,X
            inc LFFFE,X
            .byte $FF,$00,$00
            ora (NGFLAG,X)
            .byte $02,$02,$03,$03,$03,$03,$03,$03,$02,$02
            ora (NGFLAG,X)
            .byte $00,$00,$FF,$FF
            inc LFDFE,X
LB586       sbc LA5FC+1,X
            cpy L0085
            .byte $DF
            lda L00C3
            sta L00E3
            lda #$00
            sta L00F9
            jsr LAB2C
            lda L00E3
            clc
            adc #$05
            sta L00E3
            jmp LAB2C
LB5A1       lda L00C4
            sta L00DF
            lda L00C3
            sta L00E3
            lda L0085
            and #$02
            bne LB5D5
            lda L00C5
            bpl LB5C4
            lda #$09
            jsr L1F00
            clc
            lda L00E3
            adc #$05
            sta L00E3
            lda #$0A
            jmp L1F80
LB5C4       lda #$05
            jsr L1F00
            clc
            lda L00E3
            adc #$05
            sta L00E3
            lda #$06
            jmp L1F80
LB5D5       lda L00C5
            bpl LB5EA
            lda #$0B
            jsr L1F00
            clc
            lda L00E3
            adc #$05
            sta L00E3
            lda #$0C
            jmp L1F80
LB5EA       lda #$07
            jsr L1F00
            clc
            lda L00E3
            adc #$05
            sta L00E3
            lda #$08
            jmp L1F80
LB5FB       bit L00ED
            bpl LB600
            rts
LB600       lda L00C4
            sec
            sbc L00DF
            bcs LB60B
            eor #$FF
            adc #$01
LB60B       cmp #$06
            bcs LB621
            lda L00C3
            clc
            adc #$03
            sec
            sbc L00E3
            bcs LB61D
            eor #$FF
            adc #$01
LB61D       cmp #$0B
            bcc LB624
LB621       jmp LB767
LB624       jsr L9962
            sec
            ror L00EF
            ldy L0098
            lda #$00
            sta L0AEB,Y
            lda L0AEE,Y
            sta L00F9
            jsr LA7AE
            jsr L9442
            ldy L0098
            lda L0AEE,Y
            and #$07
            cmp #$05
            bne LB64A
            jsr LA711
LB64A       sec
            rts
LB64C       lda #$00
            sta L00D5
            jsr L9E5E
            lda #$00
            sta L00EF
            jsr LB7F1
            lda #$08
LB65C       pha
            sec
            ror L00ED
LB660       bit L00AB
            bpl LB660
            jsr LB5A1
            jsr LA4CC
            lda #$38
            sta COLOR2
LB66F       lda L00AB
            bmi LB66F
LB673       bit L00AB
            bpl LB673
            jsr LB5A1
            jsr LA4CC
            lda #$7E
            sta COLOR2
            pla
            sec
            sbc #$01
            bne LB65C
            lda #$00
            sta L00ED
            jsr LB586+2
            lda #$00
            sta AUDF2
            sta AUDC2
            jsr L8E6A
            lda #$0F
            sta COLOR4
            lda #$80
            jsr L8874
            lda #$00
            sta COLOR4
            lsr L00AD
            jsr L9442
            jsr L97D9
            lda #$7E
            sta COLOR2
            jsr L9442
            lda L009C
            ora L009B
            ora L009D
            bne LB6CF
            jsr LB86D
            jsr LB769
            dec L009E
            sec
            ror L00F7
            jmp L83C9
LB6CF       dec L009E
LB6D1       lsr L00F7
            lda L009E
            beq LB70E
            jsr LB86D
            jsr LB769
            lda L00E2
            cmp #$01
            beq LB70B
LB6E3       lda L00F1
            cmp #$01
            beq LB6F2
            jsr L8A0D
            jsr L8A61
            jmp LB6F8
LB6F2       jsr L89B8+1
            jsr L8AB5
LB6F8       lda L009E
            bne LB705
            lda L00F1
            eor #$03
            sta L00F1
            jmp LB6E3
LB705       lda L00F1
            eor #$03
            sta L00F1
LB70B       jmp L845B
LB70E       jsr LB8A1
            jsr L9FB1
            jsr L86B0
            jsr L8780
            jsr L9442
            lda L00E2
            cmp #$01
            beq LB732
            lda L00F1
            cmp #$01
            beq LB72F
            jsr L8B3E
            jmp LB732
LB72F       jsr L8B09
LB732       jsr LB81E
            lda #$00
            sta L00BE
            sta L00B0
            lda L00E2
            cmp #$01
            beq LB753
            lda L00F1
            cmp #$01
            beq LB74E
            lda L17C6
            beq LB753
            bne LB6E3
LB74E       lda L19C6
            bne LB6E3
LB753       jsr LBAA0
            sec
            ror L00AF
            bit L00BE
            bpl LB760
            jmp L8369
LB760       bit L00B0
            bpl LB753
            jmp L8031
LB767       clc
            rts
LB769       lda #$00
            sta L009F
            jmp LB781
LB770       lda L009F
            clc
            adc #$04
            sta L009F
            bpl LB781
            lda #$64
            sta L009D
            jsr LB7E0
            rts
LB781       ldy L009F
            lda L0AEB,Y
            beq LB770
            lda L0AEE,Y
            and #$07
            beq LB7BD
            cmp #$01
            beq LB7AA
            cmp #$07
            beq LB79B
            cmp #$03
            bne LB7AF
LB79B       ldy L009F
            lda #$00
            sta L0AEB,Y
            lda #$80
            sta L0AED,Y
            jmp LB770
LB7AA       lda #$01
            sta L0AEE,Y
LB7AF       jsr L8D0C
            lda L0AEE,Y
            sta L00F9
            jsr LABED
            jmp LB79B
LB7BD       clc
            lda L0AEC,Y
            adc #$AB
            sta L00E7
            lda L0AED,Y
            adc #$05
            sta L00E8
            ldy #$00
            lda (L00E7),Y
            sec
            sbc #$04
            ldy L009F
            sta L0AEB,Y
            lda #$00
            sta L0AEE,Y
            jmp LB770
LB7E0       ldy #$00
LB7E2       lda #$30
            sta L0C6F,Y
            tya
            clc
            adc #$06
            tay
            cpy #$C0
            bcc LB7E2
            rts
LB7F1       ldx #$00
LB7F3       lda L051A,X
            bne LB802
LB7F8       txa
            clc
            adc #$04
            tax
            cpx #$10
            bcc LB7F3
            rts
LB802       tay
            lda #$00
            sta L051A,X
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldy #$27
LB814       lda #$00
            sta (L00C0),Y
            dey
            bpl LB814
            jmp LB7F8
LB81E       lda #$0C
            sta L143A
            lda #$00
            sta L1439
            ldy #$00
LB82A       lda LB844,Y
            beq LB835
            jsr L972E
            iny
            bne LB82A
LB835       lda #$0A
LB837       pha
            lda #$FF
            jsr L8874
            pla
            sec
            sbc #$01
            bne LB837
            rts
LB844       ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$C7
            ldy #$C1
            ldy #$CD
            ldy #$C5
            ldy #$A0
            .byte $CF
            ldy #$D6
            ldy #$C5
            ldy #$D2
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$A0
            ldy #$00
LB86D       ldy #$00
            lda #$00
LB871       lda L0C6E,Y
            and #$07
            cmp #$07
            bne LB87F
            lda #$00
            sta L0C6B,Y
LB87F       tya
            clc
            adc #$06
            tay
            cpy #$C0
            bcc LB871
            rts
LB889       sei
            cld
            lda #$00
            sta SDMCTL
            sta DMACLT
            sta NMIEN
            sta POKMSK
            sta IRQEN
            jsr LB8A1
            jmp LB902
LB8A1       ldx #$00
            txa
LB8A4       sta L2218,X
            sta L2318,X
            sta L2418,X
            sta L2518,X
            sta L2618,X
            sta L2718,X
            sta L2818,X
            sta L2918,X
            sta L2A18,X
            sta L2B18,X
            sta L2C18,X
            sta L2D18,X
            sta L2E18,X
            sta L2F18,X
            sta L3018,X
            sta L3118,X
            sta L3218,X
            sta L3318,X
            sta L3418,X
            sta L3518,X
            sta L3618,X
            sta L3718,X
            sta L3818,X
            sta L3918,X
            sta L3A18,X
            sta L3B18,X
            sta L3C18,X
            sta L3D18,X
            sta L3E18,X
            sta L3F18,X
            inx
            bne LB8A4
            rts
LB902       lda #$18
            sta L00E7
            lda #$22
            sta L00E8
            ldx #$C0
            ldy #$00
LB90E       lda L00E7
            sta L1D00,Y
            lda L00E8
            sta L1E00,Y
            clc
            lda L00E7
            adc #$28
            sta L00E7
            lda L00E8
            adc #$00
            sta L00E8
            iny
            dex
            bne LB90E
LB929       lda #$E0
            sta L1D00,Y
            sta L1E00,Y
            iny
            bne LB929
            ldy #$00
            tya
LB937       sta L1A00,Y
            clc
            adc #$01
            cmp #$04
            bcc LB943
            lda #$00
LB943       iny
            bne LB937
            ldy #$00
            lda #$C0
LB94A       sta L1C00,Y
            lsr
            lsr
            bne LB953
            lda #$C0
LB953       iny
            bne LB94A
            ldy #$00
            lda #$00
LB95A       ldx #$04
LB95C       sta L1B00,Y
            iny
            beq LB96C
            dex
            bne LB95C
            clc
            adc #$01
            cpy #$00
            bne LB95A
LB96C       ldy #$00
LB96E       lda L1B00,Y
            cmp #$28
            bcc LB97A
            lda #$27
            sta L1B00,Y
LB97A       iny
            bne LB96E
            lda #$70
            sta L2000
            sta L2001
            sta L2002
            lda #$4E
            sta L2003
            lda #$18
            sta L2004
            lda #$22
            sta L2005
            ldy #$58
            ldx #$00
LB99B       lda #$0E
            cpx #$00
            bne LB9A3
            ora #$80
LB9A3       sta L2006,X
            inx
            dey
            bne LB99B
            lda #$4E
            sta L2006,X
            lda #$00
            sta L2007,X
            lda #$30
            sta L2008,X
            ldy #$65
LB9BB       lda #$0E
            sta L2009,X
            inx
            dey
            bne LB9BB
            lda #$8E
            sta L2008,X
            lda #$41
            sta L2009,X
            lda #$00
            sta L200A,X
            lda #$20
            sta L200B,X
            lda #$46
            sta VDSLST
            lda #$BA
            sta VDSLST+1
            lda #$6D
            sta VKEYBD
            lda #$BA
            sta VKEYBD+1
            lda #$00
            sta L00AC
            sta L00AE
            sta L00AF
            sta L00B0
            lda #$00
            sta SDLSTL
            lda #$20
            sta SDLSTH
            lda #$22
            sta DMACLT
            sta SDMCTL
            lda #$00
            sta COLOR4
            lda #$CA
            sta COLOR0
            lda #$38
            sta COLOR1
            lda #$7E
            sta COLOR2
            lda #$04
            sta PACTL
            lda #$03
            sta SKCTL
            lda #$00
            sta GRACTL
            sta AUDCTL
            lda #$01
            sta PRIOR
            lda #$04
            sta CONSOL
            lda #$C0
            sta POKMSK
            sta IRQEN
            lda #$C0
            sta NMIEN
            cli
            rts
            pha
            lda VCOUNT
            cmp #$64
            bcc LBA59
            sec
            ror L00AB
            lda L00F0
            bmi LBA57
            inc L00F0
LBA57       pla
            rti
LBA59       lsr L00AB
            txa
            pha
            tya
            pha
            jsr L8D27
            pla
            tay
            pla
            tax
            pla
            rti
            sec
            ror L00AC
            pla
            rti
            lda L00F0
            cmp #$10
            bcs LBA76
            jmp LBA98
LBA76       lda KBCODE
            sta L00E0
            cmp #$1C
            beq LBA8F
            cmp #$21
            beq LBA89
            sec
            ror L00AE
            jmp LBA98
LBA89       sec
            ror L00AC
            jmp LBA98
LBA8F       lda L00AF
            eor #$80
            sta L00AF
            jmp LBA98
LBA98       lda #$00
            sta L00F0
            sta ATRACT
            pla
            rti
LBAA0       lda #$08
            sta CONSOL
            lda CONSOL
            and #$07
            eor #$07
            cmp #$01
            beq LBAC6
            cmp #$02
            beq LBAB5
LBAB4       rts
LBAB5       bit L00AF
            bmi LBABC
            jmp LBAB4
LBABC       sec
            ror L00B0
            lda #$00
            sta ATRACT
            jmp LBAB4
LBAC6       bit L00AF
            bpl LBAD1
            sec
            ror L00BE
            lda #$00
            sta ATRACT
LBAD1       jmp LBAB4
            lda L00DF
            cmp L00C4
            bcs LBADF
            inc L00DF
            jmp LBAE1
LBADF       dec L00DF
LBAE1       lda L00D5
            bpl LBAEA
            eor #$FF
            clc
            adc #$01
LBAEA       clc
            adc #$02
            sta L00E5
            sec
            lda L0091
            sbc L00DD
            sta L00E3
            lda L0092
            sbc L00DE
            sta L00E4
            bcs LBB10
            lda L00E3
;
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
            org $9C00
;
L9C00       ldy #$05
            ldx #$00
            txa
L9C05       sta LBB00,X
            inx
            bne L9C05
L9C0B       inc L9C05+2
            dey
            bne L9C05
            rts
;
            org $02E2
;
            .word L9C00
;
            org $9C00
;
            bit LA505
            .byte $CB
            sta L052D,Y
            lda #$28
            sta L052E,Y
            rts
L9C0D       lda #$20
L9C0F       pha
            jsr L9C1A
            pla
            sec
            sbc #$01
            bne L9C0F
            rts
L9C1A       lda L00CC
            clc
            adc #$04
            sta L00CC
            cmp #$80
            bcc L9C29
            lda #$00
            sta L00CC
L9C29       ldy L00CC
            lda L052B,Y
            bne L9C31
            rts
L9C31       sta L00CA
            lda L052C,Y
            sta L00C9
            lda L052D,Y
            sta L00CB
            jsr L9C6C
            lda L00C9
            sec
            sbc L00D5
            sta L00C9
            ldx L00CC
            sta L052C,X
            inc L052D,X
            inc L00CB
            lda L052D,X
            cmp L052E,X
            bcc L9C5F
            lda #$00
            sta L052B,X
            rts
L9C5F       jmp L9C62
L9C62       lda #$FF
            sta L00CD
            lda LC030
            jmp L9C70
L9C6C       lda #$00
            sta L00CD
L9C70       lda L00CA
            sec
            sbc L00CB
            tay
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            lda L00C9
            sec
            sbc L00CB
            tax
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            ldx L00C9
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            lda L00C9
            clc
            adc L00CB
            tax
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            ldy L00CA
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            lda L00C9
            sec
            sbc L00CB
            tax
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            ldx L00C9
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            lda L00C9
            clc
            adc L00CB
            tax
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            lda L00CA
            clc
            adc L00CB
            tay
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            lda L00C9
            sec
            sbc L00CB
            tax
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            ldx L00C9
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            lda L00C9
            clc
            adc L00CB
            tax
            ldy L1B00,X
            lda L00C6
            and L00CD
            sta (L00C0),Y
            rts
L9D18       lda #$A0
            sta L00D3
            ldy #$00
L9D1E       sta L05AB,Y
            sta L06AB,Y
            sta L072B,Y
            sta L082B,Y
            sta L092B,Y
            sta L09AB,Y
            iny
            bne L9D1E
            lda #$05
            sta L00D0
            lda #$AB
            sta L00CF
L9D3B       jsr L8CF2
            cmp #$D8
            bcs L9DAB
            ldx #$01
L9D44       dec L00D3
            lda L00D3
            ldy #$00
            sta (L00CF),Y
            jsr L9D8E
            bcs L9D62
            inc L00D3
            lda L00D3
            sta (L00CF),Y
            jsr L9D8E
            bcs L9D62
            dex
            bne L9D44
            jmp L9D3B
L9D62       ldy #$00
L9D64       jsr L9D9D
            lda (L00CF),Y
            cmp #$A0
            bne L9D64
L9D6D       lda #$A0
            sta (L00CF),Y
            jsr L9D8E
            bcc L9D6D
            ldx #$00
L9D78       lda L05AB,X
            sta L082B,X
            lda L06AB,X
            sta L092B,X
            lda L072B,X
            sta L09AB,X
            inx
            bne L9D78
            rts
L9D8E       inc L00CF
            bne L9D94
            inc L00D0
L9D94       lda L00CF
            cmp #$2B
            lda L00D0
            sbc #$08
            rts
L9D9D       sec
            lda L00CF
            sbc #$01
            sta L00CF
            lda L00D0
            sbc #$00
            sta L00D0
            rts
L9DAB       jsr L8CF2
            bmi L9DDD
            lda L00C6
            and #$1F
            adc #$02
            sta L00D1
            pha
L9DB9       dec L00D3
            lda L00D3
            ldy #$00
            sta (L00CF),Y
            jsr L9D8E
            dec L00D1
            bne L9DB9
            pla
            sta L00D1
L9DCB       inc L00D3
            lda L00D3
            ldy #$00
            sta (L00CF),Y
            jsr L9D8E
            dec L00D1
            bne L9DCB
            jmp L9D3B
L9DDD       lda L00C6
            and #$07
            adc #$02
            sta L00D1
            pha
L9DE6       inc L00D3
            lda L00D3
            ldy #$00
            sta (L00CF),Y
            jsr L9D8E
            dec L00D1
            bne L9DE6
            pla
            sta L00D1
L9DF8       dec L00D3
            lda L00D3
            ldy #$00
            sta (L00CF),Y
            jsr L9D8E
            dec L00D1
            bne L9DF8
            jmp L9D3B
L9E0A       lda L00CF
            sta L00E7
            lda L00D0
            sta L00E8
            lda #$00
            sta L00C9
            lda #$10
L9E18       pha
L9E19       bit L00AB
            bmi L9E19
L9E1D       bit L00AB
            bpl L9E1D
            jsr L9C0D
            lda COLOR4
            eor #$0F
            sta COLOR4
            clc
            lda L00E7
            adc #$10
            sta L00E7
            lda L00E8
            adc #$00
            sta L00E8
            ldy #$00
            lda (L00E7),Y
            sta L00CA
            clc
            lda L00C9
            adc #$10
            sta L00C9
            lda #$01
            sta L00CB
            jsr L9BE7
            pla
            sec
            sbc #$01
            bne L9E18
            lda #$00
            sta COLOR4
            jsr L8E78
            jmp L9F90
L9E5E       lda L00CF
            sta L00FC
            lda L00D0
            sta L00FD
            sec
            lda L00FC
            sbc #$AB
            sta L008B
            lda L00FD
            sbc #$05
            sta L008C
            lda L00D5
            bpl L9E92
            pha
            eor #$FF
            clc
            adc #$01
            sta L00D5
            sec
            lda L00CF
            sbc L00D5
            sta L00CF
            lda L00D0
            sbc #$00
            sta L00D0
            pla
            sta L00D5
            jmp L9E9F
L9E92       clc
            lda L00D5
            adc L00CF
            sta L00CF
            lda L00D0
            adc #$00
            sta L00D0
L9E9F       lda L00CF
            cmp #$AB
            lda L00D0
            sbc #$05
            bcc L9EC3
            lda L00CF
            cmp #$2B
            lda L00D0
            sbc #$08
            bcc L9ED0
            sec
            lda L00CF
            sbc #$80
            sta L00CF
            lda L00D0
            sbc #$02
            sta L00D0
            jmp L9ED0
L9EC3       clc
            lda L00CF
            adc #$80
            sta L00CF
            lda L00D0
            adc #$02
            sta L00D0
L9ED0       sec
            lda L00CF
            sbc #$AB
            sta L0089
            lda L00D0
            sbc #$05
            sta L008A
            lda L00D7
            sta L00D9
            lda L00D8
            sta L00DA
            sec
            lda L00D9
            sbc #$AB
            sta L008F
            lda L00DA
            sbc #$05
            sta L0090
            lda L00CF
            sec
            sbc #$F0
            sta L00D7
            lda L00D0
            sbc #$00
            sta L00D8
            lda L00D7
            cmp #$AB
            lda L00D8
            sbc #$05
            bcc L9F23
            lda L00D7
            cmp #$2B
            lda L00D8
            sbc #$08
            bcc L9F30
            sec
            lda L00D7
            sbc #$80
            sta L00D7
            lda L00D8
            sbc #$02
            sta L00D8
            jmp L9F30
L9F23       clc
            lda L00D7
            adc #$80
            sta L00D7
            lda L00D8
            adc #$02
            sta L00D8
L9F30       sec
            lda L00D7
            sbc #$AB
            sta L008D
            lda L00D8
            sbc #$05
            sta L008E
            lda L00A0
            bmi L9F44
            jmp L9F45
L9F44       rts
L9F45       lda L00FC
            sta L00E7
            lda L00FD
            sta L00E8
            lda #$A0
            sta L00D2
L9F51       ldy L00D2
            lda (L00E7),Y
            tax
            lda L1DFF,X
            sta L00C1
            lda L1CFF,X
            sta L00C0
            ldx L00D2
            ldy L1AFF,X
            lda L1BFF,X
            eor #$FF
            and (L00C0),Y
            sta (L00C0),Y
            ldy L00D2
            lda (L00CF),Y
            tax
            lda L1DFF,X
            sta L00C1
            lda L1CFF,X
            sta L00C0
            ldx L00D2
            lda #$AA
            and L1BFF,X
            ldy L1AFF,X
            ora (L00C0),Y
            sta (L00C0),Y
            dec L00D2
            bne L9F51
            rts
L9F90       lda #$A0
            sta L00D2
L9F94       ldy L00D2
            lda (L00CF),Y
            tax
            lda L1DFF,X
            sta L00C1
            lda L1CFF,X
            sta L00C0
            tya
            tax
            ldy L1AFF,X
            lda #$00
            sta (L00C0),Y
            dec L00D2
            bne L9F94
            rts
L9FB1       lda L00A0
            bpl L9FB8
            jmp LA039
L9FB8       lda L00FE
            sta L00E7
            lda L00FF
            sta L00E8
            lda #$28
            sta L00DB
            lda #$50
            sta L00DC
L9FC8       ldy #$00
            lda (L00E7),Y
            lsr
            lsr
            lsr
            tay
            lda L1E00,Y
            sta L00C1
            lda L1D00,Y
            sta L00C0
            ldx L00DB
            ldy L1B00,X
            lda #$00
            sta (L00C0),Y
            inc L00DB
            clc
            lda L00E7
            adc #$08
            sta L00E7
            bcc L9FF0
            inc L00E8
L9FF0       dec L00DC
            bne L9FC8
            lda L00D7
            sta L00E7
            sta L00FE
            lda L00D8
            sta L00E8
            sta L00FF
;
            org $BB00
;
LBB00       eor #$FF
            sta L00E3
            lda L00E4
            eor #$FF
            sta L00E4
            inc L00E3
            bne LBB10
            inc L00E4
LBB10       lda L00E4
            bne LBB28
            lda L00E3
            cmp #$20
            bcs LBB28
            ldy L0098
            lda L0B6B,Y
            sta L00E5
            lda L0B6C,Y
            bpl LBB4E
            bmi LBB32
LBB28       lda L00DD
            cmp L0091
            lda L00DE
            sbc L0092
            bcc LBB4E
LBB32       sec
            lda L00DD
            sbc L00E5
            sta L00DD
            lda L00DE
            sbc #$00
            sta L00DE
            ldy L0098
            lda L00E5
            sta L0B6B,Y
            lda #$FF
            sta L0B6C,Y
            jmp LBB65
LBB4E       clc
            lda L00E5
            adc L00DD
            sta L00DD
            lda L00DE
            adc #$00
            sta L00DE
            ldy L0098
            lda L00E5
            sta L0B6B,Y
            sta L0B6C,Y
LBB65       lda #$03
            sta L0094
            lda L0085
            adc #$0C
            and #$07
            bne LBB74
            jsr L9A9C
LBB74       lda #$18
            sta L0088
            jmp LA5B2
LBB7B       lda L00F6
            beq LBBA2
            cmp #$02
            bcs LBB8D
            lda L009C
            ora L009B
            ora L009D
            cmp #$04
            bcs LBBA2
LBB8D       jsr L8D0C
            lda L0091
            sta L00DD
            lda L0092
            sta L00DE
            lda #$07
            sta L00F9
            jsr LABED
            jsr L8E32
LBBA2       rts
            .byte $00,$00,$00
            php
;
            org $BBB6
;
            php
;
            org $BBC6
;
            php
;
            org $BBD6
;
            php
;
            org $BBE6
;
            php
;
            org $BBF6
;
            php
;
            org $BCBA
;
            bpl LBCBC
LBCBC       .byte $00,$00,$00
            php
            .byte $00,$00
            bpl LBCC6
            php
            .byte $00
LBCC6       .byte $00
            ora (L0000,X)
            .byte $00
            bpl LBCCC
LBCCC       .byte $00,$00,$00
            ora #$00
            .byte $00
            bpl LBCD6
            php
            .byte $00
LBCD6       .byte $00
            ora (L0000,X)
            .byte $00
            bpl LBCDC
LBCDC       .byte $00,$00,$00
            php
            .byte $00,$00
            bpl LBCE6
            php
            .byte $00
LBCE6       .byte $00
            ora (L0000,X)
            .byte $00
            bpl LBCEC
LBCEC       .byte $00,$00,$00
            php
            .byte $00,$00
            bpl LBCF6
            php
;
            org $BCFA
;
            bpl LBCFC
LBCFC       .byte $00,$00,$00
            php
            .byte $00
            ora (L0000,X)
            .byte $00,$00
            ora (L0000,X)
            .byte $01
;
            org $BD11
;
            ora (L0000,X)
            .byte $00,$00
            ora (L0000,X)
            .byte $01
;
            org $BFF8
;
            .byte $FF,$00,$00,$80,$00,$04,$00,$80
;
            org $02E2
;
            .word L8000
;
         
