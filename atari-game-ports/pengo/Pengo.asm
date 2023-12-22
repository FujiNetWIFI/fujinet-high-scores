; 
            icl 'Pengo.inc'
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
	
            org $8000
;
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            tax
            .byte $82,$82,$82
            tax
            .byte $00,$00,$00,$00,$FF,$0C,$0C,$0C,$0C,$0C,$00,$00,$C3,$03,$03,$03
            .byte $03,$03,$00,$00,$03,$CF,$33,$03,$03,$03,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            bmi L8079
L8079       .byte $00,$00,$00,$00,$00,$00,$00,$00,$0C,$33,$33,$33,$33,$33,$0C,$00
            .byte $0C,$3C,$0C,$0C,$0C,$0C,$3F,$00,$0C,$33,$03,$0C
            bmi L80C7
            .byte $3F,$00,$0C,$33,$03,$0C,$03,$33,$0C,$00,$03,$0F,$33
L80A4       .byte $33,$3F,$03,$03,$00,$3F
            bmi L80EB
            .byte $33,$03,$33,$0C,$00,$0C,$33
            bmi L80F4
            .byte $33,$33,$0C,$00,$3F,$33,$03,$03,$0C,$0C,$0C,$00,$0C,$33,$33,$0C
            .byte $33,$33
L80C7       .byte $0C,$00,$0C,$33,$33,$3F,$03,$0C,$3C,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$FF,$C3,$C3,$C3,$FC,$CF,$C3,$00,$0F,$0C,$0C,$0C,$0C,$0C
            .byte $CF,$00
            cpy #$30
L80EB       bmi L811D
            bmi L811F
            cpy #$33
            .byte $33,$33,$33
L80F4       .byte $33,$33,$33,$F3,$0C
            cpy LCCCC
            .byte $3C,$3C,$0C,$0C,$FC
            cpy LCCCC
            cpy LFFCC
            .byte $FC,$00,$0C,$3F,$33,$33,$3F,$33,$33,$00,$3C,$33,$3C,$33,$33,$33
            .byte $3C,$00,$0C,$33
            bmi L814D
L811D       bmi L8152
L811F       .byte $0C,$00,$3C,$33,$33,$33,$33,$33,$3C,$00,$3F
            bmi L8168
            bmi L815E
            bmi L816F
            .byte $00,$3F
            bmi L8170
            bmi L8165+1
            bmi L8168
            .byte $00,$0F,$33
            bmi L816D
            .byte $33,$33,$0F,$00,$33,$33,$3F,$33,$33,$33,$33,$00
            bmi L817B
            bmi L817D
L814D       bmi L817F
            bmi L8151
L8151       .byte $03
L8152       .byte $03,$03,$03,$33,$33,$0C,$00,$33,$33,$33,$3C,$33
L815E       .byte $33,$33,$00
            bmi L8193
            bmi L8195
L8165       bmi L8197
            .byte $3F
L8168       .byte $00,$33,$33,$3F,$3F
L816D       .byte $33,$33
L816F       .byte $33
L8170       .byte $00,$33,$3F,$33,$33,$33,$33,$33,$00,$3C,$33
L817B       .byte $33,$33
L817D       .byte $33,$33
L817F       .byte $0F,$00,$3C,$33,$33,$33,$3C
            bmi L81B8
            .byte $00,$0C,$33,$33,$33,$33,$3C,$0F,$00,$3C,$33
L8193       .byte $33,$33
L8195       .byte $3C,$33
L8197       .byte $33,$00,$0C,$33
            bmi L81A9
            .byte $03,$33,$0C,$00,$3F,$0C,$0C,$0C,$0C,$0C,$0C,$00
L81A9       .byte $33,$33,$33,$33,$33,$33,$0C,$00,$33,$33,$33,$33,$33,$3F,$0C
L81B8       .byte $00,$33,$33,$3F,$3F,$3F,$33,$33,$00,$33,$33,$33,$0C,$33,$33,$33
            .byte $00,$33,$33,$33,$0C,$0C,$0C,$0C,$00,$3F,$03,$0C,$0C
            bmi L8207
            .byte $3F,$00,$00,$00,$22
            dey
            .byte $22
            dey
            .byte $22,$00,$00,$22
            dey
            .byte $22
            dey
            .byte $22,$00,$00,$00,$00,$00
            php
            rol
            php
            .byte $22
            dey
            .byte $22
            dey
            .byte $22
            dey
            .byte $00,$00,$00,$00
            dey
            .byte $22
            dey
            .byte $22
            dey
            .byte $00,$00
            php
            .byte $2F
            php
            .byte $22,$00,$00,$00
L8207       .byte $00
            asl
            nop
            .byte $E2
            tax
            .byte $2F,$0F
            php
            .byte $3C,$80
            ldy #$20
            ldy LCCE0
            ldy CRSINH,X
            asl
            php
            .byte $3A,$27,$33,$03,$0F
            ldy #$A8
            dey
            tax
            .byte $FA,$F3
            bmi L8266+1
            .byte $00
            asl
            rol
            plp
            .byte $23,$2B,$1A,$FA,$00
            sty LA8AC
            .byte $EB,$FB,$FC
            cpx L1505
            eor L5575,X
            eor BUFADR+1,X
            ora FREQ
            bvc L8296+1
            .byte $54
            pla
            ldy L0090
            rti
            ora DELTAC,X
            .byte $44
            eor COLCRS,X
            eor BUFRHI,X
            .byte $F3
            php
            lsr
            lsr
            pha
            sei
            pha
            php
            iny
            pha
            txa
            pha
            tya
            pha
            lda DSKFMS
            bmi L82A6
            lda #$0C
            sta COLPF2
L8266       ldy #$08
L8268       sta WSYNC
            dey
            bpl L8268
            lda FMSZPG
            and #$10
            beq L82A1
            lda RTCLOK+1
            and #$0F
            cmp #$0A
            bcs L828B
            cmp #$05
            bcs L8296
            lda #$34
            sta COLPF3
            sta COLPF1
            jmp L82A6
L828B       lda #$C8
            sta COLPF3
            sta COLPF1
            jmp L82A6
L8296       lda #$76
            sta COLPF3
            sta COLPF1
            jmp L82A6
L82A1       lda #$84
            sta COLPF1
L82A6       lda FMSZPG
            and #$08
            beq L82AF
            jmp L833F
L82AF       lda #$80
            sta CHBASE
            lda RTCLOK+1
            and #$03
            sta ICPTLZ
            lda #$C6
            sta ICBLLZ
            lda VCOUNT
            asl
            tax
            lda FMSZPG+1
            and #$03
            beq L82CF
            and #$01
            bne L8302
            beq L82DA
L82CF       inx
            stx WSYNC
            cpx #$C6
            bcc L82CF
            jmp L832A
L82DA       inx
            stx WSYNC
            cpx ICBLLZ
            bcs L832A
            lda ICPTLZ
            and #$02
            bne L82F5
            lda #$33
            sta HPOSM0
            lda #$35
            sta HPOSM1
            jmp L82DA
L82F5       lda #$32
            sta HPOSM0
            lda #$34
            sta HPOSM1
            jmp L82DA
L8302       inx
            stx WSYNC
            cpx ICBLLZ
            bcs L832A
            lda ICPTLZ
            and #$02
            bne L831D
            lda #$C9
            sta HPOSM2
            lda #$CB
            sta HPOSM3
            jmp L8302
L831D       lda #$C8
            sta HPOSM2
            lda #$CA
            sta HPOSM3
            jmp L8302
L832A       lda #$01
            sta CRITIC
            lda #$00
            sta ICAX6Z
            lda FMSZPG
            bmi L8339
            jsr LA7E9
L8339       pla
            tay
            pla
            tax
            pla
            rti
L833F       lda #$01
            jsr LA2DB
            lda #$08
            sta COLPF2
            sta COLPF1
            lda CHKSNT
            jsr LA2DB
            lda #$34
            sta COLPF2
            sta COLPF1
            lda #$01
            jsr LA2DB
            lda #$08
            sta COLPF2
            sta COLPF1
            lda #$0F
            sec
            sbc CHKSNT
            jsr LA2DB
            lda #$0C
            sta COLPF2
            lda #$84
            sta COLPF1
            jmp L832A
            pha
            txa
            pha
            tya
            pha
            lda DSKFMS
            bmi L838E
            lda #$0C
            sta COLPF2
            lda #$84
            sta COLPF1
L838E       inc ICAX6Z
            lda ICAX6Z
            cmp #$06
            bcc L8399
L8396       jmp L8339
L8399       and #$01
            beq L83AB
            lda #$80
            sta CHBASE
            lda ICAX6Z
            cmp #$05
            bcc L8396
            jmp L832A
L83AB       lda #$E0
            sta CHBASE
            lda ICAX6Z
            cmp #$05
            bcc L8396
            jmp L832A
L83B9       sei
            lda #$00
            sta DMACLT
            sta SDMCTL
            sta NMIEN
            sta ABUFPT
            sta AUDCTL
            sta SIZEM
            lda #$3F
            sta ABUFPT+1
            ldx #$3B
            tay
            jsr LA1EA
            lda #$E0
            sta VVBLKI
            lda #$86
        sta VVBLKI+1
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
            ;; lda #$9D
            ;; sta VKEYBD
            ;; lda #$86
            ;; sta VKEYBD+1
            ldx #$08
L83ED       lda LA963+1,X
            sta PCOLR0,X
            dex
            bpl L83ED
            ldx #$0E
L83F8       lda LA8E7+1,X
            sta L0600,X
            dex
            bpl L83F8
            lda #$0E
            ldx #$55
L8405       sta L060F,X
            dex
            bpl L8405
            ldx #$02
L840D       lda LA921+1,X
            sta L0664,X
            dex
            bpl L840D
            lda #$0E
            ldx #$59
L841A       sta L0667,X
            dex
            bpl L841A
            ldx #$08
L8422       lda LA918+1,X
            sta L06B1,X
            dex
            bpl L8422
            lda #$08
            sta PMBASE
            lda #$38
            sta PRIOR
            lda #$3E
            sta SDMCTL
            lda #$E0
            sta NMIEN
            lda #$40
            sta POKMSK
            sta IRQEN
            lda #$03
            sta SKCTL
            ldx #$AD
            lda #$00
L844F       sta ABUFPT,X
            dex
            bpl L844F
            ldy #$3F
            sty BUFRLO
            lda #$2C
            sta SOUNDR
            jsr LA1F7
            jsr LA454
            jsr LA46D
            jsr LA486
            jsr LA54C
            sei
            lda #$00
            sta FREQ
            sta SDMCTL
            sta GRACTL
            sta ABUFPT
            sta ICAX6Z
            tax
            jsr LA373+1
            ldx #$07
            jsr LA373+1
            lda #$25
            sta SDLSTL
            lda #$A9
            sta SDLSTH
            lda #$83
            sta VDSLST+1
            lda #$7B
            sta VDSLST
            cli
            lda #$31
            sta ABUFPT+1
            ldy #$00
            ldx #$22
            jsr LA1EA
            lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            lda #$00
            sta PACTL
            sta PORTA
            lda #$04
            sta PACTL
            lda #$09
            sta L0930
            lda #$0A
            sta L0931
            lda #$0B
            sta L0932
            ldx #$04
            lda FMSZPG
            and #$04
            beq L84D6
            ldy #$2D
            jmp L84D8
L84D6       ldy #$3B
L84D8       lda #$0D
            sta ICCOMZ
            jsr LA22C
            ldx #$18
            lda FMSZPG
            and #$03
            tay
            lda LA95D+1,Y
            tay
            lda #$0E
            sta ICCOMZ
            jsr LA22C
            ldy #$0C
L84F3       lda LAB18,Y
            sta L08DF,Y
            dey
            bpl L84F3
            lda #$00
            sta STATUS
            lda #$0F
            sta ROWCRS
            sta COLCRS
            jsr LA7DE
            lda #$13
            ldx #$00
            jsr LA8A3
            jmp L8597
            sei
            lda #$00
            sta SDLSTL
            lda #$06
            sta SDLSTH
            lda #$82
            sta VDSLST+1
            lda #$58
            sta VDSLST
            cli
            lda FMSZPG
            and #$07
            sta FMSZPG
            lda #$00
            ldx #$0B
L8533       sta L0838,X
            dex
            bpl L8533
            sta L3118
            sta L3119
            sta DSKFMS
            tax
            jsr LA373+1
            ldx #$06
            jsr LA373+1
            ldx #$07
            jsr LA373+1
            lda #$11
            sta L0801
            lda #$30
            sta L0802
            lda #$28
            sta L080E
            lda #$29
            sta L080F
            lda #$12
            sta L081D
            lda #$30
            sta L081E
            jsr LA558
            lda FMSZPG
            and #$03
            tay
            lda LA95F+2,Y
            sta COLCRS+1
            sta DINDEX
            lda #$40
            sta STATUS
            lda FMSZPG
            and #$04
            beq L858D
            ldx #$01
            stx FREQ
            jsr L8889
L858D       ldx #$00
            stx FREQ
            jsr L8889
L8594       jsr LA7DE
L8597       lda #$05
            sta ABUFPT+1
            lda #$00
            sta ABUFPT
            tay
            ldx #$02
            jsr LA1EA
            jsr LA1E0
            jsr LA39B
            jsr LA38C
            lda #$34
            sta HPOSM0
            lda #$36
            sta HPOSM1
            lda #$C8
            sta HPOSM2
            lda #$CA
            sta HPOSM3
            lda #$01
            sta FEOF
            sta FTYPE
            lda FMSZPG
            and #$07
            sta FMSZPG
            lda STATUS
            and #$40
            beq L861C
            ldx #$0F
            lda #$00
L85D8       sta DELTAC+1,X
            dex
            bpl L85D8
            jsr L8923
            jsr LA1D1
            lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            jsr L8A0D
            jsr LA314
            jsr LA339
            ldx #$06
            jsr LA373+1
            ldx #$07
            jsr LA373+1
            jsr LA23B
            ldy #$59
            ldx #$10
            lda #$04
            sta ICCOMZ
            jsr LA253
            jsr LA413
            lda #$00
            jsr LA2C4
            jsr LA427
            jsr L9D65
L861C       lda #$03
            sta GRACTL
            lda #$3E
            sta SDMCTL
            lda FMSZPG
            and #$67
            sta FMSZPG
            lda STATUS
            and #$C0
            sta STATUS
            lda #$00
            sta CRITIC
L8636       lda CRITIC
            beq L8636
            lda STATUS
            and #$40
            beq L866F
            lda FMSZPG
            and #$C0
            bne L866F
            lda FMSZPG
            and #$10
            bne L8666
            inc LMARGN
            bne L8652
            inc RMARGN
L8652       jsr L8818
            lda LMARGN
            and #$03
            bne L8669
            ldx FREQ
            jsr L9E1A
            jsr LA09C
            jmp L866C
L8666       jsr LA49F
L8669       jsr L8B19+1
L866C       jsr L9227
L866F       jsr L875C
            lda #$07
            and STATUS
            bne L867C
            lda #$38
            and STATUS
L867C       ldx #$00
            ldy #$05
            clc
L8681       lsr
            bcs L8689
            inx
            inx
            dey
            bpl L8681
L8689       lda LA8D8,X
            sta DSKUTL
            inx
            lda LA8D8,X
            sta DSKUTL+1
            lda #$C0
            and STATUS
            sta STATUS
            jmp (DSKUTL)
            txa
            pha
            tya
            pha
            lda KBCODE
            ldx #$00
            tay
            lda BUFRFL
            stx BUFRFL
            cmp #$07
            bcc L86B6
            tya
            sta ROWCRS
            lda #$00
            sta DSKFMS
L86B6       jmp L8756
            jmp L8756
            bit NMIST
            sta NMIRES
            bmi L86C9
            bvs L86E0
            jmp L86CC
L86C9       jmp (VDSLST)
L86CC       pha
            txa
            pha
            tya
            pha
            lda FMSZPG
            and #$C0
            beq L8756
            lda #$02
            ora STATUS
            sta STATUS
            jmp L8756
L86E0       inc RTCLOK+1
            bne L86E8
            inc DSKFMS
            inc RTCLOK
L86E8       nop
            nop
            nop
            nop
            lda SDLSTH
            sta DLISTH
            lda SDLSTL
            sta DLISTL
            lda SDMCTL
            sta DMACLT
            ldy DSKFMS
            bpl L8706
            ldy #$80
            sty DSKFMS
L8706       ldx #$08
L8708       lda PCOLR0,X
            cpy #$80
            bcc L8713
            eor RTCLOK
            and #$F6
L8713       sta COLPM0,X
            dex
            bpl L8708
            ldx #$07
L871B       lda L00D1,X
            beq L872F
            lda L00C0,X
            sta L00A0,X
            lda L00C1,X
            sta L00A1,X
            lda #$00
            sta L00B0,X
            sta L00B1,X
            sta L00D1,X
L872F       dex
            bpl L871B
            lda LTEMP+1
            bmi L8738
            inc LTEMP+1
L8738       lda BUFRFL
            bmi L873E
            inc BUFRFL
L873E       lda #$34
            sta HPOSM0
            lda #$36
            sta HPOSM1
            lda #$C8
            sta HPOSM2
            lda #$CA
            sta HPOSM3
            lda #$00
            sta ICAX6Z
L8756       pla
            tay
            pla
            tax
            pla
            rti
L875C       ldx FREQ
            ldy ROWCRS
            cpy #$FF
            bne L8767
            jmp L878F
L8767       lda STATUS
            and #$40
            beq L878F
            ldy #$72
            lda FMSZPG
            eor #$80
            sta FMSZPG
            bpl L8783
            ldy #$07
            lda #$00
L877B       sta AUDF1,Y
            dey
            bpl L877B
            ldy #$67
L8783       lda #$0A
            sta ICCOMZ
            ldx #$10
            jsr LA21D
            jmp L8803
L878F       lda STATUS
            and #$40
            beq L879B
            lda FMSZPG
            and #$C0
            beq L87BE
L879B       lda CONSOL
            and #$07
            cmp #$07
            bcs L87BB
            ldy #$00
            lda LTEMP+1
            sty LTEMP+1
            cmp #$08
            bcc L87BB
            lda CONSOL
            and #$01
            bne L87BE
            lda #$01
            ora STATUS
            sta STATUS
L87BB       jmp L8803
L87BE       lda STATUS
            and #$40
            bne L87FD
            lda CONSOL
            and #$02
            bne L87D4
            lda FMSZPG
            eor #$04
            sta FMSZPG
            jmp L87F4
L87D4       lda CONSOL
            and #$04
            bne L87FA
            lda FMSZPG
            and #$03
            clc
            adc #$01
            and #$03
            cmp #$03
            bcc L87EA
            lda #$00
L87EA       sta ICCOMZ
            lda FMSZPG
            and #$FC
            ora ICCOMZ
            sta FMSZPG
L87F4       lda STATUS
            ora #$02
            sta STATUS
L87FA       jmp L8803
L87FD       lda STATUS
            and #$40
            beq L8803
L8803       lda #$FF
            ldx FREQ
            sta ROWCRS
            lda SAVMSC,X
            and #$10
            bne L8810
            rts
L8810       lda SAVMSC,X
            and #$EF
            sta SAVMSC,X
            rts
L8817       rts
L8818       lda PORTA
            eor #$FF
            ldx FREQ
            bne L8826
            and #$0F
            jmp L882C
L8826       and #$F0
            lsr
            lsr
            lsr
            lsr
L882C       and #$0F
            beq L885C
            and #$07
            beq L8851
            and #$03
            beq L884A
            and #$01
            beq L8843
            lda #$FE
            sta RAMTOP,X
            jmp L8860
L8843       lda #$02
            sta RAMTOP,X
            jmp L8860
L884A       lda #$FE
            sta SAVADR,X
            jmp L8855
L8851       lda #$02
            sta SAVADR,X
L8855       lda #$00
            sta RAMTOP,X
            jmp L8864
L885C       lda #$00
            sta RAMTOP,X
L8860       lda #$00
            sta SAVADR,X
L8864       lda TRIG0,X
            and #$01
            bne L887A
            lda SAVMSC,X
            bit L8594
            bne L887A
            ora #$10
            sta SAVMSC,X
            lda #$02
            sta OLDADR,X
L887A       lda #$03
            and GRACTL
            sta GRACTL
            ora #$04
            sta GRACTL
            rts
            rts
L8889       ldx FREQ
            lda #$00
            sta L36B7,X
            sta L36B9,X
            sta L36BB,X
            lda SAVMSC,X
            and #$80
            sta SAVMSC,X
            sed
            lda L3118,X
            clc
            adc #$01
            sta L3118,X
            cld
            txa
            bne L88B5
            lda #$1C
            sta ABUFPT
            lda #$31
            sta ABUFPT+1
            jmp L88BD
L88B5       lda #$B4
            sta ABUFPT
            lda #$31
            sta ABUFPT+1
L88BD       ldy #$00
            lda #$98
            sta ICCOMZ
            lda #$00
L88C5       sta (ABUFPT),Y
            iny
            dec ICCOMZ
            bne L88C5
            ldx FREQ
            lda L3118,X
            and #$07
            tax
            asl
            tay
            lda LB9CC+1,Y
            sta ABUFPT+2
            iny
            lda LB9CC+1,Y
            sta ABUFPT+3
            lda LB9C5,X
            ldx FREQ
            sta L311A,X
            tay
            txa
            bne L8900
            lda #$5C
            sta ICHIDZ
            lda #$31
            sta ICDNOZ
            lda #$1C
            sta ICCOMZ
            lda #$31
            sta ICSTAZ
            jmp L8910
