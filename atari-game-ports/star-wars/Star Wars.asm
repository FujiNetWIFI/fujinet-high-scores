; 
            icl 'Star Wars.inc'
;
; Start of code
;
            org $8000
;
L8000       sei
            lda #$00
            tax
L8004       sta DMACLT,X
            sta AUDF1,X
            sta HPOSP0,X
            dex
            bne L8004
            dex
            txs
            txa
            ldx #$07
L8015       sta PORTA,X
            dex
            bpl L8015
            lda #$3F
            sta ABUFPT+1
            lda #$00
            sta ABUFPT
            tay
L8024       sta (ABUFPT),Y
            dey
            bne L8024
            dec ABUFPT+1
            bpl L8024
            lda #$A8
            sta VDSLST+1
            lda #$00
            sta VDSLST
            lda #$49
            sta VVBLKI
            lda #$84
            sta VVBLKI+1
            lda #$46
            sta COLPF0
            ldx #$26
            lda #$28
            ldy #$24
            jsr L8A16
            jsr LA79A
            lda #$30
            sta DLISTL
            lda #$02
            sta DLISTH
            lda #$CC
            sta ABUFPT
            lda #$B2
            sta ABUFPT+1
            lda #$02
            sta POKMSK
            lda #$1C
            sta RTCLOK
            ldy #$00
            lda #$00
            sta ABUFPT+2
            lda #$2C
            sta ABUFPT+3
            sta ICDNOZ
            jsr L89CA
            lda #$04
            sta L2D9B
L8080       sta L2D9E
            lda #$11
            sta L2D9C
L8088       sta L2D9D
            lda #$00
            sta ABUFPT+2
            lda #$30
            sta ABUFPT+3
            lda #$5A
            sta ABUFPT
            lda #$98
            sta ABUFPT+1
            ldy #$00
L809D       lda (ABUFPT),Y
            beq L80D6
            jsr LA781
            pha
            and #$1F
            tax
            pla
            lsr
            lsr
            lsr
            lsr
            lsr
            sta POKMSK
L80B0       lda L80BA+1,X
L80B3       jsr LA788
            dec POKMSK
            bpl L80B3
L80BA       bmi L809D
            .byte $00,$02,$03
            php
            asl
            .byte $0C,$0F
            jsr L2322
            plp
            bmi L80FA+2
            .byte $3C,$80
            dey
            txa
            ldy #$A8
            cpy #$C3
L80D1       cpy LEFEC
            beq L80D1+1
L80D6       lda #$00
            sta ABUFPT+2
            lda #$33
            sta ABUFPT+3
            lda #$58
            sta ABUFPT
            lda #$B0
            sta ABUFPT+1
L80E6       lda (ABUFPT),Y
            beq L8128
            jsr LA781
            pha
            lsr
            lsr
            lsr
            lsr
            cmp #$0F
            beq L811C
            tax
            lda L810B+2,X
L80FA       jsr LA788
            pla
            and #$0F
            cmp #$0F
            beq L811D
            tax
            lda L810B+2,X
            jsr LA788
L810B       jmp L80E6
            .byte $00,$03,$0C,$0F
            bmi L8153
L8114       cpy #$CC
            beq L8114
            .byte $FF,$3C
            eor L00AA,X
L811C       pla
L811D       lda (ABUFPT),Y
            jsr LA781
            jsr LA788
            jmp L80E6
L8128       lda #$81
            sta ABUFPT
            lda #$A8
            sta ABUFPT+1
            ldx #$02
            ldy #$06
            lda #$00
            jsr L89B2
            lda #$81
            sta ABUFPT
            lda #$A8
            sta ABUFPT+1
            ldx #$03
            ldy #$06
            lda #$40
            jsr L89B2
            ldx #$01
            ldy #$0A
            lda #$0C
            jsr L89B2
L8153       ldx #$03
            ldy #$0C
            lda #$20
            jsr L89B2
            ldx #$03
            ldy #$0A
            lda #$4C
            jsr L89B2
            lda #$D1
            sta ABUFPT
            lda #$A8
            sta ABUFPT+1
            ldx #$03
            ldy #$05
            lda #$37
            jsr L89B2
            ldx #$22
            lda #$24
            ldy #$B8
            jsr L8A3A
            ldx #$00
            lda #$02
            ldy #$05
            jsr L8A16
            ldx #$04
            lda #$06
            ldy #$04
            jsr L8A16
            ldx #$08
            lda #$0C
            ldy #$80
            jsr L8A16
            ldx #$0C
            lda #$0E
            ldy #$80
            jsr L8A3A
            ldx #$0A
            lda #$10
            ldy #$78
            jsr L8A16
            ldx #$10
            lda #$12
            ldy #$78
            jsr L8A3A
            ldx #$10
            lda #$14
            ldy #$F8
            jsr L8A16
            ldx #$0C
            lda #$16
            ldy #$20
            jsr L8A16
            ldx #$0E
            lda #$18
            ldy #$20
            jsr L8A16
            ldx #$16
            lda #$1A
            ldy #$40
            jsr L8A16
            ldx #$1C
            lda #$1E
            ldy #$50
            jsr L8A16
            ldx #$1C
            lda #$20
            ldy #$50
            jsr L8A3A
            lda #$26
            sta ABUFPT
            lda #$AC
            sta ABUFPT+1
            lda #$04
            sta ABUFPT+2
            lda #$3F
            sta ABUFPT+3
            sta ICDNOZ
            lda #$2B
            sta ICHIDZ
L8201       lda #$03
            sta POKMSK
            ldy #$00
L8207       ldx #$05
L8209       lda (ABUFPT),Y
            sta (ABUFPT+2),Y
            ora #$10
            sta (ICHIDZ),Y
            jsr LA781
            jsr LA78A
            dec ICHIDZ
            lda ICHIDZ
            cmp #$FF
            bne L8221
            dec ICDNOZ
L8221       dex
            bne L8209
            lda ABUFPT+2
            clc
            adc #$2B
            sta ABUFPT+2
            bcc L822F
            inc ABUFPT+3
L822F       lda ICHIDZ
            clc
            adc #$35
            sta ICHIDZ
            bcc L823A
            inc ICDNOZ
L823A       dec POKMSK
            bne L8207
            ldy #$00
            ldx #$04
L8242       lda LAC20+1,X
            beq L8256
            sta L3BA4,X
            sta L3ED4,X
            clc
            adc #$04
            sta L3BC7,Y
            sta L3EF7,Y
L8256       iny
            dex
            bpl L8242
            jsr LA6C2
            lda #$85
            sta ABUFPT
            lda #$AC
            sta ABUFPT+1
            lda #$14
            sta ABUFPT+2
            lda #$3F
            sta ABUFPT+3
            lda #$03
            sta POKMSK
            ldy #$00
L8273       ldx #$08
L8275       lda (ABUFPT),Y
            sta (ABUFPT+2),Y
            jsr LA781
            jsr LA78A
            dex
L8280       bne L8275
            lda ABUFPT+2
            clc
            adc #$28
            sta ABUFPT+2
            bne L828D
            inc ABUFPT+3
L828D       dec POKMSK
            bne L8273
            ldx #$00
            stx BUFADR+1
            stx RTCLOK+2
            lda #$00
            sta ABUFPT
            lda #$28
            sta ABUFPT+1
            ldy #$07
L82A1       lda #$07
            sta ICCOMT
L82A5       lda #$04
            sta BUFADR
            lda #$80
            sta POKMSK
L82AD       lda LAC9B+2,X
            beq L82CA
            inx
            stx RTCLOK+1
            tax
L82B6       lda (ABUFPT),Y
            ora POKMSK
            sta (ABUFPT),Y
            jsr LA31B
            dex
            bne L82B6
            ldx RTCLOK+1
            jsr LA321
            jmp L82AD
L82CA       dec BUFADR
            beq L82D3
            ldx BUFADR+1
            jmp L82AD
L82D3       lda ABUFPT
            sec
            sbc #$08
            sta ABUFPT
            bcs L82DE
            dec ABUFPT+1
L82DE       inx
            stx BUFADR+1
            dec ICCOMT
            bne L82A5
            bit RTCLOK+2
            bmi L82ED
            dec RTCLOK+2
            bmi L82A1
L82ED       ldx #$01
            stx L00C4
            stx L010A
            inx
            stx L3820
            jsr L8A8C
            lda #$68
            sta COLPM3
            lda #$BF
            sta COLPM2
            lda #$C0
            sta NMIEN
            lda #$3E
            sta DMACLT
            lda #$03
            sta GRACTL
            lda #$03
            sta SKCTL
            lda #$00
            sta IRQEN
            lda #$40
            sta IRQEN
            jsr L8CC7+1
            lda #$00
            sta L00B6
L832A       ldx #$6C
            lda ROWCRS
            and #$40
            bne L8334
            ldx #$6E
L8334       lda #$52
            ldy #$28
            jsr L8A16
            jsr LA668
            jsr L919E
            jsr LA6C2
            jsr LA79A
            lsr GRAFP3
            bcc L8357
            jsr LA715
            beq L8357
            jsr LA721
            jmp L832A
L8357       lda L00C4
            and #$7F
            sta L00C4
            jsr L8CC7+1
            lda #$01
            sta L00FC
            sta L00FD
            sta L00FE
            lsr
            sta L00F9
            sta L00FA
            sta L00FB
L836F       jsr L8D16
            jsr L8DA8
            jsr LA6C2
            jsr LA79A
            jsr L9112
            jsr L8C6C
            jsr L905A
            jsr L8BD3
            jmp L836F
L838A       jsr L92AD
L838D       jsr L95E8
            jsr L94FA
            jsr L9369
            jsr L8C6C
            jsr LA6C2
            jsr LA79A
            jsr L8BD3
            lda L0105
            cmp #$10
            beq L83B0
            lda L0104
            cmp #$20
            bne L838D
L83B0       lda COLCRS
            cmp OLDADR
            bne L838D
L83B6       jsr LA34B
L83B9       jsr L99A5
            jsr LA3F8
            jsr LA79A
            jmp L83B9
L83C5       jsr L8CC7+1
            lda #$00
            sta ROWCRS
            sta COLCRS
            lda #$FF
            sta L00B6
            sta L00BD
            ldx #$0F
            ldy #$5B
L83D8       lda #$3A
            sta NEWADR,X
            tya
            sta PTRIG2,X
            dex
            lda #$42
            sta NEWADR,X
            tya
            sta PTRIG2,X
            iny
            iny
            iny
            iny
            dex
            sta NEWADR,X
            dex
            cpx #$06
            bne L83D8
L83F8       jsr LA668
            jsr L919E
            ldx #$70
            lda #$2A
            ldy #$40
L8404       jsr L8A16
            ldx #$70
            lda #$36
            ldy #$40
            jsr L8A16
            jsr LA6C2
            jsr LA79A
            lda ROWCRS
            cmp #$40
            bcc L842B
            lda L010E
            bne L842B
            lda #$04
            sta L010E
            lda #$01
            sta L010F
L842B       lda ROWCRS
            and #$40
            beq L8437
            lda #$00
            sta L00B6
            beq L8440
L8437       lda RANDOM
            and #$0F
            ora #$D0
            sta ATRACT
L8440       lda ROWCRS
            cmp #$F0
            bcc L83F8
            jmp L8357
            cld
            inc COLCRS+1
            inc ROWCRS
            bne L8456
            ldx ROWAC+1
            bne L8456
            inc COLCRS
L8456       lda #$3E
            sta DMACLT
            lda #$30
            sta DLISTL
            lda #$02
            sta DLISTH
            lda #$08
            sta CHBASE
            lda #$D6
            sta COLPF1
            lda LOADAD+1
            sta COLPF2
            lda SAVMSC
            sta COLPF3
            lda #$00
            sta VDSLST
            lda FMSZPG+6
            beq L84A5
            lda COLCRS+1
            cmp #$06
            bcc L84A5
            lda ZCHAIN
            sta CRITIC
            lda ZCHAIN+1
            sta FMSZPG
            lda DSTAT
            sta FMSZPG+1
            lda LMARGN
            sta CDEVIC
            lda RMARGN
            sta CCOMND
            lda #$00
            sta FMSZPG+6
            sta COLCRS+1
L84A5       ldx L010E
            beq L84C4
            dec L010F
            bne L84C7
            lda LB165+1,X
            sta COLBK
            bne L84BA
            tax
            beq L84C4
L84BA       inx
            lda LB165+1,X
            sta L010F
            inx
            bpl L84C7
L84C4       stx COLBK
L84C7       stx L010E
            lda LOADAD+1
            beq L84E7
            lda ROWCRS
            and #$07
            bne L84E7
            dec LOADAD+1
            dec LOADAD+1
            lda LOADAD+1
            and #$0E
            bne L84E7
            lda #$00
            sta LOADAD+1
L84E7       jsr L88A8
            lda #$00
            sta L00C1
            sta L00C2
            sta L00C3
            ldx #$02
L84F4       lda L85F9+1,X
            sta ICAX3Z
            lda L85FC+1,X
            sta ICAX4Z
            lda L85FF+1,X
            sta ICAX5Z
            lda L8603,X
            sta ICAX6Z
            ldy L00FC,X
            lda L00F9,X
            bne L8517+1
            iny
            lda (ICAX5Z),Y
            beq L852C
            sty L00FC,X
            sta L00F9,X
L8517       bit LF9D6
            lda (ICAX3Z),Y
            ldy #$A4
            cmp #$10
            bcs L8528
            tay
            lda L85EC,Y
            ldy #$C4
L8528       sta L00BE,X
            sty L00C1,X
L852C       dex
            bpl L84F4
            lda L00B8
            beq L8545
            tax
            asl
            sta AUDF1
            txa
            lsr
            lsr
            lsr
            eor #$9F
            sta AUDC1
            inx
            inx
            stx L00B8
L8545       lda L00B9
            beq L8554
            lsr
            sec
            ror
            sta L00C1
            sta L00BE
            dec L00B9
            bne L85BF
L8554       lda L00BA
            beq L8570
            lsr
            eor #$4F
            sta L00C1
            dec L00BA
            ldx #$13
            lda DINDEX
            and #$03
            bne L8569
            ldx #$17
L8569       stx L00BE
            sta STIMER
            bne L85BF
L8570       lda L00BB
            beq L8588
            tax
            lsr
            lsr
            lsr
            eor #$7F
            sta L00C1
            txa
            sec
            sbc #$98
            sta L00BE
            inx
            inx
            stx L00BB
            bne L85BF
L8588       lda L00BC
            beq L8599
            lsr
            sec
            ror
            eor #$0F
            sta L00C1
            lda #$2C
            sta L00BE
            dec L00BC
L8599       lda L00BD
            beq L85BF
            tax
            lsr
            eor #$FF
            sta L00BF
            txa
            lsr
            tax
            lsr
            lsr
            sec
            ror
            sta L00C1
            sta L00C2
            sta L00C3
            txa
            cmp #$7D
            bcs L85B7
            lda #$62
L85B7       sta L00BE
            dec L00BD
            lda #$FC
            sta L00C0
L85BF       ldx #$00
            ldy #$FF
L85C3       lda L00B9,X
            beq L85C9
            ldy #$00
L85C9       inx
            cpx #$04
            bcs L85D6
            tya
            bne L85D3
            sta L00B9,X
L85D3       jmp L85C3
L85D6       ldx #$02
            ldy #$04
L85DA       lda L00BE,X
            sta AUDF2,Y
            lda L00C1,X
            sta AUDC2,Y
            dey
            dey
            dex
            bpl L85DA
            jmp L8675
L85EC       asl LAAB6
            lda (L0098,X)
            .byte $8F,$89,$80,$7A
            adc (BUFCNT),Y
            adc OLDADR+1
L85F9       asl L1A06
L85FC       and L8686
L85FF       stx BPTR
            eor (ADRESS),Y
L8603       stx L0086
            stx L0000
            .byte $00
            ora L6A6A
            ror
            .byte $9F
            lda #$BE
            cmp DOSINI,X
            .byte $0B
            ora #$34
            .byte $0C,$0B
            ora #$3F
            ora FMSZPG+3
            .byte $00,$00
            ora L3F6A
            .byte $4F,$3F
            lsr BFENLO
            .byte $07,$4F,$3F
            lsr BFENLO
            .byte $34
            lsr FEOF
            .byte $3B,$54,$00,$00
            ora L344F
            .byte $3B,$27,$3F,$3B,$27,$07,$3B,$02,$02,$02
            cmp L0000,X
            .byte $00,$1F,$07,$07,$07,$17
            ora ICCOMT,X
            .byte $14
            asl BUFADR+1,X
            .byte $13
            ora BUFADR+1,X
            .byte $14,$14,$13
            ora OLDCHR,X
            .byte $00,$00
            and ICAX3Z,X
            .byte $2B,$07
            asl WARMST
            rol
            ora TRAMSZ,X
            .byte $07
            php
            plp
            .byte $14
            asl TRAMSZ
            php
            eor.w L0000,X
            and ICAX3Z,X
            .byte $2B
            ora ICAX1Z,X
            ora BUFADR,X
            plp
            .byte $14
            ora RTCLOK,X
            ora L3706
            .byte $00
L8675       lda L0109
            bne L867D
            jmp L86CD
L867D       lda L0109
            sta ICAX3Z
            sta ICAX5Z
            ldx #$04
L8686       stx ICAX4Z
            inx
            stx ICAX6Z
            ldy #$10
            lda #$00
L868F       sta (ICAX3Z),Y
            sta (ICAX5Z),Y
            dey
            bpl L868F
            lda L0106
            sta L0109
            beq L86CA
            sta ICAX3Z
            sta ICAX5Z
            ldx #$04
            stx ICAX4Z
            inx
            stx ICAX6Z
            ldx L0107
            lda L9BE8,X
            sta STATUS
            lda L9BEA+2,X
            sta BUFRLO
            lda #$9C
            sta CHKSUM
            sta BUFRHI
            ldy L9BE4,X
L86BF       lda (STATUS),Y
            sta (ICAX3Z),Y
            lda (BUFRLO),Y
            sta (ICAX5Z),Y
            dey
            bpl L86BF
L86CA       jmp L877B
L86CD       lda #$01
            sta ICBLLZ
            ldx L009D
L86D3       lda ACMISR,X
            sec
            sbc #$08
            sta ICAX3Z
            lda ICBLLZ
            clc
            adc #$04
            sta ICAX4Z
            ldy #$10
            lda #$00
L86E6       sta (ICAX3Z),Y
            dey
            bpl L86E6
            dex
            bpl L86F0
            ldx #$05
L86F0       dex
            bpl L86F5
            ldx #$05
L86F5       lda L025A,X
            beq L8764
            ldy PADDL2,X
            lda LB1FF+1,Y
            lsr
            eor #$FF
            sec
            adc L025A,X
            sta ICAX3Z
            lda ICBLLZ
            clc
            adc #$04
            sta ICAX4Z
            lda LB1FF+1,Y
            sta ICBLHZ
            tya
            asl
            asl
            sta ICAX1Z
            lda ROWCRS
            and #$03
            ora ICAX1Z
            tay
            lda LB203+1,Y
            sta ICAX5Z
            lda LB214,Y
            sta ICAX6Z
            ldy ICBLHZ
L872D       lda (ICAX5Z),Y
            sta (ICAX3Z),Y
            dey
            bpl L872D
            lda L025A,X
            sta ACMISR,X
            lda L0254,X
            pha
            lda PADDL2,X
            pha
            lda ROWCRS
            lsr
            lda #$0E
            bcs L874B
            lda #$46
L874B       stx ICAX2Z
            ldx ICBLLZ
            sta COLPM0,X
            pla
            lsr
            eor #$01
            sta SIZEP0,X
            lsr
            pla
            bcc L875F
            sbc #$04
L875F       sta HPOSP0,X
            ldx ICAX2Z
L8764       dec ICBLLZ
            bmi L876E
            ldx L009D
            dex
            jmp L86D3
L876E       jmp L8771
L8771       dec L009D
            dec L009D
            bpl L877B
            lda #$05
            sta L009D
L877B       ldy #$09
            lda L00A4
L877F       sta ICAX3Z
            lda #$07
            sta ICAX4Z
            lda #$00
L8787       sta (ICAX3Z),Y
            dey
            bpl L8787
            lda L009F
            sta L00A4
            sta ICAX3Z
            ldy #$09
L8794       lda LB15D,Y
            sta (ICAX3Z),Y
            dey
            bpl L8794
            lda L009E
            sta HPOSP3
            lda L00A5
            beq L87A8
            jmp L8852
L87A8       lsr GRAFP3
            bcc L87B6
            lda L00B2
            bmi L87B3
            dec L00B2
L87B3       jmp L88A5
L87B6       lda L00B2
            beq L87B3
            lda #$00
            sta ROWAC+1
            sta L00B5
            sta L00AC
            sta L00AE
            sta L00B0
            sta L00A8
            sta L00AA
            lda L00B1
            eor #$FF
            sta L00B1
            beq L87EA
            lda L009E
            sec
            sbc #$B8
            lsr
            ror L00AC
            lsr
            ror L00AC
            lsr
            ror L00AC
            eor #$E0
            sta L00AB
            lda #$B8
            sta L00A5
            bne L87FE
L87EA       lda L009E
            sec
            sbc #$44
            lsr
            ror L00AC
            lsr
            ror L00AC
            lsr
            ror L00AC
            sta L00AB
            lda #$44
            sta L00A5
L87FE       lda #$09
            sta L00B2
            lda L009E
            sta L00B3
            lda L009F
            sta L00B4
            lda #$80
            sta L00A7
            sec
            sbc L009F
            lsr
            ror L00AE
            lsr
            ror L00AE
            lsr
            ror L00AE
            sta L00AD
            and #$10
            beq L8826
L8820       lda L00AD
            ora #$F0
            sta L00AD
