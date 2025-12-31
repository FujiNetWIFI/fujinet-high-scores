;
            icl 'Popeye.inc'

        org $6000
        icl 'hiscore.asm'

; Start of code
;
            org $7FF8
;
            lda #$01
            sta LD600
            jmp COLDSV
L8000       .byte $00,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$00
            ora #$09
            ora #$09
            ora #$09
            ora #$00
            php
            php
            php
            php
            php
            php
            php
            .byte $00
            php
            pha
            pha
            bpl L8025+1
            pha
            pha
            rti
            bvs L807B
            ora #$09
L8025       ora L4E0D
            .byte $42
            lsr
            asl
            .byte $00,$00,$00,$00,$00,$82
            lsr
            lsr
            .byte $00,$00,$00,$00,$00,$42
            txa
            txa
            .byte $00,$00,$00,$00,$00,$02
            lsr
            lsr
            .byte $00,$00,$00,$00,$00
            rti
            bvs L80A3
            .byte $0B,$0B,$0F,$0F
            lsr L4C44
            .byte $0C,$00,$00,$00,$00,$00
            sty DSTAT
            jmp L0000
            .byte $00,$00,$00,$44
            sty.w L008C
            .byte $00,$00,$00,$00,$04
            jmp DSTAT
            .byte $00,$00,$00,$00
            rti
            ora #$09
            ora L560D
            lsr L465E,X
            lsr APPMHI,X
L807B       asl L4E4E
            asl L400E
            .byte $0B,$0B,$0F,$0F
            lsr OLDADR,X
            lsr L3040,X
            bmi L80BC
            sec
            sec
            .byte $23,$27
            rti
            bmi L80C3
            bmi L80CD
            sec
            and (ICBAHZ,X)
            rti
            sec
            sec
            jsr L3838
            sec
            sec
            .byte $00
            sec
            php
L80A3       clc
            php
            bpl L80C8
            and L0000
            asl L1E16,X
            asl L0E1E,X
            asl L3E06
            asl.w ABUFPT+2
            .byte $00,$00,$00,$02
            asl
            asl
            asl
L80BC       asl
            .byte $00
            asl
            asl
            .byte $04,$0C,$0C
L80C3       .byte $0C,$0C,$00,$0C,$0C
L80C8       .byte $00,$00
            clv
            clv
            clv
L80CD       clv
            clv
            clv
            .byte $00,$00
            sec
            sec
            sec
            sec
            sec
            sec
            sec
            sei
            sei
            sei
            sec
            sec
            .byte $00,$00
            sec
            sec
            sec
            sec
            .byte $00,$00,$00,$00
            sei
            sei
            sei
            sei
            sec
            sec
            sec
            sec
            sei
            sei
            sei
            sei
            sec
            sec
            sec
            sec
            .byte $1B
            sec
            sec
            sec
            sec
            sec
            sec
            sec
            .byte $00,$00,$04
            clc
            sec
            .byte $7A,$3F,$3F,$3F
            asl L5F38,X
            .byte $AF,$9B
            ldx LF8FC
            cpx #$18
            sei
            .byte $7C,$3C
            jmp (L6C6C)
            .byte $00
L811A       .byte $00,$00,$00,$00,$04
            clc
            sec
            .byte $7A,$3F,$3F,$3F
            asl L5C38,X
            ldy LEC98
            .byte $7C
            sei
            .byte $3C,$1F,$43,$3F,$1C,$1C,$1C
            php
            .byte $00
L8136       .byte $00,$00
            bpl L811A
            adc (ROWAC+1),Y
            jmp L4EFE
            plp
            .byte $3B,$13,$57
            cmp L00EF
            .byte $93
            lda LF0F8,Y
            inx
            sei
            .byte $3C,$5C
            jmp (BUFSTR)
L8150       .byte $00,$00,$00,$00
            bpl L8136
            adc (ROWAC+1),Y
            jmp L4EFE
            plp
            sec
            bpl L816E+1
            .byte $54,$6F,$F7,$7F
            sei
            sei
            bvs L81DF
            .byte $3C,$3C,$3C
            php
            .byte $00
L816C       .byte $00,$00
L816E       bpl L8150
            adc (ROWAC+1),Y
            jmp L4EFE
            plp
            bpl L8180
            .byte $5C,$7C,$7B,$7F,$7F
            cpy #$FC
            .byte $3C
L8180       ror L3676,X
            asl L0000
            .byte $00,$00,$00
L8188       .byte $00,$00
            bpl L816C
            adc (ROWAC+1),Y
            jmp L4EFE
            plp
            bpl L8194
L8194       clc
            .byte $3C,$3C,$3C,$3C
            clc
            .byte $3C
            sec
            clc
            clc
            clc
            clc
            .byte $00,$00,$00,$00,$00,$00
            bpl L8188
            adc (ROWAC+1),Y
            jmp L4EFE
            plp
            bpl L81C0
L81B0       jmp (LB4F4)
            .byte $BF,$FB,$C3,$FC,$3C
            rol DELTAR,X
            ror ICHIDZ
            .byte $00,$00,$00,$00
L81C0       cpy #$C0
            cpy #$C8
            ldx L009F,Y
            .byte $FF,$FF
            cmp L59D9,X
            .byte $5B,$4B,$53
            plp
            bcc L81B0+1
            sed
            sed
            cpy L0C4C
            asl RAMLO
            .byte $00,$00,$00,$00,$03
L81DD       .byte $03,$13
L81DF       adc LFB39
            .byte $FF,$FF,$BB,$9B
            txs
            .byte $DA,$D2
            dex
            .byte $14
            ora #$07
            .byte $1F,$1F,$33,$32
            bmi L8251+2
            jsr L0000
            .byte $00,$00,$00
            rti
            jsr L4060
            bvs L820F
            jsr L6220
            dec L00DE,X
            ldy LE0E0,X
            rts
            jsr L7040
            bvc L81DD
            bpl L820F
L820F       .byte $00,$00,$00,$00,$00,$00,$53,$23,$FB
            eor (CHKSNT),Y
            .byte $E3,$5B
            rol DINDEX,X
            .byte $14
            jmp (LE874)
            .byte $DC
            cmp LF7CB,X
            .byte $7F,$62,$22,$00,$00,$00,$00,$00,$00,$00,$00,$0C
            bpl L8251+1
            .byte $0C,$0C
            php
            .byte $00,$1C,$0C
            php
            sec
            sec
            sec
            .byte $00,$00,$00
            bit ICBALZ
            .byte $00,$00,$00,$00,$00,$00,$04,$03,$00
            jsr L00C0
            .byte $0C,$80
L8251       asl L0C04,X
            php
            .byte $00,$00,$00
            sec
            sec
            sec
            sec
            .byte $00,$00,$00
            bit ICBALZ
            .byte $00,$00,$00,$00,$00,$0C
            rol L6346
            .byte $43,$B3,$07,$0F
            ror LFCFC,X
            inc LFFFF,X
            .byte $FF,$FF
            ldx L7EE8,Y
            ror L4CEC
            .byte $0C,$00,$00,$00,$1C
            bpl L829F
            .byte $04
            clc
            jsr L7F78
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF
            ldx L7CE8,Y
            jmp (L46E6)
            .byte $04,$00,$00,$00,$00,$1C
            bpl L82B8+1
            .byte $04
            clc
L829F       jsr L7C78
            inc LFFFE,X
            .byte $FF,$FF,$FF,$FF
            ldx L7CE8,Y
            sec
            sec
            sec
            jsr L0000
            .byte $00,$00
            bvs L82C6
            bvs L82F7+1
L82B8       bmi L82C2
            sei
            .byte $7F,$FF,$FF,$FF,$FF,$FF,$FF
L82C2       .byte $FF
            ldx L7CE8,Y
L82C6       jmp (L46E6)
            .byte $04,$00,$00,$00,$00,$00,$00
            cmp (L00C1,X)
            cmp (L00DD,X)
            .byte $FF,$FF,$DF,$FF,$DF,$EB,$E3,$03,$03,$03,$03,$03,$03,$03,$02,$02
            ora (L0000,X)
            .byte $00,$00,$00,$00
            cmp (L00C1,X)
            cmp (L00DD,X)
            .byte $FF,$FF,$DF,$FF,$DF,$EB,$E3,$07,$0F
L82F7       asl L3C1E,X
            sei
            bvs L833D
            rti
            jsr L0000
            rts
            inc L00E7
            .byte $87
            sta (L00D3,X)
            .byte $CF,$D7,$CB,$D3,$C3,$C7,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            adc L7E15+2,X
            ror.w LTEMP,X
            .byte $00
            bmi L8391
            .byte $62
            cpy L00C2
            cpy LF0EC
            ror L3F3F,X
            .byte $7F,$FF,$FF,$FF,$FF,$7F
            asl L2F3F
            asl L1038,X
            bpl L8334
L8334       .byte $00,$00,$00
            bit L217F
            .byte $80
            rts
            rti
L833D       .byte $00,$00,$00,$00,$00,$00
            bit L217F
            .byte $00,$00,$00,$00,$00,$00,$00
            php
            asl
            ora L0505
            .byte $02,$00,$00,$00,$00
L8357       lda L386A,X
            sta L00F8
            lda L3814,X
            sec
            sbc #$2E
            lsr
            lsr
            clc
            adc #$98
            sta L00F6
            lda #$33
            sta L00F7
            ldx L0087
            dex
            txa
            rol
            rol
            tax
            stx L00F9
            ldy #$03
L8378       lda L83DD,X
            sta L00F0,Y
            inx
            dey
            bpl L8378
            ldy #$00
            sty L00F4
L8386       lda L00F6
            sec
            sbc L00F4
L838B       sta L00F6
            cmp #$DA
            bcc L8394
L8391       jsr L83A8
L8394       inc L00F4
            lda L00F6
            clc
            adc L00F4
            sta L00F6
            cmp #$F0
            bcs L83A4
            jsr L83A8
L83A4       inc L00F4
            bpl L8386
L83A8       ldx #$03
            lda (L00F6),Y
L83AC       cmp L00F0,X
            beq L83DC
            dex
            bpl L83AC
            pla
            pla
            ldx #$07
L83B7       lda L2128,X
            beq L83BF
            dex
            bne L83B7
L83BF       lda #$C0
            sta L2128,X
            lda L00F6
            sec
            sbc #$98
            sta L2130,X
            lda (L00F6),Y
            sta L2138,X
            lda L00F9
            clc
            adc L00F8
            tax
            lda L83DD,X
            sta (L00F6),Y
L83DC       rts
L83DD       cmp LDDDD,X
            cmp LB1B1,X
            lda (L00B1),Y
            .byte $E2,$E3
            cpx L00E5
L83E9       txa
            pha
            ldx #$07
            tya
L83EE       sta L3888,X
            dex
            bpl L83EE
            pla
            tax
            rts
L83F7       eor (TEMPCHR),Y
L83F9       bvs L838B
            .byte $9E,$82,$D4,$34,$FF,$00,$00,$04
            clc
            sec
            bvs L8407
L8407       .byte $00,$00,$00
            sec
            .byte $7C,$FC
            sec
            sec
            sec
            sec
            bmi L844B
            sei
            .byte $7C,$7C
            cpx LEFED
            .byte $87
L841A       .byte $00,$00,$00,$00,$04
            clc
            sec
            bvs L8423
L8423       .byte $00,$00,$00
            sec
            .byte $7C,$7C,$3C
            sec
            bmi L845D
            bmi L8467
            sec
            .byte $3C,$1C,$1C
            asl L1E1E,X
L8436       .byte $00,$00
            bpl L841A
            adc (CHKSUM),Y
            bmi L843E
L843E       bmi L8450
            .byte $00,$00
            pla
            .byte $FC,$FC
            sec
            sec
            sec
            bmi L8480+2
            sei
L844B       .byte $7C,$FC
            sbc L87EF,X
L8450       .byte $00,$00,$00,$00
            bpl L8436
            adc (CHKSUM),Y
            bmi L845A
L845A       bmi L846A+2
            .byte $00
L845D       .byte $00
            plp
            jmp (L6C7C)
            .byte $1C
            php
            pha
            rti
            sei
L8467       .byte $3C,$3C,$3C
L846A       rol.w FTYPE,X
            .byte $00
            bpl L8450
            adc (NGFLAG),Y
            bmi L8474
L8474       bmi L8486
            .byte $00
            sec
            .byte $7C,$3C
            bmi L84AC
            bmi L84B6
            .byte $3C,$3C
L8480       inc LF6F6,X
            .byte $67,$07,$07
L8486       .byte $00,$00
L8488       .byte $00,$00
            bpl L846A+2
            adc (NGFLAG),Y
            bmi L8490
L8490       bmi L84A2
            .byte $00
            sec
            .byte $3C
            bit L0C1C
            .byte $04
            bit ICBALZ
            sec
            clc
            clc
            clc
            clc
            .byte $1C,$1C
L84A2       .byte $00,$00,$00,$00
            bpl L8488
            adc (NGFLAG),Y
            bmi L84AC
L84AC       bmi L84BE
            .byte $00
            plp
            .byte $7C,$3C
            sec
            sec
            sec
            sec
L84B6       .byte $3C,$3C
            rol DELTAR,X
            .byte $E7,$E7
            ror FKDEF
L84BE       .byte $00,$00,$00,$00
            php
            rol.w ABUFPT,X
            .byte $00,$00
            sed
            .byte $7C,$7C,$7C,$7C
            ror LB83C,X
            sed
            sed
            sed
            cpy LCDCC
            .byte $47,$07
            asl CASINI
            .byte $00,$00,$00,$00
L84DE       bpl L855C
            and (L0000),Y
            .byte $00,$00,$00,$1F
            rol L3E3E,X
            ror L1D3C,X
            .byte $1F,$1F,$1F,$33,$33,$B3,$E2
            cpx #$60
            rti
            .byte $00,$00,$00
            bmi L8537
            bmi L8509
            .byte $00,$0C,$00,$14,$34,$7C,$3C,$1C,$3C,$1C,$1C,$1C
L8509       .byte $3C,$3F,$33,$F3,$83,$82,$03,$00,$00,$00,$00,$00
            bvc L8577
            cpy #$20
            rti
            clc
            jsr L0E44
            bit L7C7C
            .byte $3C,$1C
            ora L7F5F,X
            .byte $7F,$62
L8528       .byte $E3,$E3,$00,$00,$00,$00,$00
            php
            .byte $1C
            bmi L84DE+1
            rts
            bvs L8566
            .byte $00
L8537       .byte $7A,$62,$33,$33
L853B       and L3838,Y
            .byte $7C
            inc.w HOLDCH,X
            asl
            .byte $64
            cmp L00D7
            ror L0000,X
            .byte $00,$00,$00,$02,$02
            asl
            .byte $5A,$72,$E2
            rts
            .byte $72,$72,$62
            ror NOCKSM,X
            .byte $1C
            sec
            sec
            sec
            sec
L855C       .byte $7C
            inc.w HOLDCH,X
            asl
            .byte $64
            cmp L00D7
            ror L0000,X
L8566       bvs L8528
            ldy #$98
            clv
            pha
            .byte $7C,$7C
            lsr LF4EC
            inc L0707
            .byte $7F,$FF,$FF
L8577       inc L6E7E,X
            cpx LFFCF
            ror L0000,X
            .byte $1C,$22
            bit L3A22
            bit ABUFPT
            rti
            .byte $64,$F4
            sed
            .byte $DC,$1F,$03,$03,$03
            inc L7CFE,X
            jmp (LC6E6)
            .byte $E7,$E7,$00,$00,$1C,$22
            bit L3A22
            bit ABUFPT
            rti
            .byte $64
            inc L00F8,X
            ora L0701,Y
            .byte $7F,$FF,$FF
            inc L387C,X
            sec
            sec
            .byte $3C,$3C,$00,$00
            bvs L853B+2
            pla
            dey
            clv
            pha
            bvs L85FB
            .byte $64,$F4
            sed
            .byte $DC,$1F,$03,$03,$03
            inc L7CFE,X
            jmp (LC6E6)
            .byte $E7,$E7,$00,$00,$1C
            rol LFF3E,X
            .byte $FF,$FF,$E3,$E3,$F7,$FF,$FF,$3F,$1C,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$1C
            rol LFF3E,X
            .byte $FF,$FF,$E3,$E3,$F7,$FF,$FF,$3F,$1C,$04,$00,$00,$00,$00,$00,$00
L85FB       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            clc
            .byte $0C
            bpl L862F+2
            .byte $34
            bit L183C
            bit BUFSTR
            .byte $7C,$FF,$FF,$FF,$FF,$FF,$7F
            ror LFE7E,X
            ror L0E00,X
            .byte $03
            ora DOSVEC+1
            ora L3202
            rol L3772,X
            .byte $2F,$7F,$FF,$FC,$FC,$FC
            adc LF3B1,Y
            .byte $6F
L862F       dec L70F8,X
            jsr LE300
            ror XMTDON,X
            .byte $9E,$7C
            ldx L0608,Y
            .byte $04,$00,$00,$00,$00,$00,$00
            ldx L9F7B+1,Y
            .byte $1F
            and LE67B,X
            .byte $00,$00
            eor (L00C2,X)
            lsr
            lsr L00F5,X
            .byte $14
            php
            .byte $00,$00,$00,$00
            lda L00FF
            .byte $FF
            ror ICBALZ
            .byte $00,$00,$00,$00,$33,$22,$33,$22
            ror L00EE
            inc.w FMSZPG+1
            tax
            tax
            inc LAAAA
            .byte $00,$00,$00,$00,$00
            inc LCC88
            dey
            inc.w L0000
            .byte $00,$00,$00
            dey
            dey
            dey
            dey
            inc.w L0000
            .byte $00,$00,$00
            inc LEEAA
            dey
            dey
            .byte $00,$00,$00,$00
            jsr LA441
            lda #$11
            jsr LB8AE
            lda #$00
            sta POKMSK
            tay
            sta L0085
L869F       ldx #$00
L86A1       lda L87CF,Y
            sta L008A,X
            iny
            inx
            cpx #$06
            bne L86A1
            jsr L8DDD
            inc L0085
            lda #$11
            cmp L0085
            bne L869F
            lda #$00
            sta L00A0
            sta L00A1
            sta NMIEN
            lda #$25
            sta VVBLKD
            lda #$89
            sta VVBLKD+1
            lda #$C0
            sta NMIEN
            jsr LA68D
L86D2       lda #$00
            sta L2098
            sta L2099
            sta L2150
            lda #$0A
            sta L38C7
            sta L38C8
            lda #$01
            sta L2120
            sta L2121
            sta L0087
            lda #$02
            sta L2083
            lda #$1E
            sta L214C
            lda #$03
            sta SKCTL
            lda #$FF
            sta L2162
            sta L2163
            sta L38C1
            sta L38C2
            sta L215B
L870F       lda #$08
            sta L2156
            sta CONSOL
            lda CONSOL
            cmp #$05
            beq L8723
            lda #$02
            sta L214C
L8723       lda L214C
            bne L874B
            lda L20CA
            eor #$FF
            sta L20CA
            ldy #$03
            ldx #$00
            bit L20CA
            bmi L873B
            ldx #$03
L873B       lda #$00
            sta L00F6
            sta L00F7
            jsr LA0A2+1
            lda #$30
            sta L214C
            bne L870F
L874B       lda CONSOL
            cmp #$06
            bne L870F
            lda #$01
            sta L214A
            sta L214B
            lda #$18
            sta L215F
            lda #$05
            sta L0084
            lda #$00
            ldy #$06
L8767       sta L2086,Y
            dey
            bne L8767
            sta L00EA
            sta L214E
            sta L214F
            sta L2150
L8778       sta L2083
            sta L2097
            sta L2096
            sta L2000
            sta L200B
            sta L2001
            sta L200C
            sta L00FE
            sta L205A
            sta L2095
            sta L215A
            ldy #$03
L879A       sta L2104,Y
            dey
            bpl L879A
            sta L20C8
            sta L20C9
            lda #$84
            sta L2090
            sta L2091
            sta L2156
            lda #$01
            sta L20A1
            sta L2081
            sta L2160
            sta L2161
            lda #$63
            sta L00E3
            jsr LA68D
            jsr LA1E4+1
            jsr L885F
            jmp L8D28
L87CF       lsr L0097
            rol L009A,X
            .byte $00
            bpl L881B+1
            .byte $97
            rol L009A,X
            .byte $00,$14
            lsr L0097
            rol L009A,X
            .byte $00
            clc
            .byte $74,$8B,$13
            sty L1190
            bvs L8778
            .byte $A7
            bcc L8802+2
            asl L00DC,X
            .byte $8B