L8900       lda #$F4
            sta ICHIDZ
            lda #$31
            sta ICDNOZ
            lda #$B4
            sta ICCOMZ
            lda #$31
            sta ICSTAZ
L8910       lda (ABUFPT+2),Y
            pha
            and #$7F
            sta (ICHIDZ),Y
            pla
            and #$80
            sta (ICCOMZ),Y
            dey
            bpl L8910
            jmp L8DC5
            rts
L8923       ldx FREQ
            lda L311A,X
            sta DSTAT
            lda #$98
            sta ICBALZ
            ldy #$00
            txa
            bne L893E
            lda #$1C
            sta ICCOMZ
            lda #$31
            sta ICSTAZ
            jmp L8946
L893E       lda #$B4
            sta ICCOMZ
            lda #$31
            sta ICSTAZ
L8946       lda (ICCOMZ),Y
            sta DDEVIC,Y
            iny
            dec ICBALZ
            bne L8946
            lda L3118,X
            sta XMTDON
            sec
            sbc #$01
            and #$03
            tay
            lda LA96D,Y
            sta COLOR0
            lda #$60
            sta LTEMP
            lda #$FF
            sta BFENHI
            rts
L896A       lda #$3F
            sta ICBALZ
L896E       ldx ICBALZ
            lda DDEVIC,X
            and #$40
            bne L8981
            lda DDEVIC,X
            and #$20
            beq L89BE
            jmp L89D1
L8981       lda DDEVIC,X
            and #$0F
            tay
            lda DDEVIC,X
            and #$20
            beq L89A4
            lda IOCB5+ICBLL,X
            bpl L8996
            jmp L89C9
L8996       lda IOCB4+ICAX3,Y
            and #$33
            bne L89C9
            lda #$20
            sta IOCB4,Y
            bne L89B3
L89A4       lda IOCB4,Y
            and #$30
            sta IOCB4,Y
            lda IOCB4+ICAX3,Y
            and #$33
            bne L89C9
L89B3       lda DDEVIC,X
            and #$4F
            sta DDEVIC,X
            jmp L89DB
L89BE       lda DDEVIC,X
            and #$80
            sta DDEVIC,X
            jmp L89DB
L89C9       lda #$00
            sta IOCB4,Y
            sta IOCB4+ICAX3,Y
L89D1       lda #$FF
            sta IOCB0,X
            lda #$00
            sta DDEVIC,X
L89DB       dec ICBALZ
            bpl L896E
            lda #$98
            sta ICBALZ
            ldy #$00
            ldx FREQ
            bne L89F4
            lda #$1C
            sta ABUFPT+2
            lda #$31
            sta ABUFPT+3
            jmp L89FC
L89F4       lda #$B4
            sta ABUFPT+2
            lda #$31
            sta ABUFPT+3
L89FC       lda DDEVIC,Y
            sta (ABUFPT+2),Y
            iny
            dec ICBALZ
            bne L89FC
            lda STATUS
            ora #$10
            sta STATUS
            rts
L8A0D       lda #$00
            sta ENDPT+1
            sta DELTAR
            sta DELTAC
            ldx #$77
L8A17       sta L057C,X
            dex
            bpl L8A17
            lda #$02
            sta ICBALZ
            ldx DSTAT
L8A23       lda DDEVIC,X
            and #$40
            beq L8A4B
            lda DDEVIC,X
            and #$0F
            tay
            txa
            sta L0558,Y
            lda IOCB4,Y
            and #$10
            beq L8A48
            ldy IOCB0,X
            cpy #$FF
            beq L8A75
            txa
            ora #$80
            sta L057C,Y
L8A48       jmp L8A75
L8A4B       ldy IOCB0,X
            cpy #$FF
            beq L8A75
            txa
            ora #$80
            sta L057C,Y
            lda DDEVIC,X
            and #$80
            beq L8A6D
            lda ICBALZ
            tay
            txa
            sta COLAC,Y
            lda #$2A
            dec ICBALZ
            jmp L8A6F
L8A6D       lda #$00
L8A6F       sta L04D8,X
            jsr L8AF2
L8A75       dex
            bmi L8A7B
            jmp L8A23
L8A7B       lda #$00
            sta HOLD1
            sta ICBAHZ
            ldy #$0B
            sty ICSTAZ
L8A85       ldy ICSTAZ
            lda IOCB4,Y
            and #$F0
            beq L8AED
            ldx L0558,Y
            lda IOCB4,Y
            and #$20
            bne L8AA6
            ldy IOCB0,X
            txa
            ora #$80
            sta L057C,Y
            lda #$2C
            jmp L8ADD
L8AA6       lda IOCB4,Y
            and #$E0
            sta IOCB4,Y
            lda ICBAHZ
            asl
            asl
            sta ICCOMZ
L8AB4       ldx ICCOMZ
            lda L8B0A,X
            tax
            lda L057C,X
            beq L8AC4
            inc ICCOMZ
            jmp L8AB4
L8AC4       stx ICCOMZ
            ldx L0558,Y
            lda ICCOMZ
            sta IOCB0,X
            inc ICBAHZ
            lda IOCB4+ICAX3,Y
            and #$04
            beq L8ADB
            lda #$10
            bne L8ADD
L8ADB       lda #$0F
L8ADD       inc HOLD1
            sta L04D8,X
            txa
            pha
            tay
            jsr LA260
            pla
            tax
            jsr L8AF2
L8AED       dec ICSTAZ
            bpl L8A85
            rts
L8AF2       ldy IOCB0,X
            lda L3500,Y
            sta PRNBUF+24,X
            sta L0458,X
            lda L3578,Y
            sta L0418,X
            sta L0498,X
            jmp L9ADA
L8B0A       .byte $00
            ora (DOSINI+1,X)
            .byte $0C,$77
            ror BUFCNT,X
            ror
            .byte $0B
            asl
            asl ICCOMT,X
            jmp (L6160)
L8B19       adc L30A5
            and #$40
            bne L8B21
            rts
L8B21       inc RECVDN
            ldy RECVDN
            cpy #$10
            bcc L8B3A
            jsr LA596
            jsr LA314
            jsr L9945
            jsr LA29A
            lda #$FF
            sta RECVDN
            rts
L8B3A       lda DELTAC+1,Y
            beq L8B19+1
            bne L8B42
            rts
L8B42       and #$7F
            tax
            lda DDEVIC,X
            and #$40
            beq L8B60
            lda DDEVIC,X
            and #$0F
            tay
            lda DDEVIC,X
            and #$20
            bne L8B60
            lda IOCB4,Y
            and #$10
            beq L8B70
L8B60       lda FMSZPG
            and #$10
            bne L8B7D
            txa
            pha
            jsr L8B90
            pla
            tax
            jmp L8B7D
L8B70       lda FMSZPG
            and #$10
            bne L8B7D
            txa
            pha
            jsr L8EDA
            pla
            tax
L8B7D       jsr L9C9E
            jsr L9ADA
            lda L0418,X
            sta L0498,X
            lda PRNBUF+24,X
            sta L0458,X
            rts
L8B90       lda DDEVIC,X
            and #$40
            beq L8BA5
            lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4,Y
            sta ABUFPT
            jmp L8BAA
L8BA5       lda DDEVIC,X
            sta ABUFPT
L8BAA       lda ABUFPT
            and #$03
            bne L8BB3
            jmp L8C32
L8BB3       lda DDEVIC,X
            and #$10
            beq L8BCA
            lda IOCB5+ICBLL,X
            bpl L8BCA
            txa
            pha
            lda #$12
            ldx #$04
            jsr LA8A3
            pla
            tax
L8BCA       lda PRNBUF+24,X
            jsr LA446
            bcs L8BDB
            lda ABUFPT
            and #$01
            bne L8C1E
            jmp L8C0A
L8BDB       ldy IOCB0,X
            lda ABUFPT
            and #$01
            bne L8BF7
            lda PRNBUF+24,X
            cmp #$0A
            bcs L8BEE
            jmp L8CEA
L8BEE       dey
            lda L057C,Y
            beq L8C0A
            jmp L8CEA
L8BF7       lda PRNBUF+24,X
            cmp #$8C
            bcc L8C01
            jmp L8CEA
L8C01       iny
            lda L057C,Y
            beq L8C1E
            jmp L8CEA
L8C0A       ldy IOCB0,X
            lda #$00
            sta L057C,Y
            lda PRNBUF+24,X
            sec
            sbc #$06
            sta PRNBUF+24,X
            jmp L8CBD
L8C1E       ldy IOCB0,X
            lda #$00
            sta L057C,Y
            lda PRNBUF+24,X
            clc
            adc #$06
            sta PRNBUF+24,X
            jmp L8CBD
L8C32       lda ABUFPT
            and #$0C
            bne L8C3B
            jmp L8CEA
L8C3B       lda DDEVIC,X
            and #$10
            beq L8C52
            lda IOCB5+ICBLL,X
            bpl L8C52
            txa
            pha
            lda #$12
            ldx #$04
            jsr LA8A3
            pla
            tax
L8C52       lda L0418,X
            jsr LA438
            bcs L8C63
            lda ABUFPT
            and #$04
            bne L8CAC
            jmp L8C98
L8C63       lda ABUFPT
            and #$04
            bne L8C82
            lda L0418,X
            cmp #$B0
            bcc L8C73
            jmp L8CEA
L8C73       lda IOCB0,X
            clc
            adc #$0C
            tay
            lda L057C,Y
            beq L8C98
            jmp L8CEA
L8C82       lda L0418,X
            cmp #$22
            bcc L8CEA
            lda IOCB0,X
            sec
            sbc #$0C
            tay
            lda L057C,Y
            beq L8CAC
            jmp L8CEA
L8C98       ldy IOCB0,X
            lda #$00
            sta L057C,Y
            lda L0418,X
            clc
            adc #$08
            sta L0418,X
            jmp L8CBD
L8CAC       ldy IOCB0,X
            lda #$00
            sta L057C,Y
            lda L0418,X
            sec
            sbc #$08
            sta L0418,X
L8CBD       lda PRNBUF+24,X
            tay
            lda L35F0,Y
            sta ICCOMZ
            lda L0418,X
            sec
            sbc #$20
            lsr
            lsr
            lsr
            lsr
            tay
            lda LBBA4+1,Y
            clc
            adc ICCOMZ
            sta IOCB0,X
            tay
            txa
            ora #$80
            sta L057C,Y
            lda DDEVIC,X
            and #$EF
            sta DDEVIC,X
            rts
L8CEA       lda DDEVIC,X
            and #$80
            bne L8D62
            lda DDEVIC,X
            and #$10
            beq L8D39
            lda #$02
            sta L04D8,X
            lda DDEVIC,X
            ora #$20
            and #$EF
            sta DDEVIC,X
            lda IOCB5+ICBLL,X
            bpl L8D36
            txa
            pha
            lda #$15
            ldx #$04
            jsr LA8A3
            pla
            tax
            lda DDEVIC,X
            and #$40
            beq L8D26
            lda #$05
            sta L36CA
            jmp L8D2B
L8D26       lda #$30
            sta L36C9
L8D2B       txa
            pha
            ldx FREQ
            stx NOCKSM
            jsr LA5DB
            pla
            tax
L8D36       jmp L8D43
L8D39       lda DDEVIC,X
            and #$20
            beq L8D62
            inc L04D8,X
L8D43       lda DDEVIC,X
            and #$40
            beq L8D59
            lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4,Y
            and #$F0
            sta IOCB4,Y
            rts
L8D59       lda DDEVIC,X
            and #$E0
            sta DDEVIC,X
            rts
L8D62       lda DDEVIC,X
            and #$40
            bne L8D77
            txa
            pha
            lda #$10
            ldx #$04
            jsr LA8A3
            pla
            tax
            jmp L8D9D
L8D77       lda LTEMP
            bmi L8D7C
            rts
L8D7C       lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4,Y
            and #$20
            beq L8D8A
            rts
L8D8A       lda IOCB4,Y
            and #$F0
            sta IOCB4,Y
            lda L04D8,X
            beq L8DA5
            lda #$00
            sta L04D8,X
            rts
L8D9D       lda DDEVIC,X
            and #$E0
            sta DDEVIC,X
L8DA5       lda #$00
            sta IOCB5+ICBLL,X
            lda DDEVIC,X
            and #$80
            beq L8DBC
            lda ENDPT+1
            ora DELTAR
            ora DELTAC
            and #$04
            beq L8DBC
            rts
L8DBC       txa
            pha
            tay
            jsr LA286
            pla
            tax
            rts
L8DC5       ldx FREQ
            lda L3118,X
            cmp #$02
            bcc L8DDC
            cmp #$03
            bcc L8DD7
            ldy #$09
            jmp L8DDE
L8DD7       ldy #$07
            jmp L8DDE
L8DDC       ldy #$05
L8DDE       txa
            bne L8DF4
            lda #$1C
            sta ICCOMZ
            lda #$31
            sta ICSTAZ
            lda #$9C
            sta ABUFPT+2
            lda #$31
            sta ABUFPT+3
            jmp L8E04
L8DF4       lda #$B4
            sta ICCOMZ
            lda #$31
            sta ICSTAZ
            lda #$34
            sta ABUFPT+2
            lda #$32
            sta ABUFPT+3
L8E04       ldx FREQ
            lda L311A,X
            sta ABUFPT
            tya
            tax
L8E0D       lda RANDOM
            and #$3F
            cmp ABUFPT
            bcs L8E0D
            tay
            lda (ICCOMZ),Y
            cmp #$FF
            beq L8E0D
            and #$C0
            bne L8E0D
            txa
            ora (ICCOMZ),Y
            ora #$40
            sta (ICCOMZ),Y
            txa
            pha
            txa
            tay
            lda #$10
            sta (ABUFPT+2),Y
            pla
            tax
            dex
            bpl L8E0D
            lda #$FF
            sta BFENHI
            rts
L8E3A       .byte $03,$04,$02,$03
L8E3E       lda FMSZPG
            and #$03
            tay
            lda L8E3A,Y
            sta ICAX5Z
            ldy #$0B
            ldx #$00
            stx ICCOMZ
L8E4E       lda IOCB4,Y
            and #$20
            beq L8E56
            inx
L8E56       dey
            bpl L8E4E
            cpx ICAX5Z
            bcc L8E5E
            rts
L8E5E       ldy #$0B
            ldx #$00
            stx ICCOMZ
L8E64       lda IOCB4,Y
            and #$30
            beq L8EB1
            lda IOCB4,Y
            and #$20
            bne L8EAC
            lda IOCB4,Y
            and #$0F
            beq L8E7B
            inc ICCOMZ
L8E7B       txa
            pha
            ldx L0558,Y
            lda DDEVIC,X
            and #$30
            bne L8EA7
            lda IOCB4,Y
            ora #$20
            sta IOCB4,Y
            lda DDEVIC,X
            ora #$30
            sta DDEVIC,X
            tya
            pha
            lda #$09
            ldx #$06
            jsr LA8A3
            pla
            tay
            pla
            tax
            jmp L8EAC
L8EA7       pla
            tax
            jmp L8EB1
L8EAC       inx
            cpx ICAX5Z
            bcs L8ED9
L8EB1       dey
            bpl L8E64
            lda ICCOMZ
            beq L8EBD
            lda #$60
            sta LTEMP
            rts
L8EBD       cpx #$02
            bcs L8ED9
            cpx #$01
            bcs L8ED5
            ldx FREQ
            lda SAVMSC,X
            and #$20
            bne L8ED5
            lda #$01
            jsr LA2C4
            jmp LA788
L8ED5       lda #$60
            sta BFENHI
L8ED9       rts
L8EDA       lda DDEVIC,X
            and #$0F
            tay
            jsr L96DE
            lda IOCB4,Y
            sta ABUFPT
            bpl L8EED
            jmp L9099
L8EED       and #$40
            beq L8EF4
            jmp L905F
L8EF4       ldy FREQ
            lda SAVMSC,Y
            and #$20
            beq L8F05
            lda #$10
            sta L04D8,X
L8F02       jmp L9316
L8F05       lda ABUFPT
            and #$03
            bne L8F0E
            jmp L8FBA
L8F0E       lda PRNBUF+24,X
            jsr LA446
            bcs L8F22
            lda ABUFPT
            and #$01
            bne L8F1F
            jmp L8F6C
L8F1F       jmp L8FAE
L8F22       lda DDEVIC,X
            and #$0F
            tay
            lda L0570,Y
            bpl L8F30
            jmp L9700
L8F30       ldy IOCB0,X
            lda ABUFPT
            and #$01
            bne L8F78
            lda PRNBUF+24,X
            cmp #$0A
            bcs L8F4C
            lda FMSZPG+1
            and #$02
            beq L8F49
            jmp L903D
L8F49       jmp L9700
L8F4C       dey
            lda L057C,Y
            beq L8F6C
            and #$7F
            tay
            lda DDEVIC,Y
            and #$F0
            beq L8F5F
            jmp L9700
L8F5F       lda DDEVIC,Y
            and #$0F
            beq L8F69
            jmp L9282
L8F69       jsr L9201
L8F6C       lda PRNBUF+24,X
            sec
            sbc #$02
            sta PRNBUF+24,X
            jmp L9282
L8F78       ldy IOCB0,X
            lda PRNBUF+24,X
            cmp #$8C
            bcc L8F8E
            lda FMSZPG+1
            and #$01
            beq L8F8B
            jmp L903D
L8F8B       jmp L9700
L8F8E       iny
            lda L057C,Y
            beq L8FAE
            and #$7F
            tay
            lda DDEVIC,Y
            and #$F0
            beq L8FA1
            jmp L9700
L8FA1       lda DDEVIC,Y
            and #$0F
            beq L8FAB
            jmp L9282
L8FAB       jsr L9201
L8FAE       lda PRNBUF+24,X
            clc
            adc #$02
            sta PRNBUF+24,X
            jmp L9282
L8FBA       lda ABUFPT
            and #$0C
            bne L8FC3
            jmp L9700
L8FC3       lda L0418,X
            jsr LA438
            bcs L8FD7
            lda ABUFPT
            and #$04
            bne L8FD4
            jmp L9024
L8FD4       jmp L908D
L8FD7       lda DDEVIC,X
            and #$0F
            tay
            lda L0570,Y
            bpl L8FE5
            jmp L9700
L8FE5       lda ABUFPT
            and #$04
            bne L9030
            lda L0418,X
            cmp #$B0
            bcc L8FFE
            lda FMSZPG+1
            and #$08
            beq L8FFB
            jmp L903D
L8FFB       jmp L9700
L8FFE       lda IOCB0,X
            clc
            adc #$0C
            tay
            lda L057C,Y
            beq L9024
            and #$7F
            tay
            lda DDEVIC,Y
            and #$F0
            beq L9017
            jmp L9700
L9017       lda DDEVIC,Y
            and #$0F
            beq L9021
            jmp L9282
L9021       jsr L9201
L9024       lda L0418,X
            clc
            adc #$02
            sta L0418,X
            jmp L9282
L9030       lda L0418,X
            cmp #$22
            bcs L9065
            lda FMSZPG+1
            and #$04
            beq L9062
L903D       lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4,Y
            ora #$40
            sta IOCB4,Y
            lda #$30
            sta L0570,Y
            tya
            pha
            txa
            pha
            lda #$06
            ldx #$06
            jsr LA8A3
            pla
            tax
            pla
            tay
L905F       jmp L9282
L9062       jmp L9700
L9065       lda IOCB0,X
            sec
            sbc #$0C
            bmi L908D
            tay
            lda L057C,Y
            beq L908D
            and #$7F
            tay
            lda DDEVIC,Y
            and #$F0
            beq L9080
            jmp L9700
L9080       lda DDEVIC,Y
            and #$0F
            beq L908A
            jmp L9282
L908A       jsr L9201
L908D       lda L0418,X
            sec
            sbc #$02
            sta L0418,X
            jmp L9282
L9099       lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4+ICAX3,Y
            and #$01
            beq L90A9
            jmp L911B
L90A9       lda L0564,Y
            and #$7F
            tay
            lda IOCB0,Y
            sta IOCB0,X
            lda ABUFPT
            and #$08
            bne L90ED
            lda ABUFPT
            and #$04
            bne L9104
            lda ABUFPT
            and #$02
            bne L90DA
            ldy IOCB0,X
            iny
            jsr L9623
            bcs L911A
            lda PRNBUF+24,X
            clc
            adc #$06
            sta PRNBUF+24,X
            rts
L90DA       ldy IOCB0,X
            dey
            jsr L9623
            bcs L911A
            lda PRNBUF+24,X
            sec
            sbc #$06
            sta PRNBUF+24,X
            rts
L90ED       ldy IOCB0,X
            tya
            clc
            adc #$0C
            tay
            jsr L9623
            bcs L911A
            lda L0418,X
            clc
            adc #$08
            sta L0418,X
            rts
L9104       ldy IOCB0,X
            tya
            sec
            sbc #$0C
            tay
            jsr L9623
            bcs L911A
            lda L0418,X
            sec
            sbc #$08
            sta L0418,X
