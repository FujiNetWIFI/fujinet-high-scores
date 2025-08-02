; 
            icl 'Kangaroo.inc'
	    icl 'hiscore.asm'
;
; Start of code
;
            org $3800
;
L3800       jsr L39D5
L3803       jsr L3A33
            jsr L39AB
            jsr L3CBF
L380C       jsr L3A7F
            lda #$01
            sta L0092
            jmp L3845
L3816       jsr L3A33
            jmp L394C
L381C       jsr L3A7F
            jsr L4869
            lda #$00
            sta L07A0
            jsr L3FF3
            lda #$01
            sta L07A0
            jsr L3FF3
            lda #$02
            sta L07A0
            jsr L3FF3
L383A       lda L0783
            bne L383A
            jsr L4835
            jsr L3C21
L3845       lda L0092
            bne L384F
            jsr L38CF
            jmp L3877
L384F       lda #$08
            sta CONSOL
            lda TRIG0
            beq L3867
            lda TRIG1
            beq L3867
            lda CONSOL
            sta L00B4
            and #$01
            bne L386B
L3867       sta L00B4
            beq L381C
L386B       lda L00B4
            and #$06
            beq L3816
            sta L00B4
            lda L00B6
            bne L3803
L3877       lda L00B6
            bne L38C9
            lda L00E0
            beq L3882
            jsr L6137
L3882       lda L00E1
            beq L3889
            jsr L5FDA
L3889       lda L00B3
            cmp L00DA
            bmi L3895
            jsr L481E
            jmp L3845
L3895       cmp L00D9
            bmi L389F
            jsr L5F73
            jmp L3845
L389F       cmp L00D8
            bmi L38A9
            jsr L4EC4
            jmp L3845
L38A9       cmp L00DB
            bmi L38B3
            jsr L46FD
            jmp L3845
L38B3       cmp L00DC
            bmi L38BD
            jsr L4464
            jmp L3845
L38BD       lda L00B2
            cmp L00DD
            bmi L38C6
            jsr L6643
L38C6       jmp L3845
L38C9       jsr L38DB
            jmp L38C9
L38CF       lda #$04
            bit SKSTAT
            bne L3909
L38D6       bit SKSTAT
            beq L38D6
L38DB       ldy L00B2
            sty L00B0
            ldy L00B3
            sty L00B1
            jsr L3FD8
            lda #$08
            sta CONSOL
L38EB       lda PORTA
            eor #$FF
            beq L390A
L38F2       ldy L00B1
            cpy L00B3
            beq L390A
            iny
            cpy L00B3
            beq L390A
            lda L00B1
            sta L00B3
            lda L00B0
            sta L00B2
            lda #$00
            sta ATRACT
L3909       rts
L390A       lda ATRACT
            bpl L3913
L390E       pla
            pla
            jmp L380C
L3913       lda TRIG0
            beq L391D
            lda TRIG1
            bne L3928
L391D       ldy L00B1
            cpy L00B3
            beq L390E
            iny
            cpy L00B3
            beq L390E
L3928       lda TRIG0
            beq L38F2
            lda TRIG1
            beq L38F2
            lda #$04
            bit SKSTAT
            bne L3940
L3939       bit SKSTAT
            beq L3939
            bne L38F2
L3940       lda CONSOL
            cmp #$07
            beq L38EB
            pla
            pla
            jmp L3816
L394C       jsr L39AB
            jmp L3970
L3952       jsr L39AB
L3955       lda #$08
            sta CONSOL
            lda #$07
            cmp CONSOL
            bne L3955
            lda #$00
            sta ATRACT
            sta RTCLOK
            sta RTCLOK+1
L3969       lda ATRACT
            beq L3970
            jmp L380C
L3970       lda #$08
            sta CONSOL
            lda TRIG0
            beq L3988
            lda TRIG1
            beq L3988
            lda CONSOL
            sta L00B4
            and #$01
            bne L398D
L3988       sta L00B4
            jmp L381C
L398D       lda L00B4
            and #$04
            bne L399C
            lda L0090
            eor #$01
            sta L0090
            jmp L3952
L399C       lda L00B4
            and #$02
            bne L3969
            lda L0091
            eor #$01
            sta L0091
            jmp L3952
L39AB       lda L0091
            clc
            adc #$11
            ldx #$5D
            sta L0A00,X
            ldy #$07
            lda L0090
            bne L39C8
            ldx #$35
L39BD       lda L3F9D,Y
            sta L0A00,X
            dex
            dey
            bpl L39BD
            rts
L39C8       ldx #$35
L39CA       lda L3FA4+1,Y
            sta L0A00,X
            dex
            dey
            bpl L39CA
            rts
L39D5       lda #$38
            sta CASINI+1
            lda #$00
            sta CASINI
            lda BOOT
            ora #$02
            sta BOOT
            lda #$00
            sta COLDST
            sta AUDCTL
            ldx #$80
L39ED       sta L0000,X
            inx
            bne L39ED
            lda #$03
            sta L00C1
            lda #$00
            sta L00C0
            ldx #$2D
            jsr L3FAC+1
            lda #$00
            sta NMIEN
            lda #$11
            sta PRIOR
            lda #$B2
            sta VVBLKI
            lda #$3D
            sta VVBLKI+1
            lda #$EE
            sta VVBLKD
            lda #$3D
            sta VVBLKD+1
            ldx #$80
L3A1F       lda L680F,X
            sta L08FF,X
            dex
            bne L3A1F
            lda #$03
            sta SKCTL
            jsr L3DB1
            jmp L5A33
L3A33       jsr L3C89
            lda #$A7
            sta VDSLST
            lda #$63
            sta VDSLST+1
            lda #$E0
            sta CHBASE
            jsr L3FD8
            sta ATRACT
            jsr L646F
            lda L0C00
            sta COLOR2
            sta COLOR3
            sta COLOR4
            lda L0C03
            sta COLOR0
            sta COLOR1
            ldx #$A0
L3A64       lda L3F10,X
            sta L09FF,X
            dex
            bne L3A64
            lda #$20
            sta SDLSTL
            lda #$09
            sta SDLSTH
            lda #$C0
            sta NMIEN
            jmp L3C7E
L3A7F       jsr L3C89
            lda #$00
            ldx #$A0
L3A86       sta L0000,X
            inx
            bne L3A86
            sta SIZEP0
            sta SIZEP1
            sta SIZEM
            lda #$10
            sta PMBASE
            lda #$71
            sta L00C1
            lda #$C1
            sta L00C0
            lda #$28
            sta L00C3
            lda #$00
            sta L00C2
            lda #$2C
            sta L00C5
            lda #$00
            sta L00C4
            ldx #$04
            ldy #$00
L3AB5       lda (L00C0),Y
            sta (L00C2),Y
            sta (L00C4),Y
            iny
            bne L3AB5
            inc L00C1
            inc L00C3
            inc L00C5
            dex
            bne L3AB5
L3AC7       lda L75C1,X
            sta L2EC0,X
            inx
            bne L3AC7
            ldx #$20
L3AD2       lda L76C0,X
            sta L2FBF,X
            dex
            bne L3AD2
            lda #$28
            sta CHBASE
            stx L0092
            stx ATRACT
            jsr L646F
            lda L0C00
            sta COLOR4
            lda L0C01
            sta COLOR0
            lda L0C02
            sta COLOR1
            lda L0C03
            sta COLOR2
            sta PCOLR1
            lda L0C04
            sta COLOR3
            sta PCOLR0
            lda #$00
            sta SDLSTL
            lda #$09
            sta SDLSTH
            lda #$17
            sta VDSLST
            lda #$63
            sta VDSLST+1
            lda #$99
            sta L00A5
            sta L00AB
            jsr L6678
            jsr L3B37
            ldx #$80
L3B2D       lda L087F,X
            sta L07FF,X
            dex
            bne L3B2D
            rts
L3B37       jsr L3C89
            jsr L3B67
L3B3D       lda #$00
            ldx #$10
L3B41       sta L087F,X
            dex
            bne L3B41
            jsr L4614
            jsr L4596
            jmp L3C7E
L3B50       jsr L3C89
            jsr L3E8C
            jsr L3B67
            lda L08F0
            beq L3B61
            jsr L4634
L3B61       jsr L45CF
            jmp L3C7E
L3B67       jsr L4762
            ldx L00BA
            lda L6D7F,X
            sta L00C3
            lda L6D83,X
            sta L00C2
            lda #$20
            sta L00C1
            lda #$00
            sta L00C0
            lda #$04
            sta L00C4
            jsr L3D4A
            ldx L00BA
            cpx #$03
            bne L3BA2
            lda #$70
            sta L00C3
            lda #$C2
            sta L00C2
            lda #$20
            sta L00C1
            lda #$00
            sta L00C0
            lda #$04
            sta L00C4
            jsr L3D96
L3BA2       ldx L00BA
            lda L687D,X
            sta L00C3
            lda L6881,X
            sta L00C2
            lda #$24
            sta L00C1
            lda #$00
            sta L00C0
            lda #$04
            sta L00C4
            jsr L3CEC
            jsr L5DF3
            lda #$00
            ldx L00BA
L3BC4       clc
            adc #$17
            dex
            bpl L3BC4
            tax
            ldy #$17
L3BCD       lda L7773+2,X
            lsr
            lsr
            lsr
            lsr
            sta L0D00,Y
            lda L7773+2,X
            and #$0F
            sta L0D20,Y
            dex
            dey
            bpl L3BCD
            jsr L66C0
            jsr L67D2
            jmp L3BEC
L3BEC       jsr L4F97
            jsr L5FCB
            jsr L6129
            jsr L3FD8
            jsr L4869
            jsr L4835
L3BFE       jsr L4762
            jsr L4738
            jsr L5BAC
            jsr L665B
            lda #$00
            sta L00EB
            sta L19A1
            lda L00B9
            asl
            clc
            adc L00B9
            asl
            asl
            sta L00D6
            jsr L3E63
            jmp L3C21
L3C21       jsr L482D
            jsr L5F8C
L3C27       jsr L4F22
            jsr L470C
            jsr L4493
L3C30       jmp L6653
L3C33       jsr L3FD8
L3C36       jsr L3E15
            lda #$11
            sta L07A0
            jsr L3FF3
            lda #$12
L3C43       sta L07A0
            jsr L3FF3
            lda #$13
            sta L07A0
            jsr L3FF3
            jsr L3CB5
            jsr L6673
            jsr L67B8
            jsr L3E49
L3C5D       lda L0783
            bne L3C5D
L3C62       inc L00BA
            lda L00BA
            cmp #$04
            bmi L3C78
            lda L0092
            bne L3C7B
            sta L00BA
            lda L00B9
            cmp #$03
            bpl L3C78
            inc L00B9
L3C78       jmp L3B37
L3C7B       inc L00B6
            rts
L3C7E       lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            rts
L3C89       lda #$00
            sta SDMCTL
            sta DMACLT
            sta GRACTL
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta HPOSM0
            sta HPOSM1
            sta HPOSM2
            sta HPOSM3
            ldx #$80
L3CAE       sta L0FFF,X
            dex
            bne L3CAE
            rts
L3CB5       lda RTCLOK+1
            clc
            adc #$40
L3CBA       cmp RTCLOK+1
            bne L3CBA
            rts
L3CBF       lda #$08
            sta CONSOL
            lda RTCLOK+1
            eor #$80
L3CC8       pha
            lda TRIG0
            beq L3CD3
            lda TRIG1
            bne L3CD9
L3CD3       pla
            pla
            pla
            jmp L381C
L3CD9       lda CONSOL
            cmp #$07
            bne L3CE6
            pla
            cmp RTCLOK+1
            bne L3CC8
            rts
L3CE6       pla
            pla
            pla
            jmp L3816
L3CEC       lda #$00
            sta L00C5
            sta L00C6
            lda #$05
            sta L00C7
L3CF6       ldx L00C7
            bpl L3D1A
            jsr L3D3E
            cmp #$A4
            beq L3D09
            jsr L3D2E
            beq L3D2D
            jmp L3CF6
L3D09       jsr L3D3E
            tax
            lda #$24
L3D0F       jsr L3D2E
            beq L3D2D
            dex
            bne L3D0F
            jmp L3CF6
L3D1A       lda L3EB6,X
L3D1D       jsr L3D2E
            ldx L00C7
            cpx #$0A
            bmi L3D1A
            lda #$E2
            sta L00C7
            jmp L3CF6
L3D2D       rts
L3D2E       inc L00C7
            ldy L00C6
            sta (L00C0),Y
            iny
            sty L00C6
            bne L3D3D
            inc L00C1
            dec L00C4
L3D3D       rts
L3D3E       ldy L00C5
            lda (L00C2),Y
            iny
            sty L00C5
            bne L3D49
            inc L00C3
L3D49       rts
L3D4A       lda #$00
L3D4C       sta L00C8
            lda #$00
            sta L00C5
            sta L00C6
L3D54       jsr L3D3E
            cmp #$00
            beq L3D63
            jsr L3D75
            beq L3D74
            jmp L3D54
L3D63       jsr L3D3E
            tax
            lda #$00
L3D69       jsr L3D75
            beq L3D74
            dex
            bne L3D69
            jmp L3D54
L3D74       rts
L3D75       ldy L00C6
            sta L00C7
            lda L00C8
            bne L3D9B
L3D7D       lda L00C7
            lsr
            lsr
            lsr
            lsr
            sta (L00C0),Y
            iny
            lda L00C7
            and #$0F
            sta (L00C0),Y
L3D8C       iny
            sty L00C6
            bne L3D95
            inc L00C1
            dec L00C4
L3D95       rts
L3D96       lda #$01
            jmp L3D4C
L3D9B       lda L00C7
            and #$F0
            eor (L00C0),Y
            sta (L00C0),Y
            iny
            lda L00C7
            asl
            asl
            asl
            asl
            eor (L00C0),Y
            sta (L00C0),Y
            jmp L3D8C
L3DB1       rts
            inc RTCLOK+1
            bne L3DBA
            inc ATRACT
            inc RTCLOK
L3DBA       lda CRITIC
            bne L3DEB
            lda SDLSTH
            sta DLISTH
            lda SDLSTL
            sta DLISTL
            lda SDMCTL
            sta DMACLT
            ldy ATRACT
            bpl L3DD8
            ldy #$80
            sty ATRACT
L3DD8       ldx #$08
L3DDA       lda PCOLR0,X
            cpy #$80
            bcc L3DE5
            eor RTCLOK
            and #$F6
L3DE5       sta COLPM0,X
            dex
            bpl L3DDA
L3DEB       jmp (VVBLKD)
            lda L00B5
            beq L3DF4
            dec L00B5
L3DF4       lda L00E4
            cmp #$05
            bne L3E0D
            lda #$00
            sta L00E4
            lda PAL
            cmp #$0F
            beq L3E0D
            inc L00B3
            bne L3E0D
            inc ATRACT
            inc L00B2
L3E0D       inc L00E4
            pla
            tay
            pla
            tax
            pla
            rti
L3E15       jsr L47D4
            jsr L4D10+1
            lda #$00
            sta L1173
            sta L1168
            lda #$10
            sta L1167
            lda L1172
            sta L1164
            lda L1172
            asl
            asl
            asl
            clc
            adc #$10
            sta L1162
            lda L1171
            sec
L3E3E       sbc #$0B
            sta L1161
            jsr L4801
            jmp L4D53
L3E49       lda L1162
            clc
            adc L4EB6
            tax
            dex
            dex
            ldy #$10
L3E55       lda L3EC0,Y
            sta L1400,X
            sta L1C00,X
            dex
            dey
            bpl L3E55
            rts
L3E63       lda L00D6
            lsr
            lsr
            ldx L0090
            beq L3E6C
            lsr
L3E6C       tax
            lda L3ED0+1,X
            sta L00E2
            lda L3EE1,X
            sec
            sbc L0090
            sta L00D0
            lda L3EF1,X
            sta L00D1
            lda L3F01,X
            ldy L0090
            beq L3E89
            clc
            adc #$10
L3E89       sta L00D5
            rts
L3E8C       ldx #$7F
L3E8E       lda L0880,X
            ldy L0800,X
            sta L0800,X
            tya
            sta L0880,X
            dex
            bpl L3E8E
            ldx #$03
L3EA0       lda L00B8,X
            ldy L00BC,X
            sty L00B8,X
            sta L00BC,X
            dex
            bpl L3EA0
            lda L00A0
            eor #$01
            sta L00A0
            lda L00B8
            bmi L3E8C
            rts
L3EB6       .byte $14,$14,$14,$14
            bit ICBALZ
            .byte $14,$14,$14,$14
L3EC0       ora (DSKUTL+1),Y
            ora BRKKEY,X
            ora (L0000),Y
            asl L1111
            ora (APPMHI),Y
            .byte $00
            ora (DSKUTL+1),Y
            ora BRKKEY,X
L3ED0       ora (L0000),Y
            .byte $00,$00,$00
            ora (NGFLAG,X)
            .byte $02,$02,$03,$04
            ora TRAMSZ
            .byte $07
            php
            php
            php
L3EE1       .byte $04,$04
            ora RAMLO+1
            ora RAMLO+1
            asl TRAMSZ
            asl TRAMSZ
            .byte $07,$07,$07,$07,$07,$07
L3EF1       ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $02,$02,$02,$02,$03,$03,$03,$03,$04,$04,$04,$04
L3F01       clc
            .byte $17
            asl BUFADR,X
            .byte $14,$13,$12
            ora (POKMSK),Y
            .byte $0F
            asl L0C0D
            .byte $0C,$0C
L3F10       .byte $0C,$00,$00,$00,$00,$00,$00,$2B
            and (ICAX5Z,X)
            .byte $27
            and (BUFRLO,X)
            .byte $2F,$2F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            bit ICBLHZ
            rol ICPTLZ
            and #$23
            and ICAX3Z,X
            .byte $34
            and DSKUTL,Y
            .byte $00,$00,$00,$00,$00,$00,$00,$00
L3F3F       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00
            bmi L3F81
            and (RECVDN,X)
            and BUFRLO
            .byte $33,$1A,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$23,$2F
L3F81       bmi L3FBC
            .byte $32
            and #$27
            plp
            .byte $34,$00
            and (BFENLO,X)
            and (BUFRLO,X)
            and #$00
            ora (DSKFMS+1),Y
            clc
            .byte $12,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L3F9D       and (ICBALZ,X)
            rol ICDNOZ,X
            rol L2523
L3FA4       bit L0000
            .byte $00
            rol L362F
            and #$23
L3FAC       and L00A0
            .byte $00
L3FAF       sta (L00C0),Y
            dey
            bne L3FAF
            inc L00C1
            dex
            bne L3FAF
            rts
            ldy #$00
L3FBC       lda (L00C2),Y
            sta (L00C0),Y
            dey
            bne L3FBC
            inc L00C1
            inc L00C3
            dex
            bne L3FBC
            rts
L3FCB       sec
            sbc #$30
            lsr
            lsr
            rts
L3FD1       asl
            asl
            asl
            clc
            adc #$20
            rts
L3FD8       lda #$00
            sta L0780
            sta L0781
            sta L0782
            sta L0783
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            rts
L3FF3       pha
            txa
            pha
            tya
            pha
            lda L0092
            ldx #$03
L3FFC       lda L0780,X
            beq L4007
            dex
            bpl L3FFC
            jmp L405B
L4007       ldy L07A0
            lda #$00
            sta AUDCTL
            lda L4110,Y
            sta L079C,X
            lda L4124,Y
            sta L0798,X
            lda L40FB,Y
            sta L078C,X
            inc L0780,X
            lda #$00
            sta L0788,X
            cpy #$0F
            bpl L4044
            lda #$00
            sta L07A4,X
            ldy L078C,X
            lda L4138,Y
            sta L0784,X
            lda L42CE,Y
            sta L0790,X
            jmp L4058
