; 
            icl 'river-raid.inc'
                                ;
        icl 'hiscore.asm'
        
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
            org $A000
;
LA000       lda #$00
            sta NMIEN
            sta IRQEN
            sta GRACTL
            sta DMACLT
            tay
            sta PBCTL
LA012       sta HPOSP0,Y
            sta DMACLT,Y
            sta AUDF1,Y
            sta PORTA,Y
            iny
            bne LA012
            ldx #$38
            stx PACTL
            sta PORTA
            ldx #$3C
            stx PACTL
            ldx #$03
            stx SKCTL
            ldy #$0F
LA035       sty L00A0
            jsr LB298
            cmp L0090,Y
            beq LA043
            ldy #$00
            beq LA048
LA043       dey
            bpl LA035
            ldy #$A0
LA048       lda #$00
            sta L0000
            sta NGFLAG
LA04E       sta (L0000),Y
            iny
            bne LA04E
            inc NGFLAG
            ldx NGFLAG
            cpx #$40
            bcc LA04E
            ldx #$03
LA05D       lda LB776,X
            sta L3F00,X
            dex
            bpl LA05D
            ldy #$0E
            ldx #$2E
            lda PAL
            and #$0E
            sta L00BF
            bne LA077
            ldy #$1D
            ldx #$2F
LA077       stx L00CB
            ldx #$0E
LA07B       lda LB77A,Y
            sta L3FA9,X
            dey
            dex
            bpl LA07B
            lda #$0E
            ldx #$A3
LA089       sta L3F05,X
            dex
            bne LA089
            stx L00A8
            sta L00A7
            lda #$4E
            sta L3F06
            sta L3F57
            stx L3F04
            stx L3F58
            ldx #$30
            stx L3F07
            ldx #$20
            stx L3F05
            stx L3F08
            ldx #$30
            stx L3F59
            ldy #$02
            sty L00A5
            ldy #$53
            sty L00A6
            lda #$00
            sta DLISTL
            lda #$3F
            sta DLISTH
            lda #$00
            sta VDSLST
            lda #$B5
            sta VDSLST+1
            ldx #$B2
            stx VVBLKI+1
            ldy #$A5
            sty VVBLKI
            lda #$85
            sta VIMIRQ
            lda #$B4
            sta VIMIRQ+1
            lda #$08
            sta PMBASE
            lda #$B9
            sta NGFLAG
            lda #$B7
            sta CASINI+1
            ldx #$3B
LA0F2       lda LBB70,X
            sta L1000,X
            dex
            bpl LA0F2
            ldx #$08
LA0FD       lda LE000,X
            sta L0800,X
            lda LE100,X
            sta L0900,X
            sta L0600,X
            lda LE300,X
            sta L0700,X
            inx
            bne LA0FD
            inx
            stx SIZEM
            ldx #$3F
LA11B       lda LBEED+1,X
            sta L06C0,X
            dex
            bpl LA11B
            ldx #$6F
LA126       lda LBF2E,X
            sta L0818,X
            dex
            bpl LA126
            ldx #$17
LA131       lda LBF9E,X
            sta L08D0,X
            dex
            bpl LA131
            ldx #$2F
LA13C       lda LBFB6,X
            sta L07D0,X
            dex
            bpl LA13C
            lda #$9B
            sta L00A1
            lda #$A1
            sta L00A2
            ldy #$00
            lda #$FF
            ldx L6000
            cpx #$47
            beq LA15A
            nop
            nop
LA15A       cli
            ldx #$09
LA15D       lda #$00
LA15F       sta L0000,X
            inx
            bpl LA15F
            ldx #$29
            jsr LB0EF+2
            jsr LAF80
            ldy ICBLLZ
            bne LA17E
            inc ICBLLZ
            lda #$01
            sta ICAX1Z
            lda #$FF
            sta DELTAR
            ldx #$40
            bne LA18D
LA17E       bit ICBLHZ
            bmi LA18B
            jsr LAF5B
            jsr LB05C
            jsr LB07C
LA18B       ldx #$C0
LA18D       lda VCOUNT
            cmp #$78
            bne LA18D
            stx NMIEN
LA197       lda VCOUNT
            cmp #$50
            bcc LA197
            ldx PORTA
            inx
            bne LA1BF
            lda TRIG0
            beq LA1BF
            lda TRIG1
            beq LA1BF
            lda #$08
            sta CONSOL
            lda CONSOL
            lsr
            bcc LA1BF
            lsr
            bcc LA1BF
            lsr
            bcs LA1C5
LA1BF       ldy #$00
            sty DELTAC+1
            sty ICBALZ
LA1C5       lda SKSTAT
            and #$04
            bne LA1CE
            sta DELTAC+1
LA1CE       ldx ICBALZ
            bne LA1DC
            tax
            bne LA1F5
            lda #$03
            sta ICBALZ
LA1D9       jmp LAE99
LA1DC       cpx #$02
            bcc LA1F0
            beq LA1E9
            tax
            beq LA1D9
            dec ICBALZ
            bne LA1D9
LA1E9       tax
            bne LA1D9
            dec ICBALZ
            bne LA1F5
LA1F0       tax
            beq LA1F5
            dec ICBALZ
LA1F5       lda DELTAC+1
            bmi LA1D9
            lda DSKFMS
            eor BUFRHI
            sta L00B1
            lda DSKFMS
            and #$0F
            bne LA21B
            lda RANDOM
            and #$0F
            cmp #$0B
            bcc LA210
            sbc #$05
LA210       tax
            cpx DRKMSK
            beq LA21B
            lda CRITIC,X
            ora #$40
            sta CRITIC,X
LA21B       lda #$0F
            ldx BUFRFL
            cpx #$08
            bcs LA229
            cpx #$04
            bcc LA229
            lda #$03
LA229       and DSKFMS
            bne LA26C
            lda TEMPCHR
            bpl LA261
            bit ICBLHZ
            bmi LA239
            lda DELTAR
            bne LA261
LA239       bit SOUNDR
            bpl LA24F
            lda XMTDON
            cmp #$1A
            bcc LA261
            bit TEMPCHR
            bpl LA261
            bit ICHIDZ
            bmi LA253
            inc TEMPCHR
            bpl LA261
LA24F       lda ICAX5Z
            bne LA261
LA253       lda BUFRFL
            and #$7F
            cmp #$06
            bcs LA25F
            inc RECVDN
            bcc LA261
LA25F       dec RECVDN
LA261       lda #$03
            ldx BUFRFL
            bmi LA26A
            lda LBAAF,X
LA26A       sta BUFRFL
LA26C       ldx ATRACT
            jmp LA2EE
LA271       ldy L0500,X
            cpy #$0E
            bcs LA2ED
            cpy #$0C
            bcs LA28F
            lda #$01
            cpy #$07
            bcs LA284
            lda #$07
LA284       and DSKFMS
            bne LA28F
            lda LBB24,Y
            sta L0500,X
            tay
LA28F       bit ICBLHZ
            bmi LA297
            lda DELTAR
            bne LA2ED
LA297       lda FKDEF
            lsr
            beq LA2ED
            cpy #$07
            beq LA2CA
            bcc LA2ED
            cpy #$0C
            bne LA2AC
            lda DSKFMS
            and #$02
            bne LA2ED
LA2AC       txa
            eor L00B1
            ror
            bcs LA2ED
            lda CRITIC,X
            rol
            bpl LA2ED
            ror
            ror
            bcc LA2C5
            rol
            bit LB964
            bne LA2CA
            eor #$18
            bne LA2C8
LA2C5       rol
            and #$EF
LA2C8       sta CRITIC,X
LA2CA       lda CRITIC,X
            and #$08
            bne LA2DE
            lda L0516,X
            clc
            adc #$01
            cmp #$D5
            bcc LA2EA
            lda #$2C
            bne LA2EA
LA2DE       lda L0516,X
            sec
            sbc #$01
            cmp #$2C
            bcs LA2EA
            lda #$D4
LA2EA       sta L0516,X
LA2ED       inx
LA2EE       cpx #$0B
            bcs LA2F5
            jmp LA271
LA2F5       ldx ICAX1Z
            beq LA312
            lda DSKFMS
            and #$07
            bne LA312
            dex
            bne LA310
            dex
            lda ICBLHZ
            bmi LA310
            ora #$80
            sta ICBLHZ
            stx ICAX1Z
            jmp LA688
LA310       stx ICAX1Z
LA312       lda DSKFMS+1
            asl
            asl
            asl
            asl
            sta L00B9
            lda PORTA
            ldx DELTAC
            beq LA325
            lsr
            lsr
            lsr
            lsr
LA325       and #$0F
            sta DSKFMS+1
            cmp #$0F
            bne LA332
            lda TRIG0,X
            bne LA33F
LA332       lda DELTAR
            sec
            sbc #$2F
            bne LA33F
            sta DELTAR
            ldx #$40
            stx SAVMSC+1
LA33F       ldx DELTAR
            bmi LA35C
            bne LA348
            jmp LA3E9
LA348       cpx #$30
            bcc LA3B9
            bne LA358
            ldy #$80
            sty L052C
            ldy RAMTOP
            dey
            sty RAMTOP
LA358       dec DELTAR
            bne LA3B9
LA35C       inx
            beq LA3B9
            txa
            and #$07
            bne LA36A
            ldy OLDADR
            beq LA36A
            dec OLDADR
LA36A       dec DELTAR
            bmi LA3B9
            lda ENDPT+1
            beq LA375
            jsr LB247
LA375       lda #$01
            sta KEYDEF
            lda RAMTOP
            bne LA3BC
            lda #$63
            jsr LB261
            lda #$6E
            jsr LB261
            lda BOOT
            lsr
            bcs LA392
        ;; jsr LB06E
            jmp hiscore 
            jmp LA3B1
LA392       lda DELTAC
            beq LA399
            jsr LB247
LA399       ldx #$03
LA39B       lda LBB8F,X
            eor #$C0
            sta L1033,X
            dex
            bpl LA39B
            lda #$50
            sta L00B1
            ldx #$6C
            ldy #$37
            jsr LB064
LA3B1       jsr LB21A
            lda #$20
            sta L3FB3
LA3B9       jmp LA3E6
LA3BC       ldx #$12
            jsr LB0EF+2
LA3C1       lda VCOUNT
            cmp #$50
            bcc LA3C1
            lda MLTTMP
            sta L00AA
            lda MLTTMP+1
            sta L00AB
            lda SAVADR
            sta L00AC
            lda SAVADR+1
            sta LMARGN
            clc
            adc #$26
            adc ROWCRS
            sta DINDEX
            bit ICBLHZ
            bpl LA3E6
            jsr LB21A
LA3E6       jmp LA5B7
LA3E9       ldx ABUFPT+1
            bmi LA424
            lda L0500,X
            cmp #$07
            bcc LA424
            cmp #$0E
            bcc LA3FC
            bne LA40A
            inc ICAX5Z
LA3FC       ldy #$1F
            lda #$01
            jsr LB1C0
            ldx ABUFPT+1
            lda #$03
            jmp LA4E0
LA40A       lda OLDCOL
            adc #$01
            ldx #$04
            bcc LA418
            lda #$FF
            sta OLDCOL+1
            ldx #$03