L911A       rts
L911B       lda IOCB4+ICAX3,Y
            and #$10
            beq L9125
L9122       jmp L91B1
L9125       lda IOCB4+ICAX3,Y
            and #$08
            beq L9132
            lda L0570,Y
            bmi L9122
            rts
L9132       lda #$06
            sta L0570,Y
            lda IOCB4+ICAX3,Y
            and #$20
            beq L9141
            jmp L91F3
L9141       lda L0564,Y
            sta ICCOMZ
            txa
            pha
            tya
            pha
            sta ICSTAZ
            lda #$00
            sta L0088
            ldy #$0B
L9152       cpy ICSTAZ
            beq L916F
            lda L0564,Y
            cmp ICCOMZ
            bne L916F
            inc L0088
            lda IOCB4+ICAX3,Y
            ora #$11
            sta IOCB4+ICAX3,Y
            lda #$FF
            sta L0570,Y
            sta L0564,Y
L916F       dey
            bpl L9152
            ldy L0088
            lda LB0ED,Y
            sta L04D8,X
            lda LB0F1,Y
            sta L36CA
            lda FREQ
            sta NOCKSM
            jsr LA5DB
            pla
            tay
            lda L0564,Y
            tax
            lda L0418,X
            sta ICCOMZ
            lda PRNBUF+24,X
            sta ICSTAZ
            pla
            tax
            lda ICCOMZ
            sta L0418,X
            lda ICSTAZ
            sta PRNBUF+24,X
            lda IOCB4+ICAX3,Y
            ora #$08
            sta IOCB4+ICAX3,Y
            lda #$FF
            sta L0564,Y
            rts
L91B1       lda #$00
            sta IOCB4,Y
            txa
            tay
            pha
            jsr LA286
            ldy #$0B
L91BE       ldx #$00
            lda IOCB4,Y
            and #$10
            beq L91E7
            lda L0558,Y
            sta ICCOMZ
L91CC       lda DELTAC+1,X
            beq L91D9
            and #$7F
            cmp ICCOMZ
            bne L91D9
            jmp L91E7
L91D9       inx
            cpx #$10
            bcc L91CC
            tya
            pha
            ldy ICCOMZ
            jsr LA260
            pla
            tay
L91E7       dey
            bpl L91BE
            lda LTEMP
            lda #$60
            sta LTEMP
            pla
            tax
            rts
L91F3       lda #$48
            sta L04D8,X
            lda IOCB4+ICAX3,Y
            ora #$08
            sta IOCB4+ICAX3,Y
            rts
L9201       lda DDEVIC,Y
            ora #$10
            and #$F0
            sta DDEVIC,Y
            txa
            pha
            ldx IOCB0,Y
            lda L057C,X
            and #$7F
            sta ICAX5Z
            tya
            cmp ICAX5Z
            bne L9221
            lda #$00
            sta L057C,X
L9221       jsr LA260
            pla
            tax
            rts
L9227       lda FMSZPG
            and #$D0
            beq L922E
            rts
L922E       lda BFENLO
            bmi L9237
            inc BFENLO
            jmp L923D
L9237       lda FMSZPG+1
            and #$F0
            sta FMSZPG+1
L923D       jsr L98D8
            lda LTEMP
            bmi L924B
            dec LTEMP
            bne L924B
            jsr L8E3E
L924B       ldx FREQ
            lda SAVMSC,X
            and #$20
            beq L9254
            rts
L9254       lda BFENHI
            bmi L927E
            dec BFENHI
            bne L927E
            ldy #$0B
L925E       lda IOCB4,Y
            and #$20
            beq L9277
            lda IOCB4+ICAX3,Y
            ora #$04
            sta IOCB4+ICAX3,Y
            lda #$0D
            ldx #$06
            jsr LA8A3
            jmp L927E
L9277       dey
            bpl L925E
            lda #$10
            sta LTEMP
L927E       jsr LA6DC
            rts
L9282       ldy FREQ
            lda PALNTS,Y
            sec
            sbc #$24
            sta COLRSH
            sec
            sbc #$0A
            sta ATRACT
            lda FKDEF,Y
            sec
            sbc #$2D
            sta DRKMSK
            clc
            adc #$0A
            sta TEMP
            jsr L9536
            bcc L9316
            lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4,Y
            and #$40
            bne L92ED
            ldy FREQ
            lda SAVMSC,Y
            and #$20
            bne L9316
            lda SAVMSC,Y
            ora #$20
            sta SAVMSC,Y
            lda #$24
            sta OLDROW,Y
            txa
            pha
            jsr LA7DE
            lda #$0C
            ldx #$02
            jsr LA8A3
            lda #$0B
            ldx #$00
            jsr LA8A3
            ldx FREQ
            dec COLCRS+1,X
            lda #$45
            sta ICSTAZ
            jsr LA2EA
            ldx FREQ
            inc COLCRS+1,X
            pla
            tax
            jmp L9316
L92ED       txa
            pha
            tya
            pha
            lda #$01
            sta L36CA
            lda FREQ
            sta NOCKSM
            jsr LA5DB
            pla
            tay
            pla
            tax
            lda IOCB4+ICAX3,Y
            ora #$21
            sta IOCB4+ICAX3,Y
            lda IOCB4,Y
            ora #$80
            sta IOCB4,Y
            lda #$06
            sta L0570,Y
L9316       lda PRNBUF+24,X
            tay
            lda L35F0,Y
            sta ICCOMZ
            lda L0418,X
            sec
            sbc #$20
            lsr
            lsr
            lsr
            lsr
            tay
            lda LBBA4+1,Y
            clc
            adc ICCOMZ
            sta IOCB0,X
            lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4,Y
            bpl L933F
            rts
L933F       lda IOCB4,Y
L9342       and #$0F
            beq L9356
            cmp #$01
            beq L936A
            cmp #$02
            beq L9372
            cmp #$04
            beq L937A
            cmp #$08
            beq L9382
L9356       lda #$0E
            sta L04D8,X
            lda IOCB4+ICAX3,Y
            and #$04
            beq L9367
            lda #$10
            sta L04D8,X
L9367       jmp L9387
L936A       lda #$10
            sta L04D8,X
            jmp L9387
L9372       lda #$14
            sta L04D8,X
            jmp L9387
L937A       lda #$18
            sta L04D8,X
            jmp L9387
L9382       lda #$1C
            sta L04D8,X
L9387       lda IOCB4,Y
            and #$40
            beq L93AF
            lda L0570,Y
            cmp #$10
            bcs L93A7
            cmp #$06
            bcc L939F
            lda RTCLOK+1
            and #$04
            bne L93A7
L939F       lda #$52
            sta L04D8,X
            jmp L941A
L93A7       lda #$3E
            sta L04D8,X
            jmp L941A
L93AF       lda IOCB4+ICAX3,Y
            and #$04
            beq L93BF
            lda L04D8,X
            clc
            adc #$1E
            sta L04D8,X
L93BF       lda PRNBUF+24,X
            cmp #$8C
            bcc L93CF
            lda FMSZPG+1
            and #$01
            bne L93F9
            jmp L93DC
L93CF       lda PRNBUF+24,X
            cmp #$0A
            bcs L93DC
            lda FMSZPG+1
            and #$02
            bne L93F9
L93DC       lda L0418,X
            cmp #$22
            bcs L93EC
            lda FMSZPG+1
            and #$04
            bne L93F9
            jmp L941A
L93EC       lda L0418,X
            cmp #$B0
            bcc L941A
            lda FMSZPG+1
            and #$08
            beq L941A
L93F9       lda IOCB4,Y
            ora #$40
            sta IOCB4,Y
            tya
            pha
            txa
            pha
            lda #$06
            ldx #$06
            jsr LA8A3
            pla
            tax
            pla
            tay
            lda #$3E
            sta L04D8,X
            lda #$30
            sta L0570,Y
L941A       lda RTCLOK+1
            and #$08
            bne L9426
            inc L04D8,X
            inc L04D8,X
L9426       ldy IOCB0,X
            tya
            pha
            jsr L94EB
            bcc L9433
            jmp L94E9
L9433       lda PRNBUF+24,X
            cmp #$14
            bcs L943D
            jmp L9461
L943D       pla
            pha
            tay
            dey
            jsr L94EB
            bcc L9449
            jmp L94E9
L9449       lda L0418,X
            cmp #$30
            bcs L9453
            jmp L9491
L9453       pla
            pha
            sec
            sbc #$0D
            tay
            jsr L94EB
            bcc L9461
            jmp L94E9
L9461       lda L0418,X
            cmp #$30
            bcs L946B
            jmp L9491
L946B       pla
            pha
            clc
            adc #$0C
            tay
            jsr L94EB
            bcc L9479
            jmp L94E9
L9479       lda PRNBUF+24,X
            cmp #$8C
            bcc L9483
            jmp L94BB
L9483       pla
            pha
            sec
            sbc #$0B
            tay
            jsr L94EB
            bcc L9491
            jmp L94E9
L9491       lda PRNBUF+24,X
            cmp #$8C
            bcc L949B
            jmp L94BB
L949B       pla
            pha
            tay
            iny
            jsr L94EB
            bcs L94E9
            lda L0418,X
            cmp #$A0
            bcc L94B0
            beq L94B0
            jmp L94E7
L94B0       pla
            pha
            clc
            adc #$0D
            tay
            jsr L94EB
            bcs L94E9
L94BB       lda L0418,X
            cmp #$A0
            bcc L94C7
            beq L94C7
            jmp L94E7
L94C7       pla
            pha
            clc
            adc #$0C
            tay
            jsr L94EB
            bcs L94E9
            lda PRNBUF+24,X
            cmp #$14
            bcs L94DC
            jmp L94E7
L94DC       pla
            sec
            sbc #$01
            pha
            tay
            jsr L94EB
            bcs L94E9
L94E7       pla
            rts
L94E9       pla
            rts
L94EB       lda L057C,Y
            bne L94F2
            clc
            rts
L94F2       and #$7F
            tay
            lda DDEVIC,Y
            and #$40
            beq L9510
            tya
            pha
            lda DDEVIC,Y
            and #$0F
            tay
            lda IOCB4,Y
            sta ABUFPT
            pla
            tay
            lda ABUFPT
            jmp L9515
L9510       lda DDEVIC,Y
            sta ABUFPT
L9515       and #$0F
            bne L9519
L9519       lda L0418,Y
            sta COLRSH
            sec
            sbc #$0E
            sta ATRACT
            lda PRNBUF+24,Y
            clc
            adc #$01
            sta DRKMSK
            clc
            adc #$0A
            sta TEMP
            jsr L9536
            bcs L957B
            rts
L9536       lda L0418,X
            sec
            sbc #$02
            cmp ATRACT
            bcc L9546
            cmp COLRSH
            beq L9559
            bcc L9559
L9546       lda L0418,X
            sec
            sbc #$0D
            cmp ATRACT
            bcc L9557
            cmp COLRSH
            bcs L9557
            jmp L9559
L9557       clc
            rts
L9559       lda PRNBUF+24,X
            clc
            adc #$03
            cmp DRKMSK
            bcc L9569
            cmp TEMP
            bcs L9569
            sec
            rts
L9569       lda PRNBUF+24,X
            clc
            adc #$09
            cmp DRKMSK
            bcc L9579
            cmp TEMP
            bcs L9579
            sec
            rts
L9579       clc
            rts
L957B       lda ABUFPT
            and #$01
            bne L95C7
            lda ABUFPT
            and #$02
            bne L95E4
            lda ABUFPT
            and #$04
            bne L95AA
            lda PRNBUF+24,Y
            sta PRNBUF+24,X
            lda IOCB0,Y
            sta IOCB0,X
            lda L0418,Y
            clc
            adc #$08
            sta L0418,X
            lda #$28
            sta L04D8,X
            jmp L95FE
L95AA       lda PRNBUF+24,Y
            sta PRNBUF+24,X
            lda IOCB0,Y
            sta IOCB0,X
            lda L0418,Y
            sec
            sbc #$0C
            sta L0418,X
            lda #$26
            sta L04D8,X
            jmp L95FE
L95C7       lda L0418,Y
            sta L0418,X
            lda IOCB0,Y
            sta IOCB0,X
            lda PRNBUF+24,Y
            clc
            adc #$04
            sta PRNBUF+24,X
            lda #$22
            sta L04D8,X
            jmp L95FE
L95E4       lda L0418,Y
            sta L0418,X
            lda IOCB0,Y
            sta IOCB0,X
            lda PRNBUF+24,Y
            sec
            sbc #$0C
            sta PRNBUF+24,X
            lda #$24
            sta L04D8,X
L95FE       sty ICCOMZ
            lda DDEVIC,X
            and #$0F
            tay
            lda ICCOMZ
            ora #$80
            sta L0564,Y
            lda IOCB4,Y
            and #$F0
            ora #$80
            sta IOCB4,Y
            lda ABUFPT
            and #$0F
            ora IOCB4,Y
            sta IOCB4,Y
            sec
            rts
L9623       tya
            pha
            lda DDEVIC,X
            and #$0F
            tay
            lda L0564,Y
            and #$7F
            tay
            lda DDEVIC,Y
            and #$40
            beq L964A
            lda DDEVIC,Y
            and #$0F
            tay
            lda IOCB4,Y
            and #$0F
            bne L9656
            pla
            tay
            jmp L96BA
L964A       lda DDEVIC,Y
            and #$0F
            bne L9656
            pla
            tay
            jmp L96BA
L9656       pla
            tay
            lda ABUFPT
            and #$03
            beq L967B
            lda PRNBUF+24,X
            cmp #$14
            bcc L966E
            cmp #$81
            bcs L966E
            lda L057C,Y
            bne L9698
L966E       lda PRNBUF+24,X
            cmp #$0A
            bcc L96BA
            cmp #$8C
            bcs L96BA
            clc
            rts
L967B       lda L0418,X
            cmp #$2F
            bcc L968B
            cmp #$A1
            bcs L968B
            lda L057C,Y
            bne L9698
L968B       lda L0418,X
            cmp #$B0
            bcs L96BA
            cmp #$22
            bcc L96BA
            clc
            rts
L9698       and #$7F
            tay
            lda DDEVIC,Y
            and #$40
            beq L96B1
            lda DDEVIC,Y
            and #$0F
            tay
            lda IOCB4,Y
            and #$0F
            beq L96BA
            clc
            rts
L96B1       lda DDEVIC,Y
            and #$0F
            beq L96BA
            clc
            rts
L96BA       lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4+ICAX3,Y
            ora #$01
            sta IOCB4+ICAX3,Y
            lda #$1F
            sta L0570,Y
            tya
            pha
            txa
            pha
            lda #$14
            ldx #$06
            jsr LA8A3
            pla
            tax
            pla
            tay
            sec
            rts
L96DE       lda FMSZPG
            and #$D0
            bne L96FF
            lda L0570,Y
            bmi L96F0
            sec
            sbc #$01
            sta L0570,Y
            rts
L96F0       lda IOCB4,Y
            and #$40
            beq L96FF
            lda IOCB4,Y
            and #$BF
            sta IOCB4,Y
L96FF       rts
L9700       lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4+ICAX3,Y
            and #$04
            beq L9710
            jmp L97C2
L9710       lda XMTDON
            cmp #$02
            bcs L9723
            lda RMARGN
            bne L9723
            clc
            lda BUFRHI
            adc LMARGN
            sta BUFRHI
            bcc L9756
L9723       txa
            pha
            ldx FREQ
            lda PALNTS,X
            sec
            sbc #$20
            sta ICCOMZ
            lda FKDEF,X
            sec
            sbc #$2E
            sta ICSTAZ
            pla
            tax
            lda RANDOM
            and #$01
            bne L974A
            lda PRNBUF+24,X
            cmp ICSTAZ
            beq L974A
            bcc L9767
            jmp L977B
L974A       lda L0418,X
            cmp ICCOMZ
            beq L9756
            bcc L97A3
            jmp L978F
L9756       lda RANDOM
            and #$03
            cmp #$01
            beq L978F
            cmp #$02
            beq L97A3
            cmp #$03
            beq L977B
L9767       lda IOCB4,Y
            and #$01
            bne L977B
            lda IOCB4,Y
            ora #$01
            and #$F1
            sta IOCB4,Y
            jmp L97B4
L977B       lda IOCB4,Y
            and #$02
            bne L978F
            lda IOCB4,Y
            ora #$02
            and #$F2
            sta IOCB4,Y
            jmp L97B4
L978F       lda IOCB4,Y
            and #$04
            bne L97A3
            lda IOCB4,Y
            ora #$04
            and #$F4
            sta IOCB4,Y
            jmp L97B4
L97A3       lda IOCB4,Y
            and #$08
            bne L977B
            lda IOCB4,Y
            ora #$08
            and #$F8
            sta IOCB4,Y
L97B4       lda RANDOM
            and #$0F
            sta L0570,Y
            ldx L0558,Y
            jmp L9282
L97C2       lda IOCB4,Y
            and #$0F
            bne L97CC
            jmp L9847
L97CC       and #$07
            beq L982A
            and #$03
            beq L9814
            and #$01
            beq L97F6
            lda PRNBUF+24,X
            cmp #$8C
            bcc L97E2
            jmp L9886
L97E2       tya
            pha
            lda IOCB0,X
            tay
            iny
            jsr L9A29
            pla
            tay
            bcc L97F3
            jmp L9886
L97F3       jmp L98C7
L97F6       lda PRNBUF+24,X
            cmp #$0A
            bcs L9800
            jmp L9886
L9800       tya
            pha
            lda IOCB0,X
            tay
            dey
            jsr L9A29
            pla
            tay
            bcc L9811
            jmp L9886
L9811       jmp L98C7
L9814       lda L0418,X
            cmp #$22
            bcs L981E
            jmp L9847
L981E       tya
            pha
            lda IOCB0,X
            sec
            sbc #$0C
            tay
            jmp L98C0
L982A       lda L0418,X
            cmp #$B0
            bcc L9834
            jmp L9847
L9834       tya
            pha
            lda IOCB0,X
            clc
            adc #$0C
            tay
            jsr L9A29
            pla
            tay
            bcs L9847
            jmp L98C7
L9847       lda PRNBUF+24,X
            cmp #$8C
            bcs L9883
            cmp #$08
            beq L9883
            bcc L9883
            lda PRNBUF+24,X
            cmp #$49
            bcc L986F
            lda IOCB4,Y
            and #$F0
            ora #$02
            sta IOCB4,Y
            tya
            pha
            lda IOCB0,X
            tay
            iny
            jmp L98C0
L986F       lda IOCB4,Y
            and #$F0
            ora #$01
            sta IOCB4,Y
            tya
            pha
            lda IOCB0,X
            tay
            dey
            jmp L98C0
L9883       jmp L98D5
L9886       lda L0418,X
            cmp #$20
            beq L98D5
            bcc L98D5
            cmp #$B0
            bcs L98D5
            cmp #$62
            bcc L98AD
            lda IOCB4,Y
            and #$F0
            ora #$08
            sta IOCB4,Y
            tya
            pha
            lda IOCB0,X
            clc
            adc #$0C
            tay
            jmp L98C0
L98AD       lda IOCB4,Y
            and #$F0
            ora #$04
            sta IOCB4,Y
            tya
            pha
            lda IOCB0,X
            sec
            sbc #$0C
            tay
L98C0       jsr L9A29
            pla
            tay
            bcs L98D5
L98C7       lda RANDOM
            and #$07
            sta L0570,Y
            ldx L0558,Y
            jmp L9282
L98D5       jmp LA788
L98D8       lda RTCLOK+1
            and #$01
            beq L98DF
            rts
L98DF       lda FMSZPG+1
            and #$30
            bne L98F1
            lda BFENLO
            bpl L98EA
            rts
L98EA       lda FMSZPG+1
            and #$0C
            bne L990D
            rts
L98F1       lda FMSZPG+1
            and #$14
            bne L9902
            lda FMSZPG+1
            and #$0F
            sta FMSZPG+1
            lda #$3E
            jmp L9927
L9902       lda FMSZPG+1
            and #$0F
            sta FMSZPG+1
            lda #$3B
            jmp L9936
L990D       and #$04
            bne L991C
            lda FMSZPG+1
            ora #$20
            sta FMSZPG+1
            lda #$3F
            jmp L9927
L991C       lda FMSZPG+1
            ora #$10
            sta FMSZPG+1
            lda #$3C
            jmp L9936
L9927       ldx #$01
            ldy #$25
            sty ICCOMZ
L992D       sta L08A0,X
            inx
            dec ICCOMZ
            bpl L992D
            rts
L9936       ldx #$01
            ldy #$25
            sty ICCOMZ
L993C       sta L0878,X
            inx
            dec ICCOMZ
            bpl L993C
            rts
L9945       lda STATUS
            and #$40
            bne L994C
            rts
L994C       ldx FREQ
            lda SAVMSC,X
            and #$40
            beq L9957
            jmp L99A7
L9957       ldy #$02
L9959       lda #$00
            sta ENDPT+1,Y
            ldx COLAC,Y
            lda DDEVIC,X
            and #$0F
            bne L996A
            jsr L99C8
L996A       dey
            bpl L9959
            ldx #$00
            ldy #$02
L9971       lda ENDPT+1,Y
            and #$01
            beq L9979
            inx
