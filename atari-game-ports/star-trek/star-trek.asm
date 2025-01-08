; 
            icl 'star-trek.inc'
;
; Start of code
;
	org $8000            
;
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F
            bpl L801F
            .byte $00
            ora (CASINI+1,X)
            .byte $07,$0F,$FF,$00,$FF,$00,$80
            rti
            ldy #$D0
            .byte $FF,$00
L801F       .byte $FF,$07
            ora (CMCMD,X)
            .byte $00,$03
            sed
            .byte $04
            sed
            .byte $FF
            cpy #$FF
            .byte $FF,$FF,$7F
            cpy #$7C
            .byte $FF,$00,$FF,$FF,$FF,$FF,$00,$00,$FF,$00,$FF
            sbc LFFFF,Y
            .byte $1F,$00
            sed
            clc
            beq L8074
            cpx #$E0
            cpy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$07,$03
            ora (L0000,X)
            .byte $00,$00
            php
            cmp #$B0
            cpy #$80
            .byte $00,$00,$00
            php
            .byte $FC,$D4
            ror L1F34,X
            .byte $2F,$2F,$3C
            bit ICAX3Z
            .byte $1C,$1C,$14
            dec L00FF
            .byte $00,$00,$00,$00
L8074       .byte $00,$00,$00
            cpy #$00
L8079       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            ora (NGFLAG,X)
            .byte $00,$00,$00,$00,$AF
            tax
            .byte $BF,$BF,$AF
            tax
            .byte $2F,$1F,$FF,$BF,$FF
            sbc LBFFE+1,X
            .byte $FF
L80AF       cpy #$F0
            sei
            sed
            sed
            cpx #$80
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $00,$00,$00,$FF,$FF,$FF
            cpx #$00
            .byte $00,$00,$00,$CF,$CF,$3F,$00,$00,$00,$00,$00,$FF,$FF,$FF,$3C,$00
            .byte $00,$00,$00,$F3,$F3,$CF,$0F,$00,$00,$00,$00,$03,$03,$C3,$C3,$00
            .byte $00,$00,$00,$FF,$FF,$FF,$C3,$00,$00,$00,$00,$00,$00,$C3
            cpy #$00
            .byte $00,$00,$00,$FF,$FF,$FF,$0F,$00,$00,$00,$00,$FF,$FF,$F3,$03,$00
            .byte $00,$00,$00,$FF,$FF,$FF,$C3,$00,$00,$00,$00,$00,$03,$CF,$CF,$00
            .byte $00,$00,$00,$FF,$FF,$FF
L812F       .byte $00,$00,$00,$00,$00,$E7,$E7,$E7,$07,$00,$00,$00,$00,$87,$9F
            inc.w L00F8,X
            .byte $00,$00,$00,$80,$80,$00,$00
            ora (L0000,X)
            .byte $00,$00,$00,$FF,$FF,$3F
            inc IOCB3+ICAX6,X
            .byte $00,$00,$FF,$FF,$FF,$00
            cpx #$FC
            .byte $3F,$0F,$FF,$FF,$FF,$3C,$3C,$3C
L8163       .byte $3C,$3C,$3C,$3F,$3F,$0F,$3C,$3F,$33,$F3
            beq L812F
            cpy #$C3
            .byte $F3,$F3,$F3,$FF,$3F,$3F,$0F
L8178       .byte $CF,$CF,$FF,$C7,$C7
L817D       cpy #$C0
            cpy #$00
            .byte $00
            cpy #$C0
            cpy #$F0
L8186       beq L8178
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F,$03,$03,$03,$03,$03,$03,$03,$03
            .byte $CF,$CF,$FF,$C7,$C7
            cpy #$C0
L819F       cpy #$0C
            .byte $0C
            cpy LCFCC
            .byte $FF,$F3
            beq L81C8
            .byte $7F,$7F,$00,$00,$FF,$FF,$FF,$E7,$E7,$87,$07
L81B4       .byte $07,$E7,$E7,$E7
            cpx #$F8
            inc L879E+1,X
            sta (LOMEM,X)
            .byte $80,$00,$00,$00,$80
            cpx #$FF
            .byte $7F,$3F
L81C8       .byte $00,$00,$00,$00,$FA,$23,$22,$22,$00,$00,$00,$00
            jsr LA05F+1
L81D7       jsr L70F0
            bvs L819F+1
            .byte $00
            bpl L8163
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            ldy #$70
            bmi L81B4
            cpx #$13
            rti
            .byte $44,$00,$12,$04
            bvs L8266
            rts
            beq L817D+1
            eor (L00D8,X)
            sta (L00F0,X)
            bvs L826F
            cpy L0000
            bpl L8186+1
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            ldy #$70
            bmi L81D7+1
            cpx #$13
            .byte $00
            eor L0000
            .byte $12
            ora ROWAC
            jsr L85EE+2
            eor (L00FC,X)
            sta (ROWAC,X)
            bvs L8290+2
            bvs L8293+1
            bvs L8296
            bvs L826F
L8228       cmp L0782
            bvs L829B+2
            lsr L00F5
            .byte $82
            lsr CASINI+1
            .byte $83
            lsr BRKKEY
            .byte $83
            bvs L82A6+2
            bvs L8228+2
            bvs L827C+2
            and L0083
            bvs L8281+1
            eor PTRIG7
            bvs L82B5
            eor (ABUFPT+3,X)
            .byte $82
            bvs L82B8+2
            beq L82BB+1
            bvs L82BE
L824E       bvs L82C0
            bvs L82C0+2
            bvs L82C3+1
            bvs L82C5+1
            bvs L82C8
            bvs L82C8+2
            bvs L82CC
            bvs L824E
            bvs L82A6+1
            cpx #$13
            bvs L82A4+1
            pha
            .byte $82
L8266       pha
            lda L064C
            bmi L8287
            lda L0735
L826F       sta WSYNC
            sta COLBK
            dec L0733
            bpl L82A9
            eor #$08
L827C       sta L0735
            lda #$04
L8281       sta L0733
            jmp L82A9
L8287       lda L0736
            sta WSYNC
            sta COLBK
L8290       inc L0736
L8293       inc L0736
L8296       dec L0733
            bne L8287
L829B       inc L0735
            lda L0735
            sta L0736
L82A4       lda #$97
L82A6       sta L0733
L82A9       lda #$B5
            sta VDSLST
            lda #$82
            sta VDSLST+1
            pla
            rti
L82B5       pha
            lda #$82
L82B8       sta WSYNC
L82BB       sta COLBK
L82BE       lda #$66
L82C0       sta VDSLST
L82C3       lda #$82
L82C5       sta VDSLST+1
L82C8       dec L0734
            pla
L82CC       rti
            .byte $00,$00
            ora L1B1A,Y
            .byte $1C
            ora L1F1E,X
            jsr L2221
            .byte $23
            bit ICBAHZ
            rol ICPTHZ
            plp
            and XMTDON,Y
            .byte $00
            and #$2A
            .byte $2B
            bit L2E2D
            .byte $2F
            bmi L831D
            .byte $32,$33,$34
            and LTEMP,X
            .byte $37
            sec
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            eor (CRITIC,X)
            .byte $43,$44
            eor FMSZPG+3
            .byte $47
            pha
            .byte $00,$00,$00,$00,$00,$00
            eor #$4A
            .byte $4B
            jmp L4E4D
            .byte $4F
            bvc L8312
L8312       .byte $00,$00,$00,$00,$00
            eor (LMARGN),Y
            .byte $53,$54
            eor COLCRS+1,X
L831D       .byte $57
            cli
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
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
            bmi L8370
            and #$33
            and BUFRHI
            .byte $0C,$00
            and #$2E
            .byte $23
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$34
            and L2900
            rol L2924
            .byte $23
            and (BFENLO,X)
            and BUFRHI
            .byte $00
            and (L0000,X)
            .byte $34,$32
            and (ICBALZ,X)
            and ICAX4Z
            and (BUFRLO,X)
            .byte $2B,$00,$2F
            rol L0000
            .byte $00
L8370       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bmi L839D
            .byte $32
            and (ICAX4Z,X)
            .byte $2F
            and ICAX5Z,X
            .byte $34,$00
            bmi L83AF
            .byte $23,$34
L8388       and BUFRLO,X
            and BUFRHI
            .byte $00,$23,$2F,$32
            bmi L83C0+1
            .byte $32
            and (BFENLO,X)
            and #$2F
            rol.w L0000
            .byte $00,$00,$00
L839D       pha
            lda #$E0
            sta CHBASE
            lda #$00
            sta COLPF2
            lda #$0A
            sta COLPF1
            pla
            rti
L83AF       lda #$00
            sta NMIEN
            sta IRQEN
            sta DMACLT
            sta GRACTL
            sta CHACTL
L83C0       sta COLBK
            sei
            cld
            ldy #$03
L83C7       sta COLPF0,Y
            sta HPOSP0,Y
            sta HPOSM0,Y
            sta COLPM0,Y
            dey
            bpl L83C7
            lda #$03
            sta SKCTL
            lda #$00
            sta AUDCTL
            sta L078E
            ldy #$00
            lda #$00
L83E7       sta L0600,Y
            sta L0700,Y
            iny
            bne L83E7
            ldx #$00
            ldy #$00
            lda #$00
            sta L00C0
            lda #$08
            sta L00C1
            lda #$00
L83FE       sta (L00C0),Y
            iny
            bne L83FE
            inc L00C1
            inx
            cpx #$28
            bne L83FE
            ldy #$80
L840C       lda LB12A,Y
            sta L1440,Y
            dey
            bpl L840C
            ldy #$00
L8417       lda LB1AA,Y
            sta L14C0,Y
            iny
            cpy #$A0
            bne L8417
            lda #$01
            sta L06F1
            ldy #$00
L8429       lda LB24A,Y
            sta L1560,Y
            iny
            cpy #$A0
            bne L8429
            lda #$00
            sta L00C0
            lda #$18
            sta L00C1
            lda #$EA
            sta L00C2
            lda #$B2
            sta L00C3
            ldx #$00
L8446       lda (L00C2,X)
            beq L8453
            cmp #$88
            beq L846F
            sta (L00C0,X)
            jmp L8466
L8453       jsr L8535
            lda (L00C2,X)
            tay
L8459       lda #$00
            sta (L00C0,X)
            dey
            bmi L8466
            jsr L8529
            jmp L8459
L8466       jsr L8529
            jsr L8535
            jmp L8446
L846F       lda #$00
            sta L00BE
            lda #$24
            sta L00BF
            lda #$00
            sta L06CA
            lda #$00
            sta L00C0
            lda #$18
            sta L00C1
            ldy #$00
L8486       ldx #$00
            stx L06CB
L848B       lda (L00C0,X)
            and #$F0
            sta L06CD
            and #$C0
            sta L06CC
            lsr
            lsr
            ora L06CC
            sta L06CC
            lda L06CD
            and #$30
            lsr
            lsr
            ora L06CC
            sta L06CC
            lda L06CD
            and #$30
            lsr
            lsr
            lsr
            lsr
            ora L06CC
            sta (L00BE),Y
            tya
            pha
            clc
            adc #$08
            tay
            lda (L00C0,X)
            and #$0F
            sta L06CD
            and #$0C
            asl
            asl
            sta L06CC
            asl
            asl
            ora L06CC
            sta L06CC
            lda L06CD
            and #$03
            ora L06CC
            sta L06CC
            lda L06CD
            and #$03
            asl
            asl
            ora L06CC
            sta (L00BE),Y
            pla
            tay
            iny
            cpy #$08
            bne L8501
            ldy #$00
            lda L00BE
            clc
            adc #$10
            sta L00BE
            bcc L8501
            inc L00BF
L8501       lda L00C0
            clc
            adc #$01
            sta L00C0
            bcc L850C
            inc L00C1
L850C       inc L06CB
            lda L06CB
            cmp #$A0
            beq L8519
            jmp L848B
L8519       inc L06CA
            lda L06CA
            cmp #$13
            beq L8526
            jmp L8486
L8526       jmp L8541
L8529       lda L00C0
            clc
            adc #$01
            sta L00C0
            bcc L8534
            inc L00C1
L8534       rts
L8535       lda L00C2
            clc
            adc #$01
            sta L00C2
            bcc L8540
            inc L00C3
L8540       rts
L8541       ldy #$00
            lda #$40
L8545       sta L0E96,Y
            sta L0EB1,Y
            iny
            cpy #$0A
            bne L8545
            lda #$63
            sta L0FA8
            ldy #$81
            lda #$FF
L8559       sta L0B00,Y
            iny
            cpy #$D8
            bne L8559
            ldy #$07
            lda #$03
L8565       sta L1408,Y
            dey
            bpl L8565
            ldx #$0B
            lda #$0E
            sta L00C2
            lda #$10
            sta L00C3
L8575       ldy #$00
            lda #$81
            sta (L00C2),Y
            ldy #$18
            sta (L00C2),Y
            lda L00C2
            clc
            adc #$28
            sta L00C2
            lda L00C3
            adc #$00
            sta L00C3
            dex
            bpl L8575
            lda #$FF
            sta L1410
            ldy #$17
            lda #$82
L8598       sta L100F,Y
            dey
            bpl L8598
            lda #$FF
            sta L1418
            ldy #$06
            lda #$03
L85A7       sta L1419,Y
            dey
            bpl L85A7
            lda #$FF
            ldy #$18
L85B1       sta L0738,Y
            sta L0751,Y
            sta L076A,Y
            dey
            bpl L85B1
            sta L078F
            sta L0737
            lda #$83
            sta L1026
            lda #$08
            sta PMBASE
            lda #$14
            sta CHBASE
            lda #$37
            sta VVBLKI
            lda #$88
            sta VVBLKI+1
            lda #$03
            sta GRACTL
            lda #$3E
            sta DMACLT
            lda #$01
            sta L06B5
            sta NMIEN
L85EE       sta L06A5
            lda #$40
            sta NMIEN
            jmp L95BA
L85F9       lda L06EE
            clc
            adc L072E
            jsr L8639
            sta L06EE
            lda L06ED
            adc L072D
            jsr L8639
            sta L06ED
            lda L06EC
            adc L072C
            jsr L8639
            sta L06EC
            lda L06EB
            adc L072B
            jsr L8639
            sta L06EB
            lda #$00
            sta L072B
            sta L072C
            sta L072D
            sta L072E
            rts
L8639       cmp #$0A
            bcc L8642
            sec
            sbc #$0A
            sec
            rts
L8642       clc
            rts
L8644       ldx L0609
            lda L8656,X
            sta L072E
            lda L8660,X
            sta L072D
            jmp L85F9
L8656       ora (CASINI,X)
            .byte $03,$04
            ora TRAMSZ
            .byte $07
            php
            ora #$00
L8660       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
L8669       ora (L00A9,X)
            ora (L008D,X)
            rol L4C07
L8670       sbc LA984+1,Y
            ora L008D
            and L4C07
L8678       sbc LAE85,Y
            ora #$06
            lda L868C,X
            sta L072D
            lda L8696,X
            sta L072C
            jmp L85F9
L868C       .byte $02
            ora L0000
            .byte $00
            ora L0000
            ora L0000
            ora L0000
L8696       .byte $00,$00
            ora (CASINI,X)
            .byte $02,$03,$03,$04,$04
L869F       ora L00A9
            ora L008D
            rol L4C07
L86A6       sbc LA984+1,Y
            .byte $03
            sta L072C
            jmp L85F9
            pha
            lda #$00
            sta WSYNC
            sta COLBK
            lda #$C5
            sta VDSLST
            lda #$86
            sta VDSLST+1
            pla
            rti
            pha
            txa
            pha
            tya
            pha
            ldy L0601
            lda L0610,Y
            ldx L0628,Y
            sta WSYNC
            sta HPOSP0
            stx COLPM0
            lda L061C,Y
            sta HPOSP1
            lda L0634,Y
            sta COLPM1
            inc L0601
            lda L0601
            cmp #$0B
            bne L86FC
            lda #$1D
            sta VDSLST
            lda #$87
            sta VDSLST+1
L86FC       cmp #$04
            bne L8705
            lda #$C8
            jmp L8714
L8705       cmp #$06
            bne L870E
            lda #$26
            jmp L8714
L870E       cmp #$08
            bne L8717
            lda #$88
L8714       sta COLPF1
L8717       pla
            tay
            pla
            tax
            pla
            rti
            pha
            lda #$08
            sta WSYNC
            sta COLBK
            lda #$61
            sta VDSLST
            lda #$87
            sta VDSLST+1
            lda #$FF
            sta SIZEM
            lda #$2B
            sta HPOSM0
            lda #$CD
            sta HPOSM1
            lda #$23
            sta HPOSM2
            lda #$D5
            sta HPOSM3
            lda #$E0
            sta CHBASE
            lda #$EA
            sta COLPF0
            lda L06D4
            sta COLPF1
            lda L06D5
            sta COLPF2
            pla
            rti
            pha
            txa
            pha
            tya
            pha
            ldy #$00
L8768       lda LB06B,Y
            ora L06A1
            sta WSYNC
            sta COLBK
            iny
            cpy #$07
            bne L8768
            lda #$08
            sta WSYNC
            sta COLBK
            sta WSYNC
            lda L0732
            sta WSYNC
            sta COLBK
            lda #$E6
            sta VDSLST
            lda #$87
            sta VDSLST+1
            lda #$11
            sta PRIOR
            lda #$03
L879E       sta SIZEP3
            lda #$0E
            sta COLPM2
            sta COLPM3
            lda #$7F
            sta HPOSP2
            lda #$6E
            sta HPOSP3
            lda L0603
            sta HPOSP0
            lda L0604
L87BC       sta HPOSP1
            lda #$3A
            sta COLPM0
            sta COLPM1
            lda #$01
            sta L0601
            lda #$08
            sta COLPF3
            jsr L89BA
            jsr L89C6
            jsr L89B1
            jsr LA9B5
            jsr L89DF
            pla
            tay
            pla
            tax
            pla
            rti
            pha
            sta WSYNC
            lda L06D3
            sta COLPF0
            lda #$14
            sta CHBASE
            lda #$01
            sta VDSLST
            lda #$88
            sta VDSLST+1
            pla
            rti
            pha
            tya
            pha
            lda #$08
            sta WSYNC
            sta COLBK
            lda #$1A
            sta VDSLST
            lda #$88
            sta VDSLST+1
            pla
            tay
            pla
            rti
            pha
            txa
            pha
            tya
            pha
            lda #$00
            sta WSYNC
            sta COLBK
            lda #$B0
            sta VDSLST
            lda #$86
            sta VDSLST+1
            pla
            tay
            pla
            tax
            pla
            rti
            lda L06A5
            bne L8844
            lda #$00
            sta NMIEN
            jmp L8911
L8844       lda #$C0
            sta NMIEN
            lda #$03
            sta GRACTL
            lda #$3E
            sta DMACLT
            jsr L89FC
            lda L06B5
            and L0721
            bmi L8861
            jmp L8911