LA418       sta OLDCOL
            cpx KEYDEF+1
            beq LA424
            stx KEYDEF+1
            lda #$08
            sta SWPFLG
LA424       ldx ABUFPT+2
            bmi LA42E
            ldx TEMPCHR
            cpx #$11
            bcs LA436
LA42E       ldx ICDNOZ
            bpl LA436
            ldx DSKUTL+1
            bmi LA43F
LA436       ldy #$1F
            lda #$01
LA43A       jsr LB1C0
            bne LA3E6
LA43F       lda OLDCOL+1
            sec
            sbc #$20
            bcs LA453
            ldy OLDCOL
            bne LA451
            lda #$02
            ldy #$23
            jmp LA43A
LA451       dec OLDCOL
LA453       sta OLDCOL+1
            ldx #$09
            lda DSKFMS+1
            tay
            and #$0C
            eor #$0C
            bne LA466
            sta ICAX2Z
            sta SAVMSC
            beq LA495
LA466       lda ICAX2Z
            clc
            adc #$08
            bcs LA46F
            sta ICAX2Z
LA46F       dex
            tya
            and #$08
            beq LA483
            dex
            bcs LA47F
            lda SAVMSC
            sec
            sbc ICAX2Z
            bcs LA493
LA47F       dec DINDEX
            bne LA493
LA483       bcs LA491
            lda SAVMSC
            bit L00B9
            bpl LA48D
            lda #$FF
LA48D       adc ICAX2Z
            bcc LA493
LA491       inc DINDEX
LA493       sta SAVMSC
LA495       stx OLDADR
            ldx SAVMSC+1
            tya
            lsr
            bcs LA4A4
LA49D       txa
            adc #$02
            bcc LA4B4
            bcs LA4B6
LA4A4       lsr
            bcc LA4AD
            txa
            asl
            bcc LA49D
            beq LA4B6
LA4AD       txa
            cmp #$41
            bcc LA4B6
            sbc #$02
LA4B4       sta SAVMSC+1
LA4B6       ldx ABUFPT
            bmi LA4C1
            ldy L0500,X
            cpy #$07
            bcs LA4DE
LA4C1       ldx ABUFPT+3
            bmi LA4DB
            ldy TEMPCHR
            cpy #$11
            bcc LA4DB
            ldy L0500,X
            cpy #$08
            bcc LA4DB
            lda #$02
            sta L0500,X
            lda #$17
            sta HOLDCH
LA4DB       jmp LA58D
LA4DE       lda #$02
LA4E0       sta L0500,X
            ldy L050B,X
            lda #$17
            sta HOLDCH
            cpy #$0E
            bne LA547
            sta CHKSUM
            lda PALNTS
            sed
            adc #$00
            sta PALNTS
            lda FKDEF+1
            adc #$00
            cld
            sta FKDEF+1
            inc ICAX5Z
            lda L0516,X
            sec
            sbc #$08
            cmp RECVDN
            bcs LA521
            lda L0516,X
            adc #$1F
            cmp RECVDN
            bcc LA521
            lda BUFRFL
            ora #$80
            sta BUFRFL
            lda #$37
            sta HOLDCH
            ldy #$10
            bne LA547
LA521       lda FKDEF+1
            bne LA52B
            lda PALNTS
            cmp #$05
            bcc LA547
LA52B       lda BUFRFL
            cmp #$06
            bcs LA53C
            lda L0516,X
            sec
            sbc RECVDN
            cmp #$29
            jmp LA543
LA53C       lda RECVDN
            sbc L0516,X
            cmp #$41
LA543       bcs LA547
            inc TEMPCHR
LA547       sed
            lda ADRESS
            and #$F0
            sta L00B1
            lda LBB0B,Y
            clc
            adc ADRESS+1
            sta ADRESS+1
            lda ADRESS
            adc #$00
            sta ADRESS
            lda LOGCOL
            adc #$00
            sta LOGCOL
            cld
            bcc LA574
            lda #$99
            sta LOGCOL
            sta ADRESS
            sta ADRESS+1
            lda #$00
            sta RAMTOP
            jmp LA436
LA574       lda ADRESS
            and #$F0
            cmp L00B1
            beq LA589
            ldy RAMTOP
            cpy #$09
            beq LA589
            iny
            sty RAMTOP
            lda #$40
            sta COUNTR
LA589       ldx #$01
            bne LA5AA
LA58D       lda DSKUTL
            bpl LA589
            lda COLCRS+1
            cmp #$1C
            bcc LA59D
            sbc #$06
            tax
            jmp LA5AA
LA59D       ldx DELTAC
            lda TRIG0,X
            bne LA589
            ldx #$0F
            stx INSDAT
            ldx #$A9
LA5AA       txa
            pha
            jsr LB221
            pla
            sta COLCRS+1
            lda #$20
            jsr LB223
LA5B7       ldy #$00
            ldx HOLD1
            cpx #$0B
            bcs LA605
            lda L0500,X
            cmp #$0A
            beq LA5CA
            cmp #$0B
            bne LA605
LA5CA       lda L00C1
            bne LA5FD
            bit ICBLHZ
            bmi LA5D6
            lda DELTAR
            bne LA605
LA5D6       lda DOSINI,X
            sbc #$3C
            cmp #$1C
            bcc LA607
            sta L00C2
            lda #$09
            sta COUNTR+1
            ldy L0516,X
            dey
            dey
            dey
            lda CRITIC,X
            ldx #$FE
            and #$08
            bne LA5F8
            ldx #$02
            tya
            adc #$09
            tay
LA5F8       stx L00C0
            jmp LA605
LA5FD       ldx ICCOMZ
            bpl LA605
            clc
            adc L00C0
            tay
LA605       sty L00C1
LA607       ldy #$00
            lda TEMPCHR
            bmi LA671
            bne LA62A
            lda XMTDON
            cmp #$19
            bcc LA671
            sbc #$06
            sta FREQ
            sty BPTR
            lda RECVDN
            ldx BUFRFL
            cpx #$06
            bcs LA625
            adc #$09
LA625       sbc #$04
            jmp LA652
LA62A       tax
            sec
            sbc #$11
            bcs LA657
            lda FREQ
            adc LB4AE+1,X
            sta FREQ
            lda BPTR
            ldx BUFRFL
            cpx #$06
            bcs LA64A
            adc FEOF
            sta BPTR
            lda NOCKSM
            adc FTYPE
            jmp LA652
LA64A       sbc FEOF
            sta BPTR
            lda NOCKSM
            sbc FTYPE
LA652       sta NOCKSM
            iny
            bne LA65E
LA657       lsr
            lsr
            lsr
            clc
            adc #$02
            tay
LA65E       ldx TEMPCHR
            inx
            cpx #$39
            bcc LA66F
            ldx #$00
            ldy #$00
            lda DELTAR
            beq LA66F
            ldx #$FF
LA66F       stx TEMPCHR
LA671       sty CHKSNT
            ldy #$00
            lda #$08
            sta CONSOL
            lda CONSOL
            lsr
            bcs LA693
            lda #$02
            sta L00C6
            sty ICBLHZ
            sty ICAX1Z
LA688       lda BOOT
            and #$01
            sta DELTAC
            ldx #$79
            jmp LA15D
LA693       lsr
            bcc LA699
            lsr
            bcs LA6DC
LA699       dec ICBAHZ
            bpl LA6DE
            ldx BOOT
            inx
            cpx #$08
            bcc LA6A6
            ldx #$00
LA6A6       stx BOOT
            txa
            clc
            adc #$D1
            sty L102A
            sta L102B
            lda #$00
            sta DELTAC+1
            sta ICBLHZ
            sta RAMTOP
            sta ENDPT+1
            sta DELTAC
            ldx #$02
            stx L00C6
LA6C2       sta LOGCOL,X
            sta BITMSK,X
            dex
            bpl LA6C2
            sta COUNTR+1
            stx TEMPCHR
            jsr LAF80
            jsr LAF5B
            jsr LB21A
            ldx #$25
            stx ICAX1Z
            ldy #$1E
LA6DC       sty ICBAHZ
LA6DE       lda DELTAR
            bmi LA6ED
            cmp #$2F
            bne LA6FD
            lda #$09
            sta OLDADR
LA6EA       jmp LAE99
LA6ED       bit ICBLHZ
            bpl LA6EA
            lda #$80
            ldx BOOT
            cpx #$04
            bcc LA6FB
            lda #$FE
LA6FB       sta SAVMSC+1
LA6FD       lda #$02
            sta L00A9
LA701       dec L00A9
            bmi LA6EA
            lda SAVMSC+1
            cmp #$FE
            bcs LA711
            adc STATUS
            sta STATUS
            bcc LA701
LA711       ldy #$00
            lda FKDEF
            cmp #$09
            bcs LA71B
            ldy #$06
LA71B       sty L00B5
            inc ICAX6Z
            lda ICAX6Z
            cmp #$20
            bcs LA72B
            bit ICSTAZ
            bpl LA756
            bmi LA759
LA72B       ldx #$00
            stx ICAX6Z
            stx LTEMP
            stx L052D
            lda ICSTAZ
            and #$04
            ora #$10
            sta ICSTAZ
            ldx OLDADR+1
            stx ICAX3Z
            dec OLDROW
            beq LA75C
            ldx OLDCHR
            dex
            bne LA756
            stx ICAX5Z
            lda FKDEF
            lsr
            lda #$80
            bcs LA754
            lda #$84
LA754       sta ICSTAZ
LA756       jsr LB183
LA759       jmp LA7FB
LA75C       dec OLDCHR
            bne LA767
            jsr LB194
            ldx #$10
            stx OLDCHR
LA767       jsr LB183
            ldx OLDCHR
            dex
            bne LA781
            stx ICAX4Z
            lda #$0D
            sta OLDADR+1
            lda FKDEF
            lsr
            bcc LA77D
            dec L052D
LA77D       lda #$36
            bne LA7E0
LA781       lda FKDEF
            lsr
            lda #$07
            bcs LA7DC
            lda ICAX4Z
            dex
            bne LA793
            cmp #$C0
            beq LA79E
            bne LA7B2
LA793       asl
            eor ICAX4Z
            bmi LA7AC
            lda L00AA
            and #$30
            bne LA7B6
LA79E       lda ICAX4Z
            and #$80
            bne LA7A6
            ora #$40
LA7A6       sta ICAX4Z
            lda #$00
            beq LA7DC
LA7AC       lda #$C0
            bit ICAX4Z
            bvs LA7B4
LA7B2       lda #$00
LA7B4       sta ICAX4Z
LA7B6       ldy #$0F
            lda L00AA
            and #$0F
            cmp #$02
            bcs LA7C2
            adc #$02
LA7C2       bit ICAX4Z
            bpl LA7C7
            dey
LA7C7       ldx FKDEF
            cpx #$14
            bcs LA7CE
            dey
LA7CE       ldx L00B5
            beq LA7D4
            ldy #$08
LA7D4       sty L00B1
            cmp L00B1
            bcc LA7DC
            lda L00B1
LA7DC       sta OLDADR+1
            asl
            asl
LA7E0       ldy #$02
            sty OLDROW
            sta BFENLO
            sec
            sbc ROWCRS
            beq LA7FB
            bcc LA7F3
            cmp #$20
            lda #$01
            bne LA7F7