L9979       dey
            bpl L9971
            cpx #$03
            bcc L9983
            jmp L9A58
L9983       cpx #$01
            bcc L998A
            jmp L9A43
L998A       ldx #$00
            ldy #$02
L998E       lda ENDPT+1,Y
            and #$02
            beq L9996
            inx
L9996       dey
            bpl L998E
            cpx #$03
            bcc L99A0
            jmp L9A58
L99A0       cpx #$01
            bcc L99A7
            jmp L9A43
L99A7       ldx #$02
L99A9       lda #$00
            sta ENDPT+1,X
            ldy COLAC,X
            lda DDEVIC,Y
            and #$0F
            bne L99C4
            lda L04D8,Y
            cmp #$2A
            bne L99C4
            txa
            pha
            jsr LA286
            pla
            tax
L99C4       dex
            bpl L99A9
            rts
L99C8       tya
            pha
            lda PRNBUF+24,X
            cmp #$8C
            bcs L99DA
            ldy IOCB0,X
            iny
            jsr L9A29
            bcs L9A13
L99DA       lda PRNBUF+24,X
            cmp #$0A
            bcc L99EA
            ldy IOCB0,X
            dey
            jsr L9A29
            bcs L9A13
L99EA       lda L0418,X
            cmp #$22
            bcc L99FD
            lda IOCB0,X
            sec
            sbc #$0C
            tay
            jsr L9A29
            bcs L9A1E
L99FD       lda L0418,X
            cmp #$B0
            bcs L9A10
            lda IOCB0,X
            clc
            adc #$0C
            tay
            jsr L9A29
            bcs L9A1E
L9A10       pla
            tay
            rts
L9A13       pla
            tay
            lda ENDPT+1,Y
            ora #$01
            sta ENDPT+1,Y
            rts
L9A1E       pla
            tay
            lda ENDPT+1,Y
            ora #$02
            sta ENDPT+1,Y
            rts
L9A29       lda L057C,Y
            beq L9A41
            and #$7F
            tay
            lda DDEVIC,Y
            and #$80
            beq L9A41
            lda DDEVIC,Y
            and #$0F
            bne L9A41
            sec
            rts
L9A41       clc
            rts
L9A43       ldx #$02
L9A45       lda ENDPT+1,X
            ora #$04
            sta ENDPT+1,X
            ldy COLAC,X
            txa
            pha
            jsr LA260
            pla
            tax
            dex
            bpl L9A45
            rts
L9A58       jsr L9A43
            ldx FREQ
            lda SAVMSC,X
            ora #$40
            sta SAVMSC,X
            ldx #$02
L9A65       ldy COLAC,X
            lda PRNBUF+24,Y
            cmp #$0A
            bcc L9A90
            cmp #$8C
            bcs L9A90
            lda L0418,Y
            cmp #$22
            bcc L9A90
            cmp #$B0
            bcs L9A90
            dex
            bpl L9A65
            lda #$00
            sta L3114
            sta L3115
            lda #$01
            sta L3116
            jmp L9A9D
L9A90       lda #$00
            sta L3114
            sta L3116
            lda #$50
            sta L3115
L9A9D       lda FMSZPG
            ora #$10
            sta FMSZPG
            jsr LA3B1
            jsr LA3CF
            jsr LA3F1
            ldx #$06
            jsr LA373+1
            ldx #$04
L9AB3       lda LAA8B,X
            sta L0900,X
            dex
            bpl L9AB3
            ldx #$07
            jsr LA373+1
            ldx #$03
L9AC3       lda LAA65,X
            sta L0931,X
            dex
            bpl L9AC3
            jsr LA413
            jsr LA7DE
            lda #$0A
            ldx #$02
            jsr LA8A3
            rts
L9ADA       lda #$0F
            sta BPTR
            lda DDEVIC,X
            and #$60
            bne L9B0D
            lda DDEVIC,X
            and #$80
            beq L9B0A
            lda ENDPT+1
            ora DELTAR
            ora DELTAC
            and #$04
            beq L9B05
            lda L04D8,X
            cmp #$42
            beq L9B05
            lda #$42
            sta L04D8,X
            jmp L9BFE
L9B05       lda #$2A
            sta L04D8,X
L9B0A       jmp L9BFE
L9B0D       and #$40
            bne L9B14
            jmp L9BC2
L9B14       lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4,Y
            and #$10
            bne L9B2C
            lda IOCB4+ICAX3,Y
            and #$02
            beq L9B29
            rts
L9B29       jmp L9BFE
L9B2C       lda LTEMP
            bmi L9B4C
            lda DDEVIC,X
            and #$20
            bne L9B6D
            lda L04D8,X
            beq L9B44
            lda #$00
            sta L04D8,X
            jmp L9BFE
L9B44       lda #$2C
            sta L04D8,X
            jmp L9BFE
L9B4C       lda DDEVIC,X
            and #$20
            bne L9B6D
            lda IOCB4,Y
            and #$20
            bne L9B62
            lda #$00
            sta L04D8,X
            jmp L9BFE
L9B62       lda IOCB4,Y
            and #$EF
            sta IOCB4,Y
L9B6A       jmp L9BFE
L9B6D       lda L04D8,X
            cmp #$05
            bcc L9B6A
            lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4,Y
            and #$20
            beq L9BAF
            lda L04D8,X
            cmp #$0F
            bcc L9BFE
            lda IOCB4,Y
            and #$EF
            sta IOCB4,Y
            lda DDEVIC,X
            and #$CF
            sta DDEVIC,X
            ldy IOCB0,X
            lda L057C,Y
            sta ICCOMZ
            txa
            ora #$80
            cmp ICCOMZ
            bne L9BAC
            lda #$00
            sta L057C,Y
L9BAC       jmp L9BFE
L9BAF       lda L04D8,X
            cmp #$47
            bcs L9BC9
            cmp #$44
            bcs L9BFE
            lda #$44
            sta L04D8,X
            jmp L9BFE
L9BC2       lda L04D8,X
            cmp #$05
            bcc L9BFE
L9BC9       ldy IOCB0,X
            lda L057C,Y
            sta ICCOMZ
            txa
            ora #$80
            cmp ICCOMZ
            bne L9BDD
            lda #$00
            sta L057C,Y
L9BDD       lda DDEVIC,X
            and #$40
            beq L9BEF
            lda DDEVIC,X
            and #$0F
            tay
            lda #$00
            sta IOCB4,Y
L9BEF       lda #$FF
            sta IOCB0,X
            lda #$00
            sta DDEVIC,X
            txa
            tay
            jmp LA286
L9BFE       .byte $BC,$18
;
            org $A000
;
            .byte $44
LA001       lda #$70
            sta BFENLO
            txa
            pha
            lda #$16
            ldx #$06
            jsr LA8A3
            pla
            txa
            jmp LA077
LA013       lda ROWAC,X
            sec
            sbc #$0C
            tay
LA019       lda L057C,Y
            beq LA080
            and #$7F
            tay
            lda SAVMSC,X
            and #$10
            beq LA077
            lda DDEVIC,Y
            and #$30
            bne LA077
            lda SAVMSC,X
            and #$0C
            pha
            tya
            tax
            lda DDEVIC,Y
            and #$40
            beq LA061
            lda DDEVIC,Y
            and #$0F
            tay
            lda IOCB4,Y
            and #$20
            bne LA05D
            pla
            ora IOCB4,Y
            sta IOCB4,Y
            txa
            tay
            lda DDEVIC,Y
            ora #$10
            sta DDEVIC,Y
            jmp LA06C
LA05D       pla
            jmp LA077
LA061       txa
            tay
            pla
            ora #$10
            ora DDEVIC,Y
            sta DDEVIC,Y
LA06C       lda IOCB5+ICBLL,Y
            ora #$80
            sta IOCB5+ICBLL,Y
            jsr LA260
LA077       ldx FREQ
            lda #$00
            sta BUFSTR,X
            jmp LA088
LA080       lda #$00
            sta BITMSK,X
LA084       lda RAMTOP,X
            sta BUFSTR,X
LA088       lda PALNTS,X
            clc
            adc BUFSTR,X
            cmp #$40
            bcc LA099
            cmp #$D1
            beq LA099
            bcs LA099
            sta PALNTS,X
LA099       jmp LA0D7
LA09C       ldx FREQ
            lda FKDEF,X
            sta MLTTMP,X
            lda PALNTS,X
            sta ADRESS,X
            lda FKDEF,X
            sta HPOSP0
            sta HPOSP1
            clc
            adc #$08
            sta HPOSP2
            sta HPOSP3
            ldx FREQ
            lda FKDEF,X
            sec
            sbc #$2E
            tay
            lda L35F0,Y
            sta ICCOMZ
            lda PALNTS,X
            sec
            sbc #$40
            lsr
            lsr
            lsr
            lsr
            tay
            lda LBBA4+1,Y
            clc
            adc ICCOMZ
            sta ROWAC,X
            rts
LA0D7       ldy #$00
            ldx FREQ
            lda SAVMSC,X
            and #$01
            beq LA0E8
            ldy #$08
            lda #$00
            jmp LA10C
LA0E8       lda SAVMSC,X
            and #$02
            beq LA0F5
            ldy #$0C
            lda #$00
            jmp LA10C
LA0F5       lda SAVMSC,X
            and #$04
            beq LA102
            ldy #$04
            lda #$00
            jmp LA10C
LA102       lda SAVMSC,X
            and #$08
            beq LA10C
            ldy #$00
            lda #$00
LA10C       lda SAVMSC,X
            and #$10
            beq LA12A
            lda BITMSK,X
            ora BUFSTR,X
            bne LA120
            inc OLDADR,X
            lda OLDADR,X
            cmp #$04
            bcc LA14B
LA120       lda #$00
            sta OLDADR,X
            lda SAVMSC,X
            and #$EF
            sta SAVMSC,X
LA12A       lda SAVMSC,X
            and #$20
            beq LA13B
            ldy #$10
            lda OLDROW,X
            bmi LA13B
            dec OLDROW,X
            jmp LA141
LA13B       lda SAVADR,X
            ora RAMTOP,X
            beq LA150
LA141       lda RTCLOK+1
            and #$08
            beq LA150
            iny
            jmp LA150
LA14B       tya
            clc
            adc OLDADR,X
            tay
LA150       lda #$3F
            pha
            tya
            asl
            tay
            lda LAB24+1,Y
            pha
            iny
            lda LAB24+1,Y
            pha
            jsr LA1B9
            pla
            sta ABUFPT+3
            pla
            sta ABUFPT+2
            pla
            tay
            ldx FREQ
            lda PALNTS,X
            tax
LA16F       lda (ABUFPT+2),Y
            sta L0E00,X
            dey
            lda (ABUFPT+2),Y
            sta L0C00,X
            dey
            lda (ABUFPT+2),Y
            sta L0F00,X
            dey
            lda (ABUFPT+2),Y
            sta L0D00,X
            dex
            dey
            bpl LA16F
            rts
LA18B       ldy #$0B
LA18D       lda IOCB4,Y
            bmi LA1B5
            and #$20
            beq LA1B5
            lda IOCB4+ICAX3,Y
            and #$01
            bne LA1B5
            lda IOCB4,Y
LA1A0       ora #$40
LA1A2       sta IOCB4,Y
LA1A5       lda #$40
LA1A7       sta L0570,Y
            tya
LA1AB       pha
LA1AC       lda #$06
            ldx #$06
            jsr LA8A3
            pla
            tay
LA1B5       dey
            bpl LA18D
            rts
LA1B9       ldy #$0F
            lda ADRESS,X
            tax
LA1BE       lda #$00
LA1C0       sta L0C00,X
            sta L0D00,X
            sta L0E00,X
            sta L0F00,X
            dex
            dey
            bpl LA1C0
            rts
LA1D1       lda #$30
            sta ABUFPT+1
            lda #$00
            sta ABUFPT
            ldx #$1F
            ldy #$0F
            jmp LA1EA
LA1E0       lda #$0F
            sta ABUFPT+1
            ldy #$00
            sty ABUFPT
            ldx #$03
LA1EA       lda #$00
LA1EC       sta (ABUFPT),Y
            dey
            bne LA1EC
            dec ABUFPT+1
            dex
            bpl LA1EC
            rts
LA1F7       ldy #$FF
            ldx #$00
            lda #$10
            sta ABUFPT+2
            lda #$10
            sta ABUFPT+3
LA203       lda ABUFPT+2
            sta L3300,X
            lda ABUFPT+3
            sta L3400,X
            clc
            lda ABUFPT+2
            adc #$28
            sta ABUFPT+2
            bcc LA218
            inc ABUFPT+3
LA218       inx
            dey
            bne LA203
            rts
LA21D       lda LAA99,Y
            ora #$80
            sta L0828,X
            iny
            inx
            dec ICCOMZ
LA229       bpl LA21D
            rts
LA22C       lda LAA99,Y
            ora #$80
            sta L0850,X
            iny
            inx
            dec ICCOMZ
            bpl LA22C
            rts
LA23B       ldx FREQ
            ldy L9DA5,X
            ldx #$10
            lda #$07
            sta ICCOMZ
LA246       lda LAA99,Y
            sta L08F0,X
            iny
            inx
            dec ICCOMZ
            bpl LA246
            rts
LA253       lda LAA99,Y
            sta L0918,X
            iny
            inx
            dec ICCOMZ
            bpl LA253
            rts
LA260       ldx #$00
            sty ICCOMZ
LA264       lda DELTAC+1,X
LA266       beq LA26F
LA268       and #$7F
            cmp ICCOMZ
            bne LA26F
            rts
LA26F       inx
            cpx #$10
            bcc LA264
            ldx #$00
LA276       lda DELTAC+1,X
            beq LA280
            inx
            cpx #$10
            bcc LA276
            rts
LA280       tya
            ora #$80
            sta DELTAC+1,X
            rts
LA286       ldx #$00
            tya
            ora #$80
LA28B       cmp DELTAC+1,X
            beq LA295
            inx
            cpx #$10
            bcc LA28B
            rts
LA295       lda #$00
            sta DELTAC+1,X
            rts
LA29A       ldx #$00
            ldy #$00
LA29E       lda DELTAC+1,X
            bne LA2B9
LA2A2       lda DELTAC+1,Y
LA2A5       bne LA2AF
            iny
LA2A8       cpy #$10
LA2AA       bcs LA2C3
LA2AC       jmp LA2A2
LA2AF       lda DELTAC+1,Y
            sta DELTAC+1,X
            lda #$00
            sta DELTAC+1,Y
LA2B9       inx
            cpx #$10
            bcs LA2C3
            txa
            tay
            jmp LA29E
LA2C3       rts
LA2C4       sta ICBAHZ
LA2C6       lda #$3B
            sta ICBALZ
LA2CA       lda #$00
            sta CRITIC
LA2CE       lda CRITIC
            beq LA2CE
            dec ICBALZ
            bne LA2CA
            dec ICBAHZ
            bpl LA2C6
            rts
LA2DB       sta ICPTLZ
LA2DD       ldy #$07
LA2DF       sta WSYNC
            dey
            bpl LA2DF
            dec ICPTLZ
            bpl LA2DD
            rts
LA2EA       lda #$00
            ldx #$0A
LA2EE       sta L0829,X
            dex
            bpl LA2EE
            ldx FREQ
            lda COLCRS+1,X
            bmi LA2FC
            bne LA2FD
LA2FC       rts
LA2FD       sta ICCOMZ
LA2FF       lda ICCOMZ
            asl
            tax
            ldy ICSTAZ
            tya
            sta L0828,X
            inx
            iny
            tya
            sta L0828,X
            dec ICCOMZ
            bne LA2FF
            rts
LA314       lda #$00
            ldx #$18
LA318       sta L0834,X
            dex
            bpl LA318
            ldy #$0B
            ldx #$18
LA322       lda IOCB4,Y
            and #$10
            beq LA335
            lda #$48
            sta L0834,X
            dex
            lda #$47
            sta L0834,X
            dex
LA335       dey
            bpl LA322
            rts
LA339       ldx #$02
            lda #$49
            sta L08C8,X
            inx
            lda #$4A
            sta L08C8,X
            inx
            lda #$1B
            sta L08C8,X
            inx
            lda #$1C
            sta L08C8,X
            inx
            lda #$1D
            sta L08C8,X
            inx
            txa
            tay
            bit LA363
            lda XMTDON
            jsr LA6B5
LA363       rts
LA364       .byte $00
            php
            plp
            php
            bvc LA372
            sei
            php
            ldy #$08
            iny
            php
            beq LA37A
LA372       clc
LA373       ora #$8A
            asl
            tay
            lda LA364,Y
LA37A       sta ABUFPT+2
            iny
            lda LA364,Y
            sta ABUFPT+3
            ldy #$27
            lda #$00
LA386       sta (ABUFPT+2),Y
            dey
            bpl LA386
            rts
LA38C       lda #$5A
            ldx #$D0
LA390       sta L0B00,X
            eor #$DB
            dex
            cpx #$30
            bcs LA390
            rts
LA39B       ldx #$01
            lda #$25
            sta ICCOMZ
LA3A1       lda #$3B
            sta L0878,X
            lda #$3E
            sta L08A0,X
            inx
            dec ICCOMZ
            bpl LA3A1
            rts
LA3B1       ldx #$D0
LA3B3       ldy #$07
LA3B5       lda LA3C7,Y
            sta L0B00,X
            dex
            cpx #$30
            bcs LA3C1
            rts
LA3C1       dey
            bpl LA3B5
            jmp LA3B3
LA3C7       .byte $0F
            stx L0096,Y
            .byte $0F
            beq LA435+1
            adc #$F0
LA3CF       ldx #$01
            lda #$25
            sta ICCOMZ
            jmp LA3E8
LA3D8       lda ICBALZ
            sta L0878,X
            inx
            inc ICBALZ
            dec ICCOMZ
            bpl LA3E5
            rts
LA3E5       dey
            bpl LA3D8
LA3E8       ldy #$01
            lda #$05
            sta ICBALZ
            jmp LA3D8
LA3F1       ldx #$26
            lda #$25
            sta ICCOMZ
            jmp LA40A
LA3FA       lda ICBALZ
            sta L08A0,X
            dex
            inc ICBALZ
            dec ICCOMZ
            bpl LA407
            rts
LA407       dey
            bpl LA3FA
LA40A       ldy #$01
            lda #$07
            sta ICBALZ
            jmp LA3FA
LA413       lda #$00
            sta CRITIC
LA417       lda CRITIC
            beq LA417
            ldy #$02
LA41D       lda LA951+1,Y
            sta L064E,Y
            dey
            bpl LA41D
            rts
LA427       lda FMSZPG
            and #$40
            bne LA437
            ldy #$02
LA42F       lda #$0E
            sta L064E,Y
            dey
LA435       bpl LA42F
LA437       rts
LA438       ldy #$09
LA43A       cmp LBB9B,Y
            beq LA444
            dey
            bpl LA43A
            clc
            rts
LA444       sec
            rts
LA446       ldy #$0B
LA448       cmp L3500,Y
            beq LA452
            dey
            bpl LA448
            clc
            rts
LA452       sec
            rts
LA454       lda #$09
            sta ICCOMZ
            ldx #$00
LA45A       lda #$08
            ldy #$0B
LA45E       sta L3500,X
            clc
            adc #$0C
            inx
            dey
LA466       bpl LA45E
            dec ICCOMZ
            bpl LA45A
            rts
LA46D       lda #$09
            sta ICCOMZ
            lda #$20
            ldx #$00
LA475       ldy #$0B
LA477       sta L3578,X
            inx
            dey
            bpl LA477
            clc
            adc #$10
            dec ICCOMZ
            bpl LA475
            rts
LA486       lda #$0B
            sta ICCOMZ
            ldx #$14
            lda #$01
LA48E       ldy #$0B
LA490       sta L35F0,X
            inx
            dey
            bpl LA490
            clc
            adc #$01
            dec ICCOMZ
            bpl LA48E
            rts
LA49F       bit LA54B
            ldy #$10
            lda L3117
LA4A7       jsr LA68E
LA4AA       lda L3116
            jsr LA68E
            lda L3115
            jsr LA68E
            lda L3114
            clv
            jsr LA68E
            sed
            lda L3114
            sec
            sbc #$25
            sta L3114
            lda L3115
            sbc #$00
            sta L3115
            lda L3116
            sbc #$00
            sta L3116
            lda L3117
            sbc #$00
            sta L3117
            cld
            lda #$25
            sta L36C9
            lda #$00
            sta L36CA
            sta L36CB
            lda FREQ
            sta NOCKSM
            jsr LA5DB
            lda L3114
            bne LA531
            lda L3115
            bne LA531
            lda L3116
            bne LA531
            lda L3117
            bne LA531
            jsr LA18B
            jsr LA7DE
            lda #$0E
            ldx #$00
            jsr LA8A3
            jsr LA427
            jsr LA39B
            jsr LA38C
            ldx FREQ
            lda SAVMSC,X
            ora #$40
            sta SAVMSC,X
            lda FMSZPG
            and #$EF
            ora #$20
            sta FMSZPG
            jmp LA537
LA531       lda RTCLOK+1
            and #$08
            bne LA53C
LA537       lda #$41
            jmp LA53E
LA53C       lda #$43
LA53E       sta ICSTAZ
            ldx FREQ
            dec COLCRS+1,X
            jsr LA2EA
            ldx FREQ
            inc COLCRS+1,X