L4044       lda #$01
            sta L07A4,X
            ldy L078C,X
            lda L421B,Y
            sta L0784,X
            lda L43B1,Y
            sta L0790,X
L4058       stx L07A0
L405B       pla
            tay
            pla
            tax
            pla
            rts
L4061       ldx #$03
            lda L00E4
            cmp #$01
            bne L4075
            lda PAL
            cmp #$0F
            beq L4075
            jsr L4075
            ldx #$03
L4075       lda L0780,X
            bne L407D
            jmp L40F4
L407D       txa
            tay
            asl
            tax
            lda L0784,Y
            cmp #$FF
            beq L4094
            sta AUDF1,X
            lda L079C,Y
            sta AUDC1,X
            jmp L409C
L4094       lda L079C,Y
            and #$F0
            sta AUDC1,X
L409C       txa
            lsr
            tax
            dec L0790,X
            beq L40B6
            clc
            lda L0798,X
            adc L0788,X
            sta L0788,X
            bcc L40B3
            inc L0784,X
L40B3       jmp L40F4
L40B6       inc L078C,X
            ldy L078C,X
L40BC       lda L07A4,X
            bne L40D2
            lda L42CE,Y
            beq L40E3
            sta L0790,X
            lda L4138,Y
            sta L0784,X
            jmp L40F4
L40D2       lda L43B1,Y
            beq L40E3
            sta L0790,X
            lda L421B,Y
            sta L0784,X
            jmp L40F4
L40E3       dec L0780,X
            txa
            asl
            tax
            lda #$00
            sta AUDF1,X
            sta AUDC1,X
            txa
            lsr
            tax
L40F4       dex
            bmi L40FA
            jmp L4075
L40FA       rts
L40FB       .byte $00
            rol L7357
            .byte $7A
            txa
            sty L0096,X
            .byte $A7
            bcs L40BC+2
            ldx LDBC2,Y
            .byte $DF,$00,$1B
            bmi L4162+1
            .byte $92,$B3
L4110       .byte $AF,$AF,$AF
            lda LADAF
            lda L87AD
            .byte $A7
            lda L00A5
            .byte $A7
            lda L00A5
            lda #$AD
            .byte $AF,$AF,$AF
L4124       .byte $00,$00,$00,$00,$00,$00
            bvc L412C
L412C       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
L4138       rti
            .byte $3C
            pha
            .byte $FF
            pha
            .byte $23
            plp
            and L352F
            .byte $3C
            and L4835,Y
            .byte $FF
            pha
            .byte $FF
            pha
            and ICAX6Z,X
            and LFF35
            and L00FF,X
            and L00FF,X
            .byte $2F
            and L2F28
            .byte $FF,$2F
L4159       .byte $FF,$2F,$FF,$2F
            and L2F28
            .byte $FF,$2F
L4162       and L2F28
            .byte $00,$FF
            ldx KEYDEF,Y
            .byte $FF
            adc L79FF,Y
            ldx KEYDEF,Y
            .byte $FF
            adc L6C60,Y
            .byte $5B,$FF,$5B,$FF,$5B,$FF
            jmp (LFF5B)
            .byte $5B,$FF,$5B,$FF,$FF
            adc LFF51,Y
            eor (L00FF),Y
            eor (L00FF),Y
            .byte $FF
            adc LFF51,Y
            adc HOLD1,Y
            .byte $FF
            adc L79FF,Y
            .byte $FF
            adc L79FF,Y
            .byte $FF
            adc LFF51,Y
            pha
            .byte $FF
            pha
            .byte $FF
            pha
            .byte $FF,$44,$FF,$44,$FF,$44,$FF,$44,$FF,$44,$00
            cli
            pha
            eor (FMSZPG+1),Y
            pha
            .byte $3C,$00,$44,$3C,$44,$3C,$44,$3C,$44,$3C,$44,$3C,$44,$3C,$44,$3C
            .byte $44,$00,$23
            and L3C27+1
            .byte $FF,$3C
            plp
            .byte $23
            and L1D00
            .byte $00,$2F
            and NOCKSM,X
            rti
            .byte $3C
            rti
            pha
            eor (FMSZPG+5),Y
            eor (OLDCOL),Y
            rts
            .byte $5B
            rts
            jmp (KEYDEF)
            bpl L41F8+1
            jsr L1828
            jsr L3028
            .byte $00,$5B
            eor (FMSZPG+5),Y
            .byte $44,$3C
            and ICAX4Z,X
            .byte $00
            and L2328
            and (ABUFPT+1,X)
L41F5       .byte $00
            and ICAX6Z,X
L41F8       and L57FE+2
            pha
            eor (FMSZPG+1),Y
            pha
            .byte $3C,$44
            and NOCKSM,X
            .byte $2F
            and ICAX4Z,X
            cli
            pha
            eor (FMSZPG+1),Y
            pha
            .byte $3C,$44
            and NOCKSM,X
            .byte $2F
            and ICAX4Z,X
            .byte $00
            pha
            .byte $44,$3C,$00
            adc L5B60,Y
            .byte $00
L421B       ora L1F23,X
            and ICDNOZ
            plp
            .byte $23
            rol
            and ICAX4Z
            plp
            .byte $2F
            rol
            .byte $32
            and L2F35
            and L3C30+2,Y
            and FREQ,X
            and L3C43+1,Y
            pha
            .byte $00
            cmp LB6C1,Y
            ldx #$C1
            ldx L00A2,Y
            bcc L41F5
            ldx #$90
            dey
            ldx #$90
            dey
            adc L8890,Y
            adc BUFSTR,Y
            and L2328
            ora L1DFF,X
            .byte $1A
            ora L2D23,X
            plp
            .byte $23,$FF,$23
            plp
            and LFF28
            and L2328
            ora L1DFF,X
            .byte $1A
            ora L2D23,X
            plp
            .byte $23,$FF,$23
            plp
            .byte $FF
            plp
            and LFF00
            .byte $5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF
            rts
            .byte $FF,$44,$FF,$44,$FF,$5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF,$5B,$FF
            pha
            .byte $FF
            rts
            .byte $FF,$44,$FF,$5B,$FF
            pha
            .byte $FF
            pha
            .byte $00,$FF,$3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF
            .byte $3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF,$3C,$FF
            .byte $3C,$00
L42CE       php
            bpl L42D8+1
            php
            bpl L42E4
            php
            php
            php
            php
L42D8       bpl L42EA
            bpl L42E4
            php
            php
            php
            bpl L42E9
            php
            bpl L42EB+1
L42E4       php
            php
            php
            php
            php
L42E9       php
L42EA       php
L42EB       bpl L42F4+1
            php
            php
            php
            php
            php
            php
            php
L42F4       bpl L42FD+1
            php
            php
            php
            bpl L4302+1
            .byte $00
            php
L42FD       bpl L4306+1
            php
            php
            php
L4302       bpl L4314
            php
            php
L4306       bpl L4318
            bpl L4312
            php
            php
            php
            bpl L431E+1
            bpl L4319
            php
L4312       php
            php
L4314       php
            php
            bpl L4328
L4318       php
L4319       php
            php
            php
            php
            php
L431E       bpl L4330
            php
            clc
            bpl L432C
            .byte $00
            clc
            php
            php
L4328       php
            php
            bpl L433C
L432C       php
            php
            bpl L4340
L4330       rts
            php
            php
            php
            php
            php
            plp
            php
            php
            php
            php
            php
L433C       plp
            php
            plp
            php
L4340       .byte $00
            php
            php
            php
            php
            php
            .byte $0C,$00
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl TRAMSZ
            asl L0000
            clc
            clc
            clc
            bmi L4363
            clc
            clc
            clc
            bmi L4362
L4362       .byte $80
L4363       .byte $00,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
            .byte $03,$00,$02,$02,$02,$02,$02,$02,$02,$02,$00,$03,$03,$03,$03,$03
            .byte $03
            ora (L0000),Y
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $02,$00
            ora (NGFLAG,X)
            .byte $02,$00,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
            .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$00
            ora (NGFLAG,X)
            ora (L0000,X)
            ora (NGFLAG,X)
            ora (L0000,X)
L43B1       .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
            .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$00,$03,$03,$03,$03,$03
            .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$00
            ora RAMLO+1
            asl
            ora RAMLO+1
            .byte $0F
            ora DOSVEC
            asl
            .byte $0F
            ora RAMLO+1
            ora DOSVEC
            asl
            asl
            ora L0505,Y
            ora DOSVEC
            ora RAMLO+1
            .byte $0F
            ora DOSVEC
            asl
            .byte $0F
            ora RAMLO+1
            ora DOSVEC
            ora RAMLO+1
            asl
            asl L0A00,X
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora APPMHI+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora L0000
            .byte $14
            ora APPMHI+1
            ora APPMHI+1
            ora APPMHI+1
            ora APPMHI+1
            ora APPMHI+1
            ora APPMHI+1
            ora RAMLO+1
            ora DSKFMS+1
            ora APPMHI+1
            ora APPMHI+1
            ora APPMHI+1
            ora APPMHI+1
            ora APPMHI+1
            ora APPMHI+1
            ora RAMLO+1
            ora L0000
L4464       jsr L4493
            jsr L449B
            ldy L08F4
            bmi L447F
            cpy #$10
            bpl L4480
            ldx L4667+2,Y
            jsr L457B
            jsr L4634
            inc L08F4
L447F       rts
L4480       lda #$FF
            sta L08F4
            dec L08F3
            beq L4490
            lda #$01
            sta L08F0
            rts
L4490       jmp L4657
L4493       lda L00B3
            clc
            adc #$0F
            sta L00DC
            rts
L449B       ldx #$0F
L449D       lda L0880,X
            beq L44B4
            ldy L08B0,X
            beq L44B4
            dey
            beq L44B4
            tya
            sta L08B0,X
            dey
            bne L44B4
            jsr L4607
L44B4       dex
            bpl L449D
            rts
L44B8       ldx #$0F
L44BA       lda L0880,X
            beq L44D2
            lda L08B0,X
            bne L44D2
            lda L0890,X
            ldy L08A0,X
            jsr L44D6
            beq L44D2
            jsr L44F5
L44D2       dex
            bpl L44BA
            rts
L44D6       sec
            sbc L1163
            cmp #$FF
            bmi L44F2
            cmp #$02
            bpl L44F2
            tya
            sec
            sbc L1164
            cmp #$FE
            bmi L44F2
            cmp #$02
            bpl L44F2
            lda #$01
            rts
L44F2       lda #$00
            rts
L44F5       lda #$09
            sta L08B0,X
            jsr L453A
            lda #$02
            sta L00C0
            sta L00C1
            lda #$7C
            sta L00C2
            ldy L08A0,X
            dey
            sty L00C3
            lda L0890,X
            sta L00C4
            stx L00CF
            jsr L6563
            ldx L00CF
            lda #$01
            sta L00C0
            sta L00C1
            ldy L08C0,X
            lda L4679,Y
            sta L00C2
            ldy L08A0,X
            dey
            sty L00C3
            lda L0890,X
            sta L00C4
            stx L00CF
            jsr L656A
            ldx L00CF
            rts
L453A       ldy L08C0,X
            lda #$01
L453F       dey
            bmi L4546
            asl
            jmp L453F
L4546       jsr L65BB
            lda #$03
            sta L07A0
            jsr L3FF3
            rts
L4552       lda L08F0
            beq L457A
            lda L08F3
            beq L457A
            lda L08F1
            ldy L08F2
            jsr L44D6
            beq L457A
            lda #$00
            sta L08F0
            sta L08F4
            lda #$05
            sta L07A0
            jsr L3FF3
            jmp L4464
L457A       rts
L457B       lda L0880,X
            beq L4595
            lda L08B0,X
            beq L4595
            lda #$00
            sta L08B0,X
            ldy L08C0,X
            iny
            tya
            sta L08C0,X
            jsr L45E2
L4595       rts
L4596       lda L00B9
            asl
            asl
            clc
            adc #$03
            tax
            sta L00CF
            lda L00BA
            asl
            asl
            asl
            asl
            clc
            adc L00CF
            tay
L45AA       lda L467D,Y
            sta L08A0,X
            lda L46BD,Y
            sta L0890,X
            lda #$01
            sta L0880,X
            lda #$00
            sta L08B0,X
            sta L08C0,X
            sty L00CE
            jsr L45E2
            ldy L00CE
            dey
            dex
            bpl L45AA
            rts
L45CF       ldx #$0F
L45D1       lda L0880,X
            beq L45DE
            lda L08B0,X
            bne L45DE
            jsr L45E2
L45DE       dex
            bpl L45D1
            rts
L45E2       jsr L45F3
            ldy L08C0,X
            lda L4661,Y
            sta L00C2
            jsr L6563
            ldx L00CF
            rts
L45F3       stx L00CF
            lda #$02
            sta L00C0
            sta L00C1
            ldy L08A0,X
            dey
            sty L00C3
            lda L0890,X
            sta L00C4
            rts
L4607       jsr L45F3
            lda #$24
            sta L00C2
            jsr L656A
            ldx L00CF
            rts
L4614       ldx L00BA
            lda L71A9,X
            sta L08F2
            lda L71AB+2,X
            sta L08F1
            lda #$01
            sta L08F0
            lda #$FF
            sta L08F4
            lda #$03
            sta L08F3
            jmp L4634
L4634       jsr L4645
            lda L08F4
            and #$03
            tay
            lda L4663+2,Y
            sta L00C2
            jmp L6563
L4645       lda #$02
            sta L00C0
            sta L00C1
            ldy L08F2
            dey
            sty L00C3
            lda L08F1
            sta L00C4
            rts
L4657       jsr L4645
            lda #$24
            sta L00C2
            jmp L656A
L4661       ldy L00B8,X
L4663       ldy L4840,X
            .byte $44
L4667       jmp FMSZPG+1
            .byte $04
            php
            .byte $0C
            ora (RAMLO+1,X)
            ora #$0D
            .byte $02
            asl DOSVEC
            asl L0703
            .byte $0B,$0F
L4679       .byte $7C,$0F
            bpl L468E
L467D       .byte $13
            bpl L468B+2
            .byte $07,$13
            ora L0A0A
            asl RTCLOK+1,X
            bpl L4693
            asl POKMSK,X
L468B       ora L1307
L468E       asl L0909
            asl RTCLOK+1,X
L4693       bpl L46A1+1
            ora APPMHI+1,X
            asl
            .byte $07
            ora RTCLOK+1,X
            ora L130A
            bpl L46AD
            .byte $07
L46A1       asl RTCLOK+1,X
            ora L160A
            ora POKMSK,X
            asl
            .byte $13,$13
            bpl L46B4
L46AD       asl BRKKEY,X
            asl
            asl RTCLOK+2
            bpl L46C0
L46B4       ora #$16
            asl L080B
            .byte $12
            ora L0709
L46BD       .byte $0F,$1F
            asl
L46C0       bpl L46C7+1
            clc
            ora #$1B
            asl ABUFPT,X
L46C7       bpl L46DC+1
            ora L131B
            ora L1F17,Y
            ora #$1E
            .byte $1B
            asl L0610
            .byte $1F
            asl DSKFMS,X
            ora (DOSVEC+1),Y
            ora #$0C
L46DC       asl DOSINI
            asl L071B
            clc
            .byte $1F,$07,$0C
            jsr L1908
            clc
            ora L0809,Y
            .byte $0F,$07,$1B,$1A
            clc
            jsr L100C
            .byte $07
            asl L0620
            jsr L1B15
            ora (ABUFPT+1),Y
L46FD       jsr L470C
            lda L1170
            beq L470B
            jsr L4770
            jmp L4714
L470B       rts
L470C       lda L00B3
            clc
            adc #$08
            sta L00DB
            rts
L4714       lda L1172
            cmp L1165
            bne L4737
            lda L116A
            bne L4737
            lda L1171
            clc
            adc #$0D
            cmp L1161
            bmi L4737
            sec
            sbc #$17
            cmp L1161
            bpl L4737
            jmp L3C33
L4737       rts
L4738       lda L1170
            bne L4761
            ldx L00BA
            lda L71AF+2,X
            sta L1171
            lda L71B4+1,X
            sta L1172
            lda L71B7+2,X
            sta L1175
            sta L1174
            lda #$10
            sta L1173
            jsr L4801
            lda #$01
            sta L1170
L4761       rts
L4762       lda L1170
            beq L476F
            lda #$00
            sta L1170
            jsr L47D4
L476F       rts
L4770       lda L1173
            and #$10
            beq L477A
            jmp L479F
L477A       jsr L47D4
            ldx L1174
            bne L4785
            jmp L47C6
L4785       dex
            txa
            sta L1174
            lda L1171
            sec
            sbc #$02
L4790       sta L1171
            lda L1173
            eor #$01
            sta L1173
            jsr L4801
            rts
L479F       jsr L47D4
            ldx L1174
            bne L47AA
            jmp L47B8
L47AA       dex
            txa
            sta L1174
            lda L1171
            clc
            adc #$02
            jmp L4790
L47B8       lda #$00
            sta L1173
            lda L1175
            sta L1174
            jmp L477A
L47C6       lda #$10
            sta L1173
            lda L1175
            sta L1174
            jmp L479F
L47D4       jsr L47DE
            lda #$24
            sta L00C2
            jmp L656A
L47DE       lda #$02
            sta L00C0
            ldx L1172
            dex
            stx L00C3
            lda L1171
            jsr L3FCB
            sta L00C4
            lda L1173
            and #$01
            bne L47FC
            lda #$02
            jmp L47FE
L47FC       lda #$03
L47FE       sta L00C1
            rts
L4801       jsr L47DE
            lda L1173
            cmp #$10
            bmi L480D
            eor #$12
L480D       tax
            lda L481A,X
            sta L00C2
            jmp L6563
            .byte $02,$03,$02,$03
L481A       rol
            rol L2420
L481E       jsr L482D
            lda L1160
            beq L482C
            jsr L4882
            jsr L4CC1
L482C       rts
L482D       lda L00B3
            clc
            adc #$04
            sta L00DA
            rts
L4835       lda L1160
            bne L4868
            sta L1166
            sta L1168
L4840       sta L116A
            sta L116D
            lda #$10
            sta L1167
            ldx L00BA
            lda #$C0
            sta L1162
            lda L71BD,X
            sta L1161
            lda #$16
            sta L1164
            sta L1165
            lda #$01
            sta L1160
            jsr L4D53
L4868       rts
L4869       jsr L4D10+1
            lda #$00
            sta L1160
            rts
L4872       lda L1160
            beq L487F
            jsr L4D10+1
            lda #$00
            sta L1160
L487F       jmp L6689
L4882       lda L1160
            beq L48AD
            lda L00EB
            beq L488D
            dec L00EB
L488D       lda L116A
            beq L489C
            lda L1166
            cmp #$07
            beq L489C
            jmp L4BFE
L489C       lda L1166
            tax
            lda L4CF1,X
            sta L00EE
            lda L4CF9,X
            sta L00ED
            jmp (L00ED)
L48AD       rts
L48AE       jsr L4C20
            stx L1167
            cmp #$00
            beq L48BB
            jmp L4AB9
L48BB       jmp L4D53
L48BE       jsr L4C20
            cpx L1167
            bne L48CB
            cmp L1166
            beq L48CE
L48CB       jmp L4AB9
L48CE       dec L1169
            bne L48EB
            lda L1168
            eor #$01
            sta L1168
            and #$01
            clc
            adc #$0D
            sta L07A0
            jsr L3FF3
            lda #$02
            sta L1169