L8826       lda L00AD
            eor #$FF
            sta L00AD
            inc L00AD
            lda #$C6
            sta L00A9
            lda L009F
            sec
            sbc #$C6
            lsr
            ror L00B0
            lsr
            ror L00B0
            lsr
            ror L00B0
            sta L00AF
            and #$10
            beq L884C
            lda L00AF
            ora #$F0
            sta L00AF
L884C       lda #$80
            sta L00B8
            bne L8894
L8852       lda #$00
            ldx L00A7
            sta L0600,X
            ldx L00A9
            sta L0600,X
            dec L00B2
            bne L886D
            lda #$00
            sta L00A5
            lda #$FF
            sta L00B5
            jmp L88A5
L886D       lda L00A6
            clc
            adc L00AC
            sta L00A6
            lda L00A5
            adc L00AB
            sta L00A5
            lda L00A8
            clc
            adc L00AE
            sta L00A8
            lda L00A7
            adc L00AD
            sta L00A7
            lda L00AA
            clc
            adc L00B0
L888C       sta L00AA
            lda L00A9
            adc L00AF
            sta L00A9
L8894       lda #$FF
            ldx L00A7
            sta L0600,X
            ldx L00A9
            sta L0600,X
            lda L00A5
            sta HPOSP2
L88A5       jmp XITVBV
L88A8       lda PORTA
            lsr
            bcs L88D0
            pha
            lda L00A3
            clc
            adc #$20
            sta L00A3
            bcc L88BA
            inc L00A2
L88BA       lda L00A2
            bne L88C2
            lda #$02
            sta L00A2
L88C2       cmp #$10
            bcc L88CA
            lda #$0F
            sta L00A2
L88CA       clc
            adc L009F
            sta L009F
            pla
L88D0       lsr
            bcs L88F9
            pha
            lda L00A2
            ora L00A3
            bne L88DE
            lda #$FE
            sta L00A2
L88DE       lda L00A3
            sec
            sbc #$20
            sta L00A3
            bcs L88E9
            dec L00A2
L88E9       lda L00A2
            cmp #$F0
            bcs L88F3
            lda #$F0
            sta L00A2
L88F3       clc
            adc L009F
            sta L009F
            pla
L88F9       lsr
            bcs L8922
            pha
            lda L00A0
            ora L00A1
            bne L8907
            lda #$FE
            sta L00A0
L8907       lda L00A1
            sec
            sbc #$20
            sta L00A1
            bcs L8912
            dec L00A0
L8912       lda L00A0
            cmp #$F0
            bcs L891C
            lda #$F0
            sta L00A0
L891C       clc
            adc L009E
            sta L009E
            pla
L8922       lsr
            bcs L8945
            lda L00A1
            clc
            adc #$20
            sta L00A1
            bcc L8930
            inc L00A0
L8930       lda L00A0
            bne L8938
            lda #$02
            sta L00A0
L8938       cmp #$10
            bcc L8940
            lda #$0F
            sta L00A0
L8940       clc
            adc L009E
            sta L009E
L8945       lda L009E
            cmp #$4A
            bcs L894F
            lda #$4A
            sta L009E
L894F       cmp #$B7
            bcc L8957
            lda #$B6
            sta L009E
L8957       lda L009F
            cmp #$4A
            bcs L8961
            lda #$4A
            sta L009F
L8961       cmp #$B7
            bcc L8969
            lda #$B6
            sta L009F
L8969       ldx #$FE
            lda L009E
            sec
            sbc #$4A
L8970       cmp #$15
            bcc L897E
            inx
            cpx #$02
            beq L897E
            sec
            sbc #$15
            bcs L8970
L897E       stx FKDEF
            ldx #$08
            lda L009F
            sec
            sbc #$4A
L8987       cmp #$0C
            bcc L8993
            dex
            beq L8993
            sec
            sbc #$0C
            bcs L8987
L8993       stx OLDADR+1
            ldx #$00
            lda PORTA
            eor #$FF
            and #$03
            bne L89A4
            stx L00A2
            stx L00A3
L89A4       lda PORTA
            eor #$FF
            and #$0C
            bne L89B1
            stx L00A0
            stx L00A1
L89B1       rts
L89B2       stx POKMSK
            sty RTCLOK
            ldy #$00
            sta ABUFPT+2
            tya
            asl ABUFPT+2
            rol
            asl ABUFPT+2
            rol
            asl ABUFPT+2
            rol
            adc #$08
            sta ABUFPT+3
            sta ICDNOZ
L89CA       lda ABUFPT+2
            clc
            adc #$08
            sta ICHIDZ
            bcc L89D5
            inc ICDNOZ
L89D5       lda #$08
            sta RTCLOK+2
L89D9       lda (ABUFPT),Y
            sta RTCLOK+1
            jsr LA781
            ldx #$08
L89E2       cpx #$04
            bne L89E9
            jsr LA788
L89E9       asl
            asl
            asl RTCLOK+1
            bcc L89F1
            ora POKMSK
L89F1       dex
            bne L89E2
            jsr LA791
            dec RTCLOK+2
            bne L89D9
            lda ABUFPT+2
            clc
            adc #$08
            sta ABUFPT+2
L8A02       bcc L8A06
            inc ABUFPT+3
L8A06       lda ICHIDZ
            clc
            adc #$08
            sta ICHIDZ
            bcc L8A11
            inc ICDNOZ
L8A11       dec RTCLOK
            bne L89D5
            rts
L8A16       dey
            pha
            lda LAAB7,X
            sta ABUFPT
            lda LAAB7+1,X
            sta ABUFPT+1
            pla
            tax
            lda LAAB7,X
            sta ABUFPT+2
            lda LAAB7+1,X
            sta ABUFPT+3
L8A2E       lda (ABUFPT),Y
            sta (ABUFPT+2),Y
            dey
            bne L8A2E
            lda (ABUFPT),Y
            sta (ABUFPT+2),Y
            rts
L8A3A       dey
            sty POKMSK
            pha
            lda LAAB7,X
            sta ABUFPT
            lda LAAB7+1,X
            sta ABUFPT+1
            pla
            tax
            lda LAAB7,X
            sta ABUFPT+2
            lda LAAB7+1,X
            sta ABUFPT+3
            ldy #$00
L8A56       lda (ABUFPT),Y
            jsr LA781
            jsr L8A6D
            jsr LA788
            dec POKMSK
            bne L8A56
            lda (ABUFPT),Y
            jsr L8A6D
            sta (ABUFPT+2),Y
            rts
L8A6D       sta BRKKEY
            ldx #$03
L8A71       asl BRKKEY
            php
            asl BRKKEY
            ror
            plp
            ror
            dex
            bpl L8A71
            rts
L8A7D       lsr
            lsr
            sta BRKKEY
            ldy #$06
L8A83       rol
            lsr BRKKEY
            dey
            bne L8A83
            rol
L8A8A       asl
            rts
L8A8C       ldx #$05
            lda #$00
L8A90       sta L025A,X
            sta SAVMSC+1,X
            dex
            bpl L8A90
            sta L0106
            ldx L010A
            stx L00C4
            inx
            stx L3820
            sta L381F
            lda #$09
            sta DINDEX
            jsr L8B40
            lda #$05
            sta L009D
            lda #$80
            sta L009E
            sta L009F
            ldx #$04
            lda #$5C
            sta ABUFPT
            lda #$00
            sta ABUFPT+1
            ldy #$32
            jmp LA5FA
L8AC7       lda L00BA
            ora L00B9
            beq L8ACE
            rts
L8ACE       lda #$01
            sta L010E
            lda #$01
            sta L010F
            dec DINDEX
            bpl L8AFE
            lda #$1F
            sta L00BA
            lda #$00
            sta ROWCRS
            sta COLCRS
L8AE6       jsr LA715
            beq L8AF5
            lda COLCRS
            beq L8AE6
            lda TRIG0
            lsr
            bcs L8AE6
L8AF5       jsr L8A8C
            ldx #$FF
            txs
            jmp L8357
L8AFE       lda DINDEX
            asl
            asl
            tax
            lda #$27
            sec
            sbc LA9B1,X
            sta BRKKEY
            lda LA9B1,X
            sta POKMSK
            lda #$03
            sta RTCLOK
L8B14       inx
            ldy POKMSK
            lda LA9B1,X
            sta L3800,Y
            eor #$40
            ldy BRKKEY
            sta L3800,Y
            lda #$00
            sta L3801,Y
            ldy POKMSK
            sta L37FF,Y
            tya
            clc
            adc #$28
            sta POKMSK
            lda BRKKEY
            adc #$28
            sta BRKKEY
            dec RTCLOK
            bne L8B14
            beq L8B63
L8B40       lda #$A0
            ldx #$07
            stx POKMSK
            ldx #$13
            ldy #$14
            jsr L8BA6
            ldx #$05
            stx POKMSK
            ldx #$39
            ldy #$3E
            jsr L8BA6
            ldx #$02
            stx POKMSK
            ldx #$5E
            ldy #$69
            jsr L8BA6
L8B63       lda DINDEX
            beq L8B8E
            ldx #$D6
            cmp #$05
            bcs L8B75
            ldx #$26
            cmp #$03
            bcs L8B75
            ldx #$46
L8B75       stx SAVMSC
            asl
            adc #$CC
            sta L383B
            adc #$01
            sta L383C
            ldx #$05
L8B84       lda LA9DD+1,X
            sta L3861,X
            dex
            bpl L8B84
            rts
L8B8E       ldx #$0A
L8B90       lda LA9DD+1,X
            sta L380F,X
            dex
            bpl L8B90
            lda #$00
            sta L3861
            sta L3866
            lda #$0E
            sta SAVMSC
            rts
L8BA6       sta L3800,X
            eor #$40
            sta L3800,Y
            eor #$40
            iny
            dex
            clc
            adc #$01
            dec POKMSK
            bne L8BA6
            rts
L8BBA       jsr L8B40
            lda DINDEX
            sta RTCLOK+1
            lda #$09
            sta DINDEX
L8BC5       cmp RTCLOK+1
            beq L8BD2
            dec DINDEX
            jsr L8AFE
            lda DINDEX
            bpl L8BC5
L8BD2       rts
L8BD3       ldx #$05
L8BD5       lda L025A,X
            bne L8BE5
            lda L0254,X
            beq L8C3E
            dec L0254,X
            jmp L8C3E
L8BE5       lda VSFLAG,X
            lsr
            lsr
            lsr
            lsr
            eor #$03
            sta DMASAV
            clc
            lda L0254,X
            adc L0260,X
            jsr L95CD
            sta L0254,X
            cmp #$D0
            bcs L8C2B
            cmp #$2B
            bcc L8C2B
            clc
            lda L025A,X
            adc L0266,X
            sta L025A,X
            cmp #$D0
            bcs L8C2B
            cmp #$3D
            bcc L8C2B
L8C18       dec VSFLAG,X
            beq L8C48+1
            lda VSFLAG,X
            lsr
            lsr
            lsr
            lsr
            and #$03
            sta PADDL2,X
            bpl L8C3E
L8C2B       lda #$00
            sta L025A,X
            ldy L00C4
            cpy #$07
            bcc L8C38
            ldy #$07
L8C38       lda L8C41,Y
            sta L0254,X
L8C3E       dex
            bpl L8BD5
L8C41       rts
            rti
            jsr L0810
            .byte $04,$02
L8C48       ora (L00BD,X)
            .byte $5A,$02
            cmp #$B3
            bcs L8C2B
            cmp #$4F
            bcc L8C2B
            lda L0254,X
            cmp #$B3
            bcs L8C2B
            cmp #$4F
            bcc L8C2B
            stx BUFADR
            jsr L8AC7
            lda #$1F
            sta L00BA
            ldx BUFADR
            bpl L8C2B
L8C6C       lda L00B5
            beq L8CC3
            ldx #$05
L8C72       lda L025A,X
            beq L8CBC
            ldy PADDL2,X
            lda L0254,X
            sec
            sbc L00B3
            bpl L8C87
            eor #$FF
            clc
            adc #$01
L8C87       cmp L8CC4,Y
            bcs L8CBC
            lda L025A,X
            sec
            sbc L00B4
            bpl L8C99
            eor #$FF
            clc
            adc #$01
L8C99       cmp L8CC4,Y
            bcs L8CBC
            stx DSKUTL
            ldy #$00
            sty L00B5
            jsr LA550
            ldx DSKUTL
            lda #$00
            sta L025A,X
            ldy L00C4
            cpy #$07
            bcc L8CB6
            ldy #$07
L8CB6       lda L8C41,Y
            sta L0254,X
L8CBC       dex
            bpl L8C72
            lda #$00
            sta L00B5
L8CC3       rts
L8CC4       asl L080A
L8CC7       asl ICHIDZ
            pla
            ldx ICHIDZ
            .byte $63,$A7
            lda #$52
            ldx #$54
            ldy #$28
            jsr L8A16
            lda #$18
            sta FMSZPG+2
            sta FMSZPG+3
            sta FMSZPG+4
            lda #$00
            sta OLDCHR
            sta PBPNT
            sta L010E
            lda #$D6
            sta ATRACT
            lda #$FF
            sta TABMAP+3
            sta TABMAP+4
            sta TABMAP+5
            sta TABMAP+6
            lda #$00
            sta ROWCRS
            sta COLCRS
            sta L00B7
            lda #$82
            sta L00B6
            ldx #$0F
L8D09       jsr L9287
            dex
            bpl L8D09
            jsr LA6C2
            jsr LA79A
            rts
L8D16       ldx L00B7
            bne L8D3E
            lda COLCRS
            bne L8D21
            jmp L8DA7
L8D21       inc L00B7
            ldx #$01
            ldy #$04
            jsr L915B
            ldx #$02
            ldy #$05
            jsr L915B
            ldx #$03
            ldy #$06
            jsr L915B
            lda #$00
            sta L00B6
            beq L8DA7
L8D3E       dex
            bne L8D6A
            lda COLCRS
            cmp #$06
            bne L8D55
            inc L00B7
            lda #$18
            sta SUBTMP
            lda #$55
            sta TABMAP+3
            bne L8DA7
L8D55       ldx #$03
L8D57       lda TABMAP+3,X
            bpl L8D65
            lda RANDOM
            and #$07
            tay
            jsr L915B
L8D65       dex
            bne L8D57
            beq L8DA7
L8D6A       dex
            bne L8D94
            lda COLCRS
            cmp #$07
            bne L8D7B
            lda #$10
            sta L00B6
            inc L00B7
            bne L8DA7
L8D7B       lda SUBTMP
            cmp #$5A
            beq L8D88
            inc SUBTMP
            inc SUBTMP
L8D88       lda TABMAP+3
            cmp #$36
            beq L8DA7
            dec TABMAP+3
            bne L8DA7
L8D94       lda COLCRS
            cmp #$08
            bne L8DA7
            pla
            pla
            ldx L00C4
            dex
            bne L8DA4
            jmp L83B6
L8DA4       jmp L838A
L8DA7       rts
L8DA8       jsr LA668
            jsr L919E
            lda #$03
            sta DSKUTL
L8DB2       ldx DSKUTL
            lda TABMAP+3,X
            bpl L8DBC
            jmp L9003
L8DBC       ldy #$77
            lda #$00
L8DC0       sta DDEVIC,Y
            dey
            bpl L8DC0
            lda #$00
            sta ABUFPT+2
            lda #$03
            sta ABUFPT+3
            ldx DSKUTL
            bne L8DDD
            lda #$80
            sta ABUFPT
            lda #$2D
            sta ABUFPT+1
            jmp L8E62
L8DDD       lda ZHIUSE+1,X
            bpl L8E1B+1
            eor #$8F
            tax
            lsr
            lsr
            tay
            lda LB203+1,X
            sta ABUFPT
            lda LB214,X
L8DF0       sta ABUFPT+1
            lda #$01
            sta POKMSK
            lda #$01
            sta RTCLOK
            lda #$03
            sta ABUFPT+3
            sta ICDNOZ
            ldx LB1FF+1,Y
            inx
            stx RTCLOK+2
            lda L8E18,Y
            sta ABUFPT+2
            clc
            adc #$18
            sta ICHIDZ
            ldy #$00
            jsr L89D9
            jmp L8EF7
L8E18       clc
            .byte $1A,$1C
L8E1B       ora LAEBD,X
            .byte $02
            beq L8E4E
            bpl L8E28
            eor #$FF
            clc
            adc #$01
L8E28       sta DSKFMS+1
            lda INVFLG,X
            beq L8E58
            bpl L8E36
            eor #$FF
            clc
            adc #$01
L8E36       cmp DSKFMS+1
            bcc L8E44
            lda #$60
            sta ABUFPT
            lda #$2C
            sta ABUFPT+1
            bne L8E62
L8E44       lda #$C0
            sta ABUFPT
            lda #$2C
            sta ABUFPT+1
            bne L8E62
L8E4E       lda #$00
            sta ABUFPT
            lda #$2C
            sta ABUFPT+1
            bne L8E62
L8E58       lda #$20
            sta ABUFPT
            lda #$2D
            sta ABUFPT+1
            bne L8E62
L8E62       ldy #$57
            jsr L8A2E
            cpx #$00
            bne L8E6E
            jmp L8EF7
L8E6E       lda TABMAP+11,X
            bpl L8E76
            jmp L8EA4
L8E76       ldx #$0F
L8E78       lda IOCB0+ICBLL,X
            jsr L8A7D
            ldy DDEVIC,X
            sta DDEVIC,X
            tya
            jsr L8A7D
            sta IOCB0+ICBLL,X
            lda HATABS+22,X
            jsr L8A7D
            ldy STACKP,X
            sta STACKP,X
            tya
            jsr L8A7D
            sta HATABS+22,X
            dex
            bmi L8EA4
            jmp L8E78
L8EA4       ldx DSKUTL
            lda INVFLG,X
            beq L8EF7
            bmi L8EF7
            ldx #$0F
            ldy #$00
L8EB1       lda DDEVIC,X
            sta DSKFMS+1
            lda DDEVIC,Y
            sta DDEVIC,X
            lda DSKFMS+1
            sta DDEVIC,Y
            lda STACKP,X
            sta DSKFMS+1
            lda STACKP,Y
            sta STACKP,X
            lda DSKFMS+1
            sta STACKP,Y
            lda HATABS+22,X
            sta DSKFMS+1
            lda HATABS+22,Y
            sta HATABS+22,X
            lda DSKFMS+1
            sta HATABS+22,Y
            lda IOCB0+ICBLL,X
            sta DSKFMS+1
            lda IOCB0+ICBLL,Y
            sta IOCB0+ICBLL,X
            lda DSKFMS+1
            sta IOCB0+ICBLL,Y
            iny
            dex
            cpx #$07
            bne L8EB1
L8EF7       ldx DSKUTL
            lda SUBTMP,X
            and #$03
            tay
L8EFF       beq L8F46
            ldx #$07
L8F03       lsr DDEVIC,X
            ror STACKP,X
            ror HATABS+22,X
            ror IOCB0+ICBLL,X
            ror IOCB2,X
            lsr DDEVIC,X
            ror STACKP,X
            ror HATABS+22,X
            ror IOCB0+ICBLL,X
            ror IOCB2,X
            lsr DBYTLO,X
            ror HATABS+6,X
            ror HATABS+30,X
            ror IOCB1,X
            ror IOCB2+ICBLL,X
            lsr DBYTLO,X
            ror HATABS+6,X
            ror HATABS+30,X
            ror IOCB1,X
            ror IOCB2+ICBLL,X
            dex
            bpl L8F03
            dey
            jmp L8EFF
L8F46       ldx DSKUTL
            lda LB3AA+2,X
            sta ABUFPT
            clc
            adc #$70
            sta ABUFPT+2
            lda LB3AF+1,X
            adc #$18
            eor FMSZPG+5
            sta ABUFPT+3
            lda #$18
            clc
            adc LB3AF+1,X
            eor FMSZPG+5
            sta ABUFPT+1
            lda #$00
            ldy #$07
L8F69       sta (ABUFPT),Y
            sta (ABUFPT+2),Y
            dey
            bpl L8F69
            lda TABMAP+3,X
            and #$07
            clc
            adc ABUFPT
            sta ABUFPT+2
            lda ABUFPT+1
            adc #$00
            sta ABUFPT+3
            lda #$00
            sta ABUFPT
            lda #$03
            sta ABUFPT+1
            ldy #$6F
            jsr L8A2E
            ldx DSKUTL
            lda TABMAP+3,X
            cmp #$70
            bcc L8F99
            jmp L9003
L8F99       jsr LA2F4
            ldx DSKUTL
            lda SUBTMP,X
            lsr
            lsr
            tay
            lda ABUFPT
            clc
            adc #$30
            sta ABUFPT+2
            lda ABUFPT+1
            adc #$00
            sta ABUFPT+3
            lda ABUFPT+2
            clc
            adc #$30
            sta ICHIDZ
            lda ABUFPT+3
            adc #$00
            sta ICDNOZ
            lda LB3B3+1,X
            sta DSKFMS
            clc
            ldx #$05
L8FC6       lda (ABUFPT),Y
            cmp #$11
            bcc L8FD3
            cmp #$60
            bcs L8FD7
            jsr L900E
L8FD3       lda DSKFMS
            sta (ABUFPT),Y
L8FD7       inc DSKFMS
            lda (ABUFPT+2),Y
            cmp #$11
            bcc L8FE6
            cmp #$60
            bcs L8FEA
            jsr L900E
L8FE6       lda DSKFMS
            sta (ABUFPT+2),Y
L8FEA       inc DSKFMS
            lda (ICHIDZ),Y
            cmp #$11
            bcc L8FF9
            cmp #$60
            bcs L8FFD
            jsr L900E
L8FF9       lda DSKFMS
            sta (ICHIDZ),Y