LA54B       rts
LA54C       lda #$00
            sta L36BF
            sta L36C2
            sta L36C5
            rts
LA558       ldx #$01
LA55A       lda #$00
            sta L36BD,X
            sta L36C0,X
            sta L36C3,X
            sta L36C6,X
            lda #$03
            sta L36CE,X
            lda #$00
            sta L36CC,X
            dex
            bpl LA55A
            lda #$00
            sta L36C9
            sta L36CA
            sta L36CB
            lda #$02
            sta NOCKSM
            jsr LA5DB
            lda #$00
            sta NOCKSM
            jsr LA5DB
            lda #$01
            sta NOCKSM
            jsr LA5DB
            rts
LA596       ldx #$01
LA598       lda L36BF
            cmp L36BD,X
            lda L36C2
            sbc L36C0,X
LA5A4       lda L36C5
            sbc L36C3,X
LA5AA       lda L36C8
            sbc L36C6,X
            bcs LA5CA
            lda L36BD,X
            sta L36BF
            lda L36C0,X
            sta L36C2
            lda L36C3,X
            sta L36C5
            lda L36C6,X
            sta L36C8
LA5CA       dex
            bpl LA598
            lda NOCKSM
            pha
            lda #$02
            sta NOCKSM
            jsr LA5DB
            pla
            sta NOCKSM
            rts
LA5DB       ldx NOCKSM
            sed
            lda L36BD,X
            clc
            adc L36C9
            sta L36BD,X
            lda L36C0,X
            adc L36CA
            sta L36C0,X
            lda L36C3,X
            adc L36CB
            sta L36C3,X
            lda #$00
            adc L36C6,X
            sta L36C6,X
            cld
            lda #$00
            sta L36C9
            sta L36CA
            sta L36CB
            bit LA666
            ldy LA98E,X
            lda L36C6,X
            jsr LA667
            lda L36C3,X
            jsr LA667
            lda L36C0,X
            jsr LA667
            lda L36BD,X
            clv
            jsr LA667
            cpx #$02
            bcs LA666
            lda L36CC,X
            cmp #$FF
            beq LA666
            lda L36C0,X
            cmp L36CC,X
            lda L36C3,X
            sbc L36CE,X
            bcc LA666
            lda #$FF
            sta L36CC,X
            lda COLCRS+1,X
            bmi LA666
            cmp #$06
            bcc LA659
            lda #$06
            sta COLCRS+1,X
            bne LA666
LA659       ldx FREQ
            lda #$41
            sta ICSTAZ
            jsr LA2EA
            ldx FREQ
            inc COLCRS+1,X
LA666       rts
LA667       sta ICCOMZ
            lsr
            lsr
            lsr
            lsr
            bne LA673
            bvc LA673
            beq LA677
LA673       clv
            clc
            adc #$10
LA677       sta L0800,Y
            lda ICCOMZ
            and #$0F
            bne LA684
            bvc LA684
            beq LA688
LA684       clv
            clc
            adc #$10
LA688       iny
            sta L0800,Y
            iny
            rts
LA68E       sta ICCOMZ
            lsr
            lsr
            lsr
            lsr
            bne LA69A
            bvc LA69A
            beq LA69E
LA69A       clv
            clc
            adc #$10
LA69E       sta L0918,Y
            lda ICCOMZ
            and #$0F
            bne LA6AB
LA6A7       bvc LA6AB
            beq LA6AF
LA6AB       clv
            clc
            adc #$10
LA6AF       iny
            sta L0918,Y
            iny
            rts
LA6B5       sta ICCOMZ
            lsr
            lsr
            lsr
            lsr
            bne LA6C1
            bvc LA6C1
            beq LA6C5
LA6C1       clv
            clc
            adc #$10
LA6C5       sta L08C8,Y
            lda ICCOMZ
            and #$0F
            bne LA6D2
            bvc LA6D2
            beq LA6D6
LA6D2       clv
            clc
            adc #$10
LA6D6       iny
            sta L08C8,Y
            iny
            rts
LA6DC       ldx FREQ
            sed
            lda L36B7,X
            clc
            adc #$01
            sta L36B7,X
            cmp #$60
            bcc LA70C
            lda #$00
            sta L36B7,X
            lda L36B9,X
            clc
            adc #$01
            sta L36B9,X
            cmp #$60
            bcc LA70C
            lda #$00
            sta L36B9,X
            lda L36BB,X
            clc
            adc #$01
            sta L36BB,X
LA70C       cld
            rts
LA70E       ldx #$07
            jsr LA373+1
            ldy #$18
LA715       lda LA990+1,Y
            sta L0920,Y
            dey
            bpl LA715
            ldx FREQ
            clv
            ldy #$11
            lda L36BB,X
            jsr LA68E
            ldy #$19
            lda L36B9,X
            clv
            jsr LA68E
            sed
            lda L36BB,X
            bne LA74B
            ldy #$02
LA73A       lda L36B9,X
            cmp #$20
            bcc LA74D
            sec
            sbc #$10
            sta L36B9,X
            iny
            jmp LA73A
LA74B       ldy #$07
LA74D       cld
            tya
            asl
            sta CHKSNT
            cpy #$03
            bcs LA75E
            lda #$50
            sta L36CA
            jmp LA787
LA75E       cpy #$04
            bcs LA76A
            lda #$20
            sta L36CA
            jmp LA787
LA76A       cpy #$05
            bcs LA774
            lda #$10
            sta L36CA
            rts
LA774       cpy #$06
            bcs LA77E
            lda #$05
            sta L36CA
            rts
LA77E       cpy #$07
            bcs LA787
            lda #$10
            sta L36C9
LA787       rts
LA788       txa
            pha
            jsr LA7DE
            ldx FREQ
            jsr LA1B9
            jsr LA70E
            sei
            lda #$A8
            sta SDLSTH
            lda #$E8
            sta SDLSTL
            lda FMSZPG
            ora #$08
            sta FMSZPG
LA7A6       cli
            lda #$01
            jsr LA2C4
            lda FREQ
            sta NOCKSM
            jsr LA5DB
            lda #$04
            ldx #$04
            jsr LA8A3
            jsr LA1D1
            sei
            jsr L8889
            jsr LA7DE
            lda #$06
            sta SDLSTH
            lda #$00
            sta SDLSTL
            lda FMSZPG
            and #$F7
            sta FMSZPG
            cli
            lda STATUS
            ora #$08
            sta STATUS
            pla
            tax
            rts
LA7DE       lda #$00
            ldx #$08
LA7E2       sta L00A0,X
            sta L00C0,X
            dex
            bpl LA7E2
LA7E9       ldx #$07
LA7EB       lda L00A8,X
            sta AUDF1,X
            dex
            bpl LA7EB
            ldx #$06
LA7F5       jsr LA800
            dex
            dex
            bpl LA7F5
            rts
LA7FD       jsr LA89C
LA800       lda L00A0,X
            bne LA80E
            lda L00A1,X
            bne LA80E
            sta L00A9,X
            sta AUDC1,X
            rts
LA80E       lda (L00A0,X)
            lsr
            lsr
            lsr
            lsr
            lsr
            bne LA81D
            lda (L00A0,X)
            and #$1F
            adc #$08
LA81D       tay
            lda LA8C4,Y
            pha
            lda LA8BF,Y
            pha
            lda (L00A0,X)
            and #$1F
            rts
            jsr LA89C
            and #$01
            beq LA839
            lda (L00A0,X)
            sta L00A8,X
            jmp LA7FD
LA839       lda (L00A0,X)
            sta L00A9,X
            jmp LA7FD
            jsr LA89C
            lda (L00A0,X)
            tay
            jsr LA89C
            lda (L00A0,X)
            sta ICCOMZ
            jsr LA89C
            lda L00A0,X
            sta L00B8,X
            lda L00A1,X
            sta L00B9,X
            tya
            sta L00A0,X
            lda ICCOMZ
            sta L00A1,X
            jmp LA7FD
            lda L00B8,X
            sta L00A0,X
            lda L00B9,X
            sta L00A1,X
            jmp LA7FD
            jsr LA89C
            lda (L00A0,X)
            tay
            jsr LA89C
            lda (L00A0,X)
            sta L00A1,X
            sty L00A0,X
            jmp LA800
            tay
            lda L00B0,X
            bne LA890
            lda L00B1,X
            bmi LA893
            sty L00B0,X
            lda L00B1,X
            ora #$80
            sta L00B1,X
LA890       dec L00B0,X
            rts
LA893       lda L00B1,X
            and #$7F
            sta L00B1,X
            jmp LA7FD
LA89C       inc L00A0,X
            bne LA8A2
            inc L00A1,X
LA8A2       rts
LA8A3       asl
            tay
LA8A5       lda LBBB1,Y
LA8A8       cmp L00A1,X
            bcc LA8BF
LA8AC       sta ICCOMZ
            lda LBBAE+2,Y
            cmp L00A0,X
            bcc LA8BF
            sta L00C0,X
            lda ICCOMZ
            sta L00C1,X
            lda #$FF
            sta L00D1,X
LA8BF       rts
            rol
            .byte $3F
            adc (BUFSTR,X)
LA8C4       ror LA8A8,X
            tay
            tay
            tay
            and (FREQ,X)
            jsr LA2C4+1
            and (LTEMP,X)
            ldx #$21
            jsr L80A4
            dex
            tay
LA8D8       .byte $13
            sta BUFCNT
            sty BUFCNT
            sty L00C8
            sta L00D4
            sta BUFRLO
            stx BUFRLO
            stx BUFRLO
LA8E7       stx ROWAC
            rts
            .byte $42,$00
            php
            .byte $80,$44
            plp
            php
LA8F1       .byte $44
            sei
            php
            lsr L1290
            bvs LA969
            bvs LA96B
            .byte $44
            clc
            ora #$70
            .byte $44
            lda #$A9
            bvs LA947+1
            cmp (L00A9),Y
            bvs LA94C
            sbc L70A9,Y
            .byte $44
            and (L00AA,X)
            bvs LA953+1
            eor #$AA
            bvs LA958
            adc (L00AA),Y
            bvs LA988
LA918       bvs LA95D+1
            ldy #$08
            .byte $44
            iny
            php
            eor (L0000,X)
LA921       asl DRKMSK
            .byte $00
            jsr L7070
            beq LA96E
            sei
LA92A       php
            bmi LA8F1
            clc
            ora #$47
            .byte $DC,$BF
            bcs LA979
            sei
            php
            bvs LA9A8
            bvs LA92A
            lsr TEMP
            php
            bmi LA985
            .byte $64
            php
            bvs LA9B3
            bvs LA9B4+1
            bvs LA9A6+1
LA947       beq LA98E
            sei
            php
            .byte $80
LA94C       .byte $44
            iny
            php
            eor (ICBAHZ,X)
LA951       lda #$01
LA953       eor L00A9,X
            .byte $44
            beq LA95F+1
LA958       .byte $44
            clc
            ora #$01
            rts
LA95D       asl L0000
LA95F       asl L041C
            .byte $03
LA963       ora L00C8
            rol L00C8,X
            rol LTEMP,X
LA969       rol L0000,X
LA96B       sty L0000
LA96D       plp
LA96E       pha
            .byte $1A
            pla
            .byte $00,$00,$02,$02,$02,$02,$02,$02
LA979       .byte $02,$02,$00,$00,$00,$02,$02,$02,$02,$02,$02,$02
LA985       .byte $02,$02,$02
LA988       .byte $02,$02,$02,$02,$02,$02
LA98E       .byte $03,$1F
LA990       bpl LA9B9
            and (ICAX4Z,X)
            and BFENLO
            and #$2D
            and L0000
            .byte $00,$00,$00,$00
            and L2E29
            asl.w L0000
            .byte $00,$33
LA9A6       and ICSTAZ
LA9A8       asl.w L0000
            .byte $00,$00,$00,$00,$00,$00
            rol BUFRLO
LA9B3       .byte $2F
LA9B4       and L1000
            bpl LA9B9
LA9B9       .byte $34,$2F,$00
            ora (DSKFMS+1),Y
            .byte $00
            asl L1015
            bpl LA9D4
            .byte $00
            bmi LA9FB
            .byte $33
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LA9D4       .byte $00,$00,$00,$00,$00
            rol BUFRLO
            .byte $2F
            and L1200
            bpl LA9E1
LA9E1       .byte $34,$2F,$00,$12
            ora L0E00,Y
            .byte $12
            bpl LA9FB
            bpl LA9ED
LA9ED       bmi LAA23
            .byte $33
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00
LA9FB       .byte $00,$00,$00,$00,$00,$00
            rol BUFRLO
            .byte $2F
            and L1300
            bpl LAA09
LAA09       .byte $34
LAA0A       .byte $2F,$00,$13
            ora L0E00,Y
            ora (POKMSK),Y
            bpl LAA24
            .byte $00
            bmi LAA4B
            .byte $33
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00
LAA23       .byte $00
LAA24       .byte $00,$00,$00,$00,$00
            rol BUFRLO
            .byte $2F
            and L1400
            bpl LAA31
LAA31       .byte $34,$2F,$00,$14
            ora L0E00,Y
            asl L1015
            bpl LAA3D
LAA3D       bmi LAA73
            .byte $33
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00
LAA4B       .byte $00,$00,$00,$00,$00,$00
            rol BUFRLO
            .byte $2F
            and L1500
            bpl LAA59
LAA59       .byte $34,$2F,$00
            ora DSKFMS+1,X
            .byte $00
            asl L0E0E
            ora (POKMSK),Y
            .byte $00
LAA65       bmi LAA9A+1
            .byte $33
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00
LAA73       .byte $00,$00,$00,$00,$00,$00
            asl POKMSK,X
            .byte $00
            and (ICAX5Z,X)
            bit L0000
            .byte $2F
            rol ICBAHZ,X
            .byte $32,$00,$00,$00,$00
            rol.w ICAX6Z
LAA8B       .byte $22,$2F
            rol L3335
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00
LAA99       .byte $00
LAA9A       and #$2E
            .byte $34
            and BUFRLO
            and L2425
            and #$21
            .byte $34
            and L0000
            .byte $00,$00
LAAA9       and (ICBALZ,X)
            rol ICDNOZ,X
            rol L2523
            bit L0000
            .byte $00,$00,$00,$00,$00,$00,$22
LAAB9       and ICPTHZ
            and #$2E
            rol L3225
            .byte $00,$00,$00,$00,$00,$00,$00,$34,$37,$2F,$00
            bmi LAAF8+1
            and (RECVDN,X)
            and BUFRLO
            .byte $33,$00,$00,$00,$2F
            rol.w ICBAHZ
            bmi LAB07
            and (RECVDN,X)
            and BUFRLO
            .byte $00,$00,$00
            bmi LAB10
            and (RECVDN,X)
            and BUFRLO
            .byte $00
            ora (STATUS),Y
            bit L3921
            and BUFRLO
            .byte $00,$12,$32
            and ICDNOZ
            bit RECVDN
            .byte $27
LAAF8       and (ICAX4Z,X)
            and L0000
            .byte $2F
LAAFD       rol ICBAHZ,X
            .byte $32,$00
            bmi LAB24
            and BUFRHI,X
            and L0000
LAB07       and L242F
            and L0000
            .byte $00,$00,$00,$00
LAB10       .byte $00,$00,$00,$00,$00,$00,$00,$00
LAB18       .byte $03,$04,$00
            ora (DSKFMS+1),Y
            clc
            .byte $13,$00
            and (BFENLO,X)
            and (BUFRLO,X)
LAB24       and #$C9
            .byte $AB
            ora #$AC
            cmp #$AE
            ora #$AF
            eor #$AB
            .byte $89,$AB
            eor #$AE
            .byte $89
            ldx LAC48+1
            .byte $89
            ldy LAD49
            .byte $89
            lda LACC9
            ora #$AD
            cmp #$AD
            ora #$AE
            eor #$AF
            .byte $89,$AF,$03
            cpy #$00
            .byte $00,$07
            cpx #$01
            .byte $00,$0F
            beq LAB56
            .byte $00,$0F
LAB56       beq LAB5A
            .byte $00,$0F
LAB5A       beq LAB5C
LAB5C       .byte $00,$0F
            beq LAB60
LAB60       .byte $00,$07
            cpx #$02
            .byte $00,$07
            cpx #$0A
            bpl LAB79
            beq LAB7C
            php
            .byte $0F
            beq LABA0
            .byte $0C,$0F
            beq LAB94
            .byte $04,$0F
            beq LAB78
LAB78       .byte $00
LAB79       .byte $07
            cpx #$00
LAB7C       .byte $00,$03,$80
            asl FKDEF
            .byte $00,$00
            asl.w L0000
            .byte $00
            asl DDEVIC
            cpy #$00
            .byte $00,$07
            cpx #$01
            .byte $00,$0F
            beq LAB96
LAB94       .byte $00,$0F
LAB96       beq LABBA
            .byte $04,$0F
            beq LABBC
            .byte $04,$0F
            beq LABBF+1
LABA0       .byte $04,$07
            cpx #$32
            .byte $0C,$0F
            beq LABBA
            php
            .byte $0F
            beq LABBC
            php
            .byte $0F
LABAE       beq LABB0
LABB0       .byte $00,$0F
            beq LABB4
LABB4       .byte $00,$0F
            beq LABB8
LABB8       .byte $00,$0F
LABBA       beq LABBC
LABBC       .byte $00
            ora (L00C0,X)
LABBF       asl STATUS
            .byte $00,$00,$00
            bvs LABC6
LABC6       .byte $00,$00
            bvs LABCD
            cpy #$00
            .byte $00
LABCD       .byte $07
            cpx #$00
            .byte $00,$0F
            beq LABD5+1
            rti
LABD5       ora.w L00B0
            .byte $00
            ora.w L00B0
            .byte $00
            asl L0170
            .byte $80
            asl FKDEF
            ora (LOMEM,X)
            .byte $07
            cpx #$08
            bpl LABF8+1
            beq LABFD
            dey
            .byte $0F
            beq LAC22+1
            cpy LF00F
            .byte $23
            cpy APPMHI+1
            beq LAC1A+1
LABF8       cpy #$0F
            beq LABFD
            .byte $80
LABFD       .byte $03,$80,$0C
            rts
            .byte $00,$00
            asl.w L0000
            .byte $00
            asl DDEVIC
            cpy #$00
            .byte $00,$07
            cpx #$00
            .byte $00,$0F
            beq LAC14
LAC14       .byte $00,$0F
            beq LAC3A
            .byte $44,$0C
LAC1A       bmi LAC3D
            sty APPMHI
            bvs LAC41
            sty CMCMD
LAC22       cpx #$30
            .byte $0C,$0F
            beq LAC38
            php
            .byte $0F
            beq LAC3D
            dey
            .byte $0F
            beq LAC32+1
            cpy #$0F
LAC32       beq LAC36+1
            cpy #$0F
LAC36       beq LAC3A+1
LAC38       cpy #$07
LAC3A       cpx #$01
            .byte $80
LAC3D       ora (L00C0,X)
            asl STATUS
LAC41       .byte $00,$00,$00
            bvs LAC46
LAC46       .byte $00,$00
LAC48       bvs LAC4D
            .byte $80,$00,$00
LAC4D       .byte $07
            cpy #$00
            .byte $00,$0F
            cpx #$00
            .byte $00,$0F
            cpy #$00
            clv
            .byte $0F
            jsr L1001
            .byte $07
            cpx #$00
            .byte $80,$04
            cpx #$03
            .byte $00
            ora (L00E0,X)
            asl IOCB0
            cpx #$0C
            cpy #$07
            cpx #$19
            cpy #$07
            cpx #$19
            cpy #$0F
            cpx #$01
            cpy #$07
            cpy #$01
            .byte $80,$00,$00,$03,$00,$00,$00,$03,$80,$00,$00,$00,$00,$03,$80,$00
            .byte $00,$07
            cpy #$00
            .byte $00,$0F
            cpx #$00
            .byte $80,$0F
            jsr NGFLAG
            .byte $0F
            cpy #$00
            clv
            .byte $07
            cpx #$00
            bpl LACA8
            cpx #$01
            .byte $00,$0C
            cpx #$03
LACA8       rti
            .byte $0C
            cpx #$03
            cpy #$0C
            cpx #$03
            cpy #$0C
            cpx #$03
            cpy #$0C
            cpx #$03
            cpy #$05
            cpy #$12
            bcc LACC0+1
            .byte $80
            clc
LACC0       bmi LACC2
LACC2       .byte $00,$0C
            rts
            .byte $00,$00,$00,$00
LACC9       ora (L00C0,X)
            .byte $00,$00,$03
            cpx #$00
            .byte $00,$07
            beq LACD4
LACD4       .byte $00,$03
            beq LACF5
            .byte $00,$04
            beq LACE2+2
            .byte $80,$07
            cpx #$01
            .byte $00,$07
LACE2       jsr LC000
            .byte $07,$80,$02
            bvs LACF1
            cpy #$03
            bmi LACF5
            cpx #$03
            tya
LACF1       .byte $07
            cpx #$03
            tya
LACF5       .byte $07
            beq LACFA+1
            .byte $80,$03
LACFA       cpx #$01
            .byte $80,$00,$00,$00
            cpy #$00
            .byte $00
            ora (L00C0,X)
            .byte $00,$00,$00,$00
            ora (L00C0,X)
            .byte $00,$00,$03
            cpx #$00
            .byte $00,$07
            beq LAD15
            .byte $00