L87EF       .byte $04
            sty L1500
            adc (L0092,X)
            iny
            .byte $92
            inx
            .byte $1A
            tay
            bcc L8812+1
            sta (LOMEM),Y
            .byte $14,$DC,$8B,$13
L8802       sty L1880
            .byte $14
            sty L8CC4
            bvc L881D+1
            .byte $14
            sty L8CC4
            bvc L8828
            .byte $14
L8812       sty L8CC4
            bvc L8831+1
            and L0088,X
            eor L0088
L881B       bne L881D
L881D       eor L0088
            .byte $57
            dey
            rts
            jsr LA39E
            cmp L00A3
            .byte $80
L8828       and (L00BC,X)
            .byte $8B,$CB,$8B,$00
            ora L8857,Y
L8831       lsr L8887+1,X
            ora SAVADR,X
            and (WARMST),Y
            .byte $32
            tay
            .byte $32
            pha
            .byte $33
            sta L2D31
            .byte $32
            cmp L6D32
            .byte $33,$F7
            stx ICAX6Z,Y
            and (L0000),Y
            .byte $00
            inc L2D96
            and (L0000),Y
            .byte $00
            asl
            .byte $97,$03
            and (L0000),Y
            .byte $00
L8857       .byte $5F
            eor L5D5F,X
            ror LFEFD,X
            tsx
L885F       txa
            pha
            tya
            pha
            jsr L889A
            ldy L2123
L8869       jsr L8877
            dey
            bne L8869
            jsr L889A
            pla
            tay
            pla
            tax
            rts
L8877       bit L00FF
            bmi L8891
            lda L3877
            and #$1F
            bne L8891
            ldx #$07
L8884       lda L2128,X
L8887       beq L888E
            dec L2128,X
            beq L8897
L888E       dex
            bpl L8884
L8891       ldx #$00
L8893       dex
            bne L8893
            rts
L8897       jmp LB624
L889A       ldx #$0C
L889C       lda M3PF,X
            sta L3903,X
            dex
            bne L889C
            sta HITCLR
            rts
L88A9       bit L215A
            bvs L88C4
            lda L382A
            cmp #$1F
            beq L88C4
            jsr L88EC
            ldx L0087
            dex
            bit L00FF
            bpl L88C5
            lda #$80
            sta L2157
L88C4       rts
L88C5       lda #$00
            bit L2157
            bmi L88D4
            bit L2158
            bpl L88C4
            sta L2158
L88D4       sta L2157
            jsr L8914
            bit L2152
            bmi L88E7
            lda L8911,X
            jsr LB8AE
            bne L88C4
L88E7       lda #$13
            jmp LB8AE
L88EC       jsr L8D0C
            ldx #$07
            ldy #$00
L88F3       lda L2128,X
            beq L88FA
            ldy #$FF
L88FA       dex
            bpl L88F3
            sty L2152
            tya
            cmp L2153
            beq L890B
            lda #$80
            sta L2158
L890B       sty L2153
            jmp L8D13
L8911       .byte $14
            ora BUFADR+1,X
L8914       lda #$00
            ldy #$07
L8918       sta AUDF1,Y
            dey
            bpl L8918
            sta L225A
            sty L215B
            rts
            lda #$00
            sta NMIEN
            lda L2150
            sta DMACLT
            jsr LB921
            dec L214C
            bpl L893D
            lda #$30
            sta L214C
L893D       lda L0087
            cmp #$03
            bne L894D
            lda #$81
            sta VDSLST
            lda #$91
            sta VDSLST+1
L894D       lda L0087
            cmp L2083
            bne L895D
            jsr L88A9
            jsr LA904+1
            jmp L89F6
L895D       lda #$00
            sta L2122
            sta L2096
            sta L2097
            jsr L9A36
            lda L0087
            sta L2083
            lda #$02
            cmp L0087
            beq L897B
            bcs L897E
            jmp L9118
L897B       jmp L8E11
L897E       jsr L89FE
            lda #$E1
            sta L0088
            lda #$8A
            sta L0089
            jsr L8A13
            lda #$32
            sta VDSLST
            lda #$8A
            sta VDSLST+1
            lda #$53
            sta SDLSTL
            lda #$8B
            sta SDLSTH
            lda #$10
            sta CHBAS
            lda #$02
            sta COLOR4
            lda #$22
            sta COLOR0
            lda #$42
            sta COLOR1
            lda #$2D
            sta COLOR2
            lda #$4C
            sta COLOR3
            lda #$BB
            sta L00EC
            lda #$BC
            sta L00EB
            lda #$01
            sta L2056
            lda #$00
            sta L2080
            sta L2055
            sta L00FE
            sta L2147
            lda #$31
            sta L2063
            sta L206F
            sta L00B7
            lda #$03
            sta L206E
            sta L00B6
            lda #$2F
            sta L2062
            jsr LA491
L89F1       lda #$3E
            sta L2150
L89F6       lda #$C0
            sta NMIEN
            jmp XITVBV
L89FE       bit L3910
            bpl L8A12
            jsr LA1A6
            jsr LB022
            lda #$00
            sta L214E,X
            sta L00A0
            sta L00A1
L8A12       rts
L8A13       sta L0089
            jsr L92C9
            jsr LA170
            jsr LA491
            bit L2156
            bpl L8A26
            jsr L8AD5
L8A26       lda #$00
            sta L00F6
            sta L00F7
            jsr LA0A2+1
            jmp LB88E+1
            pha
            sta WSYNC
            lda #$E6
            sta COLPF0
            lda #$84
            sta COLPF1
            lda #$38
            sta COLPF2
            jsr L8CC5
            lda #$54
            sta VDSLST
            lda #$8A
L8A4F       sta VDSLST+1
            pla
            rti
            pha
            sta WSYNC
            lda #$24
            sta COLPF0
            lda #$42
            sta COLPF1
            lda #$2D
            sta COLPF2
            lda #$70
            sta VDSLST
            lda #$8A
            bne L8A4F
            jsr L8D0C
            ldx L3875
            inc L3875
            ldy #$02
L8A7B       lda L3818,X
            sta HPOSM0,Y
            sec
            sbc #$02
            sta HPOSM1,Y
            inx
            dey
            dey
            bpl L8A7B
            inc L3875
            cpx #$04
            bne L8A9C
            lda #$70
            sta VDSLST
L8A98       lda #$8A
            bne L8AAB
L8A9C       ldy L0087
            dey
            tya
            asl
            tay
            lda L8AB2,Y
            sta VDSLST
            lda L8AB3,Y
L8AAB       sta VDSLST+1
            jsr L8D13
            rti
L8AB2       clv
L8AB3       txa
            stx L008E
            .byte $B3
            sta (FMSZPG+5),Y
            sta WSYNC
            lda #$E6
            sta COLPF0
            lda #$84
            sta COLPF1
            lda #$38
            sta COLPF2
            lda #$32
            sta VDSLST
L8AD0       lda #$8A
            jmp L8A4F
L8AD5       jsr L8914
            ldx L0087
            dex
            lda L8911,X
            jmp LB8AE
            .byte $5F,$93
            ora (STATUS,X)
            stx L0093
            rol
            bmi L8A98+1
            .byte $93,$44
            bmi L8AD0
            .byte $93
            clc
            and (L00EE),Y
            .byte $93
            and (CHKSUM),Y
            .byte $FA,$93,$27
            and (L00FF),Y
            .byte $93
            bvs L8B2E
            .byte $FF,$93
            sta CHKSUM
            .byte $07
            sty RAMTOP,X
            and (BRKKEY),Y
            sty L008A,X
            and (ABUFPT),Y
            sty L00B8,X
            and (ABUFPT),Y
            sty SAVMSC,X
            .byte $32,$1C
            sty L00F8,X
            .byte $32
            and (L0094,X)
            .byte $C3
            and (ICPTLZ),Y
            sty L00B8,X
            and (ICPTLZ),Y
            sty SAVMSC,X
            .byte $32
            rol L0094
            asl L2633
            sty L00F8,X
            .byte $32
            and LDA94,X
            and (BPTR),Y
L8B2E       sty KEYDEF+1,X
            .byte $32
            and L0494,X
            .byte $33
            and L1A94,X
            .byte $33,$5A
            sty DSKUTL+1,X
            .byte $32,$67
            sty L0098,X
            .byte $33,$00,$97,$03
            and (L00EE),Y
            stx ICAX6Z,Y
            and (INSDAT),Y
            stx STATUS,Y
            .byte $32
            adc LD096,X
            .byte $32,$00,$00
            bvs L8BC5
            bvs L8B9B
            .byte $00
            bmi L8B5E
            .byte $04,$04,$04,$04
L8B5E       sty RAMLO
            sty RAMLO
L8B62       .byte $04,$04
            sty RAMLO
            .byte $04,$04,$04
            sty RAMLO
            .byte $04,$04,$04
            sty RAMLO
            .byte $04
            eor (RMARGN,X)
            .byte $8B
            eor COLCRS,X
            eor CASINI,X
            .byte $00,$00,$02
            asl
            eor COLCRS,X
            eor L00A0,X
            .byte $80,$80
            ldy #$28
            plp
            plp
            .byte $22,$22
            plp
            plp
            asl
            .byte $02
            txa
            txa
            ldx #$A2
            txa
            txa
            plp
            ldy #$55
            eor COLCRS,X
            .byte $03,$0C,$03,$3F
L8B9B       .byte $FF
            eor COLCRS,X
            eor L00C0,X
            bmi L8B62
            .byte $FC,$FF
            cmp COUNTR+1,X
            .byte $FF
            cmp COUNTR+1,X
            .byte $FF
            cpy #$3F
            .byte $57
            sbc L57FF,X
            sbc L03FF,X
            .byte $FC
            tax
            tax
            .byte $FF
            tax
            tax
            .byte $FF
            tax
            tax
            .byte $FF
            cmp LDDEE,Y
            inc L00FF
            bit NOCKSM
            .byte $3C
L8BC5       bit L00FF
            .byte $67,$BB,$77,$9B,$FF,$00,$00,$00,$03
L8BD0       .byte $0C,$03,$3F
L8BD3       .byte $FF,$00,$00,$00
            cpy #$30
            cpy #$FC
            .byte $FF,$00,$FF
            beq L8BD0
L8BE0       .byte $FF
            beq L8BD3
L8BE3       beq L8BE5
L8BE5       cpy #$C3
            .byte $C3
L8BE8       cpy #$03
L8BEA       .byte $03,$00,$00,$00
            beq L8BE0
            .byte $00
            beq L8BE3
            .byte $00,$00,$FF
            beq L8BE8
            .byte $FF,$FF,$F3
            beq L8BFD
L8BFD       cpy #$C3
            .byte $C3
            cpy #$03
            .byte $C3
            beq L8C5A
            eor COLCRS,X
            sbc LBD3D,X
            and.w L00FD,X
            .byte $00,$00
            cpy LFFFF
            .byte $3C,$0C,$00
            bpl L8C1B+1
            ora L00D5
            .byte $D7,$F7
L8C1B       sbc L0000
            .byte $00,$23,$43,$C3,$33,$FF,$0F,$EF
            inc L00C9
            sbc LE939,Y
            rol
            tay
            dec LA331+2
            .byte $BF
            sty.w L0000
            .byte $00
L8C34       tax
            tax
            rol
            asl
            asl
            rol
            inc.w FEOF
            .byte $80
            ldy #$A0
            .byte $80,$80
            beq L8C34
            .byte $00,$04
            ora (NGFLAG,X)
            cmp L00F5
            sbc.w L00CB,X
            .byte $00,$44
            bvc L8CC1
            cpy LC3FF
            .byte $CB
            cmp #$E6
            inc L00C6
            rol
L8C5A       rol
            tay
L8C5C       beq L8BEA
            rts
            pla
            jmp (IOCB2+ICSTA)
            .byte $03,$03,$83
            ldy L83AC
            .byte $80
            beq L8C5C
L8C6C       .byte $00,$00
            cpy L00C1
            .byte $C3
            cpy LF0FF
            .byte $00
            ora TEMPCHR
            bvc L8CCB+2
            .byte $D4
            bne L8C6C
            .byte $C3
            cpy LFECA
            .byte $32,$00,$00,$00
            sed
            tya
            pla
            jmp (L636C)
            .byte $AF
            bit VDSLST
            asl
            asl
            .byte $02,$02,$0F,$0F
            clv
            clv
            ldy LA0A0
            tay
            clv
            .byte $FC,$00,$00
            ora (RAMLO+1),Y
            ora LFF33
            .byte $C3,$00
            bpl L8CE7
            rti
            .byte $53,$5F,$4F,$E3,$0F,$32
            ora #$29
            and LC0C9,Y
            cpy #$E3
            .byte $63,$9C,$9C,$93
            tay
            tay
            rol
            cpy #$C2
            .byte $3A,$3A,$C2
L8CC1       .byte $02,$0F,$0F
L8CC4       .byte $00
L8CC5       lda L3814
            sta HPOSP0
L8CCB       sta HPOSP1
            lda L3879
            beq L8CDD
            lda L00C9
            sta HPOSP0
            lda L00CA
            sta SIZEP0
L8CDD       lda L00A0
            bne L8CE5
            lda L00A1
            beq L8CF7
L8CE5       dec L00A0
L8CE7       bne L8CEB
            dec L00A1
L8CEB       lda #$48
            sta COLPM0
            lda #$44
            sta COLPM1
            bne L8D0B
L8CF7       sta L00FF
            lda L215A
            and #$7F
            sta L215A
            lda #$4F
            sta COLPM0
            lda #$74
            sta COLPM1
L8D0B       rts
L8D0C       stx L00ED
            sty L00EE
            sta L00EF
            rts
L8D13       ldx L00ED
            ldy L00EE
            lda L00EF
            rts
L8D1A       lda #$05
            sta L0085
            lda #$0A
            sta L0086
            lda #$79
            sta L2108
            rts
L8D28       jsr L8D1A
L8D2B       jsr L8D74
            jsr L8D62
            bne L8D40
            jsr L9B9B
            jsr L9D0E
            jsr L9D8C
            lda #$05
            sta L0085
L8D40       jsr LB6E7
            jsr L8D50
            lda L0087
            cmp #$02
            beq L8D94
            bcc L8D2B
            bcs L8DB4
L8D50       jsr L9F8F
            jsr LB780
            jsr LB81D
            jsr LA52A
            jsr LA355+1
            jmp LA3C6
L8D62       lda #$00
            sta ATRACT
            dec L0086
            bne L8D71
            jsr LA2D0
            lda #$0A
            sta L0086
L8D71       dec L0085
            rts
L8D74       jsr L885F
            dec L2108
            bne L8D91
            jsr LA1F0
            jsr LB022
            lda L2162,X
            sta L2108
            lda L0087
            cmp #$02
            bne L8D91
            jsr LB872
L8D91       rts
L8D92       bcc L8D28
L8D94       jsr L8D1A
L8D97       jsr L8D74
            jsr L8D62
            bne L8DA6
            jsr L9B9B
            lda #$05
            sta L0085
L8DA6       jsr LB714
            jsr L8D50
            lda #$02
            cmp L0087
            beq L8D97
            bcc L8D92
L8DB4       jsr L8D1A
L8DB7       jsr L8D74
            jsr L8D62
            bne L8DC9
            jsr L9B9B
            jsr L9A4E
            lda #$05
            sta L0085
L8DC9       jsr LB729
            jsr L8D50
            lda L0087
            cmp #$02
            beq L8DDA
            bcs L8DB7
            jmp L8D28
L8DDA       jmp L8D94
L8DDD       pha
            tya
            pha
            lda L008A
            pha
            lda L008B
            pha
            ldy #$00
L8DE8       lda (L008A),Y
            sta (L008E),Y
            lda L008A
            cmp L008C
            bne L8DF8
            lda L008B
            cmp L008D
            beq L8E07
L8DF8       inc L008A
            bne L8DFE
            inc L008B
L8DFE       inc L008E
            bne L8E04
            inc L008F
L8E04       jmp L8DE8
L8E07       pla
            sta L008B
            pla
            sta L008A
            pla
            tay
            pla
            rts
L8E11       jsr L89FE
            lda #$6B
            sta VDSLST
            lda #$8E
            sta VDSLST+1
            lda #$4F
            sta SDLSTL
            lda #$8F
            sta SDLSTH
            lda #$14
            sta CHBAS
            sta SIZEP0
            lda #$00
L8E32       sta COLOR4
            lda #$08
            sta COLOR0
            lda #$68
            sta COLOR1
L8E3F       lda #$E6
L8E41       sta COLOR2
            lda #$2D
            sta COLOR3
            lda #$99
            sta L0088
            lda #$8E
            jsr L8A13
            jsr LA371
            lda #$E8
            sta L00EC
            lda #$E9
            sta L00EB
            lda #$00
            sta L214D
L8E62       sta L2093
            sta L2147
            jmp L89F1
L8E6B       pha
            sta WSYNC
L8E6F       lda #$24
            sta COLPF0
            lda #$84
            sta COLPF2
            jsr L8CC5
            lda #$70
            sta VDSLST
            lda #$8A
            jmp L8A4F
            pha
            sta WSYNC
            lda #$84
            sta COLPF1
            lda #$6B
            sta VDSLST
            lda #$8E
            jmp L8A4F
            .byte $5F,$93
            ora (STATUS,X)
            bvs L8E32+1
            .byte $44
            and (ROWAC),Y
            sty L00E4,X
            and (ROWAC),Y
            sty L0084,X
            .byte $32
            bvs L8E3F
            bit BUFRHI
            sta (L0094,X)
            dex
            bmi L8E41+1
            sty FMSZPG+3,X
            and (L0090),Y
            sty DSTAT,X
L8EB8       and (L0090),Y
            sty LMARGN,X
            and (L0090),Y
            sty L00E6,X
            and (L0090),Y
            sty L00EC,X
            and (L0090),Y
            sty L00F2,X
            and (L0090),Y
            sty L0086,X
            .byte $32
            bcc L8E62+1
            sty L9032
            sty L0092,X
            .byte $32
            bcc L8E6B
            rol BUFRHI
            bcc L8E6F
            bit L9033
            sty BUFRLO,X
            .byte $33
            ldy #$94
            lsr STATUS,X
            cmp (L0094,X)
            ror
            bmi L8EB8
            sty BITMSK,X
            bmi L8F15+2
            sta ICAX5Z,X
            and (CASINI),Y
            sta STATUS,X
            and (DSKUTL+1),Y
            sta L00BA,X
            and (DOSINI),Y
            sta L00BC,X
            and (ICBALZ),Y
            sta SAVMSC,X
            .byte $32
            ora (L0095),Y
            .byte $5C,$32,$07
            sta BUFSTR,X
            .byte $32,$02
            sta ROWAC,X
            .byte $32
            asl L0095,X
            inc SSKCTL,X
            sta POKMSK,X
            .byte $33
L8F15       and L6395
            and (BUFCNT),Y
            sta WARMST,X
            .byte $32
            adc L0095,X
            bit L3732
            sta KEYDEF+1,X
            .byte $32,$37
            sta DSKUTL,X
            .byte $33,$54
            sta L0098,X
            .byte $33
            eor LC295,Y
            and (SAVMSC+1),Y
            sta CASINI,X
            .byte $33
            eor L0E95,Y
            .byte $33
            ror L0095
            cpy #$33
            .byte $80
            stx LOMEM,Y
            .byte $32
            cpy L0096
            sei
            bmi L8F65
L8F46       sta DELTAC,X
            .byte $32,$1F
            sta ICCOMT,X
            .byte $33,$00,$00
            bvs L8FC1
            bvs L8F97
            .byte $00
            bmi L8F5A
            .byte $04,$04,$04,$04
L8F5A       sty RAMLO
            .byte $04,$04,$04
            sty RAMLO
            .byte $04,$04,$04,$04
L8F65       sty RAMLO
            .byte $04,$04,$04
            sty RAMLO
            .byte $04
            eor (COLRSH,X)
            .byte $8F,$00,$00,$00,$00,$00,$00,$14
L8F77       ora OLDADR+1,X
            .byte $3F
            and LFFFF,X
            .byte $FF,$3F,$0F
            cpy #$F0
            .byte $FC,$FC,$7C
            bne L8F77
            cpy #$00
            .byte $00,$00
            bpl L8FE1
            sbc LF0FD,X
L8F90       asl LFE3E
L8F93       inc LFAFA,X
L8F96       .byte $FA
L8F97       .byte $FA
            bcs L8F46
            ldy LABAA+1
            .byte $AB
            tax
            tax
            beq L8F90+2
            beq L8F93+1
            beq L8F96
            .byte $00,$00,$FA,$FA,$FA,$FA,$5A
L8FAD       ora RTCLOK+2,X
            .byte $14
            tax
            tax
            tax
            tay
            bcc L9006
            bvc L9007+1
            .byte $00,$00,$00,$00,$00,$00
            ora COLCRS
            .byte $00