L48EB       jsr L4A9A
            jsr L4CA4
            and #$01
            beq L48F8
            jmp L4D53
L48F8       jmp L4BFE
L48FB       jsr L4C20
            cmp L1166
            beq L4906
            jmp L4AB9
L4906       ldy L1169
            beq L491E
            dey
            sty L1169
            bne L491E
            lda #$03
            sta L1168
            lda #$0B
            sta L07A0
            jsr L3FF3
L491E       jmp L4D53
L4921       jsr L4C20
            ldx L1169
            lda L4CDF,X
            cmp #$01
            bne L4948
            jsr L4CA4
            tay
            and #$01
            beq L4948
            tya
            ldx L1169
            and L4CE8,X
            bne L4948
            lda L1164
            sta L1165
            jmp L4ACD
L4948       dec L1169
            ldx L1169
            bmi L4995
            ldy #$01
            lda L4CD6,X
            bmi L4959
            ldy #$00
L4959       sty L1168
            clc
            adc L1162
            sta L1162
            lda L4CDF,X
            clc
            adc L1164
            sta L1164
            lda L00E5
            cmp #$04
            beq L4982
            cmp #$05
            beq L4982
            cmp #$02
            beq L498A
            cmp #$06
            beq L498A
            jmp L4992
L4982       lda L1167
            bne L4992
            jmp L498F
L498A       lda L1167
            beq L4992
L498F       jsr L4A9A
L4992       jmp L4D53
L4995       jmp L4BFE
L4998       jsr L4C20
            cmp #$04
            beq L49B1
            cmp #$03
            beq L49B1
            cmp #$05
            beq L49AE
            cmp #$02
            beq L49AE
            jmp L49E7
L49AE       jmp L4B8E
L49B1       dec L1169
            bne L49E7
            lda #$03
            sta L1169
            lda L1167
            eor #$10
            sta L1167
            lda L1162
            sec
            sbc #$04
            sta L1162
            and #$07
            bne L49E7
            dec L1164
            dec L1165
            jsr L4CA4
            and #$04
            bne L49E7
            lda #$04
            sta L00EB
            jsr L49EA
            jmp L4ACD
L49E7       jmp L4D53
L49EA       lda L00EC
            tax
            asl
            tay
            lda #$00
            sta L0780,X
            sta AUDC1,Y
            rts
L49F8       jsr L4C20
            cmp #$05
            beq L4A11
            cmp #$02
            beq L4A11
            cmp #$04
            beq L4A0E
            cmp #$03
            beq L4A0E
            jmp L4A46
L4A0E       jmp L4B69
L4A11       dec L1169
            bne L4A46
            lda #$03
            sta L1169
            lda L1167
            eor #$10
            sta L1167
            lda L1162
            clc
            adc #$04
            sta L1162
            and #$07
            beq L4A39
            inc L1164
            inc L1165
            jmp L4A46
L4A39       jsr L4CA4
            and #$02
            bne L4A46
            jsr L49EA
            jmp L4ACD
L4A46       jmp L4D53
L4A49       jsr L4C20
            dec L1169
            beq L4A54
            jmp L4D53
L4A54       lda #$00
            sta L116D
            sta L1168
            sta L1166
            lda L1167
            beq L4A70
            lda L1161
            sec
            sbc #$03
            sta L1161
            jmp L4D53
L4A70       lda L1161
            clc
            adc #$03
            sta L1161
            jmp L4D53
L4A7C       jsr L4C20
            lda L1167
            eor #$10
            sta L1167
            lda L1162
            clc
            adc #$08
            sta L1162
            cmp #$E0
            bcs L4A97
            jmp L4D53
L4A97       jmp L4872
L4A9A       lda L1167
            beq L4AAD
            ldx L1161
            cpx #$B2
            bcs L4AB8
            inx
            stx L1161
            jmp L4AB8
L4AAD       ldx L1161
            cpx #$46
            bcc L4AB8
            dex
            stx L1161
L4AB8       rts
L4AB9       sta L1166
            stx L1167
            tax
            lda L4D01,X
            sta L00EE
            lda L4D09,X
            sta L00ED
            jmp (L00ED)
L4ACD       lda #$00
            sta L1168
            sta L1166
            jmp L48AE
            lda #$00
            sta L1168
            lda #$01
            sta L1166
            lda #$02
            sta L1169
            lda #$0D
            sta L07A0
            jsr L3FF3
            jmp L48BE
            lda #$02
            sta L1168
            sta L1166
            lda #$04
            sta L1169
            lda #$0A
            sta L07A0
            jsr L3FF3
            jmp L48FB
            lda #$03
            sta L1166
            lda #$09
            sta L1169
            sta L07A0
            jsr L3FF3
            jmp L4921
            lda #$04
            sta L1168
            sta L1166
            lda #$03
            sta L1169
            lda L1167
            eor #$10
            sta L1167
            lda #$0C
            sta L07A0
            jsr L3FF3
            lda L07A0
            sta L00EC
            jmp L4998
            lda #$04
            sta L1168
            lda #$05
            sta L1166
            lda #$03
            sta L1169
            lda L1167
            eor #$10
            sta L1167
            lda #$0C
            sta L07A0
            jsr L3FF3
            lda L07A0
            sta L00EC
            jmp L49F8
L4B69       lda #$04
            sta L1166
            lda #$03
            sta L1169
            jsr L4CA4
            and #$04
            bne L4B8B
            lda L1162
            and #$07
            bne L4B8B
            lda #$04
            sta L00EB
            jsr L49EA
            jmp L4ACD
L4B8B       jmp L4998
L4B8E       lda #$05
            sta L1166
            lda #$03
            sta L1169
            jsr L4CA4
            and #$02
            bne L4BAC
            lda L1162
            and #$07
            bne L4BAC
            jsr L49EA
            jmp L4ACD
L4BAC       jmp L49F8
            lda #$05
            sta L1168
            lda #$06
            sta L1166
            sta L1169
            lda #$01
            sta L116D
            lda L1162
            clc
            adc #$08
            sta L116E
            lda L1167
            beq L4BE1
            lda L1161
            clc
            adc #$03
            sta L1161
            clc
            adc #$08
            sta L116F
            jmp L4BF0
L4BE1       lda L1161
            sec
            sbc #$03
            sta L1161
            sec
            sbc #$06
            sta L116F
L4BF0       jsr L5BF8
            lda #$08
            sta L07A0
            jsr L3FF3
            jmp L4A49
L4BFE       jsr L4D10+1
            lda #$06
            sta L1168
            lda #$07
            sta L1166
            lda #$00
            sta L116D
            lda #$01
            sta L116A
            lda #$0F
            sta L07A0
            jsr L3FF3
            jmp L4A7C
L4C20       jsr L64D4
            ldx L1167
            lda L00E7
            beq L4C46
            ldx #$10
            lda L00E5
            cmp #$02
            beq L4C43
            cmp #$06
            beq L4C43
            ldx #$00
            cmp #$04
            beq L4C43
            cmp #$05
            beq L4C43
            ldx L1167
L4C43       lda #$06
            rts
L4C46       lda L00E5
            cmp #$04
            bne L4C51
            lda #$01
            ldx #$00
            rts
L4C51       cmp #$02
            bne L4C5A
            lda #$01
            ldx #$10
            rts
L4C5A       cmp #$05
            bne L4C63
            ldx #$00
            jmp L4C73
L4C63       cmp #$06
            bne L4C6C
            ldx #$10
            jmp L4C73
L4C6C       cmp #$01
            bne L4C8A
            ldx L1167
L4C73       ldy L00EB
            bne L4C8A
            stx L00CF
L4C79       jsr L4CA4
            and #$04
            beq L4C85
            lda #$04
            ldx L00CF
            rts
L4C85       lda #$03
            ldx L00CF
            rts
L4C8A       cmp #$03
            bne L4CA1
            jsr L4CA4
            and #$02
            beq L4C9B
            lda #$05
            ldx L1167
            rts
L4C9B       lda #$02
            ldx L1167
            rts
L4CA1       lda #$00
            rts
L4CA4       lda L1161
            clc
            adc #$04
            jsr L3FCB
            tay
            ldx L1164
            lda L684C+1,X
            sta L00C0
            lda L6865,X
            clc
            adc #$20
            sta L00C1
            lda (L00C0),Y
            rts
L4CC1       lda L1161
            clc
            adc #$02
            jsr L3FCB
            sta L1163
            jsr L44B8
            jsr L4552
            jmp L4FA6
L4CD6       php
            php
            ora CASINI
            ora (L00FF,X)
            inc LF8FB,X
L4CDF       ora (NGFLAG,X)
            ora (L0000,X)
            .byte $00,$00,$00,$FF,$FF
L4CE8       .byte $00,$00
            php
            .byte $00,$00,$00,$00,$00,$00
L4CF1       pha
            pha
            pha
            eor #$49
            eor #$4A
            lsr
L4CF9       ldx LFBBE
            and (L0098,X)
            sed
            eor #$7C
L4D01       lsr
            lsr
            lsr
            .byte $4B,$4B,$4B,$4B,$4B
L4D09       cmp LF2D8
            asl
            ora LAF42,X
L4D10       inc L15A9,X
            sta L00C1
            lda #$1D
            sta L00C3
            lda L1162
            sec
            sbc #$0C
            sta L00C0
            sta L00C2
            lda #$00
            ldy #$2F
L4D27       sta (L00C0),Y
            sta (L00C2),Y
            dey
            bpl L4D27
            lda #$14
            sta L00C1
            lda #$1C
            sta L00C3
            ldx L1168
            lda L1162
            clc
            adc L4EB6,X
            sec
            sbc #$10
            sta L00C0
            sta L00C2
            lda #$00
            ldy #$27
L4D4B       sta (L00C0),Y
            sta (L00C2),Y
            dey
            bpl L4D4B
            rts
L4D53       jsr L4D10+1
            lda #$15
            sta L00C1
            lda #$1D
            sta L00C3
            ldx L1168
            lda L1162
            sta L00C0
            sta L00C2
            lda L1161
            sta HPOSP1
            lda L1168
            asl
            asl
            asl
            sta L00CF
            clc
            adc L00CF
            adc L00CF
            tax
            lda L1167
            eor #$10
            sta L00CE
            ldy #$00
L4D85       lda L4DD6,X
            jsr L5A11
            sta (L00C0),Y
            sta (L00C2),Y
            inx
            iny
L4D91       cpy #$18
            bmi L4D85
            lda #$14
            sta L00C1
            lda #$1C
            sta L00C3
            ldx L1168
            lda L1162
            clc
            adc L4EB6,X
            sta L00C0
            sta L00C2
            lda L1161
            ldy L1167
            beq L4DBA
            clc
            adc L4EBC+1,X
            jmp L4DBE
L4DBA       sec
            sbc L4EBC+1,X
L4DBE       sta HPOSP0
            ldy #$00
            ldx L00CF
L4DC5       lda L4E7E,X
            jsr L5A11
            sta (L00C0),Y
            sta (L00C2),Y
            inx
            iny
            cpy #$08
            bmi L4DC5
            rts
L4DD6       .byte $00
            rti
            ldy #$10
            .byte $7C,$9C
            asl L071F,X
            ora RAMLO
            .byte $0C
            asl L1C0D
            .byte $1C,$1C,$3C
            sec
            sei
            bne L4DFC
            .byte $1C
            asl L9060,X
            .byte $3C,$5C,$9E,$1F,$07
            ora RAMLO
            .byte $0C
            asl L1C0D
            .byte $1C
L4DFC       .byte $1C,$3C
            sec
            sei
            bne L4D91+1
            bpl L4E1C
            .byte $0C
            asl L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            sec
            asl LAF9E
            .byte $87
            cmp LFEFC
            adc L2030,Y
L4E1C       sec
            .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00
            sec
            asl LAF1E
            .byte $87
            sta L00C4
            cpy L7E7C
            and L2030,Y
            jsr L3C36+2
            .byte $00,$02
            cpy ICBALZ
            .byte $3C,$3C,$3C,$7C
            cli
            .byte $5A,$7A
            rol L1E3E,X
            .byte $1C,$1C,$3C
            ror L4B69+1,X
            pha
            iny
            php
            .byte $0C
            rts
            bcc L4E8D
            .byte $5C,$9E,$1F,$07
            ora RAMLO
            .byte $0C,$0F
            sty L9C9C
            .byte $DC
            sed
            sei
            bmi L4E70+1
            bpl L4E73
            clc
            .byte $0C
            asl DOSINI
            php
            iny
            pha
            .byte $4B
            ror
            ror L1C3C,X
            .byte $1C
L4E70       asl L3E3E,X
L4E73       .byte $7A,$5A
            cli
            .byte $7C,$3C,$3C,$3C
            bit L00C4
            .byte $02,$00
L4E7E       cpy #$E0
            cpx #$60
            rts
            .byte $00,$00,$00
            cpy #$E0
            cpx #$60
            rts
            .byte $00,$00
L4E8D       .byte $00
            bmi L4EC7+1
            sec
            clc
            clc
            .byte $00,$00,$00
            bmi L4ED0
            sec
            clc
            clc
            .byte $00,$00,$00
            cpy #$C0
            .byte $C3,$03,$03,$00,$00,$00
            sec
            .byte $FC,$FC,$FC,$FC,$1C,$3C
            sec
            .byte $03,$03,$C3
            cpy #$C0
            .byte $00,$00,$00
L4EB6       .byte $0B
            ora #$11
            bpl L4EC2
            php
L4EBC       asl L0707
            ora RAMLO+1
            .byte $00
L4EC2       php
            .byte $00
L4EC4       jsr L4F22
L4EC7       jsr L5CA2
            lda L00D2
            beq L4ED0
            dec L00D2
L4ED0       lda L00BA
            cmp #$03
            bne L4ED9
            jmp L54FE
L4ED9       ldy #$07
            lda L00BA
            cmp #$02
            beq L4F05
L4EE1       ldy #$FF
L4EE3       iny
            beq L4EEF
            cpy #$07
            bpl L4EEE
            cpy L00D0
            bmi L4EFA
L4EEE       rts
L4EEF       lda L1100,Y
            beq L4F10
            jsr L52DC
            jmp L4EE3
L4EFA       lda L1100,Y
            beq L4F16
            jsr L5023
            jmp L4EE3
L4F05       lda L1100,Y
            beq L4F1C
            jsr L5408
            jmp L4EE1
L4F10       jsr L529D
            jmp L4EE3
L4F16       jsr L4F2A
            jmp L4EE3
L4F1C       jsr L53DA
            jmp L4EE1
L4F22       lda L00B3
            clc
            adc #$0C
            sta L00D8
            rts
L4F2A       lda L00D2
            bne L4F58
            lda L1100,Y
            bne L4F58
            lda #$20
            sta L1110,Y
            lda #$01
            sta L1118,Y
            lda L00D1
            sta L1120,Y
            lda #$FF
            sta L1140,Y
            jsr L518D
            lda #$01
            sta L1100,Y
            lda #$00
            sta L1148,Y
            lda L00D5
            sta L00D2
L4F58       rts
L4F59       lda L1100,Y
            beq L4F7E
            jsr L5913
            lda #$00
            sta L1100,Y
            lda L1128,Y
            beq L4F71
            jsr L5846
            jmp L4F74
L4F71       jsr L5884
L4F74       ldx L1140,Y
            bmi L4F7E
            lda #$00
            sta L1200,X
L4F7E       rts
L4F7F       jsr L5913
            lda #$00
            sta L1130,Y
            lda #$06
            sta L1148,Y
            lda #$07
            sta L07A0
            jsr L3FF3
            jmp L5919
L4F97       lda #$00
            sta L00D2
            sta L00D3
            ldy #$07
L4F9F       jsr L4F59
            dey
            bpl L4F9F
            rts
L4FA6       lda L116A
            bne L5013
            ldy #$07
L4FAD       lda L1100,Y
            beq L5010
            lda L1148,Y
            bne L5010
            lda L116D
            beq L4FE5
            lda L116F
            sec
            sbc L1108,Y
            cmp #$FA
            bmi L4FE5
            cmp #$08
            bpl L4FE5
            lda L116E
            sec
            sbc L1110,Y
            cmp #$F9
            bmi L4FE5
            cmp #$10
            bpl L4FE5
            jsr L4F7F
            lda #$02
            jsr L65BB
            jmp L5010
L4FE5       lda L1161
            sec
            sbc L1108,Y
            cmp #$FA
            bmi L5010
            cmp #$06
            bpl L5010
            lda L1162
            sec
            sbc L1110,Y
            cmp #$E9
            bmi L5010
            cmp #$10
            bpl L5010
            jsr L4F7F
            lda #$02
            jsr L65BB
            lda #$01
            sta L116A
L5010       dey
            bpl L4FAD
L5013       rts
L5014       lda L1148,Y
            sec
            sbc #$01
            sta L1148,Y
            bne L5022
            jmp L4F59
L5022       rts
L5023       lda L1100,Y
            beq L5043
            lda L1148,Y
            beq L5030
            jmp L5014
L5030       lda L1130,Y
            and #$0F
            tax
            lda L58E9,X
            sta L00EE
            lda L58F3+1,X
            sta L00ED
            jmp (L00ED)
L5043       rts
L5044       jsr L5913
            jsr L5884
            lda L1110,Y
            cmp #$20
            bne L5054
            jmp L4F59
L5054       sec
            sbc #$04
            sta L1110,Y
            lda L1138,Y
            eor #$01
            sta L1138,Y
            beq L506C
            ldx L1118,Y
            dex
            txa
            sta L1118,Y
L506C       jsr L5872
            jmp L5919
            jsr L5913
            ldx #$03
            lda L1138,Y
            bne L509C
            jsr L58C6
            beq L509C
            lda L1118,Y
            cmp L1164
            bcc L509C
            sec
            sbc #$06
            cmp L1164
            bcs L509C
            jsr L5801
            lda L1128,Y
            beq L509C
            jmp L51AA
L509C       lda L1110,Y
            cmp #$D0
            bne L50B6
            lda #$00
            sta L1120,Y
            jsr L5801
            lda L1128,Y
            beq L50B3
            jmp L51AA
L50B3       jmp L515A
L50B6       clc
            adc #$04
            sta L1110,Y
            lda L1138,Y
            eor #$01
            sta L1138,Y
            bne L50CE
            ldx L1118,Y
            inx
            txa
            sta L1118,Y
L50CE       jmp L5919
            lda L1130,Y
            and #$10
            beq L50DB
            jmp L5118
L50DB       jsr L5913
            lda L1108,Y
            cmp #$BC
            bcc L50F4
            lda L1120,Y
            bne L50F4
            lda L1108,Y
            cmp #$BC
            bne L50FC
            jmp L515A
L50F4       ldx L1138,Y
            bne L50FC
            jmp L51F6
L50FC       ldx L1138,Y
            dex
            txa
            sta L1138,Y
            lda L1108,Y
            sec
            sbc #$02
            sta L1108,Y
            lda L1130,Y
            eor #$01
            sta L1130,Y
            jmp L5919
L5118       jsr L5913
            lda L1108,Y
            cmp #$BC
            bcc L5125
            jmp L515A
L5125       clc
            adc #$02
            sta L1108,Y
            lda L1130,Y
            eor #$01
            sta L1130,Y
            jmp L5919
            ldx L1138,Y
            bne L513E
            jmp L5271
L513E       dex
            txa
            sta L1138,Y
            rts
            ldx L1138,Y
            bne L5154
            lda L1120,Y
            bne L5151
            jmp L51E0
L5151       jmp L51F6
L5154       dex
            txa
            sta L1138,Y
            rts
L515A       ldx L1118,Y
            inx
            lda L1240,X
            bne L5172
            dex
            lda L1240,X
            bne L5172
            dex
            lda L1240,X
            bne L5172
            jmp L5175