L8861       jsr L927A
            lda L060A
            cmp #$02
            bne L886E
            jmp L8B3F
L886E       cmp #$05
            bne L8875
            jmp L8BBF
L8875       jsr LA62D+2
            lda L06B7
            bne L8880
            jmp L8914
L8880       jsr L91F9
            lda L0607
            beq L8893
            cmp #$01
            beq L88B9
            cmp #$02
            beq L88D2
            jmp L88F1
L8893       jsr L8C59
            jsr L8D3C
            jsr L8AFF
            jsr LA183
            jsr LA21C
            jsr LA70F
            jsr LA899
            jsr LA4DB
            sta HITCLR
            lda #$00
            sta L0705
            jsr L946B
            jmp L88FF
L88B9       lda #$FF
            sta L0705
            jsr L89D2
            jsr L8D75
            jsr LA21C
            jsr L93D9
            lda #$00
            sta L06AF
            jmp L88FF
L88D2       lda #$FF
            sta L06AF
            jsr L90B4
            jsr LA183
            jsr LA21C
            jsr LA31F
            jsr L9140
            jsr L91C8
            lda #$00
            sta L06DE
            jmp L88FF
L88F1       lda #$FF
            sta L06DE
            jsr LACE7
            jsr LAD81
            jsr LA8F8
L88FF       jsr L9DCE
            inc L0607
            lda L0607
            cmp #$04
            bne L8911
            lda #$00
            sta L0607
L8911       jsr L8C87
L8914       jsr L951C
L8917       jsr L8C4D
            lda #$00
            sta L06F2
            lda L06F1
            bne L8927
            jsr L8AD2
L8927       pla
            tay
            pla
            tax
            pla
            rti
L892D       lda #$0C
            sta L00FC
            lda #$4E
            sta L00F2
            lda #$06
            sta L00F3
            lda #$40
            sta L00F0
            lda #$06
            sta L00F1
            lda #$6A
            sta L00F6
            lda #$06
            sta L00F7
            lda #$10
            sta L00FA
            lda #$06
            sta L00FB
            lda #$5C
            sta L00F4
            lda #$06
            sta L00F5
            lda #$28
            sta L00FE
            lda #$06
            sta L00FF
            lda #$78
            sta L00F8
            lda #$06
            sta L00F9
            lda #$00
            sta L06A4
            rts
L896F       lda #$0D
            sta L00FC
            lda #$54
            sta L00F2
            lda #$06
            sta L00F3
            lda #$46
            sta L00F0
            lda #$06
            sta L00F1
            lda #$70
            sta L00F6
            lda #$06
            sta L00F7
            lda #$1C
            sta L00FA
            lda #$06
            sta L00FB
            lda #$62
            sta L00F4
            lda #$06
            sta L00F5
            lda #$34
            sta L00FE
            lda #$06
            sta L00FF
            lda #$7E
            sta L00F8
            lda #$06
            sta L00F9
            lda #$01
            sta L06A4
            rts
L89B1       lda L06AF
            bmi L89B9
            jsr L8E2E+1
L89B9       rts
L89BA       lda L070F
L89BD       bmi L89C5
            jsr L9077
            jsr L92E6
L89C5       rts
L89C6       lda L06B0
            bmi L89D1
            jsr L8F8F
            jsr L8FD7
L89D1       rts
L89D2       jsr L892D
            jsr L8F17
            jsr L896F
            jsr L8F17
            rts
L89DF       lda L06B7
            and L0705
            beq L89E8
            rts
L89E8       jsr L89EF
            jsr L8D48
            rts
L89EF       jsr L892D
            jsr L8EE0
            jsr L896F
            jsr L8EE0
            rts
L89FC       lda L0737
            bne L8A04
            jmp L8A98
L8A04       lda L078F
            bpl L8A0C
            jmp L8AB5
L8A0C       ldy L06A6
            lda #$14
            sta CHBASE
            lda L069E
            clc
            adc #$6C
            sta HPOSP0
            lda L065C,Y
            sta COLPM0
            ldy L06A7
            lda L069F
            clc
            adc #$6C
            sta HPOSP1
            lda L0662,Y
            sta COLPM1
            lda L065A
            clc
            adc #$6C
            sta HPOSP2
            lda L065B
            clc
            adc #$6C
            sta HPOSP3
            lda L0668
            sta COLPM2
            lda L06BE
            clc
            adc #$6C
            sta HPOSM0
            lda L06BF
            clc
            adc #$6C
            sta HPOSM1
            lda L06C0
            clc
            adc #$6C
            sta HPOSM2
            lda L0669
            sta COLPM3
            lda L06F1
            bne L8A78
            lda #$11
            jmp L8A7A
L8A78       lda #$14
L8A7A       sta PRIOR
            lda #$00
            sta SIZEP3
            sta COLBK
            lda #$0E
            sta COLPF0
            sta COLPF1
            lda #$00
            sta SIZEM
            lda #$00
            sta L0601
            rts
L8A98       lda #$00
            ldy #$03
L8A9C       sta HPOSP0,Y
            sta HPOSM0,Y
            dey
            bpl L8A9C
            lda #$E0
            sta CHBASE
            lda #$82
            sta COLBK
            lda #$EE
            sta COLPF0
            rts
L8AB5       lda #$00
            ldy #$03
L8AB9       sta HPOSP0,Y
            sta HPOSM0,Y
            dey
            bpl L8AB9
            lda #$86
            sta COLPF0
            lda #$EA
            sta COLPF1
            lda #$80
            sta CHBASE
            rts
L8AD2       lda #$11
            sta PRIOR
            dec L065B
            lda L065B
            cmp #$2C
            beq L8AE9
            cmp #$00
            beq L8AE9
            jsr L91F9
            rts
L8AE9       lda #$01
            sta L06F1
            lda #$00
            sta L065B
            sta L0669
            ldy #$00
L8AF8       sta L0F4E,Y
            dey
            bpl L8AF8
            rts
L8AFF       dec L06BD
            bmi L8B05
            rts
L8B05       lda #$04
            sta L06BD
            ldy #$01
L8B0C       tya
            asl
            tax
            lda L0701
            beq L8B21
            lda L06BA,Y
            bne L8B21
            lda #$24
            sta L0662,X
            jmp L8B33
L8B21       lda L06B8,Y
            beq L8B2E
            lda #$C6
            sta L0662,X
            jmp L8B33
L8B2E       lda #$74
            sta L0662,X
L8B33       dey
            bpl L8B0C
            lda L0701
            eor #$01
            sta L0701
            rts
L8B3F       lda #$00
            sta L0738
            lda L0607
            beq L8B50
            cmp #$01
            beq L8B6E
            jmp L8B8F
L8B50       lda #$FF
            sta L06DE
            lda #$0A
            sta L0608
            jsr L8D3C
            jsr LA8F8
            jsr LA70F
            sta HITCLR
            lda #$01
            sta L0607
            jmp L8BA8
L8B6E       lda #$FF
            sta L06B2
            jsr L9140
            jsr LA4DB
            jsr LA841
            jsr LAD81
            lda #$00
            sta L0705
            sta L06B0
            lda #$02
            sta L0607
            jmp L8BA8
L8B8F       lda #$FF
            sta L0705
            sta L06B0
            jsr L8C59
            jsr L89D2
            jsr L8D75
            lda #$00
            sta L06DE
            sta L0607
L8BA8       lda L0607
            bne L8BBC
            dec L0706
            bne L8BBC
            dec L0707
            bne L8BBC
            lda #$FF
            sta L0709
L8BBC       jmp L8911
L8BBF       jsr LA62D+2
            lda L06B7
            bne L8BCA
            jmp L8C4A
L8BCA       jsr L91F9
            lda L0607
            beq L8BDD
            cmp #$01
            beq L8BFF
            cmp #$02
            beq L8C21
            jmp L8C3D
L8BDD       jsr L8C59
            jsr L8D3C
            jsr LA415
            jsr LA21C
            jsr LA4DB
            lda #$00
            sta HITCLR
            sta L0705
            sta L070F
            lda #$01
            sta L0607
            jmp L8C4A
L8BFF       lda #$FF
            sta L0705
            sta L070F
            jsr L89D2
            jsr L8D75
            jsr LA21C
            jsr LA70F
            jsr LACE7
            jsr LAD81
            lda #$02
            sta L0607
            jmp L8C4A
L8C21       jsr LA415
            jsr LA21C
            jsr LA31F
            jsr L91C8
            jsr L9140
            lda #$00
            sta L06DE
            lda #$03
            sta L0607
            jmp L8C4A
L8C3D       lda #$FF
            sta L06DE
            jsr LA8F8
            lda #$00
            sta L0607
L8C4A       jmp L8911
L8C4D       dec L0731
            bmi L8C53
            rts
L8C53       lda #$82
            sta L0732
            rts
L8C59       lda PORTA
            ldx KBCODE
            pha
            lda SKSTAT
            and #$04
            tay
            pla
            cpy #$00
            bne L8C83
            cpx #$3F
            bne L8C71
            and #$FB
L8C71       cpx #$3E
            bne L8C77
            and #$F7
L8C77       cpx #$07
            bne L8C7D
            and #$FD
L8C7D       cpx #$21
            bne L8C83
            and #$FE
L8C83       sta L06A8
            rts
L8C87       lda #$00
            sta L0785
L8C8C       sta L0787
            sta L0789
            sta L078B
            ldx #$00
L8C97       lda L0738,X
            bpl L8C9F
            jmp L8D33
L8C9F       txa
            asl
            tay
            lda LB97A,Y
            sta L00B6
            lda LB97A+1,Y
            sta L00B7
            lda LB9A2+2,Y
            sta L00B4
            lda LB9A5,Y
            sta L00B5
            lda LB9CE,Y
            sta L00B2
            lda LB9CF,Y
            sta L00B3
            lda L076A,X
            bpl L8CD0
            lda #$00
            sta L076A,X
            tay
            lda (L00B2),Y
            sta L0751,X
L8CD0       dec L0751,X
            bpl L8D0C
            inc L076A,X
            lda L076A,X
            tay
            lda (L00B2),Y
            sta L0751,X
            lda (L00B6),Y
            cmp #$FF
            bne L8D0C
            lda #$FF
            sta L0738,X
            sta L076A,X
            sta L0751,X
            lda LB9F8,X
            asl
            tay
            lda L0785,Y
            beq L8CFF
            jmp L8D33
L8CFF       lda #$00
            sta AUDC1,Y
            lda #$01
            sta L0785,Y
            jmp L8D33
L8D0C       lda L076A,X
            tay
            lda (L00B6),Y
            sta L0783
            lda (L00B4),Y
            sta L0784
            lda LB9F8,X
            asl
            tay
            lda L0785,Y
            bne L8D33
            lda L0783
            sta AUDF1,Y
            sta L0785,Y
            lda L0784
            sta AUDC1,Y
L8D33       inx
            cpx #$15
            beq L8D3B
            jmp L8C97
L8D3B       rts
L8D3C       lda L06E5
            bmi L8D42
            rts
L8D42       lda #$00
            sta L073E
            rts
L8D48       ldx #$0D
            lda #$0F
            sta L00CF
L8D4E       lda L0690,X
            bmi L8D63
            clc
            adc #$1F
            sta L00CE
            lda #$00
            ldy #$08
L8D5C       sta (L00CE),Y
            dey
            bpl L8D5C
            beq L8D6F
L8D63       cpx #$0D
            beq L8D6F
            cpx #$0C
            beq L8D6F
            cpx #$06
            bne L8D71
L8D6F       dec L00CF
L8D71       dex
            bpl L8D4E
            rts
L8D75       ldx #$0D
            lda #$0F
            sta L00CF
L8D7B       lda L0640,X
            bmi L8DA0
            sta L0690,X
            clc
            adc #$21
            sta L00CE
            lda L066A,X
            asl
            tay
L8D8D       lda L8E07,Y
            sta L00D0
            lda L8E08,Y
            sta L00D1
            ldy #$04
L8D99       lda (L00D0),Y
            sta (L00CE),Y
            dey
            bpl L8D99
L8DA0       cpx #$0D
            beq L8DAC
            cpx #$0C
            beq L8DAC
            cpx #$06
            bne L8DAE
L8DAC       dec L00CF
L8DAE       dex
            bpl L8D7B
            rts
            jsr LF870
            .byte $00,$00
L8DB7       beq L8D99
            .byte $80,$00,$00
            jsr LE060
            rts
            jsr LE080
            beq L8DC5
L8DC5       .byte $00
L8DC6       sed
            bvs L8DE9
            .byte $00,$00
L8DCB       bpl L8E3C+1
L8DCD       beq L8DCF
L8DCF       .byte $00
L8DD0       .byte $80
            cpy #$E0
            cpy #$80
            beq L8E47
            bpl L8DD9
L8DD9       .byte $00
L8DDA       beq L8DCB+1
            beq L8DCD+1
L8DDE       beq L8E00
            bvs L8DDA
            bvs L8E04
            clc
            .byte $3C,$3C
            clc
            .byte $00
L8DE9       .byte $0C
            asl L9C7E,X
            .byte $00
            clc
            clc
            clc
            clc
            clc
            .byte $00
            plp
            bpl L8E1F
            .byte $00
L8DF8       .byte $00
            clc
            clc
            .byte $00,$00
L8DFD       clc
            bit CRITIC
L8E00       bit DSKFMS
            .byte $00,$00
L8E04       .byte $00,$00,$00
L8E07       .byte $B2
L8E08       sta L8DB7
            ldy LC18D,X
            sta L8DC6
            .byte $CB
            sta L8DD0
            cmp L008D,X
            .byte $DA
            sta L8DDE+1
            cpx L008D
            sbc #$8D
L8E1F       inc LF38D
            sta L8DF8
            sbc LFD8D,X
            sta L8DFD
            sbc L028D,X
L8E2E       stx LB7AD
            asl L00F0
            plp
            and L0704
            beq L8E45
            lda L06A8
L8E3C       and #$0F
            tay
            lda L8EC0,Y
            bne L8E45
            rts
L8E45       lda #$00
L8E47       sta L0738
            lda RANDOM
            ora #$80
            and #$B0
            sta L00B1
            lda RANDOM
            sta L00B0
            ldx #$00
            nop
            nop
            ldy #$0D
            ldx L0600
L8E61       cpy #$0C
            bne L8E6A
            lda L06C4
            bpl L8E9C
L8E6A       lda L0640,Y
            bmi L8E9C
            cpy #$0C
            beq L8E7A
            clc
            adc L8EA0,X
            jmp L8E7E
L8E7A       sec
            sbc L8EA0,X
L8E7E       jsr L8ED0
            sta L0640,Y
            lda L064E,Y
            cpy #$0C
            beq L8E92
            clc
L8E8C       adc L8EAF+1,X
            jmp L8E96
L8E92       sec
            sbc L8EAF+1,X
L8E96       jsr L8ED0
            sta L064E,Y
L8E9C       dey
            bpl L8E61
            rts