LAD15       .byte $04
            beq LAD18
LAD18       .byte $80,$03
            beq LAD38+1
            .byte $00,$07
            cpx #$08
            .byte $00,$07
            rts
            .byte $00,$80,$07
            bmi LAD2A
            cpy #$07
LAD2A       bmi LAD2E+1
            cpy #$07
LAD2E       bmi LAD32+1
            cpy #$07
LAD32       bmi LAD36+1
            cpy #$07
LAD36       bmi LAD3A+1
LAD38       cpy #$03
LAD3A       ldy #$09
            pha
            ora (L00C0,X)
            .byte $0C
            clc
            .byte $00,$00
            asl STATUS
            .byte $00,$00,$00,$00
LAD49       .byte $00
            bvs LAD4C
LAD4C       .byte $00,$00,$FB,$00,$00
            ora (L00FC,X)
            .byte $00,$00
            ora (L00F0,X)
            .byte $00,$17
            ora (L00E4,X)
            .byte $00,$22,$00,$FC,$00
            bpl LAD63
            sed
LAD63       .byte $00,$00,$03
            cld
            .byte $00
            jsr LC807
            .byte $00
            bmi LAD71
            cpx #$00
            sec
LAD71       .byte $03
            beq LAD74
LAD74       .byte $7C
            ora (L00F8,X)
            .byte $00
            ror L0000,X
            beq LAD83
            .byte $22,$00,$00,$03
            rts
            .byte $00,$00
LAD83       ora (L00B0,X)
            .byte $00,$00,$00,$00,$00
            bvs LAD8C
LAD8C       .byte $00,$00
            sed
            .byte $00,$00
            ora (L00F0,X)
            .byte $00,$17
            ora (L00E4,X)
            .byte $00,$22
            ora (L00FC,X)
            .byte $00
            bpl LAD9E
LAD9E       .byte $FC,$00,$00
            ora L00F8
            .byte $00
            ora (CMCMD,X)
            cpy #$00
            .byte $37,$03
            cpx #$00
            rol LF003,X
            .byte $00,$3C,$03
            sed
            .byte $00
            bvs LADB7
            sed
LADB7       .byte $0C
            bvs LADBA+1
LADBA       beq LADC2
            jsr LC001
            asl ICHIDZ
            .byte $00
LADC2       .byte $00,$03,$00,$00,$00,$00,$00,$00,$00,$00,$00
            asl.w LOMEM
            .byte $00,$1F,$80,$00,$00,$3F,$80
            inx
            .byte $00,$0F,$00,$44,$00,$27,$80
            php
            .byte $00,$3F
            cpy #$00
            .byte $00,$1F
            cpx #$04
            .byte $00,$1B
            cpy #$0C
            .byte $00,$13
            cpy #$1C
            .byte $00,$07,$80
            rol L0F00,X
            .byte $00
            ror L1F00
            .byte $00,$44
            cpx #$0F
            .byte $00
            asl L00C0
            .byte $00,$00
            ora.w LOMEM
            .byte $00,$00,$00
            asl.w L0000
            .byte $00,$1F,$00,$00,$00,$0F,$80
            inx
            .byte $00,$27,$80,$44,$00,$3F,$80
            php
            .byte $00,$3F,$00,$00,$00,$1F
            ldy #$80
            .byte $00,$03
            cpx #$EC
            .byte $00,$07
            cpy #$7C
            .byte $00,$0F
            cpy #$3C
            .byte $00,$1F
            cpy #$0E
            .byte $00,$1F,$80
            asl L0F30
            .byte $80,$04
            rts
            .byte $03,$80,$04
            rts
            .byte $00,$00,$00
            cpy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$03
            cpy #$00
            .byte $00,$07
            cpx #$01
            .byte $00,$0F
            beq LAE5A
            .byte $00,$0F
LAE5A       beq LAE6E
            php
            .byte $0F
            beq LAE70
            php
            .byte $0F
            beq LAE74
            php
            .byte $07
            cpx #$12
            php
            .byte $0F
            beq LAE7E
            php
            .byte $0F
LAE6E       beq LAE70
LAE70       .byte $00,$1F
            sed
            .byte $00
LAE74       .byte $00,$1F
            sed
            .byte $00,$00,$1F
            sed
            .byte $00,$00,$0F
LAE7E       beq LAE80
LAE80       .byte $00,$07
            cpx #$00
            .byte $00,$00,$00,$00,$00,$1F
            sed
            ora (L0000,X)
            .byte $0F
            beq LAE92
            .byte $00,$0F
LAE92       beq LAE96
            .byte $00,$0F
LAE96       beq LAE98
LAE98       .byte $00,$07
            cpx #$00
            .byte $00,$07
            cpx #$02
            .byte $00,$03
            cpy #$0A
            bpl LAEAD
            cpx #$18
            clc
            .byte $0F
            beq LAEBB+1
            php
LAEAD       .byte $0F
            beq LAEBF+1
            php
            .byte $0F
            beq LAEC3+1
            php
            .byte $07
            cpx #$10
            php
            ora (LOMEM,X)
LAEBB       asl.w ROWAC
            .byte $00
LAEBF       asl.w ROWAC
            .byte $00
LAEC3       asl.w ROWAC
            .byte $00,$00,$00,$03
            cpy #$00
            .byte $00,$07
            cpx #$00
            .byte $00,$0F
            beq LAEE6
            pha
            ora L10B0
            php
            ora L10B0
            php
            asl L1170
            dey
            asl FKDEF
            ora (L0088),Y
            .byte $07
LAEE6       cpx #$18
            clc
            .byte $0F
            beq LAEED
            .byte $80
LAEED       .byte $0F
            beq LAEF2+1
            cpy #$0F
LAEF2       beq LAEF6+1
            cpy #$0F
LAEF6       beq LAEFA+1
            cpy #$07
LAEFA       cpx #$01
            .byte $80
            ora (LOMEM,X)
            asl.w FKDEF
            .byte $00
            asl.w L0000
            .byte $00
            asl DDEVIC
            cpy #$00
            .byte $00,$07
            cpx #$00
            .byte $00,$0F
            beq LAF14
LAF14       .byte $00,$0F
            beq LAF1A
            rti
            .byte $0C
LAF1A       bmi LAF1D
            .byte $80
LAF1D       asl L0170
LAF20       .byte $80,$07
            cpx #$00
            .byte $00,$0F
            beq LAF38
            php
            .byte $0F
            beq LAF3D
            dey
            .byte $0F
            beq LAF62+1
            cpy LF00F
            .byte $23
            cpy APPMHI+1
            beq LAF5B
LAF38       cpy CMCMD
            cpx #$01
            .byte $80
LAF3D       ora (L00C0,X)
            asl STATUS
            .byte $00,$00,$00
            bvs LAF46
LAF46       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (L0000,X)
            ora (L0000),Y
            ora L0000,X
            .byte $00,$80
            asl LOMEM
            asl
            .byte $00
LAF5B       .byte $04,$00,$1B
            cpx #$00
            cpx #$3B
LAF62       beq LAF6E
            beq LAFA4+1
            beq LAF6C
            .byte $F4,$3F
            beq LAF6C
LAF6C       .byte $74,$3F
LAF6E       beq LAF70
LAF70       .byte $34,$3F
            cpx #$00
            .byte $3C,$3B
            beq LAF7C
            .byte $0C,$13
            cpx #$0C
LAF7C       .byte $04,$00
            cpy #$07
            .byte $00,$00,$00,$03,$80,$00,$00,$00,$00
            and (L0000,X)
            and (L0000,X)
            .byte $00,$00
            php
            .byte $00,$00
            rti
            php
            rti
            .byte $00,$00,$0C,$00
            asl L0000,X
            php
            bpl LAFD5
            cpy #$00
            cld
            .byte $37
            cpx #$14
LAFA4       cpx LF03F
            php
            .byte $F4,$3F
            beq LAFAC
LAFAC       bvs LAFEC+1
            beq LAFB0
LAFB0       bmi LAFF1
            cpx #$00
            bmi LAFF1+2
            beq LAFBA
            .byte $04
            clc
LAFBA       beq LAFC3
            .byte $0C
            ora #$C0
            asl DOSINI
            .byte $00,$00
LAFC3       .byte $1C
            clc
            .byte $00,$00,$00,$00,$00,$00
            ora (L0000,X)
            .byte $04
            rti
            ora FREQ
            .byte $00
            jsr LA001
LAFD5       .byte $02,$80
            ora (L0000,X)
            asl L00F8
            .byte $00
            sec
            asl CH
            ldy LFC0F,X
            ora (BPTR,X)
            .byte $0F,$FC,$00
            ora LFC0F,X
            .byte $00
LAFEC       ora LF80F
            .byte $00,$0F
LAFF1       asl L01FC
            .byte $03,$04
            sed
            .byte $03
            ora (L0000,X)
            bmi LAFFC+1
LAFFC       cpy #$00
            .byte $00,$00
            cpx #$00
            .byte $00,$00,$00,$00,$00,$02,$00,$00
            bpl LB00E
            bpl LB00E
LB00E       .byte $00,$03,$00
            ora LOMEM
            .byte $02,$04
            ora.w L00F0
            rol DOSINI+1,X
            sed
            ora CHKSNT
            .byte $0F,$FC,$02
            and LFC0F,X
            .byte $00,$1C,$0F,$FC,$00,$0C,$0F
            sed
            .byte $00,$0C,$0F,$7C,$00
            sta (TRAMSZ,X)
            .byte $3C
            ora (L00C3,X)
            .byte $02
            bvs LB039
            .byte $83
LB039       .byte $00,$00,$07
            asl L0000
            .byte $00,$00,$00
LB041       sbc L00B0,X
            sbc L00B0,X
            and L00B1
            eor L00B1,X
            sta L00B1
            lda L00B1,X
            cmp L00B3
            sbc L00B3,X
            and L00B4
            eor L00B4,X
            sta L00B4
            lda L00B4,X
            sbc L00B4
            ora L00B5,X
            sbc L00B4
            ora L00B5,X
            eor L00B2
            eor L00B2
            adc L00B2,X
            adc L00B2,X
            lda L00B2
            lda L00B2
            cmp L00B2,X
            cmp L00B2,X
            ora L00B3
            ora L00B3
            and L00B3,X
            and L00B3,X
            adc L00B3
            adc L00B3
            sta L00B3,X
            sta L00B3,X
            eor L00B5
            eor L00B5
            and L00B6,X
            and L00B6,X
            ora L00B6
            ora L00B6
            adc L00B6
            adc L00B6
            sta L00B6,X
            sta L00B6,X
            sbc L00B1
            sbc L00B1
            sta L00B9,X
            sta L00B9,X
            cmp L00B6
            cmp L00B6
            sbc L00B6,X
            sbc L00B6,X
            sbc L00B7
            sbc L00B7
            ora L00B8,X
            ora L00B8,X
            sta L00B7
            sta L00B7
            lda L00B7,X
            lda L00B7,X
            and L00B7
            and L00B7
            eor L00B7,X
            eor L00B7,X
            eor L00B5
            eor L00B5
            adc L00B5,X
            adc L00B5,X
            ora L00B2,X
            ora L00B2,X
            eor L00B8
            eor L00B8
            cmp L00B8,X
            cmp L00B8,X
            adc L00B8,X
            adc L00B8,X
            lda L00B8
            lda L00B8
            ora L00B9
            ora L00B9
            and L00B9,X
            and L00B9,X
            adc L00B9
            adc L00B9
            lda L00B5
            lda L00B5
            cmp L00B5,X
            cmp L00B5,X
LB0ED       lsr
            jmp L504E
LB0F1       .byte $04
            asl BUFRLO,X
            .byte $64
            rol
            tax
            ldy #$AF
            .byte $AB
            tay
            tsx
            tax
            inx
            tsx
            tax
            cpx LAAB9+1
            ldy LAAB9+1
            ldy LAAA9+1
            ldy LAAA9+1
            ldy LAAA9+1
            ldy LAAA9+1
            ldy LAAB9+1
            ldy LAAB9+1
            cpx LABAE
            ldy LAAA9+1
            ldy LFF2B
            beq LB123
LB123       .byte $00,$00,$3F,$FF
            beq LB168
            .byte $CF
            cpy LCF3F
            cpy LCFCF
            .byte $3C
LB131       .byte $FC,$0C
            beq LB131
            .byte $3F
            cpy L03FE
            .byte $3C,$FC
            bmi LB13D
LB13D       cpy #$03
            .byte $3C,$FC
            bmi LB14F
            .byte $FC,$03,$3C,$F3,$0F
            cpy L3FCF
            beq LB18C
            .byte $3F,$FC
LB14F       .byte $3C,$FF,$FC,$00,$00,$00
LB155       .byte $00
            beq LB188
            .byte $33
            cpy #$C0
            .byte $3F,$0F
            bmi LB16D+1
            .byte $0F
            bmi LB165
            .byte $00
            beq LB155
LB165       .byte $0C,$00,$3C
LB168       .byte $03,$0C
            bmi LB19C
            .byte $00
LB16D       cpy #$03
            .byte $03
            bmi LB1A1+1
            .byte $03
            beq LB178
            .byte $3C
            bmi LB187
LB178       .byte $0C
            cpy #$0F
            cpy #$3F
            .byte $0C,$FC,$3C,$3F,$3C,$00,$00,$00,$00,$00
LB187       .byte $00
LB188       .byte $00,$00,$00,$00
LB18C       .byte $00,$00,$0F,$0F,$00,$03,$00
            bmi LB195
LB195       .byte $00,$00
            bmi LB199
LB199       .byte $00
            bmi LB1CC
LB19C       .byte $00,$00,$03,$00,$00
LB1A1       bmi LB1A3
LB1A3       bmi LB1A5
LB1A5       .byte $00
            bmi LB1A8
LB1A8       .byte $0C,$00,$00
            cpy #$3F
            .byte $0C
            beq LB1B0
LB1B0       .byte $33
            bmi LB1B3
LB1B3       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
LB1CC       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $03,$0C
            bmi LB1E0
LB1E0       .byte $33
            bmi LB1E3
LB1E3       .byte $00,$00,$3F,$EF
LB1E7       beq LB1E7+1
            .byte $EF,$FC,$FF,$AB,$FC
            inc LFCAA,X
            inc LFCAA,X
            .byte $FB,$FF
            ldy LFFEB,X
            ldy LFFAB
            tay
            .byte $EB,$FF
            ldy LFFFB
            ldy LAAFD+1,X
            .byte $FC
            inc LFCAA,X
            .byte $FF,$AB,$FC,$FF,$EF,$FC,$3F,$EF
            beq LB213
LB213       .byte $00,$00,$3F,$FF
LB217       beq LB217+1
            .byte $FF,$FC,$FF,$FF,$FC,$FF,$FF,$FC,$FF,$FF,$FC,$FF
            eor L00FC,X
            .byte $FF
            eor L00FC,X
            .byte $FF
            eor L00FC,X
            .byte $FF
            eor L00FC,X
            .byte $FF
            eor L00FC,X
            .byte $FF,$FF,$FC,$FF,$FF,$FC,$FF,$FF,$FC,$FF,$FF,$FC,$3F,$FF
            beq LB243