LA7F3       cmp #$E0
            lda #$FE
LA7F7       adc #$00
            sta BFENHI
LA7FB       lda BFENHI
            beq LA826
            bpl LA809
            lda BFENLO
            cmp ROWCRS
            bcs LA80F
            bcc LA815
LA809       lda ROWCRS
            cmp BFENLO
            bcc LA815
LA80F       lda #$00
            sta BFENHI
            beq LA826
LA815       lda ROWCRS
            clc
            adc BFENHI
            sta ROWCRS
            lda RMARGN
            sec
            sbc BFENHI
            sec
            sbc BFENHI
            sta RMARGN
LA826       bit ICSTAZ
            bpl LA83A
            lda #$00
            sta L00C3
            ldx ICAX6Z
            lda LBA8F,X
            clc
            adc LMARGN
            tax
LA837       jmp LA96A
LA83A       lda L052D
            beq LA84F
            ldx LMARGN
            cpx #$18
            bcs LA848
            inx
            bne LA837
LA848       cpx #$29
            bcc LA84F
            dex
            bne LA837
LA84F       ldx #$01
            ldy #$40
            lda FKDEF
            cmp #$03
            bcs LA85F
            ldx #$1C
            ldy #$24
            bne LA885
LA85F       lsr
            bcc LA86D
            lda L052D
            bne LA86D
            lda FKDEF
            cmp #$0A
            bcs LA871
LA86D       ldy #$28
            bne LA883
LA871       cmp #$14
            bcs LA879
            ldx #$0D
            ldy #$34
LA879       lda LTEMP
            beq LA885
            bmi LA883
            ldy #$28
            bne LA885
LA883       ldx #$19
LA885       stx L00C4
            sty L00C5
            lda L00AC
LA88B       and #$0F
            ldy L00C3
            bne LA89E
            cmp #$08
            lda #$01
            bcs LA899
            lda #$FF
LA899       sta L00C3
            jmp LA8C4
LA89E       cmp #$08
            bcs LA8A5
LA8A2       jmp LA96C
LA8A5       cmp #$0D
            bne LA8B1
            lda L00C3
            eor #$FE
            sta L00C3
            bne LA8C4
LA8B1       cmp #$0F
            bne LA8C4
            ldx #$0E
            bit ICAX4Z
            bpl LA8BC
            dex
LA8BC       cpx OLDADR+1
            bcc LA8A2
            cpx ICAX3Z
            bcc LA8A2
LA8C4       lda ROWCRS
            cmp BFENLO
            bcs LA8CC
            lda BFENLO
LA8CC       sta L00C9
            lda #$40
            sec
            sbc L00C9
            asl
            sta L00C8
            ldx DRKMSK
            lda L00C3
            bpl LA929
            lda LMARGN
            cmp L00C4
            bcs LA8E5
            jmp LA95F
LA8E5       cpx #$0B
            bcs LA923
            lda L050B,X
            cmp #$08
            bcc LA923
            lda LMARGN
            bit ICAX4Z
            bpl LA906
            bit LTEMP+1
            bpl LA8FE
            adc #$7F
            bne LA90C
LA8FE       lda L00C8
            lsr
            clc
            adc LMARGN
            bne LA90C
LA906       clc
            adc L00C8
            clc
            adc L00C9
LA90C       sta L00B7
            lda L0516,X
            sec
            sbc #$17
            clc
            adc L00B5
            ldy L0521,X
            beq LA91F
            clc
            adc #$08
LA91F       cmp L00B7
            bcs LA95F
LA923       ldx LMARGN
            dex
            jmp LA96A
LA929       lda LMARGN
            cmp L00C5
            bcs LA95F
            cpx #$0B
            bcs LA967
            lda L050B,X
            cmp #$08
            bcc LA967
            lda LMARGN
            bit ICAX4Z
            bpl LA94A
            bit LTEMP+1
            bpl LA94D
            adc #$3F
            adc L00C9
            bne LA94D
LA94A       clc
            adc L00C9
LA94D       clc
            adc #$02
            sta L00B7
            lda L0516,X
            sec
            sbc #$20
            sec
            sbc L00B5
            cmp L00B7
            bcs LA967
LA95F       lda L00C3
            eor #$FE
            sta L00C3
            bne LA96C
LA967       ldx LMARGN
            inx
LA96A       stx LMARGN
LA96C       bit ICSTAZ
            bmi LA9D7
            lda ICAX6Z
            bne LA9D7
            lda L00AC
            and #$20
            beq LA9D7
            lda FKDEF
            lsr
            bcc LA989
            lda L00AA
            and #$07
            tax
            lda LBBCC,X
            bpl LA9A4
LA989       ldx OLDADR+1
            cpx ICAX3Z
            bcc LA991
            ldx ICAX3Z
LA991       cpx #$02
            bcc LA9D7
            bit ICAX4Z
            bpl LA9A1
            cpx #$05
            bcc LA9D7
            txa
            adc #$0A
            tax
LA9A1       lda LBBD4,X
LA9A4       sta L00BD
            lda LBBB2,X
LA9A9       sta L00BC
            tax
            lda LBBEB,X
            sta L00BE
            ldy LMARGN
            lda L00AC
            and #$80
            bmi LA9BF
            cpy #$29
            bcc LA9C5
            bcs LA9C3
LA9BF       cpy #$18
            bcs LA9C5
LA9C3       eor #$80
LA9C5       clc
            adc #$01
            sta LTEMP
            txa
            asl
            tax
            lda LBBF0,X
            sta L00BA
            lda LBBF1,X
            sta L00BB
LA9D7       lda L3F04
            sec
            sbc #$30
            sta L3F04
            bcs LA9F4
            ldx L3F05
            dex
            cpx #$20
            bcs LA9EC
            ldx #$3E
LA9EC       cpx #$2F
            bne LA9F1
            dex
LA9F1       stx L3F05
LA9F4       ldy L00A7
            beq LAA05
            ldy #$00
            sty L3F07
            sty L00A7
            jsr LB0C7
            jmp LAA7A
LAA05       ldy L00A8
            beq LAA16
LAA09       ldy #$00
            sty L3F07
            sty L00A8
            jsr LB0D8
            jmp LAA7A
LAA16       lda L00A5
            cmp #$A2
            bcc LAA45
            lda #$02
            sta L00A5
            lda #$0E
            sta L00A7
            sta L3FA6
            sta L3FA7
            sta L3FA8
            ldx #$4E
            stx L3F06
            ldx #$30
            stx L3F07
            ldx #$20
            stx L3F08
            jsr LB0C7
            jsr LB0C7
            jmp LAA77
LAA45       jsr LB0D8
            lda L00A6
            cmp #$A2
            bcc LAA77
            lda #$02
            sta L00A6
            lda #$0E
            sta L00A8
            sta L3FA6
LAA59       sta L3FA7
            sta L3FA8
            ldx #$4E
            stx L3F06
            ldx #$30
            stx L3F07
            ldx #$30
            stx L3F08
            jsr LB0D8
            jsr LB0D8
            jmp LAA7A
LAA77       jsr LB0C7
LAA7A       lda #$B8
            sta L00A2
            lda L3F04
            sta L00A3
            lda L3F05
            sta L00A4
            lda #$00
            sta L00B4
            lda LMARGN
            bit ICAX4Z
            bmi LAA95
            clc
            adc ROWCRS
LAA95       tax
            lsr
            lsr
            tay
            dey
            bit ICAX4Z
            bmi LAAB9
            lda LTEMP
            bpl LAAB9
            lda ICAX6Z
            cmp L00BE
            bcs LAAB9
            tya
LAAA9       pha
LAAAA       ldy L00BD
            jsr LAFF4
LAAAF       jsr LB01A
            pla
            sec
            sbc L00BC
            sbc L00BD
            tay
LAAB9       jsr LAFF4
            jsr LB034
            lda RMARGN
            bit ICAX4Z
            bpl LAB37
            ldy ROWCRS
            cpy #$06
            bcs LAAD2
            adc ROWCRS
            adc ROWCRS
            jmp LAB37
LAAD2       stx L00B7
            lsr
            clc
            adc L00B7
            tax
            lsr
            lsr
            sec
            sbc L00B4
            tay
            jsr LAFF0
            adc #$02
            ldy ROWCRS
            cpy #$08
            bcs LAAEC
            adc #$10
LAAEC       jsr LB03B
            stx L00B7
            lda ROWCRS
            asl
            adc L00B7
            tax
            lsr
            lsr
            sec
            sbc L00B4
            tay
            dey
            lda ROWCRS
            cmp #$08
            bcs LAB0C
            jsr LAFEC
            clc
            adc #$10
            bne LAB31
LAB0C       lda LTEMP
            beq LAB2E
            lda ICAX6Z
            cmp L00BE
            bcs LAB2E
            lda L00BD
            sec
            sbc L00B4
            sta L00B7
            tya
            sec
            sbc L00B7
            sbc L00BC
            pha
            ldy L00B7
            jsr LAFF4
            jsr LB01A
            pla
            tay
LAB2E       jsr LAFF4
LAB31       jsr LB03B
            lda RMARGN
            lsr
LAB37       stx L00B7
            clc
            adc L00B7
            tax
            lsr
            lsr
            sec
            sbc L00B4
            tay
            jsr LAFF0
            adc #$02
            jsr LB034
            lda #$30
            sec
            sbc L00B4
            tay
            bit ICAX4Z
            bmi LAB73
            lda LTEMP
            beq LAB73
            bmi LAB73
            lda ICAX6Z
            cmp L00BE
            bcs LAB73
            tya
            sec
            sbc L00BD
            sbc L00BC
            tay
            iny
            jsr LAFF4
            jsr LB01A
            lda L00BD
            tay
            dey
LAB73       jsr LAFF4
            lda COLRSH
            beq LAB7C
            dec COLRSH
LAB7C       inc XMTDON
            inc FREQ
            inc L00C2
            inc DOSINI
            inc DOSINI+1
            inc APPMHI
            inc APPMHI+1
            inc POKMSK
            inc BRKKEY
            inc RTCLOK
            inc RTCLOK+1
            inc RTCLOK+2
            inc BUFADR
            inc BUFADR+1
            bne LABE1
            ldx ATRACT
            cpx #$0B
            bcs LABE1
            ldx #$09
LABA2       lda DOSINI,X
            sta DOSINI+1,X
            lda L0516,X
            sta L0517,X
            lda CRITIC,X
            sta FMSZPG,X
            lda L0500,X
            sta L0501,X
            lda L050B,X
            sta L050C,X
            lda L0521,X
            sta L0522,X
            dex
            bmi LABC9
            cpx ATRACT
            bcs LABA2
LABC9       lda BUFRHI
            eor #$01
            sta BUFRHI
            inc ATRACT
            ldx HOLD1
            cpx #$0B
            bcs LABD9
            inc HOLD1
LABD9       ldx DRKMSK
            cpx #$0B
            bcs LABE1
            inc DRKMSK
LABE1       ldx DRKMSK
            cpx #$0B
            bcs LABF3
            ldy BUFRLO
            dey
            bmi LABEF
            jmp LAE94