L8FC1       .byte $00,$00,$00
            ora COLCRS
            eor COLCRS,X
            .byte $FF,$FF
            sbc COLCRS,X
            eor COLCRS,X
            .byte $57,$7F,$F7
            eor COLCRS,X
            eor DINDEX,X
            .byte $7F,$FF,$FF,$14,$17,$1F,$3F
            eor COLCRS,X
            .byte $54
            bpl L9060
L8FE1       sbc L55D5,X
            .byte $54
            rti
            .byte $00,$00
            eor COLCRS,X
            lsr CRITIC,X
            asl
            plp
            ldy #$80
            .byte $54
            rti
            .byte $80,$80
            ldy #$28
            asl
            .byte $02,$00,$00,$00,$00,$03,$03,$03,$03,$0F,$3F,$FF,$FF,$FF,$FF
L9006       .byte $FF
L9007       inc LEFFF,X
            .byte $EB
            inc LEBEE
            .byte $AF,$EB
L9010       cpy #$C0
            beq L9010
            .byte $FC,$FF,$FF,$FF,$03,$03,$03,$03,$00,$00,$00,$00
            inc LFFFE,X
            .byte $FF
L9024       inc L0F3F,X
            .byte $00
            inc LABED+1
            .byte $EF,$EF,$AF,$FF
            jsr LFFFF
L9032       .byte $FC
L9033       .byte $FC
            beq L9024+2
            .byte $00,$00,$00
            plp
            rol
            rol
            .byte $AF,$BF
            ldy.w FEOF,X
            ldy #$A0
            ldy #$F0
            .byte $FC
            cpy L65FC
            eor L5959,Y
            eor L5959,Y
            eor LF333,Y
            .byte $FC,$03,$23
            plp
            rol
L9057       tax
            .byte $FC
            beq L9057
            .byte $3C,$22
            tax
            ldx #$AA
L9060       eor LF5F5,Y
            sta L0095,X
            eor L0095,X
            sta L00A0,X
            ldx #$A2
            .byte $F2,$3C,$00,$00,$00
            tax
            tax
            tax
            tax
            .byte $AF,$FF,$00,$00,$80,$80
            ldx #$AA
            .byte $FF,$FC,$00,$00,$00,$80
L9082       sta COLCRS,X
            .byte $00,$00,$00,$00,$FF,$FF
            eor COLCRS,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF
            eor COLCRS,X
            .byte $CF,$33,$33,$CF,$3C,$3C,$FF
            sbc L00FA,X
            sbc L00FF,X
            .byte $FF,$FF,$FF,$5F,$AF,$5F,$FF,$3C,$3C,$54,$5C,$3C,$0F,$0F,$00,$00
            .byte $00
            bvc L9082
            beq L90F0
            .byte $0F,$00,$00,$00
            bpl L910F
            eor COLCRS,X
            ora NGFLAG,X
            .byte $00,$00,$00,$00
            bvc L9118+1
            eor COLCRS,X
            ora NGFLAG,X
            .byte $00,$00,$00,$00
            bvc L9121+2
            eor COLCRS,X
            .byte $00,$00,$00,$00,$00,$00
            bvc L912B+2
            ora NGFLAG,X
            .byte $02,$02
            asl
            plp
            ldy #$80
            eor COLCRS,X
            sta LOMEM+1,X
            ldy #$28
            asl
            .byte $02,$5F
            eor COLCRS,X
            eor L00D5,X
            sbc LFFFF,X
L90F0       .byte $FF,$FF,$5F,$57
            eor ENDPT+1,X
            cmp L00F7,X
            .byte $FF,$FF,$00,$FF,$FF,$00,$FF,$FF
            eor COLCRS,X
            eor COUNTR+1,X
            .byte $73,$7B,$73,$7F,$0F,$0C,$0F,$0C,$3C,$FC,$FC
L910F       bmi L910F+1
            .byte $03,$FF,$03,$0F,$3F,$3F,$0C
L9118       jsr L89FE
            lda #$C6
            sta L0088
            lda #$91
L9121       jsr L8A13
            lda #$81
            sta VDSLST
            lda #$91
L912B       sta VDSLST+1
            lda #$40
            sta SDLSTL
            lda #$92
            sta SDLSTH
            lda #$18
            sta CHBAS
            lda #$86
            sta COLOR4
            lda #$1C
            sta COLOR2
            lda #$00
            sta L2147
            sta COLOR0
            lda #$22
            sta COLOR1
L9154       lda #$BA
            sta COLOR3
            lda #$A0
            sta L00EC
            lda #$A1
            sta L00EB
            lda #$DE
            sta L20C4
            lda #$96
            sta L20C5
            lda #$C6
            sta L20C6
            lda #$31
            sta L20C7
            lda #$14
            sta L20C2
            lda #$F0
            sta L00BF
            jmp L89F1
DLI0        pha
            sta WSYNC
            jsr L8CC5
            lda #$92
            sta VDSLST
            lda #$91
            jmp L8A4F
DLI1        pha
            sta WSYNC
            lda L3816
            sta HPOSP2
            sta HPOSP3
            lda #$4F
            sta COLPM2
            lda #$C0
            sta COLPM3
            lda #$70
            sta VDSLST
            lda #$8A
            jmp L8A4F
            pha
            sta WSYNC
            lda #$82
            sta COLPF0
            lda #$81
            sta VDSLST
            lda #$91
            jmp L8A4F
            .byte $5F,$93
            ora (STATUS,X)
            sta L0095
            .byte $8B
            bmi L9154
            sta CASINI+1,X
            and (L0085),Y
            sta L00A3,X
            and (L0085),Y
            sta FMSZPG,X
            .byte $32,$92
            sta BITMSK,X
            .byte $32
            txs
            sta L00B9,X
            .byte $32
            ldy L0095,X
            sed
            .byte $32,$DF
            sta RMARGN,X
            .byte $33
            inx
            sta BUFADR+1,X
            .byte $33,$0B
            stx L0098,Y
            .byte $33,$23
            stx L00BF,Y
            and (ICSTAZ),Y
            stx OLDROW,Y
            .byte $32,$32
            stx L00D6,Y
            and (BUFRLO),Y
            stx DELTAC,Y
            .byte $32,$44
            stx ICCOMZ,Y
            and (FMSZPG+6),Y
            stx ICAX2Z,Y
            and (FMSZPG+1),Y
            stx ICAX4Z,Y
            and (ATRACT),Y
            stx L00BE,Y
            and (FKDEF+1),Y
            stx L00C3,Y
L9215       and (LMARGN),Y
            stx L00D1,Y
            and (DINDEX),Y
            stx OLDADR,Y
            .byte $32
            eor #$96
            .byte $6B,$32,$5C
            stx ROWAC+1,Y
            .byte $32,$52
            stx SWPFLG,Y
            .byte $32
            adc (L0096,X)
            asl BUFRHI
            .byte $5C
            stx POKMSK,Y
            .byte $33
            ror L0096
            .byte $FA
            bmi L9215
            stx L00C7,Y
            and (RTCLOK+2),Y
            .byte $97,$6F
            bmi L923F
L923F       .byte $00
            bvs L92B2
            bvs L9288
            .byte $00
            bmi L924B
            .byte $04,$04,$04,$04
L924B       sty RAMLO
            .byte $04
            sty RAMLO
            .byte $04
            sty RAMLO
            .byte $04,$04,$04
            sty RAMLO
            .byte $04,$04,$04
            sty RAMLO
            .byte $04
            eor (FREQ,X)
            .byte $92,$0F,$3F,$FF,$FF,$FF,$FF
L9267       .byte $3F,$0F
            beq L9267
            .byte $FF,$FF,$FF,$FF,$FC
L9270       beq L9270+1
            .byte $00,$FF,$EB,$EB,$FF,$00,$FF
            tax
            tax
            .byte $FF
            tax
            tax
            .byte $FF
            tax
            tax
            .byte $00,$00,$00,$3F,$3F,$3F,$3F
L9288       .byte $3F
            inc LFEEE
            inc LAAED+1
            tax
            tax
            inc LFAEA,X
            nop
            inc LAAAA,X
            tax
            nop
            nop
            nop
            nop
            inc LAAAA,X
            tax
            inc LFEEE,X
            nop
            nop
            tax
            tax
            tax
            tax
            .byte $80,$80,$80
            tax
            .byte $80,$80,$80
            tax
L92B2       .byte $02,$02,$02
            tax
            .byte $02,$02,$02,$00,$00,$00,$00
            tax
            .byte $80,$80,$80,$00,$00,$00,$00
            tax
            .byte $02,$02,$02
L92C9       txa
            pha
            ldy #$00
L92CD       lda (L0088),Y
            sta LOMEM
            iny
            lda (L0088),Y
            sta LOMEM+1
            bne L92DB
            pla
            tax
            rts
L92DB       iny
            lda (L0088),Y
            sta L0082
            iny
            lda (L0088),Y
            sta L0083
            sty L1D07
            ldy #$00
            lda (LOMEM),Y
            tax
            stx L1D05
            iny
L92F1       lda (LOMEM),Y
            pha
            iny
            dex
            cpx #$00
            bne L92F1
L92FA       lda (LOMEM),Y
            cmp #$FF
            bne L9325
            iny
            lda (LOMEM),Y
            iny
            sty L1D08
            pha
            lda (LOMEM),Y
            tay
L930B       sty L0084
            txa
            tay
            pla
            sta (L0082),Y
            pha
            tya
            tax
            ldy L0084
            inx
            dey
            cpy #$00
            bne L930B
            ldy L1D08
            iny
            pla
            jmp L9333
L9325       pha
            sty L0084
            txa
            tay
            pla
            sta (L0082),Y
            tya
            tax
            ldy L0084
            inx
            iny
L9333       pla
            sta L1D06
            pha
            cpx L1D06
            bne L935C
            pla
            dec L1D05
            lda #$00
            cmp L1D05
            bne L934F
            ldy L1D07
            iny
            jmp L92CD
L934F       ldx #$00
            lda L0082
            clc
            adc #$28
            sta L0082
            bcc L935C
            inc L0083
L935C       jmp L92FA
            ora (ICBAHZ,X)
            .byte $02,$00,$0B,$0C,$00
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00,$00,$00
            ora L0C0E
            .byte $00
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $00,$00,$03,$00,$0B,$0C,$00
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            asl CMCMD
            .byte $07,$07,$07
            php
            .byte $07,$00,$FF
            asl L0F06,X
            bpl L93A5
            bpl L93A7+1
            .byte $13,$12,$0F,$00,$FF,$14
            asl L0000
            .byte $14,$14
            ora BUFADR,X
            .byte $14,$14,$00
L93A5       .byte $14,$14
L93A7       ora BUFADR,X
            .byte $14,$14,$00,$FF,$14
            asl TRAMSZ
            ora #$09
            ora #$09
            asl
            ora #$00
            .byte $FF
            asl L0F08,X
            asl ICCOMT,X
            clc
            ora L1B1A,Y
            .byte $1C
            ora.w APPMHI+1,X
            .byte $1F,$FF
            bit TRAMSZ
            .byte $1F,$00,$1F,$00,$3F
            rti
            eor (L0000,X)
            .byte $00,$1F,$00,$1F,$00,$42,$43
            eor (L0000,X)
            .byte $00,$1F,$00,$1F,$FF
            asl L1F06,X
            .byte $02,$0C,$0F,$FF,$23,$0F,$FF,$00,$07,$FF,$1F
            ora CASINI
            php
            .byte $0F,$FF,$23,$0F,$00,$00,$00,$FF,$1F
            ora NGFLAG
            asl
            .byte $FF
            bit DOSVEC
            .byte $02,$02,$03
            and APPMHI+1
            and L0000
            .byte $0F,$02,$03,$04
            rol ABUFPT+2
            .byte $27
            asl.w ICBLLZ,X
L9410       and #$02
            .byte $04,$04
            asl L1E27,X
            rol
            .byte $00
            and #$00
            .byte $2B
            ora (ICBLLZ,X)
            .byte $FF
            bit L0128
            .byte $12,$FF,$00,$12,$04
            asl RAMLO+1
            .byte $04,$03,$0F
            and L2E2D
            .byte $0F
            and L0F2D
            rol L2D0F
            and L0F2E
            rol L2D0F
            and L0604
            asl TRAMSZ
            asl ICAX3Z
            bit L2D2C
            and.w APPMHI+1
            .byte $00
            and L0F2D
            rol L2D00
            and L2E0F
            .byte $0F
            and L0F2D
            rol L2E0F
            .byte $04,$02,$02,$02,$02,$2F
            bmi L9491
            bmi L9493
            bmi L9495
            bmi L946A
            plp
            plp
L946A       .byte $FF
            lda (ICBLLZ),Y
            .byte $FF
            ora L0428,X
            .byte $14,$14,$14,$14,$FF,$1F,$14,$FF,$1F,$14,$FF,$1F,$14,$FF,$1F,$14
            .byte $03
            asl DSKFMS,X
            clc
            .byte $FF,$8F
            clc
            .byte $FF,$8F
            clc
            .byte $00,$00,$FF,$1F,$14,$03
L9491       .byte $04,$04
L9493       .byte $04,$B2
L9495       ldy LB2AB+1
            .byte $B2,$00,$00,$B2,$B2,$B3,$B3,$B2,$02
            bpl L94B0+1
            ldy L0000,X
            .byte $00
            ldy L00B5,X
            .byte $00,$00
            ldy L0000,X
            .byte $00
            ldy L00B5,X
            .byte $00
L94B0       ldy L0000,X
            ldy L00B5,X
            .byte $00,$00
            ldy L00B5,X
            .byte $00
            ldy L00B5,X
            .byte $00,$00
            ldy L0000,X
            ldy L00B5,X
            .byte $03,$03,$03,$03,$00
            ldx L00B7,Y
            .byte $00
            clv
            lda LBBBA,Y
            ldy L0A06,X
            asl
            asl
            asl
            asl
            .byte $04,$00,$00,$B2,$B2,$FF,$8F
            asl
            .byte $00,$B2,$FF
            ldy LB206
            .byte $B2,$00,$B2,$00
            jsr L2221
            .byte $00,$00,$B2,$B2,$00,$B2,$00,$23
            bit ICCOMZ
            .byte $00,$00,$B2,$B2,$00,$B2,$FF,$B3
            asl L00B2
            .byte $B2,$00,$FF,$B2
            ora #$01
            .byte $07,$FF
            lda CMCMD
            ora (RAMLO,X)
            .byte $FF
            rol L0104,X
            asl L3EFF
            asl L0C01
            .byte $FF
            rol L010C,X
            .byte $12,$FF
            rol L0112,X
            .byte $02
            lda L00A5
            ora (CASINI+1,X)
            lda L00A5
            lda NGFLAG
            .byte $04,$FF
            lda RAMLO
            ora (CASINI,X)
            rol TMPSIO,X
            ora RAMLO+1
            .byte $FF,$B2
            ora L0000
            .byte $FF,$B2,$04,$04
            asl TRAMSZ
            asl TRAMSZ
            lda L00A5
            lda L00AD
            lda.w L008F
            .byte $00
            lda L8FAD
            ldx LAD00
            lda LAE8F
            .byte $8F
            lda L8FAD
            ldx LAE8F
            ora (ICBLLZ,X)
            .byte $FF,$3F
            plp
            .byte $04,$02,$02,$02,$02
            rti
            eor (FREQ,X)
            eor (FREQ,X)
            eor (FREQ,X)
            eor (NGFLAG,X)
            plp
            .byte $FF,$1F
            plp
            .byte $02,$03,$04
            ldx L009E
            .byte $A7,$9E
            tay
            .byte $00
            lda #$02
            .byte $04,$04,$9E,$A7,$9E
            tax
            .byte $00
            lda #$00
            .byte $AB
            ora (ICBLLZ,X)
            .byte $FF,$1F
            plp
            .byte $04,$02,$02,$02,$02,$32,$32,$32,$32,$32,$32,$32,$32,$02,$02,$03
            .byte $43,$44
            eor L0000
            lsr RAMLO
            .byte $07,$07,$07
            php
            .byte $FF,$1F
            php
            .byte $00,$32,$FF,$47,$03,$32,$32,$00,$5A,$5B,$5B,$5B,$5A,$5A,$00,$FF
            .byte $32
            asl RAMLO
            .byte $0B,$0B,$0B,$0B,$5C
            pha
            pha
            eor #$4A
            lsr
            .byte $1F
            lsr
            lsr
            lsr
            .byte $5B,$00,$00,$00,$4B,$00,$47,$32,$1F,$32,$32,$0F,$00,$00
            jmp L4E4D
            .byte $00,$00,$47,$1F,$32,$4F,$FF,$00
            ora #$1F
            .byte $32,$02,$13,$13,$FF,$4F,$13,$FF,$32,$13,$04,$07
            asl CMCMD
            asl
            .byte $5B,$5B
            bvc L963B
            lsr
            .byte $1F
            bvc L9644+1
            bvc L9652+1
            .byte $44,$0F,$4F,$32,$1F,$32,$32,$4F,$32,$32,$1F,$32,$32,$32,$32,$1F
            .byte $47,$00,$32,$32,$02
            plp
            plp
            .byte $FF
            eor (DOSVEC),Y
            .byte $FF,$53,$17,$52,$52,$53,$53,$52,$52,$52,$FF,$0F
            plp
            .byte $02
            ora (NGFLAG,X)
            .byte $44,$44,$04
            ora (CASINI,X)
            .byte $03,$04,$00,$5B,$5B,$1F,$00,$00,$1F,$00,$1F,$1F,$04,$04,$03,$02
            .byte $04,$1F,$5B,$5B,$5B
L963B       .byte $00,$1F,$00,$00,$1F,$00,$00,$00,$1F
L9644       ora (BOOT,X)
            .byte $FF,$5B
            ora #$01
            .byte $02,$5A,$5A
            ora (CASINI+1,X)
            .byte $5B,$5B,$5B
L9652       ora (RAMLO+1,X)
            .byte $FF,$5B
            ora NGFLAG
            ora L5BFF
            ora L0601
            .byte $FF,$5B
            asl NGFLAG
            .byte $04,$FF,$5B,$04
            ora (BUFADR,X)
            .byte $54
            eor COLCRS+1,X
            .byte $57,$54
            eor COLCRS+1,X
            .byte $57,$54
            cli
            eor L5457,Y
            eor L0000,X
            .byte $00,$54
            eor COLCRS+1,X
            .byte $57,$54
            ora (NGFLAG,X)
            .byte $3A,$07
            asl TRAMSZ
            .byte $03,$03,$03,$03,$03,$00,$00,$00,$00,$00,$00,$C3,$00,$00
            cpy L00C5
            dec FMSZPG+4
            pha
            eor #$4A
            .byte $4B
            jmp L4E4D
            .byte $4F
            bvc L96F0
            .byte $52,$53,$1F,$1F,$07
            asl TRAMSZ
            .byte $03,$03,$03,$03
L96AA       ora (L00C3,X)
            cpy L00C5
            dec FMSZPG+4
            pha
            eor #$4A
            .byte $4B,$00
            bpl L96C8
            .byte $00,$12,$13,$14
            ora ABUFPT+3,X
            .byte $1F,$00,$00
            asl ICCOMT,X
            clc
            ora L0605,Y
            .byte $03,$03
L96C8       .byte $04,$04,$D4
            cmp L00D6,X
            .byte $D7
            cld
            cmp LDBDA,Y
            .byte $DC
            cmp LDFDE,X
            cpx #$E1
            .byte $E2,$E3
            cpx L00E5
            .byte $67,$67
            ora (WARMST,X)
            cmp LDFFF,X
            ora L00DE
            .byte $00
            ora (WARMST,X)
            .byte $00
            cmp LDFFF,X
            ora L00DE
            .byte $02,$03
L96F0       .byte $03
            bit L00B2
            .byte $B3,$00
            ldy L00B5,X
            .byte $02,$03,$03,$B2,$B3
            bit L00B4
            lda L0000,X
            .byte $03,$02,$02,$02,$00,$00
            ldx L00B7,Y
            clv
            lda VPRCED+1,Y
            .byte $02,$02,$00,$00
            lda LB8BD+1,X
            lda DCOMND,Y
            .byte $03
            bcc L96AA
            .byte $92,$93
            sty L0092,X
            .byte $00,$03,$02,$02,$02
            rol L0F0F
            rol L0F2E
            .byte $03,$02,$02,$02,$0F
            rol L0F2E
            .byte $0F
            rol VPRCED+1
            .byte $02,$02,$00,$00,$00,$00,$00,$00,$03,$02,$02,$02,$B2,$B2,$B2,$B2
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$3F,$33,$33,$33,$33
            .byte $33,$3F,$00,$0C,$3C,$0C,$0C,$0C,$0C,$3F,$00,$3F,$33,$03,$3F
            bmi L9795
            .byte $3F,$00,$3F,$33,$03,$0F,$03,$33,$3F,$00,$33,$33,$33,$3F,$03,$03
            .byte $03,$00,$3F
            bmi L97AA
            .byte $3F,$03,$03,$3F,$00,$3F
            bmi L97B2
            .byte $3F,$33,$33,$3F,$00,$3F,$03,$03,$03,$03,$03,$03,$00,$3F,$33,$33
            .byte $3F,$33,$33