L8FFD       inc DSKFMS
            iny
            dex
            bne L8FC6
L9003       dec DSKUTL
            bmi L900A
            jmp L8DB2
L900A       jsr LA6C2
            rts
L900E       sta ICCOMT
            lda #$18
            eor FMSZPG+5
            sta ICBAHZ
            sta ICSTAZ
            lda ICCOMT
            asl
            bcc L9023
            inc ICSTAZ
            inc ICSTAZ
            inc ICSTAZ
L9023       asl
            bcc L902A
            inc ICSTAZ
            inc ICSTAZ
L902A       asl
            bcc L902F
            inc ICSTAZ
L902F       sta ICCOMZ
            lda DSKFMS
            asl
            bcc L903C
            inc ICBAHZ
            inc ICBAHZ
            inc ICBAHZ
L903C       asl
            bcc L9043
            inc ICBAHZ
            inc ICBAHZ
L9043       asl
            bcc L9048
            inc ICBAHZ
L9048       sta ICBALZ
            sty ICCOMT
            ldy #$07
L904E       lda (ICCOMZ),Y
            ora (ICBALZ),Y
            sta (ICBALZ),Y
            dey
            bpl L904E
            ldy ICCOMT
            rts
L905A       ldx #$03
L905C       lda TABMAP+3,X
            bpl L9064
            jmp L910B
L9064       lda PCOLR2,X
            clc
            adc LOGMAP,X
            sta LOGMAP,X
            lda SHFLOC,X
            adc TABMAP+11,X
            sta TABMAP+11,X
            lda RUNADR+1,X
            clc
            adc TMPCOL+1,X
            sta TMPCOL+1,X
            lda COLOR2,X
            adc INVFLG,X
            sta INVFLG,X
            lda LOGMAP,X
            clc
            adc ESCFLG,X
            sta ESCFLG,X
            lda TABMAP+11,X
            adc SUBTMP,X
            sta SUBTMP,X
            lda TMPCOL+1,X
            clc
            adc TABMAP+7,X
            sta TABMAP+7,X
            lda INVFLG,X
            adc TABMAP+3,X
            sta TABMAP+3,X
            lda ZHIUSE+1,X
            bpl L90C1
            clc
            adc #$02
            sta ZHIUSE+1,X
            cmp #$90
            beq L9106
            bne L910B
L90C1       dec ZHIUSE+1,X
            beq L9106
            ldy L00C4
            dey
            cpy #$05
            bcc L90CF
            ldy #$05
L90CF       lda L025A,Y
            ora L0254,X
            beq L90DC
            dey
            bpl L90CF
            bmi L910B
L90DC       lda #$98
            sta L00BB
            lda SUBTMP,X
            clc
            adc #$24
            sta L0254,Y
            lda TABMAP+3,X
            clc
            adc #$40
            sta L025A,Y
            lda #$00
            sta L0260,Y
            sta L0266,Y
            lda #$3F
            sta VSFLAG,Y
            lda #$03
            sta PADDL2,Y
            bne L910B
L9106       lda #$FF
            sta TABMAP+3,X
L910B       dex
            beq L9111
            jmp L905C
L9111       rts
L9112       lda L00B5
            beq L915A
            ldx #$03
L9118       lda ZHIUSE+1,X
            bmi L9157
            lda TABMAP+3,X
            bmi L9157
            clc
            adc #$3A
            cmp L00B4
            bcs L9157
            adc #$12
            cmp L00B4
            bcc L9157
            lda SUBTMP,X
            clc
            adc #$1D
            cmp L00B3
            bcs L9157
            adc #$12
            cmp L00B3
            bcc L9157
            lda #$80
            sta ZHIUSE+1,X
            stx DSKUTL
            ldy #$05
            jsr LA550
            ldx DSKUTL
            lda #$3F
            sta L00B9
            lda #$00
            sta L00B5
            beq L915A
L9157       dex
            bne L9118
L915A       rts
L915B       lda LB3B8,Y
            sta SUBTMP,X
            lda LB3C0,Y
            sta TABMAP+3,X
            lda LB3C8,Y
            sta TABMAP+11,X
            lda LB3D0,Y
            sta LOGMAP,X
            lda LB3D8,Y
            sta INVFLG,X
            lda LB3E0,Y
            sta TMPCOL+1,X
            lda LB3E8,Y
            sta SHFLOC,X
            lda LB3F0,Y
            sta PCOLR2,X
            lda LB3F8,Y
            sta COLOR2,X
            lda LB400,Y
            sta RUNADR+1,X
            lda LB408,Y
            sta ZHIUSE+1,X
            rts
L919E       lda #$08
            sta ABUFPT+2
            lda #$18
            eor FMSZPG+5
            sta ABUFPT+3
            ldy #$7F
            lda #$08
            sta ABUFPT
            lda #$18
            eor FMSZPG+5
            sta ABUFPT+1
            lda #$00
L91B6       sta (ABUFPT),Y
            dey
            bpl L91B6
            lda L00B6
            and #$10
            lsr
            sta RTCLOK
            ldx #$0F
L91C4       lda L00B6
            bpl L91DE
            cmp #$FF
            beq L923A
            and #$04
            beq L91D4
            ldy #$11
            bne L91E9
L91D4       lda L00B6
            and #$02
            beq L91FB
            ldy #$0A
            bne L91E9
L91DE       lda PTRIG2,X
            lsr
            lsr
            lsr
            lsr
            clc
            adc RTCLOK
            tay
L91E9       lda PTRIG2,X
            clc
            adc L9273+2,Y
            sta PTRIG2,X
            cmp #$9C
            bcs L9237
            cmp #$24
            bcc L9237
L91FB       bit L00B6
            bpl L9213
            lda L00B6
            and #$01
            beq L9209
            ldy #$0F
            bne L9220
L9209       lda L00B6
            and #$08
            beq L923A
            ldy #$08
            bne L9220
L9213       lda NEWADR,X
            lsr
            lsr
            lsr
            lsr
            and #$07
            clc
            adc RTCLOK
            tay
L9220       lda L9277,Y
            bpl L922E
            ldy OLDCHR
            beq L922E
            eor #$FF
            sec
            adc #$01
L922E       clc
            adc NEWADR,X
            sta NEWADR,X
            bpl L923A
L9237       jsr L9287
L923A       lda PTRIG2,X
            and #$03
            tay
            lda LAD8C,Y
            pha
            lda NEWADR,X
            and #$07
            tay
            pla
            sta (ABUFPT+2),Y
            txa
            pha
            lda NEWADR,X
            jsr LA2F4
            pla
            tax
            lda PTRIG2,X
            lsr
            lsr
            tay
            txa
            eor #$0F
            clc
            adc #$01
            sta (ABUFPT),Y
            dex
            bmi L9276
            lda ABUFPT+2
            clc
            adc #$08
            sta ABUFPT+2
            bcc L9273
            inc ABUFPT+3
L9273       jmp L91C4
L9276       rts
L9277       .byte $FC
            sbc LFFFE,X
            ora (CASINI,X)
            .byte $03,$04
            inc L00F8,X
            .byte $FA,$FC,$04
            asl WARMST
            asl
L9287       lda RANDOM
            lsr
            sta NEWADR,X
            lda OLDCHR
            beq L929E
            lda NEWADR,X
            cmp #$40
            bcs L929E
            adc #$40
            sta NEWADR,X
L929E       lda RANDOM
            cmp #$9C
            bcs L929E
            cmp #$24
            bcc L929E
            sta PTRIG2,X
            rts
L92AD       jsr LA668
            jsr LA6C2
            jsr LA79A
            jsr LA668
            jsr LA6C2
            lda #$52
            ldx #$56
            ldy #$28
            jsr L8A16
            lda #$18
            sta FMSZPG+2
            sta FMSZPG+3
            sta FMSZPG+4
            lda #$01
            sta OLDCHR
            sta PBPNT
            sta COLBK
            lda #$26
            sta ATRACT
            lda #$0E
            sta DRKMSK
            sta COLRSH
            lda #$00
            sta L00B6
            sta L0105
            sta L0104
            ldx #$4E
            lda #$50
            ldy #$06
            jsr L8A16
            lda #$16
            sta BUFADR+1
            ldx #$01
            lda #$16
            sta ABUFPT
            lda #$00
            sta ABUFPT+1
            ldy #$6E
            jsr LA5FA
            ldx #$0F
L9309       jsr L9287
            dex
            bpl L9309
            lda #$08
            sta L0102
            lda #$00
            sta L0101
            ldx #$07
L931B       txa
            sta L00E1,X
            dex
            bpl L931B
            stx L0103
            ldx #$5A
            lda #$60
            ldy #$00
            jsr L8A16
            ldx #$5C
            lda #$62
            ldy #$00
            jsr L8A16
            ldx #$5E
            lda #$64
            ldy #$80
            jsr L8A16
            ldx #$5A
            lda #$66
            ldy #$00
            jsr L8A16
            ldx #$5C
            lda #$68
            ldy #$00
            jsr L8A16
            ldx #$5E
            lda #$6A
            ldy #$80
            jsr L8A16
            ldx #$07
L935C       lda L31E8,X
            sta L1F80,X
            sta L2380,X
            dex
            bpl L935C
L9368       rts
L9369       jsr LA668
            jsr L919E
            lda L0103
            bmi L9368
            sta L00FF
L9376       ldx L00FF
            lda L00E9,X
            sta L0100
            tax
            lda L00D9,X
            lsr
            lsr
            eor #$FF
            sec
            adc #$3F
            ldy L00D1,X
            stx ABUFPT+2
            sty ABUFPT+3
            jsr LA2F4
            ldx ABUFPT+2
            ldy ABUFPT+3
            lda ABUFPT
            sta ABUFPT+2
            lda ABUFPT+1
            sta ABUFPT+3
            tya
            lsr
            lsr
            clc
            adc ABUFPT+2
            sta ABUFPT+2
            bcc L93A8
            inc ABUFPT+3
L93A8       lda ABUFPT+2
            pha
            lda ABUFPT+3
            pha
            ldx L0100
            lda L00C9,X
            sta BRKKEY
            lda L00F1,X
            beq L93CB
            lda L00D1,X
            ldy L00D9,X
            ldx BRKKEY
            jsr L9456
            bcc L93CB
            lda #$00
            sta L00F1,X
            dec L0101
L93CB       lda L00C9,X
            asl
            pha
            tax
            jsr L966C
            pla
            tax
            pla
            sta ABUFPT+3
            pla
            sta ABUFPT+2
            ldy L0100
            lda L00F1,Y
            bne L93EB
            txa
            clc
            adc #$18
            tax
            jsr L966C
L93EB       ldx L0100
            lda L00D9,X
            cmp #$30
            bcc L944E
            lda L00F1,X
            beq L944E
            ldy L00C4
            dey
            tya
            lsr
            lsr
            sta DSKFMS+1
            inc DSKFMS+1
            ldy #$05
L9404       dec DSKFMS+1
            bmi L944E
            lda L025A,Y
            ora L0259,Y
            beq L9416
            dey
            dey
            bpl L9404
            bmi L944E
L9416       lda #$98
            sta L00BB
            lda L00D1,X
            clc
            adc #$24
            sta L0254,Y
            sta L0253,Y
            lda #$3F
            sta VSFLAG,Y
            sta CHSALT,Y
            lda #$03
            sta PADDL2,Y
            sta PADDL1,Y
            lda #$01
            sta L0260,Y
            lda #$FF
            sta L025F,Y
            lda L00D9,X
            lsr
            lsr
            eor #$FF
            sec
            adc #$80
            sta L025A,Y
            sta L0259,Y
L944E       dec L00FF
            bmi L9455
            jmp L9376
L9455       rts
L9456       clc
            adc L94D9,X
            sta RTCLOK+1
            lda L0105
            cmp #$10
            beq L94D4
            lda L00B5
            beq L94D4
            lda RTCLOK+1
            clc
            adc #$11
            cmp L00B3
            bcs L94D4
            adc L94E4,X
            cmp L00B3
            bcc L94D4
            tya
            lsr
            lsr
            eor #$FF
            clc
            adc #$6F
            cmp L00B4
            bcs L94D4
            adc L94EE+1,X
            cmp L00B4
            bcc L94D4
            sec
            bcc L94D4
            lda #$A8
            sta L00B8
            inc L0105
            ldy L0105
            jsr LA550
            lda L0105
            cmp #$10
            bne L94B1
            ldy #$1A
            jsr LA550
            lda #$00
            sta ROWCRS
            lda COLCRS
            clc
            adc #$02
            sta OLDADR
L94B1       lda #$10
            sec
            sbc L0105
            clc
            sed
            adc #$00
            cld
            sta BUFADR+1
            ldx #$01
            lda #$16
            sta ABUFPT
            lda #$00
            sta ABUFPT+1
            ldy #$6E
            jsr LA5FA
            lda #$00
            sta L00B5
            sec
            bcs L94D5
L94D4       clc
L94D5       ldx L0100
            rts
L94D9       php
            .byte $0C,$0C,$0C
            php
            php
            php
            php
            .byte $0C,$0C,$0C
L94E4       php
            php
            php
            php
            .byte $0C,$0C
            bpl L94FA+2
            bpl L94FD+1
L94EE       bpl L94F8
            php
            php
            .byte $0C,$0C,$0C,$14,$14,$14
L94F8       .byte $14,$14
L94FA       inc L0110
L94FD       lda L0103
            bpl L9505
            jmp L9455
L9505       tax
            stx L00FF
L9508       lda L00E9,X
            tay
            sty L0100
            lda L00D9,Y
            lsr
            lsr
            lsr
            pha
            lsr
            lsr
            sta DMASAV
            pla
            bne L951F
            lda #$01
L951F       pha
            lda L0110
            lsr
            bcc L952D
            pla
            lda L00D9,Y
            jmp L957C
L952D       pla
            clc
            adc L00D9,Y
            sta L00D9,Y
            bcc L957C
            lda L00D1,Y
            cmp #$50
            bcc L9545
            cmp #$68
            bcs L9545
            jsr L95C5
L9545       cmp #$48
            bcc L9553
            cmp #$70
            bcs L9553
            pha
            lda #$1F
            sta L00BC
            pla
L9553       ldx L0102
            ldy L0100
            tya
            sta L00E1,X
            inc L0102
            lda L00F1,Y
            beq L9567
            dec L0101
L9567       ldx L00FF
L9569       lda L00EA,X
            sta L00E9,X
            inx
            cpx #$07
            bne L9569
            lda #$00
            sta L00F0
            dec L0103
            jmp L95BB
L957C       tay
            lsr
            lsr
            lsr
            lsr
            cpy #$60
            bcc L9589
            lsr
            clc
            adc #$04
L9589       ldy L0100
            sta L00C9,Y
            lda L00D1,Y
            sbc #$60
            php
            bpl L959C
            eor #$FF
            clc
            adc #$01
L959C       lsr
            lsr
            lsr
            lsr
            lsr
            plp
            bpl L95A9
            eor #$FF
            sec
            bcs L95AA
L95A9       clc
L95AA       adc L00D1,Y
            jsr L95CD
            sta L00D1,Y
            cmp #$14
            bcc L9545
            cmp #$9B
            bcs L9545
L95BB       dec L00FF
            ldx L00FF
            bmi L95C4
            jmp L9508
L95C4       rts
L95C5       jsr L8AC7
            lda #$3F
            sta L00B9
            rts
L95CD       stx POKMSK
            ldx PBPNT
            beq L95E5
            ldx L00A0
            beq L95E5
            bmi L95E1
            sec
            sbc DMASAV
            jmp L95E5
L95E1       clc
            adc DMASAV
L95E5       ldx POKMSK
            rts
L95E8       lda L0102
            beq L965B
            ldy L00C4
            cpy #$07
            bcc L95F5
            ldy #$07
L95F5       cmp L9663+1,Y
            bcc L965B
            tax
            lda L0101
            clc
            adc L0105
            cmp #$10
            bcs L965B
            lda L0104
            cmp #$20
            bcs L965B
            dex
            stx L0102
            lda L00E1,X
            tay
            inc L0103
            ldx L0103
            sta L00E9,X
            lda #$00
            sta L00F1,Y
            lda RANDOM
            and #$07
            tax
            lda L0105
            cmp #$04
            bcs L9632
            lda #$01
            bne L9633
L9632       txa
L9633       sta L00F1,Y
            beq L9650
            inc L0101
            inc L0104
            lda L0104
            cmp #$20
            bne L9650
            lda #$00
            sta ROWCRS
            lda COLCRS
            clc
            adc #$02
            sta OLDADR
L9650       lda L965C,X
            sta L00D1,Y
            lda #$20
            sta L00D9,Y
L965B       rts
L965C       .byte $34
            rol L5C48,X
            bvs L95E5+1
            tya
L9663       ldx #$07
            .byte $07,$07,$07
            asl TRAMSZ
            ora RAMLO+1
L966C       lda L96C9,X
            sta ABUFPT
            lda L96C9+1,X
            sta ABUFPT+1
L9676       ldy #$02
L9678       lda (ABUFPT),Y
            beq L96C8
            sta RTCLOK+1,Y
            dey
            bpl L9678
            lda #$03
            ldx #$00
            jsr L9987
            lda ABUFPT
            sta L00C5
            lda ABUFPT+1
            sta L00C6
            lda RTCLOK+2
            sta L00C7
L9695       ldy RTCLOK+1
            dey
L9698       lda (ABUFPT),Y
            beq L969E
            sta (ABUFPT+2),Y
L969E       dey
            bpl L9698
            lda RTCLOK+1
            ldx #$00
            jsr L9987
            lda #$30
            ldx #$02
            jsr L9987
            lda ABUFPT+2
            dec RTCLOK+2
            bne L9695
            dec BUFADR
            beq L9676
            lda L00C5
            sta ABUFPT
            lda L00C6
            sta ABUFPT+1
            lda L00C7
L96C3       sta RTCLOK+2
            jmp L9695
L96C8       rts
L96C9       sbc LF996,Y
            stx L00FE,Y
            stx WARMST,Y
            .byte $97,$12,$97
            jsr L3197
            .byte $97
L96D7       .byte $44,$97,$57,$97
            adc L0097,X
            .byte $93,$97
            ldx L0097,Y
            cmp LFC97,Y
            .byte $97
            ora (L0098,X)
            .byte $07
            tya
            ora L1398
            tya
L96ED       ora L1F98,Y
            tya
            rol L0098
            .byte $32
            tya
            rol L4C98,X
            tya
            ora (NGFLAG,X)
            ora (L00AC,X)
            .byte $00,$02,$03
            ora (L0000,X)
            .byte $CB,$00
            bcs L96D7
            bne L9708
L9708       .byte $02,$03
            ora (L0000,X)
            lda (L0000),Y
            bcs L96C3
            .byte $B2,$00,$02
            ora NGFLAG
            .byte $00,$CB,$00
            bcs L971A
L971A       bcs L971C
L971C       bcs L96ED+2
L971E       bne L9720
L9720       .byte $02
            ora (NGFLAG,X)
            cpy #$BF
            .byte $02
            ora (CASINI+1,X)
            .byte $CF,$AF,$03
            ora (NGFLAG,X)
            ldy LBEBC+1,X
            .byte $00,$02,$02
            ora (L00E0,X)
            .byte $D2,$DA,$D3,$02
            ora (RAMLO,X)
            .byte $CF,$AF,$03
            ora (NGFLAG,X)
            beq L971E+1
            cld
            .byte $00,$03
            ora (NGFLAG,X)
            ldx LA6A6+1
            .byte $03
            ora (RAMLO+1,X)
            tax
            lda #$A8
            .byte $03
            ora (NGFLAG,X)
            lda L009D
            ldy L0000
            .byte $04,$02
            ora (L0000,X)
            dec L00A3
            iny
            .byte $00,$9B
            lda #$9A
            .byte $04
            ora (RAMLO+1,X)
            .byte $00
            lda #$A9
            lda #$04
            .byte $02
            ora (L0000,X)
            cpy LCEA9
            .byte $9F,$9E
            sta.w L0098,X
            .byte $04,$02
            ora (L0000,X)
            dec L00A3
            iny
            .byte $00,$9B
            lda #$9A
            .byte $04
            ora (CMCMD,X)
            .byte $00
            lda #$A9
            lda #$04
            .byte $02
            ora (L0000,X)
            cpy LCEA9
            .byte $9F,$9E
            sta.w L0098,X
            ora CASINI
            ora (L0000,X)
            .byte $97,$DF
            dec.w L0000,X
            ldx #$A0
            lda (L0000,X)
            ora NGFLAG
            ora #$00
            lda #$A9
            tax
            .byte $00
            ora CASINI
            ora (L0000,X)
            cpy L95A9
            sty L00D9,X
            cmp L00D6,X
            .byte $D7
            cld
            .byte $00
            ora CASINI
            ora (L0000,X)
            .byte $DC,$DF
            dec.w L0000,X
            sta (L00DB),Y
            stx L0000,Y
            ora NGFLAG
            .byte $0B,$00
            tay
            lda #$AA
            .byte $00
            ora CASINI
            ora (L0092,X)
            .byte $93
            lda #$95
            sty L00D4,X
            cmp L00D6,X
            .byte $D7
            cld
            .byte $00
            ora CASINI
            ora (L0000,X)
            .byte $DC,$DF
            dec.w L0000,X
            sta (L00DB),Y
            stx L0000,Y
            ora NGFLAG
            ora LA7FF+1
            lda #$AA
            .byte $00
            ora CASINI
            ora (L0092,X)
            .byte $93
            lda #$95
            sty L00D4,X
            cmp L00D6,X
            .byte $D7
            cld
            .byte $00
            ora (NGFLAG,X)
            ora (L00AD,X)
            .byte $00,$02
            ora (NGFLAG,X)
            .byte $00,$AB,$00,$02
            ora (NGFLAG,X)
            .byte $00,$9C,$00,$02
            ora (NGFLAG,X)
            .byte $00,$AB,$00,$02
            ora (NGFLAG,X)
            cmp (L00BB,X)
            .byte $00,$02
            ora (NGFLAG,X)
            .byte $C3,$C2,$00,$03
            ora (NGFLAG,X)
            cmp #$C4
            cmp L0000
            .byte $04,$02
            ora (L0000,X)
            dex
            cpy L00CD
            .byte $00
            lda #$A9
            lda #$00
            .byte $04,$02
            ora (L0000,X)
            ldy L00B5,X
            .byte $B7,$00
            lda #$A9
            lda #$00
            ora CASINI
            ora (L0000,X)
            tsx
            ldx L00B8,Y
            .byte $00,$00
            lda #$A9
            tax
            .byte $00,$00
            ora CASINI
            ora (L0000,X)
            lda LB8B6,Y
            .byte $00,$00
            tay
            lda #$AA
            .byte $00,$00,$74
            ora BUFADR+1,X
            ora L6114,Y
            .byte $02
            ora DOSVEC+1
            php
            .byte $6F
            adc (LOMEM+1,X)
            .byte $0F,$12
            php
            .byte $64,$22
            and (L0086,X)
            asl APPMHI,X
            asl FKDEF+1
            .byte $03
            asl ICAX3Z
            .byte $02,$04
            php
            .byte $0F
            adc (ICCOMT,X)
            asl
            tay
            ora LA80A+2,Y
            ora L0C0E
            dey
            php
            .byte $13
            bcs L98F0
            ora #$13
            php
            and (APPMHI+1,X)
            php
            .byte $04,$02
            eor (CASINI,X)
            cmp (ICAX3Z,X)
            .byte $17
            asl
            pla
            ror BUFADR+1
            asl L0406
            jmp L0E0D
            .byte $0C
            plp
            .byte $0C,$1A
            ora L0E4C
            ora WARMST,X
            .byte $04
            php
            .byte $0F
            adc (WARMST,X)
            .byte $0F
            php
            .byte $04,$02
            eor (SOUNDR,X)
            sty DOSINI,X
            .byte $1A
            ora L172C
            asl
            php
            .byte $EF
            inx
            cpx FKDEF+1
            php
            .byte $13
            bmi L98FC
            .byte $B2,$F2
            and (CASINI+1,X)
            lsr CMCMD
            asl L00E9
            beq L98D9
            .byte $3A
            asl ROWAC,X
            bcc L98E2+1
            .byte $13
            php
            sta (CASINI,X)
            and (ICDNOZ,X)
            .byte $02