LB243       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (ROWCRS,X)
            .byte $00
            ora COLCRS
            .byte $00
            ora FKDEF+1,X
            .byte $80
            ora FKDEF+1,X
            .byte $00
            ora SAVMSC+1,X
            .byte $00
            ora COLCRS,X
            .byte $00
            ora COLCRS,X
            ldy #$15
            adc L00A0
            ora RAMTOP,X
            ldy #$05
            .byte $5A,$00
            ora (ROWCRS,X)
            .byte $00,$00,$00,$00,$00,$00,$00
            ora (TEMP,X)
            .byte $00
            ora ROWCRS
            .byte $00
            ora COLCRS,X
            .byte $00
            ora FKDEF+1,X
            rts
            eor FKDEF+1,X
            rti
            eor SAVADR+1,X
            .byte $42
            eor COLCRS,X
            lsr
            eor RAMTOP,X
            tax
            eor L00AA,X
            tax
            eor COLCRS,X
            lsr
            eor COLCRS,X
            lsr
            eor COLCRS,X
            .byte $42
            ora COLCRS,X
            rti
            ora COLCRS
            .byte $00
            ora (ROWCRS,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora FREQ,X
            .byte $00
            eor TEMP,X
            .byte $02
LB2B5       eor #$54
            .byte $00
            eor #$54
            .byte $00
            adc ROWCRS
            .byte $00
            eor ROWCRS,X
            asl
            eor ROWCRS,X
            asl
            eor L0A54,Y
            lda #$54
            .byte $00
            lda TEMP
            .byte $00
            ora FREQ,X
            .byte $00,$00,$00,$00,$00,$00,$00
            ora FREQ
            .byte $00
            ora TEMP,X
            .byte $00
            eor ROWCRS,X
            ora #$49
            .byte $54
            ora (FMSZPG+6,X)
            eor LOMEM+1,X
            adc #$55
            lda (COLCRS,X)
            eor L00AA,X
            ldx COLCRS
            tax
            tax
            eor L00A1,X
            eor COLCRS,X
            lda (COLCRS,X)
            eor LOMEM+1,X
            eor COLCRS,X
            ora (COLCRS,X)
            .byte $54,$00
            eor TEMP,X
            .byte $00
            ora FREQ,X
            .byte $00,$00,$00,$00,$02
            tay
            .byte $00,$02
            tay
            .byte $00
            bpl LB2B5+1
            ora (COLCRS,X)
            ldy #$05
            eor L00A0,X
            ora L6855,Y
            and #$65
            pla
            and #$55
            .byte $54
            and #$95
            .byte $54
            and L0095
            .byte $54
            and COLCRS
            .byte $54
            ora COLCRS
            .byte $54
            ora (COLCRS,X)
            bvc LB32D
LB32D       eor TEMP,X
            .byte $00
            ora FREQ,X
            .byte $00,$00,$00
            rol
            .byte $80,$00
            rol
            .byte $80,$00
            rol
            .byte $04,$00
            asl
            eor FREQ,X
            asl
            eor TEMP,X
            and #$55
            .byte $64
            and #$95
            pla
            ora COLCRS,X
            pla
            asl COLCRS,X
            pla
            asl COLCRS,X
            cli
            ora COLCRS,X
            cli
            ora COLCRS,X
            bvc LB35F
            eor FREQ,X
            ora COLCRS
            .byte $00
LB35F       ora (ROWCRS,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$54,$00
            ora COLCRS
            rti
            ora COLCRS,X
            rti
            ora COLCRS,X
            bvc LB38A+1
            eor L1450,Y
            eor (SAVMSC),Y
            .byte $14
            bpl LB3E5
            ora ADRESS+1,X
            pla
            and #$65
            pla
            and #$55
            .byte $64
            asl
            eor ROWCRS,X
            asl
LB38A       eor TEMP,X
            rol
            ora FREQ,X
            rol
            .byte $80,$00
            rol
            .byte $80,$00,$00,$00,$00,$00
            ora L0000,X
            ora (COLCRS,X)
            bvc LB39F+1
LB39F       eor ROWCRS,X
            ora COLCRS
            .byte $54
            ora ADRESS+1
            sty ICBAHZ,X
            eor RTCLOK+2
            and #$04
            .byte $14
            and #$59
            .byte $54
            and #$59
            pla
            ora L6855,Y
            ora COLCRS,X
            ldy #$05
            eor L00A0,X
            ora (ROWCRS,X)
            tay
            .byte $00,$02
            tay
            .byte $00,$02
            tay
            .byte $00,$54,$00
            ora COLCRS
            rti
            ora COLCRS
            rti
            ora COLCRS,X
            bvc LB3E7
            eor TEMP,X
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            ora COLCRS,X
LB3E5       bvc LB3FB+1
LB3E7       eor TEMP,X
            ora COLCRS
            rti
            ora COLCRS
            rti
            .byte $00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$54,$00
LB3FB       ora (COLCRS,X)
            .byte $00
            ora L00A9
            rti
            asl L00AA
            rti
            asl L00AA,X
            bvc LB422
            tax
            bcc LB425
            tax
            bcc LB424
            tax
            bvc LB427
            tax
            bvc LB419
            lda #$40
            ora COLCRS
            rti
LB419       ora (COLCRS,X)
            .byte $00,$00,$54,$00,$00,$00,$00
LB422       .byte $00,$00
LB424       .byte $00
LB425       .byte $00,$00
LB427       .byte $00,$00,$00,$00,$00,$00,$00,$00,$54,$00
            ora (COLCRS,X)
            .byte $00
            ora (COLCRS,X)
            .byte $00
            ora COLCRS
            rti
            ora L0095
            rti
            ora (L00A5,X)
            .byte $00
            ora (COLCRS,X)
            .byte $00,$00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            tay
            .byte $00,$02
            tax
            .byte $00,$02
            tax
            .byte $00
            asl
            tax
            .byte $80
            asl
            ror
            .byte $80,$02,$5A,$00,$02
            tax
            .byte $00,$00
            tay
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$54,$00
            ora (COLCRS,X)
            .byte $00
            ora COLCRS
            rti
            ora COLCRS
            rti
            ora COLCRS
            rti
            ora L0095
            rti
            ora L00A5
            rti
            ora COLCRS
            rti
            ora (COLCRS,X)
            .byte $00,$00,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$54,$00
            ora (COLCRS,X)
            .byte $00
            ora COLCRS
            rti
            ora COLCRS,X
            bvc LB4D9+1
            sta L1550,Y
            ora (TEMP),Y
            .byte $14
            bpl LB51D
            ora ADRESS+1,X
            bvc LB4E6
            adc TEMP
            ora COLCRS,X
            bvc LB4DC
            eor FREQ,X
LB4D9       ora (COLCRS,X)
            .byte $00
LB4DC       .byte $00,$54,$00,$00,$00,$00,$00,$00,$00,$00
LB4E6       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$54,$00
            ora COLCRS
            .byte $00
            ora COLCRS
            rti
            ora COLCRS+1,X
            bvc LB513
            .byte $54
            cli
            eor TEMP,X
            cli
            eor COLCRS,X
            bvc LB55C
            eor TEMP,X
            eor COLCRS,X
            bvc LB521+1
            eor TEMP,X
            ora COLCRS
            rti
            .byte $00
LB513       .byte $00,$00,$00,$54,$00
            ora (COLCRS,X)
            .byte $00
            ora COLCRS
LB51D       rti
            ora COLCRS
            rti
LB521       ora COLCRS+1,X
            bvc LB539+1
            .byte $54
            cli
            ora TEMP,X
            cli
            ora COLCRS,X
            bvc LB543
            eor TEMP,X
            ora COLCRS,X
            bvc LB539
            eor FREQ,X
            ora COLCRS
            rti
LB539       ora (COLCRS,X)
            .byte $00,$00,$54,$00,$00,$00,$00,$00
LB543       .byte $00,$00,$00
            ora (L0000,X)
            ora (L0000,X)
            .byte $00,$00,$00,$04,$00,$00,$00
            bpl LB553
LB553       .byte $00,$00
            ora FREQ
            .byte $00
            eor TEMP,X
            ora (COLCRS,X)
LB55C       bvc LB562+1
            adc ROWCRS
            ora FMSZPG+2
LB562       sty BUFADR,X
            ora RTCLOK+2
            ora ROWCRS,X
            .byte $14
            ora SAVMSC+1,X
            .byte $54
            ora COLCRS,X
            .byte $54
            ora COLCRS
            bvc LB573
LB573       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            rti
            .byte $00,$00
            ora (L0000,X)
            ora (TEMP),Y
            .byte $00
            ora COLCRS
            bpl LB58F+1
            eor FREQ,X
            ora SAVMSC+1,X
LB58F       bvc LB5A7
            eor (TEMP),Y
            .byte $14
            bvc LB5E9+1
            .byte $14
            ora ROWCRS,X
            ora ADRESS+1,X
            .byte $54
            ora COLCRS,X
            .byte $54
            ora COLCRS
            bvc LB5A3
LB5A3       .byte $00,$00,$00,$02
LB5A7       .byte $00,$02,$00,$00,$00,$00,$04,$00,$00,$00
            jsr L0000
            .byte $00
            asl
            rti
            .byte $00
            tax
            ldy #$02
            tax
            ldy #$0A
            ror
            ldy DOSVEC
            lsr
            sty ICAX1Z,X
            asl
            bit ICAX1Z
            ldy ICBALZ
            rol
            lda #$A4
            rol
            tax
            ldy DOSVEC
            tax
            ldy #$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            rti
            .byte $00,$00,$02,$00,$22
            ldy #$00
            asl
            tax
LB5E9       jsr LAA0A
            rti
            rol
            lda #$A0
            rol L00A2
            ldy #$24
            ldy #$A4
            bit ICAX1Z
            ldy ICAX1Z
            ror
            ldy ICAX1Z
            tax
            ldy DOSVEC
            tax
            ldy #$00
            .byte $00,$00,$04,$00,$00,$14,$00,$00
            ora L0000,X
            .byte $00
            eor L0000,X
            .byte $00
            adc L0000
            .byte $00
            eor LOMEM
            .byte $00
            eor LOMEM
            .byte $00
            eor L0000,X
            .byte $00
            eor L0000,X
            .byte $00
            eor L0000,X
            .byte $00
            eor L0000,X
            .byte $00
            eor L0000,X
            .byte $00
            ora L0000,X
            .byte $00
            ora L0000,X
            .byte $00,$14,$00,$00,$04,$00,$00,$00,$00
            bpl LB639
LB639       .byte $00,$14,$00,$00,$54,$00,$00
            eor L0000,X
            .byte $00
            eor VDSLST,Y
            eor (L0000),Y
            .byte $02
            eor (L0000),Y
            .byte $00
            eor L0000,X
            .byte $00
            eor L0000,X
            .byte $00
            eor L0000,X
            .byte $00
            eor L0000,X
            .byte $00
            eor L0000,X
            .byte $00,$54,$00,$00,$54,$00,$00,$14,$00,$00
            bpl LB66A+1
            eor FREQ,X
            ora L0099,X
LB66A       bvc LB6C1
            ora (ROWCRS),Y
            .byte $54
            bpl LB6C5
            ora COLCRS,X
            bvc LB675+1
LB675       eor L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (COLCRS,X)
            .byte $00
            ora COLCRS,X
            bvc LB70F
            eor ROWCRS,X
            eor COLCRS,X
            .byte $54
            ora COLCRS,X
LB6C1       bvc LB6C3+1
LB6C3       eor L0000,X
LB6C5       .byte $00,$00,$00,$00,$54,$00
            ora (COLCRS,X)
            .byte $00
            ora COLCRS
            rti
            ora SAVMSC
            cli
            ora SAVMSC,X
            bvc LB6ED
            .byte $5A
            bvc LB6F0
            eor TEMP,X
            ora COLCRS,X
            bvc LB6F5+1
            eor TEMP,X
            ora COLCRS,X
            bvc LB6EB
            .byte $54
            rti
            lda (BRKKEY,X)
LB6EB       plp
            tay
LB6ED       .byte $44
            tay
            rol
LB6F0       .byte $12
            ldy #$0A
            .byte $02,$80
LB6F5       ora (TEMP,X)
            .byte $00
            ora ROWCRS
            .byte $00
            ora COLCRS,X
            .byte $00
            ora FKDEF+1,X
            rts
            eor FKDEF+1,X
            rti
            eor SAVADR+1,X
            rti
            eor COLCRS,X
            rti
            eor COLCRS,X
            rti
            eor COLCRS,X
LB70F       rti
            eor COLCRS,X
            rti
            ora (BRKKEY),Y
            .byte $00,$44,$44
            rti
            .byte $12
            sta (L0000,X)
            .byte $02,$80,$00,$02
            tay
            .byte $00,$02
            tay
            .byte $00,$00,$00,$00,$00,$54,$00
            ora COLCRS
            rti
            ora COLCRS,X
            rti
            ora COLCRS,X
            bvc LB749+2
            eor L1450,Y
            eor (TEMP),Y
            .byte $14
            bpl LB78D
            ora ADRESS+1,X
            bvc LB756
            adc TEMP
            ora COLCRS,X
            bvc LB749+2
            .byte $44
            rti
LB749       ora L1011,Y
            asl
            .byte $04
            rti
            rol
            .byte $80,$00
            rol
            .byte $80,$00,$00
LB756       .byte $00,$00,$00
            ora L0000,X
            ora (COLCRS,X)
            bvc LB75F+1
LB75F       eor ROWCRS,X
            ora COLCRS
            .byte $54
            ora ADRESS+1
            sty RAMLO+1,X
            eor RTCLOK+2
            ora RAMLO
            .byte $14
            ora SAVMSC+1
            .byte $54
            ora SAVMSC+1
            .byte $54
            ora COLCRS
            .byte $54
            ora (BRKKEY,X)
            bpl LB77E
            .byte $44,$64
            ora (POKMSK,X)
LB77E       ldy #$00
            .byte $02
            tay
            .byte $00,$02
            tay
            .byte $00
            eor L0000,X
            ora (COLCRS,X)
            rti
            ora COLCRS
LB78D       bvc LB793+1
            sta TEMP,X
            asl COLCRS
LB793       bvc LB7AA+1
            eor ROWCRS,X
            ora COLCRS,X
            .byte $54
            asl COLCRS,X
            .byte $54
            ora COLCRS,X
            .byte $54,$14
            eor ROWCRS,X
            rol FMSZPG+3
            .byte $44
LB7A6       ora (L0092,X)
            bcc LB7AE
LB7AA       lsr LOMEM
            .byte $00,$02
LB7AE       tay
            .byte $00,$02
            tay
            .byte $00,$00,$00,$00
            eor L0000,X
            ora (COLCRS,X)
            rti
            ora COLCRS
            bvc LB7C3+1
            sta TEMP,X
            asl COLCRS
LB7C3       bvc LB7DA+1
            eor ROWCRS,X
            ora COLCRS,X
            .byte $54
            asl COLCRS,X
            .byte $54
            ora COLCRS,X
            .byte $54
            ora COLCRS,X
            .byte $14
            ora (L009A),Y
            tya
            asl L0086
            rti
            .byte $02
LB7DA       sta (POKMSK),Y
            rol
            .byte $80,$00
            rol
            .byte $80,$00,$00,$00,$00,$00,$00,$00,$00
            ora L0000,X
            .byte $00
            eor FREQ,X
            ora (COLCRS,X)
            bvc LB816+1
            and TEMP
            ora ICBAHZ
            .byte $54
            ora L00A5
            .byte $54
            ora COLCRS
            .byte $54
            ora COLCRS
            .byte $54
            ora COLCRS
            .byte $54
            ora COLCRS
            .byte $54
            ora (BUFADR,X)
            bpl LB831+1
            .byte $44
            lsr
            rol
            ora (ICAX1Z),Y
            asl
            sty L00A8
            .byte $02,$80
            ldy #$00
LB816       ora FREQ
            .byte $00
            ora TEMP,X
            .byte $00
            eor ROWCRS,X
            ora #$49
            .byte $54
            ora (FMSZPG+6,X)
            eor NGFLAG,X
            adc #$55
            ora (COLCRS,X)
            eor NGFLAG,X
            eor COLCRS,X
            ora (COLCRS,X)
            eor NGFLAG,X
LB831       eor COLCRS,X
            .byte $00,$44,$44
            ora (BRKKEY,X)
            ora (L0000),Y
            .byte $42
            sty L0000
            .byte $02,$80,$00
            rol
            .byte $80,$00
            rol
            .byte $80,$00,$00,$00,$04,$00
            bpl LB85C
            ora (POKMSK,X)
            ora (L0000),Y
            bvc LB866
            .byte $04,$54,$14
            eor (ROWCRS,X)
            .byte $54,$44,$54
            ora L0000,X
LB85C       bvc LB8B3
            ora (ROWCRS),Y
            eor NGFLAG,X
            .byte $54
            ora FMSZPG+2,X
            .byte $44
LB866       ora FMSZPG+2
            bvc LB87F
            eor POKMSK
            .byte $04
            eor FREQ,X
            ora HOLD1
            .byte $00,$00
            bvc LB875
LB875       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$04
LB87F       .byte $54,$54,$14,$44,$44,$14,$44,$44,$04,$44,$44,$04,$44,$44,$04,$44
            .byte $44,$04,$44
            rti
            .byte $04,$54,$54,$04,$54,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
LB8A5       .byte $00
LB8A6       .byte $00,$00,$00,$00,$00,$00,$00,$00,$04,$54,$54,$14,$44
LB8B3       .byte $44,$54,$44,$44,$44,$44,$44,$44,$44,$44,$54,$44,$44,$04,$44,$44
            .byte $04,$54,$54,$04,$54,$54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$54,$54,$54
            rti
            .byte $44,$44
            rti
            .byte $44,$44
            rti
            .byte $44,$44,$54,$44,$44,$04,$44,$44,$04,$44,$44,$54,$54,$54,$54,$54
            .byte $54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$44
            ora ROWCRS
            .byte $44,$04,$44,$44,$04,$44,$44,$04,$44
            eor FMSZPG+1
            .byte $44,$44,$44,$44,$44,$44,$44,$44,$44,$44
            eor FMSZPG+2
            .byte $54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00
            eor (FMSZPG+2),Y
            .byte $54
            bpl LB987
            .byte $44
            bpl LB98A
            .byte $44
            bvc LB98D
            .byte $44
            ora (FMSZPG+1),Y
            .byte $44
            ora (RAMLO),Y
            .byte $44
            ora (RAMLO),Y
            .byte $44
            ora (RAMLO),Y
            .byte $44
            eor (FMSZPG+2),Y
            .byte $54,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00
            eor (FMSZPG+2,X)
            .byte $54
            eor FMSZPG+1
            .byte $44,$44,$44,$44
            eor ROWCRS
            .byte $44
            rti
            .byte $44,$44,$54,$44,$44,$44,$44,$44,$44,$44,$44,$54
LB987       eor ROWCRS
            .byte $00
LB98A       .byte $00,$00,$00
LB98D       .byte $00,$00,$00,$00,$00,$00,$00,$00
            ora COLCRS,X
            bvc LB9EE
            eor ROWCRS,X
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            eor COLCRS,X
            .byte $54
            ora COLCRS,X
            bvc LB9C3
LB9C3       .byte $00,$00
LB9C5       .byte $37,$3B,$37,$32,$3A
            and LTEMP+1,X
LB9CC       and L00DD,X
            lda LBA14+1,Y
            eor (L00BA),Y
            .byte $89
            tsx
            ldy LF7BA,X
            tsx
            and L65BB
            .byte $BB
            pha
            ora (DOSINI+1,X)
            sta L3125,Y
            eor #$61
            .byte $02
            asl L4A1A
            .byte $E2,$03,$0F,$1B,$27
LB9EE       .byte $33,$4B,$57,$63
            jmp L1D11
            eor L4D41,Y
            adc ROWAC+1
            .byte $12
            asl L4236,X
            lsr L0867
            .byte $14
            jsr LC438
            bvc LBA63
            pla
            ora #$15
            and (RECVDN,X)
            eor DOSVEC
            asl ICCOMZ,X
            .byte $3A
            lsr OLDADR
            ror
LBA14       ror L0000,X
            .byte $0C
            clc
            bit STATUS
            .byte $3C
            pha
            .byte $54
            rts
            adc L0E02
            .byte $1A
            ldx BUFRLO
            rol L564A,X
            .byte $62
            ror L3327
            .byte $4B,$57,$6F
            bpl LBA57+1
            .byte $34
            bvs LBA44
            eor L71D9
            asl RTCLOK
            asl L362A,X
            lsr L0866
            .byte $14
            bit L4438
            bvc LBA9E+2
LBA44       pla
            ora L00AD,X
            adc DOSVEC,X
            asl ICAX5Z,X
            .byte $3A
            lsr LMARGN
            lsr L476A,X
            .byte $03,$02
            ora (L0000,X)
            .byte $0C
            clc
LBA57       ora L1B1A,Y
            .byte $27,$33,$32
            and (STATUS),Y
            tay
            and #$1D
            .byte $1C
LBA63       .byte $3F
            rti
            eor (L00B6,X)
            rol
            .byte $2B,$37,$43,$4F
            lsr LDB4D
            sec
            and L463A,Y
            .byte $52
            lsr L5554,X
            lsr DINDEX,X
            .byte $64
LBA7A       adc COLAC
            .byte $73,$74
            adc DELTAR,X
            .byte $07,$13,$14
            ora BUFADR+1,X
            .byte $22
            rts
            adc (PALNTS,X)
            bmi LBAC7
            pha
            .byte $54
            ora L6D31,Y
            .byte $02
            asl L321A
            lsr
            dec BITMSK,X
            .byte $03,$57,$04,$9C
            plp
            .byte $34
            rti
LBA9E       jmp L70D8
            ora ICAX1Z
            rol CRITIC,X
            lsr L665A
            .byte $13,$2B,$67,$14
            sec
            .byte $44
            bvc LBB0C
            ora ICDNOZ,X
            adc BUFADR+1,X
            .byte $22
            rol L523A
            lsr L766A,X
            .byte $17,$00,$0C
            clc
            bit STATUS
            .byte $3C
            pha
            .byte $54
            jmp (L3D0D)
LBAC7       asl L3E26
            lsr
            lsr PALNTS,X
            ror L270F
            .byte $6F
            bpl LBA7A+1
            .byte $34
            rti
            jmp L7058
            ora (ICBLHZ),Y
            eor (TRAMSZ,X)
            .byte $12
            rol
            .byte $42,$5A
            ror COLAC
            .byte $2B,$5B,$14
            jsr L382C
            .byte $44
            bvc LBB46+1
            .byte $74
            ora ENDPT+1,X
            asl
            stx ICCOMZ,Y
            ldx L463A
            .byte $52
            ror
            ror L0000,X
            ora (NOCKSM,X)
            and BPTR
            cmp FKDEF+1,X
            adc L1A0E
            rol FTYPE
            lsr APPMHI+1,X
            .byte $3F,$57,$6F,$04
            bpl LBB32+1
            .byte $34
LBB0C       rti
            cli
            and #$59
            adc (TRAMSZ),Y
            .byte $12
            rol
            .byte $42
            lsr LE65A
            .byte $72,$43
            php
            sty ICHIDZ,X
            bit L4438
            bvc LBB7E
LBB22       .byte $74
            adc BUFADR+1,X
            .byte $22
            rol L5246
            lsr L2F76,X
            .byte $5F
            ora (DOSINI+1,X)
            ora L3125,Y
LBB32       and L61D5,X
            adc L8F02+1
            .byte $1B,$27,$33,$3F,$4B,$57,$63,$6F,$04,$1C
            ora ABUFPT+1
LBB44       and SOUNDR,X
LBB46       eor L0665
            rol MLTTMP,X
            .byte $07,$13,$1F,$2B,$37,$4F,$5B,$67
            pla
            ora #$21
            and L45B9
            eor (OLDCHR),Y
            adc #$0A
            lsr DOSVEC+1
            .byte $2F,$3B,$47,$53,$5F,$6B
            rts
            ora (DOSINI+1,X)
            and CHKSUM
            lda L5549,X
            asl L6E3E
            .byte $03,$0F,$27,$33,$3F,$4B,$57,$E3
            ora ABUFPT+1
            and #$40
            eor (ATRACT,X)
LBB7E       eor L7165,Y
            asl L9342,X
            .byte $37,$43,$5B,$67,$14
            bit L6844
            ora #$15
            and L5145
            eor L0A69,X
            rol L2376
            .byte $2F,$47,$6B,$77
LBB9B       jsr L4030
            bvc LBC00
            bvs LBB22
            bcc LBB44
LBBA4       bcs LBBA6
LBBA6       .byte $0C
            clc
            bit STATUS
            .byte $3C
            pha
            .byte $54
            rts
LBBAE       jmp (LDE00)
LBBB1       .byte $BB
            dec L60BB,X
            lda LBD5F+1,X
            rts
            lda LBD5F+1,X
            .byte $3A
            ldx LBED5,Y
            .byte $63
            ldx LBE96,Y
            cmp L00BE,X
            .byte $E2
            ldx LBF0F,Y
            rol L00BF
            sec
            ldy LBC37+1,X
            .byte $52,$BF
            dex
            tay
            .byte $67,$BF
            cpy L0DBF
            ldx LBF81,Y
            lda L00BF,X
            and (L00B6,X)
            jsr LA7A6
            jsr LA1A0
            jsr LA7A6
            jsr LA1A0
            and (L0090,X)
            jsr LA7A6
            jsr LA1A0
            and (KEYDEF,X)
            jsr LAFA4+2
            jsr LA1A0
            and (L0090,X)
            .byte $20,$A6
;
            org $022F
;
            .byte $00
;
            org $D400
;
            .byte $00
;
            org $9C00
;
            .byte $04
            lda L3300,Y
            sta ICAX1Z
            lda L3400,Y
            sta ICAX2Z
            ldy L04D8,X
            lda PRNBUF+24,X
            and #$03
            beq L9C15
L9C15       tya
            asl
            tay
            lda LB041,Y
            sta ICAX3Z
            iny
            lda LB041,Y
            sta ICAX4Z
            lda PRNBUF+24,X
            lsr
            lsr
            sta FMSZPG+3
L9C2A       lda BPTR
            asl
            clc
            adc BPTR
            tay
            lda (ICAX3Z),Y
            sta FMSZPG+4
            iny
            lda (ICAX3Z),Y
            sta FMSZPG+5
            iny
            lda (ICAX3Z),Y
            sta FMSZPG+6
            lda #$00
            sta ZCHAIN
            lda PRNBUF+24,X
            and #$03
            beq L9C68
            cmp #$02
            beq L9C58
            bcc L9C60
            lsr FMSZPG+4
            ror FMSZPG+5
            ror FMSZPG+6
            ror ZCHAIN
L9C58       lsr FMSZPG+4
            ror FMSZPG+5
            ror FMSZPG+6
            ror ZCHAIN
L9C60       lsr FMSZPG+4
            ror FMSZPG+5
            ror FMSZPG+6
            ror ZCHAIN
L9C68       ldy FMSZPG+3
            lda (ICAX1Z),Y
            eor FMSZPG+4
            sta (ICAX1Z),Y
            iny
            lda (ICAX1Z),Y
            eor FMSZPG+5
            sta (ICAX1Z),Y
            iny
            lda (ICAX1Z),Y
            eor FMSZPG+6
            sta (ICAX1Z),Y
            iny
            lda (ICAX1Z),Y
            eor ZCHAIN
            sta (ICAX1Z),Y
            dec BPTR
            bpl L9C90
            lda L04D8,X
            sta L0518,X
            rts
L9C90       lda ICAX1Z
            sec
            sbc #$28
            sta ICAX1Z
            bcs L9C2A
            dec ICAX2Z
            jmp L9C2A
L9C9E       lda #$0F
            sta BPTR
            lda DDEVIC,X
            and #$40
            beq L9CCB
            lda DDEVIC,X
            and #$0F
            tay
            lda IOCB4+ICAX3,Y
            and #$01
            beq L9CCB
            lda L0570,Y
            bpl L9CCB
            lda IOCB4+ICAX3,Y
            and #$02
            beq L9CC3
            rts
L9CC3       lda IOCB4+ICAX3,Y
            ora #$02
            sta IOCB4+ICAX3,Y
L9CCB       ldy L0498,X
            lda L3300,Y
            sta ICAX1Z
            lda L3400,Y
            sta ICAX2Z
            ldy L0518,X
            lda L0458,X
            and #$03
            beq L9CE2
L9CE2       tya
            asl
            tay
            lda LB041,Y
            sta ICAX3Z
            iny
            lda LB041,Y
            sta ICAX4Z
            lda L0458,X
            lsr
            lsr
            sta FMSZPG+3
L9CF7       lda BPTR
            asl
            clc
            adc BPTR
            tay
            lda (ICAX3Z),Y
            sta FMSZPG+4
            iny
            lda (ICAX3Z),Y
            sta FMSZPG+5
            iny
            lda (ICAX3Z),Y
            sta FMSZPG+6
            lda #$00
            sta ZCHAIN
            lda L0458,X
            and #$03
            beq L9D35
            cmp #$02
            beq L9D25
            bcc L9D2D
            lsr FMSZPG+4
            ror FMSZPG+5
            ror FMSZPG+6
            ror ZCHAIN
L9D25       lsr FMSZPG+4
            ror FMSZPG+5
            ror FMSZPG+6
            ror ZCHAIN
L9D2D       lsr FMSZPG+4
            ror FMSZPG+5
            ror FMSZPG+6
            ror ZCHAIN
L9D35       ldy FMSZPG+3
            lda (ICAX1Z),Y
            eor FMSZPG+4
            sta (ICAX1Z),Y
            iny
            lda (ICAX1Z),Y
            eor FMSZPG+5
            sta (ICAX1Z),Y
            iny
            lda (ICAX1Z),Y
            eor FMSZPG+6
            sta (ICAX1Z),Y
            iny
            lda (ICAX1Z),Y
            eor ZCHAIN
            sta (ICAX1Z),Y
            dec BPTR
            bpl L9D57
            rts
L9D57       lda ICAX1Z
            sec
            sbc #$28
            sta ICAX1Z
            bcs L9CF7
            dec ICAX2Z
            jmp L9CF7
L9D65       ldx #$00
L9D67       ldy L9DA7,X
            lda L057C,Y
            beq L9D73
            inx
            jmp L9D67
L9D73       ldx FREQ
            sty ROWAC,X
            lda L3500,Y
            clc
            adc #$2E
            sta FKDEF,X
            sta MLTTMP,X
            lda L3578,Y
            clc
            adc #$20
            sta PALNTS,X
            sta ADRESS,X
            lda SAVMSC,X
            and #$C0
            sta SAVMSC,X
            dec COLCRS+1,X
            lda #$41
            sta ICSTAZ
            jsr LA2EA
            ldx FREQ
            inc COLCRS+1,X
            lda #$00
            ldx #$00
            jmp LA8A3
L9DA5       eor #$51
L9DA7       and ICBLHZ,X
            eor (CRITIC,X)
            plp
            .byte $34
            rti
            rol
L9DAF       rol ICHIDZ,X
            dec LA6A7,X
            rti
            lda FMSZPG
            ora #$40
            sta FMSZPG
            ldx #$06
            jsr LA373+1
            jsr LA23B
            ldx #$07
            jsr LA373+1
            ldy #$5E
            ldx #$10
            lda #$08
            sta ICCOMZ
            jsr LA253
            jsr LA1E0
            jsr LA413
            lda #$01
            sta ICCOMZ
            jsr LA2C4
            jsr L9DFA
            bcs L9DEE
            lda FMSZPG
            and #$BF
            sta FMSZPG
            jmp LA427
L9DEE       ldx FREQ
GAMOVA      jsr HISCORE
            lda STATUS
            and #$00
            sta STATUS
            rts
L9DFA       ldx FREQ
            jsr L896A
            lda FMSZPG
            and #$04
            beq L9E16
            lda FREQ
            eor #$01
            tax
            lda COLCRS+1,X
            beq L9E16
            lda FREQ
            eor #$01
            sta FREQ
            clc
            rts
L9E16       ldx FREQ
            sec
            rts
L9E1A       ldx FREQ
            lda SAVMSC,X
            and #$20
            beq L9E42
            lda OLDROW,X
            bmi L9E2F
            bne L9E3F
            dec COLCRS+1,X
            bne L9E3F
            jmp L9DAF+1
L9E2F       jsr LA1B9
            jsr LA7DE
            jsr L9DFA
            lda STATUS
            ora #$10
            sta STATUS
            rts
L9E3F       jmp LA0D7
L9E42       lda PALNTS,X
            sec
            sbc #$20
            jsr LA438
            bcs L9E53
            lda #$00
            sta BITMSK,X
            jmp LA088
L9E53       lda FKDEF,X
            sec
            sbc #$2E
            jsr LA446
            bcs L9E64
            lda #$00
            sta BUFSTR,X
            jmp L9F51
L9E64       lda SAVADR,X
            beq L9E6D
            bpl L9E70
            jmp L9EA6
L9E6D       jmp L9F42
L9E70       lda SAVMSC,X
            ora #$01
            and #$F1
            sta SAVMSC,X
            lda FKDEF,X
            cmp #$B9
            bcc L9E9F
            lda SAVMSC,X
            and #$10
            bne L9E87
            jmp L9F49
L9E87       lda FMSZPG+1
            ora #$01
            sta FMSZPG+1
            lda #$70
            sta BFENLO
            txa
            pha
            lda #$16
            ldx #$06
            jsr LA8A3
            pla
            tax
            jmp L9F42
L9E9F       lda ROWAC,X
            tay
            iny
            jmp L9ED9
L9EA6       lda SAVMSC,X
            ora #$02
            and #$F2
            sta SAVMSC,X
            lda FKDEF,X
            cmp #$38
            bcs L9ED5
            lda SAVMSC,X
            and #$10
            bne L9EBD
            jmp L9F49
L9EBD       lda FMSZPG+1
            ora #$02
            sta FMSZPG+1
            lda #$70
            sta BFENLO
            txa
            pha
            lda #$16
            ldx #$06
            jsr LA8A3
            pla
            tax
            jmp L9F42
L9ED5       lda ROWAC,X
            tay
            dey
L9ED9       lda L057C,Y
            bne L9EE1
            jmp L9F49
L9EE1       and #$7F
            tay
            lda SAVMSC,X
            and #$10
            beq L9F40
            lda DDEVIC,Y
            and #$30
            bne L9F40
            lda SAVMSC,X
            and #$03
            pha
            tya
            tax
            lda DDEVIC,Y
            and #$40
            beq L9F24
            lda DDEVIC,Y
            and #$0F
            tay
            lda IOCB4,Y
            and #$20
            bne L9F20
            pla
            ora IOCB4,Y
            sta IOCB4,Y
            txa
            tay
            lda DDEVIC,Y
            ora #$10
            sta DDEVIC,Y
            jmp L9F2F
L9F20       pla
            jmp L9F3A
L9F24       txa
            tay
            pla
            ora DDEVIC,Y
            ora #$10
            sta DDEVIC,Y
L9F2F       lda IOCB5+ICBLL,Y
            ora #$80
            sta IOCB5+ICBLL,Y
            jsr LA260
L9F3A       ldx FREQ
            lda #$00
            sta RAMTOP,X
L9F40       ldx FREQ
L9F42       lda #$00
            sta BITMSK,X
            jmp L9F60
L9F49       lda SAVADR,X
            sta BITMSK,X
            lda #$00
            sta BUFSTR,X
L9F51       lda FKDEF,X
            clc
            adc BITMSK,X
            cmp #$BB
            bcs L9F60
            cmp #$36
            bcc L9F60
            sta FKDEF,X
L9F60       lda FKDEF,X
            sec
            sbc #$2E
            tay
            lda L35F0,Y
            sta ICCOMZ
            lda PALNTS,X
            sec
            sbc #$40
            lsr
            lsr
            lsr
            lsr
            tay
            lda LBBA4+1,Y
            clc
            adc ICCOMZ
            sta ROWAC,X
            ldy RAMTOP,X
            beq L9F85
            ldy #$00
            sty DSKFMS
L9F85       lda FKDEF,X
            sec
            sbc #$2E
            jsr LA446
            bcs L9F96
            lda #$00
            sta BUFSTR,X
            jmp LA0D7
L9F96       lda PALNTS,X
            sec
            sbc #$20
            jsr LA438
            bcs L9FA3
            jmp LA080
L9FA3       lda RAMTOP,X
            bne L9FAA
            jmp LA084
L9FAA       bmi L9FE4
            lda SAVMSC,X
            ora #$08
            and #$F8
            sta SAVMSC,X
            lda PALNTS,X
            cmp #$CF
            bcc L9FDB
            lda SAVMSC,X
            and #$10
            bne L9FC3
            jmp LA084
L9FC3       lda FMSZPG+1
            ora #$08
            sta FMSZPG+1
            lda #$70
            sta BFENLO
            txa
            pha
            lda #$16
            ldx #$06
            jsr LA8A3
            pla
            txa
            jmp LA077
L9FDB       lda ROWAC,X
            clc
            adc #$0C
            tay
            jmp LA019
L9FE4       lda SAVMSC,X
            ora #$04
            and #$F4
            sta SAVMSC,X
            lda PALNTS,X
            cmp #$42
            bcs LA013
            lda SAVMSC,X
            and #$10
            bne L9FFB
            jmp LA084
L9FFB       lda FMSZPG+1
            ora #$04
            .byte $85
;
            org $BC00
;
LBC00       .byte $A7
            jsr LA1A0
            and (KEYDEF,X)
            jsr LB7A6
            jsr LA1A0
            jsr LA7A6
            jsr LA1A0
            jsr LA7A6
            jsr LA1A0
            and (OLDCOL,X)
            jsr LA7A6
            jsr LA1A0
            and (FMSZPG+5,X)
            jsr LAFA4+2
            jsr LA1A0
            and (OLDCOL,X)
            jsr LA7A6
            jsr LA1A0
            and (FMSZPG+5,X)
            jsr LB8A6
            .byte $80
            sec
LBC37       ldy L3C21,X
            jsr LAFA4+1
            jsr LA1A2
            jsr LA8A5
            and (BFENHI,X)
            tay
            and (NOCKSM,X)
            tay
            and (FMSZPG+1,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (HOLD1,X)
            tay
            and (FMSZPG+5,X)
            .byte $AF
            jsr LA1A2
            jsr LA8A5
            and (FMSZPG+1,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (HOLD1,X)
            tay
            and (OLDCOL,X)
            tay
            and (FKDEF,X)
            tay
            and (OLDCOL,X)
            bcs LBC8E+1
            jmp (L21B0)
            .byte $5B
            bcs LBC94+1
            jmp (L21A8)
            .byte $5B
            tay
            and (FMSZPG+5,X)
            .byte $AF
            jsr LA1A2
            jsr LA8A5
            and (HOLD1,X)
            bcs LBCA6+1
            pha
            tay
            and (FMSZPG+1,X)
            tay
            and (FREQ,X)
            tay
LBC8E       and (NOCKSM,X)
            .byte $AF
            jsr LA1A2
LBC94       jsr LA8A5
            and (BFENHI,X)
            tay
            and (NOCKSM,X)
            tay
            and (FMSZPG+1,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (HOLD1,X)
            tay
LBCA6       and (FMSZPG+5,X)
            .byte $AF
            jsr LA1A2
            jsr LA8A5
            and (FMSZPG+1,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (HOLD1,X)
            tay
            and (OLDCOL,X)
            tay
            and (FKDEF,X)
            tay
            and (BUFSTR,X)
            tay
            and (FKDEF,X)
            .byte $A7
            jsr LA1A2
            jsr LA8A5
            and (BUFSTR,X)
            tay
            and (NOCKSM,X)
            bcs LBCF1+1
            .byte $44
            bcs LBCF4+1
            pha
            bcs LBCF7+1
            eor (L00B0),Y
            and (OLDCOL,X)
            .byte $BF
            lda (ICDNOZ,X)
            eor (ICHIDZ),Y
            lda L00AF
            jsr LA1A2
            jsr LB8A5
            and (NOCKSM,X)
            tay
            and (FMSZPG+1,X)
            tay
            and (FMSZPG+5,X)
            tay
LBCF1       and (HOLD1,X)
            tay
LBCF4       and (FMSZPG+5,X)
            tay
LBCF7       and (OLDCOL,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (HOLD1,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (OLDCOL,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (HOLD1,X)
            .byte $AF
            jsr LA1A2
            jsr LB8A5
            and (NOCKSM,X)
            tay
            and (FMSZPG+1,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (HOLD1,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (OLDCOL,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (HOLD1,X)
            tay
            and (FMSZPG+5,X)
            tay
            and (FMSZPG+1,X)
            tay
            and (FREQ,X)
            tay
            and (NOCKSM,X)
            .byte $BF
            lda (ICDNOZ,X)
            and L00B0,X
            and (FMSZPG+1,X)
            bcs LBD5F
            eor (L00B0),Y
            and (OLDCOL,X)
            bcs LBD65
            rts
            bcs LBD68
            and L00B0,X
            and (NOCKSM,X)
            bcs LBD6D+1
            rts
            bcs LBD70+1
            .byte $5B,$BF
            lda (ICDNOZ,X)
            jmp (LA1BE+1)
            and (OLDCOL,X)
            .byte $BF
            lda (L00BF,X)
            lda (LOMEM,X)
            sec
LBD5F       ldy L9021,X
            jsr LA4AA+1
LBD65       jsr LA4A7+1
LBD68       and (FMSZPG+5,X)
            jsr LA4AA+1
LBD6D       jsr LA4A7+1
LBD70       jsr LA4AA
            jsr LA4A7+1
            and (FKDEF,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (COLCRS,X)
            jsr LA4AA+1
            jsr LACA8
            and (FKDEF,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (BUFSTR,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (L0090,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (FMSZPG+5,X)
            jsr LA4AA+1
            jsr LA4A7+1
            jsr LA4AA
            jsr LA4A7+1
            and (FKDEF,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (COLCRS,X)
            jsr LA4AA+1
            jsr LACA8
            and (FKDEF,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (BUFSTR,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (L0090,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (FMSZPG+5,X)
            jsr LA4AA+1
            jsr LA4A7+1
            jsr LA4AA
            jsr LA4A7+1
            and (FKDEF,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (COLCRS,X)
            jsr LA4AA+1
            jsr LACA8
            and (FKDEF,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (BUFSTR,X)
            jsr LA4AA+1
            jsr LA4A7+1
            and (L0090,X)
            jsr LA4AA+1
            jsr LA4A7+1
            .byte $80
            rts
            lda LAF20,X
            and (ICBLLZ,X)
            lda (ICDNOZ,X)
            rol
            lda (ICDNOZ,X)
            and L21A1
            .byte $2F
            lda (ICDNOZ,X)
            .byte $32
            lda (ICDNOZ,X)
            and L00A1,X
            and (RECVDN,X)
            lda (ICDNOZ,X)
            .byte $3C
            lda (ICDNOZ,X)
            rti
            lda (ICHIDZ,X)
            tay
            and (FMSZPG+1,X)
            lda (ICHIDZ,X)
            lda ICDNOZ
            pha
            lda (ICHIDZ,X)
            tay
            lda (LOMEM,X)
            .byte $00,$00
            and (RAMLO,X)
            jsr LA229+1
            and (CMCMD,X)
            ldx #$21
            ora #$A2
            and (RAMLO,X)
            ldx #$21
            .byte $07
            ldx #$21
            ora #$A2
            and (DOSVEC+1,X)
            ldx #$21
            .byte $0C
            ldx #$21
            ora L21A3
            asl L21A3
            .byte $0F,$A3
            and (POKMSK,X)
            .byte $A3,$80,$00,$00
            and (ABUFPT+1,X)
            jsr LA266
            and (DSKFMS+1,X)
            ldx #$21
            asl ICHIDZ,X
            adc #$A2
            and (RTCLOK+2,X)
            ldx #$21
            .byte $13
            ldx #$21
            ora (L00A2),Y
            and (POKMSK,X)
            ldx #$21
            .byte $0F
            ldx #$21
            asl L21A4
            ora L21A4
            .byte $0C
            ldy ICDNOZ
            asl
            ldy ICDNOZ
            .byte $07
            ldy ICDNOZ
            .byte $03
            jsr LA466
            .byte $80,$00,$00
LBE96       and (ABUFPT+2,X)
            jsr LA266
            and (DSKUTL,X)
            ldx #$21
            .byte $17
            jsr LA268+1
            and (BUFADR,X)
            ldx #$21
            .byte $13
            ldx #$21
            .byte $12
            ldx #$21
            ora (L00A2),Y
            and (POKMSK,X)
            ldx #$21
            .byte $0F
            ldy ICDNOZ
            asl L21A4
            ora L21A2
            .byte $0C
            ldx #$21
            asl
            ldx #$21
            php
            ldx #$21
            asl L00A2
            and (RAMLO,X)
            ldx #$21
            .byte $02
            jsr LA266
            and (L0000,X)
            ldx #$80
            .byte $00,$00
LBED5       and (LOMEM,X)
            jsr LA5A4+2
            and (HOLD1,X)
            jsr LA5AA+2
            .byte $80
            cmp L00BE,X
            and (COLCRS,X)
            jsr LAAA9
            and (BUFRLO,X)
            tax
            and (COLCRS,X)
            tax
            and (OLDCOL,X)
            tax
            and (BFENHI,X)
            tax
            and (OLDCOL,X)
            tax
            and (FKDEF,X)
            tax
            and (RECVDN,X)
            tax
            and (FKDEF,X)
            tax
            and (MLTTMP,X)
            tax
            and (FKDEF,X)
            tax
            and (OLDCOL,X)
            tax
            and (COLCRS,X)
            ldy L00B4,X
            .byte $80,$00,$00
LBF0F       ldy L00B4,X
            ldy L00B4,X
            tax
            and (FREQ,X)
            jsr LAAA9
            and (RECVDN,X)
            tax
            and (BFENHI,X)
            tax
            and (BUFRLO,X)
            ldy L00B4,X
            .byte $80,$00,$00
            and (RECVDN,X)
            jsr LA5AA
            and (FMSZPG+1,X)
            lda ICDNOZ
            eor L00A5,X
            and (COLAC,X)
            lda ICDNOZ
            ror L00A5
            and (COLCRS,X)
            lda ICDNOZ
            .byte $72
            lda ICDNOZ
            ror L00A5
            and (COLCRS,X)
            lda ICDNOZ
            .byte $72
            lda ICDNOZ
            ror L00A5
            and (COLCRS,X)
            lda ICDNOZ
            .byte $1C
            lda LOMEM
            .byte $00,$00
            and (L00E0,X)
            lda (ICDNOZ,X)
            inc L00A2
            and (L00ED,X)
            ldx #$21
            .byte $F2
            ldx #$21
            .byte $FA
            ldx #$21
            .byte $FF
            ldx #$80
            .byte $00,$00
            and (DOSINI,X)
            jsr LA2A5
            and (DOSVEC+1,X)
            ldx #$21
            asl
            ldx #$21
            ora #$A2
            and (WARMST,X)
            ldx #$21
            .byte $07
            ldx #$21
            asl L00A2
            .byte $80,$00,$00
LBF81       and (L00A2,X)
            jsr LA1A2
            jsr LA1A7+1
            jsr LA2AC
            jsr LA2A8
            jsr LA2AA+1
            jsr LA2A8
            and (HOLD1,X)
            jsr LA2AC
            jsr LA2A8
            jsr LA2AA+1
            jsr LA2A8
            jsr LA2AA
            jsr LA1A7+1
            jsr LA1A5+1
            jsr LA1A5+1
            jsr LA1A2+1
            .byte $80,$00,$00
            and (HOLD1,X)
            jsr LA1A2
            jsr LA1A7+1
            jsr LA1AC
            jsr LA1A7+1
            jsr LA1AB
            jsr LA1A7+1
            .byte $80,$00,$00
            and (LOMEM,X)
            jsr LA5A4+2
            and (HOLD1,X)
            jsr LA5AA+2
            .byte $80,$00,$00
            rts
            bvs LBFDF
            .byte $00,$00,$00
LBFDF       .byte $00,$00,$00,$00
            bvs LC04A
            ror L6F67
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            lda L0083,Y
            .byte $04,$D9,$BF
;
            org $02E2
;
            .word init
;
         