LABEF       ldy #$0B
            sty DRKMSK
LABF3       lda ICAX6Z
            and #$0F
            bne LABFD
            ldx ATRACT
            bne LAC00
LABFD       jmp LAE96
LAC00       dex
            stx ATRACT
            stx DRKMSK
            lda #$00
            sta L00B8
            lda ICSTAZ
            sta CRITIC,X
            bpl LAC23
            and #$04
            ora #$D2
            sta DOSVEC+1
            lda #$07
            sta L00B8
            ldy #$0E
            lda ROWCRS
            sec
            sbc #$06
            jmp LAD37
LAC23       ldy #$01
            lda ICAX6Z
            beq LAC3E
            lda FKDEF
            sec
            sbc #$08
            bmi LAC3B
            cmp #$20
            bcs LAC62
            asl
            asl
            asl
            cmp L00AB
            bcs LAC62
LAC3B       jmp LAD37
LAC3E       dey
            lda OLDCHR
            clc
            adc OLDROW
            cmp #$12
            bcs LAC3B
            lda FKDEF
            cmp L00CB
            bcc LAC50
            lda L00CB
LAC50       eor #$FF
            sec
            adc #$3F
            asl
            cmp L00AB
            bcc LAC62
            bit L00AA
            bvs LACB9
            ldy #$0F
            bne LAC8C
LAC62       lda L00AB
            and #$07
            tax
            ldy LBB1B+1,X
            ldx FKDEF
            cpy #$07
            bne LAC76
            cpx #$05
            bcs LAC84
            ldy #$0D
LAC76       cpy #$0C
            bne LAC84
            lda ICAX6Z
            bne LAC82
            cpx #$03
            bcs LAC84
LAC82       ldy #$08
LAC84       cpy #$0D
            bne LAC8C
            lda #$05
            sta L00B8
LAC8C       lda OLDADR+1
            cmp ICAX3Z
            bne LACBC
            sta L00B3
            lda FKDEF
            lsr
            bcc LACC2
            lda #$3F
            ldx L00B8
            beq LACA1
            lda #$37
LACA1       sbc L00B5
            sta L00B1
            lda L00AA
            and #$3F
            clc
            adc L00B5
            cmp L00B1
            bcc LACB2
            lda L00B1
LACB2       clc
            adc ROWCRS
            bit L00AA
            bmi LAD29
LACB9       jmp LAD37
LACBC       bcs LACC0
            lda ICAX3Z
LACC0       sta L00B3
LACC2       ldx #$0E
            bit ICAX4Z
            bpl LACC9
            dex
LACC9       cpx L00B3
            bcs LACD5
            cpy #$07
            beq LACD5
            ldy #$01
            bne LAD37
LACD5       ldx OLDCHR
            dex
            bne LACE0
            inc L00B5
            inc L00B5
            bne LACEC
LACE0       ldx #$0D
            bit ICAX4Z
            bpl LACE8
            ldx #$0A
LACE8       cpx L00B3
            bcs LACF6
LACEC       cpy #$0D
            bne LACF6
            lda #$00
            sta L00B8
            ldy #$08
LACF6       lda L00B3
            asl
            asl
            beq LAD10
            bit ICAX4Z
            bpl LAD10
            eor #$FF
            adc #$41
            ldx L00AA
            stx LTEMP+1
            bpl LAD1D
            eor #$FF
            adc #$80
            bne LAD14
LAD10       bit L00AA
            bmi LAD19
LAD14       sec
            adc L00B5
            bne LAD37
LAD19       eor #$FF
            adc #$81
LAD1D       cpy #$0F
            sbc #$08
            sbc L00B5
            ldx L00B8
            beq LAD29
            sbc #$08
LAD29       cpy #$0F
            beq LAD37
            pha
            ldx DRKMSK
            lda CRITIC,X
            ora #$08
            sta CRITIC,X
            pla
LAD37       ldx DRKMSK
            clc
            adc #$20
            sta L00CA
            lda LMARGN
            bit L052D
            bpl LAD51
            cmp #$18
            bcs LAD4B
            lda #$18
LAD4B       cmp #$28
            bcc LAD51
            lda #$28
LAD51       clc
            adc L00CA
            sta L0516,X
            tya
            sta L0500,X
            sta L050B,X
            cmp #$08
            bne LAD88
            lda HOLD1
            cmp #$0B
            bcc LAD88
            lda OLDCHR
            cmp #$0E
            bcs LAD88
            lda L00AC
            and #$70
            bne LAD88
            lda FKDEF
            cmp #$0D
            bcc LAD88
            lda #$0A
            sta L0500,X
            sta L050B,X
            lda #$00
            sta L00C1
            stx HOLD1
LAD88       lda LBB60,Y
            clc
            adc #$04
            sta BUFRLO
            lda LBBA1+1,Y
            sta L0521,X
            lda #$61
            sec
            sbc BUFRLO
            sta DOSINI,X
            lda ICAX6Z
            ora BUFRFL
            beq LADA6
LADA3       jmp LAE94
LADA6       bit ICSTAZ
            bpl LADCD
            lda #$0B
            sta XMTDON
            ldx #$05
            lda #$00
            sta SOUNDR
            sta FEOF
            lda #$02
            sta FTYPE
            lda L00AA
            and #$7F
            cmp #$40
            bcc LADC3
            inx
LADC3       stx BUFRFL
            clc
            adc #$40
            sta RECVDN
            jmp LAE94
LADCD       ldx DRKMSK
            lda L0500,X
            cmp #$08
            bcc LADA3
            lda FKDEF
            cmp #$07
            bcc LADA3
            lda OLDCHR
            cmp #$05
            bcc LADA3
            cmp #$0E
            bcs LADA3
            lda L00AC
            and #$C0
            bne LADA3
            ldx OLDADR+1
            cpx ICAX3Z
            bcc LADF4
            ldx ICAX3Z
LADF4       cpx #$02
            bcc LADA3
            cpx #$0E
            bcs LADA3
            lda L00AC
            lsr
            lsr
            lsr
            ldy FKDEF
            cpy #$0A
            bne LAE09
            eor #$07
LAE09       and #$06
            bne LAE17
            bit ICAX4Z
            bmi LAE17
            cpx #$08
            bcs LAE17
            lda #$08
LAE17       tay
            lda LB7F4,Y
            sta FTYPE
            lda LB7F4+1,Y
            sta FEOF
            ldy #$05
            bit ICAX4Z
            bpl LAE3E
            lda LTEMP
            bne LAE94
            cpx #$0B
            bcs LAE94
            cpx #$04
            bcc LAE94
            lda L00AC
            lsr
            bcc LAE3A
            iny
LAE3A       lda #$4C
            bne LAE83
LAE3E       lda FKDEF
            lsr
            lda LBFE4,X
            bcc LAE6C
            lda L00AC
            and #$1F
            cmp #$10
            bcc LAE59
            adc #$57
            ldx LTEMP
            beq LAE56
            bpl LAE5E
LAE56       iny
            bpl LAE63
LAE59       ldx LTEMP
            bpl LAE63
            iny
LAE5E       eor #$FF
            sec
            adc #$78
LAE63       clc
            adc LMARGN
            clc
            adc #$20
            jmp LAE86
LAE6C       cmp #$50
            bcc LAE79
            ldx LTEMP
            beq LAE76
            bpl LAE7E
LAE76       iny
            bpl LAE83
LAE79       ldx LTEMP
            bpl LAE83
            iny
LAE7E       eor #$FF
            sec
            adc #$98
LAE83       clc
            adc #$30
LAE86       sta RECVDN
            sty BUFRFL
            lda #$0C
            sta XMTDON
            lda #$FF
            sta TEMPCHR
            sta SOUNDR
LAE94       dec BUFRLO
LAE96       jmp LA701
LAE99       lda VCOUNT
            cmp #$50
            bcs LAE99
            jsr LAFD0
            lda XMTDON
            cmp #$BC
            bcc LAEAF
            ldy #$00
            sty BUFRFL
            sty XMTDON
LAEAF       sta L00A3
            lda #$0D
            sta L00A4
            lda BUFRFL
            asl
            tax
            lda LB4CF+2,X
            sta L00A1
            lda LB4D2,X
            sta L00A2
            ldy #$0A
            jsr LB00F
            lda DSKFMS
            lsr
            lsr
            lsr
            and #$07
            tax
            lda LBAC5,X
            sta COLPM0
            ldx L00C2
            cpx #$1C
            bcc LAEFA
            lda L0AFE,X
            and #$FC
            sta L0AFE,X
            lda L0AFF,X
            and #$FC
            sta L0AFF,X
            lda L0B00,X
            and #$FC
            ldy L00C1
            beq LAEF7
            ora #$03
LAEF7       sta L0B00,X
LAEFA       lda FREQ
            cmp #$BC
            bcc LAF09
            ldy #$FF
            sty TEMPCHR
            iny
            sty CHKSNT
            sty FREQ
LAF09       sta L00A3
            lda #$0C
            sta L00A4
            lda CHKSNT
            asl
            tax
            lda LBAB6+1,X
            sta L00A1
            lda LBAB8,X
            sta L00A2
            ldy #$0F
            jsr LB00F
            ldy #$0D
            lda OLDADR
            asl
            tax
            lda LBACC+1,X
            sta L00A1
            lda LBACC+2,X
            sta L00A2
LAF32       lda (L00A1),Y
            sta L0EAA,Y
            dey
            bpl LAF32
            lda VCOUNT
            cmp #$07
            bcs LAF52
            lda ICAX1Z
            bne LAF48
            jsr LAF5B
LAF48       jsr LB05C
            lda DELTAC
            bne LAF55
            jsr LB07C
LAF52       jmp LA197
LAF55       jsr LB068
            jmp LA197
LAF5B       ldx #$00
            ldy RAMTOP
            beq LAF75
            lda COUNTR
            beq LAF6C
            and #$08
            beq LAF6C
            dey
            beq LAF75
LAF6C       lda #$9C
LAF6E       sta L1033,X
            inx
            dey
            bne LAF6E
LAF75       lda #$00
LAF77       sta L1033,X
            inx
            cpx #$09
            bcc LAF77
            rts
LAF80       lda BOOT
            ror
            bcs LAF8E
            jsr LB06E
            lda #$DB
            ldx #$D0
            bne LAF95
LAF8E       jsr LB068
            lda #$4F
            ldx #$50
LAF95       sta L100B
            stx L1012
            lda BOOT
            lsr
            tax
            lda LB494,X
            sta MLTTMP
            sta ROWAC+1
            lda LB498,X
LAFA9       sta MLTTMP+1
            sta COLAC
            lda LB49C,X
            sta SAVADR
            sta COLAC+1
            lda LB49F+1,X
            sta SAVADR+1
            sta ENDPT
            lda LB4A3+1,X
            sta FKDEF
            sta BUFCNT
            lda LB4A8,X
            sta PALNTS
            sta BUFSTR+1
            lda #$00
            sta FKDEF+1
            sta BUFSTR
            rts
LAFD0       lda ICSTAZ
            and #$04
            eor #$D6
            ldx DRKMSK
            cpx #$0B
            bcs LAFE8
            ldy CRITIC,X
            bpl LAFE8
            ldy DOSINI,X
            cpy #$5C
            bcs LAFE8
            eor #$04