L98D9       .byte $04
            pla
            php
            .byte $13
            ora #$88
            and (WARMST,X)
            .byte $13
L98E2       ora #$48
            eor (APPMHI+1,X)
            pla
            sta (APPMHI+1,X)
            php
            .byte $04
            adc (CASINI,X)
            .byte $04
            php
            .byte $0F
L98F0       adc (CASINI,X)
            .byte $04
            plp
            php
            .byte $13
            lda #$42
            .byte $04,$02
            eor (FMSZPG+6,X)
L98FC       php
            ora #$13
            php
            adc (APPMHI+1,X)
            adc (DOSINI,X)
            .byte $1A
            and L0A18
            and #$21
            .byte $63,$22
            and (L00A2,X)
            adc (WARMST,X)
            .byte $13
            and #$A1
            .byte $22
            php
            .byte $13
            ora #$88
            eor (L008F,X)
            and (CASINI+1,X)
            asl BUFSTR
            .byte $0C,$1A
            ora L418C
            .byte $14
            jmp (CDTMV5+1)
            sty ICDNOZ
            .byte $02,$04
            pla
            adc (DOSINI,X)
            .byte $3A
            asl L00C8,X
            .byte $0F
            eor (APPMHI+1,X)
            pla
            tay
            .byte $04,$02,$E2
            bpl L994C
            .byte $13
            php
            adc (NGFLAG,X)
            .byte $02
            lda (FKDEF+1,X)
            .byte $0C,$1A
            eor L0A18
            .byte $89,$04,$02
            lda (ICDNOZ,X)
L994C       .byte $0F
            php
            .byte $04,$02
            and (L0088,X)
            ora #$13
            php
L9955       ora (CASINI,X)
            .byte $04
            php
            .byte $0F
            eor (APPMHI+1,X)
            cmp (ICCOMZ,X)
            lda (FMSZPG,X)
            .byte $82
            jmp L0A17
            pha
            adc (CASINI+1,X)
            asl DOSINI
            .byte $14
            php
            ora #$13
            php
            adc (LOMEM+1,X)
            .byte $14,$0C
            asl ICDNOZ
            .byte $0C,$1A
            ora LA14B+1
            .byte $23,$04,$02
            lda (L0000,X)
            pha
            ldx #$00
            jsr L9987
            pla
            ldx #$02
L9987       clc
            adc ABUFPT,X
            sta ABUFPT,X
            bcc L9990
            inc ABUFPT+1,X
L9990       rts
L9991       ldx OLDADR+1
            lda L9BD4+1,X
            ldy FKDEF
            bne L99A1
            sta POKMSK
            asl
            ora POKMSK
            bne L99A4
L99A1       bpl L99A4
            asl
L99A4       rts
L99A5       jsr LA668
            inc ABUFPT+1
            lda #$5C
            ldy #$67
            sta (ABUFPT),Y
            lda #$5F
            iny
            sta (ABUFPT),Y
            lda #$5A
            ldy #$97
            sta (ABUFPT),Y
            lda #$5B
            iny
            sta (ABUFPT),Y
            lda #$04
            clc
            adc OLDADR+1
            pha
            sec
            sbc FKDEF
            jsr L9C44
            sta ADRESS
            pla
            clc
            adc FKDEF
            jsr L9C44
            sta LOGCOL
            lda #$0C
            sec
            sbc OLDADR+1
            pha
            sbc FKDEF
            jsr L9C44
            sta PALNTS
            pla
            clc
            adc FKDEF
            jsr L9C44
            sta FKDEF+1
            lda #$00
            sta SOUNDR
            jsr L9C4F
            jsr L9D72
            jsr L9EF7
            lda ADRESS+1
            bne L9A2E
            jsr L9991
            and L0082
            beq L9A0C
            jsr L8AC7
            lda #$3F
            sta L00B9
L9A0C       inc L008F
            ldy L008F
            cpy #$58
            bne L9A1A
            jsr LA3A5
            jsr LA3D7
L9A1A       cpy #$50
            bne L9A22
            lda #$FF
            bne L9A2C
L9A22       cpy #$48
            bcs L9A2A
            cpy #$08
            bcs L9A31
L9A2A       lda #$00
L9A2C       sta L0082
L9A2E       jmp L9AB2
L9A31       ldy L0094
            lda (L0095),Y
            iny
            cmp #$FF
            bne L9A92
            lda (L0095),Y
            iny
            sty L0094
            ldy #$07
            ldx #$05
            sta POKMSK
            lda L00C4
            cmp #$01
            beq L9A53
            lda RANDOM
            asl
            lda #$FF
            bcc L9A5C
L9A53       lda RANDOM
            lsr
            lda #$AA
            bcc L9A5C
            lsr
L9A5C       and POKMSK
            sta POKMSK
L9A60       asl POKMSK
            bcc L9A86
L9A64       lda L025A,X
            beq L9A6C
            dex
            bpl L9A64
L9A6C       lda #$0A
            sta VSFLAG,X
            lda #$86
            sta L0254,X
            lda #$03
            sta PADDL2,X
            lda LB103,Y
            sta STICK0,X
            lda #$80
            sta L025A,X
L9A86       dey
            bpl L9A60
            lda #$98
            sta L00BB
            ldy L0094
            lda (L0095),Y
            iny
L9A92       sta L0082
            sty L0094
            dec L0093
            bne L9AB2
            lda #$08
            sta L0093
            ldy L0090
            lda (L0091),Y
            tax
            lda LB0E8+1,X
            sta L0095
            lda #$33
            sta L0096
            lda #$00
            sta L0094
            inc L0090
L9AB2       jsr L9DB4
            jsr LA6C2
            ldy L008F
            cpy #$4D
            bne L9AEE
            lda #$FF
            sta COLPM0
            sta COLPM1
            lda L0000
            sta SIZEP0
            sta SIZEP1
            lda #$89
            sta L0106
            sta L0109
            lda #$78
            sta HPOSP0
            lda #$80
            sta HPOSP1
            lda #$03
            sta L0107
            sta L0108
            sta HITCLR
L9AEB       jmp L9BA0
L9AEE       lda L0106
            bne L9AF6
            jmp L9BA0
L9AF6       lda L0106
            clc
            adc #$04
            sta L0106
            dec L0108
            bne L9AEB
            lda #$03
            sta L0108
            dec L0107
            bpl L9AEB
            lda #$00
            sta L0106
            lda P2PL
            and #$03
            beq L9B21
            lda P3PL
            and #$03
            bne L9B24
L9B21       jmp L9BA0
L9B24       ldx L00C4
            ldy L010A
            dey
            bne L9B3C
            ldy #$12
            cpx #$04
            bcc L9B45
            ldy #$1B
            cpx #$06
            bcc L9B45
L9B38       ldy #$1D
            bne L9B45
L9B3C       dey
            bne L9B38
            cpx #$06
            bcs L9B38
            ldy #$1B
L9B45       jsr LA550
            lda DINDEX
            beq L9B53
            clc
            adc #$10
            tay
            jsr LA550
L9B53       lda L3887
            beq L9B66
            ldx L00C4
            cpx #$06
            bcc L9B60
            ldx #$06
L9B60       ldy L9BDD,X
            jsr LA550
L9B66       lda #$03
            clc
            adc DINDEX
            cmp #$09
            bcc L9B71
            lda #$09
L9B71       sta DINDEX
            jsr L8BBA
            inc L00C4
            lda L00C4
            cmp #$64
            bcc L9B82
            lda #$63
            sta L00C4
L9B82       ldx #$00
L9B84       cmp #$0A
            bcc L9B8E
            inx
            sbc #$0A
            jmp L9B84
L9B8E       adc #$01
            sta L3820
            cpx #$00
            beq L9B9B
            inx
            stx L381F
L9B9B       pla
            pla
            jmp L83C5
L9BA0       ldx #$78
L9BA2       stx L3BA5
            stx L3ED5
            inx
            stx L3BA6
            stx L3ED6
            inx
            stx L3BA7
            stx L3ED7
            ldx #$7E
            stx L3BC8
            stx L3EF8
            dex
            stx L3BC9
            stx L3EF9
            dex
            stx L3BCA
            stx L3EFA
            rts
            .byte $80
            rti
            jsr L0810
            .byte $04,$02
L9BD4       ora (NGFLAG,X)
            ora (RAMLO,X)
            .byte $04,$14
            bpl L9BEA+2
            rti
L9BDD       rti
            ora (RTCLOK),Y
            .byte $13
            ora DSKUTL,X
            .byte $1C
L9BE4       .byte $0B
            ora #$06
            .byte $04
L9BE8       .byte $00
            clc
L9BEA       bit L0C3A
            .byte $22,$33,$3F
            bpl L9C03+1
            .byte $13
            ora DSKFMS,X
            .byte $1A
            asl L4D4E,X
            .byte $63,$4B
            adc BITMSK
            .byte $7A
            adc #$65
            .byte $0F
            bpl L9C13
L9C03       bmi L9C24+1
            rts
            rti
            rti
            cpy #$80
            .byte $80,$FF
            beq L9C15+1
            php
            .byte $0C,$04
            asl CASINI
L9C13       .byte $02,$03
L9C15       ora (NGFLAG,X)
            .byte $FF,$07
            php
            php
            clc
            bpl L9C4E
            jsr L2020
            .byte $3F
            cpx #$10
L9C24       bpl L9C3E
            php
            .byte $0C,$04,$04
L9C2A       .byte $04,$FC,$03,$04,$04,$0C
            php
            php
            .byte $0F
            cpy #$20
            jsr L1030
            bpl L9C2A
            ora (CASINI,X)
            .byte $04,$04
L9C3E       .byte $07,$80
            rti
            jsr LE020
L9C44       bne L9C48
            lda #$01
L9C48       cmp #$10
            bne L9C4E
            lda #$0F
L9C4E       rts
L9C4F       ldy #$03
            sty DSKUTL
L9C53       lda L9D4A,Y
            sta DSKFMS
            sta ABUFPT+2
            lda L9D4E,Y
            eor FMSZPG+5
            sta DSKFMS+1
            sta ABUFPT+3
            lda L9D51+1,Y
            sta DSKUTL+1
            ldx FKDEF+1,Y
            lda LAD48,X
            sta ABUFPT
            lda LAD58+1,X
            sta ABUFPT+1
            ldy LAD6A,X
            bit DSKUTL+1
            bmi L9C82
            dey
            jsr L8A2E
            jmp L9C8D
L9C82       sty POKMSK
            ldy #$00
            stx RTCLOK
            jsr L8A56
            ldx RTCLOK
L9C8D       bit DSKUTL+1
            bvc L9CA3
            lda DSKFMS
            sta ABUFPT
L9C95       lda DSKFMS+1
            sta ABUFPT+1
            lda LAD6A,X
            stx RTCLOK
            jsr LA524
            ldx RTCLOK
L9CA3       lda DSKFMS
            sta ABUFPT
            lda DSKFMS+1
            sta ABUFPT+1
            lda #$18
            eor FMSZPG+5
            sta ABUFPT+3
            lda #$08
            clc
            adc SOUNDR
            sta ABUFPT+2
            lda SOUNDR
            lsr
            lsr
            lsr
            sec
            ldy DSKUTL
            sbc L9D56,Y
            sta FREQ
            ldy LAD7B,X
            tya
            clc
            adc SOUNDR
            sta SOUNDR
            dey
            jsr L8A2E
            stx ICCOMT
            jsr LA76E
            txa
            clc
            ldx DSKUTL
            adc L9D5A,X
            sta ABUFPT
            tya
            adc #$01
            sta ABUFPT+1
            ldx ICCOMT
            lda LAD37,X
            sta CHKSNT
            ldy DSKUTL
            lda L9D5E,Y
            sta NOCKSM
            sta FEOF
            lda LB10B,X
            cpy #$02
            bcs L9CFF
            lda LB11B+1,X
L9CFF       sta BPTR
            lda LAD6A,X
            lsr
            lsr
            lsr
            cpy #$02
            beq L9D13
            cpy #$00
            beq L9D13
            sta FTYPE
            bne L9D1A
L9D13       clc
            adc NOCKSM
            sta FTYPE
            dec FTYPE
L9D1A       lda L9D62,Y
            sta ABUFPT+2
            lda L9D65+1,Y
            sta ABUFPT+3
            lda L9D6A,Y
            sta ICHIDZ
            lda L9D6E,Y
            sta ICDNOZ
            jsr LA4C0
            dec DSKUTL
            ldy DSKUTL
            bmi L9D3A
            jmp L9C53
L9D3A       ldx FKDEF+1
            lda SOUNDR
L9D3E       clc
            adc #$08
            adc LAD7B,Y
            lsr
            lsr
            lsr
            sta BUFSTR
            rts
L9D4A       tay
            php
            tay
            php
L9D4E       jsr L1020
L9D51       bpl L9D13
            rti
            .byte $80,$00
L9D56       .byte $14,$00,$14,$00
L9D5A       dec L00C9
            rol RECVDN,X
L9D5E       ora NGFLAG,X
            ora NGFLAG,X
L9D62       .byte $FF
            ora (L00FF,X)
L9D65       ora (L00FF,X)
            .byte $00,$FF,$00
L9D6A       bmi L9D9C
            bne L9D3E
L9D6E       .byte $00,$00,$FF,$FF
L9D72       jsr LA76E
            stx ICCOMZ
            sty ICSTAZ
            lda #$29
            sta BUFCNT
            sta BUFSTR+1
            ldx #$05
            stx ICCOMT
L9D83       lda ADRESS+1,X
            cmp #$0A
            bcs L9DAB
            sta L010B
            jsr LA287
            lda L008E
            cmp #$9A
            bcs L9D9E
            cmp #$25
            bcc L9D9E
            jsr L9DEE
L9D9C       ldx ICCOMT
L9D9E       lda L008D
            cmp #$9A
            bcs L9DAB
            cmp #$25
            bcc L9DAB
            jsr L9DEE
L9DAB       dec ICCOMT
            dec ICCOMT
            ldx ICCOMT
            bpl L9D83
            rts
L9DB4       ldx #$05
L9DB6       dec ADRESS+1,X
            bpl L9DBE
            lda #$0B
            sta ADRESS+1,X
L9DBE       dex
            bpl L9DB6
            lda ADRESS+1
            cmp #$0B
            bne L9DED
            ldy ADRESS+1
            lda MLTTMP+1
            sta ADRESS+1
            lda SAVADR+1
            sta MLTTMP+1
            sty SAVADR+1
            lda COUNTR+1
            ldy LOMEM
            sty COUNTR+1
            ldy LOMEM+1
            sty LOMEM
            eor #$AA
            sta LOMEM+1
            ldy L0082
            lda L0083
            sta L0082
            lda L0084
            sta L0083
            sty L0084
L9DED       rts
L9DEE       sta DSKFMS
            lda ICCOMZ
            sta ABUFPT
            lda ICSTAZ
            sta ABUFPT+1
            ldy ADRESS
            lda DSKFMS
            cmp #$60
            bcs L9E07
            ldy LOGCOL
            lda #$BF
            sec
            sbc DSKFMS
L9E07       ldx #$00
            cmp LAD90,Y
            bcc L9E10
            ldx #$FF
L9E10       stx POKMSK
            ldx ICCOMT
            lda DSKFMS
            lsr
            lsr
            tay
            lda DSKFMS
            and #$03
            tax
            clc
            adc #$5C
            sta BUFADR
            lda LAD8C,X
            sta BUFADR+1
            lda #$10
            sta BRKKEY
            lda BUFCNT
            sta RTCLOK
            ldx #$06
            jsr L9E5C
            lda RTCLOK
            sta BUFCNT
            lda #$18
            sta BRKKEY
            lda BUFSTR
            sta RTCLOK
            ldx #$04
            jsr L9E5C
            lda RTCLOK
            sta BUFSTR
            lda #$20
            sta BRKKEY
            lda BUFSTR+1
            sta RTCLOK
            ldx #$07
            jsr L9E5C
            lda RTCLOK
            sta BUFSTR+1
            rts
L9E5C       lda (ABUFPT),Y
            bne L9E6A
            bit POKMSK
            bpl L9EC8
            lda BUFADR
            sta (ABUFPT),Y
            bne L9EC8
L9E6A       lda BRKKEY
            eor FMSZPG+5
            sta ABUFPT+3
            lda RTCLOK
            asl
            asl
            bcc L9E7A
            inc ABUFPT+3
            inc ABUFPT+3
L9E7A       asl
            bcc L9E7F
            inc ABUFPT+3
L9E7F       sta ABUFPT+2
            lda BRKKEY
            eor FMSZPG+5
            sta ICDNOZ
            lda (ABUFPT),Y
            asl
            asl
            bcc L9E91
            inc ICDNOZ
            inc ICDNOZ
L9E91       asl
            bcc L9E96
            inc ICDNOZ
L9E96       sta ICHIDZ
            sty RTCLOK+1
            ldy #$00
            bit POKMSK
            bmi L9ED7
L9EA0       lda (ICHIDZ),Y
            bit BUFADR+1
            bne L9EB5
            sta (ABUFPT+2),Y
            iny
            cpy #$08
            bne L9EA0
            ldy RTCLOK+1
            bpl L9EC8
L9EB1       lda (ICHIDZ),Y
            ora BUFADR+1
L9EB5       sta (ABUFPT+2),Y
            iny
            cpy #$08
            bne L9EB1
            lda #$FF
            sta POKMSK
L9EC0       ldy RTCLOK+1
            lda RTCLOK
            sta (ABUFPT),Y
            inc RTCLOK
L9EC8       lda ABUFPT
            clc
            adc #$30
            sta ABUFPT
            bcc L9ED3
            inc ABUFPT+1
L9ED3       dex
            bne L9E5C
            rts
L9ED7       lda (ICHIDZ),Y
            bit BUFADR+1
            bne L9EEA
            ora BUFADR+1
            sta (ABUFPT+2),Y
            iny
            cpy #$08
            bne L9ED7
            beq L9EC0
L9EE8       lda (ICHIDZ),Y
L9EEA       sta (ABUFPT+2),Y
            iny
            cpy #$08
            bne L9EE8
            lda #$00
            sta POKMSK
            beq L9EC0
L9EF7       lda BUFCNT
            sta BITMSK
            lda BUFSTR
            sta SHFAMT
            lda BUFSTR+1
            sta ROWAC
            ldx #$02
L9F05       lda COUNTR+1,X
            sta L008A
            lda L0082,X
            sta L008B
            jsr L9F14
            dex
            bpl L9F05
            rts
L9F14       stx DSKFMS
            txa
            asl
            tax
            lda ADRESS+1,X
            cmp #$0A
            bcc L9F22
            ldx DSKFMS
            rts
L9F22       sta L010B
            jsr LA287
            lda L008E
            clc
            adc L008D
            ror
            sta COLAC+1
            ldy L008E
            lda L008D
            cmp #$9A
            bcs L9F3C
            cmp #$25
            bcs L9F44
L9F3C       lda #$26
            cpy #$5F
            bcs L9F44
            lda #$99
L9F44       cmp L008E
            bcs L9F4E
            sta COLAC
            sty ENDPT
            bcc L9F52
L9F4E       sta ENDPT
            sty COLAC