L9795       .byte $3F,$00,$3F,$33,$33,$3F,$03,$03,$03,$33,$33,$33,$33,$33,$33,$33
            .byte $3F,$3F,$33,$33,$33
L97AA       .byte $3F
            bmi L97DD
            bmi L97ED+1
            .byte $0C,$0C,$0C
L97B2       .byte $0C,$0C,$0C,$0C,$3F,$33,$33,$33,$33,$33,$33,$3F
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            ldx LBBBB
            .byte $BB
            ldx LBABA,Y
            eor L00AE,X
            .byte $BB,$BB,$BB,$BB,$BB
            ldx LBF55
            tsx
            tsx
            ldx LBABA,Y
            .byte $BF
L97DD       eor L00BB,X
            .byte $BB,$BB,$BF
            ldx LAEAC+2
            eor COUNTR+1,X
            .byte $7F,$7F,$7F,$7F,$7F,$7F
L97ED       eor FREQ,X
            rti
            rti
            rti
            rti
            rti
            rti
            eor L00AA,X
            tax
            .byte $AB,$AB,$AB,$AB,$AB
            tax
            tax
            .byte $FA,$AF
            ldx LAEAC+2,Y
            ldx LAAFA
            .byte $AF,$BB,$BB,$BB
            ldx LEABB
            tax
            ldx LAEAA
            ldx LAFAE
            .byte $FB
            tax
            tax
            tax
            ldx LABAA+1
            .byte $AB
            inc LAAAA,X
            tax
            ldx LBBAE
            tsx
            nop
            tax
            tax
            tax
            .byte $AF,$BB
            ldx LBFFA,Y
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$FF
            cpy #$C0
            .byte $FF
            cpy #$C0
            .byte $00,$00,$00
            cpy #$C0
            .byte $00
            cpy #$C0
            .byte $00,$00,$00,$00,$FC,$00,$FC,$00,$00
            eor COLCRS,X
L9860       eor L00FF,X
            .byte $FF,$FF,$FF,$FF
            eor COLCRS,X
            eor L0000,X
            .byte $00,$00,$00,$00
            eor COLCRS,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$03,$0F,$3F,$FF,$3F,$00,$00
            .byte $00,$14,$14,$FF,$FF,$FF,$0F,$03,$00,$00,$00,$00,$00,$00,$14,$14
            .byte $14,$14,$14,$14,$14,$14,$00,$00,$00
            cpy #$F0
            .byte $FC,$FF,$FC
            beq L9860
            .byte $00,$00,$00,$00,$00,$00
            tax
            tax
            .byte $00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$FF,$FF,$FF,$00,$00
            eor COLCRS,X
            eor COLCRS,X
            .byte $00,$00
            eor COLCRS,X
            cpy #$55
            eor L00C0,X
            cpy #$55
            eor L00C0,X
            .byte $03
            eor COLCRS,X
            .byte $03,$03
            eor COLCRS,X
            .byte $03
            eor COLCRS,X
            eor COLCRS+1,X
            .byte $5A
            adc #$A9
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $00,$00,$00,$00,$00
            tax
            tax
            tax
            .byte $0F,$0C,$0F,$0C,$3C
            cpy L30CC
            .byte $FF,$03,$FF,$03,$0F,$33,$33,$0C,$00,$00,$00,$0F,$3F,$FF,$0F,$03
            .byte $00,$00,$00,$00
L9902       cpy #$F0
            beq L9902
            .byte $00,$00,$00,$00,$00,$0C,$0F,$03,$FC,$FC
            cpy JSETTD
            .byte $FF,$FF,$FF,$00
            bmi L9955
            .byte $0F,$0F,$0F,$03,$00
L991E       .byte $03,$03,$0F
L9921       .byte $00,$FF,$FF,$FF,$FF,$FF,$CF,$0F,$3F,$FC,$FC
            beq L991E
            eor COLCRS,X
            tax
            tax
            tax
            tax
            tax
            tax
            eor COLCRS,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF
            eor COLCRS,X
            eor COLCRS,X
            .byte $5B,$5F
            cmp LDFFF,X
            eor COLCRS,X
            .byte $DF,$DF
            eor COLCRS,X
            .byte $DF,$F7
            eor COLCRS,X
            .byte $F7,$F7
            eor COLCRS,X
L9955       .byte $F7,$00,$00,$00,$00,$00
            tax
            tax
            tax
            .byte $00,$00,$00
            ora RAMLO+1
            ora RAMLO+1
            ora L0000
            .byte $00,$00
            eor COLCRS,X
            eor COLCRS,X
            eor L0000,X
            .byte $00,$00
            bvc L99C3
            bvc L99C5
            bvc L9921
            tax
            eor COLCRS,X
            tax
            tax
            eor COLCRS,X
            tax
            tax
            tax
            tax
            .byte $00,$00,$00,$00,$FF,$FF
            eor COLCRS,X
            .byte $00,$00,$00,$00,$FF,$FF
            eor COLCRS,X
            .byte $14
            eor (SOUNDR,X)
            .byte $14,$FF,$FF
            eor COLCRS,X
            tax
            tax
            tax
            tax
            .byte $14,$14,$14,$14,$14,$14,$14,$14
            rti
            .byte $54
            bvc L99ED+1
            eor NGFLAG
            .byte $00,$00,$14,$14,$14,$14
            eor COLCRS,X
            eor L0000,X
            ora (BUFADR,X)
            ora BRKKEY
            eor (FREQ),Y
            .byte $00,$00
            eor COLCRS,X
            tax
            tax
            tax
L99C3       tax
            tax
L99C5       tax
            .byte $FF,$FF
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $00,$00,$00,$00
            ora (RAMLO,X)
            ora COLCRS,X
            .byte $FF,$FF,$00
L99D9       .byte $00
L99DA       ora (RAMLO,X)
L99DC       ora COLCRS,X
            .byte $FF,$FF
            tax
            tax
            lda #$A6
            sta COLCRS,X
            .byte $FC
            beq L99D9
            beq L99DA+1
            beq L99DC+1
L99ED       beq L99EF
L99EF       cpy #$3C
            .byte $03,$00,$00,$00,$00,$00,$00,$03,$FC,$00,$00,$00,$00,$03,$3C
            cpy #$00
            .byte $00,$00,$00,$00
            tax
            nop
            ldx LAAAF,Y
            tax
            tax
            tax
            tax
            tax
            .byte $AF
            inc LAAAA,X
            tax
            tax
            .byte $FF,$FF
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $FF,$FF,$00,$00,$00,$00,$00,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00
            cmp LFFFF,X
            ldx LAA9C+2,Y
            tax
            tax
L9A36       ldx #$00
            txa
L9A39       sta L3000,X
            sta L30F0,X
            sta L31E0,X
            sta L32D0,X
            sta L32F8,X
            inx
            cpx #$F0
            bne L9A39
            rts
L9A4E       bit L00BF
            bmi L9A5F
            lda L00BF
            ror
            ror
            bmi L9A9D
            bit L20C1
            bmi L9AB5
            bpl L9A7A
L9A5F       bit L20C3
            bpl L9A6E
            lda #$00
            sta L20C2
            sta L20C3
            beq L9A73
L9A6E       dec L20C2
            bne L9A9C
L9A73       lda #$00
            sta L20C1
            sta L00BF
L9A7A       inc L20C6
            lda L20C6
            cmp #$CA
            bne L9A8E
            lda #$01
L9A86       sta L00BF
            lda #$14
            sta L20C2
            rts
L9A8E       lda #$E6
            sta L20C4
            lda #$96
            bne L9ACA
L9A97       dec L20C2
            beq L9AAC
L9A9C       rts
L9A9D       bit L20C3
            bpl L9A97
            lda #$00
            sta L20C2
            sta L20C3
            bne L9A9C
L9AAC       lda #$F0
            sta L20C1
            lda #$00
            sta L00BF
L9AB5       dec L20C6
            lda L20C6
            cmp #$C6
            bne L9AC3
            lda #$F0
            bmi L9A86
L9AC3       lda #$DE
            sta L20C4
            lda #$96
L9ACA       sta L20C5
            lda #$C4
            sta L0088
            lda #$20
            sta L0089
            jmp L92C9
L9AD8       lda L2000
            beq L9B12
            lda #$03
            cmp L2004
            bne L9B27
            ldx L2052
            lda L00D8,X
            sta L00B2
            inx
            lda L00D8,X
            sta L00B3
            ldx #$00
            lda (L00B2,X)
            cmp L00EC
            beq L9B0F
            ldx L2054
            sta L2030,X
            lda L00EB
            ldx #$00
            sta (L00B2,X)
            lda #$00
            sta L2004
            dec L2000
            inc L2054
L9B0F       jmp L9B2A
L9B12       lda #$00
            sta L2054
            lda L2096
            bne L9B24
            cmp L2006
            beq L9B24
            jsr L9B76
L9B24       jmp L9B2A
L9B27       inc L2004
L9B2A       lda L2001
            beq L9B67
            lda #$03
            cmp L2005
            bne L9B72
            ldx L2053
            lda L00D0,X
            sta L00B4
            inc L00B4
            inc L00B4
            inx
            lda L00D0,X
            sta L00B5
            ldx #$0A
L9B48       dex
            lda L2010,X
            inx
            sta L2010,X
            dex
            cpx #$00
            bne L9B48
            lda (L00B4,X)
            sta L2010,X
            lda L00EC
            sta (L00B4,X)
            lda #$00
            sta L2005
            dec L2001
            rts
L9B67       lda L2097
            bne L9B71
            lda L2007
            bne L9B7A
L9B71       rts
L9B72       inc L2005
            rts
L9B76       ldx #$00
            beq L9B7C
L9B7A       ldx #$01
L9B7C       lda L2050,X
            cmp L2151
            beq L9B9A
            sta L2052,X
            lda L2008
            sta L2000,X
            sta L2096,X
            lda #$03
            sta L2004,X
            lda #$00
            sta L2006,X
L9B9A       rts
L9B9B       lda L3887
            lsr
            lsr
            lsr
            sta L2151
            ldx #$00
L9BA6       ldy #$00
            lda L00D0,X
            sta L00E0
            inx
            lda L00D0,X
            sta L00E1
L9BB1       lda (L00E0),Y
            cmp L00EB
            bne L9BCD
            cpy L210D
            beq L9BCA
            inc L210D
            cpy L210D
            beq L9BCA
            dec L210D
            jmp L9C4A
L9BCA       jmp L9C42
L9BCD       lda (L00E0),Y
            cmp L00EC
            bne L9C27
            iny
            lda (L00E0),Y
            dey
            cmp L00EB
            beq L9BF1
            cpy L210E
            beq L9BEE
            inc L210E
            cpy L210E
            beq L9BEE
            dec L210E
            jmp L9CBC
L9BEE       jmp L9CB4
L9BF1       txa
            pha
            ldx L200B
            lda L2030,X
            sta L2108
            ldx L200C
            lda L2010,X
            sta L2109
            lda L2108
            sta L2010,X
            inx
            stx L200C
            ldx L200B
            lda L2109
            sta L2030,X
            inx
            stx L200B
            lda L00EB
            sta (L00E0),Y
            iny
            lda L00EC
            sta (L00E0),Y
L9C25       pla
            tax
L9C27       iny
            cpy #$28
            beq L9C2F
            jmp L9BB1
L9C2F       inx
            cpx #$08
            beq L9C37
            jmp L9BA6
L9C37       lda #$00
            sta L200C
            sta L200B
            jmp L9AD8
L9C42       lda #$F0
            sta L210D
            sta L2144
L9C4A       txa
            pha
            ldx L200B
            lda L2030,X
            sta (L00E0),Y
            bit L2144
            bmi L9C8A
            dey
            bmi L9C98
            lda L00A0
            bne L9C98
            bit L3887
            bpl L9C98
            lda L0087
            cmp #$02
            bne L9C77
            lda (L00E0),Y
            and #$C0
            cmp #$C0
            bne L9C77
            lda #$00
            beq L9C79
L9C77       lda (L00E0),Y
L9C79       sta L2030,X
            lda L00EB
            sta (L00E0),Y
            inx
            stx L200B
            pla
            tax
            iny
            jmp L9BCD
L9C8A       lda #$00
L9C8C       sta L2144
L9C8F       sta L00F6
            lda #$01
            sta L00F7
            jsr LA0A2+1
L9C98       stx L200B
            dec L2096
L9C9E       inx
            lda L2030,X
            dex
            sta L2030,X
            inx
            cpx #$0A
            bne L9C9E
            iny
            pla
            tax
            dec L2054
            jmp L9BCD
L9CB4       lda #$F0
            sta L210E
            sta L2145
L9CBC       txa
            pha
            ldx L200C
            lda L2010,X
            sta (L00E0),Y
            bit L2145
            bmi L9CE9
            iny
            cpy #$28
            beq L9CF7
            lda L00A0
            bne L9CF7
            bit L3887
            bpl L9CF7
            lda (L00E0),Y
            sta L2010,X
            lda L00EC
            sta (L00E0),Y
            inx
            stx L200C
            jmp L9C25
L9CE9       lda #$00
            sta L2145
            sta L00F6
            lda #$01
            sta L00F7
            jsr LA0A2+1
L9CF7       stx L200C
            dec L2097
L9CFD       inx
            lda L2010,X
            dex
            sta L2010,X
            inx
            cpx #$0A
            bne L9CFD
            dey
            jmp L9C25
L9D0E       lda L2055
            beq L9D4C
            lda L2056
            beq L9D30
            lda #$01
            sta L2057
            lda #$03
            sta L2058
            lda #$00
            sta L2056
            sta L00F7
            lda #$30
            sta L00F6
            jsr LA0A2+1
L9D30       lda L2057
            beq L9D5D
            lda #$60
            sta L0088
            lda #$20
            sta L0089
            jsr L92C9
            ldx L2058
            dec L2062
            dex
            beq L9D4D
L9D49       stx L2058
L9D4C       rts
L9D4D       lda #$00
            sta L2057
            lda #$03
            sta L2058
            lda #$2F
            sta L2062
            rts
L9D5D       lda L312C
            cmp #$B7
            bne L9D68
            lda #$80
            sta L00FE
L9D68       lda #$66
            sta L0088
            lda #$20
            sta L0089
            jsr L92C9
            inc L2068
            ldx L2058
            dex
            bne L9D49
            lda #$2D
            sta L2068
            lda #$01
            sta L2056
            lda #$00
            sta L2055
            rts
L9D8C       lda L00FE
            beq L9DD7
L9D90       clc
            lda L206E
            adc #$28
            sta L206E
            sta L00B6
            bcc L9DA5
            inc L206F
            lda L206F
            sta L00B7
L9DA5       lda #$6C
            sta L0088
            lda #$20
            sta L0089
            jsr L92C9
            ldy #$00
            ldx L2080
            lda L9DED,X
            sta (L00B6),Y
            inx
            iny
            lda L9DED,X
            sta (L00B6),Y
            inx
            stx L2080
            inc L205A
            lda L205A
            cmp #$12
            beq L9DD8
            cmp #$10
            bcs L9E0F+2
            bit L00FE
            bvs L9D90
L9DD7       rts
L9DD8       lda #$03
            sta L206E
            lda #$61
            sta L206F
            lda #$00
            sta L00FE
            sta L2080
            sta L205A
            rts
L9DED       bit ICBALZ
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$2F
            bmi L9E2A+1
            bmi L9E2C+1
            bmi L9E2E+1
            bmi L9E02
L9E02       .byte $00,$00,$00
            bit.w ICAX3Z
            .byte $00,$00,$00,$00,$00
            lda (L00B1),Y
L9E0F       ora LA21B+2,X
            .byte $07
L9E13       lda L2128,X
            beq L9E1B
            jsr L9E1E
L9E1B       dex
            bpl L9E13
L9E1E       lda L2130,X
            cmp #$13
            beq L9E29
            cmp #$14
            bne L9E38
L9E29       clc
L9E2A       adc #$98
L9E2C       sta L00F6
L9E2E       lda #$33
            sta L00F7
            lda #$DD
            ldy #$00
            sta (L00F6),Y
L9E38       rts
L9E39       lda L2081
            beq L9E38
            dec L215F
            bne L9E38
            lda #$08
            sta L215F
            ldy #$00
L9E4A       lda (L00D4),Y
            cmp L00EB
            beq L9E57
            iny
            cpy #$03
            bne L9E4A
            beq L9E61
L9E57       sty L2092
            lda #$01
            sta L2093
            bpl L9E78
L9E61       ldx #$00
            ldy #$00
L9E65       lda (L00D6),Y
            cmp L00EB
            bne L9E73
            clc
            tya
            adc #$48
            sta L2085,X
            inx
L9E73       iny
            cpy #$06
            bne L9E65
L9E78       lda L2081
            cmp #$01
L9E7D       beq L9E96
            lda #$D2
            sta L0088
            lda #$9E
            sta L0089
L9E87       jsr L92C9
            lda #$18
            sta L215F
            lda #$00
            sta L2081
            beq L9EA6
L9E96       lda #$D8
            sta L0088
            lda #$9E
            sta L0089
            jsr L92C9
            lda #$02
            sta L2081
L9EA6       lda L2093
            beq L9EB8
            ldy L2092
            lda L00EB
            sta (L00D4),Y
            lda #$00
            sta L2093
            rts
L9EB8       ldy #$00
            txa
            beq L9ED1
            sta L2084
            ldx #$00
L9EC2       lda L2085,X
            sta L00E2
            lda L00EB
            sta (L00E2),Y
            inx
            dec L2084
            bne L9EC2
L9ED1       rts
            .byte $80
            stx LOMEM,Y
            .byte $32,$00,$00,$A3
            stx LOMEM,Y
            .byte $32,$00,$00
L9EDE       ldx #$01
L9EE0       lda L3908,X
            and #$03
            beq L9EF1
            lda #$80
            sta L2122
            lda #$00
            sta L3908,X
L9EF1       dex
            bpl L9EE0
            ldx #$01
L9EF6       lda L390A,X
            and #$03
            beq L9F0A
            lda L2122
            ora #$40
            sta L2122
            lda #$00
            sta L390A,X
L9F0A       dex
            bpl L9EF6
            lda L2122
            bne L9F49
            lda L380A
            cmp #$BE
            bne L9F30
            lda L3814
            sec
            sbc #$30
            lsr
            lsr
            ldx #$07
L9F23       ldy L2128,X
            beq L9F2D
            cmp L2130,X
            beq L9F31
L9F2D       dex
            bpl L9F23
L9F30       rts
L9F31       lda #$00
            sta L2128,X
            lda #$33
            sta L00F7
            lda L2130,X
            clc
            adc #$98
            sta L00F6
            lda L2138,X
            ldy #$00
            sta (L00F6),Y
L9F49       dec L00A2
            ldx #$08
            bit L00FF
            bmi L9F53
            ldx #$00
L9F53       lda #$5E
            cmp L380A
            bcc L9F5C
            inx
            inx
L9F5C       lda #$7E
            cmp L380A
            bcc L9F65
            inx
            inx
L9F65       lda #$9E
            cmp L380A
            bcc L9F6E
            inx
            inx
L9F6E       lda LA093,X
            sta L00F6
            lda LA093+1,X
            sta L00F7
            jsr LA0A2+1
L9F7B       jsr LB022
            inc L2098,X
            lda L0087
            cmp #$01
            bne L9F8C
            lda L2098,X
            and #$01
L9F8C       jsr LB8AE
L9F8F       jsr LB022
            lda L2098,X
            beq L9FE5
            sta L00F0
            ldy #$00
            lda L0087
            cmp #$02
            bcc LA019
            bne L9FA6
            jmp LA04B
L9FA6       lda #$91
            sta L00F6
            lda #$32
            sta L00F7
            lda #$00
            lsr L00F0
            beq L9FD1
            ror
            sta L00F2
            ldx #$05
            jsr L9FE6
            bcc L9FCD
            lda #$A1
            sta L00F6
            lda #$31
            sta L00F7
            lda L00F0
            beq L9FCD
            jsr L9FE6
L9FCD       bit L00F2
            bpl L9FE5