L5172       jmp L5919
L5175       jsr L5846
            lda #$0A
            sta L1130,Y
            lda #$BC
            sta L1108,Y
            lda #$00
            sta L1138,Y
            jsr L5872
            jmp L5919
L518D       lda #$09
            sta L1130,Y
            lda #$C4
            ldx L00D3
            bne L519C
            inc L00D3
            lda #$BC
L519C       sta L1108,Y
            lda #$00
            sta L1128,Y
            sta L1138,Y
            jmp L5919
L51AA       lda #$00
            sta L1130,Y
            lda L1108,Y
            sec
            sbc L1161
            cmp #$40
            bmi L51BF
            lda #$18
            jmp L51CA
L51BF       cmp #$20
            bmi L51C8
            lda #$08
            jmp L51CA
L51C8       lda #$00
L51CA       sta L1138,Y
            lda L1128,Y
            cmp #$01
            beq L51DD
            lda L1138,Y
            clc
            adc #$04
            sta L1138,Y
L51DD       jmp L5919
L51E0       lda #$00
            ldx L1108,Y
            cpx #$BC
            bcs L51EB
            ora #$10
L51EB       sta L1130,Y
            lda #$00
            sta L1138,Y
            jmp L5919
L51F6       lda L00B9
            bne L5202
            lda RANDOM
            and #$01
            jmp L5209
L5202       lda RANDOM
            and #$03
            beq L5202
L5209       ldx L1118,Y
            cmp #$01
            bne L521D
            dex
            dex
            lda L1200,X
            bne L5238
            jsr L5896
            jmp L523B
L521D       cmp #$02
            bne L522D
            dex
            lda L1200,X
            bne L5238
            jsr L5896
            jmp L524D
L522D       lda L1200,X
            bne L5238
            jsr L5896
            jmp L525F
L5238       jmp L5919
L523B       lda L1130,Y
            and #$10
            ora #$02
            sta L1130,Y
            lda #$02
            sta L1138,Y
            jmp L5919
L524D       lda L1130,Y
            and #$10
            ora #$03
            sta L1130,Y
            lda #$02
            sta L1138,Y
            jmp L5919
L525F       lda L1130,Y
            and #$10
            ora #$04
            sta L1130,Y
            lda #$02
            sta L1138,Y
            jmp L5919
L5271       jsr L616A
            lda #$02
            sta L1138,Y
            lda L1130,Y
            cmp #$04
            bne L5283
            jmp L5290
L5283       lda L1130,Y
            and #$10
            ora #$06
            sta L1130,Y
            jmp L5919
L5290       lda L1130,Y
            and #$10
            ora #$07
            sta L1130,Y
            jmp L5919
L529D       lda L1100,Y
            bne L52CA
            lda L0090
            bne L52CA
            lda #$30
            sta L1108,Y
            lda #$38
            sta L1110,Y
            lda #$04
            sta L1118,Y
            lda L00D1
            sta L1120,Y
            jsr L5801
            lda L1128,Y
            beq L52CA
            jsr L5393
            lda #$01
            sta L1100,Y
L52CA       rts
L52CB       lda L1100,Y
            beq L52DB
            lda #$00
            sta L1100,Y
            jsr L5913
            jsr L5846
L52DB       rts
L52DC       lda L1100,Y
            bne L52EC
            jmp L529D
            lda L1148,Y
            beq L52EC
            jmp L5014
L52EC       lda L1130,Y
            and #$0F
            bne L52F6
            jmp L530C
L52F6       cmp #$01
            bne L52FD
            jmp L530C
L52FD       cmp #$05
            bne L5304
            jmp L5364
L5304       cmp #$08
            bne L530B
            jmp L5372
L530B       rts
L530C       lda L1130,Y
            and #$10
            beq L5316
            jmp L5334
L5316       jsr L5913
            lda L1108,Y
            cmp #$30
            bcs L5323
            jmp L52CB
L5323       sec
            sbc #$02
            sta L1108,Y
            lda L1130,Y
            eor #$01
            sta L1130,Y
            jmp L5919
L5334       jsr L5913
            lda L1108,Y
            cmp #$78
            bne L5341
            jmp L53A6
L5341       clc
            adc L1138,Y
            clc
            adc #$04
            cmp L1161
            bcc L5350
            jmp L53A6
L5350       lda L1108,Y
            clc
            adc #$02
            sta L1108,Y
            lda L1130,Y
            eor #$01
            sta L1130,Y
            jmp L5919
L5364       ldx L1138,Y
            bne L536C
            jmp L53B8
L536C       dex
            txa
            sta L1138,Y
            rts
L5372       ldx L1138,Y
            bne L5382
            lda L1120,Y
            bne L537F
            jmp L5388
L537F       jmp L5393
L5382       dex
            txa
            sta L1138,Y
            rts
L5388       lda #$00
            sta L1130,Y
            sta L1138,Y
            jmp L5919
L5393       lda #$10
            sta L1130,Y
            lda RANDOM
            and #$0F
            sec
            sbc #$07
            sta L1138,Y
            jmp L5919
L53A6       lda L1130,Y
            and #$10
            ora #$05
            sta L1130,Y
            lda #$03
            sta L1138,Y
            jmp L5919
L53B8       ldx L1118,Y
            lda L1220,X
            inx
            ora L1220,X
            bne L53D9
            lda L1130,Y
            and #$10
            ora #$08
            sta L1130,Y
            lda #$02
            sta L1138,Y
            jsr L61A0
            jsr L5919
L53D9       rts
L53DA       lda L00D4
            cmp #$07
            bpl L5407
            lda L00D2
            bne L5407
            lda L1100,Y
            bne L5407
            sta L1120,Y
            lda #$20
            sta L1110,Y
            lda #$01
            sta L1118,Y
            lda #$FF
            sta L1140,Y
            jsr L518D
            lda #$01
            sta L1100,Y
            lda #$08
            sta L00D2
L5407       rts
L5408       lda L1100,Y
            beq L543D
            lda L1148,Y
            beq L5415
            jmp L5014
L5415       lda L1130,Y
            and #$0F
            cmp #$0A
            bne L5421
            jmp L5044
L5421       cmp #$09
            bne L5428
            jmp L543E
L5428       cmp #$00
            bne L542F
            jmp L5485
L542F       cmp #$01
            bne L5436
            jmp L5485
L5436       cmp #$06
            bne L543D
            jmp L54B8
L543D       rts
L543E       jsr L5913
            ldx #$03
            lda L1138,Y
            bne L5460
            jsr L58C6
            beq L5460
            lda L1118,Y
            cmp L19A8
            bcc L5460
            jsr L5801
            lda L1128,Y
            beq L5460
            jmp L54C6
L5460       lda L1110,Y
            cmp #$D0
            bne L546A
            jmp L515A
L546A       clc
            adc #$04
            sta L1110,Y
            lda L1138,Y
            eor #$01
            sta L1138,Y
            bne L5482
            ldx L1118,Y
            inx
            txa
            sta L1118,Y
L5482       jmp L5919
L5485       lda L1130,Y
            and #$10
            beq L548F
            jmp L5118
L548F       jsr L5913
            lda L1108,Y
            cmp #$83
            bpl L549C
            jmp L54CE
L549C       ldx L1138,Y
            dex
            txa
            sta L1138,Y
            lda L1108,Y
            sec
            sbc #$02
            sta L1108,Y
            lda L1130,Y
            eor #$01
            sta L1130,Y
            jmp L5919
L54B8       ldx L1138,Y
            bne L54C0
            jmp L54E3
L54C0       dex
            txa
            sta L1138,Y
            rts
L54C6       lda #$00
            sta L1130,Y
            jmp L5919
L54CE       lda L1118,Y
            cmp L19A8
            bcc L54F8
            lda #$06
            sta L1130,Y
            lda #$04
            sta L1138,Y
            jmp L5919
L54E3       lda L19A1
            bne L54FB
            lda L1118,Y
            cmp L19A8
            bcc L54F8
            sta L00CB
            jsr L4F59
            jmp L5CF7
L54F8       jmp L51E0
L54FB       jmp L5919
L54FE       ldy #$00
L5500       iny
            cpy L00D0
            bmi L5506
            rts
L5506       lda L1100,Y
            beq L5511
            jsr L55A2
            jmp L5500
L5511       jsr L5517
            jmp L5500
L5517       lda L00D2
            bne L556C
            lda L1100,Y
            bne L556C
            ldx #$07
L5522       ora L1100,X
            dex
            bpl L5522
            cmp #$00
            beq L556D
            lda #$38
            sta L1110,Y
            lda #$04
            sta L1118,Y
            lda L00D1
            sta L1120,Y
            lda #$FF
            sta L1140,Y
L5540       jsr L5801
            lda L1128,Y
            beq L556C
            lda #$01
            sta L1100,Y
            tya
            and #$01
            bne L555D
            lda #$C4
L5554       sta L1108,Y
            jsr L5744
            jmp L5565
L555D       lda #$30
            sta L1108,Y
            jsr L574C
L5565       lda L00D5
            clc
            sbc #$04
            sta L00D2
L556C       rts
L556D       lda #$80
            sta L1110,Y
            sta L1108,Y
            lda #$0D
            sta L1118,Y
            lda L00D1
L557C       sta L1120,Y
            lda #$FF
            sta L1140,Y
            jsr L5801
            lda L1128,Y
            beq L55A1
            lda RANDOM
            and #$01
            beq L5599
            jsr L5744
            jmp L559C
L5599       jsr L574C
L559C       lda #$01
            sta L1100,Y
L55A1       rts
L55A2       lda L1100,Y
            beq L55C2
            lda L1148,Y
            beq L55AF
            jmp L5014
L55AF       lda L1130,Y
            and #$0F
            tax
            lda L58FF,X
            sta L00EE
            lda L5909,X
            sta L00ED
            jmp (L00ED)
L55C2       rts
            jsr L5913
            lda L1138,Y
            beq L5610
            lda L1130,Y
            eor #$10
            sta L1130,Y
            lda L1110,Y
            clc
            adc #$04
            sta L1110,Y
            and #$07
            bne L5610
            jsr L5846
            tya
            tax
            inc L1118,X
            jsr L5801
            lda L1128,Y
            beq L55F7
            jsr L58A5
            tax
            jmp L5708
L55F7       tya
            tax
            dec L1118,X
            lda L1130,Y
            eor #$10
            sta L1130,Y
            lda L1110,Y
            sec
            sbc #$04
            sta L1110,Y
            jsr L5801
L5610       lda L1138,Y
            eor #$01
            sta L1138,Y
            jmp L5919
            lda L1120,Y
            beq L564C
            lda L1118,Y
            sec
            sbc #$02
            cmp L1164
            bcs L5636
            clc
            adc #$04
            cmp L1164
            bcc L5636
            jmp L5754
L5636       lda L1108,Y
            sec
            sbc #$04
            cmp L1161
            bcs L564C
            clc
            adc #$08
            cmp L1161
            bcc L564C
            jmp L57FB
L564C       lda L1130,Y
            and #$10
            beq L5656
            jmp L5688
L5656       jsr L5913
            lda L1130,Y
            eor #$01
            sta L1130,Y
            lda L1108,Y
            sec
            sbc #$02
            sta L1108,Y
            and #$03
            bne L5685
            lda L1108,Y
            cmp #$30
            bne L5678
            jmp L4F59
L5678       jsr L58A5
            sta L00CF
            and #$80
            eor L00CF
            tax
            jmp L5708
L5685       jmp L5919
L5688       jsr L5913
            lda L1130,Y
            eor #$01
            sta L1130,Y
            lda L1108,Y
            clc
            adc #$02
            sta L1108,Y
            and #$03
            bne L56B7
            lda L1108,Y
            cmp #$C4
            bne L56AA
            jmp L4F59
L56AA       jsr L58A5
            sta L00CF
            and #$40
            eor L00CF
            tax
            jmp L5708
L56B7       jmp L5919
            lda L1138,Y
            and #$0F
            bne L56C4
            jmp L57E1
L56C4       tya
            tax
            dec L1138,X
            rts
            lda L1138,Y
            and #$0F
            bne L56DC
            lda L1138,Y
            bne L56D9
            jmp L5744
L56D9       jmp L574C
L56DC       tya
            tax
            dec L1138,X
            rts
            ldx L1138,Y
            bne L56EA
            jmp L57FE
L56EA       dex
            txa
            sta L1138,Y
            rts
            ldx L1138,Y
            bne L5702
            lda L1130,Y
            and #$10
            bne L56FF
            jmp L5744
L56FF       jmp L574C
L5702       dex
            txa
            sta L1138,Y
            rts
L5708       lda RANDOM
            and #$03
            beq L571A
            cmp #$01
            beq L5722
            cmp #$02
            beq L572A
            jmp L5708
L571A       txa
            and #$40
            beq L5708
            jmp L5744
L5722       txa
            and #$80
            beq L5708
            jmp L574C
L572A       txa
            and #$20
            beq L5708
            jmp L5732
L5732       lda #$09
            sta L1130,Y
            lda #$00
            sta L1138,Y
            lda L00D1
            sta L1120,Y
            jmp L5919
L5744       lda #$00
            sta L1130,Y
            jmp L5919
L574C       lda #$10
            sta L1130,Y
            jmp L5919
L5754       lda L00B9
            bne L5760
            lda RANDOM
            and #$01
            jmp L5767
L5760       lda RANDOM
            and #$03
            beq L5760
L5767       ldx L1118,Y
            cmp #$01
            bne L5780
            dex
            dex
            jsr L58CC
            beq L5754
            lda L1200,X
            bne L57A5
            jsr L5896
            jmp L57A8
L5780       cmp #$02
            bne L5795
            dex
            jsr L58CC
            beq L5754
            lda L1200,X
            bne L57A5
            jsr L5896
            jmp L57B3
L5795       jsr L58CC
            beq L5754
            lda L1200,X
            bne L57A5
            jsr L5896
            jmp L57BE
L57A5       jmp L5919
L57A8       jsr L57C9
            ora #$02
            sta L1130,Y
            jmp L5919
L57B3       jsr L57C9
            ora #$03
            sta L1130,Y
            jmp L5919
L57BE       jsr L57C9
            ora #$04
            sta L1130,Y
            jmp L5919
L57C9       lda L1130,Y
            and #$10
            ora #$02
            sta L1138,Y
            lda L1108,Y
            cmp L1161
            bcc L57DE
            lda #$00
            rts
L57DE       lda #$10
            rts
L57E1       jsr L616A
            lda #$02
            ora L1138,Y
            sta L1138,Y
            lda L1130,Y
            and #$0F
            cmp #$04
            bne L57F8
L57F5       jmp L5290
L57F8       jmp L5283
L57FB       jmp L53A6
L57FE       jmp L53B8
L5801       lda L1128,Y
            bne L5845
            ldx L1118,Y
            dex
            lda L1260,X
            inx
            ora L1260,X
            inx
            ora L1260,X
            cmp #$03
            beq L5845
            eor #$03
            cmp #$03
            bne L5821
            lda #$01
L5821       sta L1128,Y
            ldx L1118,Y
            dex
            lda L1260,X
            ora L1128,Y
            sta L1260,X
            inx
            lda L1260,X
            ora L1128,Y
            sta L1260,X
            inx
            lda L1260,X
            ora L1128,Y
            sta L1260,X
L5845       rts
L5846       lda L1128,Y
            beq L5871
            ldx L1118,Y
            dex
            lda L1260,X
            eor L1128,Y
            sta L1260,X
            inx
            lda L1260,X
            eor L1128,Y
            sta L1260,X
            inx
            lda L1260,X
            eor L1128,Y
            sta L1260,X
            lda #$00
            sta L1128,Y
L5871       rts
L5872       ldx L1118,Y
            inx
            lda #$01
            sta L1240,X
            dex
            sta L1240,X
            dex
            sta L1240,X
            rts
L5884       ldx L1118,Y
            inx
            lda #$00
            sta L1240,X
            dex
            sta L1240,X
            dex
            sta L1240,X
            rts
L5896       lda #$01
            sta L1200,X
            txa
            sta L1140,Y
            lda #$03
            sta L1138,Y
            rts
L58A5       ldx L1118,Y
            sty L00CF
            lda L1108,Y
            clc
            adc #$04
            jsr L3FCB
            tay
            lda L684C+1,X
            sta L00C0
            lda L6865,X
            clc
            adc #$20
            sta L00C1
            lda (L00C0),Y
            ldy L00CF
            rts
L58C6       jsr L58A5
            and #$08
            rts
L58CC       stx L00CD
            cpx L1164
            beq L58E4
            inx
L58D4       cpx L1164
            beq L58E4
            inx
            cpx L1164
            beq L58E4
            ldx L00CD
            lda #$00
            rts
L58E4       ldx L00CD
            lda #$01
            rts
L58E9       bvc L5939+2
            eor (HOLD1),Y
            eor (HOLD1),Y
            eor (HOLD1),Y
            eor (TEMPCHR),Y
L58F3       bvc L58C6
            cmp (LTEMP),Y
            rol LTEMP,X
            rol FMSZPG+1,X
            .byte $44,$44,$72,$44
L58FF       lsr COLCRS+1,X
            lsr COLCRS+1,X
            lsr COLCRS+1,X
            lsr COLCRS+1,X
            lsr COLCRS,X
L5909       .byte $1B,$1B
            tsx
            tsx
            tsx
            .byte $E2
            dex
            dex
            beq L58D4+2
L5913       lda #$00
            tax
            jmp L591E
L5919       lda #$01
            ldx L1108,Y
L591E       sta L00CF
            stx L00CE
            sty L00CD
            lda L1128,Y
            cmp #$01
            bne L592E
            jmp L5986
L592E       cmp #$02
            bne L5935
            jmp L5993
L5935       lda #$02
            sta L00C1
L5939       lda L1108,Y
            jsr L3FCB
            sta L00C4
            ldx L1118,Y
            dex
            stx L00C3
            lda L00CF
            beq L5971
            lda L1148,Y
            bne L5963
            lda L1138,Y
            bne L595C
            ldx #$02
            lda #$D8
L5959       jmp L5967
L595C       ldx #$03
            lda #$DC
            jmp L5967
L5963       ldx #$02
            lda #$F8
L5967       stx L00C0
            sta L00C2
            jsr L6563
            jmp L5A0E
L5971       lda #$14
            sta L00C2
            lda #$03
            ldx L1138,Y
            bne L597E
            lda #$02
L597E       sta L00C0
            jsr L656A
            jmp L5A0E
L5986       lda #$16
            sta L00C1
            lda #$1E
            sta L00C3
            lda #$00
            jmp L599D
L5993       lda #$17
            sta L00C1
            lda #$1F
            sta L00C3
            lda #$20
L599D       clc
            adc L1118,Y
            tax
            dex
            lda L00CE
            sta L1000,X
            inx
            sta L1000,X
            lda L00BA
            cmp #$03
            bne L59B9
            lda L1000,X
            inx
            sta L1000,X
L59B9       lda L1110,Y
            sta L00C0
            sta L00C2
            lda L00CF
            beq L5A03
            lda L1130,Y
            and #$0F
            cmp #$02
            bpl L59D5
            ldx L1120,Y
            beq L59D5
            clc
            adc #$0A
L59D5       asl
            asl
            asl
            asl
            tax
            lda L1148,Y
            beq L59E1
            ldx #$C0
L59E1       lda L1130,Y
            and #$10
            sta L00CE
            ldy #$00
L59EA       lda L0E00,X
            jsr L5A11
            sta (L00C0),Y
            lda L0F00,X
            jsr L5A11
            sta (L00C2),Y
            inx
            iny
            cpy #$10
            bmi L59EA
            jmp L5A0E