L9F52       jsr L9FEC
            lda L008B
            sta ICCOMT
            ldy #$02
L9F5B       lda COLAC,Y
            lsr
            lsr
            sta ENDPT+1,Y
            lda COLAC,Y
            and #$03
            tax
            lda LADD1,X
            and L008A
            sta DELTAC+1,Y
            lda LADD1,X
            eor #$FF
            sta SWPFLG,Y
            dey
            bpl L9F5B
            ldx #$04
L9F7E       lda #$FF
            sta L0085,X
            stx DSKUTL
            jsr LA053
            ldx DSKUTL
            lda L0097
            clc
            adc L0098
            pha
            ror
            lsr
            clc
            adc COUNTR
            sta COUNTR
            pla
            and #$03
            sta L0098
            lda L008B
            asl L008B
            asl L008B
            ora L008B
            sta ICCOMT
            dex
            bpl L9F7E
            ldx DSKFMS
            lda L0082,X
            sta L008B
            ldx #$02
            lda L008E
            ldy FKDEF
            bpl L9FB8
            lda L008D
L9FB8       cmp #$9A
            bcs L9FC6
            lda L008B
            asl
            and #$AA
            sta ICCOMT
            jsr LA0E7
L9FC6       dex
            lda L008B
            asl
            ora L008B
            and #$AA
            sta ICCOMT
            jsr LA0E7
            dex
            lda L008D
            ldy FKDEF
            bpl L9FDC
            lda L008E
L9FDC       cmp #$25
            bcc L9FE9
            lda L008B
            and #$AA
            sta ICCOMT
            jsr LA0E7
L9FE9       ldx DSKFMS
            rts
L9FEC       lda FKDEF
            bpl L9FF5
            eor #$FF
            clc
            adc #$01
L9FF5       tay
            pha
            lda LADD7+1,Y
            clc
            adc #$DE
            sta ABUFPT
            lda #$00
            adc #$AD
            sta ABUFPT+1
            lda OLDADR+1
            asl
            sta POKMSK
            asl
            asl
            adc POKMSK
            adc ABUFPT
            sta ABUFPT
            bcc LA016
            inc ABUFPT+1
LA016       ldy L010B
            lda (ABUFPT),Y
            sta COUNTR
            pla
            tay
            lda LADDA+1,Y
            clc
            adc #$EC
            sta ABUFPT
            lda #$00
            adc #$AE
            sta ABUFPT+1
            lda OLDADR+1
            cmp #$05
            bcc LA038
            eor #$FF
            sec
            adc #$08
LA038       asl
            sta POKMSK
            asl
            asl
            adc POKMSK
            adc ABUFPT
            sta ABUFPT
            bcc LA047
            inc ABUFPT+1
LA047       ldy L010B
            lda (ABUFPT),Y
            sta L0097
            and #$03
            sta L0098
            rts
LA053       lda COUNTR
            cmp #$88
            bcs LA061
            sta L0085,X
            lda ICCOMT
            and #$C0
            bne LA062
LA061       rts
LA062       lda COUNTR
            jsr LA2CB
            ldy #$02
            ldx #$00
            bit ICCOMT
            bmi LA070
            inx
LA070       bvs LA073
            dey
LA073       sty RTCLOK
            ldy ENDPT+1,X
            lda (ABUFPT),Y
            jsr LA23B
            sty BRKKEY
            ldy POKMSK
            lda COLAC,X
            and #$03
            tax
            lda L008A
            and LADC9,X
            sta DSKFMS+1
            lda LADC9,X
            eor #$FF
            and (ABUFPT+2),Y
            ora DSKFMS+1
            sta (ABUFPT+2),Y
            ldy BRKKEY
            lda #$FF
            sta L0099
LA09D       iny
            tya
            ldx RTCLOK
            cmp ENDPT+1,X
            beq LA0C0
            lda (ABUFPT),Y
            cmp L0099
            bne LA0B1
            lda L009A
            sta (ABUFPT),Y
            bne LA09D
LA0B1       jsr LA23B
            sty DSKFMS+1
            ldy POKMSK
            lda L008A
            sta (ABUFPT+2),Y
            ldy DSKFMS+1
            bne LA09D
LA0C0       lda (ABUFPT),Y
            jsr LA23B
            sty BRKKEY
            ldy POKMSK
            lda COLAC,X
            and #$03
            tax
            lda L008A
            and LADCD,X
            sta DSKFMS+1
            lda LADCD,X
            eor #$FF
            and (ABUFPT+2),Y
            ora DSKFMS+1
            sta (ABUFPT+2),Y
            ldx BUFADR+1
            lda RTCLOK+1
            sta BUFCNT,X
            rts
LA0E7       lda #$03
            sta L008C
LA0EB       bit ICCOMT
            bmi LA0FA
LA0EF       dec L008C
            bmi LA0F9
            asl ICCOMT
            asl ICCOMT
            bne LA0EB
LA0F9       rts
LA0FA       ldy L008C
            lda L0086,Y
            cmp #$FF
            bne LA10C
            lda L0085,Y
            cmp #$FF
            beq LA0EF
            lda #$00
LA10C       sta L009B
LA10E       ldy L008C
            lda L0085,Y
            cmp #$FF
            bne LA119
            lda #$87
LA119       sta L009C
            dec L008C
            bmi LA12D
            asl ICCOMT
            asl ICCOMT
            beq LA12D
            bmi LA10E
            jsr LA130
            jmp LA0EF
LA12D       jmp LA130
LA130       lda L009C
            cmp #$88
            bcc LA13A
            lda #$87
            sta L009C
LA13A       lda L009B
            cmp #$88
            bcc LA144
            lda #$00
            sta L009B
LA144       sta COUNTR
            stx DSKFMS+1
            jsr LA2CB
LA14B       ldx DSKFMS+1
            lda DELTAC+1,X
            sta BRKKEY
            lda SWPFLG,X
            sta RTCLOK
            lda L009C
            lsr
            lsr
            lsr
            sta DSKFMS+1
            lda L009B
            lsr
            lsr
            lsr
            cmp DSKFMS+1
            bne LA16E
            lda L009B
            and #$07
            sta DSKFMS+1
            jmp LA208
LA16E       sta DSKUTL
            ldy ENDPT+1,X
            lda (ABUFPT),Y
            cpx #$01
            beq LA17E
            jsr LA23B
            jmp LA181
LA17E       jsr LA247
LA181       lda L009B
            and #$07
            tay
            jmp LA1A8
LA189       ldy ENDPT+1,X
            lda (ABUFPT),Y
            cmp L0099
            beq LA197
            cpx #$01
            beq LA19D
            bne LA1A3
LA197       lda L009A
            sta (ABUFPT),Y
            bne LA1B5
LA19D       jsr LA247
            jmp LA1A6
LA1A3       jsr LA23B
LA1A6       ldy #$00
LA1A8       lda (ABUFPT+2),Y
            and RTCLOK
            ora BRKKEY
            sta (ABUFPT+2),Y
            iny
            cpy #$08
            bne LA1A8
LA1B5       lda #$30
            clc
            adc ABUFPT
            sta ABUFPT
            bcc LA1C0
            inc ABUFPT+1
LA1C0       inc DSKUTL
            lda DSKUTL
            cmp #$06
            bne LA1E2
            inc BUFADR+1
            lda RTCLOK+1
            sta BUFCNT
            lda BUFSTR
            sta RTCLOK+1
            lda #$18
            eor FMSZPG+5
            sta RTCLOK+2
            lda SHFAMT
            sta BUFADR
            lda #$FF
            sta L0099
            bne LA1FE
LA1E2       cmp #$0A
            bne LA1FE
            inc BUFADR+1
            lda RTCLOK+1
            sta BUFSTR
            lda BUFSTR+1
            sta RTCLOK+1
            lda #$20
            eor FMSZPG+5
            sta RTCLOK+2
            lda ROWAC
            sta BUFADR
            lda #$FF
            sta L0099
LA1FE       lda DSKUTL
            cmp DSKFMS+1
            bne LA189
            lda #$00
            sta DSKFMS+1
LA208       lda L009C
            and #$07
            sta DSKUTL
            ldy ENDPT+1,X
            lda (ABUFPT),Y
            cpx #$01
            beq LA21C
            jsr LA23B
            jmp LA21F
LA21C       jsr LA247
LA21F       ldy DSKFMS+1
LA221       lda (ABUFPT+2),Y
            and RTCLOK
            ora BRKKEY
            sta (ABUFPT+2),Y
            iny
            cpy DSKUTL
            bcc LA221
            beq LA221
            stx DSKFMS+1
            ldx BUFADR+1
            lda RTCLOK+1
            sta BUFCNT,X
            ldx DSKFMS+1
            rts
LA23B       sta L0099
            sta L009A
            cmp BUFADR
            bcc LA247
            cmp #$5A
            bcc LA271
LA247       sta L0099
            jsr LA271
            lda ABUFPT+2
            sta ICHIDZ
            lda ABUFPT+3
            sta ICDNOZ
            lda RTCLOK+1
            sta (ABUFPT),Y
            sta L009A
            cmp #$5A
            beq LA260
            inc RTCLOK+1
LA260       jsr LA271
            tya
            pha
            ldy #$07
LA267       lda (ICHIDZ),Y
            sta (ABUFPT+2),Y
            dey
            bpl LA267
            pla
            tay
            rts
LA271       pha
            lda RTCLOK+2
            sta ABUFPT+3
            pla
            asl
            asl
            bcc LA27F
            inc ABUFPT+3
            inc ABUFPT+3
LA27F       asl
            bcc LA284
            inc ABUFPT+3
LA284       sta ABUFPT+2
            rts
LA287       ldy L010B
            lda LADAB,Y
            sta L008E
            ldy FKDEF
            bne LA29A
            eor #$FF
            sec
            adc #$BF
            bne LA2AA
LA29A       bmi LA29D
            dey
LA29D       iny
            iny
            lda LADA6+1,Y
            clc
            adc L010B
            tay
            lda LADB3+2,Y
LA2AA       sta L008D
            ldy FKDEF
            bmi LA2BE
            lda #$BF
            sec
            sbc L008E
            sta L008E
            lda #$BF
            sec
            sbc L008D
            sta L008D
LA2BE       lda L008E
            cmp L008D
            bcc LA2CA
            ldx L008D
            sta L008D
            stx L008E
LA2CA       rts
LA2CB       ldx #$00
            cmp #$30
            bcc LA2D7
            inx
            cmp #$50
            bcc LA2D7
            inx
LA2D7       stx BUFADR+1
            lda BITMSK,X
            sta BUFADR
            lda BUFCNT,X
            sta RTCLOK+1
            lda LADD5,X
            eor FMSZPG+5
            sta RTCLOK+2
            lda COUNTR
            jsr LA2F4
            lda COUNTR
            and #$07
            sta POKMSK
            rts
LA2F4       pha
            jsr LA76E
            lda #$00
            sta BRKKEY
            pla
            lsr
            lsr
            lsr
            asl
            sta POKMSK
            asl
            adc POKMSK
            asl
            rol BRKKEY
            asl
            rol BRKKEY
            asl
            rol BRKKEY
            clc
            adc ABUFPT
            sta ABUFPT
            lda BRKKEY
            adc ABUFPT+1
            sta ABUFPT+1
            rts
LA31B       bit RTCLOK+2
            bpl LA325
            bmi LA336
LA321       bit RTCLOK+2
            bpl LA336
LA325       dey
            bpl LA335
            ldy #$07
            lda ABUFPT
            clc
            adc #$08
            sta ABUFPT
            bcc LA335
            inc ABUFPT+1
LA335       rts
LA336       lsr POKMSK
            lsr POKMSK
            bcc LA34A
            lda #$80
            sta POKMSK
            lda ABUFPT
            adc #$07
            sta ABUFPT
            bcc LA34A
            inc ABUFPT+1
LA34A       rts
LA34B       ldx #$2F
LA34D       lda LB12C+1,X
            sta L12D0,X
            sta L16D0,X
            sta L1AD0,X
            sta L1ED0,X
            sta L22D0,X
            sta L26D0,X
            dex
            bpl LA34D
            lda #$D6
            sta ATRACT
            lda #$55
            sta COUNTR+1
            sta LOMEM+1
            lda #$FF
            sta LOMEM
            lda #$00
            sta L0082
            sta L0083
            sta L0084
            jsr LA3A5
            ldx #$05
LA380       lda LADA1,X
            sta ADRESS+1,X
            dex
            bpl LA380
            lda #$02
            sta OLDCHR
            lda #$10
            sta FMSZPG+2
            lda #$18
            sta FMSZPG+3
            lda #$20
            sta FMSZPG+4
            jsr LA763
            lda #$52
            ldx #$58
            ldy #$28
            jsr L8A16
            rts
LA3A5       lda L00C4
LA3A7       cmp #$0C
            bcc LA3B0
            sec
            sbc #$05
            bne LA3A7
LA3B0       sec
            sbc #$01
            asl
            asl
            asl
            sta L0091
            lda #$B0
            sta L0092
            ldy #$00
            sty L0094
            lda (L0091),Y
            tax
            lda LB0E8+1,X
            sta L0095
            lda #$33
            sta L0096
            lda #$08
            sta L0093
            lda #$01
            sta L0090
            sta L008F
            rts
LA3D7       ldx #$28
            lda #$00
LA3DB       sta L3878,X
            dex
            bpl LA3DB
            rts
LA3E2       jsr L9991
            ldx DSKUTL
            and STICK0,X
            beq LA3F5
            jsr L8AC7
            lda #$1F
            sta L00BA
            ldx DSKUTL
LA3F5       jmp LA4AD
LA3F8       lda L00B5
            beq LA407
            lda L0109
            bne LA407
            jsr LA3D7
            jsr L8C6C
LA407       ldx #$05
            stx DSKUTL
LA40B       lda L025A,X
            bne LA413
            jmp LA4A3
LA413       dec VSFLAG,X
            bmi LA3E2
            lda VSFLAG,X
            sta L010B
            tay
            lda LA4B4,Y
            sta PADDL2,X
            sta RTCLOK
            jsr L9FEC
            jsr LA287
            ldx DSKUTL
            lda L008D
            sec
            sbc L008E
            lsr
            lsr
            sta POKMSK
            clc
            adc L008E
            adc #$1C
            sta COLAC
            lda L008D
            sec
            sbc POKMSK
            clc
            adc #$1E
            sta ENDPT
            lda L0097
            lsr
            lsr
            sta POKMSK
            lsr
            clc
            adc COUNTR
            clc
            adc #$40
            sta COUNTR
            lda STICK0,X
            sta BRKKEY
            ldy #$04
LA45F       asl BRKKEY
            bcc LA47C
            lda COLAC
            sta L0254,X
            lda RTCLOK
            sta PADDL2,X
            lda COUNTR
            cmp #$40
            bcc LA4AD
            cmp #$C0
            bcs LA4AD
            sta L025A,X
            bne LA4A3
LA47C       asl BRKKEY
            bcc LA499
            lda ENDPT
            sta L0254,X
            lda RTCLOK
            sta PADDL2,X
            lda COUNTR
            cmp #$40
            bcc LA4AD
            cmp #$C0
            bcs LA4AD
            sta L025A,X
            bne LA4A3
LA499       lda COUNTR
            clc
            adc POKMSK
            sta COUNTR
            dey
            bne LA45F
LA4A3       dec DSKUTL
            ldx DSKUTL
            bmi LA4AC
            jmp LA40B
LA4AC       rts
LA4AD       lda #$00
            sta L025A,X
            beq LA4A3
LA4B4       .byte $00,$00,$00
            ora (NGFLAG,X)
            ora (CASINI,X)
            .byte $02,$02,$03,$03,$03
LA4C0       ldy #$00
            ldx CHKSNT
LA4C4       lda LACE2,X
            bne LA4CE
            ldx CHKSNT
            jmp LA4C0
LA4CE       sta BRKKEY
            and #$0F
            sta POKMSK
LA4D4       lda NOCKSM
            clc
            adc FREQ
            sta (ABUFPT),Y
            dec BPTR
            bne LA4E0
            rts
LA4E0       lda NOCKSM
            cmp FTYPE
            bne LA4EC
            lda FEOF
            sta NOCKSM
            bne LA4F9
LA4EC       lda ICCOMT
            cmp #$0F
            bne LA4F7
            lda ABUFPT
            lsr
            bcs LA4F9
LA4F7       inc NOCKSM
LA4F9       bit BRKKEY
            bpl LA50A
            clc
            lda ABUFPT
            adc ABUFPT+2
            sta ABUFPT
            lda ABUFPT+1
            adc ABUFPT+3
            sta ABUFPT+1
LA50A       bit BRKKEY
            bvc LA51D
            sty FREQ
            clc
            lda ABUFPT
            adc ICHIDZ
            sta ABUFPT
            lda ABUFPT+1
            adc ICDNOZ
            sta ABUFPT+1
LA51D       dec POKMSK
            bpl LA4D4
            inx
            bne LA4C4
LA524       lsr
            lsr
            lsr
            sta POKMSK
            ldx #$00
LA52B       ldy #$07
LA52D       lda (ABUFPT,X)
            sta BRKKEY
            lda (ABUFPT),Y
            sta (ABUFPT,X)
            lda BRKKEY
            sta (ABUFPT),Y
            jsr LA781
            dey
            dey
            bpl LA52D
            lda ABUFPT
            clc
            adc #$04
            sta ABUFPT
            bcc LA54B
            inc ABUFPT+1
LA54B       dec POKMSK
            bne LA52B
            rts
LA550       ldx #$03
            lda #$00
            sta ZLOADA
            sta ZLOADA+1
            sta DSCTLN
            sta DSCTLN+1
            cpy #$00
            beq LA565
            dex
LA565       cpy #$12
            bcc LA56E
            cpy #$1C
            bcc LA589
            dex
LA56E       sed
            clc
            lda LA5D8,Y
            sta ZLOADA,X
            lda SAVMSC+1,X
            adc LA5D8,Y
            sta SAVMSC+1,X
LA57D       dex
            bmi LA5B3
            lda SAVMSC+1,X
            adc #$00
            sta SAVMSC+1,X
            jmp LA57D
LA589       lda LA5D8,Y
            lsr
            lsr
            lsr
            lsr
            sta BRKKEY
            sta LOADAD+1,X
            lda LA5D8,Y
            asl
            asl
            asl
            asl
            sta POKMSK
            sta ZLOADA,X
            sed
            clc
            lda SAVMSC+1,X
            adc POKMSK
            sta SAVMSC+1,X
            dex
            lda SAVMSC+1,X
            adc BRKKEY
            sta SAVMSC+1,X
            jmp LA57D
LA5B3       cld
            ldx #$04
            lda #$5C
            sta ABUFPT
            lda #$00
            sta ABUFPT+1
            ldy #$32
            jsr LA5FA
            ldx #$04
            lda #$D6
            sta ABUFPT
            lda #$02
            sta ABUFPT+1
            ldy #$5A
            jsr LA5F5+1
            lda #$2E
            sta LOADAD+1
            rts
LA5D8       .byte $33,$02,$04
            asl WARMST
            bpl LA5F1
            .byte $14
            asl DSKFMS,X
            jsr L2422
            rol ICBLLZ
            bmi LA61B
            bvc LA5FA+1
            ora ICHIDZ,X
            and STATUS
            and FREQ,X
LA5F1       eor TEMPCHR
            adc POKMSK
LA5F5       ora L00A9,X
            rti
            bne LA5FC
LA5FA       lda #$00
LA5FC       sta BUFADR
            stx RTCLOK
            ldx #$00
            sty POKMSK
            lda #$03
            sta RTCLOK+2
            lda #$00
            sta ICCOMZ
            lda #$38
            sta ICSTAZ
LA610       lda (ABUFPT,X)
            sta BRKKEY
            and #$0F
            clc
            adc #$01
            ora BUFADR
LA61B       sta (ICCOMZ),Y
            dey
            dec RTCLOK+2
            bne LA62D
            lda #$0B
            ora BUFADR
            sta (ICCOMZ),Y
            lda #$03
            sta RTCLOK+2
            dey
LA62D       lda BRKKEY
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$01
            ora BUFADR
            sta (ICCOMZ),Y
            dey
            dec RTCLOK+2
            bne LA64A
            lda #$0B
            ora BUFADR
            sta (ICCOMZ),Y
            lda #$03
            sta RTCLOK+2
            dey
LA64A       dec ABUFPT
            dec RTCLOK
            bne LA610
LA650       iny
            cpy POKMSK
            beq LA667
            lda (ICCOMZ),Y
            and #$BF
            cmp #$0B
LA65B       beq LA661
            cmp #$01
            bne LA667
LA661       lda #$00
            sta (ICCOMZ),Y
            beq LA650
LA667       rts
LA668       lda FMSZPG+6
            bne LA668
            lda ROWAC+1
            eor L010D
            beq LA680
            jsr LA71B
            beq LA697
            lda ROWAC+1
            sta L010D
            jmp LA697
LA680       jsr LA71B
            bne LA697
            lda ROWAC+1
            sta L010D
            eor #$FF
            sta ROWAC+1
            lda ROWCRS
            clc
            adc #$20
LA693       cmp ROWCRS
            bne LA693
LA697       lda ROWAC+1
            bne LA668
            jsr LA76E
            stx ABUFPT+2
            stx ICHIDZ
            sty ABUFPT+3
            inc ABUFPT+3
LA6A6       sty ICDNOZ
            inc ICDNOZ
            inc ICDNOZ
            ldy #$00
            tya
LA6AF       sta (ABUFPT),Y
            sta (ABUFPT+2),Y
            sta (ICHIDZ),Y
            dey
            bne LA6AF
            inc ICDNOZ
            ldy #$2F
LA6BC       sta (ICHIDZ),Y
            dey
            bpl LA6BC
            rts