LAFE8       sta COLPF0
            rts
LAFEC       lda #$AA
            bne LAFFA
LAFF0       lda #$FF
            bne LAFFA
LAFF4       lda COLRSH
            bne LAFEC
            lda #$55
LAFFA       sty L00B6
            dey
            bmi LB009
LAFFF       sta (L00A3),Y
            dey
            bpl LAFFF
            lda L00B6
            jsr LB04B
LB009       txa
            and #$03
            asl
            asl
            rts
LB00F       tya
            bmi LB019
LB012       lda (L00A1),Y
            sta (L00A3),Y
            dey
            bpl LB012
LB019       rts
LB01A       ldy L00BC
            dey
LB01D       lda (L00BA),Y
            sta (L00A3),Y
            dey
            bpl LB01D
            lda L00BA
            clc
            adc L00BC
            sta L00BA
            bcc LB02F
            inc L00BB
LB02F       lda L00BC
            jmp LB04B
LB034       ldy COLRSH
            beq LB03B
            clc
            adc #$10
LB03B       sta L00A1
            ldy #$01
            lda (L00A1),Y
            sta (L00A3),Y
            dey
            lda (L00A1),Y
            sta (L00A3),Y
            dey
            lda #$02
LB04B       pha
            clc
            adc L00A3
            sta L00A3
            bcc LB055
            inc L00A4
LB055       pla
            clc
            adc L00B4
            sta L00B4
            rts
LB05C       lda #$90
            sta L00B1
            ldx #$61
            ldy #$23
LB064       lda #$02
            bne LB086
LB068       lda #$50
            ldy #$0C
            bne LB080
LB06E       lda BOOT
            and #$0E
            asl
            adc #$80
            tax
            lda #$D0
            ldy #$0C
            bne LB082
LB07C       lda #$10
            ldy #$02
LB080       ldx #$63
LB082       sta L00B1
            lda #$03
LB086       bit ICBLHZ
            bmi LB0C6
            sta L00B2
LB08C       lda L0000,X
            lsr
            lsr
            lsr
            lsr
            bne LB0AF
            sta L1000,Y
            iny
            lda L0000,X
            and #$0F
            bne LB0BA
            sta L1000,Y
            iny
            inx
            dec L00B2
            bne LB08C
            beq LB0C6
LB0A9       lda L0000,X
            lsr
            lsr
            lsr
            lsr
LB0AF       clc
            adc L00B1
            sta L1000,Y
            iny
            lda L0000,X
            and #$0F
LB0BA       clc
            adc L00B1
            sta L1000,Y
            iny
            inx
            dec L00B2
            bne LB0A9
LB0C6       rts
LB0C7       ldy #$03
            ldx L00A6
LB0CB       lda LB0E9,Y
            sta L3F04,X
            inx
            dey
            bpl LB0CB
            inc L00A6
            rts
LB0D8       ldy #$03
            ldx L00A5
LB0DC       lda LB0EB+2,Y
            sta L3F04,X
            inx
            dey
            bpl LB0DC
            inc L00A5
            rts
LB0E9       bmi LB0EB
LB0EB       lsr L200E
            .byte $00
LB0EF       lsr LBD0E
            sbc (L00BA,X)
            sta ATRACT,X
            dex
            bpl LB0EF+2
            stx ICCOMT
            ldx #$0B
            lda #$00
            sta L00A1
            sta L00C7
LB103       ldy #$BC
            stx L00A2
LB107       sta (L00A1),Y
            dey
            bne LB107
            inx
            cpx #$10
            bcc LB103
            lda #$00
            ldx #$20
LB115       stx L00A2
LB117       sta (L00A1),Y
            iny
            bne LB117
            inx
            cpx #$3F
            bcc LB115
            inc L00C7
            lda #$00
            ldx #$21
LB127       sta ICAX2Z,X
            dex
            bpl LB127
            inx
LB12D       sta L0500,X
            inx
            bne LB12D
            ldy #$06
            lda L00BF
            bne LB13B
            ldy #$12
LB13B       ldx #$06
LB13D       lda #$FF
            sta L0EDB,Y
            lda #$FC
            sta L0FDB,Y
            dey
            dex
            bpl LB13D
            ldx #$09
            ldy #$09
            lda L00BF
            bne LB155
            ldy #$10
LB155       lda #$0C
LB157       sta L0BCC,Y
            dey
            dex
            bpl LB157
            lda #$17
            sta BUFRLO
            lda #$0E
            sta L0515
            lda #$4A
            sta BUFADR+1
            lda FKDEF
            lsr
            lda #$D6
            bcs LB174
            lda #$D2
LB174       sta DOSVEC+1
            and #$84
            sta DSTAT
            sta ICSTAZ
            lda #$0A
            sta ATRACT
            sta DRKMSK
            rts
LB183       lda L00AB
            asl
            asl
            asl
            asl
            asl
            eor L00AB
            asl
            rol L00AA
            rol L00AC
            rol L00AB
            rts
LB194       ldx FKDEF
            cpx #$50
            bcc LB19C
            ldx #$4E
LB19C       lda MLTTMP
            sta L00AD
            lda MLTTMP+1
            sta L00AE
            lda SAVADR
            sta L00AF
            lda SAVADR+1
            sta L00B0
            lda L00AA
            sta MLTTMP
            lda L00AB
            sta MLTTMP+1
            lda L00AC
            sta SAVADR
            lda LMARGN
            sta SAVADR+1
            inx
            stx FKDEF
            rts
LB1C0       sty SWPFLG
            sta KEYDEF+1
            lda DSTAT
            eor ICSTAZ
            and #$04
            beq LB1F8
            lda ICAX5Z
            beq LB1D9
            bit ICSTAZ
            bpl LB1F8
            jsr LB194
            bne LB1F8
LB1D9       bit ICSTAZ
            bmi LB1F8
            ldx FKDEF
            dex
            cpx #$4E
            bne LB1E6
            ldx #$50
LB1E6       stx FKDEF
            lda L00AD
            sta MLTTMP
            lda L00AE
            sta MLTTMP+1
            lda L00AF
            sta SAVADR
            lda L00B0
            sta SAVADR+1
LB1F8       lda #$06
            sta OLDADR
            lda #$FE
            ldx #$00
LB200       sta DELTAR
            stx ICAX1Z
            jsr LB221
            lda #$0B
            sta HOLD1
            ldx L00C2
            lda L0B00,X
            and #$FC
            sta L0B00,X
            lda #$01
            sta COLCRS+1
            rts
LB21A       lda #$FF
            sta DSKFMS
            tax
            bne LB200
LB221       lda #$00
LB223       ldx COLCRS+1
            dex
            beq LB246
            cpx #$1B
            bcs LB22E
            ldx #$1B
LB22E       sta L0B01,X
            sta L0B02,X
            sta L0B03,X
            sta L0B04,X
            sta L0B05,X
            sta L0B06,X
            sta L0B07,X
            sta L0B08,X
LB246       rts
LB247       lda BOOT
            and #$01
            beq LB260
            eor DELTAC
            sta DELTAC
            ldx #$0A
LB253       lda FKDEF,X
            pha
            lda BUFCNT,X
            sta FKDEF,X
            pla
            sta BUFCNT,X
            dex
            bpl LB253
LB260       rts
LB261       sta L00A1
            lda #$00
            sta L00A2
            sta L00A4
            lda BOOT
            and #$0E
            asl
            adc #$80
            sta L00A3
            ldy #$00
LB274       lda (L00A1),Y
            cmp (L00A3),Y
            bcc LB297
            bne LB281
            iny
            cpy #$03
            bcc LB274
LB281       ldy #$02
LB283       lda (L00A1),Y
            sta (L00A3),Y
            dey
            bpl LB283
            ldy #$0F
LB28C       sty L00A0
            jsr LB298
            sta L0090,Y
            dey
            bpl LB28C
LB297       rts
LB298       lda #$00
            ldx #$0E
            clc
LB29D       adc LOMEM,X
            eor L00A0
            dex
            bpl LB29D
            rts
            cld
            lda L00C6
            beq LB2BA
            dec L00C6
            lda #$40
            sta AUDF1
            lda #$AF
            sta AUDC1
            ldx #$00
            beq LB2C5
LB2BA       lda ICBALZ
            cmp #$02
            bcc LB2CE
            ldx #$00
            stx AUDC1
LB2C5       stx AUDC2
            stx AUDC3
            jmp LB3D8
LB2CE       ldy #$39
            lda SWPFLG
            ldx KEYDEF+1
            beq LB2F9
            dex
            beq LB2E1
            ldy #$1F
            cpx #$02
            bcs LB2E6
            ldy #$11
LB2E1       sec
            ror
            tax
            bne LB2EE
LB2E6       beq LB2EA
            ldy #$3F
LB2EA       clc
            adc #$A0
            tax
LB2EE       dec SWPFLG
            bne LB34C
            lda #$00
            sta KEYDEF+1
            jmp LB34C
LB2F9       lda DELTAR
            bne LB34F
            lda OLDCOL
            cmp #$40
            bcs LB32C
            ldy SWPFLG
            bne LB309
            ldy #$3F
LB309       dey
            sty SWPFLG
            ldx OLDCOL+1
            stx RAMLO
            cmp #$04
            bcs LB321
            rol RAMLO
            rol
            rol RAMLO
            rol
            eor #$FF
            adc #$20
            asl
            bne LB326
LB321       cpy #$1C
            bcc LB32C
            tya
LB326       asl
            tay
            ldx #$AF
            bne LB34C
LB32C       lda SAVMSC+1
            lsr
            lsr
            lsr
            lsr
            eor #$FF
            sec
            adc #$1F
            tay
            lda L052C
            cmp #$1B
            bcc LB343
            dec L052C
            tay
LB343       lda DSKFMS+1
            and #$03
            tax
            lda LB4AA+2,X
            tax
LB34C       sty AUDF1
LB34F       stx AUDC1
            ldx HOLDCH
            beq LB367
            dec HOLDCH
            txa
            lsr
            clc
            adc #$04
            and #$0F
            adc #$80
            tax
            lda RANDOM
            ora #$18
LB367       ldy COUNTR+1
            beq LB37E
            dec COUNTR+1
            bit ICBLHZ
            bmi LB37E
            tya
            clc
            adc #$46
            tax
            eor #$0E
            adc #$04
            and #$0F
            asl
            asl
LB37E       sta AUDF2
            stx AUDC2
            ldx #$00
            lda INSDAT
            beq LB399
            dec INSDAT
            eor #$FF
            sec
            adc #$1C
            asl
            sta RAMLO
            asl
            adc RAMLO
            ldx #$A8
LB399       ldy COUNTR
            beq LB3B0
            dey
            sty COUNTR
            tya
            and #$0F
            clc
            adc #$A0
            tax
            tya
            lsr
            lsr
            lsr
            lsr
            tay
            lda LB4E1,Y
LB3B0       sta AUDF3
            stx AUDC3
            ldx #$00
            bit ICBLHZ
            bmi LB3D8
            lda TEMPCHR
            bmi LB3D8
            beq LB3D8
            cmp #$11
            bcs LB3CE
            tax
            lda LB4C0,X
            ldx #$AC
            bne LB3D5