L5A03       lda #$00
            ldy #$0F
L5A07       sta (L00C0),Y
            sta (L00C2),Y
            dey
            bpl L5A07
L5A0E       ldy L00CD
            rts
L5A11       sta L00CC
            lda L00CE
            beq L5A30
            asl L00CC
            ror
            asl L00CC
            ror
            asl L00CC
            ror
            asl L00CC
            ror
            asl L00CC
            ror
            asl L00CC
            ror
            asl L00CC
            ror
            asl L00CC
            ror
            rts
L5A30       lda L00CC
            rts
L5A33       lda #$0C
            sta L00CF
            lda #$CF
            sta L00CE
L5A3B       ldx #$0F
            stx L00CD
            ldx L00CF
            ldy L5B9E+1,X
            ldx L00CE
L5A46       lda L5A5F,Y
            sta L0E00,X
            lda L5AFE+1,Y
            sta L0F00,X
            dex
            dey
            dec L00CD
            bpl L5A46
L5A58       stx L00CE
            dec L00CF
            bpl L5A3B
            rts
L5A5F       .byte $00
            php
            .byte $1C,$0C,$0C
            ora L1909
            and L7E3F,X
            lsr L25D7,X
            ora L0000
            .byte $00,$00
            ora (NGFLAG,X)
            .byte $03,$22
            ror FEOF,X
            .byte $3F
            rol L7A3E,X
            bvs L5ACB+2
            plp
L5A7E       .byte $00,$00
            php
            .byte $1C,$0C
            ora L0B0D
            asl L787C,X
            clc
            rol L4C79+2,X
            .byte $04,$00,$00
            php
            .byte $1C,$0C,$0C,$0C
            php
            ror L181C,X
            cli
            .byte $FC,$1A,$0B,$0C,$00,$00,$00,$00
            bpl L5ADC
            clc
            clc
            asl L3D1D,X
            ror L0E1C,X
            php
            php
            .byte $00,$00,$00,$00
            bpl L5AEC
            .byte $1A
            asl L1D1D,X
            rol L273C,X
            rol L0808
            .byte $00
            clc
            .byte $3C,$7C,$7C,$5A,$5A
            ror L183E,X
            .byte $0C,$3C,$34
L5ACB       jsr L2020
            .byte $00,$00
            php
            .byte $1C,$0C,$0C
            ora L1909
            and L663E+1,X
            lsr L00C7
L5ADC       ora RAMLO+1
            .byte $00,$00,$00,$00
            ora (NGFLAG,X)
            .byte $03,$22
            ror FEOF,X
            .byte $3F
            rol ICPTLZ
            .byte $22
L5AEC       bmi L5AFE
            .byte $00,$00
            cpx #$20
            cpx #$80
            cpx #$38
            plp
            plp
            plp
            sec
            asl L0A0A
            asl
L5AFE       asl L0800
            .byte $1C,$1C,$3C
            and L1939,X
            and L7E3F,X
            lsr LA5D7,X
            lda L00A5
            .byte $00,$00
            ora (NGFLAG,X)
            .byte $03,$22
            ror COUNTR+1,X
            .byte $FF
            inc L7BFE,X
            bvs L5B6D
            plp
            .byte $14,$00,$0B,$1F,$1F
            and L3B3D,X
            asl LF87C,X
            sec
            rol LCC7B,X
            .byte $04,$04,$00
            php
            .byte $1C,$1C,$3C,$3C
            sec
            inc L1B9F,X
            .byte $5B,$FC
            txs
            .byte $0B,$0C,$04,$00,$00,$00
            bpl L5B7A+2
            sec
            .byte $7B
            ror L3D7D,X
            inc L0E9D,X
            php
            php
            php
            .byte $00,$00,$00
            bpl L5B8C+1
            .byte $3B
            ror L7D7D,X
            rol L273D,X
            ror L08C8
            php
            cli
L5B60       .byte $7C
            ror L5A7E,X
            .byte $5A
            ror L183E,X
            .byte $1C,$3C,$34
            rol ICHIDZ
L5B6D       jsr FKDEF
            php
            .byte $1C,$1C,$3C
            and L1939,X
            and L7E3F,X
L5B7A       lsr L85D7,X
            sta L0085
            .byte $00,$00,$00
            ora (NGFLAG,X)
            .byte $03,$22
            ror COUNTR+1,X
            .byte $FF
            inc L3BFE,X
L5B8C       bmi L5BA6
            .byte $0C,$00
            cpx #$20
            cpx #$80
            cpx #$38
            plp
            plp
            plp
            sec
            asl L0A0A
            asl
L5B9E       asl L1F0F
            .byte $2F,$2F,$3F,$2F,$4F
L5BA6       .byte $5F,$4F,$6F,$7F,$8F,$9F
L5BAC       lda L00BA
            cmp #$02
            bne L5BC6
            lda #$0E
            sta L19A8
            ldy #$00
            sty L00D4
L5BBB       jsr L5BC7
            iny
            cpy #$04
            bmi L5BBB
            jsr L5D4D
L5BC6       rts
L5BC7       lda #$01
            sta L1980,Y
            lda #$7C
            sta L1988,Y
            tya
            asl
            sta L00CF
            lda #$16
            sec
            sbc L00CF
            sta L1990,Y
            inc L00D4
            rts
L5BE0       lda L00BA
            cmp #$02
            bne L5BF7
            ldy L00D4
            dey
L5BE9       jsr L5DB6
            lda #$00
            sta L1980,Y
            dey
            bpl L5BE9
            jsr L5D85
L5BF7       rts
L5BF8       lda L00BA
            cmp #$02
            bne L5C3C
            ldy #$00
            lda L1164
            and #$FE
L5C05       ldx L1980,Y
            beq L5C3C
            cmp L1990,Y
            beq L5C13
            iny
            jmp L5C05
L5C13       lda L1167
            bne L5C2C
            lda L1161
            sec
            sbc #$01
            cmp L1988,Y
            bmi L5C3C
            sec
            sbc #$0D
            cmp L1988,Y
            bmi L5C3D
            rts
L5C2C       lda L1161
            cmp L1988,Y
            bpl L5C3C
            clc
            adc #$0D
            cmp L1988,Y
            bpl L5C7E
L5C3C       rts
L5C3D       lda L1998,Y
            sec
            sbc #$01
            sta L1998,Y
            cmp #$FF
            bpl L5C3C
            lda #$00
            sta L1998,Y
            jsr L5DB6
            tya
            tax
            dec L1988,X
            lda L1988,Y
            cmp #$75
            bmi L5C61
            jmp L5DAB
L5C61       sty L19A0
            jsr L5DB6
            lda #$00
            sta L1980,Y
            lda #$01
            sta L19A1
            lda #$07
            sta L07A0
            jsr L3FF3
            lda #$04
            jmp L65BB
L5C7E       lda L1998,Y
            clc
            adc #$01
            sta L1998,Y
            cmp #$02
            bmi L5C3C
            lda #$00
            sta L1998,Y
            jsr L5DB6
            tya
            tax
            inc L1988,X
            lda L1988,Y
            cmp #$83
            bpl L5C61
            jmp L5DAB
L5CA2       lda L19A1
            beq L5CDB
            inc L19A0
            ldy L19A0
            lda L1980,Y
            beq L5CBC
            jsr L5DB6
            dey
            jsr L5CDC
            jmp L5DAB
L5CBC       jsr L47D4
            jsr L5D85
            inc L19A8
            inc L19A8
            inc L1172
            inc L1172
            jsr L5D73
            jsr L4801
            dec L00D4
            lda #$00
            sta L19A1
L5CDB       rts
L5CDC       lda L1981,Y
            sta L1980,Y
            lda L1991,Y
            clc
            adc #$02
            sta L1990,Y
            lda L1989,Y
            sta L1988,Y
            lda #$00
            sta L1981,Y
            rts
L5CF7       jsr L47D4
            jsr L5D85
            dec L19A8
            dec L19A8
            dec L1172
            dec L1172
            jsr L5D73
            jsr L4801
            lda #$16
            sec
            sbc L00CB
            lsr
            sta L00CD
            ldy L00D4
            cpy L00CD
            beq L5D31
            dey
L5D1E       jsr L5DB6
            jsr L5D37
            iny
            jsr L5DAB
            dey
            cpy L00CD
            beq L5D31
            dey
            jmp L5D1E
L5D31       jsr L5BC7
            jmp L5DAB
L5D37       lda L1980,Y
            sta L1981,Y
            lda L1990,Y
            sec
            sbc #$02
            sta L1991,Y
            lda L1988,Y
            sta L1989,Y
            rts
L5D4D       jsr L5D73
            ldy #$00
L5D52       lda L1980,Y
            beq L5D5F
            jsr L5DAB
            iny
            cpy #$08
L5D5D       bmi L5D52
L5D5F       rts
            jsr L5D85
            ldy #$00
            lda L1980,Y
            beq L5D72
            jsr L5DB6
            iny
            cpy #$08
            bmi L5D52
L5D72       rts
L5D73       lda #$14
            jsr L5D97
            jsr L656A
            lda #$01
            jsr L5D97
            dec L00C3
            jmp L6599
L5D85       lda #$24
            jsr L5D97
            jsr L656A
            lda #$00
            jsr L5D97
            dec L00C3
            jmp L6599
L5D97       sta L00C2
            lda #$01
            sta L00C0
            lda #$04
            sta L00C1
            lda L19A8
            sta L00C3
            lda #$12
            sta L00C4
            rts
L5DAB       jsr L5DC5
            sty L00CF
            jsr L6563
            ldy L00CF
            rts
L5DB6       jsr L5DC5
            lda #$24
            sta L00C2
            sty L00CF
            jsr L656A
            ldy L00CF
            rts
L5DC5       lda #$02
            sta L00C0
            lda #$02
            sta L00C1
            lda L1990,Y
            sec
            sbc #$01
            sta L00C3
            lda L1988,Y
            and #$03
            tax
            beq L5DE1
            lda #$03
            sta L00C1
L5DE1       lda L5DEF,X
            sta L00C2
            lda L1988,Y
            jsr L3FCB
            sta L00C4
            rts
L5DEF       .byte $E2
            inc L00EC
            .byte $F2
L5DF3       lda #$10
            sta L00C1
            lda #$00
            sta L00C0
            lda #$00
            ldx #$10
            jsr L3FAC+1
            lda L00BA
            cmp #$03
            beq L5E7C
            lda #$05
            sta L00CF
L5E0C       lda L00CF
            ldy L00BA
L5E10       dey
            bmi L5E19
            clc
            adc #$06
            jmp L5E10
L5E19       tay
            ldx L5F3C+1,Y
            tya
            and #$01
            bne L5E42
            lda L5F4F,Y
            sta L1000,X
            inx
            sta L1000,X
            inx
            sta L1000,X
            lda #$16
            sta L00C1
            lda #$1E
            sta L00C3
            lda L5F61,Y
            sta L00C0
            sta L00C2
            jmp L5E5F
L5E42       lda L5F4F,Y
            sta L1020,X
            inx
            sta L1020,X
            inx
            sta L1020,X
            lda #$17
            sta L00C1
            lda #$1F
            sta L00C3
            lda L5F61,Y
            sta L00C0
            sta L00C2
L5E5F       lda L00CF
            asl
            asl
            asl
            asl
            tax
            ldy #$00
L5E68       lda L5E7D,X
            sta (L00C0),Y
            lda L5EDC+1,X
            sta (L00C2),Y
            inx
            iny
            cpy #$10
            bmi L5E68
            dec L00CF
            bpl L5E0C
L5E7C       rts
L5E7D       bpl L5EB5+2
            .byte $34
            ror LFFFC,X
            .byte $F7
            ror L1C38,X
            php
            .byte $00,$00,$00,$00,$00
            clc
            clc
            .byte $1C
            ror LFB7E,X
            .byte $FF
            ldx L307C,Y
            bpl L5E99
L5E99       .byte $00,$00,$00,$00
            asl APPMHI+1
            .byte $17,$3F
            adc LFF7F,X
            .byte $DF,$FF,$BF,$7F,$7F
L5EA9       .byte $37,$1F
            asl.w TRAMSZ
            .byte $80
            bvs L5EA9
            .byte $FA
            inc LFFEF,X
L5EB5       ror LFCFE,X
            .byte $F4
            sed
            bne L5F1C
            .byte $00
            ora (CASINI+1,X)
            ora APPMHI+1
            .byte $1F,$3F,$77,$7F,$FB,$FF,$7F
            rol L143E,X
            php
            .byte $00,$80,$80
            cpx #$F0
            clv
            .byte $FC,$FC
            inc L00FF,X
            .byte $FB,$FF
            inc L7CDC,X
            sec
L5EDC       bpl L5EEE
            plp
            .byte $3C
            ror LFFF6,X
            .byte $BF
            ror L183C,X
            php
            .byte $00,$00,$00,$00,$00
            clc
L5EEE       bpl L5F2C
            ror LFF7A,X
            .byte $FF
            inc HOLDCH,X
            sec
            bpl L5EF9
L5EF9       .byte $00,$00,$00,$00
            asl DOSVEC+1
            .byte $1F
            and L7F7F,X
            .byte $F7,$FF
            sbc L7FFF,X
            .byte $5F,$3F,$17,$0F
            asl L0000
            .byte $80
            cpx #$F0
            .byte $FC
            inc L00FF,X
            .byte $BF,$FA
            inc L7CFC,X
            sed
            beq L5F3C
L5F1C       .byte $00
            ora (CASINI+1,X)
            .byte $03,$0F
L5F21       ora L6F3E+1,X
            .byte $7F
            inc L5FFE+1,X
            .byte $3F
            rol L0818,X
L5F2C       .byte $00,$80
            cpy #$A0
            beq L5F21+1
            .byte $FC,$FC
            dec L7FFF,X
            .byte $FF
            inc L7CF4,X
            sec
L5F3C       bpl L5F43
            ora DOSVEC+1
            .byte $0B
            ora (BRKKEY),Y
L5F43       .byte $0B,$0B
            ora (BRKKEY),Y
            ora RAMLO+1
            ora (BRKKEY),Y
            ora RAMLO+1
            .byte $0B,$0B
L5F4F       cli
            bcc L5FCA
            dey
            .byte $64,$74,$64
            txa
            jmp L685B+1
            sei
L5F5B       lsr L648E,X
            .byte $74
            txa
            txs
L5F61       lsr
            lsr
            .byte $7A,$7A
            tax
            tax
            .byte $7A,$7A
            tax
            tax
            lsr
            lsr
            tax
            tax
            lsr
            lsr
            .byte $7A,$7A
L5F73       jsr L5F8C
            jsr L5FF2
            ldx #$FF
L5F7B       inx
            cpx #$18
            bmi L5F81
            rts
L5F81       lda L1800,X
            beq L5F7B
            jsr L5F94
            jmp L5F7B
L5F8C       lda L00B3
            clc
            adc #$01
            sta L00D9
            rts
L5F94       jsr L6251
            lda L1880,X
            bne L5FAA
            dec L1820,X
            lda L1820,X
            cmp #$30
            bne L5FB8
            jsr L5FBC
            rts
L5FAA       inc L1820,X
            lda L1820,X
            cmp #$D0
            bne L5FB8
            jsr L5FBC
            rts
L5FB8       jsr L627A
            rts
L5FBC       lda #$00
            sta L1800,X
            ldy L1860,X
            sta L1200,Y
            jsr L6251
L5FCA       rts
L5FCB       ldx #$18
            dex
L5FCE       lda L1800,X
            beq L5FD6
            jsr L5FBC
L5FD6       dex
            bpl L5FCE
            rts
L5FDA       lda #$01
            jsr L65BB
            ldx L1164
            dex
            lda #$00
            sta L00E1
            lda #$10
            sta L07A0
            jsr L3FF3
            jmp L5FBC
L5FF2       dec L00E3
            bpl L5FFB
            lda #$03
            sta L00E3
            rts
L5FFB       ldx #$FF
L5FFD       inx
L5FFE       cpx #$10
            bmi L6003
            rts
L6003       lda L1900,X
L6006       beq L5FFD
            jsr L600E
            jmp L5FFD
L600E       jsr L62A8
L6011       ldy L1940,X
            beq L604C
            lda L622F,Y
            clc
            adc L1920,X
            sta L1920,X
            lda L1950,X
            and L623E+2,Y
            clc
            adc L1910,X
            sta L1910,X
            dec L1940,X
            lda L1940,X
            cmp #$00
            bne L6049
            ldy L1930,X
            lda #$00
            sta L1220,Y
            inc L1930,X
            iny
            iny
            lda #$01
            sta L1220,Y
L6049       jmp L62D5
L604C       lda L1920,X
            and #$07
            beq L6056
            jmp L60E6
L6056       lda L1910,X
            ldy L1950,X
            cpy #$01
            beq L607D
            cpy #$FF
            beq L6072
            inc L1950,X
            cmp L1161
            bmi L607D
            dec L1950,X
            dec L1950,X
L6072       sec
            sbc L1161
            cmp #$06
            bpl L6088
            jmp L60E6
L607D       sec
            sbc L1161
            cmp #$FC
            bmi L6088
            jmp L60E6
L6088       lda RANDOM
            and #$0F
            ldy L1930,X
            cpy #$06
            bpl L6097
            sec
            sbc #$18
L6097       dey
            cpy L1164
            bmi L60A0
            clc
            adc #$08
L60A0       cmp L00E2
            bpl L60E6
            jsr L6210
            beq L60E6
            ldy L1930,X
            dey
            lda L1220,Y
            dey
            ora L1220,Y
            dey
            ora L1220,Y
            bne L60E6
            dec L1930,X
            ldy L1930,X
            lda #$01
            sta L1220,Y
            iny
            iny
            lda #$00
            sta L1220,Y
            lda #$10
            sta L1940,X
            lda L1910,X
            cmp L1161
            bcc L60DE
            lda #$FF
            jmp L60E0
L60DE       lda #$01
L60E0       sta L1950,X
            jmp L6011
L60E6       lda #$00
            sta L1950,X
            inc L1920,X
            lda L1920,X
            and #$07
            bne L6111
            ldy L1930,X
            lda #$00
            sta L1220,Y
            iny
            iny
            lda #$01
            sta L1220,Y
            inc L1930,X
            lda L1930,X
            cmp #$18
            bmi L6111
            jmp L6114
L6111       jmp L62D5
L6114       lda #$00
            sta L1900,X
            ldy L1930,X
            lda #$00
            sta L1220,Y
            iny
            sta L1220,Y
            jsr L62A8
            rts
L6129       ldx #$0F
L612B       lda L1900,X
            beq L6133
            jsr L6114
L6133       dex
            bpl L612B
            rts
L6137       ldx #$18
            dex
L613A       ldy L1900,X
            beq L614E
            ldy L1930,X
            iny
            cpy L1164
            beq L6156
            iny
            cpy L1164
            beq L6156
L614E       dex
            bpl L613A
            lda #$00
            sta L00E0
            rts
L6156       lda #$00
            sta L00E0
            lda #$02
            jsr L65BB
            lda #$10
            sta L07A0
            jsr L3FF3
            jmp L6114
L616A       ldx L1120,Y
            dex
            txa
            sta L1120,Y
            lda L1140,Y
            tax
            sta L1860,X
            jsr L3FD1
            sta L1840,X
            lda L1108,Y
            sta L1820,X
            lda L1130,Y
            and #$10
            sta L1880,X
            lda #$01
            sta L1800,X
            lda #$FF
            sta L1140,Y
            lda #$06
            sta L07A0
            jsr L3FF3
            rts
