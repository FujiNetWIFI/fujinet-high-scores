; 
            icl 'Qix.inc'
;
; Start of code
;
            org $2020
;
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
L203A       .byte $20
;
            org $0244
;
            .byte $01
				;
	icl 'hiscore.asm'
	
            org $6000
;
L6000       jmp L6109
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
            lda #$C0
            sta IRQEN
            lda #$03
            sta SKCTL
            inc CASINI
            bne L6020
            inc RAMLO
            inc NGFLAG
L6020       lda TRAMSZ
            sta DLISTH
            lda RAMLO+1
            sta DLISTL
            lda CMCMD
            sta DMACLT
            ldy RAMLO
            bpl L6037
            ldy #$80
            sty RAMLO
L6037       ldx #$08
L6039       lda WARMST,X
            cpy #$80
            bcc L6043
            eor NGFLAG
            and #$F6
L6043       sta COLPM0,X
            dex
            bpl L6039
            ldx #$03
            lda #$60
L604D       sta BRKKEY,X
            dex
            bpl L604D
            lda #$08
            sta CONSOL
            lda CONSOL
            cmp #$07
            bne L6075
            lda SAVADR
            beq L60A1
            lda KBCODE
            cmp #$21
            bne L606D
            lda #$08
            bne L608F
L606D       cmp #$0C
            bne L6075
            lda #$04
            bne L608F
L6075       lda CONSOL
            lsr
            bcs L607F
            lda #$0C
            bne L608F
L607F       lsr
            bcs L6086
            lda #$01
            bne L608F
L6086       lsr
            bcs L608D
            lda #$03
            bne L608F
L608D       lda #$00
L608F       ldx SAVADR+1
            bne L6099
            sta SAVADR
            ldx #$20
            stx SAVADR+1
L6099       cmp #$08
            bne L60A1
            ldx #$0A
            stx SAVADR+1
L60A1       lda HOLD1
            bne L60CC
            lda PORTA
            lsr
            bcs L60B1
            lda #$01
            sta RTCLOK
            bne L60F1
L60B1       lsr
            bcs L60BA
            lda #$C6
            sta RTCLOK
            bne L60F1
L60BA       lsr
            bcs L60C3
            lda #$01
            sta BRKKEY
            bne L60F1
L60C3       lsr
            bcs L60F1
            lda #$C6
            sta BRKKEY
            bne L60F1
L60CC       lda PORTA
            asl
            bcs L60D8
            lda #$C6
            sta RTCLOK+1
            bne L60F1
L60D8       asl
            bcs L60E1
            lda #$01
            sta RTCLOK+1
            bne L60F1
L60E1       asl
            bcs L60EA
            lda #$C6
            sta RTCLOK+2
            bne L60F1
L60EA       asl
            bcs L60F1
            lda #$01
            sta RTCLOK+2
L60F1       lda L0000
            and #$3F
            sta L0000
            lda #$C0
            sta IRQEN
            lda #$03
            sta SKCTL
            lda #$00
            sta L6FFF
            jmp (VVBLKD)
L6109       sei
            cld
            lda #$00
            tax
            dex
            txs
            inx
            txa
L6112       sta L0000,X
            inx
            bne L6112
            ldy #$00
            lda #$03
            sta L00C1
            lda #$00
L611F       sta (L00C0),Y
            iny
            bne L611F
            inc L00C1
            ldx L00C1
            cpx #$40
            bne L611F
            lda #$00
            sta L00C1
            sta L6FFF
            lda #$E0
            sta CHBASE
            ldy #$0E
            ldx #$60
            lda #$06
            jsr SETVBV
            lda #$C0
            sta L0000
            sta NMIEN
            sta IRQEN
            sta POKMSK
            lda #$03
            sta SKCTL
            lda #$00
            sta VKEYBD
            lda #$68
            sta VKEYBD+1
            lda #$34
            sta PACTL
            cli
            jmp L7000
;
            org $6800
;
            txa
            pha
            tya
            pha
            lda KBCODE
            cmp #$21
            bne L680F
            lda #$08
            bne L6819
L680F       cmp #$0C
            bne L6817
            lda #$04
            bne L6819
L6817       lda #$00
L6819       jmp L7B59
;
            org $7000
;
L7000       jsr L7597
            jsr L7CBF+1
            jmp L7010
L7009       jsr L7216
L700C       lda #$00
            sta SAVMSC
L7010       sta RAMLO
            jsr L75F4
            jmp L701B
L7018       jsr L762D
L701B       jsr L84AE
            jsr L751A
L7021       jsr L886E
            lda CASINI
            clc
            adc #$02
            sta L00D0
            lda CASINI
            clc
            adc #$05
            sta L00D1
            lda CASINI
            clc
            adc #$03
            sta L00D2
            lda CASINI
            clc
            adc #$03
            sta L00D3
            lda CASINI
            clc
            adc #$30
            sta L00D4
L7047       jsr L71C5
            lda SAVMSC
            beq L705C
            lda SAVADR
            ldx #$00
            stx SAVADR
            cmp #$04
            beq L7009
            cmp #$0C
            beq L700C
L705C       lda #$01
            sta L00CD
            sta L00B8
            lda CASINI
            cmp L00D0
            bpl L707E
            cmp L00D1
            bpl L70B4
            cmp L00D2
            bpl L70ED
L7070       cmp L00D3
            bmi L7077
            jmp L7114
L7077       cmp L00D4
            bmi L7047
            jmp L7136
L707E       lda L0088
            and #$10
            beq L7087
            jmp L73C5
L7087       jsr L7A03
            jsr L7E42
            lda L0088
            and #$02
            bne L7099
            jsr L752F
            jmp L7047
L7099       jsr L72B0
            lda L0088
            and #$04
            beq L70A5
            jmp L7317
L70A5       lda L008B
            cmp L009D
            bcs L70B1
            jsr L752F
            jmp L7047
L70B1       jmp L737E
L70B4       jsr L930E
            lda LOGCOL
            cmp #$01
            bne L70C7
            lda CASINI
            clc
            adc #$04
            sta L00D1
            jmp L7047
L70C7       cmp #$02
            bne L70D5
            lda CASINI
            clc
            adc #$03
            sta L00D1
            jmp L7047
L70D5       cmp #$03
            bne L70E3
            lda CASINI
            clc
            adc #$03
            sta L00D1
            jmp L7047
L70E3       lda CASINI
            clc
            adc #$05
            sta L00D1
            jmp L7047
L70ED       jsr L9132
            lda L00A8
            bne L70FE
            lda CASINI
            clc
            adc #$03
            sta L00D2
            jmp L7105
L70FE       lda CASINI
            clc
            adc #$02
            sta L00D2
L7105       jsr L752F
            lda L0088
            and #$10
            beq L7111
            jmp L73C5
L7111       jmp L7047
L7114       lda L0088
            and #$01
            beq L7123
            jsr L8AA1
            jsr L756B
            jmp L7126
L7123       jsr L8A9C
L7126       lda CASINI
            clc
            adc #$03
            sta L00D3
            lda L0088
            and #$10
            beq L7111
            jmp L73C5
L7136       lda L0088
            and #$40
            bne L7185
            lda LOGCOL
            cmp #$01
            bne L714C
            lda CASINI
            clc
            adc #$40
            sta L00D4
            jmp L7165
L714C       cmp #$02
            bne L715A
            lda CASINI
            clc
            adc #$30
            sta L00D4
            jmp L7165
L715A       cmp #$03
            bne L7185
            lda CASINI
            clc
            adc #$20
            sta L00D4
L7165       jsr L8473
            lda L0088
            and #$20
            beq L7185
            jsr L8FBF
            beq L717C
            lda L0088
            ora #$40
            sta L0088
            jmp L7047
L717C       jsr L84AE
            lda L0088
            eor #$20
            sta L0088
L7185       jmp L7047
L7188	    jsr hiscore	
;; L7188       jsr L7B71
            lda #$04
            sta CONSOL
            lda #$01
            sta L00CD
            lda #$00
            sta L00B8
            jsr L751A
L719B       lda CASINI
            clc
            adc #$04
            sta ICAX6Z
L71A2       jsr L71C5
            lda ICAX6Z
            cmp CASINI
            bpl L71B1
            jsr L930E
            jmp L719B
L71B1       lda SAVADR
            ldx #$00
            stx SAVADR
            cmp #$04
            bne L71BE
            jmp L7009
L71BE       cmp #$0C
            bne L71A2
            jmp L700C
L71C5       pha
            txa
            pha
            lda L0088
            and #$80
            beq L71F5
L71CE       lda SAVADR
            ldx #$00
            stx SAVADR
            cmp #$08
            bne L71DF
            lda BUFCNT
            sta CASINI
            jmp L71F5
L71DF       cmp #$0C
            bne L71EA
            pla
            pla
            pla
            pla
            jmp L700C
L71EA       cmp #$04
            bne L71CE
            pla
            pla
            pla
            pla
            jmp L7009
L71F5       lda L0088
            and #$7F
            sta L0088
            lda SAVADR
            cmp #$08
            bne L7212
            lda L0088
            ora #$80
            sta L0088
            lda #$00
            sta SAVADR
            lda CASINI
            sta BUFCNT
            jmp L71CE
L7212       pla
            tax
            pla
            rts
L7216       lda #$00
            sta HOLD1
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            lda #$01
            sta SAVMSC
            ldx #$20
L722C       lda L8E4A,X
            sta L20FF,X
            dex
            bne L722C
            ldx #$A0
L7237       lda L8E69,X
            sta L211F,X
            dex
            bne L7237
            lda #$21
            sta TRAMSZ
            lda #$00
            sta RAMLO+1
            jsr L78BB
L724B       sta RAMLO
            lda LOGCOL
            asl
            asl
            asl
            asl
            tax
            ldy #$50
            lda #$10
            sta ICHIDZ
L725A       lda L8F0A,X
            sta L2120,Y
            inx
            iny
            dec ICHIDZ
            bne L725A
            lda TEMP
            asl
            asl
            asl
            asl
            tax
            ldy #$70
            lda #$10
            sta ICHIDZ
L7273       lda L8F49+1,X
            sta L2120,Y
            inx
            iny
            dec ICHIDZ
            bne L7273
L727F       lda SAVADR
            ldx #$00
            stx SAVADR
            cmp #$0C
            beq L72AF
            cmp #$04
            bne L7290
            jmp L7009
L7290       cmp #$03
            beq L729B
            cmp #$01
            beq L72A6
            jmp L727F
L729B       ldx LOGCOL
            inx
            txa
            and #$03
            sta LOGCOL
            jmp L724B
L72A6       lda TEMP
            eor #$01
            sta TEMP
            jmp L724B
L72AF       rts
L72B0       lda #$00
            sta L00CD
            sta L00B8
            jsr L8A88
            lda L0089
            bne L72BF
            inc L0089
L72BF       lda #$00
            sta MLTTMP+1
            lda L0087
            cmp #$03
            bne L72D3
            lda L9B5C
            sta RAMTOP
            lda #$04
            jmp L72DA
L72D3       lda L9B62+1
            sta RAMTOP
            lda #$08
L72DA       sta MLTTMP
            lda #$00
            sta COLRSH
            sta DRKMSK
            jsr L8079
            lda #$00
            sta MLTTMP
            sta AUDC3
            sta AUDCTL
            jsr L78CC
            lda L0088
            eor #$02
            sta L0088
            lda CASINI
            sta L00D1
            clc
            adc #$02
            sta L00D0
            lda #$00
            sta OLDCOL+1
            jsr L7524
            lda L0084
            sta OLDCHR
            lda OLDADR
            sta OLDADR+1
            lda OLDROW
            adc SAVMSC+1
            sta OLDCOL
            rts
L7317       lda #$00
            sta L00B8
            sta MLTTMP+1
            lda #$20
            sta MLTTMP
            jsr L751A
            inc L009E
            sed
            clc
            lda L009F
            adc #$01
            sta L009F
            cld
            inc L00FC
            jsr L92FD
            jsr L9479
            jsr L8A88
            jsr L7E3D
            ldx #$18
L733F       lda L8DB3,X
            sta L20FF,X
            dex
            bne L733F
            ldx #$80
L734A       lda L8DCA,X
            sta L211F,X
            dex
            bne L734A
            lda #$01
            sta DINDEX
            lda #$9F
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$6A
            sta RMARGN
            lda #$21
            sta ROWCRS
            jsr L7961
            lda #$21
            sta TRAMSZ
            lda #$00
            sta RAMLO+1
L7372       jsr L751A
            jsr L751A
            jsr L7CC4
            jmp L7018
L737E       lda SAVMSC
            bne L73BC
            lda #$00
            sta L00B8
            sta MLTTMP+1
            lda #$20
            sta MLTTMP
            jsr L751A
            jsr L742F
            lda #$01
            sta L009E
            sta L009F
            jsr L751A
            inc L00FC
            lda L00FC
            cmp #$02
            bmi L73BC
            ldx #$18
L73A5       lda L8D41,X
            sta L20FF,X
            dex
            bne L73A5
            ldx #$80
L73B0       lda L8D53,X
            sta L211F,X
            dex
            bne L73B0
            jsr L751A
L73BC       jsr L751A
            jsr L7CC4
            jmp L7018
L73C5       lda #$00
            sta L00B8
            jsr L7E3D
            jsr L8A88
            jsr L92FD
            jsr L84DB
            jsr L7524
            jsr L810B
            lda L0092
            sta LOMEM
            lda L0093
            sta LOMEM+1
            lda L0094
            sta L0082
            jsr L8047
            dec L009C
            dec LMARGN
            bpl L73FD
            lda SAVMSC
            beq L73FA
            jsr L7CBF+1
            jmp L7010
L73FA       jmp L7188
L73FD       lda L009C
            cmp LMARGN
            bpl L7406
            jsr L77AE
L7406       jsr L79CF
            lda #$00
            sta L0088
            sta L008C
            lda #$00
            sta L0084
            lda #$01
            sta L0085
            lda #$03
            sta L0087
            lda OLDCHR
            and #$01
            beq L7428
            lda OLDROW
            sta OLDCOL
            jmp L701B
L7428       lda SAVMSC+1
            sta OLDCOL
            jmp L701B
L742F       jsr L751A
            ldx #$18
L7434       lda L8CAB,X
            sta L20FF,X
            dex
            bne L7434
            ldx #$80
L743F       lda L8CC1,X
            sta L211F,X
            dex
            bne L743F
            lda #$01
            sta DINDEX
            lda #$8B
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$38
            sta RMARGN
            lda #$21
            sta ROWCRS
            jsr L7961
            lda #$01
            sta DINDEX
            lda #$9D
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$58
            sta RMARGN
            lda #$21
            sta ROWCRS
            jsr L7961
            sed
            lda L008B
            sec
            sbc L009D
            sta ICHIDZ
            cld
            lda #$01
            sta DINDEX
            lda #$9F
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$74
            sta RMARGN
            lda #$21
            sta ROWCRS
            jsr L7961
            lda #$01
            sta DINDEX
            lda #$20
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$6C
            sta RMARGN
            lda #$21
            sta ROWCRS
            jsr L7961
            sed
            ldx L009E
            lda #$00
            sta L0099
            sta L009A
L74B6       lda ICHIDZ
            and #$0F
            asl
            asl
            asl
            asl
            clc
            adc L009A
            sta L009A
            lda L0099
            adc #$00
            sta L0099
            lda ICHIDZ
            and #$F0
            lsr
            lsr
            lsr
            lsr
            adc L0099
            sta L0099
            dex
            bne L74B6
            cld
            lda #$03
            sta DINDEX
            lda #$99
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$8A
            sta RMARGN
            lda #$21
            sta ROWCRS
            jsr L7961
            jsr L92FD
            jsr L9479
            jsr L8A88
            jsr L7E3D
            lda #$21
            sta TRAMSZ
            lda #$00
            sta RAMLO+1
            sed
            lda L0097
            clc
            adc L009A
            sta L0097
            lda L0099
            adc L0096
            sta L0096
            cld
            jsr L751A
            jsr L751A
            rts