L8EA0       ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            ora (NGFLAG,X)
L8EAF       ora (L0000,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
L8EC0       .byte $00,$00,$00,$00,$00,$00
            ora (L0000,X)
            .byte $00,$00
            ora (L0000,X)
            .byte $00,$00
            ora (L0000,X)
L8ED0       cmp #$FF
            bne L8ED9
            lda #$5A
            jmp L8EDF
L8ED9       cmp #$5B
            bne L8EDF
            lda #$00
L8EDF       rts
L8EE0       ldy #$05
L8EE2       lda (L00F0),Y
            bpl L8EEF
            dey
            bpl L8EE2
            lda #$FF
            sta L060F
            rts
L8EEF       sty L060F
            sta L060E
            dey
            bpl L8EFB
            jmp L8F0D
L8EFB       lda (L00F0),Y
            bmi L8F0A
            cmp L060E
            bcs L8F0A
            sty L060F
            sta L060E
L8F0A       dey
            bpl L8EFB
L8F0D       ldx L06A4
            lda L060F
            sta L06A6,X
            rts
L8F17       ldx L06A4
            lda L06A6,X
            tay
            bpl L8F21
            rts
L8F21       lda (L00F2),Y
            sta L069E,X
            bmi L8F2B
            clc
            adc #$6C
L8F2B       sta HPOSP0,X
            lda (L00F4),Y
            sta COLPM0,X
            ldx #$00
            txa
            sta (L00F8),Y
            stx L06A0
L8F3B       lda (L00F0),Y
            cmp #$FF
            beq L8F72
            clc
            adc #$05
            cmp L8F84,X
            bcc L8F72
            lda (L00F2),Y
            bmi L8F50
            clc
            adc #$6C
L8F50       sta L06A2
            lda (L00F4),Y
            sta L06A3
            tya
            pha
            txa
            tay
            lda L06A2
            sta (L00FA),Y
            lda L06A3
            sta (L00FE),Y
            pla
            tay
            txa
            clc
            adc #$01
            sta (L00F8),Y
            inx
            jmp L8F3B
L8F72       iny
            cpy #$06
            bne L8F79
            ldy #$00
L8F79       inc L06A0
            lda L06A0
            cmp #$06
            bne L8F3B
            rts
L8F84       php
            bpl L8F9E+1
            jsr L3028
            sec
            rti
            pha
            bvc L8FE5+2
L8F8F       dec L0708
            bmi L8F95
            rts
L8F95       ldy L0609
            lda L9052,Y
            sta L0708
L8F9E       ldx L0600
            ldy #$0B
L8FA3       lda L0640,Y
            bmi L8FD3
            clc
            adc L9042,X
            jsr L905C
            jsr L9000
            sta L0640,Y
            lda L0609
            and #$01
            beq L8FC6
            lda L064E,Y
            clc
            adc L9032,X
            jmp L8FCD
L8FC6       lda L064E,Y
            clc
            adc L9022,X
L8FCD       jsr L9000
            sta L064E,Y
L8FD3       dey
            bpl L8FA3
            rts
L8FD7       dec L072A
            bmi L8FDD
            rts
L8FDD       lda #$01
            sta L072A
            ldx L0600
L8FE5       lda L064C
            clc
            adc L8EA0,X
            jsr L9012
            sta L064C
            lda L065A
            clc
            adc L8EAF+1,X
            jsr L9012
            sta L065A
            rts
L9000       cmp #$00
            bpl L900A
            clc
            adc #$5B
            jmp L9011
L900A       cmp #$5B
            bcc L9011
            sec
            sbc #$5B
L9011       rts
L9012       cmp #$00
            bpl L901B
            lda #$00
            jmp L9021
L901B       cmp #$5B
            bcc L9021
            lda #$5A
L9021       rts
L9022       .byte $00
            ora (CASINI,X)
            .byte $02,$02,$02,$02
            ora (L0000,X)
            .byte $FF
            inc LFEFE,X
            inc LFFFE,X
L9032       ora (CASINI,X)
            .byte $03,$03,$03,$03,$03,$02
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
L9042       .byte $02,$02
            ora (NGFLAG,X)
            .byte $00,$FF,$FF
            inc LFEFE,X
            .byte $FF,$FF,$00
            ora (NGFLAG,X)
            .byte $02
L9052       .byte $02,$03
            ora (CASINI,X)
            ora (CASINI,X)
            .byte $00
            ora (L0000,X)
            .byte $00
L905C       cpy #$0C
            beq L9076
            pha
            cmp #$00
            bmi L9069
            cmp #$5B
            bcc L9075
L9069       lda L064E,Y
            clc
            adc #$15
            jsr L9000
            sta L064E,Y
L9075       pla
L9076       rts
L9077       lda L06B7
            beq L9088
            lda L06A8
            and #$0F
            tay
            lda L8EC0,Y
            bne L9088
            rts
L9088       lda #$00
            sta L0738
            ldx L0600
            ldy #$0C
L9092       lda L0640,Y
            bmi L90B0
            clc
            adc L8EA0,X
            jsr L8ED0
            sta L0640,Y
            lda L064E,Y
            bmi L90B0
            clc
            adc L8EAF+1,X
            jsr L8ED0
            sta L064E,Y
L90B0       dey
            bpl L9092
            rts
L90B4       lda L06C4
            bpl L90EA
L90B9       lda L064C
            bpl L90BF
L90BE       rts
L90BF       lda P2PF
            and #$01
            beq L90BE
            lda L064C
            sec
            sbc #$2D
            bpl L90D0
            eor #$FF
L90D0       cmp #$05
            bcc L90D5
            rts
L90D5       lda L065A
            sec
            sbc #$2D
            bpl L90DF
            eor #$FF
L90DF       cmp #$05
            bcc L90E4
            rts
L90E4       lda #$00
            sta L06C4
            rts
L90EA       cmp #$01
            beq L910B
            lda L06E7
            beq L9105
            bmi L9105
            sec
            sbc #$04
            bpl L90FC
            lda #$00
L90FC       sta L06E7
            lda #$00
            sta L0745
            rts
L9105       lda #$01
            sta L06C4
            rts
L910B       lda #$00
            sta L0747
            lda #$FF
            sta L0745
            sta L0777
            lda #$00
            sta AUDC1
            lda L065A
            clc
            adc #$04
            cmp #$5E
            bcs L912B
            sta L065A
            rts
L912B       lda #$FF
            sta L06C4
            sta L0747
            sta L0779
            sta L064C
            sta COLPM2
            sta L0668
            rts
L9140       lda L06B2
            bmi L9146
            rts
L9146       lda L06A8
            and #$0F
            tay
            lda L92D6,Y
            beq L9156
            bpl L917F
            jmp L91A3
L9156       lda L060C
            beq L915E
            jmp L91A3
L915E       inc L0600
            lda L0600
            cmp #$10
            bne L916D
            lda #$00
            sta L0600
L916D       lda #$00
            sta L0608
            lda #$00
            sta L06E0
            lda #$01
            sta L060C
            jmp L91AE
L917F       lda L060C
            beq L9187
            jmp L91A3
L9187       dec L0600
            bpl L9191
            lda #$0F
            sta L0600
L9191       lda #$14
            sta L0608
            lda #$01
            sta L06E0
            lda #$01
            sta L060C
            jmp L91AE
L91A3       dec L060C
            bpl L91AD
            lda #$01
            sta L060C
L91AD       rts
L91AE       lda L0600
            asl
            tax
            lda LB00B,X
            sta L00B8
            lda LB00C,X
            sta L00B9
            ldy #$1F
L91BF       lda (L00B8),Y
            sta L1420,Y
            dey
            bpl L91BF
            rts
L91C8       lda L06B3
            bmi L91D3
            dec L06B3
            jmp L91F8
L91D3       lda L06B4
            bpl L91F8
            lda SKSTAT
            and #$04
            bne L91E6
            lda KBCODE
            cmp #$06
            beq L91EB
L91E6       lda TRIG0
            bne L91F8
L91EB       lda #$00
            sta L06B4
            sta L0742
            lda #$03
            sta L06B3
L91F8       rts
L91F9       ldx L06B4
            bmi L9263
            beq L9227
            txa
            sec
            sbc #$01
            asl
            tay
            lda LB046+1,Y
            sta L00D4
            lda LB04F,Y
            sta L00D6
            lda LB046+2,Y
            sta L00D5
            lda LB050,Y
            sta L00D7
            ldy #$00
            lda #$00
L921E       sta (L00D4),Y
            sta (L00D6),Y
            iny
            cpy #$0A
            bne L921E
L9227       cpx #$04
            beq L9264
            txa
            asl
            tay
            lda LB046+1,Y
            sta L00D4
            lda LB04F,Y
            sta L00D6
            lda LB046+2,Y
            sta L00D5
            lda LB050,Y
            sta L00D7
            ldy #$00
L9244       lda LB056+1,Y
            sta (L00D4),Y
            lda LB061,Y
            sta (L00D6),Y
            iny
            cpy #$0A
            bne L9244
            lda LB03F,X
            sta L0603
            lda LB043,X
            sta L0604
            inx
            stx L06B4
L9263       rts
L9264       lda #$00
            sta L0603
            sta L0604
            ldx #$FF
            stx L06B4
            lda #$00
            sta L06E4
            sta L078D
            rts
L927A       lda L060A
            cmp #$02
            bne L9282
            rts
L9282       lda L06B2
            bpl L9288
            rts
L9288       lda L06D0
            cmp #$08
            bcc L9297
            cmp #$09
            beq L9297
            cmp #$0C
            bne L92A7
L9297       jsr LAD66
            bcc L92A7
            lda #$00
            sta L073C
            lda L0607
            beq L92A7
            rts
L92A7       lda L06A8
            and #$0F
            tay
            lda L92D6,Y
            beq L92B5
            bpl L92C8
            rts
L92B5       inc L0608
            lda L0608
            cmp #$15
            beq L92C0
            rts
L92C0       lda #$FF
            sta L06B2
            jmp L915E
L92C8       dec L0608
            bmi L92CE
            rts
L92CE       lda #$FF
            sta L06B2
            jmp L9187
L92D6       .byte $FF,$FF,$FF,$FF,$FF
            ora (NGFLAG,X)
            ora (L00FF,X)
            .byte $00,$00,$00,$FF,$FF,$FF,$FF
L92E6       lda L0676
            cmp #$0C
            beq L9303
            lda L064C
            bpl L9302
            lda #$FF
            sta L0709
            sta L0705
            sta L070F
            lda #$00
            sta L06B5
L9302       rts
L9303       lda L070C
            bmi L934C
            lda #$00
            sta L0746
            ldx L070B
            lda L064C
            clc
            adc L93B6+1,X
            jsr L93CB
            sta L064C
            lda L065A
            clc
            adc L93BF+2,X
            jsr L93CB
            sta L065A
            ldx L070E
            lda L0640,X
            sec
            sbc L064C
            bpl L9338
            eor #$FF
L9338       cmp #$03
            bcc L933D
            rts
L933D       ldy L0609
            lda L93AD,Y
            sta L070D
            lda #$FF
            sta L070C
            rts
L934C       dec L070D
            bmi L9352
            rts
L9352       ldx L070E
            lda #$0D
            sta L066A,X
            lda #$D8
            sta L065C,X
            lda L065A
            sta L064E,X
            lda #$00
            sta L070C
            ldy #$0B
L936C       lda L0640,Y
            bmi L9376
            lda L065C,Y
            beq L937F
L9376       dey
            bpl L936C
            lda #$FF
            sta L0709
            rts
L937F       lda RANDOM
            and #$0F
            cmp #$0B
            bcs L937F
            tay
L9389       lda L065C,Y
            beq L9396
L938E       dey
            bpl L9389
            ldy #$0B
            jmp L9389
L9396       lda L0640,Y
            bmi L938E
            sty L070E
L939E       lda RANDOM
            eor #$FF
            and #$0F
            cmp #$0A
            bcs L939E
            sta L070B
            rts
L93AD       bpl L93BC+1
            .byte $0C
            asl
            php
            asl RAMLO
            .byte $03,$02
L93B6       ora (CASINI,X)
            .byte $02
            inc L03FE,X
L93BC       sbc VPRCED,X
L93BF       inc DSPFLG,X
            inc DSPFLG,X
            .byte $00,$00,$04,$FC,$04,$FC
L93CB       bmi L93D6
            cmp #$5B
            bcc L93D8
            lda #$00
            jmp L93D8
L93D6       lda #$5A
L93D8       rts
L93D9       lda L064D
            bmi L93DF
            rts
L93DF       lda L0646
            and L0647
            and L0648
            and L0649
            bmi L93F0
            jmp L941B
L93F0       ldx #$05
L93F2       lda L066A,X
            cmp #$0F
            bcs L93FE
            lda L0640,X
            bpl L9402
L93FE       dex
            bpl L93F2
            rts
L9402       sta L064D
            lda L064E,X
            sta L065B
            lda #$0E
            sta L0669
            lda #$0E
            sta L0677
            lda #$FF
            sta L0640,X
            rts
L941B       lda L0646
            bpl L9443
            lda L0671
            cmp #$0F
            bcs L9443
            lda L0647
            bmi L9443
            sta L064D
            lda L0655
            sta L065B
            lda #$0E
            sta L0669
            sta L0677
            lda #$FF
            sta L0647
            rts
L9443       lda L0648
            bpl L946A
            lda L0673
            cmp #$0F
            bcs L946A
            lda L0649
            bmi L946A
            sta L064D
            lda L0657
            sta L065B
            lda #$0E
            sta L0669
            sta L0677
            lda #$FF
            sta L0649
L946A       rts
L946B       lda #$00
            sta L0728
            lda L0677
            cmp #$0F
            bcc L947A
            jmp L951B
L947A       lda L064D
            bpl L9482
            jmp L951B
L9482       sec
            sbc #$2D
            bpl L9489
            eor #$FF
L9489       cmp #$04
            bcc L94B3
            lda L064D
            cmp #$2D
            bcs L94A5
            clc
            adc #$03
            sta L064D
            lda #$01
            ora L0728
            sta L0728
            jmp L94B3
L94A5       sec
            sbc #$03
            sta L064D
            lda #$02
            ora L0728
            sta L0728
L94B3       lda L065B
            sec
            sbc #$2D
            bpl L94BD
            eor #$FF
L94BD       cmp #$04
            bcc L94E7
            lda L065B
            cmp #$2D
            bcs L94D9
            clc
            adc #$03
            sta L065B
            lda #$04
            ora L0728
            sta L0728
            jmp L94E7
L94D9       sec
            sbc #$03
            sta L065B
            lda #$08
            ora L0728
            sta L0728
L94E7       ldy L0728
            lda L95AC,Y
            sta L0677
            lda L064D
            sec
            sbc #$2D
            bpl L94FA
            eor #$FF
L94FA       cmp #$04
            bcc L94FF
            rts
L94FF       lda L065B
            sec
            sbc #$2D
            bpl L9509
            eor #$FF
L9509       cmp #$04
            bcc L950E
            rts
L950E       jsr LA3A0
            lda #$FF
            sta L064D
            lda #$00
            sta L0669
L951B       rts
L951C       lda L06B5
            bmi L9522
            rts
L9522       lda L0721
            beq L952F
            lda L0607
            beq L952F
            jmp L956D
L952F       lda CONSOL
            and #$02
            bne L953E
            lda #$01
            sta L0720
            jmp L956D
L953E       lda L0720
            cmp #$01
            beq L9548
            jmp L956D
L9548       lda #$00
            sta L0720
            lda L0721
            eor #$FF
            sta L0721
            bne L956D
            lda #$00
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            sta L0722
            lda #$20
            sta L0723
L956D       lda L0721
            bne L9581
            dec L0722
            bne L9581
            dec L0723
            bne L9581
            lda #$FF
            sta L078E
L9581       lda L0727
            beq L958C
            lda L0607
            beq L958C
            rts
L958C       lda CONSOL
            and #$04
            bne L9599
            lda #$01
            sta L0726
            rts
L9599       lda L0726
            cmp #$01
            beq L95A1
            rts
L95A1       lda #$00
L95A3       sta L0726
            lda #$FF
            sta L078E
            rts
L95AC       .byte $00,$04,$00,$00
            asl RAMLO+1
            .byte $07,$00,$02,$03
            ora (L0000,X)
            .byte $00,$00
L95BA       jsr L9D14
            ldy #$0B
L95BF       sta L0601,Y
            dey
            bpl L95BF
            lda #$00
            sta L060A
            sta L0609
            ldy #$05
L95CF       sta L06EB,Y
            dey
            bpl L95CF
            ldy #$12
            lda #$FF
L95D9       sta L06A9,Y
            sta L0640,Y
            dey
            bpl L95D9
            sta L06DE
            sta L06AF
            sta L06B0
            sta L06B1
            sta L0704
            sta L0705
            sta L070F
            sta L0721
            sta L0720
            sta L0727
            sta L0726
            sta L0737
            sta L06B8
            sta L06BA
            lda #$03
            sta L06E5
            sta L06E6
            lda #$18
            sta L06E7
            jsr LA4DB
            lda #$FF
            lda #$01
            sta L06B5
            lda L078F
            bpl L962B
            jmp L9CAF
L962B       lda #$01
            sta L06B5
            lda #$00
            sta L0607
            sta L0701
            jsr L8D48
            lda L0609
            bne L9645
            lda L060A
            beq L9665
L9645       ldy #$13
L9647       lda L9C73,Y
            sta L13E0,Y
            dey
            bpl L9647
            lda L0609
            clc
            adc #$10
            sta L13EF
            lda L060A
            clc
            adc #$11
            sta L13F1
            jmp L9670
L9665       ldy #$13
L9667       lda L9C87,Y
            sta L13E0,Y
            dey
            bpl L9667
L9670       jsr L9911
            lda #$58
            sta L065B
            lda #$00
            sta L06F1
L967D       lda L06F1
            beq L967D
            jsr L99FF
            jsr LA226
            lda #$04
            sta L0600
            jsr L91AE
            lda #$04
            sta L10E2
            lda #$05
            sta L10E3
L969A       lda #$06
            sta L110A
            lda #$07
            sta L110B
            ldx L0609
            lda LA395+1,X
L96AA       sta L06CF
            sta HITCLR
            lda #$82
            sta L0732
            ldy #$13
            lda #$00
L96B9       sta L13E0,Y
            dey
            bpl L96B9
            ldx L060A
            cpx #$02
            bne L96C9
            jmp L9927
L96C9       cpx #$05
            bne L96D0
            jmp L9996
L96D0       ldy L0609
            tya
            clc
            adc L060A
            cmp #$0A
            bcc L96DE
            lda #$09
L96DE       tax
            lda L98F6+1,X
            sta L06CE
            lda L98ED,Y
            sta L06E8
            txa
            asl
            tax
            lda L9889,X
            sta L00D8
            lda L9889+1,X
            sta L00D9
            ldy #$05
L96FA       lda (L00D8),Y
            sta L0640,Y
            lda #$66
            sta L065C,Y
            lda RANDOM
            and #$07
            sta L066A,Y
            jsr L9879
            sta L064E,Y
            dey
            bpl L96FA
            lda L0609
            bne L971F
            lda L060A
            beq L9724
L971F       lda RANDOM
            and #$03
L9724       tay
            lda L9900+1,Y
            clc
            adc L06CE
            sta L06CE
            tya
            asl
            tay
            lda L98E5,Y
            sta L00D8
            lda L98E6,Y
            sta L00D9
            ldy #$05
L973E       lda (L00D8),Y
            sta L0646,Y
            lda L9905,Y
            sta L0662,Y
            lda L990B,Y
            sta L0670,Y
            jsr L9879
            sta L0654,Y
            dey
            bpl L973E
            lda L0654
            sta L0655
            lda L0656
            sta L0657
            lda #$FF
            sta L064C
            lda L0609
            beq L978D
            lda RANDOM
            bmi L978D
L9773       lda RANDOM
            cmp #$5B
            bcs L9773
            sta L064C
            lda #$09
            sta L0676
            jsr L9879
            sta L065A
            lda #$1A
            sta L0668
L978D       lda #$FF
            ldy #$03
L9791       sta L06B8,Y
            dey
            bpl L9791
            lda #$09
            sta L0702
            sta L0703
L979F       jsr L892D
            jsr L8EE0
            jsr L8F17
            jsr L896F
            jsr L8EE0
            jsr L8F17
            jsr L8D75
            lda #$FF
            sta L064D
            sta L06B5
            sta HITCLR
            sta L0706
            sta L06C4
            sta L06E4
            lda #$00
            sta L0669
            sta L0709
            sta COLPM2
            sta L060D
            ldy #$00
            lda L06E5
            bpl L97E0
            sty L06E5
L97E0       lda L06E6
            bpl L97E8
L97E5       sty L06E6
L97E8       lda L06E7
            bpl L97F0
            sty L06E7
L97F0       lda L0709
            bmi L97FD
            lda L078E
            bpl L97F0
            jmp L9B8A
L97FD       ldy #$13
L97FF       lda L9C5D,Y
            sta L13E0,Y
            dey
            bpl L97FF
            jsr L9C1B
            lda #$FF
            sta L0744
            sta L0776
            lda #$00
            sta AUDC1
            jsr L9D14
            ldy #$4F
            lda #$00
L981F       sta L1200,Y
            dey
            bpl L981F
            sta L10E2
            sta L10E3
            sta L110A
            sta L110B
            lda #$2C
            sta L065B
            jsr L9911
            lda #$00
            sta L06F1
L983E       jsr L9D14
            jsr L91F9
            jsr LA21C
            lda L06F1
            beq L983E
            jsr L9A16
            jsr L99FF
            jsr LA226
            jsr L9AD6
            inc L060A
            lda L060A
            cmp #$06
            bcc L9876
            lda #$00
            sta L060A
            inc L0609
            lda L0609
            cmp #$0A
            bcc L9876
            lda #$09
            sta L0609
L9876       jmp L962B
L9879       lda RANDOM
            cmp #$5B
            bcs L9879
            cmp #$29
            bcc L9888
            cmp #$3D
            bcc L9879
L9888       rts
L9889       sta LA398,X
            tya
            lda #$98
            .byte $AF
            tya
            lda L0098,X
            .byte $BB
            tya
            cmp (L0098,X)
            cmp (L0098,X)
            cmp (L0098,X)
            cmp (L0098,X)
            ora L00FF,X
            .byte $FF,$FF,$FF,$FF
            jsr LFF40
            .byte $FF,$FF,$FF
            bpl L98DB
            eor L00FF
            .byte $FF,$FF
            ora BFENHI,X
            eor COLCRS
            .byte $FF,$FF,$04
            ora (ABUFPT+2),Y
            .byte $2B
            eor L00FF
            .byte $04,$12
            jsr L3C2E
            lsr
            .byte $04
            ora (ABUFPT+2),Y
            .byte $2B
            sec
L98C6       eor L0000
            bpl L98EA
            .byte $FF
            rti
            .byte $FF
            clc
            plp
            sec
            pha
            cli
            .byte $FF,$04,$1C,$FF,$FF,$FF,$FF
            bmi L9923
L98DB       .byte $FF,$FF,$FF,$FF,$04,$1C
            rol DRKMSK,X
            .byte $FF,$FF
L98E5       .byte $D3
L98E6       tya
            cmp LDF98,Y
L98EA       tya
            .byte $DF
            tya
L98ED       asl
            ora #$08
            .byte $07,$07
            asl TRAMSZ
            ora RAMLO+1
L98F6       ora L0000
            ora (CASINI,X)
            .byte $03,$04
            ora RAMLO+1
            ora RAMLO+1
L9900       ora NGFLAG
            ora (CASINI,X)
            .byte $02
L9905       dec ICPTLZ
            dec ICPTLZ
            .byte $00,$00
L990B       php
            .byte $00
            php
            .byte $00,$00,$00
L9911       lda #$2E
            sta L0F4E
            sta L0F51
            lda #$54
            sta L0F4F
            sta L0F50
            lda #$0E
L9923       sta L0669
            rts
L9927       ldy L0609
            tya
            and #$01
            tax
            lda #$09
            sta L06CE
            ldy #$0B
L9935       lda L98C6+1,Y
            sta L0640,Y
            lda L9990,X
            sta L066A,Y
            lda L9992,X
            sta L065C,Y
            jsr L9879
            sta L064E,Y
            dey
            bpl L9935
            lda #$00
            lda #$00
            sta L0708
            lda L9994,X
            sta L0707
            jsr L996B
            lda #$FF
            sta L072A
            sta L070A
            jmp L979F
L996B       lda RANDOM
            and #$03
            tay
            lda L9988,Y
            sta L065A
            lda L998C,Y
            sta L064C
            lda #$08
            sta L0676
            lda #$C6
            sta L0668
            rts
L9988       .byte $00,$00,$5A,$5A
L998C       .byte $00,$5A,$00,$5A
L9990       asl
            .byte $0B
L9992       .byte $1A
            pha
L9994       .byte $02,$02
L9996       ldy #$0B
L9998       lda L99F3,Y
            sta L0640,Y
            lda #$0D
            sta L066A,Y
            lda #$00
            sta L065C,Y
            lda #$FF
L99AA       sta L064E,Y
            dey
            bpl L9998
            lda #$00
            sta COLPM2
            sta L0710
            lda #$0C
            sta L0676
            lda #$0A
            sta L0668
L99C2       lda RANDOM
            and #$0F
            cmp #$0B
            bcs L99C2
            tay
            sty L070E
            lda L0640,Y
            bmi L99C2
            sta L064C
            jsr L9879
            sta L065A
            ldx L0609
            lda L93AD,X
            sta L070D
            lda #$FF
            sta L070C
            lda #$09
            sta L06CE
            jmp L979F
L99F3       .byte $00
            bpl L9A16
            bmi L9A38
            .byte $FF
            php
            clc
            plp
            sec
            pha
            .byte $FF
L99FF       ldx #$60
            lda #$00
L9A03       sta L0B21,X
            sta L0C21,X
            sta L0D21,X
            sta L0E21,X
            sta L0F21,X
            dex
            bpl L9A03
            rts
L9A16       lda L060A
            cmp #$02
            bne L9A1E
            rts
L9A1E       cmp #$05
            bne L9A23
            rts
L9A23       lda L0646
            bmi L9A7C
            lda L06B8
            beq L9A38
            jsr L8678+2
            lda #$00
            sta L0748
            jmp L9A40
L9A38       jsr L869F+1
            lda #$00
            sta L0749
L9A40       lda #$08
            sta L072F
            lda #$0A
            sta L0730
L9A4A       jsr L9D14
            dec L072F
            bpl L9A4A
            lda #$08
            sta L072F
            lda L0730
            and #$01
            beq L9A66
            lda #$EA
            sta L0662
            jmp L9A6B
L9A66       lda #$C6
            sta L0662
L9A6B       jsr L896F
            jsr L8EE0
            jsr L8F17
            dec L0730
            bpl L9A4A
            jsr LA4DB
L9A7C       lda L0648
            bmi L9AD5
            lda L06B9
            beq L9A91
            jsr L8678+2
            lda #$00
            sta L0748
            jmp L9A99
L9A91       jsr L869F+1
            lda #$00
            sta L0749
L9A99       lda #$08
            sta L072F
            lda #$0A
            sta L0730
L9AA3       jsr L9D14
            dec L072F
            bpl L9AA3
            lda #$08
            sta L072F
            lda L0730
            and #$01
            beq L9ABF
            lda #$EA
            sta L0664
            jmp L9AC4
L9ABF       lda #$C6
            sta L0664
L9AC4       jsr L896F
            jsr L8EE0
            jsr L8F17
            dec L0730
            bpl L9AA3
            jsr LA4DB
L9AD5       rts
L9AD6       lda L060A
            cmp #$05
            beq L9ADE
            rts
L9ADE       lda #$00
            sta L0737
            lda #$FF
            sta L0734
            jsr L9D14
            jsr L9D1F
            lda #$66
            sta VDSLST
            lda #$82
            sta VDSLST+1
            lda #$48
            sta DLISTL
            lda #$82
            sta DLISTH
            jsr L9D30
            lda L064C
            bmi L9B1D
            lda #$07
            sta L0733
            ldy #$13
L9B11       lda L9B76,Y
            sta L13E0,Y
            dey
            bpl L9B11
            jmp L9B32
L9B1D       lda #$97
            sta L0733
            lda #$00
            sta L074B
            ldy #$13
L9B29       lda L9B62,Y
            sta L13E0,Y
            dey
            bpl L9B29
L9B32       lda #$00
            sta L0735
            sta L0736
L9B3A       lda L0734
            bne L9B3A
            jsr L9D0A
            jsr L9D1F
            lda #$D8
            sta DLISTL
            lda #$81
            sta DLISTH
            lda #$B0
            sta VDSLST
            lda #$86
            sta VDSLST+1
            jsr L9D30
            lda #$FF
            sta L0737
            rts
L9B62       .byte $00,$00,$00
            rol L2D2F
            and (ICBALZ,X)
            .byte $00
            bit ICBAHZ
            rol ICBAHZ
            and (BFENLO,X)
            and ICBALZ
            .byte $00,$00,$00
L9B76       .byte $00,$00,$00
            rol L2D2F
            and (ICBALZ,X)
            .byte $00
            and BUFRHI
            .byte $23
            and (STATUS,X)
            and ICBALZ
            .byte $00,$00,$00,$00
L9B8A       jsr L9C1B
            ldy #$13
L9B8F       lda L9C9B,Y
            sta L13E0,Y
            dey
            bpl L9B8F
            lda #$FF
            sta L0744
            sta L0776
            lda #$00
            sta AUDC1
            lda #$0C
            sta L0725
            lda #$00
            sta L078E
            sta L0724
            sta L0790
            sta L0791
            sta L074A
L9BBB       lda L074A
            bpl L9BBB
            ldy #$13
L9BC2       lda L9D3B,Y
            sta L13E0,Y
            dey
            bpl L9BC2
            lda L0609
            clc
            adc #$10
            sta L13EF
            lda L060A
            clc
            adc #$11
            sta L13F1
L9BDD       jsr L9D14
            dec L0724
            bne L9BED
            dec L0725
            bne L9BED
            jmp L9CAF
L9BED       jsr L9D4F
            lda CONSOL
            and #$01
            and TRIG0
            bne L9BDD
L9BFA       lda #$00
            sta L074C
            jsr L99FF
            lda #$00
            sta L10E2
            sta L10E3
            sta L110A
            sta L110B
            ldy #$4F
L9C12       sta L1200,Y
            dey
            bpl L9C12
            jmp L95BA
L9C1B       lda #$01
            sta L06F2
L9C20       lda L06F2
            bne L9C20
            lda #$FF
            sta L06AF
            sta L06B0
            sta L06B1
            sta L06DE
            sta L0704
            sta L0705
            sta L070F
            sta L06B7
            lda #$00
            sta L06B5
            sta L0607
            rts
            .byte $00,$00,$00,$43
            and BUFRLO
            .byte $23
            and BUFRHI,X
            and L0000
            and (ICCOMZ,X)
            and ICDNOZ,X
            sec
            bit L0000
            .byte $00,$00,$00
L9C5D       .byte $00,$00,$00,$33
            and ICSTAZ
            .byte $34,$2F,$32,$00,$33
            and ICSTAZ
            and BUFRLO,X
            and ICBALZ
            .byte $00,$00,$00,$00,$00
L9C73       .byte $00,$00
            and ICAX5Z
            .byte $34
            and BUFRLO
            .byte $00,$33
            and ICSTAZ
L9C7E       .byte $34,$2F,$32,$00,$00
            asl.w L0000
            .byte $00
L9C87       .byte $00,$00,$22
            and ICPTHZ
            and #$2E
            .byte $00,$33
            and #$2D
            and ICAX3Z,X
            and (BFENLO,X)
            and #$2F
            rol.w L0000
L9C9B       .byte $00,$00,$33
            and #$2D
            and ICAX3Z,X
            and (BFENLO,X)
            and #$2F
            rol L2F00
            rol ICBAHZ,X
            .byte $32,$00,$00,$00
L9CAF       jsr L9D0A
            jsr L9D1F
            lda #$1F
            sta DLISTL
            lda #$82
            sta DLISTH
            lda #$9D
            sta VDSLST
            lda #$83
            sta VDSLST+1
            jsr L9D30
            lda #$FF
            sta L078F
            lda #$00
            sta L074A
L9CD6       lda L074A
            bpl L9CD6
L9CDB       lda CONSOL
            and #$01
            and TRIG0
            bne L9CDB
            jsr L9D0A
            jsr L9D1F
            lda #$D8
            sta DLISTL
            lda #$81
            sta DLISTH
            lda #$B0
            sta VDSLST
            lda #$86
            sta VDSLST+1
            jsr L9D30
            lda #$00
            sta L078F
            jmp L9BFA
L9D0A       lda #$01
            sta L06F2
L9D0F       lda L06F2
            bne L9D0F
L9D14       lda #$01
            sta L06F2
L9D19       lda L06F2
            bne L9D19
            rts
L9D1F       lda #$00
            sta L06A5
            sta NMIEN
            sta DMACLT
            sta GRACTL
            rts
            lda #$01
L9D30       lda #$01
            sta L06A5
            lda #$40
            sta NMIEN
            rts
L9D3B       .byte $00,$00
            rol ICBLHZ
            rol L2C21
            .byte $00,$33
            and ICSTAZ
            .byte $34,$2F,$32,$00,$00
            asl.w L0000
            .byte $00
L9D4F       lda L0790
            bne L9D62
            lda SKSTAT
            and #$04
            beq L9D5C
            rts
L9D5C       lda #$01
            sta L0790
            rts
L9D62       lda SKSTAT
            and #$04
            bne L9D6A
            rts
L9D6A       lda #$00
            sta L0790
            ldy L0791
            lda KBCODE
            cmp L9DA1,Y
            beq L9D80
            lda #$00
            sta L0791
            rts
L9D80       inc L0791
            lda L0791
            cmp #$19
            beq L9D8B
            rts
L9D8B       lda #$00
            sta L0791
            ldy #$13
L9D92       lda L9DB9+1,Y
            sta L13E0,Y
            dey
            bpl L9D92
            lda #$0C
            sta L0725
            rts
L9DA1       rol L0839
            and (DOSVEC,X)
            plp
            php
            and L3F28,X
            and ICBAHZ
            rol
            .byte $3A
            and (ICAX4Z,X)
            and L3E0D,Y
            and (BPTR,X)
            .byte $3F
            and ICAX1Z
L9DB9       ror L0000
            .byte $00,$00,$00
            and L2E2F
            .byte $34
            and #$00
            .byte $32
            and #$25
            and L2E21
            .byte $00,$00,$00,$00
L9DCE       lda L0605
            bmi L9DD7
            dec L0605
            rts
L9DD7       lda L06E8
            sta L0605
            jsr LA110
            ldy #$05
L9DE2       lda L0640,Y
            bpl L9DEA
            jmp LA081
L9DEA       lda L066A,Y
            cmp #$0D
            bcc L9DF4
            jmp LA081
L9DF4       lda L0684,Y
            tax
            cpx #$04
            bcc L9E18
            cpx #$14
            bcs L9E1B
            cpx #$0B
            beq L9E1E
            cpx #$0C
            beq L9E1E
            lda L064E,Y
            cmp #$2D
            beq L9E21
            bcc L9E24
            cmp #$2E
            beq L9E21
            jmp L9F48
L9E18       jmp L9E27
L9E1B       jmp L9E5B
L9E1E       jmp L9ECB
L9E21       jmp L9E8F
L9E24       jmp L9F00
L9E27       lda L064E,Y
            cmp #$2D
            beq L9E4E
            bcc L9E41
            cmp #$2E
            beq L9E4E
            lda L066A,Y
            cmp #$02
            beq L9E3E
            jmp L9FBA
L9E3E       jmp L9F9C
L9E41       lda L066A,Y
            cmp #$06
            beq L9E4B
            jmp L9FDE
L9E4B       jmp L9F90
L9E4E       lda L066A,Y
            cmp #$04
            beq L9E58
            jmp L9FCC
L9E58       jmp LA023
L9E5B       lda L064E,Y
            cmp #$2D
            beq L9E82
            bcc L9E75
            cmp #$2E
            beq L9E82
            lda L066A,Y
            cmp #$02
            beq L9E72
            jmp L9FBA
L9E72       jmp L9F9C
L9E75       lda L066A,Y
            cmp #$06
            beq L9E7F
            jmp L9FDE
L9E7F       jmp L9F90
L9E82       lda L066A,Y
            cmp #$00
            beq L9E8C
            jmp L9FA8
L9E8C       jmp LA050
L9E8F       cpx #$0B
            bcc L9EA0
            lda L066A,Y
            cmp #$00
            beq L9E9D
            jmp L9FA8
L9E9D       jmp LA07E
L9EA0       lda L066A,Y
            cmp #$04
            beq L9EAA
            jmp L9FCC
L9EAA       jmp LA07E
            cpx #$0B
            bcc L9EBE
            lda L066A,Y
            cmp #$00
            beq L9EBB
            jmp L9FA8
L9EBB       jmp LA07E
L9EBE       lda L066A,Y
            cmp #$04
            beq L9EC8
            jmp L9FCC
L9EC8       jmp LA07E
L9ECB       lda L064E,Y
            cmp #$2D
            bcc L9EE9
            lda L066A,Y
            cmp #$02
            beq L9EDC
            jmp L9FBA
L9EDC       lda L064E,Y
            cmp #$49
            bcs L9EE6
            jmp LA07E
L9EE6       jmp L9F9C
L9EE9       lda L066A,Y
            cmp #$06
            beq L9EF3
            jmp L9FDE
L9EF3       lda L064E,Y
            cmp #$19
            bcc L9EFD
            jmp LA07E
L9EFD       jmp L9F90
L9F00       cpx #$0B
            bcc L9F26
            lda L064E,Y
            cmp LA088,X
            beq L9F19
            lda L066A,Y
            cmp #$06
            beq L9F16
            jmp L9FDE
L9F16       jmp L9F90
L9F19       lda L066A,Y
            cmp #$07
            beq L9F23
            jmp L9FE7
L9F23       jmp LA07E
L9F26       lda L064E,Y
            cmp LA088,X
            beq L9F3B
            lda L066A,Y
            cmp #$06
            beq L9F38
            jmp L9FDE
L9F38       jmp L9F90
L9F3B       lda L066A,Y
            cmp #$05
            beq L9F45
            jmp L9FD5
L9F45       jmp LA07E
L9F48       cpx #$0B
            bcc L9F6E
            lda L064E,Y
            cmp LA0A0,X
            beq L9F61
            lda L066A,Y
            cmp #$02
            beq L9F5E
            jmp L9FBA
L9F5E       jmp L9F9C
L9F61       lda L066A,Y
            cmp #$01
            beq L9F6B
            jmp L9FB1
L9F6B       jmp LA07E
L9F6E       lda L064E,Y
            cmp LA0A0,X
            beq L9F83
            lda L066A,Y
            cmp #$02
            beq L9F80
            jmp L9FBA
L9F80       jmp L9F9C
L9F83       lda L066A,Y
            cmp #$03
            beq L9F8D
            jmp L9FC3
L9F8D       jmp LA07E
L9F90       lda L064E,Y
            clc
            adc #$01
            sta L064E,Y
            jmp LA081
L9F9C       lda L064E,Y
            sec
            sbc #$01
            sta L064E,Y
            jmp LA081
L9FA8       ldx L066A,Y
            lda LA0D0,X
            jmp L9FF0
L9FB1       ldx L066A,Y
            lda LA0D8,X
            jmp L9FF0
L9FBA       ldx L066A,Y
            lda LA0DF+1,X
            jmp L9FF0
L9FC3       ldx L066A,Y
            lda LA0E8,X
            jmp L9FF0
L9FCC       ldx L066A,Y
            lda LA0EF+1,X
            jmp L9FF0
L9FD5       ldx L066A,Y
            lda LA0F8,X
            jmp L9FF0
L9FDE       ldx L066A,Y
            lda LA100,X
            jmp L9FF0
L9FE7       ldx L066A,Y
            lda LA108,X
            jmp L9FF0
L9FF0       beq L9FF5
            jmp LA00B
L9FF5       lda L066A,Y
            sec
            sbc #$01
            bmi LA003
            sta L066A,Y
            jmp LA081
LA003       lda #$07
            sta L066A,Y
            jmp LA081
LA00B       lda L066A,Y
            clc
            adc #$01
            cmp #$08
            beq LA01B
            sta L066A,Y
            jmp LA081
LA01B       lda #$00
            sta L066A,Y
            jmp LA081
LA023       tya
            sty L06A0
            tax
LA028       inx
            cpx #$06
            bne LA02F
            ldx #$00
LA02F       cpx L06A0
            beq LA044
            lda L0640,X
            bmi LA028
            sec
            sbc L0640,Y
            cmp #$10
            bcs LA044
            jmp LA081
LA044       lda L0640,Y
            clc
            adc #$01
            sta L0640,Y
            jmp LA081
LA050       tya
            sty L06A0
            tax
LA055       dex
            bpl LA05A
            ldx #$05
LA05A       cpx L06A0
            beq LA072
LA05F       lda L0640,X
            bmi LA055
            lda L0640,Y
            sec
            sbc L0640,X
            cmp #$10
            bcs LA072
            jmp LA081
LA072       lda L0640,Y
            sec
            sbc #$01
            sta L0640,Y
            jmp LA081
LA07E       jmp LA081
LA081       dey
            bmi LA087
            jmp L9DE2
LA087       rts
LA088       .byte $00,$00,$00,$00
            bpl LA0A2
            clc
            .byte $1C
            jsr L2824
            .byte $00,$00
            plp
            bit ICHIDZ
            .byte $1C
            clc
            .byte $14
            bpl LA09D
LA09D       .byte $00,$00,$00
LA0A0       .byte $00,$00
LA0A2       .byte $00,$00
            pha
            .byte $44
            rti
            .byte $3C
            sec
            .byte $34
            bmi LA0AC
LA0AC       .byte $00,$34
            sec
            .byte $3C
            rti
            .byte $44
            pha
            jmp L0000
            .byte $00,$00
LA0B8       .byte $04
            php
            .byte $0C
            bpl LA0D1
            clc
            .byte $1C
            jsr L2824
            bit L3430
            sec
            .byte $3C
            rti
            .byte $44
            pha
            jmp L5450
            cli
            .byte $5C
            rts
LA0D0       .byte $00
LA0D1       .byte $00,$00,$00
            ora (NGFLAG,X)
            ora (NGFLAG,X)
LA0D8       ora (L0000,X)
            .byte $00,$00,$00
            ora (NGFLAG,X)
LA0DF       ora (NGFLAG,X)
            ora (L0000,X)
            .byte $00,$00,$00
            ora (NGFLAG,X)
LA0E8       ora (NGFLAG,X)
            ora (L0000,X)
            .byte $00,$00,$00
LA0EF       ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $00,$00,$00
LA0F8       .byte $00
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00,$00,$00
LA100       .byte $00,$00
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00,$00
LA108       .byte $00,$00,$00
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00
LA110       lda #$05
            sta L06A0
            ldx #$00
            ldy L06A6
            txa
            sta L0684,Y
LA11E       inx
LA11F       lda L0640,Y
            bmi LA143
            clc
            adc #$02
            cmp LA0B8,X
            bcs LA11E
            txa
            sta L0684,Y
            inx
LA131       dec L06A0
            bmi LA140
            iny
            cpy #$06
            bne LA11F
            ldy #$00
            jmp LA11F
LA140       jmp LA149
LA143       sta L0684,Y
            jmp LA131
LA149       lda #$05
            sta L06A0
            ldx #$00
            ldy L06A7
            txa
            sta L068A,Y
LA157       inx
LA158       lda L0646,Y
            bmi LA17C
            clc
            adc #$02
            cmp LA0B8,X
            bcs LA157
            txa
            sta L068A,Y
            inx
LA16A       dec L06A0
            bmi LA179
            iny
            cpy #$06
            bne LA158
            ldy #$00
            jmp LA158
LA179       jmp LA182
LA17C       sta L068A,Y
            jmp LA16A
LA182       rts
LA183       lda L06CF
            bpl LA1A1
            ldy L06CE
LA18B       bpl LA190
            jmp LA21B
LA190       cpy #$03
            bcc LA196
            ldy #$02
LA196       lda L06AC,Y
            bmi LA1A7
            dey
            bpl LA196
            jmp LA21B
LA1A1       dec L06CF
            jmp LA21B
LA1A7       ldx L0606
            stx L06E9
LA1AD       lda L0640,X
            bmi LA1B9
            lda L066A,X
            cmp #$08
            bcc LA1C8
LA1B9       inx
            cpx #$0A
            bne LA1C0
            ldx #$00
LA1C0       cpx L06E9
            bne LA1AD
            jmp LA21B
LA1C8       stx L0606
            lda #$00
            sta L0743
            lda L0640,X
            sta L06C8
            lda L064E,X
            sta L06C9
            lda L066A,X
            tax
            lda L06C8
            clc
            adc LA370,X
            jsr LA4AB
            sta L06C1,Y
            lda L06C9
            clc
            adc LA377+1,X
            jsr LA4AB
            sta L06BE,Y
            txa
            sta L06C5,Y
            inc L0606
            lda L0606
            cmp #$0A
            bne LA20D
            lda #$00
            sta L0606
LA20D       ldx L0609
            lda LA395+1,X
            sta L06CF
            lda #$10
            sta L06AC,Y
LA21B       rts
LA21C       jsr LA226
            jsr LA246
            jsr LA2DF
            rts
LA226       ldy #$02
LA228       lda L06AC,Y
            bmi LA242
            lda L06C1,Y
            clc
            adc #$21
            sta L00DC
            lda #$0B
            sta L00DD
            lda LA390,Y
            ldx #$00
            and (L00DC,X)
            sta (L00DC,X)
LA242       dey
            bpl LA228
            rts
LA246       ldx #$02
LA248       lda L06AC,X
            bmi LA273
            dec L06AC,X
            lda L06BE,X
            cmp #$2C
            bcc LA273
            cmp #$34
            bcs LA273
            lda L06C1,X
            cmp #$2C
            bcc LA273
            cmp #$34
            bcs LA273
            lda #$FF
            sta L06AC,X
            lda L06B7
            bpl LA273
            jsr LA3A0
LA273       dex
            bpl LA248
            ldx #$02
LA278       lda L06AC,X
            bmi LA2DB
            ldy #$00
            jsr LA3E9
            bcc LA2AC
            lda L0670
            cmp #$0F
            bcs LA2AC
            jsr LA4B9
            dec L0702
            bpl LA2A0
            lda #$0F
            sta L0670
            lda #$00
            sta L073B
            jmp LA2DB
LA2A0       lda L0702
            cmp #$05
            bcs LA2DB
            lda #$00
            sta L06BA
LA2AC       ldy #$02
            jsr LA3E9
            bcc LA2DB
            lda L0672
            cmp #$0F
            bcs LA2DB
            jsr LA4CA
            dec L0703
            bpl LA2CF
            lda #$0F
            sta L0672
            lda #$00
            sta L073B
            jmp LA2DB
LA2CF       lda L0703
            cmp #$05
            bcs LA2DB
            lda #$00
            sta L06BB
LA2DB       dex
            bpl LA278
            rts
LA2DF       ldy #$02
LA2E1       lda L06AC,Y
            bmi LA31B
            ldx L06C5,Y
            lda L06C1,Y
            clc
            adc LA380,X
            jsr LA4AB
            sta L06C1,Y
            clc
            adc #$21
            sta L00DC
            lda L06BE,Y
            clc
            adc LA387+1,X
            jsr LA4AB
            sta L06BE,Y
            clc
            adc #$6C
            sta HPOSM0,Y
            lda #$0B
            sta L00DD
            ldx #$00
            lda (L00DC,X)
            ora LA393,Y
            sta (L00DC,X)
LA31B       dey
            bpl LA2E1
            rts
LA31F       lda L06A8
            and #$0F
            tax
            lda L8EC0,X
            bne LA32B
            rts
LA32B       jsr LA226
            ldy #$02
            lda #$0B
            sta L00DD
LA334       ldx L0600
            lda L06AC,Y
            cmp #$FF
            beq LA36C
            lda L06C1,Y
            clc
            adc L8EA0,X
            jsr LA4AB
            sta L06C1,Y
            clc
            adc #$21
            sta L00DC
            lda L06BE,Y
            clc
            adc L8EAF+1,X
            jsr LA4AB
            sta L06BE,Y
            clc
            adc #$6C
            sta HPOSM0,Y
            ldx #$00
            lda (L00DC,X)
            ora LA393,Y
            sta (L00DC,X)
LA36C       dey
            bpl LA334
            rts
LA370       .byte $FF
            ora (CASINI,X)
            ora (NGFLAG,X)
            ora (CASINI,X)
LA377       ora (NGFLAG,X)
            .byte $FF,$00,$FF
            ora (NGFLAG,X)
            ora (NGFLAG,X)
LA380       sbc.w L00FE,X
            .byte $03,$02,$02,$00
LA387       inc LFE00,X
            inc.w L00FE,X
            .byte $02,$02,$02
LA390       .byte $FC,$F3,$CF
LA393       ora (RAMLO,X)
LA395       bpl LA3B7
            clc
LA398       .byte $13,$0B
            php
            .byte $07
            ora CASINI+1
            ora (L0000,X)
LA3A0       lda L06E5
            bmi LA3B2
            dec L06E5
            bmi LA3CE
            lda #$00
            sta L0739
            jmp LA3D3
LA3B2       lda L06E6
            bmi LA3C4
LA3B7       lda #$FF
            sta L06E6
            lda #$00
            sta L073A
            jmp LA3D3
LA3C4       lda L06E7
            bmi LA3E0
            lda #$FF
            sta L06E7
LA3CE       lda #$00
            sta L073A
LA3D3       lda #$36
            sta L0732
            lda #$0A
            sta L0731
            jmp LA3E8
LA3E0       lda #$FF
            sta L078E
            jmp LA3D3
LA3E8       rts
LA3E9       lda L0646,Y
            bmi LA413
            lda L06C1,X
            sec
            sbc L0646,Y
            cmp #$FF
            beq LA3FD
            cmp #$03
            bcs LA413
LA3FD       lda L06BE,X
            sec
            sbc L0654,Y
            cmp #$FF
            beq LA40C
            cmp #$03
            bcs LA413
LA40C       lda #$FF
            sta L06AC,X
            sec
            rts
LA413       clc
            rts
LA415       lda L06CF
            bmi LA420
            dec L06CF
            jmp LA4AA
LA420       lda L06AC
            and L06AD
            bmi LA42B
            jmp LA4AA
LA42B       lda L0710
            bne LA463
            lda #$00
            sta L0743
            jsr LA226
            lda L064C
            sta L06C1
            clc
            adc #$05
            jsr LA4AB
            sta L06C2
            lda L065A
            clc
            adc #$03
            jsr LA4AB
            sta L06BE
            sta L06BF
            lda #$00
            sta L06C5
            lda #$04
            sta L06C6
            jmp LA491
LA463       lda L064C
            clc
            adc #$03
            jsr LA4AB
            sta L06C1
            sta L06C2
            lda L065A
            clc
            adc #$02
            jsr LA4AB
            sta L06BE
            clc
            adc #$04
            jsr LA4AB
            sta L06BF
            lda #$02
            sta L06C5
            lda #$06
            sta L06C6
LA491       lda #$10
            sta L06AC
            sta L06AD
            ldx L0609
            lda LA395+1,X
            sta L06CF
            lda #$01
            eor L0710
            sta L0710
LA4AA       rts
LA4AB       bpl LA4B2
            lda #$5F
            jmp LA4B8
LA4B2       cmp #$60
            bcc LA4B8
            lda #$00
LA4B8       rts
LA4B9       lda L06BA
            beq LA4C4
            lda #$00
            sta L0740
            rts
LA4C4       lda #$00
            sta L073F
            rts
LA4CA       lda L06BA
            beq LA4D5
            lda #$00
            sta L0740
            rts
LA4D5       lda #$00
            sta L073F
            rts
LA4DB       ldy #$0C
            lda #$00
LA4DF       ldx L060A
            cpx #$02
            beq LA4EC
            sta L1001,Y
            sta L1029,Y
LA4EC       sta L10A1,Y
            sta L10C9,Y
            sta L10F1,Y
            sta L1119,Y
            sta L1141,Y
            sta L1169,Y
            dey
            bpl LA4DF
            lda L060A
            cmp #$02
            beq LA549
            ldy #$00
            sty L06EA
LA50D       lda L06EB,Y
            bne LA517
            ldx L06EA
            beq LA52D
LA517       asl
            tax
            sty L06E9
            tya
            asl
            tay
            jsr LA53C
            iny
            inx
            jsr LA53C
            sty L06EA
            ldy L06E9
LA52D       iny
            cpy #$05
            bne LA535
            sty L06EA
LA535       cpy #$06
            bne LA50D
            jmp LA549
LA53C       lda LA607,X
            sta L1001,Y
            lda LA61B,X
            sta L1029,Y
            rts
LA549       lda L06E5
            bmi LA56F
            cmp #$06
            bcc LA554
            lda #$05
LA554       tax
            asl
            clc
LA557       adc #$01
            tay
            lda LA5FB+2,X
            sta L06A1
LA560       lda LA5CD,Y
            sta L10A1,Y
            lda LA5D8+1,Y
            sta L10C9,Y
            dey
            bpl LA560
LA56F       lda L06E6
            bmi LA58E
            cmp #$06
            bcc LA57A
            lda #$05
LA57A       asl
            clc
            adc #$01
            tay
LA57F       lda LA5E5,Y
            sta L10F1,Y
            lda LA5F0+1,Y
            sta L1119,Y
            dey
            bpl LA57F
LA58E       ldy L06E7
            bmi LA5CC
            lda #$08
            sta L1141
            lda #$09
            sta L1142
            lda #$0A
            sta L1169
            lda #$0B
            sta L116A
            cpy #$00
            beq LA5CC
            tya
            and #$03
            sta L06E9
            tya
            lsr
            lsr
            tay
            tax
            beq LA5C2
            lda #$14
LA5BA       sta L116A,Y
            dey
            bne LA5BA
            cpx #$0A
LA5C2       ldy L06E9
            lda LA603,Y
            inx
            sta L116A,X
LA5CC       rts
LA5CD       php
            ora #$10
            ora (POKMSK),Y
            ora (POKMSK),Y
            ora (POKMSK),Y
            ora (POKMSK),Y
LA5D8       ora (DOSVEC),Y
            .byte $0B,$12,$13,$12,$13,$12,$13,$12,$13,$12,$13
LA5E5       php
            ora #$0C
            ora L0D0C
            .byte $0C
            ora L0D0C
            .byte $0C
LA5F0       ora L0B0A
            asl L0E0F
            .byte $0F
            asl L0E0F
            .byte $0F
LA5FB       asl L300F
            jsr TRIG0
            bcs LA5C2+1
LA603       .byte $00,$17
            asl BUFADR,X
LA607       clc
            ora L1D1C,Y
            jsr L2421
            and ICBLLZ
            and #$2C
            and L3130
            .byte $34
            and BUFRFL,X
            and L3D3C,Y
LA61B       .byte $1A,$1B
            asl L221F,X
            .byte $23
            rol ICPTHZ
            rol
            .byte $2B
            rol L322F
            .byte $33
            rol LTEMP+1,X
            .byte $3A,$3B
LA62D       rol LAD3F,X
            dec L3006
            .byte $43
            lda L06E7
            beq LA677
            bmi LA677
            lda L0607
            bne LA65A
            lda SKSTAT
            and #$04
            bne LA64E
            lda KBCODE
            cmp #$0C
            beq LA68D
LA64E       lda L06B7
            beq LA65B
            lda L06A8
            and #$02
            beq LA65B
LA65A       rts
LA65B       lda TRIG0
            beq LA68D
            lda #$FF
            sta L06E4
            sta L06B7
            sta L0744
            sta L0776
            lda #$00
            sta AUDC1
            sta L060D
            rts
LA677       lda L06B7
            bmi LA68C
            lda #$FF
            sta L06B7
            sta L0744
            sta L0776
            lda #$00
            sta AUDC1
LA68C       rts
LA68D       lda #$00
            sta L0607
            sta L06B7
            lda #$03
            sta L06B3
            lda #$FF
            sta L06DE
            sta L06AF
            sta L070F
            sta L06B2
            lda #$00
            sta L0744
            jsr L8C59
            jsr L89D2
            jsr L8D75
            jsr L91F9
            jsr L8C87
            dec L060D
            bpl LA6E5
            dec L06E7
            jsr LA58E
            lda #$03
            sta L060D
            jsr L9140
            jsr L946B
            jsr L93D9
            lda L060A
            cmp #$05
            bne LA6F2
            jsr L92E6
            jsr LA415
            jmp LA6EC
LA6E5       lda L060A
            cmp #$05
            bne LA6F2
LA6EC       jsr L9077
            jmp LA6F5
LA6F2       jsr L8E2E+1
LA6F5       jsr LA21C
            jsr LA31F
            jsr LACE7
            jsr LAD81
            jsr LA7D2
            ldy #$4F
            lda #$00
LA708       sta L1200,Y
            dey
            bpl LA708
            rts
LA70F       lda P0PF
            and #$01
            beq LA75E
            ldy #$05
LA718       lda L0640,Y
            bmi LA75B
            cmp #$26
            bcc LA75B
            cmp #$35
            bcs LA75B
            lda L066A,Y
            cmp #$0F
            bcs LA75E
            lda L064E,Y
            cmp #$26
            bcc LA75E
            cmp #$35
            bcs LA75E
            lda L060A
            cmp #$02
            beq LA745
            cmp #$05
            beq LA745
            jsr L8669+1
LA745       lda #$0F
            sta L066A,Y
            sta L070A
            lda #$00
            sta L073B
            dec L06CE
            jsr LA3A0
            jmp LA75E
LA75B       dey
            bpl LA718
LA75E       lda P1PF
            and #$01
            beq LA7D2
            ldy #$05
LA767       lda L0646,Y
            bmi LA7CF
            cmp #$26
            bcc LA7CF
            cmp #$35
            bcs LA7CF
            lda L0670,Y
            cmp #$08
            bne LA79E
            tya
            lsr
            tax
            lda L06B8,X
            beq LA7D2
            lda L0654,Y
            cmp #$26
            bcc LA7D2
            cmp #$35
            bcs LA7D2
            lda #$00
            sta L06B8,X
            lda #$00
            sta L073D
            jsr LA817
            jmp LA7D2
LA79E       lda L0670,Y
            cmp #$0F
            bcs LA7D2
            lda L0654,Y
            cmp #$26
            bcc LA7D2
            cmp #$35
            bcs LA7D2
            lda L060A
            cmp #$02
            beq LA7BE
            cmp #$05
            beq LA7BE
            jsr L8669+1
LA7BE       lda #$0F
            sta L0670,Y
            sta L070A
            dec L06CE
            jsr LA3A0
            jmp LA7D2
LA7CF       dey
            bpl LA767
LA7D2       ldy #$05
            lda #$FF
LA7D6       and L0640,Y
            dey
            bpl LA7D6
            and L0647
            and L0649
            and L064D
            cmp #$FF
            bne LA7EF
            sta L0709
            sta L06B7
LA7EF       ldy #$05
            lda #$00
            sta L06CE
LA7F6       lda L0640,Y
            bmi LA7FE
            inc L06CE
LA7FE       dey
            bpl LA7F6
            lda L0647
            bmi LA809
            inc L06CE
LA809       lda L0649
            bmi LA80E
LA80E       lda L064D
            bmi LA816
            inc L06CE
LA816       rts
LA817       inc L06E5
            bpl LA81F
            dec L06E5
LA81F       bne LA824
            inc L06E5
LA824       inc L06E6
            bpl LA82C
            dec L06E6
LA82C       bne LA831
            inc L06E6
LA831       lda L06E7
            clc
            adc #$08
            cmp #$29
            bcc LA83D
            lda #$28
LA83D       sta L06E7
            rts
LA841       lda L0668
            cmp #$74
            beq LA878
            lda P2PF
            and #$01
            beq LA877
            lda L064C
            cmp #$26
            bcc LA877
            cmp #$35
            bcs LA877
            lda L065A
            cmp #$28
            bcc LA877
            cmp #$35
            bcs LA877
            lda #$00
            sta L073D
            jsr LA817
            lda #$74
            sta L0668
            lda #$0A
            sta L0729
LA877       rts
LA878       dec L0729
            bpl LA898
            lda L070A
            bmi LA88B
            lda #$FF
            sta L0709
            sta L06B7
            rts
LA88B       lda #$C6
            sta L0668
            lda #$00
            sta COLPM2
            jsr L996B
LA898       rts
LA899       lda L06BC
            bpl LA8F4
            lda SKSTAT
            and #$04
            bne LA8AC
            lda KBCODE
            cmp #$06
            beq LA8F7
LA8AC       lda TRIG0
            beq LA8F7
            lda L06A8
            and #$0F
            cmp #$0D
            bne LA8F7
            lda L06E6
            bmi LA8F7
            beq LA8F7
            dec L06E6
            lda #$00
            sta L0741
            lda #$05
            sta L06BC
            ldy #$0D
LA8D0       lda L0712,Y
            bmi LA8F0
            lda L066A,Y
            cmp #$08
            beq LA8F0
            cmp #$0F
            bcs LA8F0
            lda #$0F
            sta L066A,Y
            lda #$00
            sta L073B
            dec L06CE
            jsr L8644
LA8F0       dey
            bpl LA8D0
            rts
LA8F4       dec L06BC
LA8F7       rts
LA8F8       jsr LAA98
            lda L06B2
            cmp #$FF
            beq LA91D
            cmp #$00
            beq LA913
            lda #$FC
            sta DLISTL
            lda #$81
            sta DLISTH
            jmp LA91D
LA913       lda #$D8
            sta DLISTL
            lda #$81
            sta DLISTH
LA91D       ldy #$5F
            lda #$00
LA921       sta L1200,Y
            dey
            bpl LA921
            lda L06B2
            cmp #$FF
            bne LA92F
            rts
LA92F       tax
            asl
            tay
            lda LB072,Y
            sta L00DE
            lda LB072+1,Y
            sta L00DF
            lda L06D0
            asl
            tay
            lda (L00DE),Y
            sta L00BE
            iny
            lda (L00DE),Y
            sta L00BF
            jsr LA962
            cpx #$00
            beq LA95F
            lda L00BE
            clc
            adc #$A0
            sta L00BE
            bcc LA95C
            inc L00BF
LA95C       jsr LA96F
LA95F       jmp LA97C
LA962       ldy #$00
LA964       lda (L00BE),Y
            sta L16B8,Y
            iny
            cpy #$9F
            bne LA964
            rts
LA96F       ldy #$00
LA971       lda (L00BE),Y
            sta L1758,Y
            iny
            cpy #$9F
            bne LA971
            rts
LA97C       lda L06B2
            asl
            tay
            lda LB0C6,Y
LA984       sta L00DE
            lda LB0C7,Y
            sta L00DF
            ldy #$00
            ldx L0608
LA990       lda (L00DE),Y
            sta L1200,X
            iny
            inx
            cpy #$14
            bne LA990
            ldx #$00
            stx L06D2
            ldx L0608
LA9A3       lda (L00DE),Y
            sta L1228,X
            iny
            inx
            inc L06D2
            lda L06D2
            cmp #$14
            bne LA9A3
            rts
LA9B5       lda L06DE
            beq LA9BB
            rts
LA9BB       lda #$FF
            ldy #$0D
LA9BF       sta L0712,Y
            dey
            bpl LA9BF
            lda #$FF
            sta L06B2
            lda #$20
            sta L06D9
            ldx #$05
LA9D1       lda L0640,X
            ora L064E,X
            bmi LAA03
            lda L0640,X
            sta L06DC
            lda L064E,X
            sta L06DD
            lda L066A,X
            sta L06DF
            jsr LAAE2
            lda L0711
            bne LA9F6
            sta L0712,X
LA9F6       lda L06E1
            beq LAA03
            lda #$00
            sta L06E2
            stx L06E3
LAA03       dex
            bpl LA9D1
            ldx #$05
LAA08       lda L0646,X
            ora L0654,X
            bmi LAA3D
            lda L0646,X
            sta L06DC
            lda L0654,X
            sta L06DD
            lda L0670,X
            sta L06DF
            jsr LAAE2
            lda L0711
            bne LAA2D
            sta L0718,X
LAA2D       lda L06E1
            beq LAA3D
            lda #$01
            sta L06E2
            stx L06E3
            jsr LAA98
LAA3D       dex
            bpl LAA08
            ldx #$00
            lda L064C
            bmi LAA69
            sta L06DC
            lda L065A
            sta L06DD
            lda L0676
            sta L06DF
            jsr LAAE2
            lda L06E1
            beq LAA69
            lda #$02
            sta L06E2
            stx L06E3
            jsr LAA98
LAA69       ldx #$00
            lda L064D
            bmi LAA97
            sta L06DC
            lda L065B
            sta L06DD
            lda L0677
            sta L06DF
            jsr LAAE2
            lda L0711
            bne LAA8A
            sta L071F
LAA8A       lda L06E1
            beq LAA97
            lda #$03
            sta L06E2
            stx L06E3
LAA97       rts
LAA98       ldy L06D0
            cpy #$0F
            bcs LAAB1
            lda LAAB2,Y
            sta L06D3
            lda LAAC0+2,Y
            sta L06D4
            lda LAAD2,Y
            sta L06D5
LAAB1       rts
LAAB2       .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
            cpy L1EEE
            .byte $34
            nop
            .byte $5A
LAAC0       asl L080E
            php
            php
            php
            php
            php
            php
            php
            dec L00EA
            clc
            sed
            cli
            cli
            php
            php
LAAD2       .byte $02,$02,$02,$02,$02,$02,$02,$02
            inc L00E4,X
            .byte $12,$F2,$E2,$52,$02,$02
LAAE2       lda #$FF
            sta L0711
            lda #$00
            sta L06E1
            jsr LAB3E
            bcs LAAF4
            jmp LAB3D
LAAF4       lda #$00
            sta L0711
            lda L06DC
            cmp L06DD
            bcs LAB04
            lda L06DD
LAB04       cmp L06D9
            bcc LAB0C
            jmp LAB3D
LAB0C       sta L06D9
            cmp #$11
            bcc LAB18
            lda #$00
            jmp LAB1A
LAB18       lda #$01
LAB1A       sta L06B2
            lda #$01
            sta L06E1
            lda L06DF
            cmp #$08
            bcs LAB3A
            ldy L0600
            lda LB118+2,Y
            clc
            adc L06DF
            cmp #$08
            bcc LAB3A
            sec
            sbc #$08
LAB3A       sta L06D0
LAB3D       rts
LAB3E       lda L0600
            asl
            tay
            lda LACC7,Y
            sta L06DA
            lda LACC8,Y
            sta L06DB
            jmp (L06DA)
            jsr LAC60
            bcc LAB61
LAB57       jsr LACAC
            jsr LAC76
            bcc LAB61
            sec
            rts
LAB61       clc
            rts
            jsr LAC60
            bcc LAB7C
            jsr LAC6B
            bcc LAB7C
LAB6D       jsr LACAC
            jsr LAC76
            bcs LAB7C
            jsr LAC84
            bcc LAB7C
            sec
            rts
LAB7C       clc
            rts
            jsr LAC60
            bcc LAB97
            jsr LAC6B
            bcc LAB97
LAB88       jsr LACAC
            jsr LAC84
            bcs LAB97
            jsr LAC9F
            bcs LAB97
            sec
            rts
LAB97       clc
            rts
            jsr LAC60
            bcc LABB2
            jsr LAC6B
            bcc LABB2
LABA3       jsr LACAC
            jsr LAC9F
            bcc LABB2
            jsr LAC91
            bcs LABB2
            sec
            rts
LABB2       clc
            rts
            jsr LAC6B
            bcc LABC3
LABB9       jsr LACAC
            jsr LAC91
            bcc LABC3
            sec
            rts
LABC3       clc
            rts
            jsr LAC60
            bcs LABD2
            jsr LAC6B
            bcc LABD2
            jmp LABA3
LABD2       clc
            rts
            jsr LAC60
            bcs LABE1
            jsr LAC6B
            bcc LABE1
            jmp LAB88
LABE1       clc
            rts
            jsr LAC60
            bcs LABF0
            jsr LAC6B
            bcc LABF0
            jmp LAB6D
LABF0       clc
            rts
            jsr LAC60
            bcs LABFA
            jmp LAB57
LABFA       clc
            rts
            jsr LAC60
            bcs LAC09
            jsr LAC6B
            bcs LAC09
            jmp LAB6D
LAC09       clc
            rts
            jsr LAC60
            bcs LAC18
            jsr LAC6B
            bcs LAC18
            jmp LAB88
LAC18       clc
            rts
LAC1A       jsr LAC60
            bcs LAC27
            jsr LAC6B
            bcs LAC27
            jmp LABA3
LAC27       clc
            rts
            jsr LAC6B
            bcs LAC31
            jmp LABB9
LAC31       clc
            rts
            jsr LAC60
            bcc LAC40
            jsr LAC6B
            bcs LAC40
            jmp LABA3
LAC40       clc
            rts
LAC42       jsr LAC60
            bcc LAC4F
            jsr LAC6B
            bcs LAC4F
            jmp LAB88
LAC4F       clc
            rts
            jsr LAC60
            bcc LAC5E
            jsr LAC6B
            bcs LAC5E
            jmp LAB6D
LAC5E       clc
            rts
LAC60       lda L06DC
            cmp #$2E
            bcs LAC69
            sec
            rts
LAC69       clc
            rts
LAC6B       lda L06DD
            cmp #$2E
            bcs LAC74
            sec
            rts
LAC74       clc
            rts
LAC76       lda L06DD
            asl
            asl
            cmp L06DC
            bcc LAC82
            clc
            rts
LAC82       sec
            rts
LAC84       lda L06DD
            asl
            cmp L06DC
            bcc LAC8F
            clc
            rts
LAC8F       sec
            rts
LAC91       lda L06DC
            asl
            asl
            cmp L06DD
            bcc LAC9D
            clc
            rts
LAC9D       sec
            rts
LAC9F       lda L06DC
            asl
            cmp L06DD
            bcc LACAA
            clc
            rts
LACAA       sec
            rts
LACAC       lda L06DC
            sec
            sbc #$2E
            bpl LACB6
            eor #$FF
LACB6       sta L06DC
            lda L06DD
            sec
            sbc #$2E
            bpl LACC3
            eor #$FF
LACC3       sta L06DD
            rts
LACC7       .byte $52
LACC8       .byte $AB,$63,$AB
            ror L99AA+1,X
            .byte $AB
            ldy L00AB,X
            cmp L00AB
            .byte $D4,$AB,$E3,$AB,$F2,$AB,$FC,$AB,$0B
            ldy LAC1A
            and #$AC
            .byte $33
            ldy LAC42
            eor (L00AC),Y
LACE7       lda L06E4
            bmi LAD65
            lda #$FF
            sta L06E4
            lda L06B2
            bmi LAD65
            lda L06E2
            asl
            tax
            lda LADC4+1,X
            sta L00BE
            lda LADC6,X
            sta L00BF
            ldy L06E3
            lda L06D0
            sta L06F3
            cmp #$0F
            bcs LAD65
            cmp #$08
            beq LAD65
            jsr LAD66
            bcc LAD65
            lda L06D0
            cmp #$08
            bcs LAD28
            jsr L8644
            jmp LAD4B
LAD28       cmp #$09
            bne LAD32
            jsr L8670+2
            jmp LAD4B
LAD32       cmp #$0C
            bne LAD3F
            jsr L86A6+2
            jsr LA817
            jmp LAD4B
LAD3F       cmp #$0D
            bne LAD4B
            lda L06B2
            beq LAD4B
            jsr LA3A0
LAD4B       lda #$0F
            sta (L00BE),Y
            lda #$00
            sta L073B
            lda L06F3
            cmp #$09
            beq LAD65
            lda L060A
            cmp #$05
            beq LAD65
            dec L06CE
LAD65       rts
LAD66       lda L06D0
            asl
            ora L06B2
            tax
            lda L0608
            cmp LADCC+1,X
            bcc LAD7F
            cmp LADEB,X
            beq LAD7D
            bcs LAD7F
LAD7D       sec
            rts
LAD7F       clc
            rts
LAD81       ldx #$0D
LAD83       lda L0640,X
            bmi LADB9
            lda L066A,X
            cmp #$0F
            bcc LADB9
            inc L066A,X
            lda L066A,X
            cmp #$14
            bne LADB9
            lda #$FF
            sta L064E,X
            sta L0684,X
            ldy L060A
            cpy #$05
            bne LADAE
            cpx #$0C
            bne LADB1
            lda #$FF
LADAE       sta L0640,X
LADB1       lda #$00
LADB3       sta L066A,X
            sta L065C,X
LADB9       dex
            bpl LAD83
            rts
            rti
            asl FMSZPG+3
            asl DSTAT
            asl ATRACT
LADC4       asl RAMTOP
LADC6       asl ROWAC
            asl DELTAR
            asl DELTAC
LADCC       asl WARMST
            asl CMCMD
            .byte $04
            asl CASINI
            .byte $07,$04
            php
            asl CMCMD
            .byte $04
            asl CASINI
            .byte $07,$04
            ora #$07
            .byte $07,$03
            ora #$07
            ora #$07
            ora #$07
            ora #$07
            ora #$07
LADEB       .byte $0C
            asl L100D
            asl L0D12
            bpl LADB3+1
            asl L100D
            asl L0D12
            bpl LAE07
            ora L110D
            .byte $0B
            ora L0D0B
            .byte $0B
            ora L0D0B
LAE07       .byte $0B
            ora L1400
            .byte $00,$00,$00,$00
            ora (RAMLO,X)
            .byte $04
            ora (L0000,X)
            .byte $00,$00,$00,$00
            rti
            rti
            .byte $00,$04
            ora RAMLO
            .byte $04,$00,$00,$00,$00
            rti
            rti
            rti
            rti
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$04,$04
            ora RAMLO
            .byte $00,$00,$00,$00
            rti
            rti
            rti
            rti
            ora (RAMLO,X)
            .byte $04
            ora (L0000,X)
            .byte $00,$00,$00,$00
            rti
            rti
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora BRKKEY,X
            ora L0000,X
            .byte $00,$00,$00,$00,$00
            rti
            bpl LAE60
            ora (L0000,X)
            .byte $00,$00
LAE60       .byte $00,$00,$00,$44,$00
            rti
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (RAMLO,X)
            .byte $00,$00,$00,$00,$00,$54,$44,$54
            ora (L0000),Y
            ora (L0000,X)
            .byte $00,$00,$00,$00
            bpl LAEC5
LAE85       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (RAMLO,X)
            .byte $00,$00,$00,$00,$00
            rti
            .byte $00,$44
            ora BRKKEY,X
            ora L0000,X
            .byte $00,$00,$00,$00
            bpl LAEE5
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LAEAE       .byte $00,$00
            ora (L0000,X)
            ora (L0000),Y
            .byte $00,$00,$00,$00,$00
            rti
            bpl LAEC0
            ora (L0000,X)
            .byte $00,$00
LAEC0       .byte $00,$00,$00,$54,$44
LAEC5       .byte $54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$04
            ora (L0000),Y
            .byte $00,$00,$00,$00,$00,$54
            bpl LAEED
            .byte $04,$00,$00,$00,$00,$00,$00
            bpl LAF39
LAEE5       .byte $00,$00,$00,$00,$00,$00,$00,$00
LAEED       .byte $00,$00,$00,$00
            ora RAMLO,X
            .byte $00,$00,$00,$00,$00,$00
            bpl LAF3F
            .byte $04
            ora L0000,X
            .byte $00,$00,$00,$00,$00,$44
            bpl LAF06
LAF06       .byte $00,$00,$00,$00,$00
LAF0B       .byte $00,$00,$00,$00
            ora BRKKEY,X
            ora RAMLO,X
            .byte $00,$00,$00,$00,$00,$00
            rti
            rti
            .byte $04
            ora (NGFLAG,X)
            .byte $00,$00,$00,$00,$00
            bvc LAF35
            .byte $00,$00,$00,$00,$00,$00
LAF2B       .byte $00,$00,$00,$00,$00
            ora BRKKEY,X
            ora L0000,X
            .byte $00
LAF35       .byte $00,$00,$00,$00
LAF39       bvc LAF3F
            ora (L0000,X)
            .byte $00,$00
LAF3F       .byte $00,$00,$00,$00
            rti
            bpl LAF46
LAF46       .byte $00,$00,$00,$00,$00
LAF4B       .byte $00,$00,$00,$00,$00,$00
            ora (NGFLAG,X)
            .byte $00,$00,$00,$00,$54,$44,$54
            bpl LAF61
            .byte $04,$00,$00,$00,$00
LAF61       .byte $00,$00
            bpl LAFA5
            rti
            .byte $00,$00,$00,$00,$00
LAF6B       .byte $00,$00,$00,$00,$00,$00
            ora POKMSK
            .byte $00,$00,$00,$00,$00,$54,$44,$54
            ora (RAMLO,X)
            .byte $00,$00,$00,$00,$00,$00
            rti
            .byte $00,$00,$00,$00,$00,$00,$00
LAF8B       .byte $00,$00,$00,$00,$00,$00,$04
            ora L0000
            .byte $00,$00,$00,$00
            rti
            rti
            bpl LAF9C+1
LAF9C       ora (L0000,X)
            .byte $00,$00,$00,$00,$00
            bpl LAFF9
LAFA5       .byte $44,$54,$00,$00,$00,$00
LAFAB       .byte $00,$00,$00,$00,$00,$00,$04
            ora (L0000,X)
            .byte $00,$00,$00,$00,$00,$00
            rti
            bpl LAFC2
            .byte $00,$00,$00,$00,$00
LAFC2       .byte $00,$54,$44,$54,$00,$00,$00,$00,$00
LAFCB       .byte $00,$00,$00,$00,$00
            ora (NGFLAG,X)
            .byte $04,$00,$00,$00,$00,$00,$00
            bpl LB02B
            .byte $04
            ora BRKKEY,X
            ora L0000,X
            .byte $00,$00,$00
            rti
            rti
            .byte $00,$00,$00,$00,$00,$00
LAFEB       .byte $00,$00,$00,$00,$00,$00,$00
LAFF2       ora (L0000,X)
            .byte $00,$00,$00,$00,$00
LAFF9       bpl LB03B
            ora BRKKEY,X
            ora L0000,X
            .byte $00,$00,$00,$00,$04
            bvc LB006
LB006       .byte $00,$00,$00,$00,$00
LB00B       .byte $0B
LB00C       ldx LAF0B
            .byte $4B
            ldx LAF2B
            .byte $CB
            ldx LAFEB
            .byte $8B
            ldx LAFCB
            .byte $2B
            ldx LAF8B
            .byte $AB
            ldx LAFAB
            .byte $EB
            ldx LAF6B
            .byte $6B
            ldx LAF4B
LB02B       tax
            asl L00D2,X
            asl L00FA,X
            asl ICCOMZ,X
            .byte $17
            lsr
            .byte $17,$72,$17
            txs
            .byte $17,$C2,$17
LB03B       nop
            .byte $17,$12
            clc
LB03F       .byte $6B
            bvs LB0B7
            .byte $7A
LB043       sta L8388
LB046       ror L0CC8,X
            ldx LB40C,Y
            .byte $0C
            tax
            .byte $0C
LB04F       iny
LB050       ora L0DBE
            ldy DOSINI+1,X
            tax
LB056       ora L0C0C
            clc
            clc
            bmi LB08B+2
            rts
            rts
            cpy #$C0
LB061       bmi LB093
            clc
            clc
            .byte $0C,$0C
            asl TRAMSZ
            .byte $03,$03
LB06B       asl L0A0C
            php
            asl RAMLO
            .byte $02
LB072       ror L00B0,X
            .byte $9E
LB075       bcs LB077
LB077       clc
            ldy #$18
            rti
            ora L19E0,Y
            .byte $80,$1A
            jsr LC01B
            .byte $1B
            rts
            .byte $1C,$00
            ora L1DA0,X
            rti
LB08B       asl L1EE0,X
            .byte $80,$1F
            jsr ICHIDZ
LB093       clc
            cpy #$20
            rts
            and (L0000,X)
            .byte $22
            ldy #$22
            rti
            .byte $23,$00
            bit FREQ
            and LOMEM
            rol L00C0
            .byte $27,$00
            and #$40
            rol
            .byte $80,$2B
            cpy #$2C
            .byte $00
            rol L2F40
            .byte $80
            bmi LB075
            and (L0000),Y
LB0B7       .byte $33
            rti
            .byte $34,$00
LB0BB       bit LOMEM
            and L00C0,X
            rol L0000,X
            sec
            rti
            and L3A80,Y
LB0C6       dex
LB0C7       bcs LB0BB
            bcs LB0CB
LB0CB       .byte $00,$00,$00,$00,$57
            cli
            eor L5B5A,Y
            .byte $5C
            eor L5F5E,X
            rts
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            adc (PALNTS,X)
            .byte $63,$64
            adc MLTTMP
            .byte $67
            pla
            adc #$6A
            .byte $00,$00,$00,$00,$00,$57
            cli
            eor L5B5A,Y
            .byte $5C
            eor L5F5E,X
            rts
            adc (PALNTS,X)
            .byte $63,$64
            adc MLTTMP
            .byte $67
            pla
            adc #$6A
            .byte $6B
            jmp (L6E6D)
            .byte $6F
            bvs LB17E
            .byte $72,$73,$74
            adc DELTAR,X
            .byte $77
            sei
            adc L7B7A,Y
            .byte $7C
LB118       adc L047E,X
            .byte $03,$03,$03,$02
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $07,$07,$07
            asl RAMLO+1
            ora RAMLO+1
LB12A       .byte $00,$00,$00,$00,$00,$02
            php
            jsr L0000
            php
            plp
            dey
            php
            php
            php
            php
            .byte $02,$00,$00,$00,$00,$00,$00
            php
            php
            dey
            plp
            php
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            rol
            jsr ICHIDZ
            .byte $00,$00,$00,$00
            tay
            php
            php
            jsr ICAX1Z
            .byte $00,$00,$00,$00,$00
            php
            tay
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00
            ora (NGFLAG,X)
            ora (L00AA,X)
            .byte $00,$00,$00
LB17E       .byte $00,$00,$00,$00
            tax
            .byte $00,$00,$00,$00,$00,$00,$00
            tax
            .byte $00,$00,$00,$00,$00,$00,$00
            tay
            .byte $00,$00,$00,$00,$00,$00,$00
            ldy #$00
            .byte $00,$00,$00,$00,$00,$00,$80,$00,$00,$00,$00,$00,$00,$00
LB1AA       .byte $00,$00
            asl
            jsr L2020
            jsr L0000
            .byte $00
            ldy #$08
            php
            php
            php
            .byte $00
            jsr L2020
            jsr DOSVEC
            .byte $00,$00
            php
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            php
            php
            php
            php
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            php
            php
            php
            php
            .byte $00,$00,$00,$00,$00,$00
            asl
            .byte $00,$00,$00,$00
            asl
            .byte $00,$00
            ldy #$08
            php
            php
            php
            ldy #$20
            jsr L2020
            asl
            .byte $00,$00,$00,$00,$00,$00,$00
            ldy #$00
            .byte $00,$00,$00,$00
            asl
            .byte $00,$00,$00,$00
            asl
            .byte $00,$00
            ldy #$08
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00
            asl
            .byte $00,$00,$00
            php
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00,$00,$00
            jsr L2020
            jsr DOSVEC
            .byte $00,$00
            php
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00,$00,$00,$00,$00
            php
            php
            php
            php
            .byte $00,$00,$00,$00
LB24A       .byte $00,$00
            asl
            jsr L2020
            jsr DOSVEC
            .byte $00
            ldy #$00
            .byte $00,$00,$00
            ldy #$00
            .byte $00,$00,$00
            asl
            .byte $00,$00,$00
            php
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00,$00
            asl
            jsr L2020
            jsr DOSVEC
            .byte $00
            ldy #$00
            .byte $00,$00,$00
            ldy #$20
            jsr L2020
            asl
            .byte $00,$00,$00
            php
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00,$00
            asl
            .byte $00,$00,$00,$00,$00,$00,$00
            ldy #$08
            php
            php
            php
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            php
            php
            php
            php
            .byte $00,$00,$00,$00,$00,$00
            asl
            jsr L2020
            jsr DOSVEC
            .byte $00
            ldy #$08
            php
            php
            php
            ldy #$20
            jsr L2020
            asl
            .byte $00,$00,$00
            php
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00,$00
            asl
            jsr L2020
            jsr DOSVEC
            .byte $00
            ldy #$08
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00
            asl
            .byte $00,$00,$00
            php
            php
            php
            php
            ldy #$00
            .byte $00,$00,$00
            ora CASINI,X
            asl
            .byte $00,$03,$0F,$EF,$AB,$FA,$00
            ora (APPMHI,X)
            sta L00F9,X
            sbc L00E5
            sbc L0000,Y
            .byte $80
            bcs LB357
            .byte $6F,$5B,$5B
LB304       .byte $6F,$00,$03
            beq LB304
            nop
            .byte $AF,$00
            ora LOMEM
            ldy #$00
            .byte $1F
            plp
            jsr L1020
            bpl LB31A+1
            .byte $04,$00
            php
LB31A       rol L0600,X
            ldy L0E00,X
            plp
            php
LB322       php
            .byte $04,$04
            bpl LB336+1
            .byte $00
            bpl LB32A
LB32A       ora CASINI,X
            ora (L0000,X)
            ora (DOSVEC,X)
            .byte $03
            rol
            lda #$56
            .byte $5A,$00
LB336       ora (TEMPCHR,X)
            sbc OLDADR
            .byte $EF,$FF,$AF,$00,$02
            bvc LB396
            .byte $5B
            lda.w L00FB
            .byte $02,$02
            lsr L00BE,X
            .byte $03
            rti
            .byte $00
LB34C       .byte $00
            jsr L5526
            stx COLCRS,Y
            sta L00E6,X
            .byte $00,$02,$80
LB357       .byte $00,$00,$80,$80,$00
            ora CASINI+1,X
            .byte $03,$00,$00
            ora RAMLO+1
            ora #$EA
            sbc #$A9
            lda #$00
            .byte $00
            cpy #$00
            ora (FREQ,X)
            rti
            .byte $00
            asl
            .byte $03,$00
            ora (APPMHI,X)
            asl
            .byte $3A,$3A,$00,$00
            bcc LB34C
            bne LB322
            sty L0090,X
            bcc LB382
LB382       .byte $00,$3C,$00
            asl L0000,X
            ora (DOSVEC),Y
            asl
            .byte $03
            ora (DOSVEC,X)
            tax
            .byte $00
            ora (L00A6,X)
            ldx L00E9
            eor L00AA,X
            tax
LB396       .byte $00
            ora (BOOT,X)
            sta COLCRS,X
            .byte $5A,$AF,$FF,$00
            ora (FREQ,X)
            lsr LF555,X
            nop
            .byte $80,$00,$02
            ldy #$55
            tax
            .byte $00
            ora COLCRS
            tax
            .byte $00,$02
            ora (BOOT,X)
            lda OLDCOL
            eor L0095,X
            ora #$00
            ora (FREQ,X)
            rts
            beq LB41E
            rts
            .byte $80,$00,$03,$02
LB3C3       .byte $0B
            asl L0103
            .byte $00,$02
            nop
            cmp L00D6,X
            .byte $FF
            eor COLCRS,X
            lda #$2A
            lda COLCRS
            stx L00FF,Y
            .byte $7F
            rti
            rti
            rti
            cli
            .byte $54,$54,$FC
            nop
            .byte $00
            rol L1500
            .byte $02,$02,$00
            ora (DSKFMS+1,X)
            .byte $07
            rol
            lda #$F5
            cmp L0000,X
LB3ED       ora (TEMPCHR,X)
            lda L0095,X
            sbc L5F7F,X
            .byte $00,$02
            rts
            eor LA557,Y
            sbc #$00
            .byte $02,$03
            eor L00FE,X
            .byte $03
            rti
            .byte $00,$00
            jsr L96AA
            ldx L0095
            inc L00FB
            .byte $00
LB40C       .byte $02
            cpy #$00
            .byte $00
            cpy #$C0
            .byte $00
            ora NGFLAG,X
            ora (L0000,X)
LB417       .byte $00,$07,$07
            asl
            ror
            ror
            tax
LB41E       tax
            .byte $00,$00
            cpy #$00
            ora (LOMEM,X)
            .byte $80,$00
            asl
            .byte $02,$00
            ora (TRAMSZ,X)
            asl DSKUTL
            .byte $1A,$00,$00
            bvc LB3C3
            ldy #$A8
            tay
            ldy #$A0
            .byte $00,$00,$3C,$00
            asl L0000,X
            ora CASINI,X
            asl
            .byte $00,$03,$0F
            inc L3AAA
            .byte $00
            ora (APPMHI+1,X)
            ldx L00DB
            lda L95A3+2
LB44F       .byte $00,$00,$80
            beq LB3ED+1
            .byte $E7,$7A,$5A
            lsr L0000,X
            .byte $03
            beq LB417
            tax
            ldy L0500
            .byte $80
            rts
            .byte $00,$1F
            plp
LB465       jsr L1020
            bpl LB46D+1
            .byte $04,$00
            php
LB46D       asl L0600
            bcs LB472
LB472       asl L0818
            php
            .byte $04,$04
            bpl LB489+1
            .byte $00
            bpl LB47D
LB47D       asl
            .byte $03,$00,$00,$03,$03,$00
            ora (WARMST,X)
            tax
            stx L009A,Y
LB489       lsr L009B,X
            .byte $EF,$00,$02
            cpy #$55
            .byte $BF
            cpy #$01
            .byte $00,$02
            ora #$65
            cmp OLDROW,X
            .byte $6B,$00
            ora (RAMLO+1,X)
LB49D       lsr L7F56,X
            sbc.w L00F5,X
            ora (ADRESS,X)
            bne LB44F
            ror
            .byte $5F,$57,$00
            ora LOMEM
            .byte $80,$00,$1F,$3C,$00
            asl RAMLO+1
            asl DOSVEC
            rol
            rol
            asl
            asl
            .byte $00,$00,$80,$00
            ora (L0090,X)
            bcc LB465+1
            ldy L0000
            php
            .byte $03,$00
            ora (CASINI,X)
            .byte $02,$00,$02
            bne LB49D+1
            ldy #$A9
            lda #$AA
            tax
            .byte $00
            ora FREQ
            rti
            .byte $00
            php
            .byte $00
            ora (NGFLAG,X)
            ora #$0F
            ora #$09
            .byte $02,$00,$00
            rti
            rts
            .byte $5A
            sbc COLCRS
            lsr FKDEF,X
            .byte $00,$03
            eor L00AA,X
            .byte $00,$04
            asl
            eor L00AA,X
            .byte $00,$03
            ora (L00B5,X)
            .byte $FF,$5F,$AB,$02,$00
            ora (FKDEF,X)
            lsr COLCRS,X
            lda L00FA
            .byte $FF,$00
            ora (L009A,X)
            txs
            .byte $6B
            eor L00AA,X
            tax
            .byte $00
            ora (L00A0,X)
            ldy #$C0
            rti
            ldy #$AA
            .byte $00,$37,$AB,$00
            asl L00FD
            ora (NGFLAG,X)
            ora (ICBAHZ,X)
            ora BUFADR,X
            .byte $3F
            eor COLCRS,X
            ror
            tay
            .byte $5A
            eor L0096,X
            .byte $FF
            rti
            .byte $00,$02,$AB,$57,$97,$FF,$00,$03,$80
            cpx #$B0
            cpy #$00
            asl
            .byte $02,$00,$00,$02,$02,$00
            ora (WARMST,X)
            tya
            eor L0096,X
            eor COLCRS+1,X
            .byte $9B,$00,$02,$80
            sta L00BE,X
            cpy #$01
            .byte $00,$02
            ora COLCRS
            sbc KEYDEF+1
            .byte $EF,$00
            ora (RAMLO+1,X)
            .byte $5B
            lda L00BF,X
            .byte $FF,$FA,$00
            ora (L00A0,X)
            cpy #$A8
            ror
            sta L00A5,X
            .byte $00
            ora LOMEM
            rti
            .byte $00,$1F,$3C,$00
            asl TRAMSZ
            .byte $07,$07,$1A
            asl TRAMSZ,X
            asl L0000
            .byte $00
            cpy #$00
            ora (L00B0,X)
            ldy #$AC
            ldy L0800
            .byte $03,$00
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $02
            bvc LB5D6+1
            rts
            .byte $AB,$6B
            ror
            ror
            .byte $00
            ora L00C0
            cpy #$00
            php
            .byte $00,$1B,$03,$00,$03
            asl LE639
            sta LE6CC,Y
            and L5040,Y
            lsr COLCRS,X
            eor L00CC,X
            eor L0096,X
            .byte $00,$02,$80
            rts
            cpy #$80
            .byte $00,$33
            sbc DOSINI+1
            .byte $00,$02,$02
            asl L6E03
            cmp DSTATS
            .byte $03
            cpx #$68
            beq LB62C
            .byte $5C
            rts
            rts
            rts
            .byte $00,$02
            lsr L00DC,X
            .byte $00
            ora L00C0
            .byte $00,$13,$00,$0C,$03,$0C,$32,$00,$00,$03,$0C,$33,$CF
LB5D6       rol LA18B,X
            .byte $0F
            inc LEEFB,X
            tsx
            nop
            lda #$11
            lda #$E5
            lda L0095
            eor COLCRS,X
            eor RAMLO,X
            ror
            .byte $5A
            lsr COLCRS,X
            eor COLCRS,X
            eor POKMSK,X
            .byte $EF,$6B
            ldx L969A+1
            adc ADRESS+1
            .byte $44,$00,$00,$FC,$F3
            ldy LBBEF,X
            ror.w FMSZPG+1
            .byte $02
            cpy #$30
            cpy LAFF2+1
            .byte $00,$0F,$3C,$33,$3C,$0F,$03,$00,$02,$BB,$22
            lda ICAX6Z
            .byte $C3,$F3,$3C,$03
            sta ICDNOZ,X
            lda #$BA
            sbc #$BA
            inc L55F3
            .byte $04
            eor MLTTMP,X
            sta LEEAA,Y
            .byte $33
            eor POKMSK,X
LB62C       eor MLTTMP,X
            sta LEEAA,Y
            .byte $33
            adc FMSZPG+1
            sta MLTTMP,X
            sta LEFAB,Y
            .byte $33
LB63A       .byte $6B
            sty LEF5A
            .byte $BB,$EF,$FF,$3C,$B3,$FF,$B3,$FF
            cpy LC030
            .byte $00
            php
            .byte $00,$14,$03,$02,$0C,$00,$00,$0F
            sec
            .byte $33,$FB,$3F,$EF
            inc L2EF3,X
            .byte $FF,$DF
            adc LE7B9,X
            inc LCFB0,X
            .byte $52,$F7
            sbc LF7DE,X
            .byte $F7,$00
            ora (L00C0,X)
            bmi LB63A
            .byte $F3,$1F
LB670       clv
            .byte $00
            asl L00C0
            .byte $00,$1F,$0F,$02,$03,$03,$00,$03,$3F,$FB,$CF,$3A,$CF,$33,$0F,$00
            .byte $00,$FF,$D7
            lda LBFFC,Y
            inc LCC3F,X
            sta LDDFB,X
            jmp (LCC77)
            .byte $13
            sed
            .byte $CF
            ror LDC33,X
            sty.w L00F0
            ora (L00C0,X)
            .byte $00
            asl L0000,X
            asl.w ICHIDZ
            ora ICCOMZ
            rti
            .byte $00,$03,$02
            stx RAMLO
            .byte $22,$00
            ora (CASINI,X)
            .byte $00,$00,$22,$43,$22
            sty.w L0000
            .byte $2F
            sec
            .byte $A3,$FB,$3F,$EF,$FA
            sbc ICAX5Z,X
            .byte $FF,$DF
            adc LE7B9,X
            inc LE75C,X
            lsr L00F7,X
            sbc LE7DE,X
            .byte $E7,$00
            ora (ROWAC,X)
            bvs LB670
            .byte $D7,$27
LB6D6       eor L0000,X
            php
            .byte $02,$00
            asl CASINI
            .byte $00
            ora WARMST
            .byte $00,$00
            rts
            .byte $04,$00,$03
            eor (WARMST,X)
            ldx #$00
            .byte $00,$04,$00,$02,$0F,$62,$07,$3A
            jsr RAMLO
            ora (L00BF,X)
            .byte $FB,$CF,$3A,$CF,$B3,$0B,$00,$00,$FF,$D7
            lda LB7FC,Y
            cmp L0F35,Y
            sta LDDFB,X
            adc LD555
            eor DELTAC,X
            eor L5B55,Y
            .byte $54,$9C
            bvc LB6D6
            .byte $00,$00
            cpy #$C0
            .byte $00
            ora L0000
            ora APPMHI+1,Y
            .byte $04
            and L97E5+2,Y
            .byte $E7
            and L2609,Y
            .byte $E7
            bcs LB797
            .byte $5B
            jmp (L80AF+1)
            rts
            jmp (L0100)
            cpy #$00
            .byte $3C,$E7,$E7,$E7,$E7,$E7,$E7
            inc RECVDN
            jmp (L6C6C)
            jmp (L6C6C)
            jmp (L00B0)
            .byte $1F,$00,$12
LB74A       ora (L0000,X)
            .byte $04
            ora (BUFADR+1,X)
            .byte $6B
            asl NGFLAG,X
            .byte $00,$00,$0F
            rol LD676
            .byte $5B
            dec L00B6,X
            adc LE0BD
            adc OLDADR,X
            .byte $97
            lsr LE479,X
            .byte $FB,$00
            ora (TEMPCHR,X)
            lda TEMPCHR
            .byte $00
            ora (L00C0,X)
            .byte $00
            plp
            .byte $0F
            rol L3EFB,X
            .byte $0F,$00
            ora (L00FA,X)
            .byte $AF
            sbc COLCRS+1,X
            sbc L00AF,X
            .byte $FA,$0F
            dec OLDROW,X
            ror L6EBE
            .byte $5B
            dec L00B6,X
            lsr LE597,X
            .byte $FA
            sbc L0097
            lsr LBC7B,X
            .byte $EB
            ror L7E57,X
            .byte $EB
            ldy.w L00C0,X
LB797       .byte $00
            cpy #$F0
            ldy LC0F0,X
            .byte $00
            ora (L0000),Y
            clc
            ora (L0000,X)
            ora (DOSINI,X)
            .byte $00,$00,$02
            asl L0000
            ora (STATUS,X)
            .byte $00
LB7AD       .byte $00
            ora L0093
            tay
            bvs LB7B3
LB7B3       ora (POKMSK,X)
            .byte $00
            ora (DSTAT,X)
            bpl LB74A
            .byte $00,$02
            bpl LB7BE
LB7BE       .byte $37
            bpl LB7C1
LB7C1       .byte $02
            ror BRKKEY,X
            ora #$CF
            .byte $00,$00,$04,$00
            ora (ROWAC,X)
            .byte $00,$00
            bpl LB810+1
            .byte $00,$04
            cpy #$00
            ora L1B00,X
            .byte $C3
            php
            .byte $00,$00
            ora (L0000,X)
            .byte $00,$42,$0C
            ora BRKKEY
            and (L0086,X)
            .byte $9C,$00
            ora (RAMLO,X)
            bpl LB83A
            .byte $D7
            eor #$65
            .byte $00,$00
            cpy #$00
            .byte $00,$04,$00
            ora (NGFLAG,X)
            .byte $00
            and (CASINI),Y
            cpy #$00
            .byte $00
LB7FC       .byte $04,$00,$00,$03,$00,$00
            eor L5650,X
            and L0000,X
            .byte $00
            ora (L0000,X)
            ora (L009D,X)
            cmp FMSZPG+1
            bne LB810
LB810       ora (CASINI,X)
            .byte $00
            ora (STATUS,X)
            .byte $80
            rti
            .byte $00,$1B,$00
            bpl LB81E
            .byte $00,$03
LB81E       jsr DDEVIC
            .byte $02,$CB,$0F
            bmi LB855+2
            .byte $00,$00,$42
            sty L1505
            eor (FMSZPG+3),Y
            .byte $9C
            bmi LB831
LB831       .byte $00,$04,$7C,$57,$D7,$89
            ror L0000
            .byte $00
LB83A       cpy #$00
            .byte $00,$04,$00
            ora (ICDNOZ,X)
            jsr VDSLST
            jsr CASINI+1
            .byte $27
            php
            .byte $00
            ora (STATUS,X)
            asl L08CB
            asl L0000
            .byte $00,$03,$00,$00
LB855       eor L5141,X
            .byte $14,$04
            sta (L0000,X)
            .byte $00,$03
            sta L450D,X
            eor ROWCRS,X
            .byte $02,$2B,$00
            ora (STATUS,X)
            .byte $80
            bvs LB89D+1
            cpy #$00
            php
            .byte $00
            ora (LOMEM,X)
            .byte $00
            asl
            bmi LB875
LB875       php
            .byte $00,$0B
            php
            .byte $00,$03,$02,$00,$03
            bmi LB880
LB880       .byte $03
            ora (L0085,X)
            .byte $17,$17
            eor (L0000),Y
            .byte $00,$42
            sta L1645
            bvc LB8D2
            .byte $9C
            jsr L0440
            adc LE656,X
            ora #$66
            .byte $00,$00
            cpy #$00
            .byte $00,$44
LB89D       bvc LB8A2+1
            and (ICHIDZ,X)
            .byte $00
LB8A2       ora (CASINI+1,X)
            jsr CASINI
            ora (DOSINI,X)
            .byte $00,$17,$03,$00
            ora #$80
            .byte $00,$00,$0C
            cpy #$00
            .byte $00
            bvc LB8C1
            .byte $DB,$14
            ora L0000
            .byte $00,$0B,$00,$00
            eor (FMSZPG+5,X)
LB8C1       eor (ICCOMT),Y
            .byte $74
            sta NGFLAG
            .byte $03,$89
            ora #$45
            eor ROWCRS,X
            .byte $32,$5B
            bvc LB8E0
            .byte $34,$9F
LB8D2       .byte $74
            rol L00D4,X
            .byte $00,$00
            php
            .byte $00
            ora (L00C0,X)
            .byte $00
            ora (STATUS,X)
            .byte $00,$07
LB8E0       bmi LB8E2
LB8E2       php
            .byte $00
            asl NGFLAG
            .byte $00,$00,$04,$00,$00
            ora (LOMEM,X)
            .byte $00,$00,$03,$00
            ora (ICHIDZ,X)
            .byte $0C,$00,$00
            php
            ora (L0000,X)
            .byte $00,$04,$00,$00,$04
            php
            .byte $14
            bne LB935+1
            .byte $34
            clc
            ora (L0000,X)
            .byte $00
            bne LB90C
            rts
            .byte $13
            rti
LB90C       cpy #$00
            .byte $00,$0C
            rti
            .byte $D4,$00,$00
            jsr L4280
            .byte $00,$02
            eor (L0000,X)
            .byte $00
            rti
            bpl LB91F
LB91F       .byte $02
            bmi LB922
LB922       .byte $00
            jsr VPRCED
            cpy #$40
            .byte $00,$0B
            rti
            .byte $00
            ora CASINI
            .byte $00,$02
            bmi LB932
LB932       ora (WARMST,X)
            .byte $00
LB935       ora (RAMLO,X)
            .byte $00,$00,$04,$00,$00
            plp
            .byte $00
            ora (L00C0,X)
            .byte $00,$00,$04
LB943       ora (ICBALZ,X)
            .byte $04
            rti
            bne LB951
            bvs LB94B
LB94B       ora (L0090,X)
            bpl LB94F
LB94F       .byte $00,$0C
LB951       rti
            ora (CHKSUM,X)
            sta (LOMEM,X)
            eor #$07
            .byte $00
            ora (ICAX4Z,X)
            .byte $00,$03
            cpy L4040
            ora (L0000,X)
            .byte $00
            rti
            rti
            ora (L0000,X)
            .byte $00
            rti
            .byte $00
            ora (POKMSK,X)
            .byte $00,$02,$03,$00,$00,$04,$00,$03,$00
            ora (RAMLO,X)
            .byte $00,$07
            dey
LB97A       ora (L00BA),Y
            .byte $1A
            tsx
            .byte $87
            tsx
            php
            .byte $BB
            adc L00BB
            .byte $80,$BB
            bcs LB943
            inc L00BB
            inc L87BC
            lda LBD54,X
            .byte $42
            lda LBDA3,X
            .byte $F3
            lda LBE5F,X
            ror L89BD+1
            ldx LBF1A,Y
            .byte $4B,$BF
            adc L00BF,X
LB9A2       sta L14BF
LB9A5       tsx
            .byte $43
            tsx
            .byte $B2
            tsx
            .byte $27,$BB
            ror L90B9+2
            .byte $BB,$C2,$BB
            rol L0ABC,X
            lda LBD91,X
            adc L00BD
            pha
            lda LBDBE,X
            .byte $17
            ldx LBE64,Y
            .byte $77
            ldx LBEBA,Y
            tsx
            ldx LBF59,Y
            adc L9EBE+1,X
            .byte $BF
LB9CE       .byte $17
LB9CF       tsx
            adc L00BA
            cmp L46BA,X
            .byte $BB,$77,$BB
            ldy #$BB
            .byte $D4,$BB
            stx L00BC,Y
            rol L00BD
            txs
            lda LBD76,X
            lsr LD9BD
            lda LBE3B,X
            adc #$BE
            .byte $80
            ldx LBEEA,Y
            nop
            ldx LBF67,Y
            sta L00BF
            .byte $B2,$BF
LB9F8       .byte $00,$03,$03
            ora (CASINI,X)
            .byte $02,$03,$02,$02,$02,$02,$02,$00,$00
            ora (L0000,X)
            .byte $02,$03,$00,$00,$00,$00,$00,$00,$00
            ldx ICAX4Z,Y
            .byte $FF
            lda L00A2
            .byte $00
            ora (NGFLAG,X)
            ora (RAMLO+1,X)
            asl CMCMD
            asl CMCMD
            php
            ora TRAMSZ
            .byte $07
            asl CMCMD
            php
            ora TRAMSZ
            .byte $07
            asl CMCMD
            php
            ora TRAMSZ
            .byte $07
            asl CMCMD
            php
            ora TRAMSZ
            .byte $07
            asl CMCMD
            php
            ora TRAMSZ
            .byte $07,$FF
            asl CMCMD
            php
            ora TRAMSZ
            .byte $07,$FF,$AF,$AF,$AF
            dec LCECE
            ldx LAEAE
            cmp LCDCD
            ldy LACAC
            .byte $CB,$CB,$CB
            tax
            tax
            tax
            cmp #$C9
            cmp #$A8
            tay
            .byte $A7
            cpy L00C4
            .byte $C3
            ldx #$A2
            ldx #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            php
            .byte $FF,$8F,$8F,$8F
            stx L8E8C+2
            sta L8D8D
            sty L8C8C
            .byte $8B,$8B,$8B
            txa
            txa
            .byte $89,$89,$89
            dey
            dey
            dey
            .byte $87,$87,$87
            stx L0086
            stx L0085
            sta L0085
            sty L0084
            sty L0083
            .byte $83,$83,$82,$82
            sta (LOMEM+1,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $FF,$8F,$8F
            stx L8D8D+1
            sta L8C8C
            .byte $8B,$8B
            txa
            txa
            .byte $89,$89
            dey
            dey
            .byte $87,$87
            stx L0086
            sta L0085
            sty L0084
            .byte $83,$83,$82,$82
            sta (LOMEM+1,X)
            .byte $00
            bpl LBB48
LBB48       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora APPMHI+1,X
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$FF
            ldx #$A5
            tay
            .byte $AB,$AB
            tay
            lda L00A2
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            sbc LFDFD,X
            sbc LFDFD,X
            sbc LFDFD,X
            sbc LFDFD,X
            sbc LFDFD,X
            .byte $FF,$AF
            ldx LACAC+1
            .byte $AB
            tax
            lda #$A8
            .byte $A7
            ldx L00A5
            ldy L00A3
            ldx #$A1
            .byte $00,$03,$03,$03,$03,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02,$02
            .byte $00
            pha
            .byte $47
            lsr FMSZPG+2
            .byte $44,$43,$42
            eor (FREQ,X)
            .byte $3F
            rol L3C3D,X
            .byte $3B,$3A
            and LFF38,Y
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $00,$02,$02,$02,$02,$02,$02,$02,$02,$02,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$22,$1F
            ora L171A,X
            .byte $14,$12
            bpl LBBFD
LBBEF       ora L0B0C
            asl
            ora #$08
            .byte $07
            asl RAMLO+1
            .byte $04,$03,$04
            ora TRAMSZ
LBBFD       .byte $07
            php
            ora #$0B
            ora L120F
            ora DSKFMS,X
            ora TRAMSZ
            .byte $07
            php
            ora #$0A
            .byte $0C
            asl L1210
            ora DSKFMS,X
            asl CMCMD
            php
            ora #$0A
            .byte $0C
            asl L1210
            ora DSKFMS,X
            asl CMCMD
            php
            ora #$0B
            ora L110F
            .byte $14
            ora DSKFMS,X
            asl CMCMD
            php
            ora #$0A
            .byte $0C
            asl L1210
            ora DSKFMS,X
            asl CMCMD
            php
            ora #$0B
            ora L120F
            ora DSKFMS,X
            .byte $FF
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            lda #$A9
            lda #$A9
            lda #$A9
            lda #$A8
            tay
            tay
            tay
            tay
            tay
            tay
            tay
            tay
            .byte $A7,$A7,$A7,$A7,$A7,$A7,$A7,$A7,$A7
            ldx L00A6
            ldx L00A6
            ldx L00A6
            ldx L00A6
            ldx L00A5
            lda L00A5
            lda L00A5
            lda L00A5
LBC7B       lda L00A5
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A3
            .byte $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
            ldx #$A2
            lda (L00A1,X)
            lda (L00A1,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            jsr L2020
            .byte $FF,$8F,$8F,$8F
            stx L8E8C+2
            sta L8D8D
            sty L8C8C
            .byte $8B,$8B,$8B
            txa
            txa
            .byte $89,$89,$89
            dey
            dey
            dey
            .byte $87,$87,$87
            stx L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bvc LBD98
            cli
            .byte $5C
            rts
            .byte $FF
            txa
            dey
            stx L0084
            .byte $82,$00
            ora L0000
            .byte $00,$00,$00,$00
LBD54       .byte $0C,$0C
            ora L0F0E
            bpl LBD6C
            .byte $12,$13,$14
            ora BUFADR+1,X
            .byte $17
            clc
            ora LFF1A,Y
            .byte $8F,$8F
            stx L8C8C+1
            .byte $8B
            txa
LBD6C       .byte $89,$8F,$8F
            stx L8C8C+1
            .byte $8B
            txa
            .byte $89,$00
LBD76       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            asl L201F,X
            and (ICCOMZ,X)
            .byte $23
            bit ICBAHZ
            rol L00FF
LBD91       ldx LACAC+1
            .byte $AB
            tax
            lda #$A8
LBD98       .byte $A7
            ldx CASINI
            .byte $02,$02,$02,$02,$02,$02,$02,$02
LBDA3       .byte $F3
            beq LBD91+2
            nop
            .byte $E7
            cpx L00E1
            dec LD8DB,X
            cmp L00D4,X
            .byte $D3,$D2
            cmp (L00D0),Y
            .byte $CF
            dec LCBCD
            dex
            iny
            dec L00C4
            .byte $C2
            cpy #$FF
LBDBE       tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
            .byte $03,$03,$03,$04,$04,$04,$04
            ora RAMLO+1
            .byte $80
            jsr L1F20
            .byte $1F
            asl L1D1E,X
            ora L1C1C,X
            .byte $1B,$1B,$1A,$1A
            ora L1819,Y
            clc
            .byte $17,$17
            asl BUFADR+1,X
            ora BUFADR,X
            .byte $14,$14,$13,$13,$12,$12
            ora (BRKKEY),Y
            bpl LBE25
LBE15       bpl LBE15+1
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
LBE25       tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $00
LBE3B       .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$02,$02,$02,$02,$02,$02,$02
            .byte $02,$02,$02,$02,$02,$02,$02
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00
LBE5F       and CHKSUM,X
            and LFF2A
LBE64       ldx L00A5
            .byte $A3
            ldx #$00
            .byte $00,$00,$00,$00,$00,$14,$13,$12
            ora (POKMSK),Y
            .byte $0F
            asl LFF0D
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $00
            ora (NGFLAG,X)
            ora (CASINI,X)
            .byte $03
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $1F
            ora L191B,X
            ora RTCLOK+1,X
            ora (APPMHI+1),Y
            .byte $1F
            ora L191B,X
            ora RTCLOK+1,X
            ora (APPMHI+1),Y
            .byte $1F
            ora L191B,X
            ora RTCLOK+1,X
            ora (APPMHI+1),Y
            .byte $1F
            ora L191B,X
            ora RTCLOK+1,X
            ora (APPMHI+1),Y
            .byte $1F
            ora L191B,X
            ora RTCLOK+1,X
            ora (APPMHI+1),Y
            .byte $1F
            ora L191B,X
            ora RTCLOK+1,X
            ora (APPMHI+1),Y
            .byte $FF
LBEBA       tay
            tay
            tay
            tay
            tay
            tay
            tay
            tay
            ldx L00A6
            ldx L00A6
            ldx L00A6
            ldx L00A6
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A4
            .byte $A3,$A3,$A3,$A3,$A3,$A3,$A3,$A3
            ldx #$A2
            ldx #$A2
            ldx #$A2
            ldx #$A2
            lda (L00A1,X)
            lda (L00A1,X)
            lda (L00A1,X)
            lda (L00A1,X)
LBEEA       ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
LBF08       ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
LBF1A       .byte $52
            lsr L484B
            eor CRITIC
            .byte $3F,$3C,$52
            lsr L4B4B
            eor CRITIC
            .byte $3F,$3C,$52
            lsr L484B
            eor CRITIC
            .byte $3F,$3C,$52
            lsr L484B
            eor CRITIC
            .byte $3F,$3C,$52
            lsr L484B
            eor CRITIC
            .byte $3F,$3C,$52
            lsr L484B
            eor CRITIC
            .byte $3F,$3C,$FF,$F3,$F3
            ldx L0088,Y
            dey
            bcc LBF08
            cmp L79A2,Y
            beq LBFD0
            rts
            .byte $FF
LBF59       lda #$A9
            lda #$A9
            lda #$A9
            lda #$A9
            lda #$A9
            ldy #$A9
            lda #$00
LBF67       asl CASINI+1,X
            .byte $07,$1F,$0F,$0F
            asl
            asl
            asl
            .byte $1F,$0F
            bpl LBF92+2
            .byte $00
            ldx #$5B
            rts
            jmp (L8079)
            dey
            .byte $FF
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $00
            bit LTEMP
            .byte $12,$0C,$0C,$0C
            rol L0000,X
            bit L2529
            .byte $22,$1F
LBF92       ora L1A1B,X
            clc
            .byte $17
            asl ICCOMT,X
            ora L1C1A,Y
            and (L00FF,X)
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L00A4
            ldy L0000
            clc
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00,$00,$00,$00,$00
            bmi LBFBE
LBFBE       .byte $00,$00,$00
            sec
            .byte $00,$00
            and STATUS,X
            rol STATUS,X
            .byte $37
            bmi LC001
            bmi LC004
            bmi LC007
            .byte $00
LBFD0       .byte $1B
            ldx L8917+2,Y
            rol L5348
            sta (STATUS,X)
            and STATUS,X
            rol STATUS,X
            .byte $37
            bmi LC016
            bmi LC019
            bmi LC01C
            bmi LC01B
            bmi LC01E
            bmi LC021
            .byte $00,$17
            iny
            ora L2E89,Y
            pha
            .byte $53
            sta (STATUS,X)
            rol STATUS,X
            .byte $37
            bmi LC031
LBFF9       rts
            .word L83AF
LBFFC       .byte $00,$04
LBFFE       .word LBFF9
;
        org $02E0
	.word L83AF 