L61A0       ldx L1120,Y
            dex
            txa
            sta L1120,Y
            jsr L6207
            lda L1118,Y
            sta L1930,X
            jsr L3FD1
            sta L1920,X
            lda L1130,Y
            and #$10
            beq L61CF
            lda L1108,Y
            clc
            adc #$06
            sta L1910,X
            lda #$01
            sta L1950,X
            jmp L61DD
L61CF       lda L1108,Y
            sec
            sbc #$02
            sta L1910,X
            lda #$FF
            sta L1950,X
L61DD       sty L00CF
            ldy L1930,X
            lda L1220,Y
            iny
            ora L1220,Y
            bne L61FC
            lda #$01
            sta L1220,Y
            dey
            sta L1220,Y
            sta L1900,X
            lda #$00
            sta L1940,X
L61FC       ldy L00CF
            lda #$06
            sta L07A0
            jsr L3FF3
            rts
L6207       ldx #$FF
L6209       inx
            lda L1900,X
            bne L6209
            rts
L6210       ldy L1930,X
            lda L684C+1,Y
            sta L00C0
            lda L6865,Y
            clc
            adc #$20
            sta L00C1
            lda L1910,X
            clc
            adc #$04
            jsr L3FCB
            tay
            lda (L00C0),Y
            and #$08
            rts
L622F       .byte $00,$02,$02
            ora (NGFLAG,X)
            ora (L0000,X)
            ora (L0000,X)
            .byte $00,$FF,$00,$FF,$FF,$FF
L623E       inc.w L00FE,X
            .byte $00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF,$00,$FF
L6251       ldy L1860,X
            lda #$00
            sta L1040,Y
            lda #$13
            sta L00C1
            lda #$1B
            sta L00C3
            lda L1840,X
            sta L00C0
            sta L00C2
            ldy #$07
L626A       lda (L00C0),Y
            and #$F0
            sta (L00C0),Y
            lda (L00C2),Y
            and #$F0
            sta (L00C2),Y
            dey
            bpl L626A
            rts
L627A       ldy L1860,X
            lda L1820,X
            sta L1040,Y
            lda #$13
            sta L00C1
            lda #$1B
            sta L00C3
            lda L1840,X
            sta L00C0
            sta L00C2
            ldy #$00
L6294       lda L6307,Y
            ora (L00C0),Y
            sta (L00C0),Y
            lda L6307,Y
            ora (L00C2),Y
            sta (L00C2),Y
            iny
            cpy #$08
            bmi L6294
            rts
L62A8       ldy L1930,X
            lda #$00
            sta L1060,Y
            iny
            sta L1060,Y
            lda #$13
            sta L00C1
            lda #$1B
            sta L00C3
            lda L1920,X
            sta L00C0
            sta L00C2
            ldy #$07
L62C5       lda (L00C0),Y
            and #$0F
            sta (L00C0),Y
            lda (L00C2),Y
            and #$0F
            sta (L00C2),Y
            dey
            bpl L62C5
            rts
L62D5       ldy L1930,X
            lda L1910,X
            sta L1060,Y
            iny
            sta L1060,Y
            lda #$13
            sta L00C1
            lda #$1B
            sta L00C3
            lda L1920,X
            sta L00C0
            sta L00C2
            ldy #$00
L62F3       lda L630F,Y
            ora (L00C0),Y
            sta (L00C0),Y
            lda L630F,Y
            ora (L00C2),Y
            sta (L00C2),Y
            iny
            cpy #$08
            bmi L62F3
            rts
L6307       .byte $00,$00,$00,$02,$07,$07,$07,$02
L630F       .byte $00,$00,$00
            jsr L7070
            bvs L6335+2
            pha
            txa
            pha
            tya
            pha
            cld
            lda VCOUNT
            cmp #$0B
            beq L6327
            jmp L63A2
L6327       lda #$38
            sta VDSLST
            lda #$63
            sta VDSLST+1
            lda #$00
            sta L00E9
L6335       jmp L63A2
            pha
            txa
            pha
            tya
            pha
            cld
            ldx L00E9
            cpx #$18
            bne L6360
            lda #$00
            sta HPOSP2
            sta HPOSP3
            sta HPOSM0
            sta HPOSM1
            sta HPOSM2
            sta HPOSM3
            sta L00E9
            jsr L63A8
            jmp L63A2
L6360       lda L0C10,X
            sta COLPF2
            lda L1000,X
            sta HPOSP2
            lda L1020,X
            sta HPOSP3
            ldy L10C0,X
            sty SIZEP2
            sty SIZEP3
            lda L64C2,Y
            sta PRIOR
            lda L0C30,Y
            sta COLPM2
            sta COLPM3
            ldy L1040,X
            sty HPOSM1
            iny
            iny
            sty HPOSM0
            ldy L1060,X
            sty HPOSM3
            iny
            iny
            sty HPOSM2
            inc L00E9
L63A2       pla
            tay
            pla
            tax
            pla
            rti
L63A8       lda #$17
            sta VDSLST
            lda #$63
            sta VDSLST+1
            inc L00B3
            bne L63B8
            inc L00B2
L63B8       jsr L4061
            jsr L63FF
            lda L116D
            beq L63E3
            lda M0PL
            ora M1PL
            and #$01
            beq L63D3
            lda #$01
            ora L00E1
            sta L00E1
L63D3       lda M2PL
            ora M3PL
            and #$01
            beq L63E3
            lda #$01
            ora L00E0
            sta L00E0
L63E3       lda M0PL
            ora M1PL
            ora M2PL
            ora M3PL
            and #$02
            bne L63F6
            jmp L63FB
L63F6       lda #$01
            sta L116A
L63FB       sta HITCLR
            rts
L63FF       jsr L646F
            ldx #$17
            lda L00BA
            cmp #$03
            beq L641F
L640A       ldy L6492,X
            lda L0C00,Y
            sta L0C10,X
            lda L64AA,X
            sta L10C0,X
            dex
            bpl L640A
            jmp L6431
L641F       lda L64AA
            sta L10C0,X
            ldy L6492,X
            lda L0C00,Y
            sta L0C10,X
            dex
            bpl L641F
L6431       inc L00E8
            lda L00E8
            and #$01
            beq L6454
            lda #$10
            sta PMBASE
            lda #$28
            sta CHBASE
            ldx #$02
            lda L0C00,X
            sta L0C30
            ldx #$05
            lda L0C00,X
            sta L0C31
            rts
L6454       lda #$18
            sta PMBASE
            lda #$2C
            sta CHBASE
            ldx #$04
            lda L0C00,X
            sta L0C30
            ldx #$05
            lda L0C00,X
            sta L0C31
            rts
L646F       ldx #$07
L6471       lda PAL
            cmp #$0F
            beq L647E
            lda L64C4,X
            jmp L6481
L647E       lda L64CC,X
L6481       ldy ATRACT
            cpy #$80
            bcc L648B
            eor RTCLOK
            and #$F6
L648B       sta L0C00,X
L648E       dex
            bpl L6471
            rts
L6492       .byte $03,$07
            asl CASINI+1
            .byte $03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03,$03
            .byte $03,$03,$03,$03
L64AA       .byte $00,$00,$00,$00,$00
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $00,$00
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $00,$00
            ora (NGFLAG,X)
            ora (L0000,X)
            .byte $00,$00,$00
L64C2       ora (RTCLOK),Y
L64C4       .byte $00,$F2
            php
            .byte $FC,$34
            cpy SAVMSC
            sei
L64CC       .byte $00,$22
            php
            bit LC444
            pla
            tay
L64D4       lda L00E5
            cmp L00E6
            beq L64E0
            sta L00E6
            lda #$00
            sta ATRACT
L64E0       lda L0092
            beq L64F2
            ldx L1165
            lda L0D00,X
            sta L00E5
            lda L0D20,X
            sta L00E7
            rts
L64F2       lda #$00
            sta L00E7
            ldx L00A0
            lda TRIG0,X
            bne L6509
            lda #$00
            sta ATRACT
            lda #$01
            sta L00E7
            clc
            jmp L6518
L6509       lda SKSTAT
            and #$08
            bne L6518
            lda #$00
            sta ATRACT
            lda #$02
            sta L00E7
L6518       lda PORTA
            ldx L00A0
            bne L6524
            and #$0F
            jmp L6528
L6524       lsr
            lsr
            lsr
            lsr
L6528       tax
            lda L652F,X
            sta L00E5
            rts
L652F       .byte $00,$00,$00,$00,$00,$02
            asl CASINI
            .byte $00,$04
            ora RAMLO
            .byte $00,$03
            ora (L0000,X)
            rts
            pla
            rti
            lda KBCODE
            lsr
            and #$0F
            ldx L00B5
            bne L6555
            sta L00B4
            lda #$20
            sta L00B5
            jmp L655D
L6555       cmp #$08
            bne L655D
            lda #$03
            sta L00B5
L655D       pla
            tay
            pla
            tax
            pla
            rti
L6563       lda #$01
            sta L00C5
            jmp L6571
L656A       lda #$00
            sta L00C5
            jmp L6571
L6571       ldx L00C3
            lda L684C+1,X
            sta L00C6
            lda L6865,X
            clc
            adc #$24
            sta L00C7
            ldx L00C1
            ldy L00C4
L6584       lda L00C2
            sta (L00C6),Y
            lda L00C5
            beq L658E
            inc L00C2
L658E       iny
            dex
            bne L6584
            inc L00C3
            dec L00C0
            bne L6571
            rts
L6599       ldx L00C3
            lda L684C+1,X
            sta L00C6
            lda L6865,X
            clc
            adc #$20
            sta L00C7
            ldx L00C1
            ldy L00C4
L65AC       lda L00C2
            sta (L00C6),Y
            iny
            dex
            bne L65AC
            inc L00C3
            dec L00C0
            bne L6599
            rts
L65BB       stx L00C8
            sty L00C9
            ldx L0092
            bne L65F3
            tax
            ldy L00A0
            bne L65DF
            ldy #$02
            sed
            clc
L65CC       adc L00A2,Y
            sta L00A2,Y
            lda #$00
            dey
            bpl L65CC
            cld
            txa
            jsr L65FB
            jmp L65F3
L65DF       ldy #$02
            sed
            clc
L65E3       adc L00A8,Y
            sta L00A8,Y
            lda #$00
            dey
            bpl L65E3
            cld
            txa
            jsr L661F
L65F3       jsr L66C0
            ldx L00C8
            ldy L00C9
            rts
L65FB       sed
            clc
            adc L00A6
            sta L00A6
            lda #$00
            adc L00A5
            sta L00A5
            cld
            lda L00A5
            bne L661E
            jsr L66B1
            lda L00A7
            bne L661A
            inc L00A7
            lda #$98
            sta L00A5
            rts
L661A       lda #$97
            sta L00A5
L661E       rts
L661F       sed
            clc
            adc L00AC
            sta L00AC
            lda #$00
            adc L00AB
            sta L00AB
            cld
            lda L00AB
            bne L6642
            jsr L66B1
            lda L00AD
            bne L663E
            inc L00AD
            lda #$98
            sta L00AB
            rts
L663E       lda #$97
            sta L00AB
L6642       rts
L6643       jsr L6653
            jsr L6662
            lda L00EA
            bne L6652
            lda #$01
            sta L116A
L6652       rts
L6653       lda L00B2
            clc
            adc #$02
            sta L00DD
            rts
L665B       lda #$21
            sta L00EA
            jmp L6643
L6662       sed
            lda L00EA
            sec
            sbc #$01
            sta L00EA
            cld
            inc L00D6
            jsr L3E63
            jmp L6772
L6673       lda L00EA
            jmp L65BB
L6678       lda #$02
            sta L00B8
            sta L00B7
            ldx L0091
            beq L6688
            sta L00BC
            lda #$05
            sta L00B7
L6688       rts
L6689       lda L0092
            bne L66AE
            dec L00B8
            jsr L67D2
            jsr L3FD8
            jsr L3CB5
            dec L00B7
            bmi L66A9
            jsr L5BE0
            lda L0091
            bne L66A6
            jmp L3BEC
L66A6       jmp L3B50
L66A9       lda #$01
            sta L00B6
            rts
L66AE       jmp L3C62
L66B1       inc L00B8
            inc L00B7
            lda #$04
            sta L07A0
            jsr L3FF3
            jmp L67D2
L66C0       ldx #$00
            stx L00CA
            jsr L67FE
            ldy #$06
            lda L00A0
            beq L66D1
            lda #$80
            sta L00CA
L66D1       lda L00A2,X
            lsr
            lsr
            lsr
            lsr
            bne L6701
            lda #$24
            jsr L67F7
            lda L00A2,X
            and #$0F
            bne L6708
            lda #$24
            jsr L67F7
            inx
            cpx #$03
            bmi L66D1
            lda #$24
            jsr L67F7
            lda #$00
            jsr L67F7
            jmp L671A
L66FB       lda L00A2,X
            lsr
            lsr
            lsr
            lsr
L6701       jsr L67F7
            lda L00A2,X
            and #$0F
L6708       jsr L67F7
            inx
            cpx #$03
            bmi L66FB
            lda #$00
            jsr L67F7
            lda #$00
            jsr L67F7
L671A       lda L0091
            beq L6771
            ldx #$00
            ldy #$18
            lda L00CA
            eor #$80
            sta L00CA
L6728       lda L00A8,X
            lsr
            lsr
            lsr
            lsr
            bne L6758
            lda #$24
            jsr L67F7
            lda L00A8,X
            and #$0F
            bne L675F
            lda #$24
            jsr L67F7
            inx
            cpx #$03
            bmi L6728
            lda #$24
            jsr L67F7
            lda #$00
            jsr L67F7
            jmp L6771
L6752       lda L00A8,X
            lsr
            lsr
            lsr
            lsr
L6758       jsr L67F7
            lda L00A8,X
            and #$0F
L675F       jsr L67F7
            inx
            cpx #$03
            bmi L6752
            lda #$00
            jsr L67F7
            lda #$00
            jsr L67F7
L6771       rts
L6772       lda #$00
            sta L00CA
            ldx #$02
            jsr L67FE
            ldx L00BA
            ldy L680C,X
            lda L00EA
            lsr
            lsr
            lsr
            lsr
            bne L67A3
            lda #$24
            jsr L67F7
            lda L00EA
            and #$0F
            bne L67AA
            lda #$24
            jsr L67F7
            lda #$24
            jsr L67F7
            lda #$00
            jsr L67F7
            rts
L67A3       jsr L67F7
            lda L00EA
            and #$0F
L67AA       jsr L67F7
            lda #$00
            jsr L67F7
            lda #$00
            jsr L67F7
            rts
L67B8       lda #$01
            sta L00C0
            lda #$04
            sta L00C1
            lda #$24
            sta L00C2
            lda #$02
            sta L00C3
            ldx L00BA
            lda L680C,X
            sta L00C4
            jmp L656A
L67D2       ldx #$00
            stx L00CA
            jsr L67FE
            ldy #$12
            lda L00B8
            sta L00CB
            ldx #$04
L67E1       dec L00CB
            bmi L67EE
            lda #$1F
            jsr L67F7
            dex
            bpl L67E1
            rts
L67EE       lda #$24
            jsr L67F7
            dex
            bpl L67EE
            rts
L67F7       clc
            adc L00CA
            sta (L00C6),Y
            iny
            rts
L67FE       lda L684C+1,X
            sta L00C6
L6803       lda L6865,X
            clc
            adc #$24
            sta L00C7
            rts
L680C       .byte $1B,$1B,$12
L680F       ora (ROWAC),Y
L6811       beq L6803
            cpy L0000
            bit L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            sty L0084
            eor (L0000,X)
            ora #$70
            bvs L68A3
            bvs L68A5
            .byte $47,$00
            asl
            bvs L68A9+1
            bvs L68AC
            bvs L68AE
            .byte $02
            bvs L68B1
            .byte $02
            bvs L68B4
            bvs L68B6
            bvs L68B6+2
            bvs L684C
            eor (ICHIDZ,X)
L684C       ora #$00
            plp
            bvc L68C8+1
            ldy #$C8
            beq L686C+1
            rti
            pla
            bcc L6811
L6859       cpx #$08
L685B       bmi L68B5
            .byte $80
            tay
            bne L6859
            jsr L7048
            tya
L6865       .byte $00,$00,$00,$00,$00,$00,$00
L686C       ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            .byte $02,$02,$02,$02,$02,$02,$02,$03,$03,$03,$03
L687D       pla
            adc #$6A
            .byte $6B
L6881       sta L0088
            cmp (L00D8),Y
            .byte $17
            ldy ABUFPT+1
            asl L00A4,X
            .byte $12
            ora L1C1C,X
            .byte $1C,$1C,$1C,$1C,$1C,$1C
            asl L1618,X
            ldy RTCLOK+1
            .byte $1B
            ldy TRAMSZ
            .byte $1B
            bit DSKFMS+1
            ora L00A4,X
            .byte $13,$1B
L68A3       ldy TRAMSZ
L68A5       .byte $1B
            bit DSKUTL
            .byte $14
L68A9       ldy RTCLOK+1
            .byte $1B
L68AC       ldy TRAMSZ
L68AE       .byte $1B
            bit DSKUTL
L68B1       .byte $14
            asl
            .byte $0B
L68B4       .byte $0C
L68B5       .byte $0C
L68B6       ora L0D0D
            ora L0E0E
            asl L0E0E
            asl L0E24
            asl L0E0E
            ora L0D0D
L68C8       ora L0C0D
            .byte $0C,$0B
            asl
            .byte $14,$14
            ldy DSKUTL
            .byte $12,$13,$1A
            ora L00A4,X
            .byte $1A,$12,$13,$1A
            ora L00A4,X
            .byte $1A,$12,$13
            ora LA415,Y
            .byte $1A,$12,$13
            ora LA415,Y
            .byte $1A,$12,$13
            ora L0A14,Y
            .byte $0B,$0B,$0B,$0B,$0B,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
            ora L0D0D
            ora L0D0D
            ora L0E0D
            asl L0E0E
            asl L190E
            ora RTCLOK,X
            .byte $13
            ldy DSKUTL
            ora L1215,Y
            .byte $13
            ldy DSKUTL
            ora L1216,Y
            .byte $13
            ldy DSKUTL
            ora L1216,Y
            .byte $13
            ldy DSKUTL
            .byte $1A
            asl RTCLOK,X
            .byte $13
            ldy DSKUTL
            .byte $1A
            asl APPMHI,X
            asl L0E0E
            asl L0D0E
            ora L0D0D
            ora L0D0D
            ora L0C0C
            .byte $0C,$0C,$0C,$0C,$0C,$0C,$0B,$0B,$0B,$0B,$0B
            asl
            .byte $14
            asl L00A4,X
            .byte $1A,$12,$13,$14
            asl L00A4,X
            .byte $1A,$12,$13,$1A
            ora L00A4,X
            .byte $1A,$12,$13,$1A
            ora L00A4,X
            .byte $1A,$12,$13,$14
            ora L00A4,X
            .byte $1A,$12,$13,$14
            ora APPMHI,X
            asl L0E0E
            asl L0D0E
            ora L0D0D
            ora L0D0D
            ora L0C0C
            .byte $0C,$0C,$0C,$0C,$0C,$0C,$0B,$0B,$0B,$0B,$0B
            asl
            .byte $14,$14,$14,$14,$14
            bit ICCOMT
            ldy ABUFPT+1
            asl L00A4,X
            .byte $12
            ora L1C1C,X
            .byte $1C,$1C,$1C,$1C,$1C,$1C
            asl L1618,X
            ldy RTCLOK+1
            .byte $1B
            ldy TRAMSZ
            .byte $1B
            bit DSKFMS+1
            ora L00A4,X
            .byte $13,$1B
            ldy TRAMSZ
            .byte $1B
            bit DSKUTL
            .byte $14
            ldy RTCLOK+1
            .byte $1B
            ldy TRAMSZ
            .byte $1B
            bit DSKUTL
            .byte $14,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$0B,$54
            eor ROWCRS,X
            eor ROWCRS,X
            eor ROWCRS,X
            eor ROWCRS,X
            eor ROWCRS,X
            eor DOSVEC+1,X
            .byte $0B,$0B,$0B,$14,$14
            ldy DSKFMS+1
            .byte $12,$13
            bit DSKUTL
            ora L00A4,X
            .byte $17
            ora L0C0D
            .byte $0B
            asl
            .byte $14
            ora L00A4,X
            bpl L6A38
            .byte $0B,$0B,$0B,$0B,$53
            ldy TRAMSZ
            ora LA415,Y
            ora #$52
            .byte $0B,$0B,$0B,$0B,$53
            ldy DOSINI+1
            ora LA415,Y
            .byte $02,$52,$0B,$0B,$0B,$0B,$53
            ldy RTCLOK+2
            .byte $1A,$14,$0B,$0B,$0B,$0B,$0B,$54
            eor ROWCRS,X
            eor ROWCRS,X
            eor ROWCRS,X
            eor ICBALZ,X
            .byte $54
            eor ROWCRS,X
            eor ROWCRS,X
            eor ROWCRS,X
            eor DOSVEC+1,X
            .byte $0B
            lsr DINDEX,X
            .byte $0B,$0B,$14
            ora L00A4,X
            ora LMARGN,X
            .byte $0B,$0B,$0B,$0B,$53
            bit DSKUTL
            ora L00A4,X
            asl L0B52
            .byte $0B,$0B,$0B,$53