LA6C2       lda #$61
            ldx #$0E
LA6C6       ldy LA6F7,X
            sta L39C0,Y
            sta L3CF0,Y
            cpx #$0C
            bcc LA6D9
            sta L3BA0,Y
            sta L3ED0,Y
LA6D9       eor #$10
            ldy LA706,X
            sta L39C0,Y
            sta L3CF0,Y
            cpx #$0C
            bcc LA6EE
            sta L3BA0,Y
            sta L3ED0,Y
LA6EE       eor #$10
            clc
            adc #$01
            dex
            bpl LA6C6
            rts
LA6F7       .byte $97
            stx L0095,Y
            sty SAVADR,X
            .byte $67
            ror ADRESS+1
            .byte $64
            rol BFENHI,X
            .byte $34,$07
            asl RAMLO+1
LA706       clv
            lda LBBB9+1,Y
            .byte $87
            dey
            .byte $89
            txa
            .byte $8B
            eor L5B5A,Y
            plp
            and #$2A
LA715       lda CONSOL
            and #$01
            rts
LA71B       jsr LA74A
            cmp #$21
            rts
LA721       lda CONSOL
            and #$04
            bne LA743
            lda L00C4
            bmi LA742
            inc L00C4
            lda L00C4
            cmp #$04
            bne LA736
            lda #$01
LA736       sta L010A
            tax
            inx
            stx L3820
            ora #$80
            sta L00C4
LA742       rts
LA743       lda L00C4
            and #$7F
            sta L00C4
            rts
LA74A       lda IRQST
            and #$40
            bne LA760
            lda #$00
            sta IRQEN
            lda #$40
            sta IRQEN
            lda KBCODE
            bne LA762
LA760       lda #$00
LA762       rts
LA763       ldx #$08
            lda #$00
LA767       sta L386D,X
            dex
            bpl LA767
            rts
LA76E       ldx #$A0
            ldy #$38
            lda FMSZPG+5
            beq LA77A
            ldx #$D0
            ldy #$3B
LA77A       stx ABUFPT
            sty ABUFPT+1
            rts
            sta (ABUFPT),Y
LA781       inc ABUFPT
            bne LA787
            inc ABUFPT+1
LA787       rts
LA788       sta (ABUFPT+2),Y
LA78A       inc ABUFPT+2
            bne LA790
            inc ABUFPT+3
LA790       rts
LA791       sta (ICHIDZ),Y
            inc ICHIDZ
            bne LA799
            inc ICDNOZ
LA799       rts
LA79A       lda FMSZPG+5
            eor #$04
            sta FMSZPG+5
            beq LA7A8
            lda #$A0
            ldx #$38
            bne LA7AC
LA7A8       lda #$D0
            ldx #$3B
LA7AC       sta LMARGN
            stx RMARGN
            lda FMSZPG+2
            eor FMSZPG+5
LA7B4       eor #$04
            sta ZCHAIN
            lda FMSZPG+3
            eor FMSZPG+5
            eor #$04
            sta ZCHAIN+1
            lda FMSZPG+4
            eor FMSZPG+5
            eor #$04
            sta DSTAT
            lda #$FF
            sta FMSZPG+6
            rts
            .byte $03
            sta RTCLOK+2
            dey
            lda BRKKEY
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$01
            ora BUFADR
            sta (ICCOMZ),Y
            dey
            dec RTCLOK+2
            bne LA7EE
            lda #$0B
            ora BUFADR
            sta (ICCOMZ),Y
            lda #$03
            sta RTCLOK+2
            dey
LA7EE       dec ABUFPT
            dec RTCLOK
            bne LA7B4
            iny
            cpy POKMSK
            beq LA80A+1
            lda (ICCOMZ),Y
            and #$BF
            cmp #$0B
LA7FF       beq LA848+1
            lda #$3F
            sta DMACLT
            lda CRITIC
            nop
            nop
LA80A       sta CHBASE
            lda #$98
            sta COLPF2
            lda ATRACT
            sta COLPF1
            lda DRKMSK
            sta COLPF3
            lda #$23
            sta VDSLST
            pla
            rti
            pha
            lda FMSZPG
            sta WSYNC
            sta CHBASE
            lda COLRSH
            sta COLPF3
            lda #$38
            sta VDSLST
            pla
            rti
            pha
            lda FMSZPG+1
            sta WSYNC
            sta CHBASE
            lda TEMPCHR
            sta COLPF3
            lda #$4D
LA848       sta VDSLST
            pla
            rti
            pha
            lda #$0C
            sta WSYNC
            sta CHBASE
            lda HOLD1
            sta COLPF3
            pla
            rti
            bvs LA8CF
            bvs LA8A4+1
            .byte $00
            sec
            .byte $04,$04
            sty ENDPT
            ldy #$38
            .byte $34,$34,$34,$34
            ldy BFENLO,X
            .byte $34,$34
            ldy BFENLO,X
            .byte $34,$34,$34,$34,$34
            ldy ENDPT,X
            .byte $00,$3F,$34,$34
            eor (STATUS,X)
            .byte $02
            asl L0A0A
            asl
            asl
            asl
            asl L4E00
            .byte $C2,$42
            lsr L4848
            inc LEA00
            rol
            rol
            inc L2222
            .byte $E2,$00
            inx
            dey
            dey
LA89C       inc L2A2A
            inc LEE00
            rol
            rol
LA8A4       rol L2A2A
LA8A7       rol LE000
            ldy #$A0
            cpx #$24
            bit ICBLLZ
            .byte $00
            inc LA8A7+1
            inx
            tay
            tay
            ldx LEC00
            txa
            txa
            cpx L8A8A
            txa
            .byte $00
            nop
            lsr
            lsr
            lsr
            lsr
            lsr
            lsr LAA00
            tax
            tax
            ldx L4EAE
LA8CF       lsr
            .byte $00
            dec LA8A7+1
            ldx LA8A7+1
            dec LADFE+2
            ldy L00A4
            cpx L00A4
            ldy L00AE
            .byte $00
            sty L8A8A
            txa
            txa
            txa
            nop
            .byte $00
            inc L8A8A
            tax
            tax
            tax
            inc LE000
            .byte $80,$80
            cpx #$20
            jsr L00E0
            .byte $7C,$82
            tsx
            ldx #$BA
            .byte $82,$7C,$00,$FF
            sty L00E4,X
            .byte $80
            ora (TRAMSZ,X)
            php
            .byte $00,$FF
            and #$29
            jsr L2020
            jsr LFF30
            .byte $42,$42
            rti
            rti
            rti
            rti
            rti
            .byte $F4
            tya
            bcc LA89C+1
            .byte $80,$80,$80,$80,$04,$04,$34,$44
            sta TRAMSZ
            .byte $04
            php
            php
            php
            php
            php
            php
            php
            php
            clc
            plp
            iny
            ora #$0A
            .byte $0C,$00,$00,$00
            ora (BRKKEY),Y
            ora (POKMSK),Y
            bpl LA94F
            bpl LA951
            .byte $32,$22,$22,$22,$22,$22,$22,$23,$27,$04,$04,$04,$04,$04
LA94F       .byte $04,$04
LA951       .byte $43,$42,$42,$42,$52,$62,$42,$03
            bvs LA99B
            rti
            rti
            bvc LA9BF
            .byte $00,$00,$7C,$44,$44,$44,$44,$44,$7C,$00
            bpl LA99B
            bpl LA97D
LA96D       bpl LA97F
            .byte $7C,$00
LA971       .byte $7C,$04,$04,$7C
            rti
            rti
            .byte $7C,$00,$7C,$04,$04,$1C
LA97D       .byte $04,$04
LA97F       .byte $7C,$00,$44,$44,$44,$7C,$04,$04,$04,$00,$7C
            rti
            rti
            .byte $7C,$04,$04,$7C,$00
            rti
            rti
            rti
            .byte $7C,$44,$44,$7C,$00,$7C,$04
LA99B       .byte $04,$04,$04,$04,$04,$00,$7C,$44,$44,$7C,$44,$44,$7C,$00,$7C,$44
            .byte $44,$7C,$04,$04,$04,$00
LA9B1       .byte $13,$00,$00,$00,$12,$00,$00,$00,$12
            ldx L0000,Y
            .byte $00
            ora (L00B5),Y
LA9BF       .byte $00,$00
            bpl LA971
            .byte $AF,$00
            bpl LA96D
            lda L0F00
            .byte $B3
            ldy L0000,X
            asl LB1AF+1
            .byte $B2
            ora LAEAD+1
            .byte $AF,$1C
            ora L0F1B
            ora RTCLOK+1,X
            .byte $0C,$12
LA9DD       ora L00BF,X
            lda LB8BA,Y
            .byte $BB,$B7,$00
            lda LBCBE,X
            clv
            bpl LAA04+2
            .byte $13
            ora APPMHI+1,X
            .byte $1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C
            asl DSKUTL+1,X
            .byte $1B
            bpl LAA00
LAA00       bpl LAA19
            ora L0000,X
LAA04       asl L1A17
            asl POKMSK,X
            ora APPMHI+1,X
            .byte $1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LAA19       .byte $00,$00,$00
            asl NGFLAG
            .byte $0B
            ora (NGFLAG,X)
            ora (L0000,X)
            asl L0F1B
            .byte $00,$1C
            asl DSKUTL+1,X
            .byte $1B
            bpl LAA44
            ora DSKUTL,Y
            .byte $0C
            clc
            clc
            .byte $00
            bpl LAA51
            .byte $13
            ora APPMHI+1,X
            .byte $1C,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LAA44       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (ABUFPT),Y
            ora L0000,X
LAA51       bpl LAA69
            ora L0000,X
            asl L0F1B
            ora.w BUFADR
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LAA69       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$1C
            ora DSKFMS,X
            ora DOSINI+1,X
            bpl LAA7C
LAA7C       .byte $13,$0C,$12
            ora L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            asl.w ABUFPT+3,X
            .byte $02
            asl
            ora #$05
            .byte $00
            clc
            asl.w DSKFMS
            .byte $0C
            ora RTCLOK+2,Y
            .byte $0C
            bpl LAAB7+1
            .byte $0F,$17,$00,$00,$00,$00,$00,$00,$00,$00
LAAB6       .byte $00
LAAB7       cmp L00A9,X
            asl BUFRFL
            .byte $DA
            lda #$22
            sec
            and #$AB
            lda #$AB
            .byte $00,$0F,$80,$0F
            php
            .byte $1B
            dey
            .byte $1B
            php
            .byte $1F
            cpy #$23
            cpx #$23
            cpy #$27
            and L00AC,X
            rts
            asl L0EB0
            .byte $00
            ora #$00
            .byte $0B
            eor L30A8,X
            .byte $02
            php
            clc
            php
            ora L1008,Y
            php
            ora (WARMST),Y
            jsr L2108
            php
            .byte $1C
            php
            ora L1408,X
            php
            ora WARMST,X
            bit WARMST
            and WARMST
            .byte $1A
            php
            .byte $12
            php
            .byte $22
            php
            asl L1608,X
            php
            rol L00E9
            lda #$70
            sec
            sei
            sec
            .byte $EF
            lda #$17
            tax
            .byte $3F
            tax
            .byte $00
            bmi LAB14
LAB14       and (L0000),Y
            .byte $32
            dey
            clc
            dey
            ora L1A88,Y
            dey
            .byte $1C
            dey
            ora L1E88,X
            .byte $67
            tax
            .byte $8F
            tax
            .byte $80
            and.w L0000
            .byte $00,$00,$00
            ora (RAMLO,X)
            bpl LAB32
LAB32       .byte $00,$00,$00
            eor L0000,X
            ora (RAMLO,X)
            .byte $00,$00,$00,$00
            bvc LAB8E+1
            bpl LAB80+1
            .byte $00
LAB42       .byte $00
            ora (NGFLAG,X)
            .byte $04,$04,$04,$04
            rti
            eor L0000,X
            .byte $00
            ora (NGFLAG,X)
LAB4F       ora (NGFLAG,X)
            ora (FMSZPG+1),Y
            .byte $44
            bpl LAB66
            bpl LAB6B
            .byte $1F,$00,$00,$03,$0F,$3C,$F3
            cpy L3F30
            .byte $F3
            cpy LC030
LAB66       .byte $00,$00,$00,$04,$04
LAB6B       .byte $04
            and (L00CC),Y
            .byte $33,$CF,$33
            ora (NGFLAG,X)
            eor (BRKKEY,X)
            eor (BRKKEY),Y
            ora (BRKKEY),Y
            .byte $1C,$13,$1C
            bpl LAB8E
            bpl LAB90
LAB80       bpl LAB42
            .byte $00,$00,$00,$00,$00,$00,$00,$C3,$0F,$33,$C3,$0F
LAB8E       bmi LAB4F+1
LAB90       .byte $00
            eor (L0000,X)
            .byte $00
            eor FREQ,X
            bpl LAB9C
            ora (POKMSK,X)
            .byte $44,$44
LAB9C       eor (RAMLO),Y
            ora (L0000,X)
            eor L0000,X
            .byte $00,$00,$00
            rti
            bpl LABF8
            bvc LABAA
LABAA       .byte $00,$00,$00,$00
            ora (RAMLO,X)
            bpl LABB2
LABB2       .byte $00,$00,$00
            eor L0000,X
            ora (RAMLO,X)
            .byte $00,$00,$00,$00
            bvc LAC0E+1
            bpl LAC01
            .byte $00,$00
            ora (NGFLAG,X)
            .byte $04,$04,$04,$04
            rti
            eor L0000,X
            .byte $00
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (FMSZPG+1),Y
            .byte $44
            bpl LABE5+1
LABD6       bpl LABE7+1
            bpl LABD6+1
            sbc LFD01,X
            ora (L00FD,X)
            .byte $04,$04
            eor (BRKKEY,X)
            eor (BRKKEY),Y
LABE5       ora (SOUNDR),Y
LABE7       ora (NGFLAG,X)
            .byte $1F,$1F
            bpl LAC0C
            bpl LABFF
            bpl LAC01
            .byte $FF,$FF,$00,$FF,$00,$00,$00
LABF8       .byte $00,$FC,$FF,$03,$FC,$00,$00
LABFF       .byte $00,$00
LAC01       .byte $04,$04
            ora (NGFLAG,X)
            .byte $00,$00,$00,$00
            ora (L0000,X)
            .byte $00
LAC0C       eor FREQ,X
LAC0E       bpl LAC14
            ora (POKMSK,X)
            .byte $44,$44
LAC14       eor (RAMLO),Y
            ora (L0000,X)
            eor L0000,X
            .byte $00
LAC1B       .byte $00,$00
            rti
            bpl LAC70
LAC20       bvc LAC22
LAC22       sei
            adc KEYDEF+1,Y
            .byte $63,$64
            adc MLTTMP
            .byte $67
            pla
            adc #$6A
            .byte $6B,$00
            jmp (L6E6D)
            .byte $6F,$00,$00,$00,$00,$00,$00,$00
            ora (NGFLAG,X)
            .byte $00
            ora (RAMLO+1,X)
            ora HOLD1,X
            eor (FMSZPG+2,X)
            .byte $0F
            eor FREQ,X
            .byte $00,$00,$00,$00,$00,$FF,$00,$00,$00,$00,$00
            ora (CASINI+1,X)
            .byte $0C
            ora RAMLO
            .byte $17,$5C
            bvs LAC1B
            .byte $03,$0C
            and L00C5,X
            .byte $14,$14,$3F
            bne LACB3+1
            bvc LAC66
LAC66       .byte $00,$00,$00,$FF,$00,$00,$00,$0C
            bmi LACA0
LAC70       cpy #$C3
            .byte $C3,$C3,$00
            bmi LACA8
            cmp (L00C1,X)
            ora (RAMLO+1,X)
            ora L0000
            bvc LACBF
            rti
            rti
            rti
            .byte $00,$00,$00,$00
            jmp L4E4D
            cli
            .byte $57
            lsr L0000,X
            .byte $4F
            bvc LACE1
            .byte $52,$5C,$5B,$5A
            eor L5453,Y
            eor L0000,X
            .byte $00,$5F
LAC9B       lsr L085D,X
            .byte $00,$04
LACA0       .byte $00,$03,$02,$03,$00,$02,$00,$02
LACA8       ora (CASINI,X)
            ora (CASINI,X)
            .byte $00
            ora (CASINI,X)
            ora (L0000,X)
            ora (NGFLAG,X)
LACB3       ora (CASINI,X)
            ora (NGFLAG,X)
            ora (L0000,X)
            ora (NGFLAG,X)
            .byte $00
            ora (NGFLAG,X)
            .byte $02
LACBF       ora (NGFLAG,X)
            ora (L0000,X)
            ora (CASINI,X)
            ora (NGFLAG,X)
            .byte $02
            ora (L0000,X)
            .byte $02
            ora (CASINI,X)
            ora (CASINI,X)
            .byte $02
            ora (CASINI,X)
            ora (CASINI,X)
            .byte $00,$02,$02,$00,$03,$02,$03,$03,$02,$03,$00,$04,$04
LACE1       .byte $00
LACE2       lsr L0000
            .byte $42
            cpy #$00
            rti
            cpy #$00
            rti
            .byte $80
            rti
            .byte $80
            rti
            cpy #$00
            cpy #$00
            .byte $80
            rti
            .byte $80
            rti
            .byte $80
            rti
            .byte $80
            cpy #$00
            .byte $80
            rti
            .byte $80
            cpy #$00
            .byte $80
            rti
            sta (FREQ,X)
            sta (FREQ,X)
            .byte $80
            cpy #$00
            .byte $80
            cpy #$00
            sta (FREQ,X)
            sta (FREQ,X)
            sta (L00C0,X)
            .byte $00
LAD14       sta (FREQ,X)
LAD16       .byte $82
            rti
            sta (L00C0,X)
            .byte $00,$82
            rti
            .byte $82
            rti
            .byte $82
            rti
            .byte $82
            rti
            .byte $82
            cpy #$00
            .byte $82
            cpy #$00
            sty FREQ
            sty FREQ
            sty L00C0
            .byte $00
            stx L00C0
            .byte $00,$80,$00,$80,$00
LAD37       .byte $00,$02
            ora WARMST
            .byte $0F
LAD3C       ora (DSKUTL),Y
            .byte $1F
            plp
            .byte $2B,$32
            and L4744,Y
            lsr L5351
LAD48       .byte $00,$00
            jsr L6030
            pla
            tay
            iny
            clc
            plp
            bvs LAD14
            rts
            .byte $80
            bpl LAD68
LAD58       bpl LAD82
            plp
            plp
            plp
            plp
            plp
            plp
            plp
            and #$29
            and #$29
            rol
            rol
            .byte $2B
LAD68       .byte $2B,$2B
LAD6A       php
            jsr L3010
            php
            rti
            jsr L1050
            pha
            bvc LAD16
            jsr L4090
            rti
            php
LAD7B       php
            php
            php
            php
            php
            bpl LAD92
LAD82       bpl LAD93+1
            clc
            clc
            jsr L3020
            rti
            rti
            php
LAD8C       .byte $80
            jsr VKEYBD
LAD90       adc BUFCNT
LAD92       .byte $72
LAD93       adc L877F+1,Y
            stx L9C95
            ldy L00AF
            cpy #$C0
            cpy #$C0
            cpy #$C0
LADA1       .byte $00
            ora (CASINI+1,X)
            ora CMCMD
LADA6       ora #$0A
            .byte $00,$00
            asl
LADAB       .byte $32
            rti
            .byte $47
            jmp L5350
            eor DINDEX,X
LADB3       eor LA65B,Y
            bcc LAD3C
            .byte $7C
            adc ROWAC,X
            adc L666A
            .byte $64,$BF,$B2
            ldx #$95
            sta HOLDCH
            adc SHFAMT,X
            adc #$64
LADC9       .byte $FF,$3F,$0F,$03
LADCD       cpy #$F0
            .byte $FC,$FF
LADD1       cpy #$30
            .byte $0C,$03
LADD5       bpl LADEE+1
LADD7       jsr L5A00
LADDA       ldy L0000,X
            .byte $32,$64,$9C
            ora (APPMHI,X)
            clc
            jsr L2A26
            rol L3732
            cld
            .byte $0B
            asl ABUFPT+2,X
            and ICAX1Z
LADEE       and L3330
            rol L00F4,X
            .byte $13,$1C,$23
            plp
            bit L312F
            .byte $34,$37
            php
            clc
LADFE       jsr L2A26
            rol L3230
            and LTEMP+1,X
            asl L231C
            plp
            bit L312F
            .byte $33
            and LTEMP+1,X
            .byte $14
            jsr L2A26
            rol L3230
            .byte $34
            and LTEMP+1,X
            clc
            .byte $23
            plp
            bit L312F
            .byte $33,$34
            rol LTEMP+1,X
            asl L2B26,X
            rol L3230
            .byte $33
            and LTEMP,X
            .byte $37,$23
            rol
            and L3230
            .byte $33,$34
            and LTEMP,X
            sec
            cmp L00EB
            .byte $03
            bpl LAE58
            .byte $23
            plp
            and L3733
            ldx L00F0,Y
            .byte $0C,$17
            jsr L2B27
            .byte $2F,$34,$37
            inc L1206
            .byte $1C
            bit ICBLHZ
            bit L3530
            .byte $37
            beq LAE62+1
LAE58       .byte $17
            asl L2B25,X
            rol L3430
            .byte $37,$00
            clc
LAE62       jsr L2824
            bit L312F
            and LTEMP+1,X
            asl DSKFMS
            .byte $1F
            and ICAX1Z
            rol L3330
LAE72       and LTEMP+1,X
            ora ICHIDZ,X
            bit ICAX1Z
            and L312F
            .byte $33
            rol LTEMP+1,X
            .byte $1C
            bit ICBLHZ
            and L312F
            .byte $33
            and LTEMP,X
            .byte $37