L9FD1       jsr LA07B
            beq L9FE5
            lda #$E8
            sta (L00F6),Y
            inc L00F6
            jsr LA07B
            beq L9FE5
            lda #$E9
            sta (L00F6),Y
L9FE5       rts
L9FE6       jsr LA07B
            bne L9FEE
L9FEB       jmp LABD4
L9FEE       lda #$E6
            sta (L00F6),Y
            inc L00F6
            jsr LA07B
            beq L9FEB
            lda #$E7
            sta (L00F6),Y
            sec
            lda L00F6
            sbc #$29
            sta L00F6
            lda L00F7
            sbc #$00
            sta L00F7
            dec L00F0
            beq LA013
            dex
            sec
            bne L9FE6
            rts
LA013       dex
            sec
            beq LA018
            clc
LA018       rts
LA019       lda #$7B
            sta L00F6
            lda #$30
            sta L00F7
LA021       ldx #$04
LA023       lda #$C5
            sta (L00F6),Y
            dec L00F0
            beq LA04A
            lda L00F6
            clc
            adc #$28
            sta L00F6
            lda L00F7
            adc #$00
            sta L00F7
            dex
            bne LA023
            sec
LA03C       lda L00F6
            sbc #$9F
            sta L00F6
            lda L00F7
            sbc #$00
            sta L00F7
            bpl LA021
LA04A       rts
LA04B       lda #$56
            sta L00F6
            lda #$30
            sta L00F7
            ldx #$00
            lda #$9C
LA057       sta (L00F6),Y
            dec L00F0
            beq LA07A
            lda LA084,X
            sta L00F2
            and #$BF
            bit L00F2
            bpl LA06A
            ora #$40
LA06A       clc
            adc L00F6
            sta L00F6
            lda #$9C
            bit L00F2
            bvc LA077
            lda #$9D
LA077       inx
            bne LA057
LA07A       rts
LA07B       lda (L00F6),Y
            cmp #$A0
            beq LA083
            cmp #$A1
LA083       rts
LA084       and #$41
            sta L2941,Y
            eor (L0099,X)
            and #$41
            sta L2941,Y
            sta L4129,Y
LA093       bvc LA095
LA095       .byte $00
            ora (L0000,X)
            .byte $03,$00
            ora L0000
            ora (L0000,X)
            .byte $02,$00
LA0A0       asl L0000
LA0A2       bpl LA03C
            pha
            ldy L00EA
            sed
            clc
            lda L00F6
            adc L2087,Y
            sta L2087,Y
            lda L00F7
            iny
            adc L2087,Y
            sta L2087,Y
            lda #$00
            iny
            adc L2087,Y
            sta L2087,Y
            cld
            txa
            pha
            ldy #$05
LA0C8       ldx #$02
LA0CA       lda L208D,X
            cmp L2087,Y
            bcc LA0E6
            bne LA0DE
            dey
            dex
            bpl LA0CA
            cpy #$02
            beq LA0C8
            bne LA0FC
LA0DE       cpy #$03
            bcc LA0FC
            ldy #$02
            bpl LA0C8
LA0E6       cpx #$02
            beq LA0EE
            iny
            inx
            bpl LA0E6
LA0EE       lda L2087,Y
            sta L208D,X
            dey
            dex
            bpl LA0EE
            cpy #$02
            beq LA0C8
LA0FC       ldx #$00
            lda #$06
            sta L00F6
            lda #$30
            sta L00F7
            jsr LA147
            ldx #$06
            lda #$13
            sta L00F6
            jsr LA147
            ldx #$03
            lda #$20
            sta L00F6
            bit L20CA
            bpl LA165
            jsr LA147
LA120       jsr LB022
            ldy L00EA
            lda L2090,X
            rol
            bcc LA142
            iny
            iny
            lda L2087,Y
            cmp #$04
            bcc LA142
            lda L2090,X
            and #$7F
            clc
            adc #$01
            sta L2090,X
            jsr LA170
LA142       pla
            tax
            pla
            tay
            rts
LA147       ldy #$05
LA149       lda L2087,X
            and #$0F
            clc
            adc #$01
            sta (L00F6),Y
            dey
            lda L2087,X
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$01
            sta (L00F6),Y
            inx
            dey
            bpl LA149
            rts
LA165       ldy #$05
            lda #$00
LA169       sta (L00F6),Y
            dey
            bpl LA169
            bmi LA120
LA170       jsr LB022
            lda L2090,X
            and #$0F
            ldy L0087
            cpy #$02
            beq LA18A
            bcs LA194
            sta L30C2
            jsr LA19E
            sty L30EA
            rts
LA18A       sta L30EC
            jsr LA19E
            sty L3114
            rts
LA194       sta L3072
            jsr LA19E
            sty L309A
            rts
LA19E       lda L2120,X
            and #$0F
            tay
            iny
            rts
LA1A6       lda #$00
            sta L3910
            jsr LB022
            sed
            lda L2120,X
            clc
            adc #$01
            sta L2120,X
            cld
            tay
            cpy #$05
            bcc LA1C0
            ldy #$05
LA1C0       lda LA1D2,Y
            sta L2162,X
            lda LA1D7+1,Y
            sta L2160,X
            lda LA1DE,Y
            sta L38C7,X
LA1D2       rts
            .byte $FF
            iny
            stx ADRESS,Y
LA1D7       bvc LA228+1
            ora (NGFLAG,X)
            ora (CASINI,X)
            .byte $02
LA1DE       .byte $03
            asl
            asl
            .byte $04,$03,$02
LA1E4       ora (L00A9,X)
            asl
            sta L2123
            lda #$04
            sta L20A5
            rts
LA1F0       lda L00A0
            bne LA202
            bit L3887
            bpl LA202
            bit L00FE
            bmi LA202
            lda L2095
            beq LA203
LA202       rts
LA203       lda L3814
            cmp #$7E
            bcc LA228
            lda L2097
            beq LA214
            dec L2107
            bne LA202
LA214       lda #$05
            sta L2107
            lda #$00
LA21B       sta L2097
            sta L20A0
            lda L2096
            bne LA202
            beq LA232
LA228       lda L2096
            bne LA202
            lda #$08
            sta L20A0
LA232       lda L20A1
            asl
            sta L2050
            sta L2051
            clc
            adc L20A0
            tax
            lda #$01
            sta L2095
            sta L20A2
            lda LA2C0,X
            sta L2102
            inx
            lda LA2C0,X
            sta L2103
            dex
            lda L0087
            cmp #$02
            beq LA283
            bne LA268
LA25F       lda #$32
            sta L20A6
            lda #$97
            bne LA27F
LA268       lda LA2A0,X
            cmp #$FF
            beq LA294
            lda L0087
            cmp #$03
            beq LA25F
            lda LA2A0,X
            sta L20A6
            inx
            lda LA2A0,X
LA27F       sta L20A7
            rts
LA283       lda LA2B0,X
            cmp #$FF
            beq LA294
            sta L20A6
            inx
            lda LA2B0,X
            jmp LA27F
LA294       lda #$00
            sta L2095
            sta L2007
            sta L2006
            rts
LA2A0       .byte $FF,$FF
            asl L1E97,X
            .byte $97
            asl LFF97,X
            .byte $FF
            plp
            .byte $97
            plp
            .byte $97
            plp
            .byte $97
LA2B0       .byte $32,$97,$FF,$FF,$FF,$FF,$FF,$FF,$3C,$97,$FF,$FF
            plp
            .byte $97
            plp
            .byte $97
LA2C0       rti
            and (L00E0),Y
            and (LOMEM),Y
            .byte $32
            jsr L6633
            and (TRAMSZ),Y
            .byte $32
            ldx BUFRLO
            lsr BUFRHI
LA2D0       lda L2095
            bne LA2D6
            rts
LA2D6       lda L2106
            bne LA300
            lda L20A0
            beq LA2E7
            lda #$01
            sta L2006
            bpl LA2EC
LA2E7       lda #$01
            sta L2007
LA2EC       lda #$01
            sta L2106
            jsr LB022
            lda L2160,X
            sta L2008
            sta L20A8
            inc L20A8
LA300       lda L20A2
            and #$01
            beq LA310
            ldx #$00
            dec L20A8
            beq LA32B
            bne LA312
LA310       ldx #$02
LA312       lda L20A0
            beq LA31B
            inx
            inx
            inx
            inx
LA31B       lda LA34E,X
            sta L2100
            inx
            lda LA34E,X
            sta L2101
            jmp LA33F
LA32B       lda L20A6
            sta L2100
LA331       lda L20A7
            sta L2101
            lda #$00
            sta L2095
            sta L2106
LA33F       lda #$00
            sta L0088
            lda #$21
            sta L0089
            jsr L92C9
            inc L20A2
            rts
LA34E       .byte $80
            and (L008A,X)
            and (L0094,X)
            and (L009E,X)
LA355       and (L00AD,X)
            asl
            sec
            bmi LA365
            and #$20
            beq LA361
            lda #$01
LA361       sta L20A1
            rts
LA365       and #$20
            beq LA36D
            lda #$03
            bne LA361
LA36D       lda #$02
            bne LA361
LA371       ldx #$00
LA373       ldy #$06
            inx
            inx
            inx
            inx
            lda L0087
            and #$01
            beq LA38D
LA37F       lda L2180,X
            and #$7F
            sta L2180,X
            inx
            dey
            bne LA37F
            beq LA399
LA38D       lda L2180,X
            ora #$80
            sta L2180,X
            inx
            dey
            bne LA38D
LA399       cpx #$28
            bne LA373
            rts
LA39E       .byte $03,$02,$02,$02
            ror
            .byte $6B
            jmp (L6E6D)
            .byte $6F,$03,$02,$02,$02
            bvs LA41E+1
            .byte $72,$73
            ror IOCB3+ICBAL
            .byte $02,$02,$02
            adc DELTAR,X
            .byte $77
            sei
            adc IOCB3+ICAX1,Y
            .byte $02,$02,$02,$7B,$7C
            adc L797E,X
            .byte $7A
LA3C6       jsr LB022
            ldy L2098,X
            lda L0087
            cmp #$02
            beq LA3DF
            bcs LA3FB
            cpy #$18
            bcc LA427
            jsr LA441
            lda #$0F
            bpl LA3E8
LA3DF       cpy #$10
            bcc LA427
            jsr LA441
            lda #$10
LA3E8       jsr LB8AE
            jsr LA428
            lda #$00
            sta L2098,X
            inc L214A,X
            inc L0087
            jmp LA416
LA3FB       cpy #$12
            bcc LA427
            jsr LA441
            lda #$11
            jsr LB8AE
            jsr LA428
            lda #$00
            sta L2098,X
LA40F       lda #$01
            sta L214A,X
            sta L0087
LA416       lda #$FF
            sta L3910
            sta L38C1,X
LA41E       sta L3828
            lda RTCLOK+2
LA423       cmp RTCLOK+2
            beq LA423
LA427       rts
LA428       ldy L0087
            lda LA43D,Y
            tay
LA42E       jsr L885F
            jsr L885F
            dey
            bne LA42E
            sty L215A
            sty L2150
LA43D       rts
            bcc LA40F+1
            cld
LA441       lda #$40
            sta L215A
            jmp L8914
LA449       lda L3828
            cmp #$1F
            bne LA465
            jsr LB022
            dec L2090,X
            lda L20CA
            bne LA466
            lda L2090,X
            and #$7F
            beq LA48B
            inc L2083
LA465       rts
LA466       ldy #$02
LA468       lda L00EA
            eor #$03
            sta L00EA
            and #$01
            tax
            lda L2090,X
            and #$7F
            beq LA488
            lda #$00
            sta L2150
            lda L214A,X
            sta L0087
            eor #$01
            sta L2083
            rts
LA488       dey
            bne LA468
LA48B       ldx #$FF
            txs
            jmp hiscore
LA491       lda #$FF
            sta L00A4
            sta L00A5
            lda L0087
            sta L00A6
            ldx #$B5
LA49D       lda LA7A8+2,X
            sta L37FF,X
            dex
            bne LA49D
            txa
            sta L3878
            sta L00A2
            sta L00CF
            sta L00A0
            tay
LA4B1       sta L3B00,Y
            sta L3C00,Y
            sta L3D00,Y
            sta L3E00,Y
            sta L3F00,Y
            dey
            bne LA4B1
            dec L00A6
            lda L00A6
            beq LA4D2
            cmp #$01
            bne LA4CF
            ldx #$40
LA4CF       stx L38A9
LA4D2       clc
            rol
            rol
            rol
            adc L00A6
            adc L00A6
            tax
            ldy #$08
LA4DD       lda LA857,X
            sta L00A7,Y
            lda LA857+1,X
            sta L00A8,Y
            inx
            inx
            dey
            dey
            bpl LA4DD
            lda L00A6
            asl
            asl
            clc
            adc L00A6
            adc L00A6
            sta L009D
            ldx #$0A
LA4FC       lda L383A,X
            clc
            adc L009D
            sta L383A,X
            bcc LA50A
LA507       inc L383B,X
LA50A       dex
            dex
            bpl LA4FC
            inc L00A6
            jsr LB022
            lda L38C1,X
            sta L2159
            lda L38C7,X
            sta L3868
            lda #$07
            sta L00C0
            lda #$02
            sta L00C8
            jmp LB419
LA52A       ldx #$09
LA52C       stx L009B
            ldy L381E,X
            beq LA539
            jsr LA5DB
            dec L381E,X
LA539       bne LA590
            lda L385A,X
            beq LA572
            ldy L386D
            beq LA54E
            cpx #$00
            bne LA54E
            jsr LACC6
            bne LA58E
LA54E       dec L385A,X
            ldy L00A6
            cpy #$03
            beq LA59F
            lda L387E,Y
            sta L381E,X
            lda L3879,Y
            sta L3828,X
            lda L380A,X
            cmp #$BE
            bne LA56F
            lda #$06
            jsr LB8AE
LA56F       jmp LA58E
LA572       jsr LB2BE
            jsr LB4C8
            jsr LB2A9
            jsr LAE9D
            jsr LAC71
            jsr LB022
            lda TRIG0,X
            beq LA58E
            lda #$01
            sta L3876
LA58E       ldx L009B
LA590       dex
            bpl LA52C
            jsr L9EDE
            jsr LB46E
            jsr L9E39
            jmp LB554
LA59F       lda L3814,X
            ldy L386C
            cpy #$09
            bcs LA5B0
            clc
            adc #$04
            ldx #$1A
            bne LA5B5
LA5B0       sec
            sbc #$04
            ldx #$19
LA5B5       stx L0098
            sta L3814
            jsr LB022
            lda TRIG0,X
            bne LA5CC
            ldx L0098
            stx L3828
            ldx #$02
            stx L381E
LA5CC       ldx #$00
            lda L385A
            bne LA5D9
            sty L3828
            inc L381E
LA5D9       bne LA58E
LA5DB       cpx #$04
            bcs LA635
            cpx #$03
            beq LA621
LA5E3       lda L3828,X
            bmi LA620
            cmp #$11
            beq LA65C
            cmp #$12
            beq LA65C
            cmp #$0A
            beq LA641
            cmp #$05
            beq LA641
            cmp #$1D
            beq LA641
            cmp #$1E
            beq LA641
LA600       asl
            asl
            asl
            sta L009D
            lda L381E,X
            clc
            adc L009D
            tay
            dey
            lda L8000,Y
            ldy L3866
            beq LA61D
            and #$3F
            ora L38AB
            dec L3866
LA61D       jsr LA99B
LA620       rts
LA621       inc L386B
            lda L386B
            and #$01
            beq LA630
LA62B       pla
            pla
            jmp LA590
LA630       lda L3867
            bne LA61D
LA635       inc L387D,X
            lda L387D,X
            and #$07
            beq LA5E3
            bne LA62B
LA641       cpx #$02
            bne LA600
            inc L3866
            ldy L3820
            cpy #$03
            bne LA600
            lda L38AB
            eor #$40
            sta L38AB
            lda L382A
LA65A       bne LA600
LA65C       inc L38C4,X
            lda L38C4,X
            and #$03
            bne LA62B
            lda L385A,X
            bne LA686
            lda L380A,X
            cmp #$5E
            bcs LA686
            lda L3828,X
            cmp #$12
            bne LA686
            jsr LB022
            lda TRIG0,X
            bne LA686
            ldx L009B
            jsr LAE71
LA686       ldx L009B
            lda L3828,X
            bne LA65A
LA68D       lda #$00
            sta L00F0
            lda #$00
            sta L00F2
            lda #$81
            sta L00F1
            lda #$28
            sta L00F3
            ldy #$00
LA69F       lda (L00F0),Y
            ldx #$08
LA6A3       ror
            rol L00F4
            dex
            bne LA6A3
            lda L00F4
            sta (L00F2),Y
            iny
            bne LA69F
            inc L00F3
            inc L00F1
            lda #$87
            cmp L00F1
            bne LA69F
            lda #$0F
            sta PCOLR0
            lda #$36
            sta PCOLR1
            lda #$0F
            sta PCOLR2
            lda #$E0
            sta PCOLR3
            lda #$38
            sta PMBASE
            lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            lda #$31
            sta GPRIOR
            rts
            lsr L342E,X
            .byte $44,$9E
            ldx L5C6C,Y
            .byte $9E
            ldx L9C8C,Y
            .byte $9E
            ldx LB4C3+1,Y
            .byte $9E
            ldx L4434,Y
            ror LC49E,X
            ldy COUNTR,X
            .byte $9E,$34,$44
            lsr LC47E,X
            ldy OLDADR,X
            ror.w L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            lsr L0254,X
            lsr IOCB6+ICCOM,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$7C
            ror L7E9E,X
            jmp L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            cpy L00B4
            .byte $9E
            ldx.w L0000,Y
            .byte $00,$00
            cpy L00B4
            ror.w L009E,X
            .byte $00,$00,$00,$00,$00,$00,$00,$9E
            pha
            .byte $03,$00,$00,$00
            ror L026A,X
            ror IOCB3+ICAX3,X
            lsr HATABS+30,X
            lsr PADDL4,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            cli
            .byte $9E
            ldx L9E87+1,Y
            ldx L5E58,Y
            ror L4856,X
            cli
            .byte $9E
            ldx.w L0000,Y
            .byte $00,$00,$00,$00,$00,$00
            tsx
            tax
            .byte $9E
            ldx L3242,Y
            ror LAC9C+2,X
            ldy L9E7D+1,X
            lsr FMSZPG+3,X
            lsr LA87E,X
            clv
            lsr L9E7D+1,X
            lsr CASINI,X
            .byte $9E
            ror CASINI+1
            ror HATABS+34,X
            ror PTRIG2,X
            ror IOCB5+ICBAL,X
            lsr IOCB0+ICPTL,X
            lsr L0264,X
            lsr IOCB5+ICBAL,X
LA7A8       lsr LOGMAP+2,X
            ora (NGFLAG,X)
            .byte $03,$03,$00,$00,$00,$00,$00,$00
            lsr L7E3B,X
            .byte $64,$00,$00,$00,$00,$00,$00
            jmp L9C8F
            plp
            .byte $00,$00,$00,$00,$00,$00
            ora (NGFLAG,X)
            bpl LA7CD
LA7CD       .byte $00,$00,$00,$00,$00,$00
            ora CASINI+1
            ora L0000,Y
            .byte $00,$02,$02,$02,$02,$6F
            tay
            lda #$A8
            .byte $AB
            tay
            sbc LEBA8,X
            tay
            .byte $EB
            tay
            .byte $EB
            tay
            .byte $EB
            tay
            .byte $EB
            tay
            .byte $EB
            tay
            .byte $1C
            asl L0C1A,X
            asl
            asl
            asl
            asl
            asl
            asl
            .byte $00,$00,$02,$02,$03,$03,$03,$03,$03,$03,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$52,$04
            asl L00FA
LA816       .byte $00,$00
LA818       .byte $00,$00,$00,$00,$00,$00,$00,$FF,$02,$00,$00,$00,$00,$12
            ora DSKFMS,X
            bpl LA83C
            .byte $04,$04,$00,$00,$00,$00,$00
LA831       .byte $00
            beq LA834
LA834       .byte $00,$00,$00,$00,$00,$00,$00,$03
LA83C       .byte $0F,$03,$0F
            php
            .byte $03
            asl RAMLO
            asl
            ora L190A,Y
            ora #$05
            ora L1AF1,Y
            .byte $02,$1A
            ora (RAMLO,X)
            ora L0802,X
            .byte $FF
            cpy #$00
            .byte $00