L6A38       ldy WARMST
            ora LA415,Y
            .byte $07,$52,$0B,$0B,$0B,$0B,$53
            ldy APPMHI+1
            ora L0A14,Y
            .byte $0B,$0C,$0C
            ora LA40D
            asl DSKUTL,X
            ora L00A4,X
            .byte $03,$12,$13
            ldy ICCOMT
            .byte $1A,$14,$0B,$0B,$0B,$54
            eor ROWCRS,X
            eor ROWCRS,X
            eor ICBALZ,X
            .byte $54
            eor ROWCRS,X
            eor ROWCRS,X
            eor ROWCRS,X
            eor ROWCRS,X
            eor DOSVEC+1,X
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B,$14
            ora L00A4,X
            .byte $17,$12,$13
            ldy CASINI+1
            .byte $14
            asl L00A4,X
            .byte $13
            bvc L6A8E+1
            .byte $0B,$0B,$0B,$0B,$0B
            eor (ICBALZ),Y
            .byte $1A
            asl L00A4,X
L6A8E       ora L0B50
            .byte $0B,$0B,$0B,$0B,$0B
            eor (L00A4),Y
            .byte $07,$1A
            ora L00A4,X
            .byte $07
            bvc L6AA9+1
            .byte $0B,$0B,$0B,$0B,$0B
            eor (L00A4),Y
            ora L1514
L6AA9       ldy RAMLO
            bvc L6AB8
            .byte $0B,$0B
            eor (L00A4),Y
            .byte $13,$14
            ora APPMHI,X
            asl L0E0E
L6AB8       asl L0D0E
            ora L0D0D
            ora L0D0D
            ora L0C0C
            .byte $0C,$0C,$0C,$0C,$0C,$0C,$0B,$0B,$0B,$0B,$0B
            asl
            .byte $14,$17
            ldy ABUFPT+1
            asl L00A4,X
            .byte $1C
            clc
            asl L00A4,X
            .byte $1C
            clc
            ora L00A4,X
            .byte $1C
            ora LA414,Y
            .byte $1C
            ora L0A14,Y
            .byte $0B,$0C,$0C
            ora L0D0D
            ora L0E0E
            asl L0E0E
            asl L0E0E
            asl L0E0E
            asl LA40E
            .byte $07
            ora LA414,Y
            .byte $1C
            ora LA415,Y
            .byte $1C,$1A
            ora L00A4,X
            .byte $1C,$1A
            ora L00A4,X
            .byte $1C,$1A
            ora L00A4,X
            .byte $1C,$1A,$14
            asl
            .byte $0B,$0B,$0C,$0C
            ora L0D0D
            asl L0E0E
            asl L04A4
            asl L0E0E
            asl L0D0D
            ora L0C0C
            .byte $0B,$0B
            asl
            .byte $14
            ora L00A4,X
            .byte $04,$12,$13
            ldy RTCLOK+1
            .byte $12,$13
            bit DSKUTL
            ora L00A4,X
            .byte $04,$12,$13
            ldy RTCLOK+1
            .byte $12,$13
            bit DSKFMS+1
            ora L00A4,X
            .byte $04,$12,$13
            ldy RTCLOK+1
            .byte $12,$13
            bit DSKFMS+1
            ora L00A4,X
            .byte $04,$12,$13
            ldy RTCLOK+1
            .byte $12,$13
            bit DSKUTL
            .byte $14
            ldy RAMLO
            .byte $12,$13
            ldy RTCLOK+1
            .byte $12,$13
            bit DSKUTL
            .byte $14
            asl
            .byte $0B,$0B,$0C,$0C
            ora L0D0D
            asl L0E0E
            asl L04A4
            asl L0E0E
            asl L0D0D
            ora L0C0C
            .byte $0B,$0B
            asl
            .byte $14,$14,$12,$13
            ldy RTCLOK+2
            .byte $12,$13
            ldy RAMLO
            .byte $14
            ora RTCLOK,X
            .byte $13
            ldy RTCLOK+2
            .byte $12,$13
            ldy RAMLO
            .byte $1A
            ora RTCLOK,X
            .byte $13
            ldy RTCLOK+2
            .byte $12,$13
            ldy RAMLO
            .byte $1A
            ora RTCLOK,X
            .byte $13
            ldy RTCLOK+2
            .byte $12,$13
            ldy RAMLO
            .byte $14,$14
            asl
            .byte $0B,$0C
            ora LA40D
            ora (RTCLOK),Y
            .byte $13
            ldy RAMLO
            .byte $14,$14
            bit APPMHI
            asl L0E0E
            asl L0D0D
            ora L0D0D
            ora L0D0D
            .byte $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C,$0B,$0B,$0B,$0B,$0B
            asl
            .byte $14,$14,$14,$14,$14
            bit ICCOMT
            ldy ABUFPT+1
            asl L00A4,X
            php
            ora L1C1C,X
            .byte $1C,$1C,$1C,$1C,$1C,$1C
            asl L0AA4,X
            clc
            asl L00A4,X
            ora #$1B
            ldy TRAMSZ
            .byte $1B
            ldy DOSVEC+1
            ora LA415,Y
            ora #$1B
            ldy TRAMSZ
            .byte $1B
            ldy DOSVEC+1
            .byte $1A
            ora L00A4,X
            ora #$1B
            ldy TRAMSZ
            .byte $1B
            ldy DOSVEC+1
            .byte $1A
            ora TEMPCHR,X
            .byte $0B,$0B,$0B,$0B
            eor (L00A4),Y
            .byte $02
            bvc L6C1E+1
            .byte $0B,$0B,$0B,$0B,$0B,$0B,$0B
            eor (L00A4),Y
            .byte $02
L6C1E       bvc L6C2B
            .byte $0B,$0B,$0B,$0B,$0B
            eor (DSKUTL),Y
            ora L00A4,X
            .byte $03,$12
L6C2B       .byte $13
            ldy CMCMD
            .byte $12,$13
            ldy CMCMD
            .byte $12,$13
            ldy RAMLO+1
            .byte $14,$14
            ldy CASINI+1
            .byte $12,$13
            ldy TRAMSZ
            bvc L6C4A+1
            .byte $0B,$0B,$0B,$0B,$0B
            eor (L00A4),Y
            ora #$14
            .byte $14
L6C4A       ldy CASINI+1
            .byte $12,$13
            ldy BOOT
            .byte $12,$13
            ldy CASINI+1
            bvc L6C61
            .byte $0B,$0B,$0B
            eor (L00A4),Y
            .byte $03,$1A,$14
            ldy APPMHI
L6C60       .byte $12
L6C61       .byte $13
            ldy TRAMSZ
            bvc L6C71
            .byte $0B,$0B,$0B
            eor (DSKUTL),Y
            .byte $14
            ldy CASINI
            bvc L6C7B
            .byte $0B
L6C71       .byte $0B,$0B,$0B,$0B
            eor (ICBALZ),Y
            bvc L6C84
            .byte $0B,$0B
L6C7B       .byte $0B,$0B,$0B,$0B
            eor (L00A4),Y
            ora RTCLOK
            .byte $13
L6C84       bit DSKUTL
            .byte $14
            ldy CMCMD
            .byte $12,$13
            ldy DOSVEC+1
            bvc L6C9A
            .byte $0B
            eor (ICBALZ),Y
            .byte $12,$13
            bit DSKUTL
            ora L00A4,X
            .byte $07,$12
L6C9A       .byte $13
            ldy RAMLO
            bvc L6CAA
            .byte $0B,$0B,$0B,$0B,$0B
            eor (L00A4),Y
            .byte $02
            bvc L6CB4
            .byte $0B
L6CAA       .byte $0B
            eor (DSKUTL),Y
            ora L00A4,X
            .byte $07,$12,$13
            ldy RAMLO+1
L6CB4       .byte $12,$13
            ldy CMCMD
            .byte $12,$13
            ldy CASINI+1
            .byte $14
            ora ICBALZ,X
            bvc L6CCC
            .byte $0B,$0B,$0B,$0B,$0B,$0B
            eor (ICBALZ),Y
            bvc L6CD6
            .byte $0B
L6CCC       .byte $0B,$0B
            eor (L00A4),Y
            asl RTCLOK
            .byte $13
            ldy CASINI+1
            .byte $14
L6CD6       .byte $14
            ldy CASINI
            .byte $12,$13
            ldy DOSINI+1
            bvc L6CEA
            .byte $0B,$0B,$0B,$0B,$0B,$0B
            eor (L00A4),Y
            .byte $02,$14,$14
L6CEA       ldy CASINI
            .byte $12,$13
            ldy APPMHI+1
            .byte $12,$13
            ldy CASINI+1
            .byte $12,$13
            ldy CASINI
            .byte $1A,$14
            ldy CASINI
            .byte $12,$13
            ldy APPMHI+1
            .byte $12,$13
            ldy CMCMD
            .byte $1A
            ora TEMPCHR,X
            .byte $0B,$0B,$0B,$0B,$0B,$0B
            eor (L00A4),Y
            .byte $0B,$12,$13
            bit TEMPCHR
            .byte $0B,$0B,$0B,$0B
            eor (DSKUTL),Y
            asl L00A4,X
            ora RTCLOK
            .byte $13
            ldy WARMST
            bvc L6D2E
            .byte $0B,$0B,$0B,$0B
            eor (L00A4),Y
            .byte $02,$12,$13
            ldy CASINI
L6D2E       .byte $14
            asl L00A4,X
            ora RTCLOK
            .byte $13
            ldy DOSVEC
            .byte $12,$13
            ldy RAMLO+1
            .byte $12,$13
            ldy CASINI
            .byte $14
            ora L00A4,X
            ora RTCLOK
            .byte $13
            ldy WARMST
            bvc L6D53
            .byte $0B,$0B,$0B,$0B
            eor (L00A4),Y
            .byte $02,$12,$13
            ldy CASINI
L6D53       .byte $1A
            ora L00A4,X
            ora RTCLOK
            .byte $13
            ldy POKMSK
            bvc L6D66+2
            .byte $0B,$0B
            eor (DSKUTL),Y
            ora APPMHI,X
            asl L0E0E
L6D66       asl L0D0E
            ora L0D0D
            ora L0D0D
            ora L0C0C
L6D72       .byte $0C,$0C,$0C,$0C,$0C,$0C,$0B,$0B,$0B,$0B,$0B
            asl
            .byte $14
L6D7F       adc L6E6E
            .byte $6F
L6D83       .byte $87
            bit LACF5
            .byte $00,$14,$00,$14,$00,$14,$00,$14
            dey
            dey
            .byte $89
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            sta L90BB,Y
            .byte $00,$02,$00
            bpl L6E0C
            .byte $00,$03,$00
            bpl L6E11
            .byte $00,$03,$00
            bpl L6E16
            .byte $00,$03,$00
            bpl L6E19+2
            .byte $00,$03,$00
            bpl L6E1F+1
            .byte $00,$03
            dey
            dey
            .byte $89,$BB
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            cmp L8898,X
            dey
            .byte $00,$03
            ror L0000
            bpl L6DD6
L6DD6       .byte $03
            ror L0000
            bpl L6DDB
L6DDB       .byte $03
            ror L0000
            bpl L6DE0
L6DE0       .byte $03
            ror L0000
            bpl L6DE5
L6DE5       .byte $03
            ror L0000
            bpl L6D72
            dey
            .byte $89
            cmp L9999,X
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            sta L98BB,Y
            dey
            dey
            .byte $00
            bpl L6E66
            .byte $00,$03,$00
            bpl L6E6A+1
            .byte $00,$03,$00
            bpl L6E6E+2
            .byte $00,$03
L6E0C       .byte $00
            bpl L6E75
            .byte $00,$03
L6E11       .byte $00
            bpl L6E78+2
            .byte $00,$03
L6E16       dey
            dey
            .byte $89
L6E19       sta L9999,Y
            sta L9999,Y
L6E1F       sta L9999,Y
            sta L9999,Y
            sta L98DD,Y
            dey
            dey
            .byte $00,$14,$00,$14,$00,$14,$00,$14,$00,$14
            dey
            dey
            .byte $89
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            .byte $9B
            lda L0090,Y
            .byte $02,$00,$0F
            asl FKDEF
            .byte $00,$03,$00
            asl L1501
            eor (L0000),Y
            .byte $03,$00,$0B
            ora (BRKKEY),Y
            ora (L0000),Y
            asl L0000
            .byte $07
            ora (BRKKEY,X)
            ora (POKMSK),Y
            .byte $00
            ora #$00
            .byte $04
L6E66       ora (BRKKEY),Y
            ora (L0000),Y
L6E6A       ora L8888
            .byte $89
L6E6E       sta L9999,Y
            sta L9999,Y
            tya
L6E75       sta L9999,Y
L6E78       sta LBB99,Y
            sta L8898,Y
            dey
            .byte $00
            ora L1101
            eor POKMSK,X
            .byte $00,$03,$00
            asl
            ora (BRKKEY),Y
            ora (L0000),Y
            .byte $07,$00
            asl NGFLAG
            ora (BRKKEY),Y
            bpl L6E95
L6E95       asl
            .byte $00,$03
            ora (RTCLOK+1),Y
            and (L0000),Y
            asl L0400
            asl FKDEF
            .byte $00
            asl L8888
            .byte $89
            sta LD99D,Y
            sta L9998,Y
            sta L9999,Y
            sta L9B99,Y
            lda L9899,Y
            dey
            dey
            .byte $00
            asl L6006
            .byte $00,$04,$00,$0C
            ora (BRKKEY,X)
            ora HOLD1,X
            bpl L6EC5
L6EC5       .byte $03,$00
            ora #$01
            ora (BRKKEY),Y
            ora (POKMSK),Y
            .byte $00
            asl L0000
            asl NGFLAG
            ora (BRKKEY),Y
            ora (POKMSK),Y
            .byte $00
            ora #$00
            ora BRKKEY
            ora (POKMSK),Y
            .byte $00,$0C
            dey
            dey
            .byte $89
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            sta L9899,Y
            dey
            dey
            .byte $00,$14,$00,$14,$00,$14,$00,$14,$00,$14
            dey
            dey
            .byte $89
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            sta L0090,Y
            asl L0000
            .byte $14,$00,$14,$00,$14,$00,$14,$00,$14
            dey
            dey
            .byte $89
            sta LBB99,Y
            sta L9999,Y
            .byte $00,$02
            sta L9999,Y
            sta LB99B,Y
            tya
            dey
            dey
            .byte $00
            ora MLTTMP
            .byte $00
            ora #$06
            rts
            .byte $00,$03,$00
            ora MLTTMP
            .byte $00
            ora #$06
            rts
            .byte $00,$03,$00
L6F3E       ora MLTTMP
            .byte $00
            ora #$06
            rts
            .byte $00,$03,$00
            ora MLTTMP
            .byte $00
            ora #$06
            rts
            .byte $00,$03,$00
            ora MLTTMP
            .byte $00
            ora #$06
            rts
            .byte $00,$03
            dey
            dey
            .byte $89,$BB
            sta L99DD,Y
            sta L0099,Y
            .byte $02
            sta L9999,Y
            .byte $BB
            sta L98D9,X
            dey
            dey
            .byte $00,$03
            ror L0000
            asl
            ror L0000
            ora L0000
            .byte $03
            ror L0000
            asl
            ror L0000
            ora L0000
            .byte $03
            ror L0000
            asl
            ror L0000
            ora L0000
            .byte $03
            ror L0000
            asl
            ror L0000
            ora L0000
            .byte $03
            eor BRKKEY,X
            bpl L6F92
L6F92       php
            ror L0000
            ora L0088
            dey
            .byte $89
            ora #$99
            sta L9999,Y
            sta L9999,Y
            sta L9999,Y
            cmp L9999,X
            tya
            dey
            dey
            .byte $00,$14,$00,$14,$00,$14,$00,$14,$00,$14,$00,$03
            ora (RTCLOK+1),Y
            and (L0000),Y
            ora (BRKKEY,X)
            ora (BUFRHI),Y
            ora (BRKKEY),Y
            .byte $00
            ora (RTCLOK+1,X)
            and (BRKKEY),Y
            ora (L0000),Y
            .byte $03,$00,$04
            asl FKDEF
            .byte $00,$03
            ror L0000
            .byte $03,$04
            rti
            .byte $00
            ora L0000
            .byte $04
            asl FKDEF
            .byte $00,$02
            ora (COLCRS,X)
            .byte $33
            ora (POKMSK),Y
            .byte $00,$07,$00,$04,$04
            rti
            .byte $00,$04
            ror L0000
            ora (NGFLAG,X)
            ora (BRKKEY),Y
            bpl L6FF0
L6FF0       .byte $04,$00
            asl
            ror L0000
            .byte $03
            ora (RTCLOK+1),Y
            and (L0000),Y
            .byte $03,$00,$04
            ora (BRKKEY),Y
            .byte $13
            and (NGFLAG),Y
            ora (COLCRS),Y
            ora (BRKKEY),Y
            .byte $00,$02
            asl FKDEF
            .byte $00,$03,$00
            asl TRAMSZ
            rts
            .byte $00
            ora BRKKEY
            ora (TRAMSZ),Y
            rts
            .byte $00,$03,$00
            asl TRAMSZ
            rts
            .byte $00
            ora (NGFLAG,X)
            .byte $33
            ora (BRKKEY),Y
            bpl L7027
            and HOLD1,X
            .byte $00
L7027       .byte $03,$00
            asl TRAMSZ
            rts
            .byte $00,$02
            ror L0000
            .byte $03
            asl FKDEF
            .byte $00,$04,$00,$03
            ora (BUFRHI,X)
            ora (BUFADR),Y
            eor (NGFLAG),Y
            ora (COLCRS),Y
            bpl L7041
L7041       .byte $02
            asl FKDEF
            .byte $00,$04,$00,$04