L751A       lda CASINI
            clc
            adc #$50
L751F       cmp CASINI
            bpl L751F
            rts
L7524       ldx L0084
            dex
            txa
            eor #$02
            tax
            inx
            stx L0084
            rts
L752F       ldx #$03
L7531       lda L1220,X
            cmp LOMEM+1
            bne L7546
            lda L1210,X
            cmp LOMEM
            bne L7546
            lda L1230,X
            cmp L0082
            beq L754A
L7546       dex
            bpl L7531
            rts
L754A       lda L0088
            ora #$10
            sta L0088
            lda L00A8
            beq L755A
            lda L0085
            cmp #$02
            beq L756A
L755A       lda LOMEM
            and #$DF
            sta L0092
            lda LOMEM+1
            sta L0093
            lda L0082
            and #$FE
            sta L0094
L756A       rts
L756B       lda L1224
            cmp LOMEM+1
            bne L7586
            lda L1214
            cmp LOMEM
            bne L7586
            lda L1234
            cmp L0082
            bne L7586
            lda L0088
            ora #$10
            sta L0088
L7586       rts
L7587       jsr L7070
            sed
            sed
            bvs L75FD+1
            jsr L0000
            .byte $00,$00,$00,$00,$00,$00
L7597       sei
            lda #$00
            sta NMIEN
            sta DMACLT
            lda #$7C
            sta VVBLKD
            lda #$9B
            sta VVBLKD+1
            lda #$51
            sta L6602
            lda #$7B
            sta L6603
            lda #$53
            sta L6600
            lda #$7B
            sta L6601
            lda #$01
            sta LOGCOL
            lda #$00
            sta TEMP
            lda #$11
            sta PRIOR
            lda #$01
            sta SIZEP0
            sta SIZEP1
            lda #$00
            sta SIZEP2
            sta SIZEP3
            sta SIZEM
            lda #$10
            sta PMBASE
            lda #$9C
            sta CHBASE
            lda #$C0
            sta L0000
            sta IRQEN
            sta NMIEN
            cli
            rts
L75F4       lda #$00
            sta CMCMD
            sta GRACTL
            sta HOLD1
L75FD       lda #$00
            sta LMARGN
            lda TEMP
            beq L7613
            inc LMARGN
            jsr L780C
            jsr L769B
            jsr L7701
            jsr L780C
L7613       jsr L769B
            jsr L762D
            lda #$02
            sta SKCTL
            lda #$04
            sta CONSOL
            lda #$3D
            sta CMCMD
            lda #$03
            sta GRACTL
            rts
L762D       jsr L7701
            jsr L78A4
            lda #$00
            sta MLTTMP
            sta AUDC3
            sta AUDCTL
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta HPOSM0
            sta HPOSM1
            sta HPOSM2
            sta HPOSM3
            lda #$FF
            sta FMSZPG+5
            sta ZCHAIN+1
            lda #$5C
            sta VDSLST
            lda #$96
            sta VDSLST+1
L7665       lda #$00
            sta RAMLO+1
            lda #$20
            sta TRAMSZ
            lda SAVMSC
            bne L768F
            lda #$01
            sta DINDEX
            lda #$9D
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$8A
            sta RMARGN
            lda #$20
            sta ROWCRS
            jsr L7961
            jsr L78CC
            jsr L79CF
            rts
L768F       ldx #$40
L7691       lda L8C6B,X
            sta L207F,X
            dex
            bne L7691
            rts
L769B       lda #$00
            ldx #$80
L769F       sta COUNTR+1,X
            dex
            bne L769F
            lda #$01
            sta L009E
            sta L009F
            lda #$04
            sta L009C
            clc
            adc LMARGN
            sta LMARGN
            lda #$01
            sta L00CD
            jsr L7879
            lda LOGCOL
            cmp #$01
            beq L76D5
            cmp #$02
            beq L76E2
            cmp #$03
            beq L76F1
            lda #$00
            sta ADRESS+1
            sta L00CE
            lda #$50
            sta L009D
            jmp L7700
L76D5       lda #$00
            sta ADRESS+1
            sta L00CE
            lda #$65
            sta L009D
            jmp L7700
L76E2       lda #$01
            sta ADRESS+1
            lda #$02
            sta L00CE
            lda #$75
            sta L009D
            jmp L7700
L76F1       lda #$01
            sta ADRESS+1
            lda #$04
            sta L00CE
            lda #$85
            sta L009D
            jmp L7700
L7700       rts
L7701       jsr L9479
            jsr L7E3D
            jsr L8B26
            lda L00FC
            cmp #$02
            bmi L7715
            lda #$01
            sta L10A8
L7715       lda #$01
            sta L1048
            lda #$80
            sta L1050
            sta L1051
            sta L10B0
            sta L10B1
            lda #$70
            sta L1052
            sta L1053
            sta L10B2
            sta L10B3
            lda #$00
            sta L00A0
            sta L00A1
            sta L00A2
            sta L00A3
            sta L00A4
            lda #$00
            sta L008B
            sta L008C
            sta L0088
            lda PAL
            cmp #$0F
            beq L775C
            lda #$76
            sta FKDEF+1
            lda #$16
            sta PALNTS
            jmp L7764
L775C       lda #$A6
            sta FKDEF+1
            lda #$26
            sta PALNTS
L7764       lda #$00
            sta POKMSK
            lda #$0E
            sta DOSINI
            lda PALNTS
            sta DOSINI+1
            lda #$34
            sta APPMHI
            lda #$00
            sta L00F9
            lda #$94
            sta L00F6
            lda #$34
            sta L00F7
            lda #$DA
            sta L00F8
            lda L00FC
            cmp #$01
            bne L7794
            lda L00CE
            clc
            adc #$02
            sta L00CE
            jmp L77AD
L7794       cmp #$02
            bne L77A2
            lda L00CE
            sec
            sbc #$02
            sta L00CE
            jmp L77AD
L77A2       cmp #$03
            bne L77AD
            lda L00CE
            clc
            adc #$02
            sta L00CE
L77AD       rts
L77AE       lda TEMP
            beq L780B
            ldx #$18
L77B4       lda L8F68+1,X
            sta L20FF,X
            dex
            bne L77B4
            lda HOLD1
            beq L77D4
            ldx #$20
L77C3       lda L8F7E,X
            sta L211F,X
            dex
            bne L77C3
            lda #$04
            sta CONSOL
            jmp L77E4
L77D4       ldx #$20
L77D6       lda L8F9E,X
            sta L211F,X
            dex
            bne L77D6
            lda #$05
            sta CONSOL
L77E4       lda #$21
            sta TRAMSZ
            lda #$00
            sta RAMLO+1
            jsr L78BB
            jsr L780C
            jsr L751A
            ldx #$01
            lda L00FC
            cmp #$02
            bmi L7800
            stx L10A8
L7800       stx L1048
            lda #$00
            sta RAMLO+1
            lda #$20
            sta TRAMSZ
L780B       rts
L780C       lda TEMP
            beq L7878
            lda #$30
            sta ICDNOZ
            lda #$04
            sta ICSTAZ
            lda #$00
            sta ICHIDZ
            sta ICCOMZ
            ldy #$00
L7820       lda (ICHIDZ),Y
            tax
            lda (ICCOMZ),Y
            sta (ICHIDZ),Y
            txa
            sta (ICCOMZ),Y
            iny
            bne L7820
            inc ICDNOZ
            inc ICSTAZ
            lda ICSTAZ
            cmp #$10
            bne L7820
            lda #$10
            sta ICDNOZ
            lda #$11
            sta ICSTAZ
            lda #$00
            sta ICHIDZ
            sta ICCOMZ
            ldy #$00
L7847       lda (ICHIDZ),Y
            tax
            lda (ICCOMZ),Y
            sta (ICHIDZ),Y
            txa
            sta (ICCOMZ),Y
            iny
            bne L7847
            lda #$00
            sta ICHIDZ
            sta ICDNOZ
            sta ICCOMZ
            lda #$02
            sta ICSTAZ
            ldy #$80
L7862       lda (ICHIDZ),Y
            tax
            lda (ICCOMZ),Y
            sta (ICHIDZ),Y
            txa
            sta (ICCOMZ),Y
            iny
            bne L7862
            lda HOLD1
            eor #$01
            sta HOLD1
            jsr L78CC
L7878       rts
L7879       ldx #$01
L787B       lda #$30
            sta BFENLO,X
            sta NOCKSM,X
            lda #$70
            sta BUFRLO,X
            sta XMTDON,X
            lda #$B0
            sta STATUS,X
            sta BUFRFL,X
            lda #$40
            sta LTEMP,X
            sta FTYPE,X
            dex
            bpl L787B
            lda #$00
            sta CONSOL
            lda CASINI
            adc #$14
L789F       cmp CASINI
            bpl L789F
            rts
L78A4       ldx #$00
            lda #$00
L78A8       sta L1400,X
            sta L1500,X
            sta L1600,X
            sta L1700,X
            sta L1300,X
            inx
            bne L78A8
            rts
L78BB       lda #$00
            sta L1048
            sta L10A8
            sta ADRESS
            jsr L8A88
            jsr L92FD
            rts
L78CC       lda SAVMSC
            bne L793D
            lda L0095
            and #$0F
            sta L0095
            lda HOLD1
            bne L790F
            lda #$04
            sta DINDEX
            lda #$95
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$8E
            sta RMARGN
            lda #$20
            sta ROWCRS
            jsr L7961
            lda TEMP
            beq L793D
            lda #$04
            sta DINDEX
            lda #$95
            sta COLCRS
            lda #$02
            sta COLCRS+1
            lda #$AE
            sta RMARGN
            lda #$20
            sta ROWCRS
            jsr L7961
            jmp L793D
L790F       lda #$04
            sta DINDEX
            lda #$95
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$AE
            sta RMARGN
            lda #$20
            sta ROWCRS
            jsr L7961
            lda #$04
            sta DINDEX
            lda #$95
            sta COLCRS
            lda #$02
            sta COLCRS+1
            lda #$8E
            sta RMARGN
            lda #$20
            sta ROWCRS
            jsr L7961
L793D       lda #$01
            sta DINDEX
            lda #$8B
            sta COLCRS
            lda #$00
            sta COLCRS+1
            lda #$AA
            sta RMARGN
            lda #$20
            sta ROWCRS
            jsr L7961
            lda #$76
            sta L20AE
            ldx SAVMSC
            bne L7960
            sta L208E
L7960       rts
L7961       ldx #$00
            ldy #$00
            lda #$01
            sta ICAX6Z
L7969       lda (COLCRS),Y
            lsr
            lsr
            lsr
            lsr
            bne L7980
            lda ICAX6Z
            beq L7980
            lda #$40
            sta (RMARGN,X)
            inc RMARGN
            sta (RMARGN,X)
            jmp L7990
L7980       asl
            clc
            adc #$20
            sta (RMARGN,X)
            inc RMARGN
            adc #$01
            sta (RMARGN,X)
            lda #$00
            sta ICAX6Z
L7990       inc RMARGN
            lda (COLCRS),Y
            and #$0F
            bne L79A7
L7998       lda ICAX6Z
            beq L79A7
            lda #$40
            sta (RMARGN,X)
            inc RMARGN
            sta (RMARGN,X)
            jmp L79B7
L79A7       asl
            clc
            adc #$20
            sta (RMARGN,X)
            inc RMARGN
            adc #$01
            sta (RMARGN,X)
            lda #$00
            sta ICAX6Z
L79B7       inc RMARGN
            iny
            cpy DINDEX
            bne L7969
            lda ICAX6Z
            beq L79CE
            dec RMARGN
            lda #$21
            sta (RMARGN,X)
            dec RMARGN
            lda #$20
            sta (RMARGN,X)
L79CE       rts
L79CF       lda SAVMSC
            beq L79D4
            rts
L79D4       lda #$04
            sec
            sbc L009C
            asl
            clc
            adc #$14
            ldx HOLD1
            bne L79F2
            sta L209E
            adc #$01
            sta L209F
            lda #$40
            sta L20BE
            sta L20BF
            rts
L79F2       sta L20BE
            adc #$01
            sta L20BF
            lda #$40
            sta L209E
            sta L209F
            rts
L7A03       lda SAVMSC
            beq L7A5A
            dec OLDCOL
            bne L7A0E
            jsr L7CE2
L7A0E       lda OLDCHR
            sta L0083
            lda CASINI
            clc
            ldx OLDCOL+1
            stx L0086
            cpx #$02
            beq L7A28
            ldx L0085
            cpx #$01
            beq L7A28
            adc #$05
            sta L00D0
            rts
L7A28       adc #$02
            sta L00D0
            lda L0085
            cmp #$01
            beq L7A38
            lda L0086
            cmp L0087
            bne L7A39
L7A38       rts
L7A39       sta L0087
            lda L0084
            pha
            lda L0082
            pha
            lda LOMEM+1
            pha
            lda LOMEM
            pha
            jsr L7524
            jsr L810B
            pla
            sta LOMEM
            pla
            sta LOMEM+1
            pla
            sta L0082
            pla
            sta L0084
            rts
L7A5A       lda #$00
            sta L0086
            ldx HOLD1
            lda TRIG0,X
            beq L7A9F
            lda #$02
            sta L0086
            clc
            lda #$02
            adc L00D0
            sta L00D0
            lda L0085
            cmp #$01
            beq L7AB4
            lda #$02
            cmp L0087
            beq L7AB4
            sta L0087
            lda L0084
            pha
            lda L0082
            pha
            lda LOMEM+1
            pha
            lda LOMEM
            pha
            jsr L7524
            jsr L810B
            pla
            sta LOMEM
            pla
            sta LOMEM+1
            pla
            sta L0082
            pla
            sta L0084
            jmp L7AB4
L7A9F       ldx #$02
            lda SKSTAT
            and #$08
            nop
            nop
            lda #$03
            sta L0086
            ldx #$05
            clc
            txa
            adc L00D0
            sta L00D0
L7AB4       lda #$00
            sta L0083
            lda HOLD1
            tax
            asl
            tay
            lda BRKKEY,Y
            cmp #$E4
            beq L7ACC
            cmp STATUS,X
            bcc L7ACC
            sta STATUS,X
            bcs L7AD2
L7ACC       cmp BFENLO,X
            bcs L7ADD
            sta BFENLO,X
L7AD2       lda STATUS,X
            clc
            adc BFENLO,X
            ror
            sta BUFRLO,X
            lsr
            sta LTEMP,X
L7ADD       lda RTCLOK,Y
            cmp #$E4
            beq L7AEC
            cmp BUFRFL,X
            bcc L7AEC
            sta BUFRFL,X
            bcs L7AF2
L7AEC       cmp NOCKSM,X
            bcs L7AFE
            sta NOCKSM,X
L7AF2       lda BUFRFL,X
            clc
            adc NOCKSM,X
            ror
            sta XMTDON,X
            lsr
            lsr
            sta FTYPE,X
L7AFE       lda BRKKEY,Y
            sec
            sbc BUFRLO,X
            sta ICHIDZ
            bpl L7B0A
            eor #$FF
L7B0A       sta ICCOMZ
            lda RTCLOK,Y
            sec
            sbc XMTDON,X
            sta ICDNOZ
            bpl L7B18
            eor #$FF
L7B18       sta ICSTAZ
            lda ICCOMZ
            cmp ICSTAZ
            bmi L7B38
            lda LTEMP,X
            cmp ICCOMZ
            bpl L7B50
            lda ICHIDZ
            bmi L7B31
            lda #$02
            sta L0083
            jmp L7B50
L7B31       lda #$04
            sta L0083
            jmp L7B50