LAE88       asl L2B27,X
            rol L3331
            .byte $34
            and LTEMP+1,X
            sec
            dey
            ldy LF9D7
            .byte $0B,$17
            jsr L3028
            .byte $37
            tya
            bcs LAE72+1
            ora RTCLOK+1
            asl L2A26,X
            and (LTEMP+1),Y
            bcs LAE88
            ora (APPMHI+1,X)
            .byte $1B,$22
            plp
LAEAD       bit L3732
            cpx #$F4
            asl BUFADR
            .byte $1F
            rol ICAX1Z
            rol L3733
            sed
            .byte $0C,$14
LAEBD       .byte $1A,$23
            plp
            .byte $2B,$2F,$33,$37
LAEC4       inc TRAMSZ,X
            .byte $14
LAEC7       .byte $1F
            rol ICAX2Z
            and L3430
            .byte $37,$FA
            bpl LAEEF
            and ICAX1Z
            and L312F
            and LTEMP+1,X
            .byte $13
            ora L2927,X
            bit L3130
            .byte $33
            and LTEMP+1,X
            ora L2823,Y
            bit L312F
            .byte $33,$34
            rol BUFRFL,X
            cpy #$54
            .byte $43
LAEEF       .byte $37
            and L2125
            .byte $1C
            asl POKMSK,X
            .byte $89
            lsr L333E
            and #$22
            asl L161A,X
            ora (COLAC+1),Y
            eor #$3B
            bmi LAF2C+1
            .byte $22
            ora L1519,X
LAF09       ora (LOGCOL),Y
            .byte $47
            and L272F,Y
            and (ABUFPT+2,X)
            ora L1115,Y
            .byte $63,$47
            and L272F,Y
LAF19       and (ABUFPT+1,X)
            ora L1115,Y
            .byte $9C
            adc L4151
            .byte $33
            rol
            .byte $23
            ora L1015,X
            bcs LAF96+1
            .byte $4B,$3C
LAF2C       bmi LAF54+1
            and (ABUFPT,X)
            ora POKMSK,X
            .byte $80,$5C
            eor #$3A
            bmi LAF5F
            and (ABUFPT,X)
            .byte $14
LAF3B       bpl LAEC4+1
            .byte $5B
            eor #$3C
            bmi LAF67+1
            jsr L161C
LAF45       bpl LAEC7
            bvc LAF86+1
            rol ICAX5Z,X
            rol ICDNOZ
            .byte $1C
            ora POKMSK,X
            dec L80B0,X
            .byte $5A
LAF54       eor LTEMP+1
            bit L1923
            bpl LAF3B
            clv
            dey
            .byte $53
            rti
LAF5F       and (ICBLLZ),Y
            .byte $22
            clc
            bpl LAF45
            stx ADRESS,Y
LAF67       jmp L303A
            plp
            and (DSKFMS,X)
            bpl LAF19
            .byte $89,$64,$4B,$3A
            rol L2026
            clc
            bpl LAF09
            ror COLCRS+1
            .byte $4B,$3A
            rol L1F27
            clc
            ora (POKMSK),Y
            bpl LAF9D
            clc
LAF86       jsr L3020
            rti
            rti
            php
            .byte $80
            jsr VKEYBD
            adc BUFCNT
            .byte $72
            adc L877F+1,Y
LAF96       stx L9C95
            ldy L00AF
            cpy #$C0
LAF9D       cpy #$C0
            cpy #$C0
            .byte $00
            ora (CASINI+1,X)
            ora CMCMD
            ora #$0A
            .byte $00,$00
            asl
            .byte $32
            rti
            .byte $47
            jmp L5350
            eor DINDEX,X
            eor LA65B,Y
            bcc LAF3B+1
            .byte $7C
            adc ROWAC,X
            adc L666A
            .byte $64,$BF,$B2
            ldx #$95
            sta HOLDCH
            adc SHFAMT,X
            adc #$64
            .byte $FF,$3F,$0F,$03
            cpy #$F0
            .byte $FC,$FF
            cpy #$30
            .byte $0C,$03
            bpl LAFEE+1
            jsr L5A00
            ldy L0000,X
            .byte $32,$64,$9C
            ora (APPMHI,X)
            clc
            jsr L2A26
            rol L3732
            cld
            .byte $0B
            asl ABUFPT+2,X
            and ICAX1Z
LAFEE       and L3330
            rol L00F4,X
            .byte $13,$1C,$23
            plp
            bit L312F
            .byte $34,$37
            php
            clc
            jsr L0126
            .byte $02,$03
            ora (RAMLO,X)
            ora CASINI+1
            asl CASINI+1
            ora RAMLO
            .byte $02,$03
            ora RAMLO+1
            asl CMCMD
            ora #$0A
            .byte $0C
            ora #$08
            asl L0B19
            .byte $0C
            php
            .byte $0F
            ora #$10
            .byte $07
            ora L070E,Y
            ora (DOSVEC),Y
            .byte $14
            bpl LB032+1
            ora L120C,Y
            ora #$14
            php
            asl APPMHI+1,X
            ora L0B13,Y
LB032       bpl LB042
            php
            .byte $0F
            ora (DSKFMS+1),Y
            ora DOSINI+1,X
            .byte $07,$0F
            bpl LB048
            .byte $14
            ora L1312,Y
LB042       ora L160B
            asl L190C
LB048       ora (RTCLOK+2),Y
            .byte $12,$17
            asl DOSINI,X
            asl L1819
            .byte $17,$14
            asl RTCLOK+1,X
            .byte $12
            clc
            ora L1B11,Y
            eor (BRKKEY),Y
            ora (BRKKEY),Y
            .byte $B3
            ora (DSKUTL+1),Y
            adc (BRKKEY),Y
            ora (L00B2),Y
            ora (L00B3),Y
            ora (L00B7),Y
            ora (DSKUTL+1),Y
            and (BRKKEY,X)
            .byte $B7
            ora (L00B3),Y
            ora (DSKUTL+1),Y
            adc (DSKUTL+1),Y
            and (L00B5),Y
            ora (BRKKEY),Y
            ora (L00B5),Y
            ora (BRKKEY),Y
            .byte $1B
            beq LB042
            ora (HOLD1),Y
            eor (ROWAC+1),Y
            and CHKSUM
            .byte $B2
            adc (BUFADR),Y
            adc (ICDNOZ),Y
            and (L00B7),Y
            and (ICDNOZ,X)
            .byte $B2,$72,$12
            adc BRKKEY,X
            sta (ICDNOZ,X)
            .byte $3B
            and BFENHI,X
            ora DSKUTL+1,X
            .byte $73,$1F,$C3,$17,$B2
            ora ICPTHZ,X
            and (ROWAC+1),Y
            .byte $2B,$57,$7B,$37,$1F,$33
            ora (HOLD1),Y
            .byte $B2
            sta (BUFADR,X)
            .byte $14
            ora L1914,Y
            .byte $12
            and L00B2,X
            adc BUFRLO,X
            asl DSKUTL,X
            asl DSKUTL,X
            asl L1E1D,X
            ora LF014,X
            .byte $3C
            eor #$11
            .byte $B3
            ora (L00F0),Y
            .byte $7F,$B2,$1F
            inc L1FB2,X
            .byte $7F
            ora (BUFADR+1),Y
            eor OLDROW,X
            .byte $1B
            and ABUFPT+3
            sty ABUFPT+3
            .byte $12
            clc
            .byte $1F,$3C,$1F,$FB
            ora (L00F0),Y
            .byte $DF
            ora (L00F0),Y
            .byte $FB
            ora (ICDNOZ),Y
            and (ADRESS+1),Y
            .byte $B7
LB0E8       ora (L0000),Y
            .byte $00
            asl
            asl ICBALZ,X
            .byte $32
            rti
            jmp L5E54
            pla
            .byte $72,$7C
            stx L0090
            .byte $9C
            ldx L00AE
            clv
            cpy #$C8
            .byte $D2
            dec LF0E8,X
            sed
LB103       ora (CASINI,X)
            .byte $04
            php
            bpl LB129
LB109       rti
            .byte $80
LB10B       .byte $07,$07,$07,$0B,$07
            asl L120E
            asl L1714
            .byte $1C,$17
            ora L0E17,Y
LB11B       asl L0808
            php
            .byte $0C
            php
            bpl LB133
            .byte $14
            asl L1714
            .byte $1C,$17
LB129       ora L0E17,Y
LB12C       asl L8080
            .byte $80,$80,$80,$80
LB133       .byte $80
            tax
            .byte $02,$02,$02,$02,$02,$02,$02
            tax
            .byte $80,$80,$80,$80,$80,$80,$80,$80
            jsr L2020
            jsr L2020
            jsr L0820
            php
            php
            php
            php
            php
            php
            php
            .byte $02,$02,$02,$02,$02,$02,$02,$02
LB15D       .byte $42
            ror L00E7
            .byte $00,$00,$00,$00,$E7
LB165       ror CRITIC
            .byte $0C,$04,$00,$0C
            php
            lsr
            .byte $04
LB16E       .byte $0C
            asl ZCHAIN
            asl DOSINI
            .byte $04
            lsr
            php
            .byte $00
            bpl LB109
            ror COLCRS+1
            .byte $4B,$3A
            rol L1F27
            clc
            ora (ICAX1Z),Y
            cmp L008F
            bcs LB201
            lda (L0092),Y
            sta ABUFPT
            txa
            sbc L0094
            and #$F8
            php
            pla
            lda L37AD,X
            sta APPMHI+1
            cpx L0099
            bcs LB16E
            lda L00EE
            jmp L31A4
LB1A0       lda (L00B4),Y
            sta L00EE
            sta ICSTAZ
            txa
            clc
            sbc L008C
            tay
            cmp L008E
            bcs LB203+1
LB1AF       sty L00EA
            lda (L0090),Y
            sta DSKUTL+1
            sta ICAX1Z
            dex
            txa
            sbc L008D
            tay
            cmp L008F
            bcs LB209
            sty L00EF
            lda (L0092),Y
            sta ABUFPT
            txa
            sbc L0094
            and #$F8
            php
            pla
            lda L00EE
            asl
            asl
            asl
            asl
            sta ICSTAZ
            dex
            ldy L00EA
            dey
            bmi LB1DF
            lda (L0090),Y
            sta DSKUTL+1
LB1DF       sta CASINI
            sta ICAX1Z
            ldy.w L00EF
            dey
            bmi LB20E
            lda (L0092),Y
            sta ABUFPT
            cpx L00B9
            bne LB1FF
            lda #$00
            sta ABUFPT+1
            dec L00B7
            ldy L00B7
            bpl LB1A0
            bmi LB210+1
            .byte $00,$00
LB1FF       bne LB210
LB201       .byte $0B,$07
LB203       ora ICBALZ
            .byte $34,$44,$54,$64
LB209       bvs LB287
            dey
            sty L009C,X
LB20E       ldy L00AC
LB210       ldy L00BA,X
            cpy #$C6
LB214       .byte $B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2,$B2
            clc
            .byte $00,$00,$5A
            bit BFENLO
            php
            .byte $3C,$3C
            bpl LB25A+1
            bit OLDROW
            .byte $00,$00
            clc
            php
            .byte $0C,$04,$32,$32
            lsr DSTAT,X
            clc
            clc
            .byte $32
            rol
            jmp L2044
            bmi LB253+1
            bit OLDROW
            .byte $5A
            bit ICBALZ
            clc
            .byte $34,$5A,$5A
            bit L2418
            bit OLDROW
            .byte $5A
LB253       bit POKMSK
            .byte $34,$34
            cli
            .byte $5A,$B2
LB25A       lda LBA5D,X
            lda L5A4D,Y
            .byte $1A
            rol
            rol
            php
            .byte $00,$00
            clc
            clc
            .byte $34,$34
            bit L182C
            clc
            .byte $00,$00
            php
            php
            jsr L5020
            cli
            .byte $1A
            asl
            .byte $04,$14
            bpl LB27C
LB27C       clc
            .byte $1C
            bit ICPTLZ
            php
            clc
            clc
            bpl LB2E9
            bit BUFRFL
LB287       clc
            bpl LB2BA
            .byte $14
            cli
            asl FTYPE,X
            .byte $7C
            ror
            .byte $1A
            plp
            .byte $0C
            php
            php
            .byte $04,$64
            dey
            ora (ICPTLZ),Y
            jsr L1810
            .byte $00,$5A
            bit ICBALZ
            .byte $5A,$00
            clc
            bpl LB2B6
            bpl LB2BC+1
            tay
            php
            php
            php
            bit OLDROW
            bit OLDROW
            .byte $5A
            bit OLDROW
            bit L0000
            clc
LB2B6       bit ICBALZ
            clc
            .byte $00
LB2BA       bpl LB2CB+1
LB2BC       asl SAVADR,X
            php
            php
            clc
            bit WARMST
            bpl LB2E9
            clc
            php
            jsr L0A50
            .byte $04
LB2CB       bpl LB2D0
            .byte $23,$23,$23
LB2D0       .byte $32,$32,$32
            bmi LB2D5
LB2D5       .byte $00,$00,$00
            ora (CASINI+1,X)
            .byte $03
            asl L30E0
            bmi LB2F0
            .byte $00,$00
LB2E2       .byte $00,$00,$07,$0C,$0C
            php
            .byte $80
LB2E9       cpy #$C0
            bvs LB2ED
LB2ED       .byte $04,$04,$04
LB2F0       .byte $0C,$0C,$0C,$0C
            cpy #$C0
            cpy #$C0
            rti
            rti
            rti
            rti
            .byte $07
            php
            .byte $07,$03
            ora (L0000,X)
            bpl LB334
            .byte $00
            ora (CASINI+1,X)
            .byte $04,$03
            ora (DOSVEC,X)
            .byte $07
            bvc LB35E
            bcs LB2D0
            bne LB2E2
            bvc LB334
            .byte $8B
            eor #$60
            .byte $7C
            ldy LE0D8,X
            bvs LB31D
LB31D       .byte $00,$00,$00
            php
            .byte $0C
            asl L6001
            rti
            .byte $80,$00,$00,$00,$00,$00,$00
            bpl LB336
            .byte $03
LB330       ora (L0000,X)
LB332       .byte $00,$00
LB334       .byte $00,$0F
LB336       .byte $0C,$07
            ora (NGFLAG,X)
            .byte $03,$07
            rts
            rts
            bpl LB330
            beq LB332
            bmi LB344
LB344       .byte $0C,$0C
            iny
            rts
            tya
            .byte $FC
            stx.w L00CF
            .byte $00,$00,$00,$00
            php
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LB35E       .byte $00,$00,$00,$00,$00,$00
LB364       .byte $0F,$03
            ora (NGFLAG,X)
            ora (CASINI+1,X)
            .byte $03
            ora TEMPCHR
            jsr L1030
            bpl LB382
            bmi LB364
            .byte $FA
            cpy L888C
            dey
            iny
            jmp L00AF
            .byte $00,$00,$00,$00,$00
LB382       .byte $00,$00
LB384       .byte $00,$00,$00,$00,$00,$00,$00,$00,$0F
            clc
            and #$44
            .byte $54
            ldx #$A1
            .byte $80
            asl.w NGFLAG
            .byte $00,$00,$00,$00,$00
            beq LB39E
LB39E       rti
            bpl LB401
            .byte $00
            bpl LB384
            asl L8A02
            .byte $44,$44
            plp
LB3AA       jsr L8820
            .byte $00
            sei
LB3AF       beq LB3B1
LB3B1       ora (NGFLAG,X)
LB3B3       ora (BRKKEY,X)
            jsr L3E2F
LB3B8       clc
            sty L8C18
            clc
            sty L8C18
LB3C0       .byte $00,$00
            bvs LB434
            .byte $00,$00
            bvs LB438
LB3C8       asl L00FA
            asl L00FA
            asl L00FA
            asl L00FA
LB3D0       .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF
LB3D8       asl TRAMSZ
            .byte $FA,$FA
            asl TRAMSZ
            .byte $FA,$FA
LB3E0       .byte $00,$00,$FF,$FF,$00,$00,$FF,$FF
LB3E8       .byte $00,$00,$00,$00,$FF,$00,$00,$00
LB3F0       .byte $00,$00,$00,$00
            ldy #$00
            .byte $00
            rts
LB3F8       .byte $00,$00,$00,$00,$00,$FF,$00,$00
LB400       .byte $00
LB401       .byte $00,$00,$00,$00
            ldy #$60
            .byte $00
LB408       .byte $7F,$7F,$7F,$7F,$7F,$1C,$1C,$7F
            ldy L00BA,X
            cpy #$C6
            ldy L00B4,X
            ldy L00B4,X
            ldy L00B4,X
            ldy L00B4,X
            ldy L00B4,X
            ldy L00B4,X
            ldy L00B4,X
            ldy L00B4,X
            clc
            .byte $00,$00,$5A
            bit BFENLO
            php
            .byte $3C,$3C
            bpl LB45A+1
            bit OLDROW
            .byte $00,$00
            clc
LB434       php
            .byte $0C,$04,$32
LB438       .byte $32
            lsr DSTAT,X
            clc
            clc
            .byte $32
            rol
            jmp L2044
            bmi LB453+1
            bit OLDROW
            .byte $5A
            bit ICBALZ
            clc
            .byte $34,$5A,$5A
            bit L2418
            bit OLDROW
            .byte $5A
LB453       bit POKMSK
            .byte $34,$34
            cli
            .byte $5A,$B2
LB45A       lda LBA5D,X
            lda L5A4D,Y
            .byte $1A
            rol
            rol
            php
            .byte $00,$00
            clc
            clc
            .byte $34,$34
            bit L182C
            clc
            .byte $00,$00
            php
            php
            jsr L5020
            cli
            .byte $1A
            asl
            .byte $04,$14
            bpl LB47C
LB47C       clc
            .byte $1C
            bit ICPTLZ
            php
            clc
            clc
            bpl LB4E9
            bit BUFRFL
            clc
            bpl LB4BA
            .byte $14
            cli
            asl FTYPE,X
            .byte $7C
            ror
            .byte $1A
            plp
            .byte $0C
            php
            php
            .byte $04,$64
            dey
            ora (ICPTLZ),Y
            jsr L1810
            .byte $00,$5A
            bit ICBALZ
            .byte $5A,$00
            clc
            bpl LB4B6
            bpl LB4BC+1
            tay
            php
            php
            php
            bit OLDROW
            bit OLDROW
            .byte $5A
            bit OLDROW
            bit L0000
            clc
LB4B6       bit ICBALZ
            clc
            .byte $00
LB4BA       bpl LB4CB+1
LB4BC       asl SAVADR,X
            php
            php
            clc
            bit WARMST
            bpl LB4E9
            clc
            php
            jsr L0A50
            .byte $04
LB4CB       bpl LB4D0
            .byte $23,$23,$23
LB4D0       .byte $32,$32,$32
            bmi LB4D5
LB4D5       .byte $00,$00,$00
            ora (CASINI+1,X)
            .byte $03
            asl L30E0
            bmi LB4F0
            .byte $00,$00
LB4E2       .byte $00,$00,$07,$0C,$0C
            php
            .byte $80
LB4E9       cpy #$C0
            bvs LB4ED
LB4ED       .byte $04,$04,$04
LB4F0       .byte $0C,$0C,$0C,$0C
            cpy #$C0
            cpy #$C0
            rti
            rti
            rti
            rti
            .byte $07
            php
            .byte $07,$03
            ora (L0000,X)
            bpl LB534
            .byte $00
            ora (CASINI+1,X)
            .byte $04,$03
            ora (DOSVEC,X)
            .byte $07
            bvc LB55E
            bcs LB4D0
            bne LB4E2
            bvc LB534
            .byte $8B
            eor #$60
            .byte $7C
            ldy LE0D8,X
            bvs LB51D
LB51D       .byte $00,$00,$00
            php
            .byte $0C
            asl L6001
            rti
            .byte $80,$00,$00,$00,$00,$00,$00
            bpl LB536
            .byte $03
LB530       ora (L0000,X)
LB532       .byte $00,$00
LB534       .byte $00,$0F
LB536       .byte $0C,$07
            ora (NGFLAG,X)
            .byte $03,$07
            rts
            rts
            bpl LB530
            beq LB532
            bmi LB544
LB544       .byte $0C,$0C
            iny
            rts
            tya
            .byte $FC
            stx.w L00CF
            .byte $00,$00,$00,$00
            php
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LB55E       .byte $00,$00,$00,$00,$00,$00
LB564       .byte $0F,$03
            ora (NGFLAG,X)
            ora (CASINI+1,X)
            .byte $03
            ora TEMPCHR
            jsr L1030
            bpl LB582
            bmi LB564
            .byte $FA
            cpy L888C
            dey
            iny
            jmp L00AF
            .byte $00,$00,$00,$00,$00
LB582       .byte $00,$00
LB584       .byte $00,$00,$00,$00,$00,$00,$00,$00,$0F
            clc
            and #$44
            .byte $54
            ldx #$A1
            .byte $80
            asl.w NGFLAG
            .byte $00,$00,$00,$00,$00
            beq LB59E
LB59E       rti
            bpl LB601
            .byte $00
            bpl LB584
            asl L8A02
            .byte $44,$44
            plp
            jsr L8820
            .byte $00
            sei
            beq LB5B1
LB5B1       ora (NGFLAG,X)
            ora (BRKKEY,X)
            jsr L3E2F
            clc
            sty L8C18
            clc
            sty L8C18
            .byte $00,$00
            bvs LB634
            .byte $00,$00
            bvs LB637+1
            asl L00FA
            asl L00FA
            asl L00FA
            asl L00FA
            .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF
            asl TRAMSZ
            .byte $FA,$FA
            asl TRAMSZ
            .byte $FA,$FA,$00,$00,$FF,$FF,$00,$00,$FF,$FF,$00,$00,$00,$00,$FF,$00
            .byte $00,$00,$00,$00,$00,$00
            ldy #$00
            .byte $00
            rts
            .byte $00,$00,$00,$00,$00,$FF,$00,$00,$00