LB3CE       ldx #$8C
            lda RANDOM
            ora #$20
LB3D5       sta AUDF4
LB3D8       stx AUDC4
            inc DSKFMS
            bne LB3F2
            inc ICBLHZ
            lda ICBLHZ
            and #$C7
            sta ICBLHZ
            and #$07
            bne LB3F2
            inc DELTAC+1
            bne LB3F2
            sec
            ror DELTAC+1
LB3F2       ldy #$3F
            ldx #$C0
            lda DELTAC+1
            rol
            lda #$03
            bcc LB402
            lda #$00
            tay
            ldx #$40
LB402       sta GRACTL
            stx NMIEN
            sty DMACLT
            ldx #$01
            stx PRIOR
            dex
            stx HPOSP3
            ldx #$84
            lda ICBALZ
            cmp #$02
            bcs LB427
            lda CHKSUM
            beq LB427
            dec CHKSUM
            lsr
            bcc LB427
            ldx #$42
LB427       stx COLPF2
            lda #$20
            sta COLPF1
            jsr LAFD0
            lda L00C7
            bne LB441
            lda #$00
            sta COLPF0
            sta COLPF1
            sta COLPF2
LB441       lda #$00
            sta DLISTL
            lda #$3F
            sta DLISTH
            lda #$44
            ldx #$E7
            ldy ICAX1Z
            beq LB478
            ldy ICPTHZ
            dey
            tya
            ldx L3FB3
            ldy ICPTLZ
            dey
            bpl LB478
            inx
            cpx #$D7
            bcc LB466
            ldx #$4B
LB466       cpx #$9B
            bcs LB474
            cpx #$7E
            bcc LB474
            bne LB476
            lda #$EC
            bne LB476
LB474       lda #$00
LB476       ldy #$07
LB478       sta ICPTHZ
            stx L3FB3
            sty ICPTLZ
LB47F       sty HSCROL
            jmp XITVBV
            pha
            lda #$00
            sta IRQEN
            pla
            rti
LB48D       sty L00D6
            dec DSKUTL,X
            rol ICPTLZ
            .byte $44
LB494       .byte $E3
            jsr LB47F+1
LB498       .byte $D4,$83
            cmp (BUFSTR+1,X)
LB49C       .byte $F7
            lda COUNTR+1,X
LB49F       cpy #$20
            and (ICHIDZ,X)
LB4A3       and (NGFLAG,X)
            ora RTCLOK+2
            .byte $32
LB4A8       ora (RAMLO+1,X)
LB4AA       jsr TEMPCHR
            .byte $83
LB4AE       stx L0084
            .byte $00,$00,$00,$00
            ora (L0000,X)
            ora (L0000,X)
            ora (L0000,X)
            ora (L0000,X)
            ora (NGFLAG,X)
            ora (NGFLAG,X)
LB4C0       .byte $0C
            asl L1511
            ora L241E,Y
            .byte $2B,$34
            rol L594A,X
            .byte $6B,$80
            txs
LB4CF       lda L00DE,Y
LB4D2       lda LB94C,Y
            .byte $1A
            lda LB94C,Y
            sbc #$B9
            .byte $F4
            lda LB9FF,Y
            asl
            tsx
LB4E1       bmi LB523
            bvc LB544+1
LB4E5       .byte $04,$04,$04,$04
            php
            php
            php
            php
            php
            php
            .byte $1C,$1C
            asl TRAMSZ
            asl TRAMSZ
            asl RAMLO
            .byte $04,$04,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            cld
            pha
            txa
            pha
            tya
            pha
            lda VCOUNT
            cmp #$3F
            bcc LB510
            jmp LB72A
LB510       lda #$FF
            sta DSKUTL
            sta DSKUTL+1
            sta ABUFPT
            sta ABUFPT+1
            sta ABUFPT+2
            sta ICHIDZ
            sta WSYNC
            sta ICDNOZ
LB523       sta ICCOMZ
            sta ABUFPT+3
            lda OLDCOL
            lsr
            lsr
            lsr
            clc
            adc #$5C
            sta HPOSM1
            lda DINDEX
            sta HPOSP2
            clc
            adc #$04
            sta HPOSM2
            lda #$00
            sta COLPM1
            lda #$8E
LB544       ldx DELTAC
            bne LB54A
            lda #$1E
LB54A       sta COLPM2
            lda RECVDN
            sta HPOSP1
            lda L00C1
            sta HPOSM0
            lda NOCKSM
            sta HPOSP0
            ldy ATRACT
            ldx #$5D
            bne LB565
LB562       ldy TRAMSZ
            iny
LB565       sty TRAMSZ
LB567       sta WSYNC
            txa
            cmp DOSINI,Y
            bcs LB575
            inx
            bne LB567
            beq LB5E3
LB575       stx RAMLO
            inx
            beq LB5E3
            lda L0516,Y
            sta HPOSP3
            lda #$00
            sta L0EBC,X
            sta L0EBD,X
            lda CRITIC,Y
            sta CMCMD
            sta WSYNC
            and #$08
            beq LB596
            lda #$10
LB596       clc
            adc L0500,Y
            tay
            lda LBB40,Y
            sta L0000
            inx
            beq LB5E3
            ldy TRAMSZ
            lda L0521,Y
            sta SIZEP3
            lda DOSINI,Y
            sta RAMLO+1
            sta WSYNC
            lda L050B,Y
            tay
            lda LBB30,Y
            sta CASINI
            lda RAMLO+1
            clc
            adc LBB60,Y
            sec
            sbc RAMLO
            inx
            beq LB5E3
            tay
            bmi LB562
LB5CB       lda (L0000),Y
            sta L0EBC,X
            sta WSYNC
            bit CMCMD
            bpl LB5DD
            lda LB4E5,Y
            sta COLPF0
LB5DD       lda (CASINI),Y
            sta COLPM3
            inx
LB5E3       beq LB60B
            dey
            bpl LB5CB
            ldy TRAMSZ
            lda M2PL
            and #$08
            beq LB5F3
            sty ABUFPT
LB5F3       sta WSYNC
            bit CMCMD
            bpl LB602
            lda DOSVEC+1
            sta COLPF0
            jmp LB60A
LB602       lda P3PL
            lsr
            bcc LB60A
            sty ABUFPT+3
LB60A       inx
LB60B       beq LB66B
            lda P2PL
            lsr
            bcc LB615
            sty ABUFPT+2
LB615       and #$04
            beq LB61B
            sty ABUFPT+1
LB61B       lda P3PF
            lsr
            sta WSYNC
            eor CRITIC,Y
            and #$01
            eor CRITIC,Y
            sta CRITIC,Y
            inx
            beq LB66B
            lda M0PL
            and #$04
            beq LB639
            sty ICDNOZ
LB639       lda M0PF
            and #$03
            beq LB642
            sty ICCOMZ
LB642       lda P1PF
            sta WSYNC
            and #$02
            beq LB64E
            sty ICHIDZ
LB64E       lda P2PF
            lsr
            bcc LB656
            sty DSKUTL+1
LB656       lda M2PF
            and #$03
            beq LB65F
            sty DSKUTL
LB65F       sta HITCLR
            iny
            inx
            beq LB669
            jmp LB565
LB669       stx DOSVEC
LB66B       sta WSYNC
            stx HPOSP1
            stx HPOSP0
            stx HPOSM0
            stx COLPF3
            lda #$3E
            sta DMACLT
            lda #$1E
            sta COLPM1
            ldx #$1E
            stx COLPF0
            lda #$8E
            sta COLPF1
            ldy KEYDEF
            beq LB697
            ldy DELTAC
            beq LB697
            tax
LB697       stx COLPF2
            lda DELTAR
            beq LB6AD
            ora ICBLHZ
            bmi LB6AD
            lda DSKFMS
            and #$30
            bne LB6AD
            lda #$06
            sta COLPF0,Y
LB6AD       lda #$08
            sta CHBASE
            lda #$04
            sta WSYNC
            sta PRIOR
            lda #$06
            sta COLBK
            ldy TRAMSZ
            cpy #$0B
            bcs LB727
            lda #$0A
            ldx DOSVEC
            sta DOSVEC
            beq LB727
            lda P3PF
            lsr
            eor CRITIC,Y
            and #$01
            eor CRITIC,Y
            sta CRITIC,Y
            lda M0PL
            and #$04
            beq LB6E5
            sty ICDNOZ
LB6E5       lda M0PF
            and #$03
            beq LB6EE
            sty ICCOMZ
LB6EE       lda M2PF
            and #$03
            beq LB6F7
            sty DSKUTL
LB6F7       lda P2PF
            lsr
            bcc LB6FF
            sty DSKUTL+1
LB6FF       lda P2PL
            lsr
            bcc LB707
            sty ABUFPT+2
LB707       and #$04
            beq LB70D
            sty ABUFPT+1
LB70D       lda P3PL
            lsr
            bcc LB715
            sty ABUFPT+3
LB715       lda P1PF
            and #$02
            beq LB71E
            sty ICHIDZ
LB71E       lda M2PL
            and #$08
            beq LB727
            sty ABUFPT
LB727       jmp XITVBV
LB72A       ldx #$00
            lda #$3F
            sta DMACLT
            sta WSYNC
LB734       lda #$0C
            sta COLPF0
            stx COLBK
            lda #$06
            sta CHBASE
            lda L00BF
            bne LB74B
            sta WSYNC
            sta WSYNC
LB74B       ldx #$03
            stx SIZEP3
            lda ICPTHZ
            sta HPOSP3
            adc #$15
            tay
            ldx #$06
LB75A       sta WSYNC
            sty HPOSP2
LB760       lda LB48D,X
            sta COLPM3
LB766       sta COLPM2
            dey
            dex
LB76B       bpl LB75A
LB76D       sta WSYNC
            sta HITCLR
            jmp XITVBV
LB776       bvs LB766+2
            bmi LB7C8
LB77A       bpl LB7C2
            .byte $00
            bpl LB77F
LB77F       asl TRAMSZ
            ldy #$00
            lsr ZCHAIN+1,X
            clv
            eor (L0000,X)
            .byte $3F
            bvc LB7D1
            .byte $00
            bpl LB7BE
            asl TRAMSZ
            bne LB7B2
            lsr ZCHAIN+1,X
            clv
            eor (L0000,X)
            .byte $3F,$0C,$0C,$0C,$0C,$0C,$0C
            pha
            pha
            pha
            pha
            pha
            pha
            .byte $0C,$0C,$0C,$0C,$0C,$0C
            pha
            pha
            pha
            pha
            pha
            pha
            bcs LB760+2
LB7B2       bcs LB734
            .byte $80
            bcs LB766+1
            rol
            rol
            rol
            bcs LB76B+1
            bcs LB76D+1
LB7BE       asl L00B0,X
            bcs LB7EC
LB7C2       rol
            rol
            ldy L9CAC
            .byte $9C
LB7C8       sty LA88B+1
            tay
            .byte $32,$32,$00,$00,$00
LB7D1       .byte $00,$22,$14,$14,$12,$12,$14,$14
            clc
            clc
            .byte $12,$12,$14,$14,$12,$22,$22,$22,$22,$22,$22,$22,$22
            clc
            plp
            .byte $3A
            lsr