L7B38       lda FTYPE,X
            cmp ICSTAZ
            bpl L7B50
            lda ICDNOZ
            bmi L7B49
            lda #$03
            sta L0083
            jmp L7B50
L7B49       lda #$01
            sta L0083
            jmp L7B50
L7B50       rts
            pla
            rti
            lda KBCODE
            lsr
            and #$0F
L7B59       ldx SAVADR+1
            bne L7B63
            sta SAVADR
            ldx #$20
            stx SAVADR+1
L7B63       cmp #$08
            bne L7B6B
            ldx #$0A
            stx SAVADR+1
L7B6B       pla
            tay
            pla
            tax
            pla
            rti
L7B71       lda #$34
            sta ICDNOZ
            lda #$06
            sta ICHIDZ
            lda #$7B
            sta ICSTAZ
            lda #$BC
            sta ICCOMZ
            ldx #$0D
            ldy #$00
L7B85       lda (ICCOMZ),Y
            sta (ICHIDZ),Y
            iny
            cpy #$14
            bne L7B85
            clc
            lda ICHIDZ
            adc #$20
            sta ICHIDZ
            lda ICDNOZ
            adc #$00
            sta ICDNOZ
            clc
            lda ICCOMZ
            adc #$14
            sta ICCOMZ
            lda ICSTAZ
            adc #$00
            sta ICSTAZ
            ldy #$00
            dex
            bne L7B85
            lda #$40
            sta L209E
            sta L209F
            sta L20BE
            sta L20BF
            rts
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
            rti
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            ora (FREQ,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            ora (FREQ,X)
            eor ROWCRS,X
            eor FREQ,X
            eor ROWCRS,X
            eor ROWCRS,X
            .byte $00,$00
            ora COLCRS,X
            ora NGFLAG,X
            ora COLCRS,X
            ora COLCRS,X
            ora (FREQ,X)
            rti
            .byte $54
            rti
            bvc L7C57
            .byte $14,$54,$00,$00,$00
            ora NGFLAG,X
            ora NGFLAG,X
            ora L0000,X
            ora NGFLAG,X
            ora (FREQ,X)
            rti
            .byte $00
            rti
            .byte $54
            eor RTCLOK+2
            .byte $54,$00,$00,$00
            ora NGFLAG,X
            ora NGFLAG,X
            ora L0000,X
            ora NGFLAG,X
            ora (FREQ,X)
            eor (ROWCRS,X)
            eor ROWCRS,X
            eor RTCLOK+2
            eor FREQ,X
            .byte $00,$00
            ora NGFLAG,X
            ora NGFLAG,X
            ora TEMP,X
            ora ROWCRS,X
            ora (FREQ,X)
            rti
            .byte $54
            rti
            .byte $54
            eor RTCLOK+2
            .byte $54,$00,$00,$00
            ora NGFLAG,X
            ora NGFLAG,X
L7C57       ora L0000,X
            ora RAMLO+1,X
            ora (FREQ,X)
            rti
            .byte $54
            rti
            .byte $54
            eor RTCLOK+2
            .byte $54,$00,$00,$00
            ora NGFLAG,X
            ora COLCRS,X
            ora L0000,X
            ora NGFLAG,X
            ora (FREQ,X)
            eor ROWCRS,X
            rti
            .byte $54
            eor RTCLOK+2
            eor ROWCRS,X
            .byte $00,$00
            ora COLCRS,X
            ora ROWCRS
            ora COLCRS,X
            ora NGFLAG,X
            ora (FREQ,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            ora (FREQ,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00
            ora (COLCRS,X)
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
L7CBF       eor L00A9,X
            .byte $02
            sta SAVMSC
L7CC4       lda #$01
            sta OLDADR
            lda #$13
            sta OLDROW
            sta OLDCOL
            lda RANDOM
            and #$07
            adc #$03
            ora #$01
            sta SAVMSC+1
            lda #$01
            sta OLDCHR
            lda #$02
            sta OLDCOL+1
            rts
L7CE2       jsr L7CF7
            and #$01
            beq L7CF0
            lda OLDROW
            sta OLDCOL
            inc OLDCOL
            rts
L7CF0       lda SAVMSC+1
            sta OLDCOL
            inc OLDCOL
            rts
L7CF7       lda OLDCHR
            clc
            adc OLDADR
            beq L7D05
            cmp #$05
            beq L7D0A
            sta OLDCHR
            rts
L7D05       lda #$04
            sta OLDCHR
            rts
L7D0A       lda #$01
            sta OLDCHR
            rts
L7D0F       lda #$02
            sta OLDCOL+1
            jsr L7DA2
            lda OLDADR+1
            eor #$FE
            sta OLDADR
            lda #$D4
            sec
            sbc L0091
            beq L7D6A
            cmp #$1C
            bcs L7D2E
            lda #$03
            sta OLDCHR
            jmp L7D61
L7D2E       lda L0091
            sec
            sbc #$30
            beq L7D6A
            cmp #$1C
            bcs L7D40
            lda #$01
            sta OLDCHR
            jmp L7D61
L7D40       lda #$BB
            sec
            sbc L0090
            beq L7D6A
            cmp #$0E
            bcs L7D52
            lda #$02
            sta OLDCHR
            jmp L7D61
L7D52       lda L0090
            sec
            sbc #$3F
            beq L7D6A
            cmp #$0E
            bcs L7D6A
            lda #$04
            sta OLDCHR
L7D61       lda #$7F
            sta OLDCOL
            lda #$03
            sta OLDCOL+1
            rts
L7D6A       lda OLDCHR
            and #$01
            bne L7D89
            lda RANDOM
            and #$07
            adc #$07
            ora #$01
            sta SAVMSC+1
            sta OLDCOL
            lda RANDOM
            and #$03
            adc #$03
            ora #$01
            sta OLDROW
            rts
L7D89       lda RANDOM
            and #$07
            adc #$07
            ora #$01
            sta OLDROW
            sta OLDCOL
            lda RANDOM
            and #$03
            adc #$03
            ora #$01
            sta SAVMSC+1
            rts
L7DA2       lda L0090
            sec
            sbc L1050
            sta ICHIDZ
            bpl L7DAE
            eor #$FF
L7DAE       sta ICCOMZ
            lda L0091
            sec
            sbc L1051
            sta ICDNOZ
            bpl L7DBC
            eor #$FF
L7DBC       sta ICSTAZ
            cmp ICCOMZ
            bpl L7DE8
L7DC2       lda ICCOMZ
            adc ICSTAZ
            cmp #$20
            bcc L7E0E
            lda ICHIDZ
            bpl L7DDB
            lda OLDCHR
            eor #$02
            cmp #$02
            beq L7DE8
            lda #$02
            sta OLDCHR
            rts
L7DDB       lda OLDCHR
            eor #$02
            cmp #$04
            beq L7DE8
            lda #$04
            sta OLDCHR
            rts
L7DE8       lda ICCOMZ
            adc ICSTAZ
            cmp #$20
            bcc L7E0E
            lda ICDNOZ
            bpl L7E01
            lda OLDCHR
            eor #$02
            cmp #$03
            beq L7DC2
            lda #$03
            sta OLDCHR
            rts
L7E01       lda OLDCHR
            eor #$02
            cmp #$01
            beq L7DC2
            lda #$01
            sta OLDCHR
            rts
L7E0E       lda #$00
            sta OLDCHR
            rts
L7E13       lda OLDCHR
            and #$01
            beq L7E2B
            lda L0090
            sec
            sbc L1050
            bpl L7E26
            lda #$02
            sta OLDCHR
            rts
L7E26       lda #$04
            sta OLDCHR
            rts
L7E2B       lda L0091
            sec
            sbc L1051
            bpl L7E38
            lda #$03
            sta OLDCHR
            rts
L7E38       lda #$01
            sta OLDCHR
            rts
L7E3D       lda #$00
            sta ADRESS
            rts
L7E42       lda #$01
            ora L0088
            sta L0088
            lda L0083
            cmp #$00
            bne L7E51
            jmp L7F22
L7E51       lda L0082
            and #$01
            bne L7E5D
            lda LOMEM
            and #$20
            beq L7E65
L7E5D       ldx L0084
            jsr L7F66
            jmp L7F2B
L7E65       lda L0085
            cmp #$01
            bne L7E6E
            jmp L7EEC
L7E6E       lda L0083
            cmp L0084
            bne L7ECD
L7E74       ldx L0083
            ldy #$02
            jsr L7F38
            cmp #$02
            bne L7E82
L7E7F       jmp L7F2B
L7E82       cmp #$01
            bne L7EC5
            ldx L0083
            ldy #$01
            jsr L7F38
            cmp #$00
            bne L7E7F
            ldx L0083
            jsr L7F66
            lda #$01
            sta L0085
            lda L0087
            cmp L0086
            beq L7EA4
            lda #$02
            sta L0087
L7EA4       ldx L0083
            jsr L7F66
            lda L0082
            and #$03
            eor #$03
            tay
            ldx #$00
            lda (LOMEM,X)
            and L81C7,Y
            ora L81BF,Y
            sta (LOMEM,X)
            lda #$02
            ora L0088
            sta L0088
            jmp L7F2B
L7EC5       ldx L0083
            jsr L7F66
            jmp L7F2B
L7ECD       lda L0089
            bne L7E74
            sec
            lda L0083
            sbc L0084
            cmp #$01
            beq L7EE5
            cmp #$FD
            beq L7EE5
            lda #$FF
            sta L0089
            jmp L7E74
L7EE5       lda #$01
            sta L0089
            jmp L7E74
L7EEC       ldx L0083
            ldy #$01
            jsr L7F38
            cmp #$00
            bne L7F14
            lda L0086
            beq L7F22
            lda L0082
            and #$03
            sta L0094
            lda LOMEM
            sta L0092
            lda LOMEM+1
            sta L0093
            lda #$02
            sta L0085
            lda #$00
            sta L0089
            jmp L7E74
L7F14       cmp #$01
            bne L7F28
            inc OLDCOL
            ldx L0083
            jsr L7F66
            jmp L7F2B
L7F22       jsr L7D0F
            jmp L7F2B
L7F28       jsr L7E13
L7F2B       lda L0085
            cmp #$01
            bne L7F37
            lda L0088
            and #$FE
            sta L0088
L7F37       rts
L7F38       jsr L7FD9
L7F3B       jsr L7FE6
            dey
            bne L7F3B
            lda ICCOMZ
            and #$03
            eor #$03
            tax
            tay
            lda #$03
            sta ICCOMZ
L7F4D       dex
            bmi L7F57
            asl ICCOMZ
            asl ICCOMZ
            jmp L7F4D
L7F57       ldx #$00
            lda (ICHIDZ,X)
            and ICCOMZ
L7F5D       dey
            bmi L7F65
            lsr
            lsr
            jmp L7F5D
L7F65       rts
L7F66       sta RAMLO
            stx L0084
            lda L0085
            cmp #$01
            bne L7F76
            jsr L7FC9
            jmp L7FBF
L7F76       lda L0086
            beq L7FC8
            jsr L7FD9
            jsr L7FE6
            jsr L803A
            jsr L8459
            lda ICCOMZ
            and #$03
            eor #$03
            tay
            tax
            lda #$02
            sta ICCOMZ
            lda L0087
            sta ICSTAZ
L7F96       dex
            bmi L7FA4
            asl ICCOMZ
            asl ICCOMZ
            asl ICSTAZ
            asl ICSTAZ
            jmp L7F96
L7FA4       ldx #$00
            lda (ICHIDZ,X)
            and L81C7,Y
            ora ICCOMZ
            sta (ICHIDZ,X)
            clc
            lda ICDNOZ
            adc #$0C
            sta ICDNOZ
            lda (ICHIDZ,X)
            and L81C7,Y
            ora ICSTAZ
            sta (ICHIDZ,X)
L7FBF       jsr L8047
            lda L0088
            and #$FE
            sta L0088
L7FC8       rts
L7FC9       jsr L7FD9
            jsr L7FE6
            jsr L803A
            lda L0088
            and #$FE
            sta L0088
            rts
L7FD9       lda LOMEM
            sta ICHIDZ
            lda LOMEM+1
            sta ICDNOZ
            lda L0082
            sta ICCOMZ
            rts
L7FE6       txa
            and #$01
            bne L8018
            cpx #$02
            beq L8006
            cpx #$04
            beq L7FF6
            jmp L8039
L7FF6       dec ICCOMZ
            bpl L8039
            lda ICCOMZ
            clc
            adc #$04
            sta ICCOMZ
            dec ICHIDZ
            jmp L8039
L8006       inc ICCOMZ
            lda ICCOMZ
            cmp #$04
            bmi L8039
            sec
            sbc #$04
            sta ICCOMZ
            inc ICHIDZ
            jmp L8039
L8018       cpx #$03
            beq L802C
            sec
            lda ICHIDZ
            sbc #$20
            sta ICHIDZ
            lda ICDNOZ
            sbc #$00
            sta ICDNOZ
            jmp L8039
L802C       clc
            lda ICHIDZ
            adc #$20
            sta ICHIDZ
            lda ICDNOZ
            adc #$00
            sta ICDNOZ
L8039       rts
L803A       lda ICHIDZ
            sta LOMEM
            lda ICDNOZ
            sta LOMEM+1
            lda ICCOMZ
            sta L0082
            rts
L8047       lda LOMEM
            sta ICAX6Z
            asl
            asl
            ora L0082
            and #$7F
            clc
            adc #$40
            sta L0090
            lda LOMEM+1
            sec
            sbc #$24
            asl ICAX6Z
            rol
            asl ICAX6Z
            rol
            asl ICAX6Z
            rol
            asl
            clc
            adc #$30
            sta L0091
            lda L0090
            sec
            sbc #$03
            sta L0090
            lda L0091
            sec
            sbc #$04
            sta L0091
            rts
L8079       lda L0082
            pha
            lda LOMEM+1
            pha
            lda LOMEM
            pha
            jsr L81A3
L8085       lda L0082
            and #$01
            bne L80CA
            lda LOMEM
L808D       and #$20
            bne L80CA
            ldx L0084
            ldy #$01
            jsr L7F38
            cmp #$01
            beq L80CA
            ldx L0083
            ldy #$01
            jsr L7F38
            cmp #$01
            beq L80C3
            lda L0089
            eor #$FE
            sta L0089
            jsr L81A3
            lda L0089
            eor #$FE
            sta L0089
            ldx L0083
            ldy #$01
            jsr L7F38
            cmp #$01
            beq L80C3
            bne L80CA
L80C3       lda L0083
            sta L0084
            jsr L81A3
L80CA       ldx L0084
            jsr L7FC9
            lda L0082
            and #$03
            eor #$03
            tay
            ldx #$00
            lda (LOMEM,X)
            and L81C7,Y
            ora L81BF,Y
            sta (LOMEM,X)
            lda LOMEM
            cmp L0092
            bne L80F6
            lda LOMEM+1
            cmp L0093
            bne L80F6
            lda L0082
            and #$03
            cmp L0094
            beq L80F9
L80F6       jmp L8085
L80F9       ldx L0084
            jsr L8111
            jsr L81DB
            pla
            sta LOMEM
            pla
            sta LOMEM+1
            pla
            sta L0082
            rts
L810B       jsr L7FD9
            jmp L8151
L8111       lda L0082
            and #$01
            bne L8146
            lda LOMEM
            and #$20
            bne L8146
            ldx L0084
            ldy #$01
            jsr L7F38
            cmp #$02
            beq L8146
            lda #$01
L812A       sta L0089
            jsr L81A3
            ldx L0083
            ldy #$01
            jsr L7F38
            cmp #$02
            beq L813F
            lda #$FF
            jmp L812A
L813F       lda L0083
            sta L0084
            jsr L81A3
L8146       ldx L0084
            jsr L7FD9
            jsr L7FE6
            jsr L803A
L8151       lda ICCOMZ
            and #$03
            eor #$03
            tay
            ldx #$00
            clc
            lda #$0C
            adc ICDNOZ
            sta ICDNOZ
            lda (ICHIDZ,X)
            and L81BB,Y
            cmp L81C1+2,Y
            beq L81A2
            lda L0088
            and #$10
            bne L8184
            lda L0088
            and #$02
            bne L8195
            lda (ICHIDZ,X)
            and L81C7,Y
            ora L81BF,Y
L817F       sta (ICHIDZ,X)
            jmp L8111
L8184       lda (ICHIDZ,X)
            and L81C7,Y
            sta (ICHIDZ,X)
            lda (LOMEM,X)
            and L81C7,Y
            sta (LOMEM,X)
            jmp L8111
L8195       lda (ICHIDZ,X)
            and L81C7,Y
            ora L81C1+2,Y
            sta (ICHIDZ,X)
            jmp L8111
L81A2       rts
L81A3       lda L0084
            clc
            adc L0089
            beq L81B1
            cmp #$05
            beq L81B6
            sta L0083
            rts
L81B1       lda #$04
            sta L0083
            rts
L81B6       lda #$01
            sta L0083
            rts
L81BB       .byte $03,$0C
            bmi L817F
L81BF       .byte $02
            php
L81C1       jsr L0180
            .byte $04
            bpl L8207
L81C7       .byte $FC,$F3,$CF,$3F
L81CB       bpl L81DD
            plp
            plp
            .byte $54,$54
            plp
            plp
            bpl L81E5
            .byte $00,$00,$00,$00,$00,$00
L81DB       lda L00B0
L81DD       sta ICHIDZ
            lda L00B1
            sta ICDNOZ
            ldy #$00
L81E5       sty ICCOMZ
            lda L00B2
            and #$03
            eor #$03
            tax
L81EE       lda (ICHIDZ),Y
            and L81BB,X
            cmp L81BF,X
            bne L81FA
            inc ICCOMZ
L81FA       dex
            bpl L81EE
            ldx #$03
            inc ICHIDZ
            lda ICHIDZ
            and #$1F
            bne L81EE
L8207       lda ICCOMZ
            and #$01
            sta L008D
            lda L10A8
            beq L824D
            lda L00B3
            sta ICHIDZ
            lda L00B4
            sta ICDNOZ
            ldy #$00
            sty ICCOMZ
            lda L00B5
            and #$03
            eor #$03
            tax
L8225       lda (ICHIDZ),Y
            and L81BB,X
            cmp L81BF,X
            bne L8231
            inc ICCOMZ
L8231       dex
            bpl L8225
            ldx #$03
            inc ICHIDZ
            lda ICHIDZ
            and #$1F
            bne L8225
            lda ICCOMZ
            and #$01
            cmp L008D
            beq L824D
            lda L0088
            ora #$04
            sta L0088
            rts
L824D       lda #$60
            sta ICCOMZ
            lda #$24
            sta ICSTAZ
            lda #$60
            sta ICHIDZ
            lda #$30
            sta ICDNOZ
            lda #$40
            sta ICPTLZ
            lda #$24
            sta ICPTHZ
            lda #$20
            sta ICBLLZ
            lda #$24
            sta ICBLHZ
            lda #$00
            sta ICAX1Z
            lda #$24
            sta ICAX2Z
            ldy #$00
            sty ICAX3Z
            lda L008D
            sta L008A
L827D       ldx #$03
L827F       lda (ICCOMZ),Y
            and L81BB,X
            cmp L81BF,X
            beq L82BE
            cmp #$00
            bne L82C4
            lda L008A
            beq L82C4
            jsr L8432
            lda (ICCOMZ),Y
            and L81C7,X
            ora L81BB,X
            sta (ICCOMZ),Y
            lda L0087
            cmp #$02
            bne L82B1
            lda (ICHIDZ),Y
            and L81C7,X
            ora L81BF,X
            sta (ICHIDZ),Y
            jmp L82C4
L82B1       lda (ICHIDZ),Y
            and L81C7,X
            ora L81BB,X
            sta (ICHIDZ),Y
            jmp L82C4
L82BE       lda L008A
            eor #$01
            sta L008A
L82C4       jsr L83BF
            dex
            bpl L827F
            iny
            cpy #$20
            bne L827D
            inc ICAX3Z
            clc
            lda #$20
            adc ICCOMZ
            sta ICBALZ
            lda #$00
            adc ICSTAZ
            sta ICBAHZ
            clc
            lda #$20
            adc ICHIDZ
            sta ICHIDZ
            lda #$00
            adc ICDNOZ
            sta ICDNOZ
            clc
            lda #$20
            adc ICPTLZ
            sta ICPTLZ
            lda #$00
            adc ICPTHZ
            sta ICPTHZ
            clc
            lda #$20
            adc ICBLLZ
            sta ICBLLZ
            lda #$00
            adc ICBLHZ
            sta ICBLHZ
            clc
            lda #$20
            adc ICAX1Z
            sta ICAX1Z
            lda #$00
            adc ICAX2Z
            sta ICAX2Z
            ldy #$00
            lda ICAX3Z
            cmp #$54
            bne L831D
            jmp L83BA
L831D       ldx #$03
L831F       lda (ICBALZ),Y
            and L81BB,X
            cmp L81BF,X
            beq L8361
            cmp #$00
            bne L8361
            lda (ICCOMZ),Y
            and L81BB,X
            cmp L81BB,X
            bne L8361
            jsr L8432
            lda (ICBALZ),Y
            and L81C7,X
            ora L81BB,X
            sta (ICBALZ),Y
            lda L0087
            cmp #$02
            bne L8357
            lda (ICHIDZ),Y
            and L81C7,X
            ora L81BF,X
            sta (ICHIDZ),Y
            jmp L8361
L8357       lda (ICHIDZ),Y
            and L81C7,X
            ora L81BB,X
            sta (ICHIDZ),Y
L8361       jsr L83BF
            dex
            bpl L831F
            iny
            cpy #$20
            bmi L831D
            inc ICAX3Z
            clc
            lda #$20
            adc ICBALZ
            sta ICCOMZ
            lda #$00
            adc ICBAHZ
            sta ICSTAZ
            clc
            lda #$20
            adc ICHIDZ
            sta ICHIDZ
            lda #$00
            adc ICDNOZ
            sta ICDNOZ
            clc
            lda #$20
            adc ICPTLZ
            sta ICPTLZ
            lda #$00
            adc ICPTHZ
            sta ICPTHZ
            clc
            lda #$20
            adc ICBLLZ
            sta ICBLLZ
            lda #$00
            adc ICBLHZ
            sta ICBLHZ
            clc
            lda #$20
            adc ICAX1Z
            sta ICAX1Z
            lda #$00
            adc ICAX2Z
            sta ICAX2Z
            ldy #$00
            lda ICAX3Z
            cmp #$54
            beq L83BA
            jmp L827D
L83BA       lda #$03
            sta L0087
            rts
L83BF       lda (ICBLLZ),Y
            and L81BB,X
            cmp L81C1+2,X
            beq L83CF
            cmp L81BF,X
            beq L83CF
            rts
L83CF       txa
            pha
            tya
            pha
            lda #$02
            sta ICAX4Z
L83D7       lda (ICBLLZ),Y
            and L81BB,X
            beq L8423
            lda (ICAX1Z),Y
            and L81BB,X
            beq L8423
            lda (ICPTLZ),Y
            and L81BB,X
            beq L8423
            dec ICAX4Z
            beq L8402
            bmi L8414
            pla
            tay
            pla
            tax
            pha
            tya
            pha
            dex
            bpl L83FF
            iny
            ldx #$03
L83FF       jmp L83D7
L8402       pla
            tay
            pla
            tax
            pha
            tya
            pha
            inx
            cpx #$04
            bne L8411
            dey
            ldx #$00
L8411       jmp L83D7
L8414       pla
            tay
            pla
            tax
            lda (ICBLLZ),Y
            and L81C7,X
            ora L81BB,X
            sta (ICBLLZ),Y
            rts
L8423       pla
            tay
            pla
            tax
            lda (ICBLLZ),Y
            and L81C7,X
            ora L81C1+2,X
            sta (ICBLLZ),Y
            rts
L8432       jsr L71C5
            lda L008C
            cmp #$63
            bpl L8459
            lda L0087
            sec
            sbc #$01
            sed
            clc
            adc L0098
            sta L0098
            lda L0097
            adc #$00
            sta L0097
            lda L0096
            adc #$00
            sta L0096
            lda L0095
            adc #$00
            sta L0095
            cld
L8459       inc L008C
            lda L008C
            cmp #$63
            bne L8471
            lda #$00
            sta L008C
            sed
            clc
            lda L008B
            cmp #$99
            beq L8471
            adc #$01
            sta L008B
L8471       cld
            rts
L8473       ldy #$00
            ldx L00D9
            dex
            bpl L847E
            inc L00D5
            ldx #$03
L847E       lda (L00D5),Y
            and L81C7,X
            sta (L00D5),Y
            stx L00D9
            ldx L00DA
            inx
            cpx #$04
            bmi L8492
            dec L00D7
            ldx #$00
L8492       lda (L00D7),Y
            and L81C7,X
            sta (L00D7),Y
            stx L00DA
            lda L00D5
            cmp L00D7
            bne L84AD
            lda L00D9
            cmp L00DA
            bne L84AD
            lda L0088
            ora #$20
            sta L0088
L84AD       rts
L84AE       lda #$30
            sta L00D6
            lda #$00
            sta L00D5
            lda #$02
            sta L00D9
            lda #$30
            sta L00D8
            lda #$1F
            sta L00D7
            lda #$00
            sta L00DA
            lda #$FF
            ldx #$1E
L84CA       sta L3000,X
            dex
            bne L84CA
            lda #$0F
            sta L3000
            lda #$FC
            sta L301F
            rts
L84DB       lda #$24
            sta ICDNOZ
            lda #$00
            sta ICHIDZ
            lda #$30
            sta ICSTAZ
            lda #$00
            sta ICCOMZ
            ldx #$0C
            ldy #$00
L84EF       lda (ICCOMZ),Y
            sta (ICHIDZ),Y
            dey
            bne L84EF
            inc ICDNOZ
            inc ICSTAZ
            dex
            bne L84EF
            jsr L8047
            lda #$01
            sta MLTTMP
            lda #$24
            sta L200A
            lda #$01
            sta L008E
            lda #$F8
            sta L008F
L8511       lda L008E
            cmp #$14
            bpl L851A
            jsr L8546
L851A       lda L008F
            cmp #$01
            bmi L8523
            jsr L8670
L8523       lda #$02
            clc
            adc CASINI
L8528       cmp CASINI
            bpl L8528
            inc L008E
            inc L008F
            lda L008F
            cmp #$15
            beq L8539
            jmp L8511
L8539       lda #$30
            sta L200A
            lda #$00
            sta MLTTMP
            jsr L88DB
            rts
L8546       jsr L71C5
            lda L0090
            sta ICAX2Z
            lda LOMEM
            sta ICHIDZ
            lda LOMEM+1
            sta ICDNOZ
            lda L0082
            sta ICBALZ
            lda L008E
            sta ICBAHZ
L855D       clc
            lda ICAX2Z
            adc #$02
            sta ICAX2Z
            lda ICBALZ
            clc
            adc #$02
            sta ICBALZ
            cmp #$04
            bmi L8575
            and #$03
            sta ICBALZ
            inc ICHIDZ
L8575       dec ICBAHZ
            bne L855D
            lda ICHIDZ
            sta ICCOMZ
            lda ICDNOZ
            sta ICSTAZ
            ldx L008E
            jsr L87E6
L8586       ldy #$00
            lda ICBALZ
            eor #$03
            tax
            jsr L883A
            bne L859C
            lda (ICHIDZ),Y
            and L81C7,X
            ora L81C1+2,X
            sta (ICHIDZ),Y
L859C       jsr L8854
            bne L85AB
            lda (ICCOMZ),Y
            and L81C7,X
            ora L81C1+2,X
            sta (ICCOMZ),Y
L85AB       dec ICBAHZ
            bmi L85DC
            jsr L87F5
            dec ICAX2Z
            ldx ICBALZ
            dex
            stx ICBALZ
            bpl L8586
            ldx #$03
            stx ICBALZ
            sec
            lda ICHIDZ
            sbc #$01
            sta ICHIDZ
            lda ICDNOZ
            sbc #$00
            sta ICDNOZ
            sec
            lda ICCOMZ
            sbc #$01
            sta ICCOMZ
            lda ICSTAZ
            sbc #$00
            sta ICSTAZ
            jmp L8586
L85DC       lda L0090
            sta ICAX2Z
            lda LOMEM
            sta ICHIDZ
            lda LOMEM+1
            sta ICDNOZ
            lda L0082
            sta ICBALZ
            lda L008E
            sta ICBAHZ
L85F0       sec
            lda ICAX2Z
            sbc #$02
            sta ICAX2Z
            lda ICBALZ
            sec
            sbc #$02
            sta ICBALZ
            bpl L8606
            and #$03
            sta ICBALZ
            dec ICHIDZ
L8606       dec ICBAHZ
            bne L85F0
            lda ICHIDZ
            sta ICCOMZ
            lda ICDNOZ
            sta ICSTAZ
            ldx L008E
            jsr L87E6
L8617       ldy #$00
            lda ICBALZ
            eor #$03
            tax
            jsr L883A
            bne L862D
            lda (ICHIDZ),Y
            and L81C7,X
            ora L81C1+2,X
            sta (ICHIDZ),Y
L862D       jsr L8854
            bne L863C
            lda (ICCOMZ),Y
            and L81C7,X
            ora L81C1+2,X
            sta (ICCOMZ),Y
L863C       dec ICBAHZ
            bmi L866F
            jsr L87F5
            inc ICAX2Z
            ldx ICBALZ
            inx
            cpx #$04
            stx ICBALZ
            bne L8617
            ldx #$00
            stx ICBALZ
            clc
            lda ICHIDZ
            adc #$01
            sta ICHIDZ
            lda ICDNOZ
            adc #$00
            sta ICDNOZ
            clc
            lda ICCOMZ
            adc #$01
            sta ICCOMZ
            lda ICSTAZ
            adc #$00
            sta ICSTAZ
            jmp L8617
L866F       rts
L8670       jsr L71C5
            lda L0090
            sta ICAX2Z
            lda LOMEM
            sta ICHIDZ
            lda LOMEM+1
            sta ICDNOZ
            lda L0082
            sta ICBALZ
            lda L008F
            sta ICBAHZ
L8687       clc
            lda ICAX2Z
            adc #$02
            sta ICAX2Z
            lda ICBALZ
            clc
            adc #$02
            sta ICBALZ
            cmp #$04
            bmi L869F
            and #$03
            sta ICBALZ
            inc ICHIDZ
L869F       dec ICBAHZ
            bne L8687
            lda ICHIDZ
            sta ICCOMZ
            lda ICDNOZ
            sta ICSTAZ
            ldx L008F
            jsr L87E6
L86B0       ldy #$00
            lda ICBALZ
            eor #$03
            tax
            jsr L883A
            bne L86CC
            lda (ICPTLZ),Y
            and L81BB,X
            sta ICAX1Z
            lda (ICHIDZ),Y
            and L81C7,X
            ora ICAX1Z
            sta (ICHIDZ),Y
L86CC       jsr L8854
            bne L86E1
            lda (ICBLLZ),Y
            and L81BB,X
            sta ICAX1Z
            lda (ICCOMZ),Y
            and L81C7,X
            ora ICAX1Z
            sta (ICCOMZ),Y
L86E1       dec ICBAHZ
            bmi L872C
            jsr L87F5
            dec ICAX2Z
            ldx ICBALZ
            dex
            stx ICBALZ
            bpl L86B0
            ldx #$03
            stx ICBALZ
            sec
            lda ICHIDZ
            sbc #$01
            sta ICHIDZ
            lda ICDNOZ
            sbc #$00
            sta ICDNOZ
            sec
            lda ICCOMZ
            sbc #$01
            sta ICCOMZ
            lda ICSTAZ
            sbc #$00
            sta ICSTAZ
            sec
            lda ICPTLZ
            sbc #$01
            sta ICPTLZ
            lda ICPTHZ
            sbc #$00
            sta ICPTHZ
            sec
            lda ICBLLZ
            sbc #$01
            sta ICBLLZ
            lda ICBLHZ
            sbc #$00
            sta ICBLHZ
            jmp L86B0
L872C       lda L0090
            sta ICAX2Z
            lda LOMEM
            sta ICHIDZ
            lda LOMEM+1
            sta ICDNOZ
            lda L0082
            sta ICBALZ
            lda L008F
            sta ICBAHZ
L8740       sec
            lda ICAX2Z
            sbc #$02
            sta ICAX2Z
            lda ICBALZ
            sec
            sbc #$02
            sta ICBALZ
            bpl L8756
            and #$03
            sta ICBALZ
            dec ICHIDZ
L8756       dec ICBAHZ
            bne L8740
            lda ICHIDZ
            sta ICCOMZ
            lda ICDNOZ
            sta ICSTAZ
            ldx L008F
            jsr L87E6
L8767       ldy #$00
            lda ICBALZ
            eor #$03
            tax
            jsr L883A
            bne L8783
            lda (ICPTLZ),Y
            and L81BB,X
            sta ICAX1Z
            lda (ICHIDZ),Y
            and L81C7,X
            ora ICAX1Z
            sta (ICHIDZ),Y
L8783       jsr L8854
            bne L8798
            lda (ICBLLZ),Y
            and L81BB,X
            sta ICAX1Z
            lda (ICCOMZ),Y
            and L81C7,X
            ora ICAX1Z
            sta (ICCOMZ),Y
L8798       dec ICBAHZ
            bmi L87E5
            jsr L87F5
            inc ICAX2Z
            ldx ICBALZ
            inx
            cpx #$04
            stx ICBALZ
            bne L8767
            ldx #$00
            stx ICBALZ
            clc
            lda ICHIDZ
            adc #$01
            sta ICHIDZ
            lda ICDNOZ
            adc #$00
            sta ICDNOZ
            clc
            lda ICCOMZ
            adc #$01
            sta ICCOMZ
            lda ICSTAZ
            adc #$00
            sta ICSTAZ
            clc
            lda ICPTLZ
            adc #$01
            sta ICPTLZ
            lda ICPTHZ
            adc #$00
            sta ICPTHZ
            clc
            lda ICBLLZ
            adc #$01
            sta ICBLLZ
            lda ICBLHZ
            adc #$00
            sta ICBLHZ
            jmp L8767
L87E5       rts
L87E6       stx ICBAHZ
            lda L0091
            sta ICAX3Z
            sta ICAX4Z
L87EE       jsr L87F5
            dex
            bne L87EE
            rts
L87F5       lda ICAX3Z
            cmp #$30
            beq L87FF
            dec ICAX3Z
            dec ICAX3Z
L87FF       lda ICAX4Z
            cmp #$D4
            beq L8809
            inc ICAX4Z
            inc ICAX4Z
L8809       clc
            lda ICHIDZ
            adc #$20
            sta ICHIDZ
            lda ICDNOZ
            adc #$00
            sta ICDNOZ
            sec
            lda ICCOMZ
            sbc #$20
            sta ICCOMZ
            lda ICSTAZ
            sbc #$00
            sta ICSTAZ
            lda ICHIDZ
            sta ICPTLZ
            lda ICDNOZ
            clc
            adc #$0C
            sta ICPTHZ
            lda ICCOMZ
            sta ICBLLZ
            lda ICSTAZ
            clc
            adc #$0C
            sta ICBLHZ
            rts
L883A       lda ICAX2Z
            cmp #$3F
            bcc L8851
            cmp #$BB
            bcs L8851
            lda ICAX4Z
            cmp #$30
            beq L8851
            cmp #$D4
            beq L8851
            lda #$00
            rts
L8851       lda #$01
            rts
L8854       lda ICAX2Z
            cmp #$3F
            bcc L886B
            cmp #$BB
            bcs L886B
            lda ICAX3Z
            cmp #$30
            beq L886B
            cmp #$D4
            beq L886B
            lda #$00
            rts
L886B       lda #$01
            rts
L886E       lda #$24
            sta ICDNOZ
            lda #$00
            sta ICHIDZ
            lda #$30
            sta ICSTAZ
            lda #$00
            sta ICCOMZ
            ldx #$0C
            ldy #$00
L8882       lda (ICCOMZ),Y
            sta (ICHIDZ),Y
            dey
            bne L8882
            inc ICDNOZ
            inc ICSTAZ
            dex
            bne L8882
            lda #$02
            sta MLTTMP
            lda #$00
            sta MLTTMP+1
            lda #$24
            sta L200A
            lda #$14
            sta L008E
            lda #$1C
            sta L008F
L88A5       jsr L8670
            lda L008E
            cmp #$01
            bmi L88B1
            jsr L8546
L88B1       lda #$02
            clc
            adc CASINI
L88B6       cmp CASINI
            bpl L88B6
            dec L008E
            dec L008F
            lda L008F
            cmp #$01
            beq L88C7
            jmp L88A5
L88C7       lda #$30
            sta L200A
            lda #$01
            sta ADRESS
            lda #$00
            sta MLTTMP
            jsr L88DB
            jsr L9021
            rts
L88DB       jsr L89C3
            lda #$40
            sta ICCOMZ
            lda #$24
            sta ICSTAZ
            lda #$60
            sta ICPTLZ
            lda #$30
            sta ICPTHZ
            lda #$40
            sta ICBLLZ
            lda #$30
            sta ICBLHZ
            lda #$20
            sta ICAX1Z
            lda #$30
            sta ICAX2Z
            ldy #$00
            sty ICAX3Z
L8902       ldx #$03
L8904       jsr L894E
            dex
            bpl L8904
            iny
            cpy #$20
            bne L8902
            clc
            lda #$20
            adc ICCOMZ
            sta ICCOMZ
            lda #$00
            adc ICSTAZ
            sta ICSTAZ
            clc
            lda #$20
            adc ICPTLZ
            sta ICPTLZ
            lda #$00
            adc ICPTHZ
            sta ICPTHZ
            clc
            lda #$20
            adc ICBLLZ
            sta ICBLLZ
            lda #$00
            adc ICBLHZ
            sta ICBLHZ
            clc
            lda #$20
            adc ICAX1Z
            sta ICAX1Z
            lda #$00
            adc ICAX2Z
            sta ICAX2Z
            inc ICAX3Z
            ldy #$00
            lda ICAX3Z
            cmp #$58
            bne L8902
            rts
L894E       lda (ICBLLZ),Y
            and L81BB,X
            bne L8956
            rts
L8956       lda ICBLLZ
            sta L00BA
            lda ICBLHZ
            sta L00BB
            jsr L8A30
            lda ICAX3Z
            beq L897A
            lda ICAX1Z
            sta L00BA
            lda ICAX2Z
            sta L00BB
            jsr L8A30
            lda (ICAX1Z),Y
            and L81BB,X
            bne L897A
            jmp L8998
L897A       lda ICAX3Z
            cmp #$52
            bne L8983
            jmp L89B8
L8983       lda ICPTLZ
            sta L00BA
            lda ICPTHZ
            sta L00BB
            jsr L8A30
            lda (ICPTLZ),Y
            and L81BB,X
            beq L8998
            jmp L89B8
L8998       lda (ICBLLZ),Y
            and L81BB,X
            cmp L81C1+2,X
            beq L89AD
            lda (ICCOMZ),Y
            and L81C7,X
            ora L81BF,X
            sta (ICCOMZ),Y
            rts
L89AD       lda (ICCOMZ),Y
            and L81C7,X
            ora L81C1+2,X
            sta (ICCOMZ),Y
            rts
L89B8       lda (ICCOMZ),Y
            and L81C7,X
            ora L81BB,X
            sta (ICCOMZ),Y
            rts
L89C3       lda #$24
            sta ICDNOZ
            lda #$00
            sta ICHIDZ
            lda #$00
            ldx #$0C
            ldy #$00
L89D1       sta (ICHIDZ),Y
            dey
            bne L89D1
            inc ICDNOZ
            dex
            bne L89D1
            ldx #$1F
L89DD       lda #$55
            sta L2440,X
            sta L2E80,X
            lda #$FF
            sta L2400,X
            sta L2420,X
            sta L2EE0,X
            sta L2EC0,X
            sta L2EA0,X
            dex
            bpl L89DD
            lda #$F5
            sta L2440
            sta L2E80
            lda #$57
            sta L245F
            sta L2E9F
            lda #$60
            sta ICCOMZ
            lda #$24
            sta ICSTAZ
            ldx #$51
L8A13       ldy #$00
            lda #$F4
            sta (ICCOMZ),Y
            ldy #$1F
            lda #$07
            sta (ICCOMZ),Y
            lda #$20
            clc
            adc ICCOMZ
            sta ICCOMZ
            lda #$00
            adc ICSTAZ
            sta ICSTAZ
            dex
            bne L8A13
            rts
L8A30       tya
            and #$1F
            cmp #$1F
            bne L8A3B
            cpx #$01
            beq L8A59
L8A3B       dex
            bpl L8A4F
            iny
            lda (L00BA),Y
            dey
            ldx #$03
            and L81BB,X
            ldx #$00
            cmp #$00
            bne L8A59
            beq L8A83
L8A4F       lda (L00BA),Y
            and L81BB,X
            inx
            cmp #$00
            beq L8A83
L8A59       tya
            and #$1F
            bne L8A62
            cpx #$01
            beq L8A82
L8A62       inx
            cpx #$04
            bne L8A78
            dey
            lda (L00BA),Y
            iny
            ldx #$00
            and L81BB,X
            ldx #$03
            cmp #$00
            bne L8A82
            beq L8A83
L8A78       lda (L00BA),Y
            and L81BB,X
            dex
            cmp #$00
            beq L8A83
L8A82       rts
L8A83       pla
            pla
            jmp L8998
L8A88       lda #$00
            sta L00A4
            lda #$50
            sta L1214
            lda #$24
            sta L1224
            lda #$00
            sta L1234
            rts
L8A9C       lda #$00
            sta L00A4
            rts
L8AA1       lda LOGCOL
            cmp #$00
            beq L8A9C
            lda L0085
            cmp #$01
            beq L8A9C
            ldx #$04
            jsr L8AC0
            lda L00A5
            bne L8ABD
            jsr L9270
            jsr L8AF0
            rts
L8ABD       dec L00A5
            rts
L8AC0       lda L00A4
            bne L8AEF
            jsr L924D
            cmp #$02
            beq L8AEB
            lda L0092
            sta L1214
            lda L0093
            sta L1224
            lda L0094
            sta L1234
            lda #$08
            sta L00A5
            jsr L920A
            lda #$00
            sta L1204
            lda #$FF
            sta L1264
L8AEB       lda #$01
            sta L00A4
L8AEF       rts
L8AF0       lda L1200,X
            and #$03
            beq L8B1D
            cmp #$01
            beq L8B02
            cmp #$02
            beq L8B0B
            jmp L8B14
L8B02       lda ICBLHZ
            cmp #$02
            bne L8B0B
            jmp L919F
L8B0B       lda ICPTLZ
            cmp #$02
            bne L8B14
            jmp L91B5
L8B14       lda ICPTHZ
            cmp #$02
            bne L8B1D
            jmp L91D2
L8B1D       lda ICBLLZ
            cmp #$02
            bne L8B02
            jmp L91ED
L8B26       ldx #$0D
L8B28       lda L8C1A,X
            sta L1FFF,X
            dex
            bne L8B28
            lda #$0D
            ldx #$55
L8B35       sta L200C,X
            dex
            bne L8B35
            ldx #$04
L8B3D       lda L8C26+1,X
            sta L2061,X
            dex
            bne L8B3D
            ldx #$40
L8B48       lda L8C2B,X
            sta L207F,X
            dex
            bne L8B48
            lda #$30
            sta ICDNOZ
            lda #$00
            sta ICHIDZ
            lda #$24
            sta ICSTAZ
            lda #$00
            sta ICCOMZ
            lda #$00
            ldx #$0C
            ldy #$00
L8B67       sta (ICHIDZ),Y
            sta (ICCOMZ),Y
            dey
            bne L8B67
            inc ICDNOZ
            inc ICSTAZ
            dex
            bne L8B67
            lda #$90
            sta LOMEM
            lda #$2E
            sta LOMEM+1
            lda #$00
            sta L0082
            jsr L8047
            lda #$00
            sta L0084
            lda #$01
            sta L0085
            lda #$03
            sta L0087
            jsr L84AE
            ldx #$1F
L8B95       lda #$55
            sta L3040,X
            sta L3A80,X
            sta L2440,X
            sta L2E80,X
            lda #$FF
            sta L2400,X
            sta L2420,X
            sta L2EE0,X
            sta L2EC0,X
            sta L2EA0,X
            dex
            bpl L8B95
            lda #$54
            sta L305F
            sta L3A9F
            lda #$05
            sta L3040
            sta L3A80
            lda #$F5
            sta L2440
            sta L2E80
            lda #$57
            sta L245F
            sta L2E9F
            lda #$60
            sta ICHIDZ
            lda #$30
            sta ICDNOZ
            lda #$60
            sta ICCOMZ
            lda #$24
            sta ICSTAZ
            ldx #$51
L8BE9       ldy #$00
            lda #$04
            sta (ICHIDZ),Y
            lda #$F4
            sta (ICCOMZ),Y
            ldy #$1F
            lda #$04
            sta (ICHIDZ),Y
            lda #$07
            sta (ICCOMZ),Y
            lda #$20
            clc
            adc ICHIDZ
            sta ICHIDZ
            lda #$00
            adc ICDNOZ
            sta ICDNOZ
            lda #$20
            clc
            adc ICCOMZ
            sta ICCOMZ
            lda #$00
            adc ICSTAZ
            sta ICSTAZ
            dex
            bne L8BE9
L8C1A       rts
            bvs L8C8D
            rts
            .byte $44,$80
            jsr RAMLO
            eor L3000
L8C26       ora L808D
            eor (L0000,X)
L8C2B       jsr DCOMND
            .byte $04
            ora TRAMSZ
            .byte $07
            php
            ora #$0A
            rti
            rti
            rti
            rti
            rti
            ror DELTAC,X
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            .byte $0B,$0C
            ora L0F0E
            bpl L8C64
            .byte $12,$13
            rti
            rti
            rti
            rti
            rti
            ror DELTAC,X
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8C64       rti
            rti
            rti
            rti
            rti
            rti
            rti
L8C6B       rti
            .byte $02,$03,$04
            ora TRAMSZ
            .byte $07
            php
            ora #$0A
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            asl L221F,X
            .byte $23,$32,$33
            bmi L8CBA+1
            bit ICBAHZ
            .byte $0B
L8C8D       .byte $0C
            ora L0F0E
            bpl L8CA4
            .byte $12,$13
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8CA0       rti
            rti
            .byte $42,$43
L8CA4       pla
            adc #$42
            .byte $43,$64
            adc LMARGN
L8CAB       .byte $53
            bvs L8D1D+1
            bvs L8CA0
            bvs L8D22
            .byte $44
            jsr L7021
            bvs L8CBC
            bvs L8D2A
L8CBA       bvs L8CC0
L8CBC       bvs L8D2E
            sty SOUNDR
L8CC0       .byte $00
L8CC1       and (FKDEF,X)
            adc (ZCHAIN,X)
            .byte $4B,$64
            adc FMSZPG+3
            .byte $47
            lsr
            .byte $4B,$5C
            eor L6968,X
            .byte $42,$43
            lsr L4A4F
            .byte $4B
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            ror DELTAC,X
            rti
            rti
            pla
            adc #$50
            eor (ADRESS),Y
            adc ZCHAIN
            .byte $4B
            ror MLTTMP+1
            bvc L8D3F
            lsr L585F,X
            eor L4948,Y
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            ror DELTAC,X
            rti
            rti
            .byte $44
            eor OLDADR
            .byte $5F,$5C
            eor L6B6A,X
            ror MLTTMP+1
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            sei
            adc L4040,Y
            rti
            rti
            rti
            jsr L2020+1
L8D1D       and (ICHIDZ,X)
            and (FREQ,X)
            rti
L8D22       rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8D2A       rti
            rti
            rti
            rti
L8D2E       rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8D36       rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8D3F       rti
            rti
L8D41       rti
            bvs L8DB4
            bvs L8D36
            bvs L8DB8
            .byte $44
            jsr L7021
L8D4C       bvs L8D52
            bvs L8DC0
            sty SOUNDR
L8D52       .byte $00
L8D53       and (FREQ,X)
            rts
            adc (OLDADR,X)
            .byte $5F,$52,$53,$5C
            eor L6968,X
            ror MLTTMP+1
            rti
            rti
            .byte $5A,$5B
            ror
            .byte $6B
            cli
            eor L6968,Y
            .byte $52,$53
            rts
            adc (SAVMSC,X)
            eor L7372,Y
            rti
            rti
            rti
            .byte $52,$53
            jmp L404D
            rti
            ror MLTTMP+1
            pla
            adc #$52
            .byte $53
            bvs L8DF5
            rti
            rti
            ror MLTTMP+1
            rts
            adc (SAVMSC,X)
            eor L5352,Y
            pla
            adc #$66
            .byte $67
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            bit ICBAHZ
            rti
            rti
            rti
            rti
            .byte $62,$63,$52,$53
L8DA8       bvs L8E1B
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8DB3       rti
L8DB4       bvs L8E26
            bvs L8DA8
L8DB8       bvs L8E2A
            .byte $44
            jsr L7021
            bvs L8DC4
L8DC0       bvs L8E32
            bvs L8DC8
L8DC4       bvs L8E36
            bvs L8D4C
L8DC8       eor (L0000,X)
L8DCA       and (FREQ,X)
            rti
            rti
            rti
            rti
            rti
            rti
            ror MLTTMP+1
            rts
            adc (SAVMSC,X)
            eor L5352,Y
            pla
            adc #$40
            rti
            .byte $62,$63,$52,$53
            bvs L8E53+2
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            .byte $42,$43
            cli
            eor L5958,Y
            rti
            rti
L8DF5       rts
            adc (OLDADR,X)
            .byte $5F,$52,$53,$5C
            eor L6968,X
            ror MLTTMP+1
            rti
            rti
            .byte $5C
            eor L5F5E,X
            ror L406F
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            bit ICBAHZ
            rti
            rti
L8E1B       rti
            rti
            sei
            adc L4040,Y
            rti
            rti
            rti
            rti
            rti
L8E26       rti
            rti
            rti
            rti
L8E2A       rti
            rti
            rti
            lsr L645F,X
            adc LMARGN
L8E32       .byte $53
            lsr L524F
L8E36       .byte $53,$5C
            eor L4342,X
            cli
            eor L4040,Y
            jmp (L426D)
            .byte $43
            cli
            eor L6B6A,Y
            lsr
            .byte $4B
            rti
L8E4A       rti
            bvs L8EBD
            bvs L8EBF
            bvs L8EC1
            bvs L8E97
L8E53       jsr L0421
            bvs L8EC8
            bvs L8ECA
            bvs L8ECB+1
            .byte $04
            bvs L8ECD+2
            .byte $04
            bvs L8ED2
            bvs L8ED4
            bvs L8ED5+1
            .byte $04
            eor (L0000,X)
L8E69       and (FREQ,X)
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            .byte $02,$03,$04
            ora TRAMSZ
            .byte $07
            php
            ora #$0A
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            .byte $0B,$0C
L8E97       ora L0F0E
            bpl L8EAB+2
            .byte $12,$13
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            cli
L8EAB       eor L4B4A,Y
            jmp (L4A6D)
            .byte $4B
            cli
            eor L407A,Y
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8EBD       rti
            rti
L8EBF       rti
            rti
L8EC1       rti
            rti
            rti
            rti
            rti
            rti
            rti
L8EC8       rti
            rti
L8ECA       rts
L8ECB       adc (SAVMSC,X)
L8ECD       eor L4342,Y
            .byte $72,$73
L8ED2       lsr
            .byte $4B
L8ED4       .byte $64
L8ED5       adc MLTTMP
            .byte $67,$7A
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            asl L221F,X
            .byte $23,$32,$33
            bmi L8F29
            bit ICBAHZ
            rti
            .byte $42,$43
            pla
            adc #$42
            .byte $43,$64
            adc LMARGN
            .byte $53
            rti
            rti
            rti
            rti
            rti
L8F0A       rti
            rti
            rti
            rti
            .byte $5C
            eor L5F5E,X
            ror
            .byte $6B,$52,$53
            lsr FMSZPG+4
            lsr
            .byte $4B
            rti
            rti
            ror MLTTMP+1
            lsr DINDEX,X
            .byte $52,$53
            cli
            eor L5958,Y
            lsr
            .byte $4B
            pha
L8F29       eor #$42
            .byte $43
            pha
            eor #$6A
            .byte $6B,$42,$43,$5C
            eor L4746,X
            lsr
            .byte $4B
            pha
            eor #$40
            rti
            rti
            rti
            lsr
            .byte $4B
            bvs L8FB2+1
            rts
            adc (ZCHAIN,X)
            .byte $4B,$64
            adc SAVADR
L8F49       adc #$40
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            .byte $22,$23
            rti
            rti
            rti
            rti
L8F5E       rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8F68       bit ICBAHZ
            bvs L8FDB+1
            bvs L8F5E
            bvs L8FE0
            bvs L8FE1+1
            bvs L8FE4
            bvs L8FE6
            bvs L8FE8
            .byte $44
            jsr LF021
            eor (L0000,X)
L8F7E       and (FREQ,X)
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rts
            adc (SAVMSC,X)
            eor L4342,Y
            .byte $72,$73
            lsr
            .byte $4B,$64
            adc FREQ
            rti
            .byte $22,$23
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8F9E       rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rts
            adc (SAVMSC,X)
            eor L4342,Y
            .byte $72,$73
            lsr
            .byte $4B,$64
L8FB2       adc FREQ
            rti
            bit ICBAHZ
            rti
            rti
            rti
            rti
            rti
            rti
            rti
            rti
L8FBF       lda LOGCOL
            cmp #$00
            beq L8FE8
            lda L00A3
            bne L8FE9
            lda L00A1
            bne L8FDB
            ldx #$00
            jsr L8FF8
            inx
            jsr L8FF8
            lda #$00
            jmp L8FE8
L8FDB       ldx #$02
            jsr L8FF8
L8FE0       inx
L8FE1       jsr L8FF8
L8FE4       lda ADRESS+1
L8FE6       eor #$01
L8FE8       rts
L8FE9       lda ADRESS+1
            beq L8FF7
            lda #$98
            sta APPMHI+1
            lda #$01
            sta L00A8
            sta L00A9
L8FF7       rts
L8FF8       lda #$50
            sta L1210,X
            lda #$24
            sta L1220,X
            lda #$00
            sta L1230,X
            jsr L920A
            lda #$01
            sta L00A0,X
            sta L1260,X
            txa
            and #$01
            beq L901B
            lda #$02
            jmp L901D
L901B       lda #$04
L901D       sta L1200,X
            rts
L9021       lda LOGCOL
            cmp #$00
            beq L9061
            lda L00A0
            bne L9061
            lda #$00
            sta L00A7
L902F       ldx #$00
            jsr L90A2
            inx
            jsr L90A2
            jsr L9132
            jsr L9062
            beq L902F
            jsr L9079
            beq L902F
            jsr L9132
            jsr L9079
            beq L902F
L904D       jsr L9132
            jsr L9062
            bne L904D
            lda #$01
            sta L00A7
            lda #$F8
            sta DOSVEC+1
            lda #$48
            sta APPMHI+1
L9061       rts
L9062       lda L1210
            cmp L1211
            bne L9078
            lda L1220
            cmp L1221
            bne L9078
            lda L1230
            cmp L1231
L9078       rts
L9079       lda L1260
            beq L90A1
            lda L1261
            beq L90A1
            dec L1260
            dec L1260
            ldx #$00
            jsr L9270
            inc L1260
            inc L1260
            ldy L1200
            dey
            bne L909C
            ldy #$04
L909C       lda ICBAHZ,Y
            cmp #$03
L90A1       rts
L90A2       lda LOMEM
            sta L1210,X
            lda LOMEM+1
            sta L1220,X
            lda L0082
            sta L1230,X
            jsr L920A
            lda #$01
            sta L00A0,X
            sta L1260,X
            lda RANDOM
            and #$03
            clc
            adc #$01
            sta L1200,X
            rts
L90C7       lda #$00
            sta ICAX1Z
            lda L00A8
            beq L910C
            lda L1260,X
            bmi L90F9
            lda L0085
            cmp #$01
            beq L910C
            lda L0092
            cmp L1210,X
            bne L910C
            lda L0093
            cmp L1220,X
            bne L910C
            lda L0094
            cmp L1230,X
            bne L910C
            lda #$FF
            sta L1260,X
            sta ICAX1Z
            jmp L912E
L90F9       jsr L924D
            cmp #$02
            bne L9107
            lda #$FF
            sta ICAX1Z
            jmp L912E
L9107       lda #$01
            sta L1260,X
L910C       lda L1260,X
            beq L9120
            jsr L924D
            cmp #$01
            beq L912E
            lda #$00
            sta L1260,X
            jmp L912E
L9120       jsr L924D
            cmp #$01
            bne L912E
            lda #$01
            sta ICAX1Z
            sta L1260,X
L912E       jsr L9270
            rts
L9132       ldx #$03
L9134       lda L00A0,X
            beq L913B
            jsr L913F
L913B       dex
            bpl L9134
            rts
L913F       jsr L90C7
            lda ICAX1Z
            beq L914B
            bpl L9197
            jmp L8AF0
L914B       txa
            and #$01
L914E       sta ICAX1Z
            asl
            eor L1200,X
            and #$03
            beq L918A
            cmp #$01
            beq L9163
            cmp #$02
            beq L9170
            jmp L917D
L9163       lda ICBLHZ
            cmp #$01
            beq L919F
            lda ICAX1Z
            beq L9170
            jmp L918A
L9170       lda ICPTLZ
            cmp #$01
            beq L91B5
            lda ICAX1Z
            beq L917D
            jmp L9163
L917D       lda ICPTHZ
            cmp #$01
            beq L91D2
            lda ICAX1Z
            beq L918A
            jmp L9170
L918A       lda ICBLLZ
            cmp #$01
            beq L91ED
            lda ICAX1Z
            beq L9163
            jmp L917D
L9197       txa
            and #$01
            eor #$01
            jmp L914E
L919F       dec L1230,X
            bpl L91AC
            lda #$03
            sta L1230,X
            dec L1210,X
L91AC       dec L1240,X
            lda #$04
            sta L1200,X
            rts
L91B5       lda L1210,X
            sec
            sbc #$20
            sta L1210,X
            lda L1220,X
            sbc #$00
            sta L1220,X
            dec L1250,X
            dec L1250,X
            lda #$01
            sta L1200,X
            rts
L91D2       inc L1230,X
            lda L1230,X
            cmp #$04
            bmi L91E4
            lda #$00
            sta L1230,X
            inc L1210,X
L91E4       inc L1240,X
            lda #$02
            sta L1200,X
            rts
L91ED       lda L1210,X
            clc
            adc #$20
            sta L1210,X
            lda L1220,X
            adc #$00
            sta L1220,X
            inc L1250,X
            inc L1250,X
            lda #$03
            sta L1200,X
            rts
L920A       lda L1210,X
            sta ICHIDZ
            lda L1220,X
            sta ICDNOZ
            lda L1230,X
            sta ICCOMZ
            lda ICHIDZ
            sta ICAX6Z
            asl
            asl
            ora ICCOMZ
            and #$7F
            clc
            adc #$40
            sta ICSTAZ
            lda ICDNOZ
            sec
            sbc #$24
            asl ICAX6Z
            rol
            asl ICAX6Z
            rol
            asl ICAX6Z
            rol
            asl
            clc
            adc #$30
            sta ICBALZ
            lda ICSTAZ
            sec
            sbc #$02
            sta L1240,X
            lda ICBALZ
            sec
            sbc #$05
            sta L1250,X
            rts
L924D       lda L1210,X
            sta ICHIDZ
            lda L1220,X
            sta ICDNOZ
            lda L1230,X
            sta ICCOMZ
            ldy #$00
            lda (ICHIDZ),Y
            ldy ICCOMZ
L9262       beq L926A
            asl
            asl
            dey
            jmp L9262
L926A       asl
            rol
            rol
            and #$03
            rts
L9270       lda L1210,X
            sta ICHIDZ
            lda #$00
            ldy L1260,X
            bmi L927E
            lda #$0C
L927E       clc
            adc L1220,X
            sta ICDNOZ
            lda L1230,X
            sta ICCOMZ
            dec ICDNOZ
            ldy #$E0
            lda (ICHIDZ),Y
            sta ICPTLZ
            ldy #$FF
            lda (ICHIDZ),Y
            sta ICBLHZ
            inc ICDNOZ
            ldy #$00
            lda (ICHIDZ),Y
            sta ICBAHZ
            ldy #$01
            lda (ICHIDZ),Y
            sta ICPTHZ
            ldy #$20
            lda (ICHIDZ),Y
            sta ICBLLZ
            ldy ICCOMZ
            lda ICPTLZ
            jsr L92EF
            sta ICPTLZ
            ldy ICCOMZ
            lda ICBLLZ
            jsr L92EF
            sta ICBLLZ
            ldy ICCOMZ
            dey
            bmi L92C7
            lda ICBAHZ
            jmp L92CB
L92C7       ldy #$03
            lda ICBLHZ
L92CB       jsr L92EF
            sta ICBLHZ
            ldy ICCOMZ
            iny
            cpy #$04
            beq L92DC
            lda ICBAHZ
            jmp L92E0
L92DC       ldy #$00
            lda ICPTHZ
L92E0       jsr L92EF
            sta ICPTHZ
            ldy ICCOMZ
            lda ICBAHZ
            jsr L92EF
            sta ICBAHZ
            rts
L92EF       dey
            bmi L92F7
            asl
            asl
            jmp L92EF
L92F7       asl
            rol
            rol
            and #$03
            rts
L92FD       lda #$00
            sta L00A7
            sta L00A8
            ldx #$03
L9305       sta L00A0,X
            sta L1220,X
            dex
            bpl L9305
            rts
L930E       lda L00F9
            bne L9329
            lda RANDOM
            and #$03
            clc
            adc #$01
            sta L00F9
L931C       lda RANDOM
            and #$03
            tax
            dex
            bmi L931C
            lda L00F6,X
            sta L00F5
L9329       dec L00F9
            lda L1048
            beq L9368
            lda #$00
            sta L00F4
            jsr L93AA
            lda #$00
            sta L00B0
            lda L1051
            sec
            sbc #$30
            lsr
            lsr
            ror L00B0
            lsr
            ror L00B0
            lsr
            ror L00B0
            clc
            adc #$24
            sta L00B1
            lda L1050
            sec
            sbc #$40
            tax
            lsr
            lsr
            ora L00B0
            sta L00B0
            txa
            and #$03
            sta L00B2
            lda L00B0
            ora #$20
            sta L00B0
L9368       lda L10A8
            beq L93A9
            lda #$FF
            sta L00F4
            jsr L93AA
            lda #$24
            sta ICAX5Z
            lda #$00
            sta L00B3
            lda L10B1
            sec
            sbc #$30
            lsr
            lsr
            ror L00B3
            lsr
            ror L00B3
            lsr
            ror L00B3
            clc
            adc #$24
            sta L00B4
            lda L10B0
            sec
            sbc #$40
            tax
            lsr
            lsr
            ora L00B3
            sta L00B3
            txa
            and #$03
            sta L00B5
            lda L00B3
            ora #$20
            sta L00B3
L93A9       rts
L93AA       lda #$60
            and L00F4
            sta ICHIDZ
            tay
            ldx L1058,Y
            beq L93DD
            dex
            txa
            sta L1058,Y
            ldx #$00
L93BD       lda L1050,Y
            clc
            adc L1054,Y
            sta L00EC,X
            iny
            inx
            cpx #$04
            bmi L93BD
            jsr L949F
            cpx #$01
            bne L93D6
            jmp L9471
L93D6       cpx #$02
            bne L93DD
            jmp L9472
L93DD       lda RANDOM
            and #$0F
            cmp L00CE
            bpl L942F
            ldy ICHIDZ
            lda L1050,Y
            cmp L0090
            bcs L93FE
            jsr L948D
            sta L1054,Y
            jsr L948D
            sta L1056,Y
            jmp L940A
L93FE       jsr L9497
            sta L1054,Y
            jsr L9497
            sta L1056,Y
L940A       lda L1051,Y
            cmp L0091
            bcs L9420
            jsr L948D
            sta L1055,Y
            jsr L948D
            sta L1057,Y
            jmp L9446
L9420       jsr L9497
            sta L1055,Y
            jsr L9497
            sta L1057,Y
            jmp L9446
L942F       ldx #$04
            ldy ICHIDZ
L9433       lda RANDOM
            and #$07
            sec
            sbc #$03
            bne L943F
            lda #$FC
L943F       sta L1054,Y
            iny
            dex
            bne L9433
L9446       ldx #$00
            ldy ICHIDZ
L944A       lda L1050,Y
            clc
            adc L1054,Y
            sta L00EC,X
            iny
            inx
            cpx #$04
            bmi L944A
            jsr L949F
            cpx #$00
            beq L942F
            cpx #$02
            beq L9472
            lda RANDOM
            and #$07
            clc
            adc #$04
            ldy ICHIDZ
            sta L1058,Y
L9471       rts
L9472       lda L0088
            ora #$10
            sta L0088
            rts
L9479       lda #$60
            tax
            lda #$00
            sta L00F4
L9480       dex
            bmi L948C
            sta L1000,X
            sta L1060,X
            jmp L9480
L948C       rts
L948D       lda RANDOM
            and #$03
            bne L9496
            lda #$04
L9496       rts
L9497       lda RANDOM
            and #$03
            eor #$FF
            rts
L949F       lda #$00
            sta L00F1
            sta L00F2
            sta L00F0
            lda #$01
            sta ICDNOZ
            lda #$00
            ldx #$07
L94AF       sta L00E0,X
            dex
            bpl L94AF
            lda L00EE
            cmp L00EC
            bmi L94CA
            clc
            adc #$01
            sec
            sbc L00EC
            lsr
            sta L00EA
            lda L00EC
            sta L00E8
            jmp L94D9
L94CA       sta L00E8
            lda L00EC
            clc
            adc #$01
            sec
            sbc L00EE
            lsr
            sta L00EA
            inc L00F0
L94D9       lda L00EF
            cmp L00ED
            bmi L94EF
            clc
            adc #$01
            sec
            sbc L00ED
            lsr
            sta L00EB
            lda L00ED
            sta L00E9
            jmp L9508
L94EF       sta L00E9
            lda L00ED
            clc
            adc #$01
            sec
            sbc L00EF
            lsr
            sta L00EB
            lda L00F0
            eor #$01
            sta L00F0
            jmp L9508
L9505       ldx #$00
            rts
L9508       lda L00EA
            cmp #$08
            bpl L9505
            lda L00EB
            cmp #$08
            bpl L9505
            lda L00E8
            cmp #$40
            bcs L951E
            cmp #$BC
            bcs L9505
L951E       lda L00E9
            cmp #$30
            bcs L9528
            cmp #$D4
            bcs L9505
L9528       lda L00EB
            cmp L00EA
            bpl L9556
            lda L00EA
            sta ICCOMZ
            lsr
            sta L00F3
L9535       jsr L95D7
            beq L9553
            inc L00F1
            lda L00F3
            clc
            adc L00EB
            cmp L00EA
            bmi L954A
            sec
            sbc L00EA
            inc L00F2
L954A       sta L00F3
            dec ICCOMZ
            bpl L9535
            jmp L9578
L9553       ldx ICDNOZ
            rts
L9556       lda L00EB
            sta ICCOMZ
            lsr
            sta L00F3
L955D       jsr L95D7
            beq L9553
            inc L00F2
            lda L00F3
            clc
            adc L00EA
            cmp L00EB
            bmi L9572
            sec
            sbc L00EB
            inc L00F1
L9572       sta L00F3
            dec ICCOMZ
            bpl L955D
L9578       lda #$60
            and L00F4
            tay
            ldx L1049,Y
            bne L9584
            ldx #$04
L9584       dex
            txa
            sta L1049,Y
            cpy #$00
            bne L9591
            lda L00F5
            sta L00C0,X
L9591       tya
            clc
            adc L1049,Y
            tax
            lda L00E8
            sta L1040,X
            lda L00E9
            sta L1044,X
            lda L00EC
            sta L1050,Y
            lda L00ED
            sta L1051,Y
            lda L00EE
            sta L1052,Y
            lda L00EF
            sta L1053,Y
            lda L1049,Y
            asl
            asl
            asl
            asl
            sty L00F3
            clc
            adc L00F3
            tax
            ldy #$00
L95C4       lda L00E0,Y
            sta L1000,X
            inx
            sta L1000,X
            inx
            iny
            cpy #$08
            bne L95C4
            ldx ICDNOZ
            rts
L95D7       lda L00F0
            beq L95E4
            lda L00EB
            sec
            sbc L00F2
            tay
            jmp L95E6
L95E4       ldy L00F2
L95E6       lda #$80
            ldx L00F1
            beq L95F0
L95EC       lsr
            dex
            bne L95EC
L95F0       ora L00E0,Y
            sta L00E0,Y
            jsr L95FA
            rts
L95FA       tya
            asl
            clc
            adc L00E9
            sta ICAX3Z
            lda L00F1
            asl
            clc
            adc L00E8
            and #$FE
            sta ICAX2Z
            lda #$00
            sta ICAX4Z
            lda ICAX3Z
            sec
            sbc #$30
            lsr
            lsr
            ror ICAX4Z
            lsr
            ror ICAX4Z
            lsr
            ror ICAX4Z
            clc
            adc #$24
            sta ICAX5Z
            lda ICAX2Z
            sec
            sbc #$40
            tax
            lsr
            lsr
            ora ICAX4Z
            sta ICAX4Z
            txa
            and #$03
            sta ICAX6Z
            ldy #$00
            lda (ICAX4Z),Y
            ldy ICAX6Z
L963A       beq L9642
            asl
            asl
            dey
            jmp L963A
L9642       asl
            rol
            rol
            and #$03
            cmp #$00
            beq L9654
            cmp #$02
            beq L9657
            lda #$00
            sta ICDNOZ
            rts
L9654       lda #$01
            rts
L9657       lda #$02
            sta ICDNOZ
            rts
DLI1        pha
            txa
            pha
            tya
            pha
            lda VCOUNT
            cmp #$60
            bmi L966B
            jmp L9B76
DLI1P
L966B       lda #$D1
            sta VDSLST
DLI1Q	    lda #$96
            sta VDSLST+1
            lda FKDEF+1
            sta COLPF1
            lda PALNTS
            sta COLPF2
            lda FMSZPG+4
            ldy ZCHAIN
            ldx #$02
            stx ATRACT
            ldx #$FF
            cpx FMSZPG+5
            bne L968F
            dec ATRACT
L968F       cpx ZCHAIN+1
            bne L9697
            dec ATRACT
            beq L96C5
L9697       sta WSYNC
            lda VCOUNT
            clc
            adc #$1C
            tax
            lda FMSZPG+4
L96A3       inx
            cpx FMSZPG+5
            bne L96AE
            lda FMSZPG+6
            dec ATRACT
            beq L96C5
L96AE       cpx ZCHAIN+1
            bne L96B8
            ldy DSTAT
            dec ATRACT
            beq L96C5
L96B8       sta WSYNC
            sta HPOSP0
            sty HPOSP1
            cpx #$D4
            bcc L96A3
L96C5       sta WSYNC
            sta HPOSP0
            sty HPOSP1
            jmp L9B76
DLI2        pha
            txa
            pha
            tya
            pha
            cld
            lda #$5C
            sta VDSLST
	    lda #$96
            sta VDSLST+1
            lda #$00
            ldy FMSZPG+1
            cpy #$FF
            beq L96F2
            ldx #$0A
L96EB       sta L1600,Y
            iny
            dex
            bne L96EB
L96F2       lda L00A4
            beq L9720
            lda L00CB
            and #$01
            beq L9720
            lda L1244
            sta HPOSP2
            lda #$28
            sta DOSVEC
            lda L1254
            sta FMSZPG+1
            ldx #$09
            ldy L1254
L9710       lda RANDOM
            and L7587,X
            sta L1600,Y
            iny
            dex
            bpl L9710
            jmp L9742
L9720       lda ADRESS
            beq L9742
            lda #$36
            sta DOSVEC
            lda L0090
            sta HPOSP2
            lda L0091
            sta FMSZPG+1
            lda #$09
            tax
            clc
            adc L0091
            tay
L9738       lda L81CB,X
            sta L1600,Y
            dey
            dex
            bpl L9738
L9742       lda #$00
            ldy FREQ
            cpy #$FF
            beq L9753
            ldx #$10
L974C       sta L1400,Y
            iny
            dex
            bne L974C
L9753       ldy SOUNDR
            cpy #$FF
            beq L9762
            ldx #$10
L975B       sta L1400,Y
            iny
            dex
            bne L975B
L9762       ldy CRITIC
            cpy #$FF
            beq L9771
            ldx #$10
L976A       sta L1500,Y
            iny
            dex
            bne L976A
L9771       ldy FMSZPG
            cpy #$FF
            beq L9780
            ldx #$10
L9779       sta L1500,Y
            iny
            dex
            bne L9779
L9780       inc L00CB
            lda L00CB
            and #$02
            lsr
            sec
            sbc #$01
            tax
            eor #$FF
            and #$60
            sta L00C7
            txa
            and #$60
            sta L00C8
            lda L00CB
            and #$01
            asl
            sta L00C6
            clc
            adc L00C7
            sta L00C9
            lda L00C6
            clc
            adc L00C8
            sta L00CA
            lda L00C6
            asl
            asl
            asl
            asl
            sta L00C5
            ldy L00C6
            lda L00C0,Y
            sta WARMST
            ldy L00C7
            lda L1048,Y
            beq L97EC
            ldy L00C9
            lda L1040,Y
            sta HPOSP0
            sta FMSZPG+4
            lda L1044,Y
            sta FREQ
            tay
            lda L00C5
            clc
            adc L00C7
            tax
            lda #$10
            sta L00C4
L97D9       lda L1000,X
            sta L1400,Y
            iny
            inx
            dec L00C4
            bne L97D9
            lda L00CD
            beq L9851
            jmp L97F7
L97EC       lda #$FF
            sta FREQ
            lda #$00
            sta HPOSP0
            sta FMSZPG+4
L97F7       ldy L00C8
            lda L1048,Y
            beq L9851
            ldy L00CA
            lda L1044,Y
            sta SOUNDR
            clc
            adc #$10
            sec
            sbc FREQ
            and #$E0
            beq L9851
            lda SOUNDR
            cmp FREQ
            bcc L9824
            lda FREQ
            clc
            adc #$10
            sta FMSZPG+5
            lda L1040,Y
            sta FMSZPG+6
            jmp L9835
L9824       clc
            adc #$10
            sta FMSZPG+5
            lda FMSZPG+4
            sta FMSZPG+6
            lda L1040,Y
            sta HPOSP0
            sta FMSZPG+4
L9835       lda SOUNDR
            tay
            lda L00C5
            clc
            adc L00C8
            tax
            lda #$10
            sta L00C4
L9842       lda L1000,X
            sta L1400,Y
            iny
            inx
            dec L00C4
            bne L9842
            jmp L985B
L9851       lda #$FF
            sta SOUNDR
            sta FMSZPG+5
            lda #$00
            sta FMSZPG+6
L985B       inc L00C6
            inc L00C9
            inc L00CA
            lda L00C6
            asl
            asl
            asl
            asl
            sta L00C5
            ldy L00C6
            lda L00C0,Y
            sta BOOT
            ldy L00C7
            lda L1048,Y
            beq L98A4
            ldy L00C9
            lda L1040,Y
            sta HPOSP1
            sta ZCHAIN
            lda L1044,Y
            sta CRITIC
            tay
            lda L00C5
            clc
            adc L00C7
            tax
            lda #$10
            sta L00C4
L9891       lda L1000,X
            sta L1500,Y
            iny
            inx
            dec L00C4
            bne L9891
            lda L00CD
            beq L9909
            jmp L98AF
L98A4       lda #$FF
            sta CRITIC
            lda #$00
            sta HPOSP1
            sta ZCHAIN
L98AF       ldy L00C8
            lda L1048,Y
            beq L9909
            ldy L00CA
            lda L1044,Y
            sta FMSZPG
            clc
            adc #$10
            sec
            sbc CRITIC
            and #$E0
            beq L9909
            lda FMSZPG
            cmp CRITIC
            bcc L98DC
            lda CRITIC
            clc
            adc #$10
            sta ZCHAIN+1
            lda L1040,Y
            sta DSTAT
            jmp L98ED
L98DC       clc
            adc #$10
            sta ZCHAIN+1
            lda ZCHAIN
            sta DSTAT
            lda L1040,Y
            sta HPOSP1
            sta ZCHAIN
L98ED       lda FMSZPG
            tay
            lda L00C5
            clc
            adc L00C8
            tax
            lda #$10
            sta L00C4
L98FA       lda L1000,X
            sta L1500,Y
            iny
            inx
            dec L00C4
            bne L98FA
            jmp L9913
L9909       lda #$FF
            sta FMSZPG
            sta ZCHAIN+1
            lda #$00
            sta DSTAT
L9913       lda #$00
            ldy FMSZPG+2
            cpy #$FF
            beq L9924
            ldx #$0A
L991D       sta L1700,Y
            iny
            dex
            bne L991D
L9924       lda L00A7
            beq L998B
            lda L00CB
            and #$03
            tax
            beq L9947
            dex
            beq L9959
            dex
            beq L996B
            lda L00A3
            beq L998B
            lda L1243
            sta HPOSP3
            lda L1253
            sta FMSZPG+2
            jmp L997A
L9947       lda L00A0
            beq L998B
            lda L1240
            sta HPOSP3
            lda L1250
            sta FMSZPG+2
            jmp L997A
L9959       lda L00A1
            beq L998B
            lda L1241
            sta HPOSP3
            lda L1251
            sta FMSZPG+2
            jmp L997A
L996B       lda L00A2
            beq L998B
            lda L1242
            sta HPOSP3
            lda L1252
            sta FMSZPG+2
L997A       ldx #$09
            ldy FMSZPG+2
L997E       lda RANDOM
            and L7587,X
            sta L1700,Y
            iny
            dex
            bpl L997E
L998B       lda #$00
            ldy FMSZPG+3
            cpy #$FF
            beq L999C
            ldx #$0A
L9995       sta L1300,Y
            iny
            dex
            bne L9995
L999C       lda L00A7
            beq L9A0B
            lda L00CB
            and #$03
            eor #$02
            tax
            beq L99BE
            dex
            beq L99CD
            dex
            beq L99DC
            lda L00A3
            beq L9A0B
            lda L1253
            sta FMSZPG+3
            ldx L1243
            jmp L99E8
L99BE       lda L00A0
            beq L9A0B
            lda L1250
            sta FMSZPG+3
            ldx L1240
            jmp L99E8
L99CD       lda L00A1
            beq L9A0B
            lda L1251
            sta FMSZPG+3
            ldx L1241
            jmp L99E8
L99DC       lda L00A2
            beq L9A0B
            lda L1252
            sta FMSZPG+3
            ldx L1242
L99E8       stx HPOSM3
            inx
            inx
            stx HPOSM2
            inx
            inx
            stx HPOSM1
            inx
            inx
            stx HPOSM0
            ldx #$09
            ldy FMSZPG+3
L99FE       lda RANDOM
            and L7587,X
            sta L1300,Y
            iny
            dex
            bpl L99FE
L9A0B       lda SAVMSC
            beq L9A12
            jmp L9B76
L9A12       lda L00B8
            beq L9A5E
            lda L00B6
            beq L9A52
            bmi L9A37
            lda L00B7
            lsr
            lsr
            lsr
            cmp #$04
            bpl L9A27
            inc L00B7
L9A27       clc
            adc #$C0
            sta AUDC2
            lda #$21
            sta AUDF2
            dec L00B6
            jmp L9A67
L9A37       lda L00B7
            lsr
            lsr
            lsr
            cmp #$02
            bmi L9A42
            dec L00B7
L9A42       clc
            adc #$C0
            sta AUDC2
            lda #$21
            sta AUDF2
            inc L00B6
            jmp L9A67
L9A52       lda RANDOM
            and #$1F
            sbc #$0F
            sta L00B6
            jmp L9A67
L9A5E       lda #$00
            sta L00B6
            sta L00B7
            sta AUDC2
L9A67       lda L00A9
            beq L9A8C
            bpl L9A77
            lda #$00
            sta L00A9
            sta AUDC4
            jmp L9A8C
L9A77       and #$01
            beq L9A80
            lda #$1E
            jmp L9A82
L9A80       lda #$20
L9A82       sta AUDF4
            lda #$A6
            sta AUDC4
            inc L00A9
L9A8C       lda L00A4
            beq L9A94
            lda L00A6
            bne L9AA0
L9A94       lda #$00
            sta AUDC1
            lda #$01
            sta L00A6
            jmp L9AAE
L9AA0       lda #$08
            sta AUDC1
            lda #$00
            sta AUDF1
            lda #$00
            sta L00A6
L9AAE       lda MLTTMP
            bne L9AB5
            jmp L9B71
L9AB5       and #$01
            beq L9AD7
            lda MLTTMP+1
            cmp #$00
            beq L9AC8
            lda #$00
            sta MLTTMP+1
            lda #$4B
            jmp L9ACC
L9AC8       inc MLTTMP+1
            lda #$4D
L9ACC       sta AUDF3
            lda #$A6
            sta AUDC3
            jmp L9B76
L9AD7       lda MLTTMP
            and #$02
            beq L9AEC
            lda MLTTMP+1
            sta AUDF3
            lda #$88
            sta AUDC3
            inc MLTTMP+1
            jmp L9B76
L9AEC       lda MLTTMP
            and #$04
            bne L9AFE
            lda MLTTMP
            and #$08
            bne L9AFE
            lda MLTTMP
            and #$20
            beq L9B71
L9AFE       lda #$01
;
            org $022F
;
            .byte $00
;
            org $D400
;
            .byte $00
;
            org $9B00
;
L9B00       ldy #$05
            ldx #$13
            lda #$00
L9B06       sta L9B00,X
            inx
            bne L9B06
            inc L9B06+2
            dey
            bne L9B06
            rts
;
            org $02E2
;
            .word L9B00
;
            org $9B00
;
            sta AUDCTL
            lda COLRSH
            bne L9B17
            inc COLRSH
            lda DRKMSK
            cmp #$03
            beq L9B17
            lda #$0A
            sta AUDC3
            jmp L9B76
L9B17       lda RAMTOP
            sta AUDF3
            lda #$A8
            sta AUDC3
            inc COLRSH
            lda COLRSH
            cmp #$05
            bne L9B76
            lda #$00
            sta COLRSH
            ldx DRKMSK
            inx
            cpx #$07
            bne L9B36
            ldx #$00
L9B36       stx DRKMSK
            lda MLTTMP
            and #$04
            beq L9B46
            lda L9B5C,X
            sta RAMTOP
            jmp L9B76
L9B46       lda MLTTMP
            and #$08
            beq L9B54
            lda L9B62+1,X
            sta RAMTOP
            jmp L9B76
L9B54       lda L9B69+1,X
            sta RAMTOP
            jmp L9B76
L9B5C       sta L4C4C,Y
            jmp L7998+1
L9B62       jmp L3972
            and L7237+2,Y
            rts
L9B69       and L2F60,Y
            .byte $2F,$2F
            rts
            eor (ICAX6Z),Y
L9B71       lda #$00
            sta AUDC3
L9B76       pla
            tay
            pla
            tax
            pla
            rti
            lda SAVADR+1
            beq L9B82
            dec SAVADR+1
L9B82       lda FKDEF
            cmp #$05
            bne L9B9B
            lda #$00
            sta FKDEF
            lda PAL
            cmp #$0F
            beq L9B9B
            inc CASINI
            bne L9B9B
            inc RAMLO
            inc NGFLAG
L9B9B       inc FKDEF
            pla
            tay
            pla
            tax
            pla
            rti
;
            org $9C10
;
            ora COLCRS,X
            .byte $54,$54,$54,$54,$54,$54
            eor COLCRS,X
;
            org $9C20
;
            rti
            bvc L9C73
            bvc L9C75
            bvc L9C77
            bvc L9C7D
            .byte $54,$54,$54,$54,$54,$54,$54
            ora BUFADR,X
            ora BUFADR,X
            ora RAMLO+1,X
            ora BUFADR
            .byte $00,$00,$00,$00
            eor (COLCRS,X)
            eor SOUNDR,X
            bvc L9C92
            bvc L9C94
            eor (RAMLO,X)
            .byte $04
            eor (SOUNDR,X)
            eor (SOUNDR,X)
            eor (RAMLO,X)
            bpl L9C5F
            .byte $04,$04,$04,$04,$04
            bpl L9C95+1
            rti
            bpl L9CAD
            .byte $54
            eor BUFADR,X
            .byte $00,$00,$00
L9C5F       .byte $00
            rti
            bvc L9CB8
            eor RAMLO+1,X
            ora (L0000,X)
            .byte $00
            bvc L9CBA
            bvc L9CAC
            rti
            eor COLCRS,X
            .byte $00,$54,$54,$54
L9C73       .byte $54,$00
L9C75       eor COLCRS,X
L9C77       .byte $00
            ora BUFADR,X
            ora BUFADR,X
            .byte $00
L9C7D       eor COLCRS,X
;
            org $9C85
;
            eor COLCRS,X
            .byte $00
            bvc L9CDA
            bvc L9CDC
            .byte $00
            eor COLCRS,X
            .byte $00
            eor (SOUNDR,X)
L9C92       eor (SOUNDR,X)
L9C94       .byte $00
L9C95       eor COLCRS,X
            .byte $00,$04,$04,$04,$04,$00
            eor COLCRS,X
            .byte $00
            ora (NGFLAG,X)
            .byte $00,$02,$02,$00,$02,$02
            lsr
            lsr
            .byte $00
            txa
L9CAC       txa
L9CAD       .byte $00,$80,$80,$02,$02,$00
            ora (NGFLAG,X)
            .byte $00,$02,$02
L9CB8       txa
            txa
L9CBA       .byte $00
            lsr
            lsr
            .byte $00,$80,$80,$02,$02,$00,$02,$02,$00
            ora (NGFLAG,X)
            txa
            txa
            .byte $00
            txa
            txa
            .byte $00
            rti
            rti
            .byte $02,$02,$00,$02,$02,$00,$02,$02
            sta L0085
L9CDA       .byte $00
            txa
L9CDC       txa
            .byte $00,$80,$80,$02,$02,$00,$02,$02,$00,$02,$02
            txa
            txa
            .byte $00
            sta L0085
            .byte $00,$80,$80
            ora POKMSK
            eor FMSZPG+1
            eor POKMSK
            ora L0000
            rti
            bpl L9D3F
            .byte $04,$44
            bpl L9D3F
            .byte $00
            eor ROWCRS,X
            .byte $54,$54,$54,$54
            eor L0000,X
            .byte $54,$04,$04,$04,$04,$04,$54,$00
            ora NGFLAG
            ora (NGFLAG,X)
            ora (NGFLAG,X)
            ora (L0000,X)
            bvc L9D6A
            bvc L9D6C
            bvc L9D6E
            bvc L9D20
L9D20       eor L0000,X
            .byte $00
            eor FREQ,X
            rti
            eor L0000,X
            .byte $54,$54,$54,$54,$00,$54,$54,$00
            eor L0000,X
            .byte $00
            ora L0000
            .byte $00
            eor L0000,X
            .byte $54,$54,$54,$54,$54,$54,$54
L9D3F       .byte $00
            rti
            rti
            rti
            eor L0000,X
            .byte $00,$00,$00,$54,$54,$54,$54,$54,$54,$54,$00
            eor ROWCRS,X
            .byte $54
            eor L0000,X
            .byte $54
            eor L0000,X
            .byte $54,$00,$00,$54,$04,$04,$54,$00
            eor FREQ,X
            rti
            eor FREQ,X
            rti
            eor L0000,X
            .byte $54,$54
L9D6A       .byte $00,$54
L9D6C       .byte $54,$54
L9D6E       .byte $54,$00,$55
;
            org $9D78
;
            .byte $54,$54,$54,$54,$54,$54,$54,$00
            eor ROWCRS,X
            .byte $54
            eor ROWCRS,X
            .byte $54
            eor L0000,X
            .byte $54,$04,$04,$54,$04,$04,$54,$00
            eor FREQ,X
            rti
            eor L0000,X
            .byte $00,$00,$00,$54,$54,$54,$54,$54,$54,$54
;
            org $9E10
;
            eor FREQ,X
            rti
            eor FREQ,X
            rti
            rti
            .byte $00
            rti
            bvc L9E6F
            .byte $54,$54,$54,$54,$00
            eor ROWCRS,X
            .byte $54
            eor ROWCRS,X
            .byte $54
            eor L0000,X
            .byte $54,$04,$04,$54,$04,$04,$54,$00
            eor FREQ,X
            rti
            rti
            rti
            rti
            eor L0000,X
            .byte $54,$54,$54,$00,$54,$54,$54,$00
            eor FREQ,X
            rti
            rti
            rti
            rti
            eor L0000,X
            bvc L9E9E
            .byte $54,$54,$54,$54
            bvc L9E50
L9E50       eor ROWCRS,X
            .byte $54
            eor ROWCRS,X
            .byte $54
            eor L0000,X
            .byte $54,$00,$00
            rti
            .byte $00,$00,$54,$00
            eor ROWCRS,X
            .byte $54
            eor ROWCRS,X
            .byte $54,$54,$00,$54,$00,$00
            rti
            .byte $00,$00,$00
L9E6F       .byte $00
            eor FREQ,X
            rti
            eor (FREQ,X)
            rti
            eor L0000,X
            .byte $54,$54,$00,$54,$54,$54,$54,$00,$54,$54,$54
            eor ROWCRS,X
            .byte $54,$54,$00,$04,$04,$04,$54,$04,$04,$04,$00
            eor RAMLO+1,X
            ora RAMLO+1
            ora RAMLO+1
            eor L0000,X
            .byte $54
            rti
            rti
            rti
            rti
            rti
L9E9E       .byte $54
;
            org $9EA5
;
            rti
            eor L0000,X
            .byte $54,$54,$54,$54,$54,$54,$54,$00,$54,$54,$54,$54
            eor FREQ,X
            rti
            .byte $00
            bpl L9ECA
            bpl L9ECC
            .byte $54,$54,$54,$00,$54,$54,$54,$54,$54,$54,$55
;
            org $9ECE
;
            .byte $54,$00
            eor FMSZPG+2,X
            eor FMSZPG+2
            eor FMSZPG+2
            eor L0000
            .byte $54,$14,$14,$14,$14,$14,$14,$00
            eor FREQ,X
            rti
            rti
            rti
            rti
            rti
            .byte $00,$54,$54,$54,$54,$54,$54,$54,$00
            eor ROWCRS,X
            .byte $54,$54,$54,$54
            eor L0000,X
            .byte $54,$04,$04,$04,$04,$04,$54,$00
            eor ROWCRS,X
            .byte $54
            eor ROWCRS,X
            .byte $54,$54,$00,$54,$04,$04,$54,$00,$00,$00,$00
            eor ROWCRS,X
            .byte $54,$54,$54,$54
            eor L0000,X
            .byte $54,$04,$04,$04,$44,$54,$54,$00
            eor ROWCRS,X
            .byte $54
            eor ROWCRS,X
            .byte $54,$54,$00,$54,$04,$04
            bvc L9F40+1
            .byte $04,$04,$00
            eor ROWCRS,X
            .byte $54
            eor L0000,X
            rti
            eor L0000,X
            .byte $54,$04,$00
            bvc L9F91
            .byte $54,$54,$00
L9F40       eor RAMLO+1,X
            ora RAMLO+1
            ora RAMLO+1
            ora L0000
            .byte $54
            rti
            rti
            rti
            rti
            rti
            rti
            .byte $00,$54,$54,$54,$54,$54,$54
            eor L0000,X
            .byte $04,$04,$04,$04,$04,$04,$54,$00,$54,$54,$54,$54,$54
            eor BUFADR,X
            .byte $00,$04,$04,$04,$04,$04,$54
            bvc L9F70
L9F70       eor (HOLD1),Y
            eor (HOLD1),Y
            eor (HOLD1),Y
            eor L0000,X
            .byte $44,$44,$44,$44,$44,$44,$54,$00,$54,$54,$54
            ora FREQ,X
            rti
            rti
            .byte $00,$04,$04,$04
            bvc L9FE1
            .byte $54,$54,$00,$54
L9F91       .byte $54,$54,$54
            ora RAMLO+1
            ora L0000
            .byte $54,$54,$54,$54
            rti
            rti
            rti
            .byte $00
            eor L0000,X
            ora (RAMLO+1,X)
            ora ROWCRS,X
            eor L0000,X
            .byte $54,$54
            bvc L9FEC
            .byte $00,$00,$54,$00
            eor (SOUNDR,X)
            ora RTCLOK+2
            bvc L9FF7
            .byte $41
;
            org $9FC0
;
            bvc LA016
            ora RAMLO+1,X
            ora ROWCRS,X
            bvc L9FC8
L9FC8       .byte $14,$54
            bvc LA00C
            bvc LA022
            .byte $14,$00,$00,$14,$14,$00,$00,$14,$14
;
            org $9FE1
;
L9FE1       dec L16B2,X
            .byte $87,$F3,$43
            ora FREQ,X
            rti
            rti
            rti
L9FEC       rti
            rti
            rti
            rti
            and (ICBLHZ),Y
            sec
            rti
            rti
            rti
            rti
L9FF7       rti
            rti
            rti
            rti
            rti
            cli
            .byte $52,$00,$70
;
            org $02E2
;
            .word L6000
;
         