LB601       .byte $00,$00,$00,$00
            ldy #$60
            .byte $00,$7F,$7F,$7F,$7F,$7F,$1C,$1C,$7F,$00
            inc LC0C0,X
            inc L8201+1,X
            inc LFE00,X
            stx TRAMSZ
            ror L8404,X
            .byte $FC,$00,$0C,$0C
            ror L4444,X
            .byte $44
            rti
            .byte $00
            inc L0686,X
            inc L8080,X
            inc LFE00,X
            stx L0086
LB634       inc L8280,X
LB637       inc L0C00,X
            .byte $0C,$0C,$0C,$04,$04,$7C,$00
            inc L8686,X
            inc L4444,X
            .byte $7C,$00
            asl TRAMSZ
            asl L00FE
            .byte $82,$82
            inc.w L0000,X
            .byte $00,$00,$00,$00,$00,$00,$00,$3C,$42
            sta L9991,Y
            .byte $42,$3C,$00,$00
            pla
            pha
            jmp L4E48
            .byte $00,$00,$00
            cmp (L0089,X)
            sta L8088+1,X
            .byte $00,$00,$00
            eor #$C9
            eor #$49
            .byte $9C,$00,$00,$00
            eor L00D5,X
            eor L9955,Y
            .byte $00,$00,$00,$00,$00,$00
            sta (L00C3,X)
            .byte $DB,$FF,$DB,$C3
            sta (L0000,X)
            .byte $00,$00,$00,$00,$00,$00,$00
            php
            .byte $1C
            jsr LDA58
            .byte $67
            asl L081C
            .byte $00,$00,$00,$00,$00,$00,$00
            asl L603C
            clc
            .byte $13
            asl L703C
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$7F
            rol L1C08,X
            .byte $1C
            php
            rol.w COUNTR+1,X
            .byte $00,$00,$00,$00,$00,$00,$00
            bvs LB702
            asl DSKFMS
            iny
            bvs LB707
            asl.w L0000
            .byte $00,$00,$00,$00,$00,$00
            bpl LB70E
            .byte $04,$1A,$5B
            inc ROWAC
            sec
            bpl LB6DE
LB6DE       .byte $00,$00,$00,$00,$00
            bpl LB6E9
            .byte $54
            php
            .byte $22,$0C
LB6E9       asl
            jsr WARMST
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
LB6FE       .byte $00,$00,$00,$80
LB702       cpy #$E0
            beq LB6FE
            .byte $FC
LB707       inc.w L00FF,X
            .byte $00,$00,$00,$00
LB70E       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            rti
            .byte $44,$44,$44,$44,$44,$44,$44,$44,$44,$04,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00
            jsr L2222
            .byte $22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22,$22
            .byte $22
            jsr L0000
            .byte $00
            jsr L1211
            and (BRKKEY,X)
            .byte $12
            and (BRKKEY,X)
            .byte $12
            and (BRKKEY,X)
            .byte $12
            and (BRKKEY,X)
            .byte $12
            and (BRKKEY,X)
            .byte $12
            and (BRKKEY,X)
            .byte $12
            and (BRKKEY,X)
            .byte $12
            and (POKMSK,X)
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            bpl LB77D+1
LB77D       ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (NGFLAG),Y
            ora (POKMSK),Y
            bpl LB7A7
            ora (NGFLAG,X)
            ora (POKMSK),Y
            bpl LB79D+1
LB79D       ora (BRKKEY,X)
            bpl LB7B1
            ora (NGFLAG,X)
            ora (POKMSK),Y
            bpl LB7A7+1
LB7A7       ora (BRKKEY,X)
            bpl LB7BB
            ora (POKMSK,X)
            bpl LB7BF
            bpl LB7C1
LB7B1       bpl LB7C3
            bpl LB7C5
            bpl LB7C7
            bpl LB7C8+1
            bpl LB7CA+1
LB7BB       bpl LB7CC+1
            bpl LB7CE+1
LB7BF       bpl LB7D0+1
LB7C1       bpl LB7D2+1
LB7C3       bpl LB7D4+1
LB7C5       bpl LB7D6+1
LB7C7       .byte $00
LB7C8       bpl LB7CA
LB7CA       bpl LB7CC
LB7CC       bpl LB7CE
LB7CE       bpl LB7D0
LB7D0       bpl LB7D2
LB7D2       bpl LB7D4
LB7D4       bpl LB7D6
LB7D6       bpl LB7D8
LB7D8       bpl LB7DA
LB7DA       bpl LB7DC
LB7DC       bpl LB7DE
LB7DE       .byte $00,$00,$80,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            cpy #$CC
            cpy #$CC
            cpy LCCCC
            cpy LCCCC
            cpy L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            inc LEEEE
            cpx #$EE
            inc LEEEE
            inc LEEEE
            inc LEEEE
            inc LEEEE
            inc LEEEE
            inc.w L0000
            .byte $00,$00,$00,$00
            cpx #$FF
            inc LFFEF,X
            inc LFFEF,X
            inc LFFEF,X
            inc LFFEF,X
            inc LFFEF,X
            inc LFFEF,X
            inc LFFEF,X
            inc LF0EF,X
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LB86B       .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            beq LB86B
            .byte $FF
LB87C       beq LB87C+1
LB87E       beq LB87E+1
LB880       beq LB880+1
LB882       beq LB882+1
LB884       beq LB884+1
LB886       beq LB886+1
LB888       beq LB888+1
LB88A       beq LB88A+1
LB88C       beq LB88C+1
LB88E       beq LB88E+1
LB890       beq LB890+1
            beq LB884
LB894       beq LB8A5
            .byte $0F,$FF
LB898       beq LB88A
            .byte $0F,$0F
LB89C       .byte $FF
LB89D       beq LB88E+1
            .byte $0F
LB8A0       .byte $0F,$FF
LB8A2       beq LB894
LB8A4       .byte $0F
LB8A5       .byte $0F
LB8A6       .byte $FF
LB8A7       beq LB898+1
            .byte $0F
LB8AA       beq LB89C
LB8AC       beq LB89D+1
LB8AE       beq LB8A0
LB8B0       beq LB8A2
LB8B2       beq LB8A4
LB8B4       beq LB8A6
LB8B6       beq LB8A7+1
            beq LB8AA
LB8BA       beq LB8AC
            beq LB8AE
            beq LB8B0
            beq LB8B2
            beq LB8B4
            beq LB8C6
LB8C6       beq LB8C8
LB8C8       beq LB8CA
LB8CA       beq LB8CC
LB8CC       beq LB8CE
LB8CE       beq LB8D0
LB8D0       beq LB8D2
LB8D2       beq LB8D4
LB8D4       beq LB8D6
LB8D6       beq LB8D8
LB8D8       beq LB8DA
LB8DA       beq LB8DC
LB8DC       .byte $00,$00,$02,$02,$64
            cmp L00D5,X
            dex
            tax
            bit L1A16
            ora L3535,X
            and STATUS,X
            .byte $67
            ror LC060
            cpy #$80
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$92,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$44,$54,$7C,$7C,$7C,$7C
            sec
            bpl LB980
LB980       .byte $92,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54,$54
            .byte $54,$54,$54,$54,$54,$54,$54,$44,$04,$00,$00,$00,$00,$00,$00,$00
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00
            inc.w L0000,X
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00
LBA5D       .byte $FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00
            beq LBA73
LBA73       .byte $00,$00
            beq LBA77
LBA77       .byte $00,$00
            beq LBA7B
LBA7B       .byte $00,$00
            beq LBA7F
LBA7F       .byte $00,$00
            beq LBA83
LBA83       .byte $00,$00
            beq LBA87
LBA87       .byte $00,$00
            beq LBA8B
LBA8B       .byte $00,$00
            beq LBA8F
LBA8F       .byte $00,$00
            beq LBA93
LBA93       .byte $00,$00
            beq LBA97
LBA97       .byte $00,$00
            beq LBA9B
LBA9B       .byte $00,$00
            beq LBA9F
LBA9F       .byte $00,$00
            beq LBAA3
LBAA3       .byte $00,$00
            beq LBAA7
LBAA7       .byte $00,$00
            bpl LBACA+1
            .byte $12,$44
            ora L008A,X
            and (L008C,X)
            asl
            jsr L0448
            php
            .byte $00,$00,$00
            bpl LBAC3
            jsr L5008
            .byte $04
            pha
            .byte $12
            plp
            .byte $04
LBAC3       php
            jsr L1008
            .byte $00,$00,$00
LBACA       bpl LBAEB+1
            asl
            .byte $04
            php
            .byte $12
            ora FMSZPG+5
            .byte $04
            tay
            rti
            php
            jsr L0448
            bpl LBA7B
            asl
LBADC       lda L00D4,X
            pha
            asl
            asl
            asl
            and #$78
            sta L00DD,Y
            dey
            dey
            pla
            lsr
LBAEB       and #$78
            sta L00DD,Y
            dex
            dey
            dey
            bpl LBADC
            rts
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00
            sed
            .byte $00,$00,$00,$FC,$00,$00,$00,$FC,$00,$00,$00,$FC,$00,$00,$00,$FC
            .byte $00,$00,$00,$FC,$00,$00,$00,$FC,$00,$00,$00,$FC,$00,$00,$00,$FC
            .byte $00,$00,$00,$FC,$00,$00,$00,$FC,$00,$00,$00,$FC,$00,$00,$00,$FC
            .byte $00,$00,$00,$FC,$00,$00,$00,$FC,$00,$00,$00,$00,$00,$3C
            ror L00D3
            lda #$FF
            .byte $87,$CB
            ror.w FTYPE
            .byte $00,$00,$00
            ldx #$04
LBB82       sta CASINI
            dex
            bpl LBB82
            sta CASINI
            ldy #$01
            nop
            nop
            nop
            nop
            lda #$D8
            sta TRAMSZ
            sta CMCMD
            lda #$00
            sta DOSINI
            sta DOSVEC+1
            lda #$03
            sta RAMLO+1
            sta RAMLO
            lda #$F0
            sta BRKKEY
            sta POKMSK
            sta ICDNOZ
            sta CASINI
            sta ICAX1Z
            sty ICPTLZ
            sty ICBAHZ
            lda #$00
            sta DSKUTL+1
            sta ABUFPT
            sta DSKUTL+1
LBBB9       ldy #$07
LBBBB       sty L00EB
            lda (L00DD),Y
            sta ABUFPT
            sta CASINI
            lda (L00DF),Y
            sta DSKUTL+1
            lda (L00E1),Y
            sta ABUFPT
            lda (L00E3),Y
            sta L00EC
            lda (L00E5),Y
            tax
            lda (L00E7),Y
            tay
            lda L00EC
            sta DSKUTL+1
            stx ABUFPT
            sty DSKUTL+1
            sty ABUFPT
            ldy L00EB
            dey
            bpl LBBBB
            iny
            sty ABUFPT
            sty DSKUTL+1
            sty ABUFPT
            sty DSKUTL+1
            ldx #$04
LBBEF       sta CASINI
            dex
            bpl LBBEF
            rts
            .byte $57
            lda #$B3
            .byte $02
            asl L0099
            lda L9BA2+2,X
            adc L8DF0+1,X
            sbc L4C1F
            .byte $5B
            and L008D,X
            cpx #$1F
            sta L1FE9
            sta L1FF2
            jmp L1000
            sta L1FE4
            sta L1FED
            sta L1FF6
            jmp L3000
            sta L1FE0
            sta L1FE9
            sta L1FF2
            jmp L13A5
            sta L1FF3
            jsr L5800
            sta L1FF2
            jmp L1882
            sta L1FE4
            jsr L32E5
            sta L1FE0
            jmp L10AC
            sta L1FF3
            jsr L59C5
            sta L1FF2
            jmp L1204
            sta L1FF3
            jsr L5B6B
            sta L1FF2
            jmp L3C9E
            sta L1FF3
            jsr L5ADA
            sta L1FF2
            jmp L1204
            ldx #$00
            ldy L00CC
            beq LBC7A
            inx
            ldy L00CD
            beq LBC7A
            cmp L00CD
            bcc LBC7A
            dex
            cmp L00CC
            bcs LBC87
LBC7A       ldy #$1F
            sty DSKFMS+1,X
            sta L00CC,X
            rol
            bcc LBC85
            ldy #$01
LBC85       sty L00CE,X
LBC87       rts
            ldy L00C8,X
            lda LOMEM
            and #$02
            bne LBCAD
            iny
            cpy #$10
            bcc LBCAD
            lda L00D0,X
            cmp #$C4
            beq LBCAF
            jmp L3C4E
            ldy #$00
            sty L00A8
            ldx L00EB
            sty L00D0,X
            sty L009F,X
            sty L00C8,X
            jmp L3D2D
LBCAD       sty L00C8,X
LBCAF       lda L00A4
            asl
            asl
            asl
            asl
            clc
            adc L00C8,X
            tay
            lda L1B77,Y
            sta L00F2
LBCBE       lsr
            sta L00E9
            lda #$4B
            sec
            sbc L00E9
            sta L00A8
            ldx L00A3
            inx
            lda L19BC,X
            lsr
            lsr
            lsr
            lsr
            jsr L14AA
            clc
            adc #$42
            sta L00E9
            lda #$00
            adc L00A5
            sta L00AA
            ldx L00EB
            ldy L00C8,X
            lda L1BE7,Y
            pha
            lda L1BC7,Y
            sta L00EA
            sta L00A5
            lda L00D0,X
            and #$03
            tay
            beq LBD0A
            lsr L00EA
            cpy #$02
            beq LBD0A
            lda L00EA
            lsr L00EA
            cpy #$03
            beq LBD0A
            clc
            clc
            adc L00EA
            sta L00EA
LBD0A       lda L00E9
            sec
            sbc L00EA
            bcs LBD13
            dec L00AA
LBD13       sta L00E9
            pla
            sta L00EA
            ldy L00EC
            lda L00D0,X
            and #$10
            beq LBD22
            asl L00EA
LBD22       lda L00AA
            bpl LBD35
            lda L00E9
            clc
            adc L00EA
            bcs LBD2F
            lda #$00
LBD2F       sta L00EA
            lda #$00
            beq LBD4E
LBD35       bne LBD3D
            lda L00E9
            cmp #$78
            bcc LBD4E
LBD3D       lda #$00
            sta L00EA
            sta L008C,Y
            sta L008E,Y
            sta L00A8
            ldx L00EC
            jmp L3EB8
LBD4E       pha
            lda L00D0,X
            cmp #$C4
            bne LBD59
            pla
            lda L00AE,X
            pha
LBD59       pla
            sta L008C,Y
            sta L00AE,X
            lda L00EA
            sta L008E,Y
            lda L00EC
            lsr
            bcc LBD6F
            ldx L00EC
            dec L008C,X
            ldx L00EB
LBD6F       ldy L00C8,X
            lda L1BD7,Y
            sta L00EA
            lda L00D0,X
            and #$04
            bne LBD8B
            lsr L00EA
            lda L00D0,X
            and #$08
            beq LBD8B
            lda L00A8
            clc
            adc L00EA
            sta L00A8
LBD8B       lda L00D0,X
            asl
            bmi LBD93
            jmp L3E18
LBD93       cmp #$88
            bne LBDBF
            lda #$2A
            sec
            sbc L00AE,X
            ldy L00A4
            beq LBDAE
            dey
            beq LBDAD
            dey
            beq LBDAB
            dey
            beq LBDB4
            bne LBDB5
LBDAB       lda #$00
LBDAD       lsr
LBDAE       lsr
            clc
            adc #$4F
            bne LBDC4
LBDB4       lsr
LBDB5       lsr
            sta L00A8
            lda #$4F
            sec
            sbc L00A8
            bne LBDC4
LBDBF       lda L00EA
            lsr
            adc L00A8
LBDC4       sec
            sbc #$04
            sta L00A8
            sta L009F,X
            lda L00C8,X
            and #$FC
            tay
            lda L00D0,X
            and #$04
            beq LBDE4
            lda LOMEM
            and #$0E
            bne LBDDE
            dec L00C4,X
LBDDE       tya
            clc
            adc #$10
            clc
            tay
LBDE4       lda L3EC6,Y
            and #$07
            sta L00E9
            lda L00A8
            sec
            sbc L00E9
            sta L00A8
            lda L3EC3,Y
            ldx L00ED
            sta L0090,X
            lda L3EC4,Y
            sta L0091,X
            lda L3EC5,Y
            ldx L00EC
            sta L008E,X
            lda #$00
            bcc LBE0D
            lda LOMEM
            asl
            asl
LBE0D       eor L3EC6,Y
            and #$08
            eor L3EC6,Y
            jmp L3EB8
            lda L00A8
            cmp #$C8
            bcc LBE25
            clc
            adc L00EA
            lda #$00
            sta L00A8
LBE25       lda L00EA
            cmp #$21
            bcc LBE5F
            cmp #$41
            bcs LBE47
            tax
            lda LOMEM
            and #$02
            bne LBE3A
            lda #$20
            bne LBE5F
LBE3A       txa
            sec
            sbc #$20
            clc
            adc L00A8
            sta L00A8
            lda #$20
            bne LBE5F
LBE47       sec
            sbc #$40
            lsr
            clc
            adc L00A8
            sta L00A8
            lda LOMEM
            and #$02
            bne LBE5D
            lda #$1F
            clc
            adc L00A8
            sta L00A8
LBE5D       lda #$20
LBE5F       pha
            lda L00A8
            cmp #$A0
            bcc LBE70
            lda #$00
            sta L00A8
            sta L008E,Y
            sta L008C,Y
LBE70       pla
            pha
            clc
            adc L00A8
            sec
            sbc #$9F
            bcc LBE82
            sta L00EA
            pla
            sbc L00EA
            jmp L3E83
LBE82       pla
            ldy #$00
            cmp #$09
            bcs LBE8F
            sec
            sbc #$04
            jmp L3EA1
LBE8F       iny
            cmp #$11
            bcs LBE9B
            lsr
            sec
            sbc #$04
            jmp L3EA1
LBE9B       iny
            lsr
            lsr
            sec
            sbc #$04
            asl
            tax
            lda L1B6D,X
            pha
            lda L1B6E,X
            pha
            ldx L00ED
            pla
            sta L0091,X
            pla
            sta L0090,X
            ldx L00EC
            lda L1B6A,Y
            sta L00F1,X
            lda L00A8
LBEBC       inc L00ED
            inc L00ED
            jmp L1377
            cpx #$36
            bpl LBED7
            tay
            .byte $3A
            bpl LBEDB
            clv
            .byte $3A
            ora (BUFADR),Y
            cmp #$3A
            ora (BUFADR),Y
            .byte $63,$34
            bpl LBEE7
LBED7       .byte $73,$34
            bpl LBEEB
LBEDB       .byte $83,$34
            bpl LBEF4
            .byte $93,$34
            bpl LBEF8
            .byte $2F,$37,$3F,$47
LBEE7       .byte $2F,$2F,$2F,$2F
LBEEB       .byte $2F,$37,$3F,$47,$2F,$2F,$2F,$2F,$2F
LBEF4       .byte $37,$3F,$47,$2F
LBEF8       .byte $2F,$2F,$2F,$2F,$37,$3F,$47,$2F,$2F,$2F,$2F,$4F,$4F,$4F,$BF,$5F
            .byte $6F,$5F,$BF,$6F,$5F,$6F,$BF,$7F,$6F,$8F,$BF,$6F,$7F,$6F,$BF,$7F
            .byte $AF,$9F,$BF,$7F,$8F,$9F,$BF,$AF,$9F,$8F,$BF
            lda #$00
            ldx #$05
LBF27       sta L009D,X
            sta L00AC,X
            sta L00BB,X
            sta L00C2,X
            dex
            bpl LBF27
            rts
            dec L00F4
            lda #$04
            sta BOOT
            lda #$0F
            sta L00F3
            lda #$5D
            jmp L3C66
            lda L0087
            ror
            ror
            ror
            eor L0088
            asl
            asl
            rol L0087
            rol L0088
            lda L0087
            rts
            lda L14EB,X
            sta L00A3,X
            lda #$2A
            sta L00B2,X
            rts
            .byte $03,$03,$02,$02,$02
            ora (NGFLAG,X)
            ora (L0085,X)
            nop
            clc
            adc #$01
            pha
            lsr
            lsr
            lsr
            lsr
            sta L00EA
            tay
            pla
            and #$0F
            clc
            adc L00EA
            cmp #$0F
            bcc LBF7E
            sbc #$0F
            iny
LBF7E       sec
            sbc #$08
            eor #$FF
            asl
            asl
            asl
            asl
            sty L00EA
            ora L00EA
            rts
            php
            .byte $0C
            bpl LBFA4
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
            .byte $64
LBFA4       pla
            jmp (L7470)
            sei
            sei
            sei
            sei
            sei
            sei
            sei
            sei
            sei
            sei
            sei
            sei
            sec
            sec
            sec
            .byte $34
            bmi LBFE2
            plp
            plp
            .byte $07,$03
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (L0000,X)
            pha
            bvc LC01F
            rts
            .byte $00
            ora L0D13
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00
            plp
            .byte $43
LBFE2       and #$38
            .byte $34
            jmp L6375
            adc (COLAC+1,X)
            ror SAVADR+1
            jmp (L4C6D)
            .byte $74,$64
            rol L6E61
            .byte $64
            eor (ROWCRS,X)
            eor (LMARGN,X)
            .byte $49
;
            org $02E0
;
            .word L8000
;
         