LA857       jsr L05A7
            .byte $A7
            sbc L00A6
            cpx L00A6
            .byte $E3
            ldx MLTTMP
            .byte $A7,$4B,$A7,$2B,$A7
            rol
            .byte $A7
            and #$A7
            ora L00A8
            bcc LA816
            bvs LA818
            .byte $6F,$A7
            ora L00A8
            .byte $BF
            sta (LTEMP,X)
            plp
            jmp (L6C81)
            sta (BUFSTR,X)
LA87E       sta (BUFSTR,X)
            sta (LTEMP,X)
            sta (BUFSTR,X)
            plp
            jmp (L6C28)
            plp
            jmp (ICBLLZ)
            plp
            .byte $BF
            sta (L0000,X)
            sta (BUFSTR,X)
            sta (BUFSTR,X)
            plp
            jmp (L6C28)
            plp
            jmp (ICBLLZ)
            .byte $00,$00,$00,$00,$00
            inc ICBLLZ,X
            inc LOMEM+1,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            bpl LA831
            rol
            and #$2A
            and #$7E
            and #$7E
            .byte $82
            ror L7E82,X
            .byte $82
            ror L7E82,X
            .byte $82
            ror L7E29,X
            and #$7E
            and #$7E
            and #$7E
            and #$00
            .byte $00
            ror.w L0082,X
            .byte $00
            ror LB228+1,X
            .byte $82
            ror LB281+1,X
            .byte $82,$B2,$82
            ror L7E82,X
            and #$7E
            .byte $82
            ror LCC29,X
            .byte $82,$00,$83
            adc L0082
            adc ICBLHZ
            .byte $1A,$83
            lsr L0086,X
            lsr L0086,X
            lsr L0086,X
            .byte $5F
            stx OLDADR+1
            stx OLDADR+1
            stx SAVADR
            stx SAVADR
            stx SAVADR
            stx BUFRHI
LA8FE       .byte $83
            dex
LA900       .byte $C3
LA901       .byte $C3
LA902       and ICAX5Z,X
LA904       rol L77EE
            sec
            lda L3815
            ldy L00A6
            cpy #$01
            bne LA913
            lda #$80
LA913       sta HPOSP0
            sta HPOSP1
            cpy #$03
            beq LA932
            lda L3816
            sta HPOSP2
            sta HPOSP3
            lda #$4F
            sta COLPM2
            lda #$C0
            sta COLPM3
            bne LA948
LA932       lda L3817
            sta HPOSP2
            sec
            sbc #$04
            sta HPOSP3
            bit L3867
            bpl LA948
            lda #$0F
            sta COLPM3
LA948       ldx #$00
            ldy #$02
LA94C       lda L3818,X
            sta HPOSM0,Y
            sec
            sbc #$02
            sta HPOSM1,Y
            inx
            dey
            dey
            bpl LA94C
            ldy #$03
LA95F       lda L380E,Y
            bne LA96A
            lda L381A,Y
            sta L3818,Y
LA96A       dey
            bpl LA95F
            lda #$02
            sta L3875
            lda #$00
            sta SIZEP0
            sta L00CA
            sta L3879
            lda L3814
            ldy L3828
            cpy #$1A
            beq LA98D
            cpy #$19
            bne LA994
            sec
            sbc #$08
LA98D       sta L00C9
            inc L3879
            inc L00CA
LA994       lda L00CC
            beq LA99A
            dec L00CC
LA99A       rts
LA99B       sta L009A
            and #$38
            lsr
            lsr
            lsr
            sta L009F
            lda L3800,X
            clc
            adc #$3B
            sta L0095
            adc #$01
            sta L0097
            lda L380A,X
            sta L0094
            sta L0096
            lda L3846,X
            sta L009D
            lda L009A
            and #$C0
            clc
            rol
            rol
            rol
            cpx #$04
            bcc LA9CB
            ora L386A,X
LA9CB       tay
            lda #$00
            clc
LA9CF       dey
            bmi LA9D7
            adc L009D
            jmp LA9CF
LA9D7       sta L009C
            txa
            asl
            tay
            lda L3832,Y
            sta L0098
            lda L3833,Y
            sta L0099
            lda L3828,X
            asl
            clc
            adc L0098
            sta L0098
            bcc LA9F3
            inc L0099
LA9F3       ldy #$00
            sty L009E
            lda (L0098),Y
            clc
            adc L009C
            bcc LAA00
            inc L009E
LAA00       sta L0090
            sta L0092
            inc L0098
            bne LAA0A
            inc L0099
LAA0A       lda (L0098),Y
            clc
            adc L009E
            sta L0091
            clc
            adc #$03
            sta L0093
            lda L009F
            beq LAA28
            dec L009F
LAA1C       lda L3828,X
            cmp #$19
            bpl LAA28
            lda L009A
            jsr LAA58
LAA28       ldy L009D
            dey
            cpx #$04
            bcc LAA32
            jmp LB449
LAA32       lda (L0090),Y
            sta (L0094),Y
            lda (L0092),Y
            sta (L0096),Y
            dey
            bpl LAA32
            lda L3814,X
            cmp #$D2
            bne LAA48
            lda #$28
            bne LAA4E
LAA48       cmp #$26
            bne LAA4E
            lda #$D0
LAA4E       sta L3814,X
LAA51       ldx L009B
            dec L009F
            bpl LAA1C
            rts
LAA58       tay
            and #$01
            bne LAA74
            tya
            and #$02
            bne LAA6B
            tya
            and #$04
            beq LAA87
            dec L3814,X
            rts
LAA6B       tya
            and #$04
            bne LAA8F
            inc L3814,X
            rts
LAA74       tya
            and #$02
            bne LAA7F
            dec L3814,X
            jmp LAA82
LAA7F       inc L3814,X
LAA82       tya
            and #$04
            bne LAA8F
LAA87       inc L0094
            inc L0096
            inc L380A,X
            rts
LAA8F       dec L0094
            dec L0096
            dec L380A,X
            rts
LAA97       lda L3814,X
            sta L0090
LAA9C       lda L380A,X
            sta L0091
            ldx #$07
            lda #$00
            ldy #$03
LAAA7       sta L0092,Y
LAAAA       dey
            bpl LAAA7
LAAAD       txa
            asl
LAAAF       asl
            tay
            lda (L00AB),Y
            iny
            cmp (L00AB),Y
            bcc LAACD
            lda #$01
            pha
            dey
            jsr LAB7A
            beq LAAE8
            bcs LAADF
            iny
            jsr LAB7A
            beq LAB30
            bcc LAADF
            bcs LAADD
LAACD       lda #$00
            pha
            jsr LAB7A
            beq LAB30
            bcs LAADF
            dey
            jsr LAB7A
            beq LAAE8
LAADD       bcs LAB4A
LAADF       pla
            dex
            bpl LAAAD
            lda #$00
LAAE5       sta L0098
            rts
LAAE8       lda (L00AB),Y
            sta L38C0
LAAED       lda L0091
            iny
            iny
            cmp (L00AB),Y
            bne LAADF
            pla
            beq LAAFC
            lda #$04
LAAFA       bne LAAFE
LAAFC       lda #$09
LAAFE       sta L0094
LAB00       txa
            pha
            ldx L00A6
            lda L0090
            cmp LA8FE,X
            bcc LAB13
            ldy #$00
            lda L0091
            cmp (L00A7),Y
            bne LAB17
LAB13       lda #$05
            sta L0092
LAB17       lda L0090
            cmp LA901,X
            bcs LAB26
            ldy #$00
            lda L0091
            cmp (L00A7),Y
            bne LAB2A
LAB26       lda #$0A
            sta L0093
LAB2A       pla
            tax
            lda #$01
LAB2E       bne LAAE5
LAB30       lda (L00AB),Y
            sta L38C0
            lda L0091
            iny
            iny
            cmp (L00AB),Y
            bne LAADF
            pla
            beq LAB44
            lda #$10
            bne LAB46
LAB44       lda #$0E
LAB46       sta L0095
            bne LAB00
LAB4A       txa
            asl
            asl
            clc
            adc #$02
            tay
            lda L0091
            cmp (L00AB),Y
            bcc LAADF
            beq LAADF
            iny
            cmp (L00AB),Y
            bcs LAADF
            lda L0090
            sta L38C0
            pla
            beq LAB6E
            lda #$04
            sta L0094
            lda #$10
            bne LAB74
LAB6E       lda #$09
            sta L0094
            lda #$0E
LAB74       sta L0095
            lda #$01
            bne LAB2E
LAB7A       lda L009B
            bne LAB96
            lda L0090
            clc
            adc #$02
            cmp (L00AB),Y
            bcc LAB90
            sec
            sbc #$05
            cmp (L00AB),Y
            bcs LAB92
            lda #$00
LAB90       clc
            rts
LAB92       lda #$01
            sec
            rts
LAB96       lda L0090
            cmp (L00AB),Y
            rts
LAB9B       ldx #$02
LAB9D       txa
            stx L009D
            clc
            rol
            adc L009D
            tay
            lda L3814
            cmp (L00AF),Y
LABAA       bne LABC2
            lda (L00AF),Y
            sta L38C0
            lda L380A
            iny
            cmp (L00AF),Y
            bmi LABC2
            beq LABE3
            iny
            cmp (L00AF),Y
            bmi LABCC
            beq LABD7
LABC2       dex
            bpl LAB9D
            lda #$00
LABC7       sta L0098
            ldx L009B
            rts
LABCC       lda L3828
            jsr LADF2
            ldx L009B
LABD4       pla
            pla
            rts
LABD7       lda L00A6
            cmp #$01
            beq LABE7
            lda #$0F
            sta L0095
            bne LABE7
LABE3       lda #$03
            sta L0094
LABE7       lda #$0A
            sta L0093
            lda #$05
LABED       sta L0092
            lda #$01
            bne LABC7
LABF3       ldx L009B
            lda L3814,X
            sta L0090
            lda L380A,X
            sta L0091
            ldx #$08
LAC01       txa
            stx L009D
            clc
            rol
            adc L009D
            tay
            lda L0091
            cmp (L00AD),Y
            bne LAC2A
            lda L0090
            iny
            cmp (L00AD),Y
            bne LAC2A
            iny
            lda (L00AD),Y
            tay
            clc
            adc #$0F
            sta L0092,Y
            sta L0098
            cpx #$07
            bne LAC5C
            inc L0095
            bne LAC5C
LAC2A       dex
            bpl LAC01
            ldy #$01
            sty L0098
            dey
            ldx L00A6
            lda L0090
            cmp LA8FE,X
            bcc LAC43
            lda L0091
            cmp (L00A7),Y
            bne LAC69
            beq LAC5C
LAC43       cmp LA901,X
            bcc LAC56
            cmp (L00A9),Y
            beq LAC4E
            bcs LAC5C
LAC4E       lda L0091
            cmp #$BE
            bne LAC5C
            beq LAC65
LAC56       lda L0091
            cmp (L00A7),Y
            bne LAC65
LAC5C       lda #$0A
LAC5E       sta L0093
            lda #$05
LAC62       sta L0092
            rts
LAC65       lda #$00
            beq LAC5E
LAC69       lda #$0A
            sta L0093
            lda #$00
            beq LAC62
LAC71       cpx #$00
            bne LACD6
            lda L380A
            cmp #$5D
            bcs LACA7
            inc L380A
            lda #$13
            sta L3828
            lda #$07
            bit L214D
            bpl LACA1
            lda #$00
            sta L00F6
            jsr LB8AE
            lda #$05
            bit L00FF
            bpl LAC9A
            lda #$10
LAC9A       sta L00F7
LAC9C       jsr LA0A2+1
            lda #$02
LACA1       sta L381E
            ldx L009B
            rts
LACA7       lda L3828
            cmp #$0F
            bne LACB4
            jsr LAB9B
            jmp LACBB
LACB4       cmp #$03
            bne LACBB
            jsr LAB9B
LACBB       lda L3828
            cmp #$19
            beq LACC6
            cmp #$1A
            bne LACDB
LACC6       dec L386D
            bne LACD7
            lda L386C
            sta L3828
            lda #$01
LACD3       sta L381E
LACD6       rts
LACD7       lda #$02
            bne LACD3
LACDB       lda L3876
            cmp #$01
            bne LACED
            jsr LB022
            lda TRIG0,X
            bne LACED
            jmp LAE17
LACED       jsr LADFA
            cmp #$FF
            beq LACD6
            jsr LAA97
            lda L0098
            bne LAD09
            jsr LAB9B
            lda L0098
LAD00       bne LAD09
            jsr LABF3
            lda L0098
            beq LACD6
LAD09       stx L215C
            jsr LADFA
            eor #$FF
            tay
            lda L0098
            clc
            ror
            bne LAD51
            tya
            and #$03
            beq LAD37
            and #$01
            beq LAD35
            lda L0095
            beq LAD37
            ldy #$0E
            ldx L38C0
            stx L3814
            cmp #$0F
            bne LAD47
            ldy #$05
            bne LAD47
LAD35       lda L0094
LAD37       beq LADAD
            ldx L38C0
            stx L3814
            ldy #$0E
            cmp #$03
            bne LAD47
            ldy #$05
LAD47       sta L3828
            tya
            jsr LB8AE
            jmp LADF2
LAD51       ldx L215C
            tya
            and #$04
            beq LAD8F
            lda L0095
            beq LADB6
            cpx #$00
            bne LAD71
            ldx L00A6
            cpx #$02
            bne LAD71
            ldx #$0D
            stx L385A
            ldx #$01
            stx L2081
LAD71       ldy #$0D
            cmp #$13
            bne LAD47
            bit L00BF
            bmi LAD84
            lda L00BF
            beq LAD92
            jsr LAE0C
            bne LADBA
LAD84       sta L3828
            tya
            jsr LB8AE
            lda #$0F
            bne LADF4
LAD8F       tya
            and #$08
LAD92       beq LADF7
            lda L0094
            beq LADD0
            cpx #$06
            bne LADA9
            bit L00BF
            bpl LADA5
            jsr LAE0C
            bne LADD4
LADA5       ldy L00BF
            beq LADF7
LADA9       ldy #$0D
            bne LAD47
LADAD       tya
            and #$0C
            beq LADF7
            and #$04
            beq LADD0
LADB6       lda L0093
            beq LADF7
LADBA       inc L00A4
            lda L00A4
            cmp #$04
            bne LADCB
            lda #$0E
            jsr LB8AE
            lda #$00
            sta L00A4
LADCB       clc
            adc #$0A
            bne LADE8
LADD0       lda L0092
            beq LADF7
LADD4       inc L00A5
            lda L00A5
            cmp #$04
            bne LADE5
            lda #$0E
            jsr LB8AE
            lda #$00
            sta L00A5
LADE5       clc
            adc #$05
LADE8       sta L386C
            sta L3828
            lda #$03
            bne LADF4
LADF2       lda #$08
LADF4       sta L381E
LADF7       ldx L009B
            rts
LADFA       ldy PORTA
            jsr LB022
            tya
            cpx #$00
            beq LAE09
            lsr
            lsr
            lsr
            lsr
LAE09       ldx L009B
            rts
LAE0C       lda #$80
            sta L20C3
            lda #$0C
            sta L385A
            rts
LAE17       lda #$07
            jsr LB8AE
            lda L3828
            sta L386C
            cmp #$12
            bcs LAE32
            cmp #$10
            bpl LAE52
            cmp #$0A
            bpl LAE32
            cmp #$05
            bpl LAE52
LAE32       lda L380A
            cmp #$5E
            bne LAE4E
            lda L3814
            cmp #$A2
            bcc LAE4E
            cmp #$A7
            bcs LAE4E
            jsr LADFA
            and #$04
            bne LAE4E
            jsr LAE71
LAE4E       lda #$19
            bne LAE54
LAE52       lda #$1A
LAE54       sta L3828
            lda #$02
            sta L381E
            lda #$06
            sta L386D
            jsr LB022
            lda TRIG0,X
            bne LAE6E
            lda #$00
            sta L3876
LAE6E       ldx L009B
            rts
LAE71       ldy L00A6
            dey
            bne LAE9C
            lda L380A
            sta L0094
            sta L0096
            lda #$3C
            sta L0095
            lda #$3D
            ldy #$1B
            jsr LB548
            lda #$5A
            sta L380A
            lda #$96
LAE8F       sta L3814
            lda #$02
            sta L385A
            sta L2055
            bne LAE4E
LAE9C       rts
LAE9D       cpx #$02
            bne LAEB9
            lda L00CC
            bne LAEB9
            lda L382A
            cmp #$1F
LAEAA       bne LAF12
LAEAC       lda L3816
            cmp #$C4
            bcs LAEBA
            inc L3816
            inc L3816
LAEB9       rts
LAEBA       lda L380C
            cmp #$D6
            bcs LAED0
            ldy #$03
            jsr LB53B
            inc L380C
            inc L380C
            inc L3820
            rts
LAED0       bit L00FF
            bmi LAF0F
            jsr LB537
            lda #$0A
            sta L382A
            lda #$20
            ldy L00A6
            cpy #$02
            bne LAEE6
            lda #$00
LAEE6       sta L38A9
            lda #$80
            sta L00CC
            lda #$03
            sta L00C0
            ldy #$04
            jsr L83E9
            lda #$15
            jsr LB29F
            lda #$19
            sta L00C8
            lda #$0F
            sta L388F
            lda #$C4
            sta L3816
            lda #$D6
            sta L380C
            rts
LAF0F       jmp LB537
LAF12       jsr LB679
            ldy L00C0
            cpy #$07
            beq LAF2B
            inc L00C0
            iny
            lda L3888,Y
            sta L381E,X
            lda L00C1,Y
            sta L3828,X
            rts
LAF2B       bit L00FF
            bmi LAF82
            bit L38A9
            bvc LAF8F
            bpl LAF66
            bit L2159
            bpl LAF82
            ldy L38AA
LAF3E       lda L38A0,Y
            bmi LAF61
            bne LAF4B
            iny
            inc L38AA
            bne LAF3E
LAF4B       lda L3898,Y
            sta L382A
            lda L3890,Y
            sta L3820
            tya
            tax
            dec L38A0,X
            ldx L009B
            jmp LB679
LAF61       lda #$40
            sta L38A9
LAF66       lda #$03
            sta L3878
            jsr LB022
            lda L2098,X
            clc
            adc L00A2
            cmp #$09
            bcs LAF82
            lda L3812
            bne LAF82
            lda L3813
            beq LAF8F
LAF82       ldx #$00
            stx L3878
            stx L38A9
            stx L2159
            ldx L009B
LAF8F       lda L38A9
            cmp #$20
            bne LAFAC
            lda L3816
            cmp #$7C
            bcc LAFA4
            lda #$03
            sta L3878
            bne LAFAC
LAFA4       lda #$00
            sta L3878
            sta L38A9
LAFAC       ldx L009B
LAFAE       lda L382A
            cmp #$FF
            bne LAFCF
            lda #$40
            sta L00FE
            lda #$F0
            sta L3887
            lda #$00
            sta L3878
            inc L3820
            lda #$05
            sta L382A
            jsr LA5DB
            rts
LAFCF       lda L00FF
            bne LB01F
            lda L00CD
            bne LB015
            lda L380A
            cmp L380C
            bne LAFE2
            jmp LB231
LAFE2       lda L3814
            cmp #$CA
            bcs LAFF8
            cmp #$2E
            bcc LAFF8
            sec
            sbc L3816
            bcc LAFFB
            cmp L3869
            bcc LB000
LAFF8       jmp LB218
LAFFB       cmp L386A
            bcc LAFF8
LB000       lda L380A
            sec
            sbc L380C
            bcc LB018
            cmp #$20
            beq LB012
            bcc LB012
            jmp LB153
LB012       jmp LB12A
LB015       jmp LB1C5
LB018       cmp #$E0
            bne LAFF8
            jmp LB191
LB01F       jmp LB1FB
LB022       lda L00EA
            and #$01
            tax
            rts
LB028       jsr LAA97
            lda L0098
            beq LB07E
            ldy #$08
            jsr L83E9
            lda #$19
            sta L00C4
            lda #$0F
            sta L388B
            lda L00CE
            ora L3878
            sta L00CE
            and #$01
            bne LB066
            lda L00C8
            cmp #$0E
            beq LB0B8
            cmp #$10
            bne LB055
LB052       jmp LB107
LB055       lda L0094
            beq LB066
LB059       ldy #$04
LB05B       sta L00C4,Y
            dey
            bne LB05B
            ldx #$02
            stx L00C0
            rts
LB066       lda L00CE
            and #$02
            bne LB07E
            cpx #$06
            bpl LB07E
            lda L00C8
            cmp #$09
            beq LB085
            cmp #$04
            beq LB052
            lda L0095
LB07C       bne LB059
LB07E       jsr LABF3
            lda L0098
            clc
            ror