LB7EC       ror
            .byte $7A
            txs
            tax
            tsx
            dex
            nop
            .byte $FC
LB7F4       ora (LOMEM,X)
            .byte $00,$80
            ora (L0000,X)
            .byte $02,$00,$04,$00,$FF,$FF
            tax
            .byte $FF
            tax
            eor RAMTOP,X
            .byte $BF
            nop
            sta OLDROW,X
            .byte $AF,$FA
            lda COLCRS+1
            .byte $AB
            inc LAAA9,X
            .byte $FF
            tax
            tax
            tax
            .byte $BF
            nop
            tax
            tax
            .byte $AF,$FA
            tax
            tax
            .byte $AB
            inc.w L00AA,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$3F,$3F,$3F,$3F,$3F,$07
            and (ICAX4Z,X)
            and L0000
            .byte $2F
            rol ICBAHZ,X
            .byte $32,$3F,$3F,$3F,$3F,$3F,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $12
            ora #$16
            ora RTCLOK
            .byte $00,$12
            ora (BOOT,X)
            .byte $04
            ora DSKUTL,Y
            .byte $22
            and DDEVIC,Y
            and (BUFRLO,X)
            .byte $2F
            bit L1300
            plp
            and (LTEMP+1,X)
            .byte $00,$00,$00,$00,$03,$2F
            bmi LB8C0
            .byte $32
            and #$27
            plp
            .byte $34,$00,$3B,$3C
            and L183A,X
            .byte $3B,$3C
            and.w FTYPE,X
            .byte $00,$00,$1B,$1C
            ora L1F1E,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            bpl LB8EA
            and BUFRHI
            .byte $33,$00,$13,$14
            ora (RTCLOK,X)
LB8C0       .byte $14,$00,$2B
            and RECVDN
            .byte $00,$00,$00,$00
            ora BUFRHI,X
            and L0000
            rol
            .byte $2F
            and L3433,Y
            and #$23
            .byte $2B,$00,$3B,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00
LB8EA       .byte $00,$00,$00,$00,$1B,$1C
            ora L1F1E,X
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$FF
LB900       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
LB91C       .byte $14
            pha
            .byte $54
            rol
            .byte $89
            rol
            ldy DSKUTL
            adc (L008C,X)
            .byte $23
            cpy DSKFMS+1
            and #$92
            txa
            eor L0094
            txa
            rol
            sta (ZCHAIN),Y
            bit RTCLOK
            .byte $02,$14,$22
            ora (FMSZPG+1),Y
            .byte $82
            pha
            sta (RTCLOK+2,X)
            .byte $42
            dey
            .byte $22
            pha
            .byte $14
            eor (ICBALZ,X)
            dey
            .byte $22,$14
            eor (ICCOMZ,X)
            sty POKMSK
            php
LB94C       .byte $00,$00,$00,$04,$12
            pha
            .byte $12,$44
            php
            bpl LB99B
            bpl LB97D
            .byte $02
            bit FREQ
            .byte $12
            pha
            jsr L4004
            .byte $00,$00,$00
LB964       bpl LB964
            dec L00DE
            dec LDEDE,X
            inc LDEC6,X
            dec LC6DE
            inc LD6C6,X
            dec L00D6,X
            inc LDEDE,X
            dec LC6DE
            .byte $7C
LB97D       .byte $7C,$FC
            inc L78FF,X
            bmi LB994
            bpl LB9B6
            sec
            .byte $4F,$FF
            dec LOMEM
            asl L8E04
            .byte $FF,$FF,$9F
            asl L1C04
LB994       .byte $07
            asl L8E04
            .byte $FF,$FF,$9F
LB99B       asl L0704
            .byte $1C
            rol L7F3F,X
            .byte $FF
            asl L080C,X
            php
            .byte $0C,$1C,$F2,$FF,$63
            ora (ROWAC,X)
            jsr LFF71
            .byte $FF
            sbc L2070,Y
            sec
LB9B6       cpx #$70
            jsr LFF71
            .byte $FF
            sbc L2070,Y
            cpx #$38
            .byte $00
            bit ICBALZ
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $00
            clc
            clc
            clc
            bit ICBALZ
            bit ICBALZ
            bit NOCKSM
            ror LFF7E,X
            .byte $FF,$FF,$FF,$FF,$FF
            ror L3C7E,X
            .byte $00,$00
            clc
            .byte $1F
            clc
            ror LFFFF,X
            rol
            .byte $80
            rol
            .byte $00,$00
            clc
            .byte $1F
            clc
            ror LFFFF,X
            .byte $54
            ora (ROWCRS,X)
LB9FF       .byte $00,$00
            clc
            sed
            clc
            ror LFFFF,X
            rol
            .byte $80
            rol
            .byte $00,$00
            clc
            sed
            clc
            ror LFFFF,X
            .byte $54
            ora (ROWCRS,X)
LBA15       .byte $00,$00,$00,$00,$00,$00,$00,$00,$00
            clc
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            clc
            clc
            clc
            clc
            .byte $00,$00,$00,$00,$00,$00,$00
            clc
            .byte $3C,$3C,$3C,$3C
            clc
            .byte $00,$00,$00,$00,$00,$00
            clc
            .byte $3C,$3C,$3C,$3C,$3C,$3C
            clc
            .byte $00,$00,$00,$00,$00
            clc
            .byte $3C,$3C
            ror L7E7E,X
            ror L3C3C,X
            clc
            .byte $00,$00,$00,$00,$3C
            ror LFF7E,X
            .byte $FF,$FF,$FF,$FF,$FF
            ror L3C7E,X
            php
            php
            php
            .byte $1C
            rol L7F7F,X
            .byte $6B
            eor #$08
            .byte $1C
            rol.w ICAX1Z,X
            php
            php
            php
            clc
            .byte $3C
            rol L2E3E,X
            asl
            php
            clc
            .byte $3C
            rol L0802
            php
            php
            .byte $0C
            asl L3E3E,X
            .byte $3A
            plp
            php
            .byte $0C
            asl L203A,X
LBA8F       .byte $00
            ora (L00FF,X)
            .byte $FF,$00
            ora (L0000,X)
            .byte $00
            ora (L0000,X)
            ora (L00FF,X)
            .byte $00,$FF,$FF,$FF,$00
            ora (NGFLAG,X)
            .byte $00
            ora (L00FF,X)
            .byte $FF,$00,$00,$FF,$00,$00,$00
            ora (NGFLAG,X)
            .byte $00
LBAAF       .byte $00,$00
            ora (CASINI,X)
            ora RAMLO
            .byte $07
LBAB6       asl L0000
LBAB8       lda LBA15,Y
            .byte $1F
            tsx
            .byte $2B
            tsx
            sec
            tsx
            lsr L00BA
            eor L00BA,X
LBAC5       asl L3E2E,X
            lsr L7E6E
            .byte $9E
LBACC       ldx LB900,Y
            .byte $00
            lda LB94C,Y
            .byte $34
            lda LB91C,Y
            .byte $34
            lda LB94C,Y
            sta (L00BA,X)
            .byte $73
            tsx
            adc L00BA
            .byte $0B,$0B,$02,$FF,$0B
            jsr L3614
            .byte $00
            ora (HOLDCH,X)
            .byte $00
            inc LFF01,X
            .byte $FF
            ora (L0000),Y
LBAF3       ora.w NGFLAG
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$04
            ora (L0000,X)
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$04,$80
LBB0B       .byte $00,$00,$00,$00,$00,$00,$00
            bpl LBB19+1
            asl BUFADR
            ora TRAMSZ,X
            .byte $03
LBB19       bvc LBB21+2
LBB1B       adc DOSINI+1,X
            php
            ora L0708
LBB21       ora L0C08
LBB24       .byte $00
            ora (CASINI+1,X)
            .byte $04
            ora TRAMSZ
            .byte $00,$07
            ora #$08
            .byte $0B
            asl
LBB30       .byte $00,$00,$00,$00,$00,$00,$00
            cpy L00B0
            bcs LBAF3+2
            tsx
            cpx #$CA
            .byte $CF
            tya
LBB40       .byte $00,$00
            jmp L1C34
            .byte $34
            jmp L8B85
            sta L008B,X
            sta L00D5,X
            adc L65C1,X
            .byte $00,$00
            jmp L1C34
            .byte $34
            jmp LADA6+1
            .byte $B7
            lda LD5B7
            .byte $9F
            cmp (ADRESS+1,X)
LBB60       .byte $17
            ora RAMLO+1
            ora RAMLO+1
            ora RAMLO+1
            ora BOOT
            ora #$09
            ora #$13
            .byte $07,$13,$17
LBB70       .byte $00,$1A,$00,$00,$00,$00,$00,$00
            bpl LBB7A
LBB7A       .byte $00,$5B,$00,$00,$00,$00,$00,$00
            bvc LBB84
LBB84       .byte $00,$E7
            sbc (L00ED,X)
            sbc L00C7
            iny
            cmp #$C8
            dex
            .byte $00
LBB8F       .byte $83
            sty L0085
            stx L0000
            .byte $00,$00
LBB96       sta (L0000),Y
            .byte $00,$00,$00
            cmp (L0000),Y
            .byte $CB
            cpy LCCCD
LBBA1       dec.w L0000
            .byte $00,$00,$00,$00,$00,$00,$00,$00,$00,$00,$00
            ora (CASINI+1,X)
            .byte $00
LBBB2       ora WARMST
            .byte $03,$04
            ora TRAMSZ
            asl WARMST
            php
            asl
            php
            php
            asl
            asl
            asl
            asl
            .byte $03
            ora TRAMSZ
            php
            php
            php
            asl
            asl
            asl
            asl
LBBCC       .byte $07,$04
            php
            asl TRAMSZ
            .byte $04
            ora RAMLO
LBBD4       .byte $04,$04,$04,$04,$04,$04
            ora RAMLO
            ora RAMLO
            .byte $07
            php
            asl WARMST
            ora #$0A
            .byte $17
            asl BUFADR,X
            .byte $14,$13
            ora RTCLOK+1,X
LBBEB       .byte $12,$14
            ora DOSINI,X
            .byte $0C
LBBF0       .byte $14
LBBF1       asl L160E
            asl ABUFPT+2,X
            asl L00BC
            rol
            ldy LBC59+1,X
            ldx LBEBB+1,Y
            .byte $BC
;
            org $022F
;
            .byte $00
;
            org $D400
;
            .byte $00
;
            org $BC00
;
            .byte $12
            lda LBD12,X
            .byte $C2
            lda LAA09+1,X
            tax
            .byte $42
            tax
            lda #$42
            ldx #$A5
            .byte $42
            ldx #$95
            bvc LBB96
            sta TEMPCHR,X
            asl
            eor TEMPCHR,X
            rol
            eor ROWCRS,X
            and #$55
            .byte $54
            and COLCRS
            eor ICBAHZ,X
            eor COLCRS,X
            ora COLCRS,X
            eor BUFADR,X
            eor L00AA,X
            tax
            tax
            .byte $BF
            ror
            tax
            tax
            sbc LAA59+1,X
            tax
            sbc COLCRS+1,X
            tax
            nop
            sbc COLCRS,X
            tax
            .byte $FB
            cmp COLCRS,X
            ror
            .byte $FF
            cmp COLCRS,X
            .byte $5A,$BF
            cmp COLCRS,X
            .byte $5A,$BF
            eor COLCRS,X
            lsr L00AF,X
            eor COLCRS,X
            eor L00AD,X
            eor COLCRS,X
            eor BUFSTR+1,X
            eor COLCRS,X
            eor OLDCHR,X