L7048       ror L0000
            asl NGFLAG
            .byte $13
            and (BUFADR),Y
            .byte $73,$00,$04,$00,$04
            ror L0000
            .byte $07
            asl FKDEF
            .byte $00
            ora (FMSZPG+1,X)
            .byte $00,$04,$00,$04
            ror L0000
            .byte $07
            asl FKDEF
            .byte $00
            asl L0000
            .byte $03
            ora (COLCRS),Y
            .byte $13
            and (L0000),Y
            ora TRAMSZ
L7070       rts
            ora (BUFRHI),Y
            ora (L0000),Y
            .byte $03,$00
            ora TRAMSZ
            rts
            .byte $00,$03
            ora (RTCLOK+1,X)
            and HOLD1,X
            .byte $00
            ora (MLTTMP,X)
            .byte $00,$04,$00
            ora TRAMSZ
            rts
            .byte $00,$04
            asl FKDEF
            .byte $00,$02
            ror L0000
            .byte $04,$00
            ora TRAMSZ
            rts
            .byte $00,$03
            ora (BUFADR,X)
            eor (BRKKEY),Y
            .byte $00
            ora (MLTTMP,X)
            .byte $00,$04,$00
            ora TRAMSZ
            rts
            .byte $00,$07
            ora (COLCRS,X)
            ora (L0000),Y
            .byte $03,$00,$02
            ora (BRKKEY,X)
            ora (BUFADR),Y
            eor (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (BRKKEY),Y
            ora (POKMSK),Y
            .byte $00,$02,$00,$14,$00,$14,$00,$14,$00,$14,$00,$14
            sta L9999,Y
            sta L3099,Y
            .byte $00
            php
            and COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $00
            ora ICHIDZ
            .byte $00
            php
            jsr L0500
            .byte $00
            ora ICHIDZ
            .byte $00
            php
            jsr L0500
            .byte $00
            ora ICHIDZ
            .byte $00,$07
            ora #$99
            bmi L70F1
L70F1       .byte $04,$00
            ora ICHIDZ
            .byte $00
            php
            ora #$99
            bmi L70FB
L70FB       .byte $03,$00,$04
            ora #$99
            sta L99B9,Y
            sta L9999,Y
            sta STATUS,Y
            .byte $02
            jsr DDEVIC
            .byte $00,$07
            jsr L0500
            lda L3099,Y
            jsr DDEVIC
            .byte $00,$07
            jsr VDSLST
            .byte $03
            eor COLCRS,X
            eor COLCRS,X
            sbc L99D9,X
            sta L0099,Y
            .byte $07
            jsr VDSLST
            .byte $02,$00,$04
            jsr L0400
            .byte $00,$04,$03
            eor OLDCHR,X
            cmp LDDDD,X
            cmp L0093,X
            .byte $03
            jsr L0400
            .byte $00,$04,$02,$00
            asl L0099
            sta LDDBD,Y
            .byte $D3,$00,$04,$00,$04,$02,$00
            php
            jsr L0100
            .byte $02,$00,$04,$00,$04,$02,$00
            php
            jsr L0100
            .byte $02,$00,$04
            eor COLCRS,X
            eor COLCRS,X
            eor L3099,X
            .byte $00
            asl STATUS
            and L00D7,X
            .byte $00,$04,$00
            asl ICHIDZ
            .byte $00
            ora BFENHI
            eor TEMPCHR,X
            .byte $02,$00,$04,$00
            asl ICHIDZ
            .byte $00
            ora ICHIDZ
            .byte $00,$02,$02,$00,$04,$00
            asl ICHIDZ
            .byte $00,$04
            ora #$99
            sta TINDEX,Y
            .byte $00,$04,$00
            asl ICHIDZ
            .byte $00,$07
            sta L9999,Y
            sta L9999,Y
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            bvc L71A6
L71A6       ora L1400
L71A9       .byte $07,$07
L71AB       ora L1610
            asl
L71AF       ora L9814
            tya
            sei
L71B4       bvs L71BA
            .byte $04
L71B7       ora L0804
L71BA       php
            .byte $04
            php
L71BD       lsr ROWAC
            .byte $72,$72,$00,$3F,$33,$33,$33,$3F,$00,$00,$00,$0C,$3C,$0C,$0C,$3F
            .byte $00,$00,$00,$3F,$03,$3F
            bmi L7215+1
            .byte $00,$00,$00,$3F,$03,$3F,$03,$3F,$00,$00,$00,$33,$33,$3F,$03,$03
            .byte $00,$00,$00,$3F
            bmi L722B+1
            .byte $03,$3F,$00,$00,$00,$3F
            bmi L7233+1
            .byte $33,$3F,$00,$00,$00,$3F,$03,$03,$03,$03,$00,$00,$00,$3F,$33,$3F
            .byte $33,$3F,$00,$00,$00,$3F,$33,$3F,$03,$03,$00,$00
            eor COLCRS,X
            eor COLCRS,X
L7215       eor COLCRS,X
            eor L0000,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $00,$00
            eor COLCRS,X
            eor COLCRS,X
            eor L0000,X
            .byte $00,$00
            eor COLCRS,X
L722B       eor COLCRS,X
            .byte $00,$00,$00,$00
            eor COLCRS,X
L7233       eor L0000,X
            .byte $00,$00,$00,$00,$00,$FC,$0C,$FC
            cpy #$FC
            .byte $0F,$0C,$00
            cpy LFCCC
            .byte $0C,$0C,$0F,$0C,$00,$FC
            cpy LCCFC
            .byte $FC,$0F,$0C,$80,$80,$80
            tax
            tax
            .byte $80,$80,$80
            php
            php
            php
            tay
            tay
            php
            php
            php
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $54,$54,$54,$54,$54,$54,$54,$54
            bvc L72C3
            bvc L72C5
            bvc L72C7
            bvc L72C9
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora BUFADR,X
            ora BUFADR,X
            ora BUFADR,X
            ora BUFADR,X
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            .byte $FF,$FF,$FF,$FF,$FF
L72A6       .byte $FF,$FF,$FF,$00,$03,$03,$0F,$0F,$3F,$3F,$FF,$00
            cpy #$C0
            beq L72A6
            .byte $FC,$FC,$FF,$3C,$0F,$0F,$0C,$3F,$3C,$FC,$0F,$00,$00
L72C3       .byte $0C,$03
L72C5       .byte $0C,$00
L72C7       .byte $00,$00
L72C9       .byte $00,$00
L72CB       .byte $00,$00
            beq L72CB
            .byte $FC
            cpy #$03
            .byte $03,$0F,$0F,$3F,$F3,$03,$03
            sbc L00C5,X
            cmp (L00C0,X)
L72DD       .byte $00,$00,$00
            beq L72E2
L72E2       .byte $00,$00,$00,$00,$00,$00,$00,$00
            beq L732B
            .byte $CF,$0F,$0C,$3F,$3C,$00,$00,$00
            cpy #$C0
            .byte $00
            bvc L7349
            .byte $00,$00,$03,$03,$0C,$00,$00,$00,$FC,$FC
            beq L7335
            bmi L7337
            .byte $0C,$03
            bpl L730B
L730B       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$0F,$3F,$3F,$03
L7319       .byte $00,$00
            bmi L72DD
L731D       bmi L731F
L731F       .byte $00,$00,$5F,$53,$43,$03,$00,$00,$00,$0F
            cpy #$C0
L732B       beq L731D
            .byte $FC,$CF
            cpy #$C0
            .byte $00,$00,$00,$03
L7335       .byte $03,$00
L7337       ora RAMLO+1
            .byte $00,$0F,$FC,$F3
            beq L736F
            .byte $FC
L7340       .byte $3C,$00,$00,$00,$00,$00,$00,$00,$00
L7349       .byte $04,$00,$00,$00,$00,$00,$00,$00,$3F,$3F,$0F,$0C,$0C,$0C
L7357       bmi L7319
            .byte $00,$00
            cpy #$C0
            bmi L735F
L735F       .byte $00,$00,$00,$0F
            rol LFB3F,X
            .byte $FF,$EF
            inc LF000,X
            .byte $FC
            cpx LBFFF
L736F       .byte $FB,$FF,$FF,$3B,$3F,$3F
            asl CASFLG
            .byte $00,$EF,$FC
            ldy LF0FC,X
            beq L7340
            .byte $00,$00,$00,$00,$00,$3C,$FF,$FF,$FF,$00,$00,$00,$00,$3C,$FF,$FF
            .byte $FF,$FF,$FF,$EF,$EF,$FB,$3F,$0F,$00,$FF,$FF,$FF,$FF
L739D       .byte $FF,$FC
            beq L73A1
L73A1       .byte $00,$00,$0C,$3F,$3F,$0C
L73A7       .byte $03,$0F
            bmi L73A7
            .byte $FC
            bmi L73AE
L73AE       .byte $0C,$3F,$FF,$0F,$33,$FC,$FC
            bmi L73B7
L73B7       .byte $00,$00
            cpy L3000
            .byte $FC,$FC
            bmi L73C0
L73C0       .byte $00,$00,$03,$0F
            ora L3F3F
            .byte $37,$FF,$00
L73CA       cpy #$F0
            .byte $FC,$FC,$DC,$FC,$FC,$FF,$DF,$FF
            sbc L0F3F,X
            .byte $00,$00
            bvs L73CA+1
            beq L739D
L73DD       cpy #$00
L73DF       .byte $00,$00,$03,$0F,$0F,$0F,$0F,$0F
            ora RAMLO+1
            cpy #$F0
            beq L73DD
            beq L73DF
            bvc L7441
            .byte $3F,$3F,$FF,$FF
            ora (NGFLAG,X)
            .byte $00,$00,$FC,$FC,$FF,$FF
            rti
            rti
            .byte $00,$00,$00,$00,$00,$00,$03,$07
            and L00FD,X
            .byte $00,$3C,$FF
L740C       .byte $FF,$FF,$FF,$FF,$7C,$3F,$0F,$07
            ora RAMLO+1
            .byte $00,$00,$00,$5C,$D4,$F4,$FC,$3C,$0C,$00,$00,$00,$3C,$FF,$FF,$FF
            .byte $FF,$FF
            and.w L0000,X
            .byte $00,$00
            cpy #$D0
            .byte $5C,$7F
            and ICCOMT,X
            .byte $1F,$3F,$3C
            bmi L7438
L7438       .byte $00,$FC
            beq L740C
            bvc L748D+1
            .byte $00,$00,$00
L7441       ora COLCRS,X
            eor COLCRS,X
            eor BUFADR,X
            .byte $00,$00,$54
            eor COLCRS,X
            eor COLCRS,X
            .byte $54,$00,$00,$FF,$77
            eor COLCRS,X
            ora NGFLAG,X
            .byte $00,$00,$FF
            cmp L5554+1,X
            .byte $54
            rti
            .byte $00,$00
            ora ICCOMT
            eor OLDCHR,X
            .byte $1F
            ora L0000,X
            .byte $00,$54,$F4
            adc COLCRS,X
            .byte $D4
            bvc L7470
L7470       .byte $00
            sta L0095,X
            sta L00AA,X
            tax
            sta LOMEM,X
            .byte $80
            eor L5959,Y
            lda #$A9
            eor L0808,Y
            lsr OLDROW,X
            lsr
            lsr
            ror MLTTMP
            ror
            ror
            sta (L00A1),Y
            lda #$A9
L748D       sta LA999,Y
            lda COLCRS+1
            .byte $5A,$5A
            eor L5540+1,Y
            eor COLCRS,X
            sta BUFADR,X
            lda L00A5
            adc ADRESS+1
            adc SOUNDR
            eor COLCRS,X
            eor COLCRS,X
            lsr ZCHAIN
            ror
            ror
            eor COLCRS,X
            eor COLCRS,X
            sta L00A5,X
            lda (L00A1,X)
            ror MLTTMP
            ror
            .byte $5A
            lsr ROWCRS,X
            .byte $5A,$5A
            sta LA999,Y
            lda #$95
            lda L00A5
            adc SAVMSC+1
            eor L4159,Y
            eor COLCRS,X
            eor COLCRS,X
            eor (COLCRS),Y
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $00,$82
            txa
            dey
            dey
            tay
            tay
            tax
            .byte $00,$82
            ldx #$22
            .byte $22
            rol
            rol
            tax
            rol
            asl
            asl
            rol
            rol
            plp
            jsr LA800
            ldy #$A0
            tay
            tay
            plp
            php
            .byte $00,$00
            jsr L2222
            .byte $22
            rol
            rol
            rol
            .byte $00
            ldy #$A8
            php
            php
            asl
            asl
            tax
            .byte $00,$80,$80,$80,$80,$80,$80,$80
            asl
            .byte $02,$02
            asl
            asl
            asl
            php
            .byte $00
            tax
            tay
            tay
            tax
            tax
            asl
            .byte $02,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            php
            php
            php
            php
            asl
            asl
            asl
            .byte $00
            plp
            tax
            .byte $82,$82,$82,$82
            tax
            .byte $00
            jsr L2020
            jsr L2020
            ldy #$02
            .byte $00,$00,$02,$02,$02,$02,$00
            tax
            tax
            tax
            tax
            tax
            .byte $82,$00,$00,$80,$00,$00,$80,$80,$80,$00,$00,$00,$02,$02,$02,$02
            .byte $02,$02,$02,$00
            asl
            rol
            jsr LA020
            ldy #$AA
            .byte $00
            php
            dey
            dey
            dey
            tay
            tay
            tay
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            tax
            rol
            rol
            tax
            tax
            ldy #$80
            .byte $00
            ldy #$80
            .byte $80
            ldy #$A0
            ldy #$20
            .byte $00
            eor L00A9,X
            eor L95A9,Y
            lda #$5A
            eor L5554+1,Y
            eor COLCRS,X
            eor COLCRS,X
            sta L0095,X
            eor L5A58+1,Y
L7594       eor COLCRS,X
            eor COLCRS,X
            eor L0095,X
            sta L0095,X
            lda #$99
            sta LA999,Y
            .byte $00
            bmi L7594
            bmi L75D4+2
            .byte $FC,$0F,$0C,$00,$00,$00,$00,$00,$00
            cpy #$C0
            .byte $0C,$0C,$0F,$00,$00,$00,$00,$00
            cpy #$C0
            cpy #$FC
            cpy LCCCC
            .byte $FC
L75C1       .byte $57,$5F,$7F,$7F,$77,$77,$7F,$7F
            cmp LFDFD,X
            sbc LDDDD,X
            sbc L57F5,X
            .byte $5F,$5F
L75D4       eor L557C+1,X
            eor COLCRS,X
            cmp L00D5,X
            sbc L00F5,X
            adc ENDPT+1,X
            adc INSDAT,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $77,$7F,$7F,$7F
            eor COLCRS,X
            eor COLCRS,X
            cmp L00F5,X
            sbc L77FD,X
            .byte $77,$7F,$5F,$57,$57,$5F,$5F
            cmp LFDDD,X
            sbc LF5D5,X
            sbc ENDPT+1,X
            eor L5D5D,X
            adc L5554+1,X
            eor COLCRS,X
            adc L5554+1,X
            eor COLCRS,X
            eor COLCRS,X
            eor L00F0,X
            .byte $C3,$CF,$CF,$CF,$FF,$FF,$FF
L7619       .byte $0F,$C3,$F3
L761C       .byte $F3,$F3,$FF,$FF,$FF,$3F,$0F,$0F,$3F,$3F,$3C
            bmi L7619
            .byte $FC
            beq L761C
            .byte $FC,$FC,$3C,$0C,$0F,$3C
            bmi L7667
            .byte $33,$33,$3F,$3F
L7638       .byte $3F,$03
            beq L7638
            .byte $FC,$FC,$FF,$FF,$FF
            cpy #$00
            cpy #$C0
            cpy #$C0
            cpy #$C0
            .byte $0F,$03,$03,$0F,$0F,$0F,$0C,$3C,$FF,$FC,$FC,$FF,$FF,$0F,$03,$03
            .byte $00,$00,$00,$00,$00,$00,$00
            cpy #$0F
            .byte $0C,$0C,$0C,$0C,$0F
L7667       .byte $0F,$0F
L7669       .byte $00,$3C,$FF,$FF,$FF,$FF,$FF,$FF
            beq L76A3
            bmi L76A3+2
            bmi L7667
L7677       beq L7669
            .byte $03,$00,$00,$03,$03,$03,$03,$0F,$FF,$FF,$FF,$FF,$FF,$C3,$00,$00
            cpy #$00
            .byte $00
            cpy #$C0
            cpy #$C0
            beq L7695
            .byte $03,$03,$03
L7695       .byte $03,$03,$03,$03
            cpy #$0F
            .byte $3F,$3F,$3F,$FF,$FF,$FF,$3C,$00
L76A3       cpy LCCCC
            .byte $FC,$FC,$FC,$00,$00,$00,$00,$00
L76AE       .byte $00,$00,$03,$FF,$3F,$3F,$FF,$FF
            beq L7677+1
            cpy #$F0
            cpy #$C0
            beq L76AE
            beq L76F0
L76C0       .byte $3C
            eor L00FD,X
            eor LD5FD,X
            sbc L5D5F,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            cmp L00D5,X
            eor L5F5B+2,X
            eor COLCRS,X
            eor COLCRS,X
            eor L00D5,X
            cmp L00D5,X
            sbc LDDDD,X
            cmp LFFFD,X
            .byte $0F,$03,$03,$00,$00,$00,$00,$00,$00,$00
            cpy #$0F
            .byte $0C,$0C
L76F0       .byte $0C,$0C,$0F
L76F3       .byte $0F,$0F
L76F5       .byte $00,$3C,$FF,$FF,$FF,$FF,$FF,$FF
            beq L772F
            bmi L772F+2
            bmi L76F3
L7703       beq L76F5
            .byte $03,$00,$00,$03,$03,$03,$03,$0F,$FF,$FF,$FF,$FF,$FF,$C3,$00,$00
            cpy #$00
            .byte $00
            cpy #$C0
            cpy #$C0
            beq L7721
            .byte $03,$03,$03
L7721       .byte $03,$03,$03,$03
            cpy #$0F
            .byte $3F,$3F,$3F,$FF,$FF,$FF,$3C,$00
L772F       cpy LCCCC
            .byte $FC,$FC,$FC,$00,$00,$00,$00,$00
L773A       .byte $00,$00,$03,$FF,$3F,$3F,$FF,$FF
            beq L7703+1
            cpy #$F0
            cpy #$C0
            beq L773A
            beq L777A+2
            .byte $3C
            eor L00FD,X
            eor LD5FD,X
            sbc L5D5F,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            cmp L00D5,X
            eor L5F5B+2,X
            eor COLCRS,X
            eor COLCRS,X
            eor L00D5,X
            cmp L00D5,X
            sbc LDDDD,X
            cmp L2FFD,X
            sbc (COUNTR+1),Y
            .byte $12
            cmp (BUFRLO),Y
L7773       lsr.w RTCLOK
            .byte $00,$00,$00,$00
L777A       jsr L2020
            jsr L2020
            bvc L77D2
            bvc L77D4
            bvc L77D5+1
            rts
            rts
            rts
            rts
            rts
            rts
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$23
            rts
            rts
            rts
            rts
            rts
            bvc L77FE
            rts
            rts
            rts
            rts
            bvc L77A4
L77A4       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$23,$00,$00,$00,$00,$00,$00
            rti
            bvc L7813
            bvc L7815
            rts
            bvc L7818
            bvc L781A
            bvc L781C
            rts
            rts
            bvc L7820
            rts
            .byte $1F
L77D2       .byte $07,$F3
L77D4       .byte $53
L77D5       ora (L0000),Y
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            rts
            .byte $00
            sec
            .byte $00
L77FD       .byte $04
L77FE       .byte $F9,$77
;
            org $02E2
;
            .word L3800
;
            org $02E0
;
            .word L3800
;
         