LB085       beq LB0F9
            cpx #$00
            bne LB0C4
            lda L00A6
            cmp #$02
            bne LB0C4
            lda L00CE
            and #$02
            bne LB0B8
            lda #$12
            sta L382A
            lda #$01
            sta L2081
            lda #$08
            sta L385C
            sta L3820
            ldx L009B
            rts
LB0AC       lda L3816
            cmp LA902+1
            bcc LB0B8
            lda #$0A
            bne LB11D
LB0B8       lda L3816
            cmp LA900
            bcs LB0AC
            lda #$05
            bne LB11D
LB0C4       lda L3816
            cmp #$56
            bcc LB0B8
            sty L009D
            ldy #$08
            jsr L83E9
            ldy L00CE
            cmp #$03
            bne LB0DF
            tya
            and #$08
            bne LB0B8
            beq LB0E4
LB0DF       tya
            and #$04
            bne LB0AC
LB0E4       lda #$19
            sta L00C4
            ldy #$08
            jsr L83E9
            lda #$0F
            sta L388B
            lda L009D
            clc
            adc #$15
            bne LB07C
LB0F9       lda L00CE
            and #$04
            bne LB0AC
            lda L0092
            beq LB107
            cmp L00C8
            beq LB0B8
LB107       lda L00CE
            and #$08
            bne LB0B8
            lda L0093
            beq LB0B8
            cmp L00C8
            beq LB0AC
            lda L00C8
            cmp #$17
            beq LB0B8
            lda L0093
LB11D       ldy #$03
            sty L388F
            jsr LB059
            lda #$06
            sta L00C0
            rts
LB12A       ldy #$1A
            lda L3828
            cmp #$0A
            bcs LB135
            ldy #$96
LB135       sty L009D
            lda RANDOM
            cmp L009D
            bcs LB141
            jmp LB028
LB141       ldy #$06
            jsr LB162
            iny
            sty L00C6
            sty L00C7
            ldy #$14
            sty L00C5
            iny
            sty L00C8
            rts
LB153       jsr LB12A
            ldy #$06
            sty L388A
            ldy #$12
            sty L00C3
            dec L00C0
            rts
LB162       jsr L83E9
            ldy #$02
            sty L00C0
            jsr LB022
            lda L2098,X
            sta L00F0
            ldx L00A6
            ldy #$00
            lda L387B,X
            sec
            sbc L00F0
            cmp #$03
            bcc LB182
            ldy L3868
LB182       sty L00CC
            ldx L009B
            ldy #$0F
            sty L388B
            ldy #$19
            sty L00C4
            iny
            rts
LB191       lda L380A
            cmp #$5E
            bne LB1B1
            lda L00A6
            cmp #$03
            bne LB1B1
            lda L3816
            sec
            sbc L3817
            bcc LB1AD
            cmp #$30
            bcs LB1B1
            bcc LB1C5
LB1AD       cmp #$D4
            bcs LB1C5
LB1B1       ldy #$04
            jsr LB162
            iny
            iny
            sty L00C6
            sty L00C7
            ldy #$14
            sty L00C8
            iny
            iny
            sty L00C5
            rts
LB1C5       ldy L00CD
            bne LB1E7
            lda L00CE
            ldy L380A
            cpy L380C
            bcs LB1D7
            ora #$01
            bne LB1D9
LB1D7       ora #$02
LB1D9       ldy L3814
            cpy L3816
            bcs LB1E5
LB1E1       ora #$04
            bne LB1E7
LB1E5       ora #$08
LB1E7       sta L00CE
            jsr LB028
            inc L00CD
            ldy L00CD
            cpy #$04
            bne LB1FA
            lda #$00
            sta L00CE
            sta L00CD
LB1FA       rts
LB1FB       clc
            ror
            bcc LB206
            ldy L00CD
            bne LB206
            jmp LB028
LB206       lda L00CE
            ldy L00CD
            bne LB1E7
            inc L00FF
            ldy L3814
            cpy L3816
            bcc LB1E5
            bcs LB1E1
LB218       lda L00CE
            ldy L380A
            cpy L380C
            bcs LB226
            ora #$01
            bne LB228
LB226       ora #$02
LB228       jsr LB1E7
            dey
            sty L00CD
            sty L00CE
            rts
LB231       lda L3816
            cmp #$35
            bcs LB257
            lda L2097
            bne LB25B
            lda L2096
            bne LB25B
            lda L2007
            bne LB25B
            lda L20A1
            asl
            sta L2051
            lda #$01
            sta L2007
            lda #$1D
            bne LB276
LB257       cmp #$C4
            bcs LB25E
LB25B       jmp LB028
LB25E       lda L2096
            bne LB25B
            lda L2006
            bne LB25B
            lda L20A1
            asl
            sta L2050
            lda #$01
            sta L2006
            lda #$1E
LB276       jsr LB29F
            ldy #$08
            jsr L83E9
            lda L2097
LB281       beq LB287
            lda #$01
            bne LB28A
LB287       lda L20A5
LB28A       sta L2008
            lda #$03
            sec
            sbc L2008
            sta L00C0
            lda #$F0
            sta L00C8
            lda #$28
            sta L388F
            rts
LB29F       ldx #$07
LB2A1       sta L00C1,X
            dex
            bpl LB2A1
            ldx L009B
            rts
LB2A9       cpx #$01
LB2AB       bne LB2B9
            lda L00CB
            beq LB2BA
            lda #$04
LB2B3       sta L3829
            inc L381F
LB2B9       rts
LB2BA       lda #$03
            bne LB2B3
LB2BE       cpx #$04
            bcc LB2B9
            lda L380A,X
            beq LB2B9
            ldy #$00
            txa
            clc
            ror
            bcc LB2CF
            iny
LB2CF       bit L00FF
            bmi LB2B9
            jsr LB022
            lda L2098,X
            sta L009D
            ldx L00A6
            lda L387B,X
            sec
            sbc L009D
            ldx L009B
            cmp L00A2
            bne LB2ED
            lda #$80
            sta L00CF
LB2ED       cpx #$08
            bcc LB301
            lda L3812,Y
            cmp #$CE
            bcc LB34B
            jsr LB3AE
            jsr L8357
            ldx L009B
            rts
LB301       cpx #$06
            bcc LB330
            lda L3810,Y
            cmp #$A4
            bcs LB31A
            cmp #$90
            bcs LB34B
            cmp #$8A
            bcc LB34B
            jsr LB3DB
            jmp LB34D
LB31A       sta L3812,Y
            lda L381A,Y
            sta L381C,Y
            lda L386A,X
            sta L386C,X
            jsr LB3D2
            inx
            inx
            bne LB34B
LB330       lda L380E,Y
            cmp #$72
            bcc LB34B
            sta L3810,Y
            lda L3818,Y
            sta L381A,Y
            lda L386A,X
            sta L386C,X
            jsr LB3D2
            inx
            inx
LB34B       lda #$00
LB34D       sta L00CB
            lda L380A,X
            cmp #$52
            bcs LB36D
            cmp #$50
            bne LB369
            lda L38C3
            beq LB363
            dec L38C3
            rts
LB363       lda RTCLOK+2
            and #$3F
            bne LB3A5
LB369       lda #$01
            sta L00CB
LB36D       tya
            clc
            adc #$07
            sta L381E,X
            lda L3814,X
            cmp #$B4
            bcs LB3A6
            cmp #$5A
            bcc LB3AA
            lda L00A6
            cmp #$02
            bne LB390
            cpy #$00
            bne LB390
            lda L380A,X
            cmp #$6E
            bcs LB3A6
LB390       lda RANDOM
            ldy #$00
            cmp #$6E
            bcc LB39F
            cmp #$DA
            bcc LB39E
            iny
LB39E       iny
LB39F       tya
LB3A0       sta L3828,X
            ldx L009B
LB3A5       rts
LB3A6       lda #$01
            bne LB3A0
LB3AA       lda #$00
            beq LB3A0
LB3AE       tya
            pha
            bne LB3B6
            lda #$0F
            bne LB3B8
LB3B6       lda #$F0
LB3B8       sta L009E
            ldy L3846,X
            dey
            lda #$3B
            sta L0099
            lda L380A,X
            sta L0098
LB3C7       lda (L0098),Y
            and L009E
            sta (L0098),Y
            dey
            bpl LB3C7
            pla
            tay
LB3D2       lda #$00
            sta L380A,X
            sta L381E,X
            rts
LB3DB       bit L00CF
            bmi LB416
            lda L83F7,Y
            sta L380E,Y
            lda L00A6
            sec
            sbc #$01
            clc
            rol
            sty L009D
            adc L009D
            tax
            lda L83F9,X
            sta L3818,Y
            ldx L009B
            inc L00A2
            lda L00A6
            cmp #$03
            bne LB40B
            lda L3874
            clc
            adc #$01
            cmp #$04
            bne LB40D
LB40B       lda #$00
LB40D       sta L3874
            sta L3868,X
            lda #$01
            rts
LB416       lda #$00
            rts
LB419       ldy #$01
            jsr LB022
            lda L2098,X
            sta L009D
            ldx L00A6
            lda L387B,X
            sec
            sbc L009D
            ldx #$07
            cmp L00A2
            beq LB448
            sec
            sbc #$01
            cmp L00A2
            bne LB43A
            dey
            dex
LB43A       lda #$80
            sta L38C3
            stx L009B
            jsr LB3DB
            dex
            dey
            bpl LB43A
LB448       rts
LB449       txa
            clc
            ror
            bcs LB452
            lda #$F0
            bne LB454
LB452       lda #$0F
LB454       sta L0098
            eor #$FF
            sta L0099
LB45A       lda (L0090),Y
            and L0098
            sta L009E
            lda (L0094),Y
            and L0099
            ora L009E
            sta (L0094),Y
            dey
            bpl LB45A
            jmp LAA51
LB46E       ldy #$00
            bit L2122
            bvs LB479
            bmi LB478
            rts
LB478       iny
LB479       ldx #$04
            lda L380A
            sec
            sbc #$09
            sta L009D
            cmp #$A4
            bcs LB48D
            cmp #$72
            bcc LB491
            bcs LB48F
LB48D       inx
            inx
LB48F       inx
            inx
LB491       cpy #$00
            beq LB496
            inx
LB496       lda L380A,X
            cmp L009D
            bcs LB4A3
            cpx #$08
            bcs LB4A3
            inx
            inx
LB4A3       lda #$00
            sta L2122
            jsr LB3AE
            cpx #$06
            bcs LB4B3
            inx
            inx
            bne LB4C3
LB4B3       cpx #$08
            bcs LB520
            lda L380A,X
            cmp #$8A
            bcs LB520
            lda L3808,X
            bne LB520
LB4C3       stx L009B
            jmp LB3DB
LB4C8       cpx #$03
            bne LB520
            lda L00A6
            cmp #$03
            bne LB520
            lda L3817
            cmp #$29
            bcs LB4EB
            jsr LB537
            lda RTCLOK+1
            and #$03
            bne LB520
            lda RTCLOK+2
            bne LB520
            ldy #$28
            sty L380D
LB4EB       ldy #$02
            lda L380D
            cmp #$60
            bcs LB4FE
LB4F4       iny
            lda L3817
            cmp #$35
            bcc LB4FE
            ldy #$00
LB4FE       cpy #$02
            bne LB50B
            lda L3817
            cmp #$34
            bcs LB50B
            ldy #$07
LB50B       sty L009E
            lda L3867
            bmi LB521
            and #$F8
            ora L009E
            eor #$40
            sta L3867
            lda #$03
            sta L3821
LB520       rts
LB521       eor #$90
            sta L3867
            jsr LB537
            lda #$28
            sta L3817
            lda #$00
            sta L390C
            sta L390D
            rts
LB537       ldy L3846,X
            dey
LB53B       lda L380A,X
            sta L0094
            sta L0096
            lda #$3E
            sta L0095
            lda #$3F
LB548       sta L0097
            lda #$00
LB54C       sta (L0094),Y
            sta (L0096),Y
            dey
            bpl LB54C
LB553       rts
LB554       lda L390C
            and #$0C
            bne LB562
            lda L390D
            and #$0C
            beq LB553
LB562       bit L3867
            bmi LB5E2
            lda L380A
            cmp #$67
            bcs LB595
            lda L390C
            and #$04
            bne LB583
            lda L390D
            and #$04
            bne LB583
            lda L380C
            cmp #$7D
            bcc LB595
LB583       lda L3817
            cmp #$28
            beq LB58E
            ldx #$03
            bne LB597
LB58E       lda L380C
            cmp #$7D
            bcs LB5E2
LB595       ldx #$02
LB597       lda L00A0
            bne LB5EE
            cpx #$02
            beq LB5E3
            ldy L3828
            lda L3814
            cmp L3817
            bcc LB5B0
            cpy #$19
            bne LB624
            beq LB5B4
LB5B0       cpy #$1A
            bne LB624
LB5B4       lda L00A6
            cmp #$03
            bne LB5E2
            lda L380D
            cmp #$64
            bne LB624
            lda L380A
            cmp #$66
            beq LB624
            lda #$00
            sta L00F6
            lda #$10
            sta L00F7
            jsr LA0A2+1
            lda #$08
            sta L3821
            lda L3867
            and #$AF
            ora #$80
            sta L3867
LB5E2       rts
LB5E3       lda L382A
            bmi LB5E2
            cmp #$1F
            beq LB5E2
            bne LB624
LB5EE       cpx #$02
            bne LB5B4
            lda L382A
            cmp #$1F
            beq LB5E2
            lda L3887
            bmi LB607
            lda #$40
            sta L00FE
            lda #$F0
            sta L3887
LB607       lda #$1F
            sta L382A
            lda #$01
            sta L3820
            lda #$00
            sta L00CC
            sta L2159
            sta L38A9
            sta L00F6
            lda #$30
            sta L00F7
            jmp LA0A2+1
LB624       lda L3828
            cmp #$1F
            beq LB5E2
            lda L2147
            bne LB5E2
            bit L00FF
            bmi LB5E2
            jsr L8914
            lda #$04
            jsr LB8AE
            ldy #$01
            sty L381E
            sty L2147
            lda #$1F
            sta L3828
            ldx #$00
            stx L009B
            jsr LA5DB
            ldy #$40
            jsr LA42E
            ldx #$07
            lda #$00
LB659       sta L2128,X
            dex
            bpl LB659
            sta HPOSP0
            sta HPOSP1
            sta L3814
            jsr LB022
            lda #$00
            sta L38C1,X
            jsr LA449
            jsr L885F
            jmp L885F
LB679       bit L00FE
            bpl LB6E4
            lda L3816
            cmp #$76
            bcc LB6E4
            cmp #$84
            bcs LB6E4
            lda L206E
            ldy L380C
            ldx #$00
            cpy #$7E
            beq LB69A
            inx
            cpy #$9E
            beq LB69A
            inx
LB69A       cmp LB6DB,X
            bne LB6E4
            lda L206F
            cmp LB6DE,X
            bne LB6E4
            lda LB6E1,X
            sta L3887
            sta L00F7
            lda #$00
            sta L00F6
            sta L2159
            sta L00FE
            sta L38A9
            jsr LA0A2+1
            ldx L009B
            lda #$7C
            sta L3816
            ldy #$08
            jsr LB53B
            ldy #$10
            jsr L83E9
            lda #$FF
            sta L382A
            sta L00CC
            sta L00C0
            jmp LB29F
LB6DB       .byte $A3,$43,$E3
LB6DE       and (BUFRLO),Y
            .byte $32
LB6E1       bpl LB703
            rti
LB6E4       ldx L009B
LB6E6       rts
LB6E7       jsr LB768
            cmp #$38
            bcs LB6E6
            cpx #$19
            bne LB771
            ldx #$0F
            cpy #$02
            beq LB708
            cpy #$01
            bne LB771
            lda L3208
            cmp #$C4
            bne LB771
LB703       stx L3208
            beq LB74B
LB708       lda L32A8
            cmp #$C4
            bne LB771
            stx L32A8
            beq LB74B
LB714       jsr LB768
            jsr LB772
            cpy #$02
            bne LB771
            cmp #$9B
            bne LB771
            ldx #$0F
LB724       stx L32CF
            bpl LB74B
LB729       jsr LB768
            jsr LB772
            ldx #$00
            cpy #$02
            beq LB745
            cpy #$01
            bne LB771
            lda L322F
            cmp #$E1
            bne LB771
            stx L322F
            beq LB74B
LB745       cmp #$E1
            bne LB771
            beq LB724
LB74B       jsr LB022
            lda #$FF
            sta L214E,X
            lda #$80
            sta L00A0
            sta L00FF
            sta L215A
            lda #$03
            sta L00A1
            jsr L8914
            lda #$12
            jmp LB8AE
LB768       lda L3814
            ldx L3828
            ldy L20A1
LB771       rts
LB772       cmp #$C1
            bcc LB77A
            cpx #$1A
            beq LB77C
LB77A       pla
            pla
LB77C       lda L32CF
            rts
LB780       jsr LB022
            lda L2106
            bne LB7CB
            lda L0087
            cmp #$01
            beq LB794
            cmp #$02
            beq LB7CC
            bne LB7E5
LB794       lda #$3A
            sta L3230
            sta L32D0
            lda L214E,X
            bne LB7CB
            lda L3208
            cmp L00EB
            beq LB7C8
            lda L32A8
            cmp L00EB
            beq LB7C8
            lda #$0F
            bit L210A
            bmi LB7C0
            sta L32A8
            lda #$C4
            sta L3208
            bne LB7C8
LB7C0       sta L3208
            lda #$C4
            sta L32A8
LB7C8       inc L210A
LB7CB       rts
LB7CC       lda #$1A
            sta L32F7
            lda L214E,X
            bne LB7CB
            lda L32CF
            cmp L00EC
            beq LB7C8
            lda #$9B
            sta L32CF
            bne LB7C8
            rts
LB7E5       lda #$60
            sta L3257
            sta L32F7
            lda L214E,X
            bne LB7CB
            lda L322F
            cmp L00EC
            beq LB7C8
            lda L32F7
            cmp L00EC
            beq LB7C8
            bit L210A
            bmi LB811
            lda #$00
            sta L32CF
            lda #$E1
            sta L322F
            bne LB7C8
LB811       lda #$00
            sta L322F
            lda #$E1
            sta L32CF
            bne LB7C8
LB81D       bit L3887
            bpl LB833
            lda L3905
            and #$0B
            cmp #$0B
            bne LB833
            lda #$00
            sta L3905
            jmp LB624
LB833       lda L3904
            and #$0B
            cmp #$0B
            beq LB845
LB83C       lda #$F0
            sta L210D
            sta L210E
            rts
LB845       lda L3814
            sec
            sbc #$30
            lsr
            lsr
            sta L210E
            lda L3828
            cmp #$1A
            beq LB85D
            cmp #$19
            beq LB86B
            bne LB83C
LB85D       lda L210E
            clc
            adc #$02
            sta L210D
            lda #$F2
            sta L210E
LB86B       dec L210E
            dec L210E
            rts
LB872       lda L214D
            eor #$80
            sta L214D
            ldx #$00
            bit L214D
            bmi LB883
            ldx #$01
LB883       lda LB88D,X
            sta L311C
            sta L311D
            rts
LB88D       .byte $67
LB88E       ror L00A9
            .byte $00
            ldx #$4A
LB893       sta L2010,X
            dex
            bpl LB893
            sta L2081
            sta L2095
            sta L20A8
            sta L2106
            ldx #$08
LB8A7       sta L2000,X
            dex
            bpl LB8A7
            rts
LB8AE       stx L215C
            sty L215D
            cmp #$0F
            bcs LB8C0
            cmp L215B
            bcs LB920
LB8BD       sta L215B
LB8C0       bit L00FF
            bpl LB8C8
            cmp #$0F
            bcc LB920
LB8C8       ldx #$28
            stx AUDCTL
            cmp #$13
            bcc LB8D7
            sta L225E
            sta L225B
LB8D7       asl
            asl
            tax
            ldy #$00
            lda LB9FB,X
            bne LB8E4
            inx
            bne LB8F3
LB8E4       sta L00E5
            inx
            lda LB9FB,X
            sta L00E4
            ldy #$40
            lda #$01
            sta L2258
LB8F3       inx
            lda LB9FB,X
            beq LB90A
            sta L00E7
            inx
            lda LB9FB,X
            sta L00E6
            tya
            ora #$80
            tay
            lda #$01
            sta L2259
LB90A       tya
            ora L225A
            sta L225A
            cpy #$C0
            bne LB91A
            lda #$00
            sta L225E
LB91A       ldx L215C
            ldy L215D
LB920       rts
LB921       bit L225A
            bvc LB98C
            lda RTCLOK+2
            lsr
            bcs LB939
            ldx L2256
            cpx #$A0
            beq LB939
            dex
            stx L2256
            stx AUDC2