LBC59       eor L00AA,X
            tsx
            ldx LAAAA
            ror
            tsx
            ldx LA9A9+1
            .byte $5A
            ldx LAAAF,Y
            lda #$5A
            .byte $BF,$AB
            tax
            lda #$5A
            .byte $AF,$AB
            nop
            lda OLDROW
            .byte $AF,$AB
            nop
            lda COLCRS+1
            .byte $AB
            tax
            nop
            lda COLCRS+1
            .byte $AB
            tax
            .byte $FA
            lda COLCRS+1
            lda #$AA
            tsx
            lda COLCRS+1
            lda #$AA
            ldx L56A5,Y
            lda RAMTOP
            ldx L0095
            lsr L00A5,X
            ror
            ldx L0095
            eor L0095,X
            .byte $5A
            stx L0095,Y
            eor L0095,X
            .byte $5A
            sta L0095,X
            eor COLCRS,X
            .byte $5A
            sta L0095,X
            eor COLCRS,X
            .byte $5A
            sta L0095,X
            eor COLCRS,X
            lsr COLCRS,X
            eor COLCRS,X
            eor COLCRS+1,X
            eor COLCRS,X
            eor COLCRS,X
            lsr COLCRS,X
            eor COLCRS,X
            eor COLCRS+1,X
            eor COLCRS,X
            tax
            tax
            tax
            tax
            tax
            .byte $00
            ror
            tax
            tax
            ldx #$AA
            ora (OLDROW,X)
            tax
            tax
            .byte $82
            tay
            ora (OLDROW,X)
            tay
            tax
            asl
            tay
            ora COLCRS+1
            tay
            plp
            asl
            tay
            ora COLCRS+1
            tax
            php
            rol
            ldy #$15
            lsr L00AA,X
            .byte $80
            ror
            .byte $00
            eor COLCRS,X
            tax
            sta (RAMTOP,X)
            ora (COLCRS,X)
            eor L00AA,X
            ora (SAVMSC,X)
            ora COLCRS
            eor RAMTOP,X
            ora SAVMSC
            ora COLCRS,X
            eor SAVMSC,X
            ora ROWCRS,X
            eor COLCRS,X
            eor SAVMSC,X
            ora ROWCRS,X
            eor COLCRS,X
            eor ROWCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor ROWCRS,X
LBD0E       eor COLCRS,X
            eor COLCRS,X
LBD12       eor COLCRS,X
            eor L0095,X
            eor COLCRS,X
            eor COLCRS,X
            ror
            eor RAMTOP,X
            lda #$55
            eor COLCRS,X
            eor L00AA,X
            tax
            tax
            tax
            .byte $AF
            nop
            .byte $AB
            eor L00AA,X
            tax
            tax
            tax
            .byte $AF
            tax
            .byte $AB
            cmp RAMTOP,X
            tax
            tax
            tax
            .byte $AF
            tax
            .byte $AB
            sbc RAMTOP,X
            tax
            tax
            tax
            .byte $BF
            tax
            .byte $AB,$FF,$5A
            tax
            .byte $FA
            tax
            ldx LAFA9+1,Y
            .byte $FF,$5A
            tax
            .byte $FA
            tax
            ldx LAFA9+1,Y
            .byte $FF,$5A,$AB
            nop
LBD55       tax
            .byte $FA
            tax
            .byte $AF,$FF
            lsr L00AF,X
            nop
            tax
            .byte $FA
            tax
            .byte $AF
            sbc LAF55,X
            tax
            tax
            nop
            tax
            .byte $AF
            sbc LBD55,X
            tax
            .byte $AB
            nop
            tax
            .byte $AF
            sbc COLCRS,X
            adc L00AA,X
            .byte $AB
            tax
            tax
            .byte $BF
            sbc COLCRS,X
            adc RAMTOP,X
            .byte $AB
            tax
            tax
            .byte $BF
            sbc COLCRS,X
            eor RAMTOP,X
            lda #$AA
            tax
            .byte $BF
            cmp COLCRS,X
            eor OLDROW,X
            lda RAMTOP
            tax
            .byte $BF
            eor COLCRS,X
            eor OLDROW,X
            sta OLDROW,X
            tax
            .byte $BF
            eor COLCRS,X
            eor COLCRS+1,X
            eor COLCRS,X
            tax
            lda L5555,X
            eor COLCRS+1,X
            eor COLCRS,X
            .byte $5A
            lda L5555,X
            eor COLCRS,X
            eor COLCRS,X
            lsr L00B5,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor L00B5,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor ENDPT+1,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            adc #$55
            eor COLCRS,X
            eor COLCRS,X
            .byte $5A
            tax
            eor OLDROW,X
            tax
            sta COLCRS,X
            eor COLCRS,X
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            tax
            eor COLCRS,X
            .byte $5A
            tax
            tax
            tax
            tax
            tax
            tax
            lda #$55
            eor COLCRS+1,X
            tax
            tax
            tax
            tax
            tax
            tax
            lda COLCRS
            eor COLCRS+1,X
            tax
            tax
            tax
            tax
            tax
            tax
            lda COLCRS
            eor COLCRS,X
            tax
            tax
            tax
            tax
            tax
            tax
            ora COLCRS,X
            eor COLCRS,X
            ror
            tax
            tax
            tax
            tax
            tax
            ora COLCRS,X
            eor COLCRS,X
            ror
            tax
            tax
            tax
            tax
            tay
            ora COLCRS,X
            eor COLCRS,X
            .byte $5A
            tax
            tax
            tax
            tax
            tay
            eor COLCRS,X
            eor COLCRS,X
            .byte $5A
            tax
            tax
            tax
            tax
            tay
            eor COLCRS,X
            eor COLCRS,X
            eor L00AA,X
            tax
            tax
            tax
            ldy #$55
            eor COLCRS,X
            eor COLCRS,X
            ror
            tax
            tax
            tax
            ldx #$AA
            ldy #$01
            eor COLCRS,X
            ror
            tax
            tax
            tax
            .byte $82
            tax
            ldy #$05
            eor COLCRS,X
            .byte $5A
            tax
            tay
            rol
            txa
            tax
            ldy #$15
            eor COLCRS,X
            lsr L00AA,X
            tax
            rol
            txa
            tax
            .byte $80
            ora COLCRS,X
            eor COLCRS+1,X
            tax
            tax
            asl
            asl
            tax
            .byte $80
            eor COLCRS,X
            eor COLCRS+1,X
            tax
            tax
            txa
            rol
            tax
            sta (COLCRS,X)
            eor COLCRS,X
            eor L00AA,X
            tax
            .byte $80
            rol
            tax
            ora (COLCRS,X)
            eor COLCRS,X
            eor COUNTR,X
            tax
            .byte $80
            tax
            tax
            ora COLCRS
            eor COLCRS,X
            eor OLDADR+1,X
            tax
            .byte $80
            tax
            tax
            ora COLCRS
            eor COLCRS,X
            eor DINDEX,X
            tax
            .byte $80
            ror
            tay
            ora COLCRS,X
            eor COLCRS,X
            eor DINDEX,X
            nop
            sta (OLDROW,X)
            tay
            ora COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            nop
            sta (COLCRS+1,X)
            tay
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            .byte $FA
            sta (COLCRS,X)
            ldy #$55
LBEBB       eor COLCRS,X
            eor COLCRS,X
            eor KEYDEF+1,X
            sta COLCRS
            adc (COLCRS,X)
            eor COLCRS,X
            eor COLCRS,X
            eor COUNTR,X
            sta COLCRS
            eor L5555,Y
            eor COLCRS,X
            eor COLCRS,X
            lsr L5515,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor OLDADR+1,X
            ora COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor COLCRS,X
            eor DINDEX,X
            ora COLCRS,X
            eor COLCRS,X
LBEED       eor L0000,X
            .byte $00,$00,$00,$00
            rts
            rts
            cpy #$74
            rol ICPTHZ
            and ICBALZ
            .byte $00,$00,$00
            rti
            cpy #$C0
            rti
            rti
            .byte $00,$00,$00,$00,$00,$00
            ora (CASINI+1,X)
            asl DOSINI
            .byte $00,$2F
            adc (L00ED,X)
            lda #$E9
            and #$2D
            .byte $00
            beq LBF28+1
            .byte $53
            lsr OLDCOL+1,X
            cli
            bvc LBF1E
LBF1E       inc L3A80,X
            ldx #$BA
            txa
            tsx
            .byte $00,$00,$00
LBF28       sbc #$AD
            .byte $AF,$AB
            sbc #$00
LBF2E       .byte $00,$E7
            lda L00E5,X
            .byte $B7
            lda L00E4,X
            .byte $00,$00,$3B,$92,$92,$12,$92,$BB,$00,$00
            stx L50D8
            lsr L00DA,X
            stx.w L0000
            cpx #$80
            cpy #$80
            .byte $80
            cpx #$00
            .byte $7F
            jmp L4C4C
            jmp L4040
            .byte $4F,$FF,$00,$00,$00,$00,$00,$00,$00,$FF
            php
            php
            pha
            cpy #$43
            lsr L00EC
            .byte $FF
            ora L1919,Y
            ora L0101,Y
            sbc (FMSZPG+5),Y
            pha
            lsr L4848
            .byte $4F
            rti
            .byte $7F,$00,$00,$00,$00,$00,$00,$00,$FF
            clc
            .byte $37
            adc (L00C7,X)
            .byte $04,$07,$00,$FF
            sta (LOMEM+1,X)
            sbc (LOMEM+1,X)
            sta (LOMEM+1,X)
            ora (L00FF,X)
            .byte $00,$00
            inc LEEA2
            dey
            stx.w L0000
            .byte $3C
            ror MLTTMP
            ror MLTTMP
            .byte $3C,$00
LBF9E       .byte $00,$00
            cpx L00AC
            cpx L0084
            stx.w L0000
            .byte $00
            ldx LE4A4
            ldy L00AE
            .byte $00
            php
            php
            .byte $1C
            rol L496B,X
            .byte $1C
            rol
LBFB6       .byte $00,$3C
            ror DOSINI
            clc
            bmi LC03B
            .byte $00,$00
            clc
            sec
            clc
            clc
            clc
            ror.w L0000,X
            .byte $3C
            ror FTYPE
            asl DOSINI
            sec
            .byte $00,$00,$3C
            ror NOCKSM
            ror MLTTMP
            .byte $3C,$00,$00
            ror L180C,X
            .byte $0C
            ror NOCKSM
            .byte $00,$00,$00,$00,$00,$00
            clc
LBFE4       clc
            .byte $00
            stx RAMLO,Y
            sty L8E10
            .byte $0C,$7C
            jsr L1486
            jmp (LFF30)
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            ldy #$00
            .byte $80,$00,$A0
;
            org $02E2
;
            .word savirq
;
         