LB939       ldx L2258
            dex
            bmi LB94B
            bne LB986
            stx AUDC2
            bit L215A
            bmi LB986
            bvs LB986
LB94B       ldy #$00
            lda (L00E4),Y
            tax
            bne LB964
            dey
            sty L215B
            sta AUDC2
            lda L225A
            and #$80
            sta L225A
            jmp LB989
LB964       iny
            lda (L00E4),Y
            sta AUDF2
            lda #$AC
            bit L215A
            bvs LB975
            bmi LB975
            lda #$A6
LB975       sta AUDC2
            sta L2256
            lda L00E4
            clc
            adc #$02
            sta L00E4
            bcc LB986
            inc L00E5
LB986       stx L2258
LB989       bit L225A
LB98C       bpl LB920
            lda L225E
            cmp #$13
            bcs LB99A
            lda RTCLOK+2
            lsr
            bcs LB9A8
LB99A       ldx L2257
            cpx #$A0
            beq LB9A8
            dex
            stx L2257
            stx AUDC4
LB9A8       ldx L2259
            dex
            bmi LB9B5
            bne LB9F7
            stx AUDC4
            beq LB9F7
LB9B5       ldy #$00
            lda (L00E6),Y
            tax
            bne LB9D8
            ldx L225B
            cpx #$13
            bcc LB9CA
            txa
            jsr LB8C0
            jmp LB9A8
LB9CA       sta AUDC4
            lda L225A
            and #$40
            sta L225A
            jmp LB9FA
LB9D8       iny
            lda (L00E6),Y
            sta AUDF3
            iny
            lda (L00E6),Y
            sta AUDF4
            lda #$A9
            sta AUDC4
            sta L2257
            lda L00E6
            clc
            adc #$03
            sta L00E6
            bcc LB9F7
            inc L00E7
LB9F7       stx L2259
LB9FA       rts
LB9FB       tsx
            .byte $62,$00,$00
            tsx
            .byte $57,$00,$00
            tsx
            adc.w L0000
            tsx
            adc.w L0000
            ldx.w L00DD,Y
            .byte $00,$BF
            lsr
            .byte $00,$00,$BF
            sta.w L0000,X
            .byte $BF,$82,$00,$00,$BF,$E2,$00,$00,$BF,$9C,$00,$00,$BF,$9C,$00,$00
            .byte $BF,$9C,$00,$00,$BF,$9C,$00,$00,$BF
            adc.w L0000
            .byte $BF
            sta (L0000),Y
            .byte $00
            tsx
            lda (L00BA),Y
            .byte $D2,$BB
            asl L00BB
            .byte $2F,$BB
            rts
            .byte $BB
            lda L00BB
            dec L00BC,X
            .byte $63,$00,$00
            tsx
            .byte $7A,$00,$00
            lda.w STATUS,X
            .byte $00
            lda.w L00CA,X
            .byte $00
            ldx HATABS+2,Y
            ora L1A03,X
            ora #$17
            ora #$28
            .byte $0F
            ora DDEVIC,X
            .byte $17,$03,$1A
            ora #$1D
            ora #$11
            .byte $0F,$13,$00,$03
            ora L1A03,X
            .byte $03
            ora L1A03,X
            .byte $07
            ora (APPMHI+1),Y
            ora L0000,X
            .byte $04,$54
            ora L5404
            ora L5409
            ora L1809
            asl L1809
            asl L0409
            .byte $0F
            ora #$04
            .byte $0F
            ora #$EC
            .byte $0F
            ora #$EC
            .byte $0F,$04
            ora DOSINI
            .byte $04
            ora DOSINI
            ora #$05
            .byte $0C
            ora #$8B
            .byte $0C
            ora #$8B
            .byte $0C
            ora #$54
            ora L5409
            ora L1809
            asl L1809
            asl L0F00
            pha
            .byte $07
            pha
            .byte $07
            eor (APPMHI+1),Y
            .byte $5B,$0F
LBABA       .byte $3C,$0F,$44,$07,$44,$07
            pha
            .byte $0F
            eor (APPMHI+1),Y
            and APPMHI+1,X
            .byte $3C,$07,$3C,$07,$44,$0F
            pha
            .byte $0F,$2F,$3F
            and L0F00
            .byte $03
            plp
            .byte $0F,$03
            plp
            .byte $0F
            cpy #$1F
            .byte $0F,$B2,$1A,$0F
            lda ICSTAZ
            .byte $0F
            lda ICSTAZ
            .byte $0F
            sed
            ora LC80F,X
            .byte $17,$0F
            cpy #$1F
            .byte $0F
            cpy #$1F
            .byte $0F,$B2,$1A,$0F,$2F
            ora CMCMD,X
            inc L0713,X
            iny
            .byte $17,$07,$B2,$1A,$07
            cpy #$1F
            .byte $1F,$03
            plp
            .byte $00,$0B,$00,$0B,$3C,$0B
            rti
            .byte $0B,$3C,$0B
            plp
            .byte $17,$2F,$0B,$3C,$0B
            rti
            .byte $0B,$44,$0B
            rti
            .byte $3B
            plp
            .byte $0B,$00,$0B
            pha
            .byte $0B
            jmp L480B
            .byte $0B,$3C,$17
            plp
            .byte $0B,$2F,$2F
            and ICAX6Z,X
            .byte $3C,$00,$17,$B2,$1A,$17
            lda ICSTAZ
            .byte $17,$64
            rol
            .byte $17,$6B
            and ICCOMT,X
            .byte $2F
            ora ICCOMT,X
            eor #$1C
            .byte $17
            lda ICSTAZ
            .byte $17,$64
            rol
            .byte $17
            inc L1713,X
            .byte $B2,$1A,$17
            lda ICSTAZ
            .byte $17,$64
            rol
            .byte $0B
            lda ICSTAZ
            .byte $17
            iny
            .byte $17,$0B
            lda ICSTAZ
            .byte $2F,$B2,$1A,$00
            ora ICAX6Z
            ora BFENHI
            .byte $0B,$3C,$0B,$2F
            ora ICAX6Z
            ora BFENHI
            ora NOCKSM
            ora FREQ
            ora NOCKSM
            ora FREQ
            ora FMSZPG+5
            ora HOLD1
            ora FMSZPG+5
            ora HOLD1
            ora OLDCOL
            ora FKDEF
            ora BUFSTR
            ora FKDEF
            ora OLDCOL
            ora HOLD1
            ora FMSZPG+5
            ora FREQ
            ora NOCKSM
            ora BFENHI
            .byte $17,$2F,$17
            rts
            .byte $0B
            eor (ICCOMT),Y
            eor (DOSVEC+1),Y
            eor (ICCOMT),Y
            pha
            .byte $17
            rti
            .byte $17,$3C,$17,$3C,$2F,$3C,$00,$0B,$00,$00,$17,$B2,$1A,$17
            lda ICSTAZ
LBBAE       .byte $17,$03
            plp
            .byte $17,$6B
            and ICCOMT,X
            lda ICSTAZ
            .byte $17
            stx ICAX6Z,Y
LBBBA       .byte $17
LBBBB       .byte $6B
            and ICCOMT,X
            lda ICSTAZ
            .byte $0B,$6B
            and ICSTAZ,X
            .byte $6B
            and ICCOMT,X
            lda ICSTAZ
            .byte $17
            stx ICAX6Z,Y
            .byte $17,$B2,$1A,$17
            ora L2F07
            ora.w CMCMD
            eor (L0000,X)
            ora FKDEF
            ora HOLD1
            ora HOLD1
            ora HOLD1
            .byte $0B,$5B
            ora FKDEF
            ora L0551,X
            eor (RAMLO+1),Y
            pha
            ora OLDCOL
            ora FMSZPG+5
            .byte $0B,$3C
            ora FMSZPG+5
            ora L0551,X
            eor (RAMLO+1),Y
            pha
            ora OLDCOL
            ora FMSZPG+5
            ora NOCKSM
            ora FREQ
            ora FMSZPG+5
            ora HOLD1
            ora FMSZPG+5
            ora HOLD1
            .byte $0B
            rts
            ora HOLD1
            ora HOLD1
            ora HOLD1
            ora HOLD1
            .byte $0B
            pha
            ora FREQ
            ora L053C,X
            rts
            ora HOLD1
            ora HOLD1
            ora HOLD1
            .byte $0B,$5B
            ora FKDEF
            ora L0551,X
            eor (RAMLO+1),Y
            pha
            ora OLDCOL
            ora FMSZPG+5
            .byte $0B,$3C
            ora FMSZPG+5
            ora L0551,X
            eor (RAMLO+1),Y
            pha
            ora OLDCOL
            ora FMSZPG+5
            ora NOCKSM
            ora FREQ
            ora FMSZPG+5
            ora HOLD1
            ora FMSZPG+5
            ora HOLD1
            .byte $0B
            rts
            ora HOLD1
            ora HOLD1
            ora HOLD1
            ora HOLD1
            .byte $0B
            pha
            ora FREQ
            .byte $03
            rti
            .byte $03,$3C,$03
            rti
            .byte $03,$3C,$03
            rti
            .byte $17,$3C,$00
            ora (L00B2),Y
            .byte $1A
            ora (L00B2),Y
            .byte $1A
            ora (L00B2),Y
            .byte $1A
            ora (L00B2),Y
            .byte $1A
            ora L0094
            asl
            ora L0094
            asl
            ora L0094
            asl
            .byte $0B
            cpx #$0B
            ora COLCRS+1
            ora L9410+1
            asl
            ora (L00B2),Y
            .byte $1A
            ora L00FB
            ora #$05
            lsr DOSINI+1,X
            ora L00FB
            ora #$0B
            .byte $EB,$07
            ora L00FB
            ora #$11
            sty DOSVEC,X
            ora (L00B2),Y
            .byte $1A
            ora L00FB
            ora #$05
            lsr DOSINI+1,X
            ora L00FB
            ora #$05
            .byte $EB,$07
            ora L00E4
            php
            ora L00FB
            ora #$05
            sty DOSVEC,X
            ora L00FB
            ora #$05
            sty DOSVEC,X
            .byte $0B
            lsr DOSINI+1,X
            ora L0094
            asl
            ora L0094
            asl
            ora L0094
            asl
            ora L0094
            asl
            .byte $0B,$FB
            ora #$05
            cpx WARMST
            ora (L00B2),Y
            .byte $1A
            ora (L00A5),Y
            .byte $23
            ora L0094
            asl
            ora L0094
            asl
            ora L0094
            asl
            .byte $0B
            cpx #$0B
            ora COLCRS+1
            ora L9410+1
            asl
            ora (L00B2),Y
            .byte $1A
            ora L00FB
            ora #$05
            lsr DOSINI+1,X
            ora L00FB
            ora #$0B
            .byte $EB,$07
            ora L00FB
            ora #$11
            sty DOSVEC,X
            ora (L00B2),Y
            .byte $1A
            ora L00FB
            ora #$05
            lsr DOSINI+1,X
            ora L00FB
            ora #$05
            .byte $EB,$07
            ora L00E4
            php
            ora L00FB
            ora #$05
            sty DOSVEC,X
            ora L00FB
            ora #$05
            sty DOSVEC,X
            .byte $0B
            lsr DOSINI+1,X
            ora L0094
            asl
            ora L0094
            asl
            ora L0094
            asl
            ora L0094
            asl
            .byte $0B,$FB
            ora #$05
            cpx WARMST
            ora (L00B2),Y
            .byte $1A
            ora (BUFCNT),Y
            and L0000,X
            ora #$B2
            .byte $1A,$13,$B2,$1A
            ora #$B2
            .byte $1A
            ora #$A5
            .byte $23,$13
LBD3D       lda ICSTAZ
            ora #$A5
            .byte $23
            ora #$B2
            .byte $1A,$13,$B2,$1A
            ora #$B2
            .byte $1A
            ora #$A5
            .byte $23
            ora #$A5
            .byte $23
            ora #$B2
            .byte $1A
            ora #$49
            .byte $1C
            ora #$C0
            .byte $1F,$13
            cpy #$1F
            ora #$C0
            .byte $1F
            ora #$64
            rol
            .byte $13,$64
            rol
            ora #$64
            rol
            ora #$C0
            .byte $1F,$13
            cpy #$1F
            ora #$C0
            .byte $1F
            ora #$64
            rol
            ora #$64
            rol
            ora #$C0
            .byte $1F
            ora #$A5
            .byte $23
            ora #$03
            plp
            .byte $13,$03
            plp
            ora #$03
            plp
            ora #$6B
            and RTCLOK+1,X
            .byte $6B
            and BOOT,X
            .byte $6B
            and BOOT,X
            .byte $03
            plp
            .byte $13,$03
            plp
            ora #$03
            plp
            ora #$6B
            and BOOT,X
            .byte $6B
            and BOOT,X
            stx ICAX6Z,Y
            ora #$64
            rol
            ora #$A5
            .byte $23,$13
            lda ICSTAZ
            ora #$A5
            .byte $23
            ora #$96
            .byte $2F,$13
            stx ICAX6Z,Y
            ora #$96
            .byte $2F
            ora #$A5
            .byte $23,$13
            lda ICSTAZ
            .byte $13
            lda ICSTAZ
            ora #$A5
            .byte $23
            ora #$C0
            .byte $1F
            ora #$49
            .byte $1C,$00
            ora L2803,X
            ora L1FC0,X
            .byte $13,$B2,$1A
            ora L2803,X
            ora L1FC0,X
            .byte $13,$B2,$1A
            ora L1DF8,X
            ora L17C8,X
            .byte $13
            inc L1D13,X
            sed
            ora LC81D,X
            .byte $17,$13
            inc L1D13,X
            .byte $B2,$1A
            ora L152F,X
            .byte $13,$CF
            ora (RTCLOK+1),Y
            inc L0913,X
            iny
            .byte $17
            ora L1AB2,X
            .byte $13
            sed
            ora LC009,X
            .byte $1F
            ora #$C0
            .byte $1F
            ora #$C0
            .byte $1F
            ora #$C0
            .byte $1F
            ora #$A5
            .byte $23
            ora #$A5
            .byte $23
            ora #$A5
            .byte $23
            ora #$A5
            .byte $23,$00
            ora #$03
            plp
            .byte $03,$03
            plp
            .byte $03
            cpy #$1F
            ora #$B2
            .byte $1A,$13,$B2,$1A
            ora #$B2
            .byte $1A
            ora #$C0
            .byte $1F
            ora #$B2
            .byte $1A
            ora #$03
            plp
            .byte $03,$03
            plp
            .byte $03
            cpy #$1F
            ora #$B2
            .byte $1A,$13,$B2,$1A
            ora #$B2
            .byte $1A
            ora #$C0
            .byte $1F
            ora #$B2
            .byte $1A
            ora #$F8
            ora LF803,X
            ora LC803,X
            .byte $17
            ora #$FE
            .byte $13,$13
            inc L0913,X
            inc L0913,X
            iny
            .byte $17
            ora #$FE
            .byte $13
            ora #$F8
            ora LF803,X
            ora LC803,X
            .byte $17
            ora #$FE
            .byte $13,$13
            inc L0913,X
            inc L0913,X
            iny
            .byte $17
            ora #$FE
            .byte $13
            ora #$03
            plp
            .byte $03,$03
            plp
            .byte $03
            cpy #$1F
            ora #$B2
            .byte $1A,$13,$B2,$1A
            ora #$B2
            .byte $1A
            ora #$C0
            .byte $1F
            ora #$B2
            .byte $1A
            ora #$03
            plp
            .byte $03,$03
            plp
            .byte $03
            cpy #$1F
            ora #$B2
            .byte $1A,$13,$B2,$1A
            ora #$B2
            .byte $1A
            ora #$C0
            .byte $1F
            ora #$B2
            .byte $1A
            ora #$64
            rol
            .byte $03,$64
            rol
            .byte $03
            lda ICSTAZ
            ora #$F8
            ora LF813,X
            ora LF809,X
            ora LA507+2,X
            .byte $23
            ora #$F8
            ora L6409,X
            rol
            .byte $03,$64
            rol
            .byte $03
            lda ICSTAZ
            ora #$F8
            ora LF813,X
            ora LF809,X
            ora LA507+2,X
            .byte $23
            ora #$F8
            ora L0100,X
            .byte $77,$02
            adc L6F01,X
            ora (FMSZPG+2,X)
            ora (ZCHAIN,X)
            ora (BFENLO,X)
            ora (BUFRLO,X)
            .byte $02,$27,$02
            asl L1602,X
            .byte $04
            clc
            ora (DSKUTL,X)
            .byte $02,$1C
            ora (DSKUTL+1,X)
            .byte $02
            ora L2004,X
            .byte $03,$1B
            ora (L00FE,X)
            .byte $02
            rol NGFLAG
            rol
            ora (FMSZPG+2,X)
            ora (NOCKSM,X)
            ora (FMSZPG+2,X)
            ora (FEOF,X)
            ora (ZCHAIN,X)
            ora (FMSZPG+2,X)
            ora (DSTAT,X)
            ora (FMSZPG+5,X)
            ora (COLCRS,X)
            ora (FMSZPG+6,X)
            ora (SAVMSC+1,X)
            ora (ZCHAIN,X)
            ora (OLDADR+1,X)
            ora (FMSZPG+4,X)
            ora (LOGCOL,X)
            ora (DELTAC,X)
            ora (BUFCNT,X)
            ora (SHFAMT,X)
            ora (COLAC,X)
            ora (L00FE,X)
            ora (KEYDEF+1,X)
            ora (L00FE,X)
            ora (INSDAT,X)
            .byte $02,$83
            ora (LOMEM,X)
            ora (L008A,X)
            ora (L0091,X)
            ora (L009A,X)
            ora (L00FE,X)
            ora (L00AF,X)
            ora (L00BB,X)
            ora (L00FE,X)
            ora (L00C9,X)
            ora (L00FE,X)
            .byte $00,$04
            ldy NGFLAG,X
            ora (RAMLO,X)
            ldy NGFLAG,X
            ora (RAMLO,X)
            ldy NGFLAG,X
LBF55       ora (RAMLO,X)
            ldy NGFLAG,X
            ora (RAMLO,X)
            ldy NGFLAG,X
            ora (RAMLO,X)
            ldy NGFLAG,X
            ora (RAMLO,X)
            ldy NGFLAG,X
            ora (RAMLO,X)
            ldy NGFLAG,X
            ora (RAMLO,X)
            ldy L0000,X
            .byte $03
            ora L1F03,X
            .byte $03
            and (CASINI+1,X)
            plp
            .byte $03,$32,$03
            pha
            .byte $03
            ror CASINI+1
            dey
            .byte $03
            cmp (CASINI+1,X)
            inc L0000
LBF82       ora (L00FE,X)
            ora (DSKUTL,X)
            .byte $02
            beq LBF89+1
LBF89       jsr LC802
            ora (ZCHAIN+1,X)
            .byte $02
            stx L0000,Y
            ora (ICAX1Z,X)
            ora (L00BB,X)
            ora NGFLAG
            ora (ICCOMZ,X)
            ora (LMARGN,X)
            .byte $00,$00
            ora (L00FA,X)
            .byte $02
            cmp (NGFLAG),Y
            cmp #$01
            .byte $C2
            ora (L00A4,X)
            ora (L00AF,X)
            ora (L00A4,X)
            ora (LOMEM,X)
            ora (KEYDEF+1,X)
            ora (SHFAMT,X)
            ora (BUFCNT,X)
            ora (ADRESS+1,X)
            ora (OLDADR+1,X)
            ora (OLDROW,X)
            ora (RMARGN,X)
            ora (ATRACT,X)
            ora (FMSZPG+6,X)
            ora (FMSZPG+1,X)
            ora (FREQ,X)
            ora (NOCKSM,X)
            ora (BUFRFL,X)
            ora (BFENHI,X)
            ora (CHKSUM,X)
            ora (ICBLHZ,X)
            ora (ICBALZ,X)
            ora (ICCOMZ,X)
            ora (ICHIDZ,X)
            ora (ABUFPT+1,X)
            ora (DSKUTL+1,X)
            ora (DSKFMS+1,X)
            ora (ICCOMT,X)
            ora (BUFADR,X)
            ora (RTCLOK+1,X)
            ora (RTCLOK,X)
            .byte $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00
            .byte $00,$FF,$FF,$00,$00,$FF,$FF,$00,$00
LBFFA       bcc LBF82
            .byte $00,$04,$20,$B5
;
            org $7E00
;
L7E00       ldx #$00
            txa
L7E03       sta L0700,X
            inx
            cpx #$00
            bne L7E03
            inc L7E03+2
            ldy L7E03+2
            cpy #$5F
            bne L7E03
L7E15       jmp (LBFFA)
;
            org $02E0
;
            .word L7E00
;
