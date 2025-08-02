;
; System equates
;
; OS EQUATES
; ----------
; 
; Syntax:
; Use '=' for addresses
; and '<' for read addresses (ex: KBCODE)
; and '>' for write addresses (ex: STIMER)
; and '#' for values
; 
; IO EQUATES
; 
ICHID       = $0000
ICDNO       = $0001
ICCOM       = $0002
ICSTA       = $0003
ICBAL       = $0004
ICBAH       = $0005
ICPTL       = $0006
ICPTH       = $0007
ICBLL       = $0008
ICBLH       = $0009
ICAX1       = $000A
ICAX2       = $000B
ICAX3       = $000C
ICAX4       = $000D
ICAX5       = $000E
ICAX6       = $000F
; 
; DISPLAY LIST EQUATES
; 
ADLI        = $0080
AVB         = $0040
ALMS        = $0040
AVSCR       = $0020
AHSCR       = $0010
AJMP        = $0001
AEMPTY1     = $0000
AEMPTY2     = $0010
AEMPTY3     = $0020
AEMPTY4     = $0030
AEMPTY5     = $0040
AEMPTY6     = $0050
AEMPTY7     = $0060
AEMPTY8     = $0070
; 
; OS VARIABLES FOR XL/XE
; 
; PAGE 0
; 
NGFLAG      = $0001
CASINI      = $0002
RAMLO       = $0004
TRAMSZ      = $0006
CMCMD       = $0007
WARMST      = $0008
BOOT        = $0009
DOSVEC      = $000A
DOSINI      = $000C
APPMHI      = $000E
POKMSK      = $0010
BRKKEY      = $0011
RTCLOK      = $0012
BUFADR      = $0015
ICCOMT      = $0017
DSKFMS      = $0018
DSKUTL      = $001A
ABUFPT      = $001C
ICHIDZ      = $0020
ICDNOZ      = $0021
ICCOMZ      = $0022
ICSTAZ      = $0023
ICBALZ      = $0024
ICBAHZ      = $0025
ICPTLZ      = $0026
ICPTHZ      = $0027
ICBLLZ      = $0028
ICBLHZ      = $0029
ICAX1Z      = $002A
ICAX2Z      = $002B
ICAX3Z      = $002C
ICAX4Z      = $002D
ICAX5Z      = $002E
ICAX6Z      = $002F
STATUS      = $0030
CHKSUM      = $0031
BUFRLO      = $0032
BUFRHI      = $0033
BFENLO      = $0034
BFENHI      = $0035
LTEMP       = $0036
BUFRFL      = $0038
RECVDN      = $0039
XMTDON      = $003A
CHKSNT      = $003B
NOCKSM      = $003C
BPTR        = $003D
FTYPE       = $003E
FEOF        = $003F
FREQ        = $0040
SOUNDR      = $0041
CRITIC      = $0042
FMSZPG      = $0043
ZCHAIN      = $004A
DSTAT       = $004C
ATRACT      = $004D
DRKMSK      = $004E
COLRSH      = $004F
TEMP        = $0050
HOLD1       = $0051
LMARGN      = $0052
RMARGN      = $0053
ROWCRS      = $0054
COLCRS      = $0055
DINDEX      = $0057
SAVMSC      = $0058
OLDROW      = $005A
OLDCOL      = $005B
OLDCHR      = $005D
OLDADR      = $005E
FKDEF       = $0060
PALNTS      = $0062
LOGCOL      = $0063
ADRESS      = $0064
MLTTMP      = $0066
SAVADR      = $0068
RAMTOP      = $006A
BUFCNT      = $006B
BUFSTR      = $006C
BITMSK      = $006E
SHFAMT      = $006F
ROWAC       = $0070
COLAC       = $0072
ENDPT       = $0074
DELTAR      = $0076
DELTAC      = $0077
KEYDEF      = $0079
SWPFLG      = $007B
HOLDCH      = $007C
INSDAT      = $007D
COUNTR      = $007E
LOMEM       = $0080
; 
; PAGE 2
; 
VDSLST      = $0200
VPRCED      = $0202
VINTER      = $0204
VBREAK      = $0206
VKEYBD      = $0208
VSERIN      = $020A
VSEROR      = $020C
VSEROC      = $020E
VTIMR1      = $0210
VTIMR2      = $0212
VTIMR4      = $0214
VIMIRQ      = $0216
CDTMV1      = $0218
CDTMV2      = $021A
CDTMV3      = $021C
CDTMV4      = $021E
CDTMV5      = $0220
VVBLKI      = $0222
VVBLKD      = $0224
CDTMA1      = $0226
CDTMA2      = $0228
CDTMF3      = $022A
SRTIMR      = $022B
CDTMF4      = $022C
INTEMP      = $022D
CDTMF5      = $022E
SDMCTL      = $022F
SDLSTL      = $0230
SDLSTH      = $0231
SSKCTL      = $0232
SPARE       = $0233
LPENH       = $0234
LPENV       = $0235
BRKKY       = $0236
VPIRQ       = $0238
CDEVIC      = $023A
CCOMND      = $023B
CAUX1       = $023C
CAUX2       = $023D
TMPSIO      = $023E
ERRFLG      = $023F
DFLAGS      = $0240
DBSECT      = $0241
BOOTAD      = $0242
COLDST      = $0244
RECLEN      = $0245
DSKTIM      = $0246
PDVMSK      = $0247
SHPDVS      = $0248
PDMSK       = $0249
RELADR      = $024A
PPTMPA      = $024C
PPTMPX      = $024D
CHSALT      = $026B
VSFLAG      = $026C
KEYDIS      = $026D
FINE        = $026E
GPRIOR      = $026F
PADDL0      = $0270
PADDL1      = $0271
PADDL2      = $0272
PADDL3      = $0273
PADDL4      = $0274
PADDL5      = $0275
PADDL6      = $0276
PADDL7      = $0277
STICK0      = $0278
STICK1      = $0279
STICK2      = $027A
STICK3      = $027B
PTRIG0      = $027C
PTRIG1      = $027D
PTRIG2      = $027E
PTRIG3      = $027F
PTRIG4      = $0280
PTRIG5      = $0281
PTRIG6      = $0282
PTRIG7      = $0283
STRIG0      = $0284
STRIG1      = $0285
STRIG2      = $0286
STRIG3      = $0287
HIBYTE      = $0288
WMODE       = $0289
BLIM        = $028A
IMASK       = $028B
JVECK       = $028C
NEWADR      = $028E
TXTROW      = $0290
TXTCOL      = $0291
TINDEX      = $0293
TXTMSC      = $0294
TXTOLD      = $0296
CRETRY      = $029C
HOLD3       = $029D
SUBTMP      = $029E
HOLD2       = $029F
DMASK       = $02A0
TMPLBT      = $02A1
ESCFLG      = $02A2
TABMAP      = $02A3
LOGMAP      = $02B2
INVFLG      = $02B6
FILFLG      = $02B7
TMPROW      = $02B8
TMPCOL      = $02B9
SCRFLG      = $02BB
HOLD4       = $02BC
DRETRY      = $02BD
SHFLOC      = $02BE
BOTSCR      = $02BF
PCOLR0      = $02C0
PCOLR1      = $02C1
PCOLR2      = $02C2
PCOLR3      = $02C3
COLOR0      = $02C4
COLOR1      = $02C5
COLOR2      = $02C6
COLOR3      = $02C7
COLOR4      = $02C8
RUNADR      = $02C9
HIUSED      = $02CB
ZHIUSE      = $02CD
GBYTEA      = $02CF
LOADAD      = $02D1
ZLOADA      = $02D3
DSCTLN      = $02D5
ACMISR      = $02D7
KRPDER      = $02D9
KEYREP      = $02DA
NOCLIK      = $02DB
HELPFG      = $02DC
DMASAV      = $02DD
PBPNT       = $02DE
PBUFSZ      = $02DF
RUNAD       = $02E0
INITAD      = $02E2
RAMSIZ      = $02E4
MEMTOP      = $02E5
MEMLO       = $02E7
HNDLOD      = $02E9
DVSTAT      = $02EA
CBAUDL      = $02EE
CBAUDH      = $02EF
CRSINH      = $02F0
KEYDEL      = $02F1
CH1         = $02F2
CHACT       = $02F3
CHBAS       = $02F4
NEWROW      = $02F5
NEWCOL      = $02F6
ROWINC      = $02F8
COLINC      = $02F9
CHAR        = $02FA
ATACHR      = $02FB
CH          = $02FC
FILDAT      = $02FD
DSPFLG      = $02FE
SSFLAG      = $02FF
; 
; PAGE 3
; 
DDEVIC      = $0300
DUNIT       = $0301
DCOMND      = $0302
DSTATS      = $0303
DBUFLO      = $0304
DBUFHI      = $0305
DTIMLO      = $0306
DUNUSE      = $0307
DBYTLO      = $0308
DBYTHI      = $0309
DAUX1       = $030A
DAUX2       = $030B
TIMER1      = $030C
ADDCOR      = $030E
CASFLG      = $030F
TIMER2      = $0310
TEMP1       = $0312
TEMP2       = $0314
TEMP3       = $0315
SAVIO       = $0316
TIMFLG      = $0317
STACKP      = $0318
TSTAT       = $0319
HATABS      = $031A
PUPBT1      = $033D
PUPBT2      = $033E
PUPBT3      = $033F
IOCB0       = $0340
IOCB1       = $0350
IOCB2       = $0360
IOCB3       = $0370
IOCB4       = $0380
IOCB5       = $0390
IOCB6       = $03A0
IOCB7       = $03B0
PRNBUF      = $03C0
SUPERF      = $03E8
CKEY        = $03E9
CASSBT      = $03EA
CARTCK      = $03EB
DERRF       = $03EC
ACMVAR      = $03ED
BASICF      = $03F8
MINTLK      = $03F9
GINTLK      = $03FA
CHLINK      = $03FB
CASBUF      = $03FD
; 
; HARDWARE REGISTERS
; 
; GTIA
; 
M0PF        = $D000
HPOSP0      = $D000
M1PF        = $D001
HPOSP1      = $D001
M2PF        = $D002
HPOSP2      = $D002
M3PF        = $D003
HPOSP3      = $D003
P0PF        = $D004
HPOSM0      = $D004
P1PF        = $D005
HPOSM1      = $D005
P2PF        = $D006
HPOSM2      = $D006
P3PF        = $D007
HPOSM3      = $D007
M0PL        = $D008
SIZEP0      = $D008
M1PL        = $D009
SIZEP1      = $D009
M2PL        = $D00A
SIZEP2      = $D00A
M3PL        = $D00B
SIZEP3      = $D00B
P0PL        = $D00C
SIZEM       = $D00C
P1PL        = $D00D
GRAFP0      = $D00D
P2PL        = $D00E
GRAFP1      = $D00E
P3PL        = $D00F
GRAFP2      = $D00F
TRIG0       = $D010
GRAFP3      = $D010
TRIG1       = $D011
GRAFM       = $D011
TRIG2       = $D012
COLPM0      = $D012
TRIG3       = $D013
COLPM1      = $D013
PAL         = $D014
COLPM2      = $D014
COLPM3      = $D015
COLPF0      = $D016
COLPF1      = $D017
COLPF2      = $D018
COLPF3      = $D019
COLBK       = $D01A
PRIOR       = $D01B
VDELAY      = $D01C
GRACTL      = $D01D
HITCLR      = $D01E
CONSOL      = $D01F
; 
; POKEY
; 
POT0        = $D200
AUDF1       = $D200
POT1        = $D201
AUDC1       = $D201
POT2        = $D202
AUDF2       = $D202
POT3        = $D203
AUDC2       = $D203
POT4        = $D204
AUDF3       = $D204
POT5        = $D205
AUDC3       = $D205
POT6        = $D206
AUDF4       = $D206
POT7        = $D207
AUDC4       = $D207
ALLPOT      = $D208
AUDCTL      = $D208
KBCODE      = $D209
STIMER      = $D209
RANDOM      = $D20A
SKREST      = $D20A
POTGO       = $D20B
SERIN       = $D20D
SEROUT      = $D20D
IRQST       = $D20E
IRQEN       = $D20E
SKSTAT      = $D20F
SKCTL       = $D20F
; 
; PIA
; 
PORTA       = $D300
PORTB       = $D301
PACTL       = $D302
PBCTL       = $D303
; 
; ANTIC
; 
DMACLT      = $D400
CHACTL      = $D401
DLISTL      = $D402
DLISTH      = $D403
HSCROL      = $D404
VSCROL      = $D405
PMBASE      = $D407
CHBASE      = $D409
WSYNC       = $D40A
VCOUNT      = $D40B
PENH        = $D40C
PENV        = $D40D
NMIEN       = $D40E
NMIST       = $D40F
NMIRES      = $D40F
; 
; FLOATING POINT ROUTINES
; 
AFP         = $D800
FASC        = $D8E6
IFP         = $D9AA
FPI         = $D9D2
ZFR0        = $DA44
ZF1         = $DA46
FSUB        = $DA60
FADD        = $DA66
FMUL        = $DADB
FDIV        = $DB28
PLYEVL      = $DD40
FLD0R       = $DD89
FLD0P       = $DD8D
FLD1R       = $DD98
FLD1P       = $DD9C
FSTOR       = $DDA7
FSTOP       = $DDAB
FMOVE       = $DDB6
EXP         = $DDC0
EXP10       = $DDCC
LOG         = $DECD
LOG10       = $DED1
; 
; ROM VECTORS
; 
DSKINV      = $E453
CIOV        = $E456
SIOV        = $E459
SETVBV      = $E45C
SYSVBV      = $E45F
XITVBV      = $E462
SIOINV      = $E465
SENDEV      = $E468
INTINV      = $E46B
CIOINV      = $E46E
SELFSV      = $E471
WARMSV      = $E474
COLDSV      = $E477
RBLOKV      = $E47A
CSOPIV      = $E47D
PUPDIV      = $E480
SELFTSV     = $E483
PENTV       = $E486
PHUNLV      = $E489
PHINIV      = $E48C
GPDVV       = $E48F
;
; Code equates
;
L0082       = $0082
L0083       = $0083
L0084       = $0084
L0085       = $0085
L0089       = $0089
L008D       = $008D
L008E       = $008E
L008F       = $008F
L0090       = $0090
L0091       = $0091
L0092       = $0092
L0093       = $0093
L0096       = $0096
L0097       = $0097
L0098       = $0098
L0099       = $0099
L009A       = $009A
L009B       = $009B
L009C       = $009C
L009D       = $009D
L009E       = $009E
L009F       = $009F
L00A0       = $00A0
L00A1       = $00A1
L00A2       = $00A2
L00A3       = $00A3
L00A4       = $00A4
L00A5       = $00A5
L00A6       = $00A6
L00A7       = $00A7
L00A8       = $00A8
L00A9       = $00A9
L00AA       = $00AA
L00AB       = $00AB
L00AC       = $00AC
L00AD       = $00AD
L00AE       = $00AE
L00AF       = $00AF
L00B0       = $00B0
L00B1       = $00B1
L00B6       = $00B6
L00B8       = $00B8
L00B9       = $00B9
L00CA       = $00CA
L00CE       = $00CE
L00E7       = $00E7
L00E9       = $00E9
L0600       = $0600
L0601       = $0601
L0602       = $0602
L0603       = $0603
L0604       = $0604
L0605       = $0605
L0606       = $0606
L0607       = $0607
L0800       = $0800
L0801       = $0801
L0900       = $0900
L0901       = $0901
L0902       = $0902
L0903       = $0903
L0904       = $0904
L0907       = $0907
L0908       = $0908
L0909       = $0909
L090A       = $090A
L090D       = $090D
L090E       = $090E
L090F       = $090F
L0910       = $0910
L0911       = $0911
L0912       = $0912
L0913       = $0913
L0914       = $0914
L0915       = $0915
L1000       = $1000
L2000       = $2000
L2003       = $2003
L2005       = $2005
L200B       = $200B
L200D       = $200D
L200E       = $200E
L2029       = $2029
L202F       = $202F
L2035       = $2035
L203D       = $203D
L2042       = $2042
L2064       = $2064
L2090       = $2090
L20C8       = $20C8
L8898       = $8898
L9512       = $9512
LBF0B       = $BF0B
LCCD2       = $CCD2
;
; Start of code
;
            ORG $8000
;
L8000:      lda L0907
            cmp #$A5
            bne L8011
            lda L0908
            cmp #$5A
            bne L8011
            jmp L88E5
L8011:      lda #$00
            ldx #$03
L8015:      sta L0909,X
            sta L090D,X
            dex
            bpl L8015
            lda #$A5
            sta L0907
            lda #$5A
            sta L0908
            jmp L88E5
L802B:      jsr L9483
            jsr L806A
            jsr L8B40
            jsr L8361
            jsr L8C9F
            jsr L8E82
            jsr L8361
            jsr L8C26
            jsr L86ED
            jsr L8BD0
            jsr L827E
            jsr L8426
            jsr L83DB
            jsr L82C9
            jsr L819A
            jsr L81F9
            jsr L80FC
            jsr L80B9
            jsr LBEC2
            jsr L839B
            jmp L802B
L806A:      pha
            txa
            pha
            lda L0099
            ldx #$08
L8071:      cmp L8083,X
            bcc L807D
            beq L807D
            dex
            bne L8071
            ldx #$01
L807D:      .byte $8E,$CA,$00;stx $00CA Doesn't Assemble correctly
            pla
            tax
            pla
L8083:      rts
            lda L8898
            sei
            pla
            cli
            pha
            sec
L808C:      lda L00A6
            beq L80B0
            cmp #$13
            bcc L80B1
            lda #$56
            sta L2064
            lda #$12
L809B:      sta $00
            lda #$00
            ldx #$13
L80A1:      sta L2064,X
            dex
            beq L80B0
            cpx $00
            bne L80A1
            lda #$15
            jmp L80A1
L80B0:      rts
L80B1:      ldy #$00
            sty L2064
            jmp L809B
L80B9:      lda L00AC
            and #$02
            bne L80C0
L80BF:      rts
L80C0:      inc L0093
            lda L0093
            lsr
            bcc L80BF
            ldx #$09
            jsr L8CE3
            bne L80BF
L80CE:      lda RANDOM
            bmi L80CE
            clc
            adc #$40
            sta L0601,Y
            php
L80DA:      lda RANDOM
            and #$07
            beq L80DA
            cmp #$06
            bcs L80DA
            clc
            adc #$13
            plp
            bmi L80EE
            clc
            adc #$06
L80EE:      jsr L8D11
            lda #$36
            sta L0602,Y
            lda #$30
            sta L0605,Y
            rts
L80FC:      lda L00AC
            and #$04
            bne L8103
L8102:      rts
L8103:      ldy #$00
L8105:      lda L0600,Y
            cmp #$06
            beq L814C
            tya
            clc
            adc #$08
            tay
            cpy #$00
            bne L8105
            ldx #$06
            jsr L8CE3
            bne L8102
            lda L00AC
            and #$02
            beq L8141
            lda RANDOM
            bmi L812C
            lda #$10
            jmp L812E
L812C:      lda #$0F
L812E:      jsr L8D11
            lda #$80
            sta L0601,Y
            lda #$90
            sta L0602,Y
            lda L00A5
            sta L0605,Y
            rts
L8141:      lda RANDOM
            and #$03
            clc
            adc #$03
            jmp L812E
L814C:      lda L0607,Y
            and #$10
            bne L8154
L8153:      rts
L8154:      lda L0092
            beq L815B
            dec L0092
            rts
L815B:      sty DOSVEC+1
            lda L00AB
            sta L0092
            lda L0603,Y
            cmp #$02
            bcc L8153
            ldx #$04
            jsr L8CE3
            bne L8153
            lda #$0C
            jsr L8D11
            ldx DOSVEC+1
            lda L0603,X
            sta L0603,Y
            tax
            lda L86A4,X
            ldx DOSVEC+1
            clc
            adc L0601,X
            sta L0601,Y
            lda L0602,X
            sta L0602,Y
            lda #$20
            sta L0605,Y
            lda #$03
            jsr L83A8
            rts
L819A:      lda L00AC
            bpl L81A4
            lda L0090
            beq L81A5
            dec L0090
L81A4:      rts
L81A5:      ldy #$10
L81A7:      lda L0600,Y
            cmp #$03
            beq L81BA
L81AE:      tya
            clc
            adc #$08
            tay
            cmp #$80
            bne L81A7
            jmp L81F4
L81BA:      lda L0601,Y
            cmp #$28
            bcc L81AE
            cmp #$D7
            bcs L81AE
            sty ABUFPT+3
            ldx #$04
            jsr L8CE3
            bne L81A4
            lda #$0C
            jsr L8D11
            ldx ABUFPT+3
            lda L0601,X
            clc
            adc #$04
            sta L0601,Y
            lda L0602,X
            sta L0602,Y
            lda L0603,X
            sta L0603,Y
            lda #$80
            sta L0605,Y
            lda #$03
            jsr L83A8
L81F4:      lda L00A9
            sta L0090
            rts
L81F9:      lda L00AC
            and #$60
            beq L8205
            lda L0091
            beq L8206
            dec L0091
L8205:      rts
L8206:      ldy #$10
L8208:      lda L0600,Y
            cmp #$01
            beq L821D
L820F:      tya
            clc
            adc #$08
            tay
            cpy #$80
            bne L8208
L8218:      lda L00AA
            sta L0091
            rts
L821D:      sty ABUFPT+3
            lda L0603,Y
            cmp #$07
            bcs L820F
            lda RANDOM
            lsr
            bcc L826E
            lda L00AC
            and #$20
            beq L820F
            lda L0607,Y
            and #$08
            bne L823E
L8239:      lda #$0E
            jmp L8240
L823E:      lda #$0D
L8240:      sta ABUFPT+2
            ldx #$08
            jsr L8CE3
            bne L8218
            lda ABUFPT+2
            jsr L8D11
            ldx ABUFPT+3
            lda L0601,X
            sta L0601,Y
            lda L0602,X
            clc
            adc #$10
            sta L0602,Y
            lda #$80
            sta L0605,Y
            lda #$04
            jsr L83A8
            ldy ABUFPT+3
            jmp L820F
L826E:      lda L00AC
            and #$40
            beq L820F
            lda L0607,Y
            and #$08
            bne L8239
            jmp L823E
L827E:      lda L00AC
            and #$10
            beq L828A
            lda L0084
            beq L828B
            dec L0084
L828A:      rts
L828B:      ldx #$03
            jsr L8CE3
            bne L828A
            lda RANDOM
            and #$01
            clc
            adc #$0A
            jsr L8D11
            lda #$08
            sta L0603,Y
            lda RANDOM
            sta L0601,Y
            lda L00A4
            sta L0605,Y
            lda L00A3
            sta L0084
            rts
L82B2:      lda L00AD
            sec
            sbc #$01
            beq L82C8
            cmp #$06
            bcc L82BF
            lda #$05
L82BF:      tax
            lda #$14
L82C2:      sta L2035,X
            dex
            bne L82C2
L82C8:      rts
L82C9:      lda L009E
            ora L009D
            ora L009C
            bne L82D2
L82D1:      rts
L82D2:      lda L0099
            eor #$FF
            clc
            adc #$01
            ldx #$14
            jsr L9420
            stx $00
            sta NGFLAG
            lda L009C
            sec
            sbc $00
            sta L009C
            lda L009D
            sbc NGFLAG
            sta L009D
            bcs L82D1
            lda L009E
            sbc #$00
            sta L009E
            bcs L8301
            lda #$00
            sta L009C
            sta L009D
            sta L009E
L8301:      lda L009E
            lsr
            lsr
            lsr
            cmp #$0D
            bcc L830C
            lda #$0C
L830C:      tax
            tay
            beq L8318
            lda #$E0
L8312:      sta L2042,X
            dex
            bne L8312
L8318:      iny
            tya
            tax
            lda L009E
            and #$07
            beq L8328
            clc
            adc #$D8
            sta L2042,X
            inx
L8328:      cpx #$0D
            bcs L8335
            lda #$D8
            sta L2042,X
            inx
            jmp L8328
L8335:      lda L009E
            cmp #$15
            bcs L8352
            lda #$06
            jsr L83A8
            lda L008F
            eor #$01
            sta L008F
            bne L834D
            lda #$0F
            jmp L835D
L834D:      lda #$34
            jmp L835D
L8352:      cmp #$30
            bcs L835B
            lda #$1F
            jmp L835D
L835B:      lda #$E6
L835D:      sta L0914
            rts
L8361:      ldx #$06
            ldy #$03
L8365:      lda L0089,Y
            beq L8395
L836A:      jsr L93E0
            lda (PALNTS,X)
            beq L838F
            cmp #$01
            beq L8384
            sta AUDF1,X
            lda L0085,Y
            clc
            adc #$01
            sta L0085,Y
            jmp L8395
L8384:      jsr L93E0
            lda (PALNTS,X)
            sta AUDC1,X
            jmp L836A
L838F:      sta L0089,Y
            sta AUDC1,X
L8395:      dex
            dex
            dey
            bpl L8365
            rts
L839B:      lda #$22
            sta AUDC1
            lda L0099
            eor #$FF
            sta AUDF1
            rts
L83A8:      pha
            ldx #$03
L83AB:      lda L0089,X
            bne L83B4
            stx $00
            jmp L83BF
L83B4:      dex
            bne L83AB
            pla
            pha
            tax
            lda L9532,X
            sta $00
L83BF:      ldx $00
            lda #$FF
            sta L0089,X
            lda #$00
            sta L0085,X
            asl $00
            ldx $00
            pla
            asl
            tay
            lda L9511,Y
            sta PALNTS,X
            lda L9512,Y
            sta LOGCOL,X
            rts
L83DB:      lda RAMTOP
            bne L8401
            lda FKDEF+1
            lsr
            lsr
            lsr
            lsr
            lsr
            lsr
            sta NGFLAG
            lda L0099
            sec
            sbc #$37
            clc
            adc FKDEF+1
            sta FKDEF+1
            ror
            lsr
            lsr
            lsr
            lsr
            lsr
            sec
            sbc NGFLAG
            ldx #$00
            jsr L93E7
L8401:      lda L090E
            sed
            sec
            sbc L008E
            cld
            cmp #$02
            bcc L8422
            inc L00AD
            bne L8413
            dec L00AD
L8413:      lda L090E
            and #$FE
            sta L008E
            lda #$0A
            jsr L83A8
            jsr L82B2
L8422:      jsr L9142
            rts
L8426:      ldy #$00
L8428:      lda L0600,Y
            cmp #$05
            beq L843C
L842F:      tya
            clc
            adc #$08
            tay
            cmp #$00
            bne L8428
            jmp L8530
            rts
L843C:      sty ABUFPT+3
            lda L0601,Y
            sta RTCLOK
            lda L0602,Y
            sec
            sbc L00B0
            sta RTCLOK+1
            ldx #$0A
            jsr L8E53
            lda DOSVEC+1
            clc
            adc L00B0
            sta POKMSK
            lda DOSINI
            sta BRKKEY
            ldy #$00
L845D:      lda L0600,Y
            cmp #$02
            beq L8482
            cmp #$03
            beq L8482
            cmp #$06
            beq L847A
L846C:      tya
            clc
            adc #$08
            tay
            cpy #$00
            bne L845D
L8475:      ldy ABUFPT+3
            jmp L842F
L847A:      jsr L86AD
            beq L846C
            jmp L8600
L8482:      jsr L86AD
            beq L846C
            ldx L0600,Y
            lda #$00
            jsr L93E7
            lda #$00
            sta L0606,Y
            lda #$07
            jsr L8D11
            ldy ABUFPT+3
            lda #$00
            sta L0606,Y
            lda #$08
            jsr L8D11
            lda L00AC
            and #$02
            beq L84BD
            dec L00A6
            lda L00A6
            bne L84C1
            lda #$02
            sta L00A6
            lda L00AC
            ora #$04
            and #$F7
            sta L00AC
L84BD:      dec L00A6
            beq L84CC
L84C1:      jsr L808C
            lda #$00
            jsr L83A8
            jmp L8475
L84CC:      inc L00AE
            lda #$00
            ldx #$07
L84D2:      sta AUDF1,X
            dex
            bne L84D2
            lda #$8C
            sta AUDC1
            lda #$8A
            sta AUDC2
            ldy #$F4
L84E4:      lda RANDOM
            sta L0911
            lda RANDOM
            sta L0912
            lda RANDOM
            sta L0913
            lda RANDOM
            sta L0914
            lda RANDOM
            sta L0915
            ldx #$20
L8504:      lda VCOUNT
            bne L8504
            sty AUDF1
            tya
            eor #$FF
            sta AUDF2
            dex
            bne L8504
            tya
            pha
            txa
            pha
L8519:      ldx RANDOM
            cpx #$05
            bcs L8519
            jsr L8DA1
            pla
            tax
            pla
            tay
            dey
            dey
            dey
            dey
            bne L84E4
            jmp L8988
L8530:      lda L009A
            sta RTCLOK
            lda L009B
            sta RTCLOK+1
            lda #$0B
            sta POKMSK
            lda #$14
            sta BRKKEY
            ldy #$00
L8542:      lda L0603,Y
            beq L8551
L8547:      tya
            clc
            adc #$08
            tay
            cpy #$00
            bne L8542
            rts
L8551:      lda L0600,Y
            beq L8547
            cmp #$05
            beq L8547
            cmp #$07
            beq L8547
            cmp #$09
            beq L8547
            jsr L86AD
            beq L8547
L8567:      jsr L8E82
            ldx #$07
            jsr L8CE3
            bne L8567
            lda L009A
            sta L0601,Y
            lda L009B
            sta L0602,Y
            lda #$09
            jsr L8D11
            lda #$00
            sta L0096
            sta L0099
            jsr L806A
            lda #$32
            sta RAMTOP
            lda #$02
            jsr L83A8
            jsr L933B
L8595:      jsr L8E82
            jsr L8361
            jsr L83DB
            ldx #$10
            ldy #$00
L85A2:      dey
            bne L85A2
            dex
            bne L85A2
            dec RAMTOP
            bne L8595
            dec L00AD
            beq L85C4
            lda L009C
            ora L009D
            ora L009E
            bne L85C1
            lda L00AE
            and #$FC
            sta L00AE
            jmp L8988
L85C1:      jmp L89D8
L85C4:      lda #$40
            sta NMIEN
            lda #$BE
            sta L0901
            lda #$88
            sta L0900
            lda #$E0
            sta L0903
            lda #$00
            sta DELTAC+1
            sta L0912
            sta L0913
            sta L0914
            sta L0915
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
L85F4:      lda DELTAC+1
            sta L0911
            cmp #$FF
            bne L85F4
            jmp L88E5
L8600:      ldx L0603,Y
            cpx #$06
            bcs L861C
            lda L86A4,X
            clc
            adc L0601,Y
            sec
            sbc RTCLOK
            bpl L8618
            eor #$FF
            clc
            adc #$01
L8618:      cmp #$04
            bcc L8643
L861C:      ldy ABUFPT+3
            lda #$00
            sta L0606,Y
            lda #$18
            sta L0605,Y
            lda RANDOM
            and #$07
            clc
            adc #$1F
            jsr L8D11
            lda L0607,Y
            ora #$10
            sta L0607,Y
            lda #$05
            jsr L83A8
            jmp L8475
L8643:      ldx #$07
            lda #$00
L8647:      sta AUDF1,X
            dex
            bne L8647
            lda #$B0
            sta L00AC
            lda #$8A
            sta AUDC1
            sta AUDC3
L8659:      ldy #$0A
L865B:      lda VCOUNT
            bne L8659
            dey
            bne L865B
            lda RANDOM
            sta L0912
            lda RANDOM
            sta L0913
            lda RANDOM
            sta L0914
            lda RANDOM
            sta L0911
            lda RANDOM
            ora #$08
            sta L0915
            lda L00AC
            sta AUDF3
            tax
            lda L95D8,X
            sta AUDF1
            dec L00AC
            bne L8659
            ldy #$14
L8695:      ldx #$10
            lda #$00
            jsr L93E7
            dey
            bne L8695
            inc L00AE
            jmp L8988
L86A4:      .byte $12,$12,$0E,$0B,$08,$07,$05,$04
            .byte $02
L86AD:      sty ABUFPT+2
            lda L0600,Y
            asl
            tax
            jsr L8E53
            ldy ABUFPT+2
            lda L0602,Y
            sec
            sbc RTCLOK+1
            bcs L86CC
            eor #$FF
            adc #$01
            cmp DOSVEC+1
            bcs L86EA
            jmp L86D0
L86CC:      cmp POKMSK
            bcs L86EA
L86D0:      lda L0601,Y
            sec
            sbc RTCLOK
            bcs L86E3
            eor #$FF
            adc #$01
            cmp DOSINI
            bcs L86EA
            jmp L86E7
L86E3:      cmp BRKKEY
            bcs L86EA
L86E7:      lda #$FF
            rts
L86EA:      lda #$00
            rts
L86ED:      lda L00AC
            and #$02
            bne L870E
            lda L0082
            bne L870F
            ldx #$01
            jsr L8CE3
            bne L870E
            sty $00
            ldx #$01
            jsr L8CE3
            beq L8714
            ldy $00
            lda #$00
            sta L0600,Y
L870E:      rts
L870F:      dec L0082
            jmp L870E
L8714:      sty NGFLAG
L8716:      lda RANDOM
            cmp #$B4
            bcs L8716
            ldy NGFLAG
            sta L0601,Y
            ldy $00
            sec
            sbc L00A8
            bcc L8716
            cmp #$28
            bcc L8716
            sta L0601,Y
            lda #$08
            sta L0607,Y
            lda #$09
            sta L0603,Y
            ldy NGFLAG
            sta L0603,Y
            lda #$20
            sta L0605,Y
            ldy $00
            sta L0605,Y
            lda #$01
            jsr L8D11
            ldy NGFLAG
            lda #$02
            jsr L8D11
            lda L00A0
            sta L0082
            rts
L875A:      lda ABUFPT+1
            sec
            sbc #$20
            tay
            ldx ABUFPT+2
            stx KEYDEF
            lda L9D76,Y
            sta ROWAC
            lda L9E76,Y
            sta SHFAMT
            tay
            lda (BUFCNT),Y
            sta DELTAR
            lda (BUFSTR+1),Y
            sta COLAC
            iny
            lda (BUFCNT),Y
            sta DELTAC
            lda (BUFSTR+1),Y
            sta COLAC+1
            ldy #$08
            lda (BUFCNT),Y
            ldx #$00
            ldx KEYDEF
            sta COUNTR+1
            clc
            bit ROWAC
            bpl L87BA
            adc ROWAC
            bcc L87B9
            beq L87B9
            sta COUNTR
            lda COUNTR+1
            sec
            sbc COUNTR
            clc
            adc DELTAR
            sta DELTAR
            bcc L87A5
            inc DELTAC
L87A5:      lda COUNTR+1
            sec
            sbc COUNTR
            clc
            adc COLAC
            sta COLAC
            bcc L87B3
            inc COLAC+1
L87B3:      lda #$00
            sta ROWAC
            beq L87C8
L87B9:      rts
L87BA:      sta COUNTR
            adc ROWAC
            cmp #$28
            bcc L87C8
            lda #$28
            sbc ROWAC
            sta COUNTR
L87C8:      iny
            lda (BUFCNT),Y
            sta ROWAC+1
            ldy #$01
            clc
            adc #$02
            adc #$00
L87D4:      cpx #$90
            bcs L87F7
            lda LA012,X
            sta ENDPT+1
            lda L9F76,X
            clc
            adc ROWAC
            sta ENDPT
            bcc L87E9
            inc ENDPT+1
L87E9:      ldy COUNTR
            dey
L87EC:      lda (ENDPT),Y
            and (COLAC),Y
            ora (DELTAR),Y
            sta (ENDPT),Y
            dey
            bpl L87EC
L87F7:      clc
            lda COUNTR+1
            adc COLAC
            sta COLAC
            bcc L8802
            inc COLAC+1
L8802:      lda COUNTR+1
            clc
            bcc L8807
L8807:      lda COUNTR+1
            clc
            adc DELTAR
            sta DELTAR
            bcc L8812
            inc DELTAC
L8812:      inx
            dec ROWAC+1
            bne L87D4
            rts
L8818:      lda ABUFPT+1
            sec
            sbc #$20
            tay
            ldx ABUFPT+2
            stx KEYDEF
            lda L9D76,Y
            sta ROWAC
            lda L9E76,Y
            sta SHFAMT
            tay
            lda (BUFCNT),Y
            sta DELTAR
            lda (BUFSTR+1),Y
            sta COLAC
            iny
            lda (BUFCNT),Y
            sta DELTAC
            lda (BUFSTR+1),Y
            sta COLAC+1
            ldy #$08
            lda (BUFCNT),Y
            ldx #$00
            ldx KEYDEF
            sta COUNTR+1
            clc
            bit ROWAC
            bpl L8878
            adc ROWAC
            bcc L8877
            beq L8877
            sta COUNTR
            lda COUNTR+1
            sec
            sbc COUNTR
            clc
            adc DELTAR
            sta DELTAR
            bcc L8863
            inc DELTAC
L8863:      lda COUNTR+1
            sec
            sbc COUNTR
            clc
            adc COLAC
            sta COLAC
            bcc L8871
            inc COLAC+1
L8871:      lda #$00
            sta ROWAC
            beq L8886
L8877:      rts
L8878:      sta COUNTR
            adc ROWAC
            cmp #$28
            bcc L8886
            lda #$28
            sbc ROWAC
            sta COUNTR
L8886:      iny
            lda (BUFCNT),Y
            sta ROWAC+1
            lda KEYDEF
            lsr
            clc
            adc #$0A
            cmp #$70
            bcc L8897
            lda #$70
L8897:      cmp VCOUNT
            bcs L8897
            ldy #$01
            clc
            adc #$02
            adc #$00
L88A3:      cpx #$90
            bcs L88C4
            lda LA012,X
            sta ENDPT+1
            lda L9F76,X
            clc
            adc ROWAC
            sta ENDPT
            bcc L88B8
            inc ENDPT+1
L88B8:      ldy COUNTR
            dey
L88BB:      lda (ENDPT),Y
            and (COLAC),Y
            sta (ENDPT),Y
            dey
            bpl L88BB
L88C4:      clc
            lda COUNTR+1
            adc COLAC
            sta COLAC
            bcc L88CF
            inc COLAC+1
L88CF:      lda COUNTR+1
            clc
            bcc L88D4
L88D4:      lda COUNTR+1
            clc
            adc DELTAR
            sta DELTAR
            bcc L88DF
            inc DELTAC
L88DF:      inx
            dec ROWAC+1
            bne L88A3
            rts
L88E5:      sei
            cld
            lda #$00
            sta NMIEN
            tax
L88ED:      sta HPOSP0,X
            sta DMACLT,X
            sta AUDF1,X
            sta L0600,X
            sta VDSLST,X
            sta $00,X
            inx
            bne L88ED
            stx PUPBT1
            lda #$40
            sta IRQEN
            lda #$00
            sta AUDCTL
            sta DMACLT
            sta GRACTL
            lda #$B1
            sta VDSLST
            lda #$00
            sta VDSLST+1
            lda #$3D
            sta VVBLKI
            lda #$94
            sta VVBLKI+1
            lda #$02
            sta L0904
            lda #$3C
            sta PACTL
            sta PBCTL
            lda #$03
            sta SKCTL
            sta SKCTL
            jsr L93C3
            jsr L9166
            lda #$BC
            sta L0903
            lda #$00
            sta NMIEN
            lda #$A2
            sta L0900
            lda #$A0
            sta L0901
            ldx #$40
L8959:      lda LA14C,X
            sta L00B1,X
            dex
            bpl L8959
            lda #$02
            sta INSDAT
            .byte $8D,$CA,$00;sta L00CA - Doesn't Assemble correctly
            lda #$05
            sta L00AF
            sta L00AD
            lda #$08
            sta L00B0
            lda #$00
            sta SWPFLG
            sta L00AC
            sta L00AE
            sta HOLDCH
            sta L090D
            sta L090E
            sta L090F
            sta L0910
L8988:      lda L00AE
            cmp #$14
            bcc L899A
            sec
            sbc #$04
            sta L00AE
            lda HOLDCH
            clc
            adc #$05
            sta HOLDCH
L899A:      jsr LBF0B
            lda L00AE
            ldx #$0E
            jsr L9420
            sta NGFLAG
            stx $00
            lda #$28
            clc
            adc $00
            sta $00
            lda #$8A
            adc NGFLAG
            sta NGFLAG
            ldy #$00
L89B7:      lda ($00),Y
            sta L009F,Y
            iny
            cpy #$0E
            bne L89B7
            lda L00A7
            clc
            adc HOLDCH
            sta L00A7
            lda L00AE
            and #$03
            bne L89D8
            lda #$60
            sta L009E
            lda #$00
            sta L009C
            sta L009D
L89D8:      lda #$2F
            sta L0097
            lda #$00
            sta L0098
            jsr L8D28
            jsr L8D9C
            lda L00AC
            and #$02
            bne L89EF
            jsr L8D85
L89EF:      lda #$60
            sta L009B
            lda #$70
            sta L009A
            jsr L82B2
            lda L00A7
            sta L0099
            jsr L806A
            lda #$00
            sta L0096
            sta AUDC1
            sta AUDC2
            sta AUDC3
            sta AUDC4
            sta L0089
            tay
L8A14:      lda #$00
            sta L0600,Y
            iny
            bne L8A14
            jsr L8301
            jsr L808C
            ldx #$FF
            txs
            jmp L802B
            .byte $04,$20,$00,$00,$00,$00,$00,$0A
            .byte $35,$25,$00,$00,$00,$00,$04,$1E
            .byte $58,$30,$00,$00,$00,$0F,$35,$25
            .byte $00,$00,$00,$08,$04,$1D,$58,$30
            .byte $40,$20,$00,$14,$35,$25,$00,$00
            .byte $00,$18,$04,$00,$20,$30,$00,$00
            .byte $60,$0A,$35,$00,$00,$00,$08,$0A
            .byte $06,$14,$00,$00,$00,$00,$00,$0F
            .byte $3C,$23,$00,$20,$00,$20,$06,$16
            .byte $50,$38,$00,$00,$00,$14,$3C,$23
            .byte $00,$28,$00,$28,$06,$16,$50,$38
            .byte $35,$30,$00,$19,$3C,$23,$38,$28
            .byte $00,$B8,$06,$00,$20,$38,$00,$00
            .byte $60,$0F,$40,$00,$00,$00,$06,$0A
            .byte $06,$10,$00,$00,$00,$00,$00,$14
            .byte $48,$20,$00,$18,$00,$20,$06,$12
            .byte $40,$3C,$20,$20,$00,$19,$48,$23
            .byte $00,$20,$00,$38,$06,$12,$40,$3C
            .byte $20,$30,$00,$1E,$48,$23,$28,$20
            .byte $00,$B8,$06,$00,$20,$3C,$00,$00
            .byte $60,$14,$50,$00,$00,$00,$04,$0A
            .byte $06,$0C,$80,$30,$00,$00,$00,$19
            .byte $50,$20,$20,$10,$00,$28,$06,$0E
            .byte $20,$30,$1A,$40,$00,$1E,$50,$20
            .byte $18,$10,$00,$B8,$06,$0E,$20,$30
            .byte $1A,$40,$00,$23,$50,$20,$10,$10
            .byte $00,$98,$06,$00,$20,$30,$00,$00
            .byte $60,$20,$58,$00,$00,$00,$04,$0A
            .byte $06,$0A,$60,$50,$00,$00,$00,$1E
            .byte $70,$14,$00,$08,$00,$28,$06,$0B
            .byte $18,$50,$18,$40,$00,$23,$60,$18
            .byte $10,$08,$00,$B8,$06,$0B,$18,$50
            .byte $10,$50,$00,$28,$60,$18,$08,$04
            .byte $00,$98,$06,$00,$18,$50,$00,$00
            .byte $70,$25,$58,$00,$00,$00,$04,$0A
L8B40:      lda L009F
            lsr
            bne L8B47
            lda #$01
L8B47:      sta $00
            lda FKDEF
            bpl L8B69
            and #$10
            beq L8B75
            lda L0096
            bpl L8B5F
            clc
            adc $00
            bmi L8B7E
            lda #$00
            jmp L8B7E
L8B5F:      sec
            sbc $00
            bpl L8B7E
            lda #$00
            jmp L8B7E
L8B69:      lda L0096
            sec
            sbc L009F
            bvc L8B7E
            lda #$80
            jmp L8B7E
L8B75:      lda L0096
            clc
            adc L009F
            bvc L8B7E
            lda #$7F
L8B7E:      sta L0096
            clc
            lda L0096
            bpl L8B8A
            eor #$FF
            adc #$01
            clc
L8B8A:      lsr
            lsr
            adc L0098
            sta L0098
            bpl L8BCF
            and #$7F
            sta L0098
            lda L0096
            bpl L8BA9
            inc L0097
            lda L0097
            cmp #$4E
            bne L8BB5
            lda #$21
            sta L0097
            jmp L8BB5
L8BA9:      dec L0097
            lda L0097
            cmp #$20
            bne L8BB5
            lda #$4D
            sta L0097
L8BB5:      lda L00AC
            and #$02
            bne L8BCF
            ldy #$00
            ldx L0097
L8BBF:      txa
            sta L20C8,Y
            inx
            cpx #$4E
            bne L8BCA
            ldx #$21
L8BCA:      iny
            cpy #$28
            bne L8BBF
L8BCF:      rts
L8BD0:      lda L00AC
            and #$08
            beq L8BDC
            lda L0083
            beq L8BDD
            dec L0083
L8BDC:      rts
L8BDD:      lda #$02
            sta ABUFPT+3
            lda RANDOM
            and #$7F
            clc
            adc #$20
            sta ABUFPT+2
            lda RANDOM
            and #$03
            clc
            adc #$03
            sta ABUFPT+1
L8BF5:      ldx #$02
            jsr L8CE3
            bne L8BDC
            lda ABUFPT+1
            jsr L8D11
            lda ABUFPT+2
            sta L0601,Y
            ldx ABUFPT+3
            lda L8C22,X
            sta L0606,Y
            clc
            adc #$90
            sta L0602,Y
            lda L00A2
            sta L0605,Y
            dec ABUFPT+3
            bpl L8BF5
            lda L00A1
            sta L0083
            rts
L8C22:      .byte $00,$25,$4A,$6F
L8C26:      jsr L933B
            lda FKDEF
            bpl L8C3D
            and #$10
            beq L8C4D
            lda #$01
            sta LOMEM
            jmp L8C5A
L8C38:      sta L009A
            jmp L8C5A
L8C3D:      lda #$02
            sta LOMEM
            lda L009A
            clc
            adc #$04
            cmp #$B1
            bcs L8C5A
            jmp L8C38
L8C4D:      lda #$00
            sta LOMEM
            lda L009A
            sec
            sbc #$04
            cmp #$30
            bcs L8C38
L8C5A:      lda FKDEF
            and #$04
            beq L8C72
            lda FKDEF
            and #$08
            bne L8C99
            lda L009B
            clc
            adc #$03
            cmp #$81
            bcs L8C8D
            jmp L8C7B
L8C72:      lda L009B
            sec
            sbc #$03
            cmp #$60
            bcc L8C80
L8C7B:      sta L009B
            jmp L8C99
L8C80:      inc L0099
            lda #$C0
            cmp L0099
            bcs L8C99
            sta L0099
            jmp L8C99
L8C8D:      dec L0099
            lda L0099
            cmp L00A7
            bcs L8C99
            lda L00A7
            sta L0099
L8C99:      jsr L806A
            jmp L9378
L8C9F:      lda FKDEF
            and #$20
            bne L8CAC
            lda LOMEM+1
            beq L8CB1
            dec LOMEM+1
            rts
L8CAC:      lda #$00
            sta LOMEM+1
            rts
L8CB1:      ldx #$05
            ldy #$00
            jsr L8CE9
            bne L8CE2
            lda L009A
            clc
            adc #$08
            sta L0601,Y
            lda L009B
            sec
            sbc #$03
            sta L0602,Y
            lda #$C0
            sta L0605,Y
            lda #$05
            sta L0603,Y
            lda #$00
            jsr L8D11
            lda L00AF
            sta LOMEM+1
            lda #$07
            jsr L83A8
L8CE2:      rts
L8CE3:      ldy #$10
L8CE5:      cpy #$00
            beq L8CF6
L8CE9:      lda L0600,Y
            beq L8CF9
            tya
            clc
            adc #$08
            tay
            jmp L8CE5
L8CF6:      lda #$FF
            rts
L8CF9:      txa
            sta L0600,Y
            ldx #$07
            lda #$00
            iny
L8D02:      sta L0600,Y
            iny
            dex
            bne L8D02
            tya
            sec
            sbc #$08
            tay
            lda #$00
            rts
L8D11:      sty DOSVEC
            pha
            tya
            lsr
            lsr
            tax
            pla
            asl
            tay
            lda L9629,Y
            sta ICHIDZ,X
            lda L962A,Y
            sta ICDNOZ,X
            ldy DOSVEC
            rts
L8D28:      lda #$26
            sta L0911
            lda #$0F
            sta L0912
            lda #$00
            sta L0913
            sta L0914
            sta L0915
            sta $00
            lda #$20
            sta NGFLAG
L8D43:      ldy #$00
            tya
L8D46:      sta ($00),Y
            dey
            bne L8D46
            inc NGFLAG
            lda NGFLAG
            cmp #$40
            bne L8D43
            ldx #$05
L8D55:      lda L8D79,X
            sta L2029,X
            dex
            bpl L8D55
            ldx #$05
L8D60:      lda L8D7F,X
            sta L203D,X
            dex
            bpl L8D60
            lda L00AC
            and #$02
            bne L8D73
            jsr L8BB5
            rts
L8D73:      lda #$40
            sta NMIEN
            rts
L8D79:      .byte $51,$4B,$4F,$50,$4C,$53
L8D7F:      cmp LCCD2
            dec PORTA
L8D85:      ldx #$C0
            lda #$00
            .byte $8D,$B6,$00;sta L00B6 - Doesn't Assemble correctly
            lda #$40
            sta NMIEN
L8D91:      lda VCOUNT
            cmp #$03
            bne L8D91
            stx NMIEN
            rts
L8D9C:      lda L00AE
            lsr
            lsr
            tax
L8DA1:      lda L8DDF,X
            sta RAMLO
            lda L8DE4,X
            sta RAMLO+1
            lda #$96
            sta $00
            lda #$9B
            sta NGFLAG
            lda #$00
            sta CASINI
            lda #$10
            sta CASINI+1
L8DBB:      ldy #$00
            lda ($00),Y
            tay
            lda (RAMLO),Y
            ldy #$00
            sta (CASINI),Y
            inc $00
            bne L8DCC
            inc NGFLAG
L8DCC:      inc CASINI
            bne L8DD2
            inc CASINI+1
L8DD2:      lda NGFLAG
            cmp #$9D
            bne L8DBB
            lda $00
            cmp #$76
            bne L8DBB
            rts
L8DDF:      .byte $E3,$E5,$E7,$E9,$EB
L8DE4:      .byte $8D,$8D,$8D,$8D,$8D,$98,$90,$1A
            .byte $74,$1D,$D4,$06,$04,$D8,$D4
L8DF3:      lda L0603,Y
            cmp #$09
            bcc L8DFD
L8DFA:      lda #$FF
            rts
L8DFD:      lda L0602,Y
            cmp #$90
            bcs L8DFA
            lda L0600,Y
            tax
            lda L9A31,X
            sta $00
            lda L9A3A,X
            sta NGFLAG
            lda L0603,Y
            tay
            lda ($00),Y
            sta BUFCNT
            tya
            clc
            adc #$0A
            tay
            lda ($00),Y
            sta BUFSTR
            ldy DOSVEC
            lda L0600,Y
            tax
            lda L9AE3,X
            sta $00
            lda L9AEC,X
            sta NGFLAG
            lda L0603,Y
            tay
            lda ($00),Y
            sta BUFSTR+1
            tya
            clc
            adc #$0A
            tay
            lda ($00),Y
            sta BITMSK
            ldy DOSVEC
            lda L0601,Y
            sta ABUFPT+1
            lda L0602,Y
            sta ABUFPT+2
            lda #$00
            rts
L8E53:      tya
            pha
            lda L0600,Y
            tax
            lda L9A31,X
            sta $00
            lda L9A3A,X
            sta NGFLAG
            lda L0603,Y
            tay
            lda ($00),Y
            sta BUFCNT
            tya
            clc
            adc #$0A
            tay
            lda ($00),Y
            sta BUFSTR
            ldy #$09
            lda (BUFCNT),Y
            sta DOSVEC+1
            iny
            lda (BUFCNT),Y
            sta DOSINI
            pla
            tay
            rts
L8E82:      ldy #$00
            ldx #$20
            lda #$FF
            sta WARMST
            lda #$00
            sta BOOT
L8E8E:      lda L0600,Y
            beq L8EAA
            lda L0607,Y
            bmi L8EAA
            lda #$FF
            sta BOOT
            lda WARMST
            cmp L0602,Y
            bcc L8EAA
            lda L0602,Y
            sta WARMST
            sty DOSVEC
L8EAA:      tya
            clc
            adc #$08
            tay
            dex
            bne L8E8E
            lda BOOT
            bne L8ED6
            ldy #$00
            ldx #$20
L8EBA:      lda #$7F
            and L0607,Y
            sta L0607,Y
            tya
            clc
            adc #$08
            tay
            dex
            bne L8EBA
            lda SWPFLG
            beq L8ED5
            lda #$00
            sta SWPFLG
            jmp L84CC
L8ED5:      rts
L8ED6:      ldy DOSVEC
            lda L0607,Y
            ora #$80
            sta L0607,Y
            jsr L8DF3
            bne L8EE8
            jsr L8818
L8EE8:      ldy DOSVEC
            jsr L8F06
            bne L8EFC
            ldy DOSVEC
            jsr L8DF3
            bne L8EF9
            jsr L875A
L8EF9:      jmp L8E82
L8EFC:      ldy DOSVEC
            lda #$00
            sta L0600,Y
            jmp L8E82
L8F06:      tya
            lsr
            lsr
            tax
            stx RAMLO
L8F0C:      lda L0606,Y
            bne L8F17
            jsr L900B
            beq L8F0C
            rts
L8F17:      lda L0600,Y
            cmp #$05
            bne L8F25
            lda #$00
            sta CASINI
            jmp L8F34
L8F25:      lda #$09
            sec
            sbc L0603,Y
            ldx L0099
            jsr L9420
            sta CASINI
            asl CASINI
L8F34:      ldx RAMLO
            lda L0604,Y
            sta NGFLAG
            lsr
            lsr
            lsr
            lsr
            sta $00
            lda NGFLAG
            clc
            adc L0605,Y
            sta L0604,Y
            ror
            lsr
            lsr
            lsr
            clc
            adc CASINI
            sec
            sbc $00
L8F54:      sta $00
            ldx RAMLO
            lda (ICHIDZ,X)
            sta CASINI+1
            lda $00
            beq L8F8B
            sec
            sbc L0606,Y
            bcs L8F75
            eor #$FF
            adc #$01
            sta L0606,Y
            jsr L8FD7
            bne L8FCB
            jmp L8F8B
L8F75:      sta CASINI
            lda L0606,Y
            sta $00
            jsr L8FD7
            bne L8FCB
            jsr L900B
            bne L8FCB
            lda CASINI
            jmp L8F54
L8F8B:      lda L0600,Y
            cmp #$04
            bcs L8FC8
            ldx L0603,Y
            cpx #$09
            beq L8FC8
            lda L8FCE,X
            sta $00
            lda L0096
            php
            bpl L8FA8
            eor #$FF
            clc
            adc #$01
L8FA8:      lsr
            dec $00
            bne L8FA8
            plp
            bpl L8FB5
            eor #$FF
            clc
            adc #$01
L8FB5:      php
            clc
            adc L0601,Y
            sta L0601,Y
            bcs L8FC5
            plp
            bmi L8FCB
            jmp L8FC8
L8FC5:      plp
            bpl L8FCB
L8FC8:      lda #$00
            rts
L8FCB:      lda #$FF
            rts
L8FCE:      .byte $02,$03,$03,$04,$04,$04,$05,$05
            .byte $05
L8FD7:      .byte $20,$E6,$8F,$D0,$09,$C8,$20,$E6
            .byte $8F,$D0,$19,$88
L8FE3:      lda #$00
            rts
            rol CASINI+1
            bcc L8FE3
            lda #$10
            and CASINI+1
            beq L8FFE
            lda L0601,Y
            clc
            adc $00
            sta L0601,Y
            bcc L8FE3
L8FFB:      lda #$FF
            rts
L8FFE:      lda L0601,Y
            sbc $00
            sta L0601,Y
            bcs L8FE3
            jmp L8FFB
L900B:      jsr L9419
L900E:      lda (ICHIDZ,X)
            bmi L9015
            jmp L9081
L9015:      and #$7F
            cmp #$08
            bcs L9015
            asl
            tay
            lda L902C,Y
            sta $00
            lda L902D,Y
            sta NGFLAG
            ldy DOSVEC
            jmp ($0000)
L902C:      .byte $51
L902D:      .byte $90,$48,$90,$3C,$90,$61,$90,$6E
            .byte $90,$3F,$90,$DB,$90,$28,$91,$A9
            .byte $FF,$60,$20,$14,$94,$99,$05,$06
            .byte $4C,$0E,$90,$20,$14,$94,$99,$00
            .byte $06,$4C,$0E,$90
L9051:      jsr L9414
            sta $00
            lda (ICHIDZ,X)
            sta ICDNOZ,X
            lda $00
            sta ICHIDZ,X
            jmp L900E
            lda ICHIDZ,X
            sta L0800,X
            lda ICDNOZ,X
            sta L0801,X
            jmp L9051
            lda L0800,X
            sta ICHIDZ,X
            lda L0801,X
            sta ICDNOZ,X
            jsr L9419
            jsr L9419
            jmp L900B
L9081:      sta L0606,Y
            jsr L9419
            lda (ICHIDZ,X)
            sta NGFLAG
            and #$20
            beq L90B0
            lda #$02
            and NGFLAG
            beq L90A5
            lda L0603,Y
            clc
            adc #$01
            cmp #$0A
            bcs L90B0
            sta L0603,Y
            jmp L90B0
L90A5:      lda L0603,Y
            sec
            sbc #$01
            bmi L90B0
            sta L0603,Y
L90B0:      lda #$10
            and NGFLAG
            beq L90C9
            lda #$01
            and NGFLAG
            beq L90CC
            lda L0605,Y
            clc
            adc #$08
            bcc L90C6
            lda #$FF
L90C6:      sta L0605,Y
L90C9:      lda #$00
            rts
L90CC:      lda L0605,Y
            sec
            sbc #$08
            beq L90D6
            bcs L90C6
L90D6:      lda #$01
            jmp L90C6
            lda L008D
            bne L90E9
            lda L0601,Y
            ora #$01
            sta L008D
            jmp L900B
L90E9:      lda L009A
            clc
            adc #$08
            cmp L0601,Y
            bcc L90FA
            cmp L008D
            bcc L90FE
            jmp L9121
L90FA:      cmp L008D
            bcc L9121
L90FE:      lda #$00
            stx $00
            ldx #$05
            jsr L93E7
            ldx $00
            dec L00A6
            bne L9111
            lda #$FF
            sta SWPFLG
L9111:      tya
            pha
            txa
            pha
            jsr L808C
            lda #$09
            jsr L83A8
            pla
            tax
            pla
            tay
L9121:      lda #$00
            sta L008D
            jmp L900B
            lda RANDOM
            bmi L9132
            lda #$12
            jmp L9134
L9132:      lda #$11
L9134:      jsr L8D11
            lda L0607,Y
            ora #$10
            sta L0607,Y
            jmp L900B
L9142:      ldx #$00
            ldy #$00
L9146:      lda L090E,X
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$41
            sta L202F,Y
            iny
            lda L090E,X
            and #$0F
            clc
            adc #$41
            sta L202F,Y
            iny
            inx
            cpx #$03
            bne L9146
            rts
L9166:      lda #$1C
            sta L0900
            lda #$93
            sta L0901
            lda #$E0
            sta L0903
            lda #$40
            sta NMIEN
            lda #$22
            sta L0902
            lda #$20
            sta NGFLAG
L9183:      lda #$00
            sta $00
            sta KEYDEF+1
            tay
L918A:      sta ($00),Y
            dey
            bne L918A
            inc NGFLAG
            lda NGFLAG
            cmp #$40
            bne L9183
            ldx #$00
L9199:      lda L9268,X
            sec
            sbc #$20
            sta L2000,X
            inx
            cpx #$C8
            bne L9199
            ldx #$00
            stx L0915
            ldy #$00
L91AE:      lda L090A,X
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$90
            sta L200E,Y
            iny
            lda L090A,X
            and #$0F
            clc
            adc #$90
            sta L200E,Y
            iny
            inx
            cpx #$03
            bne L91AE
            ldx #$00
            ldy #$00
L91D1:      lda L090E,X
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$90
            sta L2003,Y
            iny
            lda L090E,X
            and #$0F
            clc
            adc #$90
            sta L2003,Y
            iny
            inx
            cpx #$03
            bne L91D1
            lda #$68
            sta L0911
            lda #$90
            sta L0912
            lda #$A8
            sta L0914
            lda #$68
            sta L0913
L9204:      lda VCOUNT
            clc
            adc DELTAC+1
            and #$F0
            ora #$08
            sta WSYNC
            sta COLPF2
            lda DELTAC+1
            sta L0914
            lda CONSOL
            and #$01
            beq L925F
            lda TRIG0
            beq L925F
            lda CONSOL
            and #$02
            tax
L922B:      lda CONSOL
            cmp #$07
            bne L922B
            txa
            bne L9204
            lda KEYDEF+1
            eor #$01
            sta KEYDEF+1
            beq L924E
            ldx #$07
L923F:      lda L9260,X
            sec
            sbc #$20
            sta L2090,X
            dex
            bpl L923F
            jmp L9204
L924E:      ldx #$07
L9250:      lda L92F8,X
            sec
            sbc #$20
            sta L2090,X
            dex
            bpl L9250
            jmp L9204
L925F:      rts
L9260:      .byte $4B,$45,$59,$42,$4F,$41,$52,$44
L9268:      .byte $53,$43,$3A,$B0,$B0,$B0,$B0,$B0
            .byte $B0,$20,$20,$48,$49,$3A,$B0,$B0
            .byte $B0,$B0,$B0,$B0,$20,$20,$20,$20
            .byte $20,$20,$20,$20,$C2,$D5,$C3,$CB
            .byte $20,$20,$20,$20,$20,$20,$20,$20
            .byte $20,$20,$20,$20,$20,$20,$20,$D2
            .byte $CF,$C7,$C5,$D2,$D3,$20,$20,$20
            .byte $20,$20,$20,$20,$20,$20,$20,$43
            .byte $4F,$50,$59,$52,$49,$47,$48,$54
            .byte $20,$31,$39,$38,$33,$20,$20,$20
            .byte $20,$20,$D3,$C5,$C7,$C1,$20,$45
            .byte $4E,$54,$45,$52,$50,$52,$49,$53
            .byte $45,$53,$20,$20,$20,$20,$20,$20
            .byte $20,$20,$20,$20,$49,$4E,$43,$2E
            .byte $20,$20,$20,$20,$20,$20,$20,$20
            .byte $20,$20,$20,$20,$20,$20,$20,$53
            .byte $45,$4C,$45,$43,$54,$20,$43,$4F
            .byte $4E,$54,$52,$4F,$4C,$53,$20,$3A
L92F8:      .byte $4A,$4F,$59,$53,$54,$49,$43,$4B
            .byte $20,$20,$20,$20,$20,$20,$20,$20
            .byte $50,$52,$45,$53,$53,$20,$13,$14
            .byte $01,$12,$14,$20,$54,$4F,$20,$42
            .byte $45,$47,$49,$4E
L931C:      .byte AEMPTY8
            .byte AEMPTY8
            .byte AEMPTY8
            .byte ALMS+$06
            .word L2000
            .byte AEMPTY8
            .byte AEMPTY8
            .byte AEMPTY8
            .byte AEMPTY8
            .byte $07,$07
            .byte AEMPTY8
            .byte AEMPTY8
            .byte AEMPTY6
            .byte $06
            .byte AEMPTY3
            .byte $06
            .byte AEMPTY3
            .byte $06
            .byte AEMPTY8
            .byte AEMPTY8
            .byte AEMPTY8
            .byte AEMPTY8
            .byte $02
            .byte AEMPTY8
            .byte AEMPTY8
            .byte $06
            .byte AVB+AJMP
            .word L931C
L933B:      lda #$F3
            sta BUFCNT
            lda #$B8
            sta BUFSTR
            lda #$5B
            sta BUFSTR+1
            lda #$BA
            sta BITMSK
            lda L009A
            sta ABUFPT+1
            lda #$83
            sta ABUFPT+2
            jsr L8818
            ldx LOMEM
            lda L93B7,X
            sta BUFCNT
            lda L93BA,X
            sta BUFSTR
            lda L93BD,X
            sta BUFSTR+1
            lda L93C0,X
            sta BITMSK
            lda L009A
            sta ABUFPT+1
            lda L009B
            sta ABUFPT+2
            jsr L8818
            rts
L9378:      lda #$F3
            sta BUFCNT
            lda #$B8
            sta BUFSTR
            lda #$5B
            sta BUFSTR+1
            lda #$BA
            sta BITMSK
            lda L009A
            sta ABUFPT+1
            lda #$83
            sta ABUFPT+2
            jsr L875A
            ldx LOMEM
            lda L93B7,X
            sta BUFCNT
            lda L93BA,X
            sta BUFSTR
            lda L93BD,X
            sta BUFSTR+1
            lda L93C0,X
            sta BITMSK
            lda L009A
            sta ABUFPT+1
            lda L009B
            sta ABUFPT+2
            jsr L875A
            jmp L8C9F
L93B7:      .byte $DD,$D2,$E8
L93BA:      .byte $B8,$B8,$B8
L93BD:      .byte $47,$3D,$51
L93C0:      .byte $BA,$BA,$BA
L93C3:      ldx #$00
L93C5:      lda L090D,X
            cmp L0909,X
            bcc L93DF
            bne L93D4
            inx
            cpx #$04
            bne L93C5
L93D4:      ldx #$03
L93D6:      lda L090D,X
            sta L0909,X
            dex
            bpl L93D6
L93DF:      rts
L93E0:      inc PALNTS,X
            bne L93E6
            inc LOGCOL,X
L93E6:      rts
L93E7:      clc
            sed
            adc L0910
            sta L0910
            txa
            adc L090F
            sta L090F
            lda #$00
            adc L090E
            sta L090E
            lda #$00
            adc L090D
            sta L090D
            cld
            rts
            lda RAMLO+1
            clc
            adc #$10
            sta RAMLO+1
            bcc L9413
            inc TRAMSZ
L9413:      rts
L9414:      jsr L9419
            lda (ICHIDZ,X)
L9419:      inc ICHIDZ,X
            bne L941F
            inc ICDNOZ,X
L941F:      rts
L9420:      cpx #$00
            beq L943B
            dex
            stx $00
            lsr
            sta NGFLAG
            lda #$00
            ldx #$08
L942E:      bcc L9432
            adc $00
L9432:      ror
            ror NGFLAG
            dex
            bne L942E
            ldx NGFLAG
            rts
L943B:      txa
            rts
            lda L0911
            sta COLPF0
            lda L0912
            sta COLPF1
            lda L0913
            sta COLPF2
            lda L0914
            sta COLPF3
            lda L0915
            sta COLBK
            lda #$08
            sta CONSOL
            lda L0900
            sta DLISTL
            lda L0901
            sta DLISTH
            lda L0902
            sta DMACLT
            lda L0904
            sta CHACTL
            lda L0903
            sta CHBASE
            inc DELTAC+1
            jmp XITVBV
L9483:      lda L009C
            ora L009D
            ora L009E
            bne L948E
            jmp L94A5
L948E:      lda KEYDEF+1
            bne L94D3
            lda PORTA
            and #$0F
            tax
            lda L94B3,X
            ldx TRIG0
            bne L94A2
            and #$DF
L94A2:      sta FKDEF
            rts
L94A5:      lda #$F7
            sta FKDEF
            lda L009B
            cmp #$78
            bcs L94B0
            rts
L94B0:      jmp L8567
L94B3:      .byte $FF,$FF,$FF,$FF,$FF,$77,$7B,$7F
            .byte $FF,$E7,$EB,$EF,$FF,$F7,$FB,$FF
L94C3:      .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$3A
            .byte $FF,$FF,$FF,$3F,$FF,$3E,$2E,$FF
L94D3:      lda SKSTAT
            and #$04
            bne L94F4
            lda KBCODE
            and #$3F
            ldx #$0F
L94E1:      cmp L94C3,X
            beq L94F9
            dex
            bne L94E1
            cmp #$21
            bne L94F4
            lda FKDEF
            and #$DF
            sta FKDEF
            rts
L94F4:      lda #$FF
            sta FKDEF
            rts
L94F9:      lda L94B3,X
            sta FKDEF
            rts
            inc $00
            bne L9505
            inc NGFLAG
L9505:      lda NGFLAG
            rts
            inc CASINI
            bne L950E
            inc CASINI+1
L950E:      lda CASINI+1
            rts
L9511:      jmp (L9695)
            .byte $95,$3D,$95,$B2,$95,$BF,$95,$88
            .byte $95,$CC,$95,$A4,$95,$D7,$95,$14
            .byte $96,$26,$95,$01,$AF,$30,$30,$00
            .byte $30,$30,$00,$30,$30,$00
L9532:      .byte $02,$03,$03,$01,$01,$01,$02,$03
            .byte $02,$02,$02,$02,$01,$8F,$80,$FF
            .byte $10,$18,$20,$28,$30,$38,$40,$48
            .byte $50,$58,$60,$68,$70,$78,$80,$88
            .byte $90,$98,$A0,$01,$8D,$A8,$B0,$B8
            .byte $01,$8B,$C0,$C8,$D0,$01,$89,$D8
            .byte $01,$87,$E0,$01,$85,$E8,$01,$83
            .byte $F0,$FF,$00,$01,$8F,$F0,$E0,$40
            .byte $50,$60,$40,$70,$80,$90,$A0,$B0
            .byte $C0,$95,$01,$8A,$80,$60,$55,$40
            .byte $45,$30,$35,$25,$20,$15,$00,$01
            .byte $AA,$40,$10,$04,$20,$28,$30,$38
            .byte $40,$48,$58,$70,$00,$01,$AA,$80
            .byte $88,$90,$98,$A0,$A8,$B0,$B8,$C0
            .byte $C8,$D0,$00,$01,$84,$08,$10,$18
            .byte $20,$28,$30,$38,$40,$48,$50,$58
            .byte $00,$01,$AA,$10,$18,$10,$18,$10
            .byte $18,$10,$18,$10,$18,$00,$01,$AA
            .byte $40,$52,$40,$52,$40,$52,$40,$52
            .byte $40,$52,$00,$01,$AA,$80,$78,$70
            .byte $68,$60,$58,$50,$48,$00
L95D8:      .byte $01,$8F,$80,$FF,$10,$18,$20,$28
            .byte $30,$38,$40,$48,$50,$58,$01,$8F
            .byte $80,$FF,$10,$18,$20,$28,$30,$38
            .byte $40,$48,$50,$58,$60,$68,$70,$78
            .byte $80,$88,$90,$98,$A0,$01,$8D,$A8
            .byte $B0,$B8,$01,$8B,$C0,$C8,$D0,$01
            .byte $89,$D8,$01,$87,$E0,$01,$85,$E8
            .byte $01,$83,$F0,$FF,$00,$01,$84,$1E
            .byte $1D,$1C,$1B,$1A,$10,$0F,$0E,$0D
            .byte $0C,$0B,$0A,$09,$08,$07,$06,$05
            .byte $00
L9629:      .byte $76
L962A:      .byte $96,$89,$96,$C1,$96,$FB,$96,$03
            .byte $97,$0B,$97,$13,$97,$19,$97,$33
            .byte $97,$21,$97,$34,$97,$56,$97,$78
            .byte $97,$85,$97,$8A,$97,$8F,$97,$C8
            .byte $97,$01,$98,$18,$98,$2F,$98,$34
            .byte $98,$3B,$98,$42,$98,$47,$98,$4E
            .byte $98,$55,$98,$5A,$98,$61,$98,$68
            .byte $98,$6D,$98,$74,$98,$7B,$98,$8A
            .byte $98,$99,$98,$A8,$98,$B7,$98,$BC
            .byte $98,$CB,$98,$DA,$98,$18,$40,$83
            .byte $83,$96,$83,$83,$96,$83,$83,$96
            .byte $82,$10,$72,$04,$40,$04,$C8,$84
            .byte $02,$64,$01,$64,$01,$C4,$03,$44
            .byte $01,$C4,$83
L9695:      .byte $12,$9A,$83,$12,$9A,$83,$12,$9A
            .byte $02,$44,$01,$64,$01,$C4,$83,$19
            .byte $9A,$02,$44,$01,$44,$01,$C4,$83
            .byte $12,$9A,$83,$1D,$9A,$83,$12,$9A
            .byte $83,$19,$9A,$86,$83,$12,$9A,$83
            .byte $19,$9A,$28,$C4,$82,$02,$64,$01
            .byte $64,$01,$CC,$03,$44,$01,$CC,$83
            .byte $22,$9A,$83,$22,$9A,$83,$22,$9A
            .byte $02,$44,$01,$64,$01,$CC,$83,$29
            .byte $9A,$02,$44,$01,$44,$01,$CC,$83
            .byte $22,$9A,$83,$2D,$9A,$83,$22,$9A
            .byte $83,$29,$9A,$86,$83,$22,$9A,$83
            .byte $29,$9A,$28,$CC,$82,$70,$40,$83
            .byte $C2,$99,$83,$D9,$99,$70,$40,$83
            .byte $C2,$99,$83,$01,$9A,$70,$40,$83
            .byte $EA,$99,$83,$01,$9A,$70,$40,$83
            .byte $EA,$99,$83,$D9,$99,$81,$07,$85
            .byte $10,$05,$00,$05,$20,$85,$10,$05
            .byte $A8,$05,$22,$05,$22,$05,$AA,$05
            .byte $22,$05,$22,$05,$22,$05,$22,$82
            .byte $04,$C4,$04,$E4,$01,$20,$83,$B3
            .byte $99,$10,$C4,$01,$20,$83,$28,$99
            .byte $10,$CC,$08,$EC,$01,$20,$83,$75
            .byte $99,$20,$C4,$01,$20,$83,$EA,$98
            .byte $7F,$CC,$04,$CC,$04,$EC,$01,$20
            .byte $83,$47,$99,$10,$CC,$01,$20,$83
            .byte $94,$99,$10,$C4,$08,$E4,$01,$20
            .byte $83,$09,$99,$20,$CC,$01,$20,$83
            .byte $56,$99,$7F,$C4,$83,$7F,$97,$80
            .byte $79,$97,$04,$C4,$04,$64,$08,$64
            .byte $84,$7F,$80,$80,$86,$97,$7F,$88
            .byte $80,$8B,$97,$08,$40,$10,$C8,$10
            .byte $BA,$08,$40,$08,$C0,$48,$80,$08
            .byte $40,$10,$B2,$08,$40,$08,$C8,$48
            .byte $BA,$08,$C8,$04,$50,$04,$C0,$10
            .byte $A2,$02,$C0,$02,$FA,$08,$80,$02
            .byte $C8,$02,$72,$02,$80,$02,$C0,$02
            .byte $EA,$02,$80,$02,$E2,$08,$88,$08
            .byte $80,$08,$88,$87,$08,$40,$10,$C0
            .byte $10,$B2,$08,$40,$08,$C8,$48,$88
            .byte $08,$40,$10,$BA,$08,$40,$08,$C0
            .byte $48,$B2,$08,$C0,$04,$50,$04,$C8
            .byte $10,$AA,$02,$C8,$02,$F2,$08,$88
            .byte $02,$C0,$02,$72,$02,$88,$02,$C8
            .byte $02,$E2,$02,$88,$02,$EA,$08,$80
            .byte $08,$88,$08,$80,$87,$02,$EC,$10
            .byte $A0,$04,$FD,$10,$88,$04,$E4,$20
            .byte $80,$08,$FD,$20,$A8,$08,$E4,$40
            .byte $A0,$7F,$DD,$82,$02,$E4,$10,$A8
            .byte $04,$F5,$10,$80,$04,$EC,$20,$88
            .byte $08,$F5,$20,$A0,$08,$EC,$40,$A8
            .byte $7F,$D5,$82,$7F,$40,$80,$30,$98
            .byte $01,$40,$01,$C8,$80,$35,$98,$01
            .byte $88,$01,$C8,$80,$3C,$98,$7F,$88
            .byte $80,$43,$98,$01,$88,$01,$CC,$80
            .byte $48,$98,$01,$44,$01,$CC,$80,$4F
            .byte $98,$7F,$44,$80,$56,$98,$01,$44
            .byte $01,$C4,$80,$5B,$98,$01,$80,$01
            .byte $C4,$80,$62,$98,$7F,$80,$80,$69
            .byte $98,$01,$80,$01,$C0,$80,$6E,$98
            .byte $01,$40,$01,$C0,$80,$75,$98,$81
            .byte $04,$83,$84,$98,$80,$7C,$98,$04
            .byte $C0,$04,$60,$08,$60,$84,$81,$04
            .byte $83,$93,$98,$80,$8B,$98,$04,$C0
            .byte $04,$E8,$08,$E8,$84,$81,$04,$83
            .byte $A2,$98,$80,$9A,$98,$04,$88,$04
            .byte $A8,$08,$A8,$84,$81,$04,$83,$B1
            .byte $98,$80,$A9,$98,$04,$CC,$04,$EC
            .byte $08,$EC,$84,$81,$04,$80,$79,$97
            .byte $81,$04,$83,$C5,$98,$80,$BD,$98
            .byte $04,$C4,$04,$E4,$08,$E4,$84,$81
            .byte $04,$83,$D4,$98,$80,$CC,$98,$04
            .byte $80,$04,$A0,$08,$A0,$84,$81,$04
            .byte $83,$E3,$98,$80,$DB,$98,$04,$C0
            .byte $04,$E4,$08,$E4,$84,$04,$C8,$0A
            .byte $40,$09,$C8,$04,$40,$0B,$C8,$03
            .byte $88,$02,$C8,$07,$A8,$02,$CC,$03
            .byte $88,$0B,$CC,$04,$44,$09,$CC,$0A
            .byte $44,$04,$CC,$84,$03,$C8,$04,$40
            .byte $05,$C8,$04,$40,$02,$C8,$02,$40
            .byte $09,$C8,$09,$A8,$09,$CC,$02,$44
            .byte $02,$CC,$04,$44,$05,$CC,$04,$44
            .byte $03,$CC,$84,$02,$C8,$03,$40,$02
            .byte $C8,$02,$40,$03,$C8,$02,$40,$05
            .byte $C8,$06,$A8,$05,$CC,$02,$44,$03
            .byte $CC,$02,$44,$02,$CC,$03,$44,$02
            .byte $CC,$84,$02,$C8,$02,$40,$04,$C8
            .byte $04,$88,$04,$CC,$02,$44,$02,$CC
            .byte $84,$04,$C0,$0A,$40,$09,$C0,$04
            .byte $40,$0B,$C0,$03,$80,$02,$C0,$07
            .byte $A0,$02,$C4,$03,$80,$0B,$C4,$04
            .byte $44,$09,$C4,$0A,$44,$04,$C4,$84
            .byte $03,$C0,$04,$40,$05,$C0,$04,$40
            .byte $02,$C0,$02,$40,$09,$C0,$09,$A0
            .byte $09,$C4,$02,$44,$02,$C4,$04,$44
            .byte $05,$C4,$04,$44,$03,$C4,$84,$02
            .byte $C4,$03,$40,$02,$C0,$02,$40,$03
            .byte $C0,$02,$40,$05,$C0,$06,$A0,$05
            .byte $C4,$02,$44,$03,$C4,$02,$44,$02
            .byte $C4,$03,$44,$02,$C4,$84,$02,$C0
            .byte $02,$40,$04,$C0,$04,$80,$04,$C4
            .byte $02,$44,$02,$C4,$84,$10,$C8,$10
            .byte $C8,$10,$EA,$10,$62,$10,$62,$10
            .byte $72,$10,$72,$10,$72,$08,$72,$08
            .byte $62,$10,$80,$84,$08,$64,$08,$75
            .byte $10,$75,$10,$FD,$10,$FD,$10,$EC
            .byte $10,$64,$30,$E4,$82,$10,$C0,$10
            .byte $C0,$10,$E2,$10,$62,$10,$62,$10
            .byte $72,$10,$72,$10,$72,$08,$72,$08
            .byte $62,$10,$88,$84,$08,$64,$08,$75
            .byte $10,$75,$10,$F5,$10,$F5,$10,$E4
            .byte $10,$64,$30,$EC,$82,$03,$64,$01
            .byte $C4,$80,$1D,$9A,$03,$44,$01,$C4
            .byte $03,$44,$01,$C4,$84,$03,$64,$01
            .byte $CC,$80,$2D,$9A,$03,$44,$01,$CC
            .byte $03,$44,$01,$CC
L9A31:      .byte $84,$44,$58,$6C,$80,$94,$A8,$94
            .byte $BC
L9A3A:      .byte $D0,$9A,$9A,$9A,$9A,$9A,$9A,$9A
            .byte $9A,$9A,$F0,$F0,$E5,$E5,$DA,$CF
            .byte $C4,$B9,$AE,$AE,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$98,$98
            .byte $8D,$8D,$82,$82,$77,$77,$AE,$AE
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$2A,$1F,$14,$14,$09,$09
            .byte $FE,$FE,$AE,$AE,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B8,$B8,$B9,$B9,$4B,$40
            .byte $35,$35,$35,$35,$35,$35,$35,$AE
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$6C,$6C,$6C,$6C,$61,$56
            .byte $4B,$40,$35,$AE,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$27,$27
            .byte $1C,$1C,$11,$11,$06,$06,$FB,$AE
            .byte $BA,$BA,$BA,$BA,$BA,$BA,$BA,$BA
            .byte $B9,$B9,$4B,$4B,$4B,$4B,$4B,$4B
            .byte $4B,$4B,$4B,$4B,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$32,$32
            .byte $32,$32,$32,$32,$32,$32,$32,$32
            .byte $BA,$BA,$BA,$BA,$BA,$BA,$BA,$BA
            .byte $BA
L9AE3:      .byte $BA,$F6,$0A,$1E,$32,$46,$5A,$46
            .byte $6E
L9AEC:      .byte $82,$9A,$9B,$9B,$9B,$9B,$9B,$9B
            .byte $9B,$9B,$41,$41,$37,$37,$2D,$23
            .byte $19,$0F,$05,$05,$BB,$BB,$BB,$BB
            .byte $BB,$BB,$BB,$BB,$BB,$BB,$F1,$F1
            .byte $E7,$E7,$DD,$DD,$D3,$D3,$05,$05
            .byte $BA,$BA,$BA,$BA,$BA,$BA,$BA,$BA
            .byte $BB,$BB,$8D,$83,$79,$79,$6F,$6F
            .byte $65,$65,$05,$05,$BA,$BA,$BA,$BA
            .byte $BA,$BA,$BA,$BA,$BB,$BB,$AB,$A1
            .byte $05,$05,$05,$05,$05,$05,$05,$05
            .byte $BA,$BA,$BB,$BB,$BB,$BB,$BB,$BB
            .byte $BB,$BB,$C9,$C9,$C9,$C9,$BF,$B5
            .byte $AB,$A1,$97,$05,$BA,$BA,$BA,$BA
            .byte $BA,$BA,$BA,$BA,$BA,$BB,$73,$73
            .byte $69,$69,$5F,$5F,$55,$55,$4B,$05
            .byte $BB,$BB,$BB,$BB,$BB,$BB,$BB,$BB
            .byte $BB,$BB,$AB,$AB,$AB,$AB,$AB,$AB
            .byte $AB,$AB,$AB,$AB,$BA,$BA,$BA,$BA
            .byte $BA,$BA,$BA,$BA,$BA,$BA,$7D,$7D
            .byte $7D,$7D,$7D,$7D,$7D,$7D,$7D,$7D
            .byte $BB,$BB,$BB,$BB,$BB,$BB,$BB,$BB
            .byte $BB,$BB,$06,$06,$07,$07,$07,$06
            .byte $07,$07,$07,$07,$07,$06,$07,$07
            .byte $07,$07,$07,$07,$07,$06,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$06
            .byte $06,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$06,$06
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$06,$06,$06,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$06,$06,$07,$07,$07,$07
            .byte $06,$07,$07,$07,$07,$07,$06,$07
            .byte $07,$07,$07,$07,$07,$07,$06,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$06,$06,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$06,$06,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$06,$06
            .byte $06,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$06,$07,$06,$07,$07,$07
            .byte $07,$06,$07,$07,$07,$07,$07,$06
            .byte $07,$07,$07,$07,$07,$07,$07,$06
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$06,$06,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$06,$06,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$06,$06,$06,$06,$07,$07
            .byte $07,$07,$06,$07,$06,$07,$07,$07
            .byte $07,$07,$06,$07,$07,$07,$07,$07
            .byte $06,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$06,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$06,$06,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$06
            .byte $06,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$06,$06
            .byte $06,$06,$06,$07,$07,$06,$07,$07
            .byte $07,$07,$07,$06,$07,$07,$07,$07
            .byte $07,$07,$06,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$06,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $06,$06,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$06,$06,$06,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$06,$07,$07,$07,$06,$07
            .byte $07,$07,$07,$07,$06,$07,$07,$07
            .byte $07,$07,$07,$07,$06,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$06,$06,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$06,$06,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$06,$06
            .byte $06,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07
L9D76:      .byte $00,$00,$00,$00,$01,$01,$01,$01
            .byte $02,$02,$02,$02,$03,$03,$03,$03
            .byte $04,$04,$04,$04,$05,$05,$05,$05
            .byte $06,$06,$06,$06,$07,$07,$07,$07
            .byte $08,$08,$08,$08,$09,$09,$09,$09
            .byte $0A,$0A,$0A,$0A,$0B,$0B,$0B,$0B
            .byte $0C,$0C,$0C,$0C,$0D,$0D,$0D,$0D
            .byte $0E,$0E,$0E,$0E,$0F,$0F,$0F,$0F
            .byte $10,$10,$10,$10,$11,$11,$11,$11
            .byte $12,$12,$12,$12,$13,$13,$13,$13
            .byte $14,$14,$14,$14,$15,$15,$15,$15
            .byte $16,$16,$16,$16,$17,$17,$17,$17
            .byte $18,$18,$18,$18,$19,$19,$19,$19
            .byte $1A,$1A,$1A,$1A,$1B,$1B,$1B,$1B
            .byte $1C,$1C,$1C,$1C,$1D,$1D,$1D,$1D
            .byte $1E,$1E,$1E,$1E,$1F,$1F,$1F,$1F
            .byte $20,$20,$20,$20,$21,$21,$21,$21
            .byte $22,$22,$22,$22,$23,$23,$23,$23
            .byte $24,$24,$24,$24,$25,$25,$25,$25
            .byte $26,$26,$26,$26,$27,$27,$27,$27
            .byte $E8,$E8,$E8,$E8,$E9,$E9,$E9,$E9
            .byte $EA,$EA,$EA,$EA,$EB,$EB,$EB,$EB
            .byte $EC,$EC,$EC,$EC,$ED,$ED,$ED,$ED
            .byte $EE,$EE,$EE,$EE,$EF,$EF,$EF,$EF
            .byte $F0,$F0,$F0,$F0,$F1,$F1,$F1,$F1
            .byte $F2,$F2,$F2,$F2,$F3,$F3,$F3,$F3
            .byte $F4,$F4,$F4,$F4,$F5,$F5,$F5,$F5
            .byte $F6,$F6,$F6,$F6,$F7,$F7,$F7,$F7
            .byte $F8,$F8,$F8,$F8,$F9,$F9,$F9,$F9
            .byte $FA,$FA,$FA,$FA,$FB,$FB,$FB,$FB
            .byte $FC,$FC,$FC,$FC,$FD,$FD,$FD,$FD
            .byte $FE,$FE,$FE,$FE,$FF,$FF,$FF,$FF
L9E76:      .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
            .byte $00,$02,$04,$06,$00,$02,$04,$06
L9F76:      .byte $F0,$18,$40,$68,$90,$B8,$E0,$08
            .byte $30,$58,$80,$A8,$D0,$F8,$20,$48
            .byte $70,$98,$C0,$E8,$10,$38,$60,$88
            .byte $B0,$D8,$00,$28,$50,$78,$A0,$C8
            .byte $F0,$18,$40,$68,$90,$B8,$E0,$08
            .byte $30,$58,$80,$A8,$D0,$F8,$20,$48
            .byte $70,$98,$C0,$E8,$10,$38,$60,$88
            .byte $B0,$D8,$00,$28,$50,$78,$A0,$C8
            .byte $F0,$18,$40,$68,$90,$B8,$E0,$08
            .byte $30,$58,$80,$A8,$D0,$F8,$20,$48
            .byte $70,$98,$C0,$E8,$10,$38,$60,$88
            .byte $B0,$D8,$00,$28,$50,$00,$28,$50
            .byte $78,$A0,$C8,$F0,$18,$40,$68,$90
            .byte $B8,$E0,$08,$30,$58,$80,$A8,$D0
            .byte $F8,$20,$48,$70,$98,$C0,$E8,$10
            .byte $38,$60,$88,$B0,$D8,$00,$28,$50
            .byte $78,$A0,$C8,$F0,$18,$40,$68,$90
            .byte $B8,$E0,$08,$30,$58,$80,$A8,$D0
LA006:      .byte $00,$50,$A0,$F0,$40,$90
LA00C:      .byte $10,$10,$10,$10,$11,$11
LA012:      .byte $20,$21,$21,$21,$21,$21,$21,$22
            .byte $22,$22,$22,$22,$22,$22,$23,$23
            .byte $23,$23,$23,$23,$24,$24,$24,$24
            .byte $24,$24,$25,$25,$25,$25,$25,$25
            .byte $25,$26,$26,$26,$26,$26,$26,$27
            .byte $27,$27,$27,$27,$27,$27,$28,$28
            .byte $28,$28,$28,$28,$29,$29,$29,$29
            .byte $29,$29,$2A,$2A,$2A,$2A,$2A,$2A
            .byte $2A,$2B,$2B,$2B,$2B,$2B,$2B,$2C
            .byte $2C,$2C,$2C,$2C,$2C,$2C,$2D,$2D
            .byte $2D,$2D,$2D,$2D,$2E,$2E,$2E,$2E
            .byte $2E,$2E,$2F,$2F,$2F,$30,$30,$30
            .byte $30,$30,$30,$30,$31,$31,$31,$31
            .byte $31,$31,$32,$32,$32,$32,$32,$32
            .byte $32,$33,$33,$33,$33,$33,$33,$34
            .byte $34,$34,$34,$34,$34,$35,$35,$35
            .byte $35,$35,$35,$35,$36,$36,$36,$36
            .byte $36,$36,$37,$37,$37,$37,$37,$37
            .byte $70,$70,$70,$46,$28,$20,$06,$46
            .byte $64,$20,$04,$04,$84,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$CE,$00,$30,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $8E,$0E,$8E,$0E,$8E,$0E,$8E,$0E
            .byte $90,$90,$90,$90,$90,$90,$90,$41
            .byte $A2,$A0
LA14C:      sta L00E7
            stx L00E9
            ldx #$00
            lda L1000,X
            sta WSYNC
            sta COLBK
            inx
            cpx #$50
            bne LA17F
            dec INSDAT
            bne LA17D
            ldx #$02
            stx INSDAT
            ldx #$00
            lda LA006,X
            sta L00B8
            lda LA00C,X
            sta L00B9
            inx
            cpx #$06
            bne LA17B
            ldx #$00
LA17B:      stx L00CE
LA17D:      ldx #$00
LA17F:      stx L00B6
            lda #$00
            ldx #$00
            rti
            .byte $00,$00,$55,$54,$00,$00,$00,$00
            .byte $00,$01,$00,$00,$00,$00,$00,$14
            .byte $01,$00,$50,$00,$00,$00,$04,$06
            .byte $40,$40,$00,$00,$00,$09,$16,$51
            .byte $80,$00,$00,$00,$01,$A9,$A9,$00
            .byte $00,$00,$00,$16,$9A,$9A,$50,$00
            .byte $00,$55,$56,$FD,$FE,$55,$54,$00
            .byte $00,$56,$FD,$FE,$54,$00,$00,$00
            .byte $02,$9A,$9A,$00,$00,$00,$00,$00
            .byte $A8,$A8,$00,$00,$00,$00,$00,$05
            .byte $55,$40,$00,$00,$00,$00,$00,$10
            .byte $00,$00,$00,$00,$01,$40,$10,$05
            .byte $00,$00,$00,$00,$40,$64,$04,$00
            .byte $00,$00,$00,$91,$65,$18,$00,$00
            .byte $00,$00,$1A,$9A,$90,$00,$00,$00
            .byte $01,$69,$A9,$A5,$00,$00,$05,$55
            .byte $6F,$DF,$E5,$55,$40,$00,$05,$6F
            .byte $DF,$E5,$40,$00,$00,$00,$29,$A9
            .byte $A0,$00,$00,$00,$00,$0A,$8A,$80
            .byte $00,$00,$00,$00,$00,$10,$00,$00
            .byte $00,$00,$55,$40,$00,$00,$00,$01
            .byte $04,$01,$40,$00,$01,$40,$05,$41
            .byte $00,$00,$00,$10,$59,$56,$00,$00
            .byte $00,$25,$5A,$A4,$00,$40,$00,$06
            .byte $A6,$69,$55,$00,$00,$0A,$6B,$F9
            .byte $50,$00,$00,$5B,$F7,$F9,$40,$00
            .byte $01,$5B,$F6,$68,$00,$00,$15,$5A
            .byte $6A,$A0,$00,$00,$40,$02,$A0,$00
            .byte $00,$00,$00,$00,$00,$01,$00,$00
            .byte $00,$00,$05,$54,$00,$00,$00,$00
            .byte $10,$40,$14,$00,$00,$14,$00,$54
            .byte $10,$00,$00,$01,$05,$95,$60,$00
            .byte $00,$02,$55,$AA,$40,$04,$00,$00
            .byte $6A,$66,$95,$50,$00,$00,$A6,$BF
            .byte $95,$00,$00,$05,$BF,$7F,$94,$00
            .byte $00,$15,$BF,$66,$80,$00,$01,$55
            .byte $A6,$AA,$00,$00,$04,$00,$2A,$00
            .byte $00,$00,$00,$01,$00,$00,$00,$00
            .byte $00,$00,$55,$40,$00,$00,$00,$50
            .byte $04,$10,$00,$00,$00,$10,$54,$00
            .byte $50,$00,$00,$25,$59,$41,$00,$00
            .byte $40,$06,$A9,$56,$00,$00,$15,$5A
            .byte $66,$A4,$00,$00,$01,$5B,$FA,$68
            .byte $00,$00,$00,$5B,$F7,$F9,$40,$00
            .byte $00,$0A,$67,$F9,$50,$00,$00,$02
            .byte $AA,$69,$55,$00,$00,$00,$02,$A0
            .byte $00,$40,$00,$00,$10,$00,$00,$00
            .byte $00,$00,$05,$54,$00,$00,$00,$05
            .byte $00,$41,$00,$00,$00,$01,$05,$40
            .byte $05,$00,$00,$02,$55,$94,$10,$00
            .byte $04,$00,$6A,$95,$60,$00,$01,$55
            .byte $A6,$6A,$40,$00,$00,$15,$BF,$A6
            .byte $80,$00,$00,$05,$BF,$7F,$94,$00
            .byte $00,$00,$A6,$7F,$95,$00,$00,$00
            .byte $2A,$A6,$95,$50,$00,$00,$00,$2A
            .byte $00,$04,$00,$00,$03,$00,$00,$00
            .byte $00,$00,$0F,$C0,$00,$00,$00,$00
            .byte $3F,$F0,$00,$00,$00,$03,$FF,$FF
            .byte $00,$00,$00,$0F,$FF,$FF,$C0,$00
            .byte $00,$FF,$FF,$FF,$FC,$00,$03,$FF
            .byte $FF,$FF,$FF,$00,$0F,$FF,$FF,$FF
            .byte $FF,$C0,$3F,$FF,$FF,$FF,$FF,$F0
            .byte $00,$0F,$FF,$FF,$C0,$00,$00,$00
            .byte $FC,$FC,$00,$00,$00,$00,$00,$30
            .byte $00,$00,$00,$00,$00,$FC,$00,$00
            .byte $00,$00,$03,$FF,$00,$00,$00,$00
            .byte $3F,$FF,$F0,$00,$00,$00,$FF,$FF
            .byte $FC,$00,$00,$0F,$FF,$FF,$FF,$C0
            .byte $00,$3F,$FF,$FF,$FF,$F0,$00,$FF
            .byte $FF,$FF,$FF,$FC,$03,$FF,$FF,$FF
            .byte $FF,$FF,$00,$00,$FF,$FF,$FC,$00
            .byte $00,$00,$0F,$CF,$C0,$00,$80,$80
            .byte $80,$08,$08,$08,$20,$00,$98,$00
            .byte $A8,$00,$20,$00,$B8,$00,$88,$00
            .byte $88,$00,$88,$00,$02,$00,$09,$80
            .byte $0A,$80,$02,$00,$0B,$80,$08,$80
            .byte $08,$80,$08,$80,$2E,$00,$AA,$80
            .byte $95,$80,$AA,$80,$AE,$80,$2A,$00
            .byte $3B,$00,$AE,$80,$88,$80,$88,$80
            .byte $88,$80,$88,$80,$88,$80,$02,$E0
            .byte $0A,$A8,$09,$58,$0A,$A8,$0A,$E8
            .byte $02,$A0,$03,$B0,$0A,$E8,$08,$88
            .byte $08,$88,$08,$88,$08,$88,$08,$88
            .byte $0A,$80,$00,$2B,$A0,$00,$AA,$68
            .byte $00,$AA,$68,$00,$95,$68,$00,$AD
            .byte $E8,$00,$2A,$A0,$00,$0A,$80,$00
            .byte $06,$40,$00,$1A,$90,$00,$5D,$D4
            .byte $00,$A2,$28,$00,$A2,$28,$00,$A2
            .byte $28,$00,$A2,$28,$00,$A2,$28,$00
            .byte $A2,$28,$00,$A2,$28,$00,$00,$A8
            .byte $00,$02,$BA,$00,$0A,$A6,$80,$0A
            .byte $A6,$80,$09,$56,$80,$0A,$DE,$80
            .byte $02,$AA,$00,$00,$A8,$00,$00,$64
            .byte $00,$01,$A9,$00,$05,$DD,$40,$0A
            .byte $22,$80,$0A,$22,$80,$0A,$22,$80
            .byte $0A,$22,$80,$0A,$22,$80,$0A,$22
            .byte $80,$0A,$22,$80,$02,$AA,$00,$00
            .byte $0A,$BA,$80,$00,$2B,$A7,$A0,$00
            .byte $2A,$ED,$60,$00,$25,$55,$60,$00
            .byte $2A,$AA,$A0,$00,$2E,$AA,$E0,$00
            .byte $2A,$FE,$A0,$00,$2A,$AA,$A0,$00
            .byte $02,$AA,$00,$00,$00,$A8,$00,$00
            .byte $02,$EE,$00,$00,$0A,$9A,$80,$00
            .byte $1A,$EE,$90,$00,$28,$EC,$A0,$00
            .byte $28,$20,$A0,$00,$28,$20,$A0,$00
            .byte $28,$20,$A0,$00,$28,$20,$A0,$00
            .byte $28,$20,$A0,$00,$28,$20,$A0,$00
            .byte $28,$20,$A0,$00,$28,$64,$A0,$00
            .byte $28,$A8,$A0,$00,$00,$2A,$A0,$00
            .byte $00,$AB,$A8,$00,$02,$BA,$7A,$00
            .byte $02,$AE,$D6,$00,$02,$55,$56,$00
            .byte $02,$AA,$AA,$00,$02,$EA,$AE,$00
            .byte $02,$AF,$EA,$00,$02,$AA,$AA,$00
            .byte $00,$2A,$A0,$00,$00,$0A,$80,$00
            .byte $00,$2E,$E0,$00,$00,$A9,$A8,$00
            .byte $01,$AE,$E9,$00,$02,$8E,$CA,$00
            .byte $02,$82,$0A,$00,$02,$82,$0A,$00
            .byte $02,$82,$0A,$00,$02,$82,$0A,$00
            .byte $02,$82,$0A,$00,$02,$82,$0A,$00
            .byte $02,$82,$0A,$00,$02,$86,$4A,$00
            .byte $02,$8A,$8A,$00,$60,$90,$06,$09
            .byte $04,$00,$58,$00,$25,$00,$10,$00
            .byte $00,$40,$05,$80,$02,$50,$01,$00
            .byte $01,$10,$04,$00,$49,$80,$16,$10
            .byte $09,$00,$44,$00,$00,$11,$00,$40
            .byte $04,$98,$01,$61,$00,$90,$04,$40
            .byte $00,$48,$00,$41,$00,$00,$05,$91
            .byte $00,$12,$84,$00,$49,$A0,$00,$01
            .byte $40,$00,$08,$84,$00,$40,$10,$00
            .byte $00,$04,$80,$04,$10,$00,$00,$59
            .byte $10,$01,$28,$40,$04,$9A,$00,$00
            .byte $14,$00,$00,$88,$40,$04,$01,$00
            .byte $10,$10,$00,$00,$40,$40,$01,$88
            .byte $00,$40,$50,$00,$21,$84,$00,$46
            .byte $A0,$00,$14,$96,$00,$02,$61,$40
            .byte $04,$44,$00,$11,$61,$00,$00,$10
            .byte $00,$04,$40,$40,$01,$01,$00,$00
            .byte $04,$04,$00,$18,$80,$04,$05,$00
            .byte $02,$18,$40,$04,$6A,$00,$01,$49
            .byte $60,$00,$26,$14,$00,$44,$40,$01
            .byte $16,$10,$00,$01,$00,$00,$44,$04
            .byte $01,$00,$11,$00,$00,$10,$40,$00
            .byte $44,$10,$40,$00,$04,$92,$00,$00
            .byte $41,$15,$10,$00,$12,$64,$80,$00
            .byte $09,$A9,$00,$00,$14,$A5,$50,$00
            .byte $02,$26,$44,$00,$41,$91,$01,$00
            .byte $04,$18,$10,$00,$00,$55,$04,$00
            .byte $01,$04,$40,$00,$00,$10,$00,$00
            .byte $00,$10,$01,$10,$00,$01,$04,$00
            .byte $04,$41,$04,$00,$00,$49,$20,$00
            .byte $04,$11,$51,$00,$01,$26,$48,$00
            .byte $00,$9A,$90,$00,$01,$4A,$55,$00
            .byte $00,$22,$64,$40,$04,$19,$10,$10
            .byte $00,$41,$81,$00,$00,$05,$50,$40
            .byte $00,$10,$44,$00,$00,$01,$00,$00
            .byte $29,$00,$AA,$40,$29,$00,$02,$90
            .byte $0A,$A4,$02,$90,$0A,$00,$2B,$80
            .byte $9A,$60,$35,$C0,$06,$00,$00,$A0
            .byte $02,$B8,$09,$A6,$03,$5C,$00,$60
            .byte $02,$A0,$00,$0B,$B8,$00,$25,$FE
            .byte $00,$9A,$9F,$80,$16,$A5,$00,$0D
            .byte $5C,$00,$01,$A0,$00,$00,$2A,$00
            .byte $00,$BB,$80,$02,$5F,$E0,$09,$A9
            .byte $F8,$01,$6A,$50,$00,$D5,$C0,$00
            .byte $1A,$00,$00,$AA,$00,$00,$02,$AE
            .byte $80,$00,$0B,$AB,$E0,$00,$26,$FF
            .byte $D8,$00,$9A,$66,$F6,$00,$69,$A9
            .byte $BD,$00,$15,$AA,$54,$00,$0F,$65
            .byte $F0,$00,$01,$FF,$80,$00,$00,$6A
            .byte $00,$00,$00,$0A,$A0,$00,$00,$2A
            .byte $E8,$00,$00,$BA,$BE,$00,$02,$6F
            .byte $FD,$80,$09,$A6,$6F,$60,$06,$9A
            .byte $9B,$D0,$01,$5A,$A5,$40,$00,$F6
            .byte $5F,$00,$00,$1F,$F8,$00,$00,$06
            .byte $A0,$00,$00,$0A,$A0,$00,$00,$00
            .byte $2A,$E8,$00,$00,$00,$EA,$BB,$00
            .byte $00,$02,$7A,$AD,$80,$00,$09,$AF
            .byte $FF,$D8,$00,$26,$99,$9B,$D8,$00
            .byte $9A,$69,$9A,$F6,$00,$6A,$69,$A6
            .byte $BD,$00,$19,$A6,$A9,$B4,$00,$05
            .byte $56,$95,$50,$00,$03,$FD,$7F,$C0
            .byte $00,$00,$1F,$F4,$00,$00,$00,$06
            .byte $A0,$00,$00,$00,$00,$AA,$00,$00
            .byte $00,$02,$AE,$80,$00,$00,$0E,$AB
            .byte $B0,$00,$00,$27,$AA,$D8,$00,$00
            .byte $9A,$FF,$FD,$80,$02,$69,$99,$BD
            .byte $80,$09,$A6,$99,$AF,$60,$06,$A6
            .byte $9A,$6B,$D0,$01,$9A,$6A,$9B,$40
            .byte $00,$55,$69,$55,$00,$00,$3F,$D7
            .byte $FC,$00,$00,$01,$FF,$40,$00,$00
            .byte $00,$6A,$00,$00,$A0,$A0,$0A,$0A
            .byte $20,$00,$A8,$00,$30,$00,$A8,$00
            .byte $30,$00,$20,$00,$EC,$00,$EC,$00
            .byte $20,$00,$02,$00,$0A,$80,$03,$00
            .byte $0A,$80,$03,$00,$02,$00,$0E,$C0
            .byte $0E,$C0,$02,$00,$08,$00,$2A,$00
            .byte $88,$80,$2A,$00,$0C,$00,$2A,$00
            .byte $88,$80,$2A,$00,$0C,$00,$08,$00
            .byte $2A,$00,$AA,$80,$2A,$00,$3F,$00
            .byte $FB,$C0,$3B,$00,$00,$80,$02,$A0
            .byte $08,$88,$02,$A0,$00,$C0,$02,$A0
            .byte $08,$88,$02,$A0,$00,$C0,$00,$80
            .byte $02,$A0,$0A,$A8,$02,$A0,$03,$F0
            .byte $0F,$BC,$03,$B0,$01,$40,$00,$02
            .byte $40,$00,$0A,$60,$00,$22,$48,$00
            .byte $22,$48,$00,$0A,$A0,$00,$03,$C0
            .byte $00,$0A,$60,$00,$22,$48,$00,$22
            .byte $48,$00,$0A,$A0,$00,$03,$C0,$00
            .byte $02,$40,$00,$0A,$60,$00,$29,$58
            .byte $00,$2A,$A4,$00,$0A,$A0,$00,$0F
            .byte $F0,$00,$3A,$6C,$00,$EE,$7B,$00
            .byte $3E,$7C,$00,$0E,$70,$00,$00,$14
            .byte $00,$00,$24,$00,$00,$A6,$00,$02
            .byte $24,$80,$02,$24,$80,$00,$AA,$00
            .byte $00,$3C,$00,$00,$A6,$00,$02,$24
            .byte $80,$02,$24,$80,$00,$AA,$00,$00
            .byte $3C,$00,$00,$24,$00,$00,$A6,$00
            .byte $02,$95,$80,$02,$AA,$40,$00,$AA
            .byte $00,$00,$FF,$00,$03,$A6,$C0,$0E
            .byte $E7,$B0,$03,$E7,$C0,$00,$E7,$00
            .byte $01,$40,$00,$02,$40,$00,$06,$50
            .byte $00,$1A,$64,$00,$62,$49,$00,$92
            .byte $46,$00,$25,$58,$00,$0A,$A0,$00
            .byte $03,$C0,$00,$06,$50,$00,$1A,$64
            .byte $00,$62,$49,$00,$92,$46,$00,$25
            .byte $58,$00,$0A,$A0,$00,$03,$C0,$00
            .byte $0A,$60,$00,$29,$68,$00,$AA,$9A
            .byte $00,$2A,$A4,$00,$3A,$AC,$00,$0F
            .byte $F0,$00,$3E,$7C,$00,$FA,$6F,$00
            .byte $EE,$7B,$00,$3E,$7C,$00,$0E,$70
            .byte $00,$00,$14,$00,$00,$24,$00,$00
            .byte $65,$00,$01,$A6,$40,$06,$24,$90
            .byte $09,$24,$60,$02,$55,$80,$00,$AA
            .byte $00,$00,$3C,$00,$00,$65,$00,$01
            .byte $A6,$40,$06,$24,$90,$09,$24,$60
            .byte $02,$55,$80,$00,$AA,$00,$00,$3C
            .byte $00,$00,$A6,$00,$02,$96,$80,$0A
            .byte $A9,$A0,$02,$AA,$40,$03,$AA,$C0
            .byte $00,$FF,$00,$03,$E7,$C0,$0F,$A6
            .byte $F0,$0E,$E7,$B0,$03,$E7,$C0,$00
            .byte $E7,$00,$00,$40,$00,$02,$50,$00
            .byte $02,$90,$00,$06,$94,$00,$1A,$99
            .byte $00,$62,$92,$40,$92,$91,$80,$25
            .byte $56,$00,$0A,$A8,$00,$03,$F0,$00
            .byte $06,$94,$00,$1A,$99,$00,$62,$92
            .byte $40,$92,$91,$80,$25,$56,$00,$0A
            .byte $A8,$00,$03,$F0,$00,$02,$90,$00
            .byte $06,$98,$00,$29,$96,$00,$AA,$69
            .byte $40,$2A,$AA,$00,$3A,$AA,$C0,$0E
            .byte $AC,$00,$03,$F0,$00,$02,$90,$00
            .byte $0E,$9C,$00,$3A,$9B,$00,$EE,$9E
            .byte $C0,$FA,$9B,$C0,$3E,$9F,$00,$0E
            .byte $9C,$00,$00,$04,$00,$00,$25,$00
            .byte $00,$29,$00,$00,$69,$40,$01,$A9
            .byte $90,$06,$29,$24,$09,$29,$18,$02
            .byte $55,$60,$00,$AA,$80,$00,$3F,$00
            .byte $00,$69,$40,$01,$A9,$90,$06,$29
            .byte $24,$09,$29,$18,$02,$55,$60,$00
            .byte $AA,$80,$00,$3F,$00,$00,$29,$00
            .byte $00,$69,$80,$02,$99,$60,$0A,$A6
            .byte $94,$02,$AA,$A0,$03,$AA,$AC,$00
            .byte $EA,$C0,$00,$3F,$00,$00,$29,$00
            .byte $00,$E9,$C0,$03,$A9,$B0,$0E,$E9
            .byte $EC,$0F,$A9,$BC,$03,$E9,$F0,$00
            .byte $E9,$C0,$00,$14,$00,$00,$00,$A6
            .byte $00,$00,$00,$A6,$00,$00,$05,$A6
            .byte $50,$00,$1A,$A6,$A4,$00,$60,$A6
            .byte $09,$00,$90,$A6,$06,$00,$25,$A6
            .byte $58,$00,$0A,$55,$A0,$00,$02,$AA
            .byte $80,$00,$00,$FF,$00,$00,$00,$A6
            .byte $00,$00,$05,$A6,$50,$00,$1A,$A6
            .byte $A4,$00,$60,$A6,$09,$00,$90,$A6
            .byte $06,$00,$25,$A6,$58,$00,$0A,$55
            .byte $A0,$00,$02,$AA,$80,$00,$00,$FF
            .byte $00,$00,$00,$A6,$00,$00,$00,$A6
            .byte $00,$00,$02,$A6,$80,$00,$09,$A6
            .byte $60,$00,$2B,$7D,$58,$00,$AA,$D7
            .byte $96,$00,$AA,$BE,$A6,$00,$2A,$AA
            .byte $A8,$00,$3E,$AA,$BC,$00,$03,$AA
            .byte $C0,$00,$00,$FF,$00,$00,$00,$A6
            .byte $00,$00,$00,$A6,$00,$00,$03,$A6
            .byte $C0,$00,$3E,$A6,$BC,$00,$EB,$A6
            .byte $EB,$00,$FE,$A6,$BF,$00,$2B,$A6
            .byte $E8,$00,$3F,$A6,$FC,$00,$03,$A6
            .byte $C0,$00,$00,$01,$40,$00,$00,$0A
            .byte $60,$00,$00,$0A,$60,$00,$00,$5A
            .byte $65,$00,$01,$AA,$6A,$40,$06,$0A
            .byte $60,$90,$09,$0A,$60,$60,$02,$5A
            .byte $65,$80,$00,$A5,$5A,$00,$00,$2A
            .byte $A8,$00,$00,$0F,$F0,$00,$00,$0A
            .byte $60,$00,$00,$5A,$65,$00,$01,$AA
            .byte $6A,$40,$06,$0A,$60,$90,$09,$0A
            .byte $60,$60,$02,$5A,$65,$80,$00,$A5
            .byte $5A,$00,$00,$2A,$A8,$00,$00,$0F
            .byte $F0,$00,$00,$0A,$60,$00,$00,$0A
            .byte $60,$00,$00,$2A,$68,$00,$00,$9A
            .byte $66,$00,$02,$B7,$D5,$80,$0A,$AD
            .byte $79,$60,$0A,$AB,$EA,$60,$02,$AA
            .byte $AA,$80,$03,$EA,$AB,$C0,$00,$3A
            .byte $AC,$00,$00,$0F,$F0,$00,$00,$0A
            .byte $60,$00,$00,$0A,$60,$00,$00,$3A
            .byte $6C,$00,$03,$EA,$6B,$C0,$0E,$BA
            .byte $6E,$B0,$0F,$EA,$6B,$F0,$02,$BA
            .byte $6E,$80,$03,$FA,$6F,$C0,$00,$3A
            .byte $6C,$00,$88,$00,$A8,$00,$88,$00
            .byte $08,$80,$0A,$80,$08,$80,$86,$48
            .byte $00,$AA,$A8,$00,$86,$48,$00,$08
            .byte $64,$80,$0A,$AA,$80,$08,$64,$80
            .byte $80,$02,$80,$02,$00,$88,$09,$60
            .byte $22,$00,$86,$27,$D8,$92,$00,$AA
            .byte $AA,$AA,$AA,$00,$86,$05,$50,$92
            .byte $00,$88,$02,$80,$22,$00,$80,$00
            .byte $00,$02,$00,$08,$00,$28,$00,$20
            .byte $08,$80,$96,$02,$20,$08,$62,$7D
            .byte $89,$20,$0A,$AA,$AA,$AA,$A0,$08
            .byte $60,$55,$09,$20,$08,$80,$28,$02
            .byte $20,$08,$00,$00,$00,$20,$80,$A0
            .byte $00,$00,$00,$A0,$20,$82,$F8,$02
            .byte $A8,$02,$F8,$20,$81,$F6,$0B,$FE
            .byte $09,$F4,$20,$80,$58,$2A,$5A,$82
            .byte $50,$20,$AA,$AA,$A9,$F6,$AA,$AA
            .byte $A0,$AA,$AA,$A9,$F6,$AA,$AA,$A0
            .byte $80,$58,$2A,$AA,$82,$50,$20,$81
            .byte $F6,$0A,$AA,$09,$F4,$20,$82,$F8
            .byte $01,$54,$02,$F8,$20,$80,$A0,$00
            .byte $A0,$00,$A0,$20,$08,$0A,$00,$00
            .byte $00,$0A,$02,$08,$2F,$80,$2A,$80
            .byte $2F,$82,$08,$1F,$60,$BF,$E0,$9F
            .byte $42,$08,$05,$82,$A5,$A8,$25,$02
            .byte $0A,$AA,$AA,$9F,$6A,$AA,$AA,$0A
            .byte $AA,$AA,$9F,$6A,$AA,$AA,$08,$05
            .byte $82,$AA,$A8,$25,$02,$08,$1F,$60
            .byte $AA,$A0,$9F,$42,$08,$2F,$80,$15
            .byte $40,$2F,$82,$08,$0A,$00,$0A,$00
            .byte $0A,$02,$80,$02,$A9,$00,$02,$A8
            .byte $00,$06,$A8,$00,$20,$90,$0A,$FA
            .byte $40,$0B,$FE,$00,$1A,$FA,$00,$60
            .byte $94,$0B,$FE,$60,$2A,$AA,$80,$9B
            .byte $FE,$01,$60,$94,$0B,$FE,$60,$AA
            .byte $AA,$A0,$9B,$FE,$01,$60,$94,$06
            .byte $F9,$62,$99,$56,$68,$96,$F9,$01
            .byte $60,$94,$01,$55,$89,$97,$FD,$66
            .byte $25,$54,$01,$60,$AA,$AA,$AA,$AA
            .byte $97,$FD,$6A,$AA,$AA,$AA,$A0,$AA
            .byte $AA,$AA,$AA,$97,$FD,$6A,$AA,$AA
            .byte $AA,$A0,$94,$01,$55,$82,$AA,$AA
            .byte $A8,$25,$54,$01,$60,$94,$06,$F9
            .byte $60,$BB,$AE,$E0,$96,$F9,$01,$60
            .byte $94,$0B,$FE,$60,$15,$55,$40,$9B
            .byte $FE,$01,$60,$94,$0B,$FE,$60,$02
            .byte $F8,$00,$9B,$FE,$01,$60,$90,$0A
            .byte $FA,$40,$00,$A0,$00,$1A,$FA,$00
            .byte $60,$80,$02,$A9,$00,$00,$00,$00
            .byte $06,$A8,$00,$20,$08,$00,$2A,$90
            .byte $00,$2A,$80,$00,$6A,$80,$02,$09
            .byte $00,$AF,$A4,$00,$BF,$E0,$01,$AF
            .byte $A0,$06,$09,$40,$BF,$E6,$02,$AA
            .byte $A8,$09,$BF,$E0,$16,$09,$40,$BF
            .byte $E6,$0A,$AA,$AA,$09,$BF,$E0,$16
            .byte $09,$40,$6F,$96,$29,$95,$66,$89
            .byte $6F,$90,$16,$09,$40,$15,$58,$99
            .byte $7F,$D6,$62,$55,$40,$16,$0A,$AA
            .byte $AA,$AA,$A9,$7F,$D6,$AA,$AA,$AA
            .byte $AA,$0A,$AA,$AA,$AA,$A9,$7F,$D6
            .byte $AA,$AA,$AA,$AA,$09,$40,$15,$58
            .byte $2A,$AA,$AA,$82,$55,$40,$16,$09
            .byte $40,$6F,$96,$0B,$BA,$EE,$09,$6F
            .byte $90,$16,$09,$40,$BF,$E6,$01,$55
            .byte $54,$09,$BF,$E0,$16,$09,$40,$BF
            .byte $E6,$00,$2F,$80,$09,$BF,$E0,$16
            .byte $09,$00,$AF,$A4,$00,$0A,$00,$01
            .byte $AF,$A0,$06,$08,$00,$2A,$90,$00
            .byte $00,$00,$00,$6A,$80,$02,$FF,$FF
            .byte $00,$03,$FF,$FF,$FF,$FF,$FF,$FC
            .byte $FF,$FF,$FF,$FF,$FF,$C3,$FC,$FF
            .byte $0F,$FF,$FF,$FF,$F3,$F0,$3F,$3F
            .byte $FF,$FF,$FF,$F0,$C0,$0C,$3F,$FF
            .byte $FF,$FF,$FC,$00,$00,$FF,$FF,$FF
            .byte $FF,$C0,$00,$00,$0F,$FF,$FF,$00
            .byte $00,$00,$00,$00,$03,$FF,$FF,$00
            .byte $00,$00,$03,$FF,$FF,$FF,$FC,$00
            .byte $00,$FF,$FF,$FF,$FF,$FF,$03,$03
            .byte $FF,$FF,$FF,$FF,$FF,$F0,$00,$3F
            .byte $FF,$FF,$FF,$FF,$FF,$CF,$FF,$FF
            .byte $FF,$FF,$FC,$3F,$CF,$F0,$FF,$FF
            .byte $FF,$FF,$3F,$03,$F3,$FF,$FF,$FF
            .byte $FF,$0C,$00,$C3,$FF,$FF,$FF,$FF
            .byte $C0,$00,$0F,$FF,$FF,$FF,$FC,$00
            .byte $00,$00,$FF,$FF,$F0,$00,$00,$00
            .byte $00,$00,$3F,$FF,$F0,$00,$00,$00
            .byte $3F,$FF,$FF,$FF,$C0,$00,$0F,$FF
            .byte $FF,$FF,$FF,$F0,$30,$3F,$FF,$FF
            .byte $FF,$FF,$FF,$CF,$FF,$FF,$FF,$FF
            .byte $00,$3F,$FF,$FF,$FF,$FC,$F3,$FC
            .byte $3F,$FF,$FC,$3F,$F0,$3C,$FF,$FF
            .byte $FF,$CF,$00,$00,$FF,$FF,$FF,$C0
            .byte $00,$03,$FF,$3F,$FF,$F0,$00,$00
            .byte $00,$FF,$FF,$F0,$00,$00,$0F,$FF
            .byte $FF,$00,$00,$00,$3F,$FF,$FC,$00
            .byte $00,$03,$FF,$FF,$C0,$00,$00,$0F
            .byte $FF,$FF,$3F,$FC,$0F,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FC,$FF,$FF,$FF,$FF
            .byte $F0,$03,$FF,$FF,$FF,$FF,$CF,$3F
            .byte $C3,$FF,$FF,$C3,$FF,$03,$CF,$FF
            .byte $FF,$FC,$F0,$00,$0F,$FF,$FF,$FC
            .byte $00,$00,$3F,$F3,$FF,$FF,$00,$00
            .byte $00,$0F,$FF,$FF,$00,$00,$00,$FF
            .byte $FF,$F0,$00,$00,$03,$FF,$FF,$C0
            .byte $00,$00,$3F,$FF,$FC,$00,$00,$00
            .byte $FF,$FF,$F3,$FF,$C0,$FF,$FF,$FF
            .byte $FF,$FC,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$3F,$FF,$FF,$FF,$0F,$F3,$CF
            .byte $FF,$FF,$FF,$CF,$03,$FF,$0F,$FF
            .byte $FF,$C0,$00,$3C,$FF,$FF,$3F,$F0
            .byte $00,$00,$FF,$FF,$C0,$00,$00,$03
            .byte $FF,$FF,$FC,$00,$00,$03,$FF,$FF
            .byte $FF,$00,$00,$00,$3F,$FF,$FF,$F0
            .byte $00,$00,$0F,$FF,$FF,$FC,$00,$00
            .byte $00,$FF,$FF,$FF,$FC,$0F,$FF,$3F
            .byte $FF,$FF,$CF,$FF,$FF,$FF,$FF,$FF
            .byte $F0,$03,$FF,$FF,$FF,$F0,$FF,$3C
            .byte $FF,$FF,$FF,$FC,$F0,$3F,$F0,$FF
            .byte $FF,$FC,$00,$03,$CF,$FF,$F3,$FF
            .byte $00,$00,$0F,$FF,$FC,$00,$00,$00
            .byte $3F,$FF,$FF,$C0,$00,$00,$3F,$FF
            .byte $FF,$F0,$00,$00,$03,$FF,$FF,$FF
            .byte $00,$00,$00,$FF,$FF,$FF,$C0,$00
            .byte $00,$0F,$FF,$FF,$FF,$C0,$FF,$F3
            .byte $FF,$FF,$FC,$FF,$FF,$FF,$FF,$FF
            .byte $F0,$3F,$FF,$FF,$FF,$FF,$C0,$0F
            .byte $FF,$FF,$FF,$FC,$00,$00,$FF,$FF
            .byte $FF,$F0,$00,$00,$3F,$FF,$FF,$00
            .byte $00,$00,$03,$FF,$FC,$00,$00,$00
            .byte $00,$FF,$F0,$00,$00,$00,$00,$3F
            .byte $C0,$00,$00,$00,$00,$0F,$FF,$F0
            .byte $00,$00,$3F,$FF,$FF,$FF,$03,$03
            .byte $FF,$FF,$FF,$FF,$FF,$CF,$FF,$FF
            .byte $FF,$FF,$FF,$03,$FF,$FF,$FF,$FF
            .byte $FC,$00,$FF,$FF,$FF,$FF,$C0,$00
            .byte $0F,$FF,$FF,$FF,$00,$00,$03,$FF
            .byte $FF,$F0,$00,$00,$00,$3F,$FF,$C0
            .byte $00,$00,$00,$0F,$FF,$00,$00,$00
            .byte $00,$03,$FC,$00,$00,$00,$00,$00
            .byte $FF,$FF,$00,$00,$03,$FF,$FF,$FF
            .byte $F0,$30,$3F,$FF,$3F,$3F,$3F,$F3
            .byte $F3,$F3,$CF,$FF,$03,$FF,$03,$FF
            .byte $CF,$FF,$03,$FF,$33,$FF,$33,$FF
            .byte $33,$FF,$FC,$FF,$F0,$3F,$F0,$3F
            .byte $FC,$FF,$F0,$3F,$F3,$3F,$F3,$3F
            .byte $F3,$3F,$C0,$FF,$00,$3F,$00,$3F
            .byte $00,$3F,$00,$3F,$C0,$FF,$C0,$FF
            .byte $00,$3F,$33,$3F,$33,$3F,$33,$3F
            .byte $33,$3F,$33,$3F,$FC,$0F,$F0,$03
            .byte $F0,$03,$F0,$03,$F0,$03,$FC,$0F
            .byte $FC,$0F,$F0,$03,$F3,$33,$F3,$33
            .byte $F3,$33,$F3,$33,$F3,$33,$F0,$3F
            .byte $FF,$C0,$0F,$FF,$00,$03,$FF,$00
            .byte $03,$FF,$00,$03,$FF,$00,$03,$FF
            .byte $C0,$0F,$FF,$F0,$3F,$FF,$F0,$3F
            .byte $FF,$C0,$0F,$FF,$00,$03,$FF,$0C
            .byte $C3,$FF,$0C,$C3,$FF,$0C,$C3,$FF
            .byte $0C,$C3,$FF,$0C,$C3,$FF,$0C,$C3
            .byte $FF,$0C,$C3,$FF,$FF,$03,$FF,$FC
            .byte $00,$FF,$F0,$00,$3F,$F0,$00,$3F
            .byte $F0,$00,$3F,$F0,$00,$3F,$FC,$00
            .byte $FF,$FF,$03,$FF,$FF,$03,$FF,$FC
            .byte $00,$FF,$F0,$00,$3F,$F0,$CC,$3F
            .byte $F0,$CC,$3F,$F0,$CC,$3F,$F0,$CC
            .byte $3F,$F0,$CC,$3F,$F0,$CC,$3F,$F0
            .byte $CC,$3F,$FC,$00,$FF,$FF,$F0,$00
            .byte $3F,$FF,$C0,$00,$0F,$FF,$C0,$00
            .byte $0F,$FF,$C0,$00,$0F,$FF,$C0,$00
            .byte $0F,$FF,$C0,$00,$0F,$FF,$C0,$00
            .byte $0F,$FF,$C0,$00,$0F,$FF,$FC,$00
            .byte $FF,$FF,$FF,$03,$FF,$FF,$FC,$00
            .byte $FF,$FF,$F0,$00,$3F,$FF,$C0,$00
            .byte $0F,$FF,$C3,$03,$0F,$FF,$C3,$CF
            .byte $0F,$FF,$C3,$CF,$0F,$FF,$C3,$CF
            .byte $0F,$FF,$C3,$CF,$0F,$FF,$C3,$CF
            .byte $0F,$FF,$C3,$CF,$0F,$FF,$C3,$CF
            .byte $0F,$FF,$C3,$03,$0F,$FF,$C3,$03
            .byte $0F,$FF,$FF,$C0,$0F,$FF,$FF,$00
            .byte $03,$FF,$FC,$00,$00,$FF,$FC,$00
            .byte $00,$FF,$FC,$00,$00,$FF,$FC,$00
            .byte $00,$FF,$FC,$00,$00,$FF,$FC,$00
            .byte $00,$FF,$FC,$00,$00,$FF,$FF,$C0
            .byte $0F,$FF,$FF,$F0,$3F,$FF,$FF,$C0
            .byte $0F,$FF,$FF,$00,$03,$FF,$FC,$00
            .byte $00,$FF,$FC,$30,$30,$FF,$FC,$3C
            .byte $F0,$FF,$FC,$3C,$F0,$FF,$FC,$3C
            .byte $F0,$FF,$FC,$3C,$F0,$FF,$FC,$3C
            .byte $F0,$FF,$FC,$3C,$F0,$FF,$FC,$3C
            .byte $F0,$FF,$FC,$30,$30,$FF,$FC,$30
            .byte $30,$FF,$0F,$0F,$F0,$F0,$F3,$FF
            .byte $03,$FF,$C0,$FF,$CF,$FF,$FF,$3F
            .byte $F0,$3F,$FC,$0F,$FC,$FF,$FC,$CF
            .byte $F3,$FF,$30,$3F,$C0,$CF,$F0,$FF
            .byte $33,$FF,$FF,$CC,$FF,$3F,$F3,$03
            .byte $FC,$0C,$FF,$0F,$F3,$3F,$FF,$33
            .byte $FF,$3C,$FF,$FF,$F0,$0C,$FF,$CC
            .byte $33,$FF,$30,$0F,$FF,$FC,$3F,$FF
            .byte $F3,$33,$FF,$3F,$CF,$FF,$FF,$F3
            .byte $3F,$F3,$CF,$FF,$FF,$00,$CF,$FC
            .byte $C3,$3F,$F3,$00,$FF,$FF,$C3,$FF
            .byte $FF,$33,$3F,$F3,$FC,$FF,$CF,$CF
            .byte $FF,$FF,$3F,$3F,$FC,$33,$FF,$3F
            .byte $0F,$FF,$CC,$33,$FF,$30,$0F,$FF
            .byte $C3,$00,$FF,$FC,$0C,$3F,$F3,$33
            .byte $FF,$CC,$0C,$FF,$FF,$CF,$FF,$F3
            .byte $3F,$3F,$FC,$FC,$FF,$FF,$F3,$F3
            .byte $FF,$C3,$3F,$F3,$F0,$FF,$FC,$C3
            .byte $3F,$F3,$00,$FF,$FC,$30,$0F,$FF
            .byte $C0,$C3,$FF,$33,$3F,$FC,$C0,$CF
            .byte $FF,$FC,$FF,$FF,$33,$F3,$FC,$FF
            .byte $CC,$FF,$FF,$CF,$3F,$FF,$33,$CF
            .byte $3F,$FF,$F3,$0C,$FF,$FF,$3C,$C0
            .byte $CF,$FF,$CC,$03,$3F,$FF,$F0,$00
            .byte $FF,$FF,$C3,$00,$0F,$FF,$FC,$C0
            .byte $33,$FF,$3C,$0C,$FC,$FF,$F3,$C3
            .byte $CF,$FF,$FF,$00,$F3,$FF,$FC,$F3
            .byte $3F,$FF,$FF,$CF,$FF,$FF,$FF,$CF
            .byte $FC,$CF,$FF,$FC,$F3,$FF,$F3,$3C
            .byte $F3,$FF,$FF,$30,$CF,$FF,$F3,$CC
            .byte $0C,$FF,$FC,$C0,$33,$FF,$FF,$00
            .byte $0F,$FF,$FC,$30,$00,$FF,$FF,$CC
            .byte $03,$3F,$F3,$C0,$CF,$CF,$FF,$3C
            .byte $3C,$FF,$FF,$F0,$0F,$3F,$FF,$CF
            .byte $33,$FF,$FF,$FC,$FF,$FF,$C0,$FF
            .byte $00,$3F,$C0,$FF,$FC,$0F,$F0,$03
            .byte $FC,$0F,$F0,$FF,$C0,$3F,$00,$0F
            .byte $C0,$3F,$F0,$FF,$FF,$0F,$FC,$03
            .byte $F0,$00,$FC,$03,$FF,$0F,$FC,$0F
            .byte $FF,$F0,$03,$FF,$C0,$00,$FF,$00
            .byte $00,$3F,$C0,$00,$FF,$F0,$03,$FF
            .byte $FC,$0F,$FF,$FF,$C0,$FF,$FF,$00
            .byte $3F,$FC,$00,$0F,$F0,$00,$03,$FC
            .byte $00,$0F,$FF,$00,$3F,$FF,$C0,$FF
            .byte $FF,$00,$FF,$FF,$FC,$00,$3F,$FF
            .byte $F0,$00,$0F,$FF,$C0,$00,$03,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $C0,$00,$03,$FF,$F0,$00,$0F,$FF
            .byte $FC,$00,$3F,$FF,$FF,$00,$FF,$FF
            .byte $FF,$F0,$0F,$FF,$FF,$C0,$03,$FF
            .byte $FF,$00,$00,$FF,$FC,$00,$00,$3F
            .byte $F0,$00,$00,$0F,$F0,$00,$00,$0F
            .byte $FC,$00,$00,$3F,$FF,$00,$00,$FF
            .byte $FF,$C0,$03,$FF,$FF,$F0,$0F,$FF
            .byte $FF,$F0,$0F,$FF,$FF,$FF,$C0,$03
            .byte $FF,$FF,$FF,$00,$00,$FF,$FF,$FC
            .byte $00,$00,$3F,$FF,$F0,$00,$00,$03
            .byte $FF,$C0,$00,$00,$03,$FF,$00,$00
            .byte $00,$00,$FF,$00,$00,$00,$00,$FF
            .byte $C0,$00,$00,$03,$FF,$F0,$00,$00
            .byte $0F,$FF,$FC,$00,$00,$3F,$FF,$FF
            .byte $C0,$03,$FF,$FF,$FF,$F0,$0F,$FF
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$FC
            .byte $00,$3F,$FF,$FF,$F0,$00,$0F,$FF
            .byte $FF,$C0,$00,$03,$FF,$FF,$00,$00
            .byte $00,$3F,$FC,$00,$00,$00,$3F,$F0
            .byte $00,$00,$00,$0F,$F0,$00,$00,$00
            .byte $0F,$FC,$00,$00,$00,$3F,$FF,$00
            .byte $00,$00,$FF,$FF,$C0,$00,$03,$FF
            .byte $FF,$FC,$00,$3F,$FF,$FF,$FF,$00
            .byte $FF,$FF,$0F,$0F,$F0,$F0,$CF,$FF
            .byte $03,$FF,$CF,$FF,$03,$FF,$CF,$FF
            .byte $CF,$FF,$03,$FF,$03,$FF,$CF,$FF
            .byte $FC,$FF,$F0,$3F,$FC,$FF,$F0,$3F
            .byte $FC,$FF,$FC,$FF,$F0,$3F,$F0,$3F
            .byte $FC,$FF,$F3,$FF,$C0,$FF,$33,$3F
            .byte $C0,$FF,$F3,$FF,$C0,$FF,$33,$3F
            .byte $C0,$FF,$F3,$FF,$F3,$FF,$C0,$FF
            .byte $00,$3F,$C0,$FF,$C0,$FF,$00,$3F
            .byte $C0,$FF,$FF,$3F,$FC,$0F,$F3,$33
            .byte $FC,$0F,$FF,$3F,$FC,$0F,$F3,$33
            .byte $FC,$0F,$FF,$3F,$FF,$3F,$FC,$0F
            .byte $F0,$03,$FC,$0F,$FC,$0F,$F0,$03
            .byte $FC,$0F,$FC,$3F,$FF,$FC,$3F,$FF
            .byte $F0,$0F,$FF,$CC,$33,$FF,$CC,$33
            .byte $FF,$F0,$0F,$FF,$FC,$3F,$FF,$F0
            .byte $0F,$FF,$CC,$33,$FF,$CC,$33,$FF
            .byte $F0,$0F,$FF,$FC,$3F,$FF,$FC,$3F
            .byte $FF,$F0,$0F,$FF,$C0,$03,$FF,$C0
            .byte $03,$FF,$F0,$0F,$FF,$F0,$0F,$FF
            .byte $C0,$03,$FF,$00,$00,$FF,$C0,$03
            .byte $FF,$F0,$0F,$FF,$FF,$C3,$FF,$FF
            .byte $C3,$FF,$FF,$00,$FF,$FC,$C3,$3F
            .byte $FC,$C3,$3F,$FF,$00,$FF,$FF,$C3
            .byte $FF,$FF,$00,$FF,$FC,$C3,$3F,$FC
            .byte $C3,$3F,$FF,$00,$FF,$FF,$C3,$FF
            .byte $FF,$C3,$FF,$FF,$00,$FF,$FC,$00
            .byte $3F,$FC,$00,$3F,$FF,$00,$FF,$FF
            .byte $00,$FF,$FC,$00,$3F,$F0,$00,$0F
            .byte $FC,$00,$3F,$FF,$00,$FF,$FC,$3F
            .byte $FF,$FC,$3F,$FF,$F0,$0F,$FF,$C0
            .byte $03,$FF,$0C,$30,$FF,$0C,$30,$FF
            .byte $C0,$03,$FF,$F0,$0F,$FF,$FC,$3F
            .byte $FF,$F0,$0F,$FF,$C0,$03,$FF,$0C
            .byte $30,$FF,$0C,$30,$FF,$C0,$03,$FF
            .byte $F0,$0F,$FF,$FC,$3F,$FF,$F0,$0F
            .byte $FF,$C0,$03,$FF,$00,$00,$FF,$C0
            .byte $03,$FF,$C0,$03,$FF,$F0,$0F,$FF
            .byte $C0,$03,$FF,$00,$00,$FF,$00,$00
            .byte $FF,$C0,$03,$FF,$F0,$0F,$FF,$FF
            .byte $C3,$FF,$FF,$C3,$FF,$FF,$00,$FF
            .byte $FC,$00,$3F,$F0,$C3,$0F,$F0,$C3
            .byte $0F,$FC,$00,$3F,$FF,$00,$FF,$FF
            .byte $C3,$FF,$FF,$00,$FF,$FC,$00,$3F
            .byte $F0,$C3,$0F,$F0,$C3,$0F,$FC,$00
            .byte $3F,$FF,$00,$FF,$FF,$C3,$FF,$FF
            .byte $00,$FF,$FC,$00,$3F,$F0,$00,$0F
            .byte $FC,$00,$3F,$FC,$00,$3F,$FF,$00
            .byte $FF,$FC,$00,$3F,$F0,$00,$0F,$F0
            .byte $00,$0F,$FC,$00,$3F,$FF,$00,$FF
            .byte $FF,$3F,$FF,$FC,$0F,$FF,$FC,$0F
            .byte $FF,$F0,$03,$FF,$C0,$00,$FF,$0C
            .byte $0C,$3F,$0C,$0C,$3F,$C0,$00,$FF
            .byte $F0,$03,$FF,$FC,$0F,$FF,$F0,$03
            .byte $FF,$C0,$00,$FF,$0C,$0C,$3F,$0C
            .byte $0C,$3F,$C0,$00,$FF,$F0,$03,$FF
            .byte $FC,$0F,$FF,$FC,$0F,$FF,$F0,$03
            .byte $FF,$C0,$00,$FF,$00,$00,$3F,$C0
            .byte $00,$FF,$C0,$00,$3F,$F0,$03,$FF
            .byte $FC,$0F,$FF,$FC,$0F,$FF,$F0,$03
            .byte $FF,$C0,$00,$FF,$00,$00,$3F,$00
            .byte $00,$3F,$C0,$00,$FF,$F0,$03,$FF
            .byte $FF,$F3,$FF,$FF,$C0,$FF,$FF,$C0
            .byte $FF,$FF,$00,$3F,$FC,$00,$0F,$F0
            .byte $C0,$C3,$F0,$C0,$C3,$FC,$00,$0F
            .byte $FF,$00,$3F,$FF,$C0,$FF,$FF,$00
            .byte $3F,$FC,$00,$0F,$F0,$C0,$C3,$F0
            .byte $C0,$C3,$FC,$00,$0F,$FF,$00,$3F
            .byte $FF,$C0,$FF,$FF,$C0,$FF,$FF,$00
            .byte $3F,$FC,$00,$0F,$F0,$00,$03,$FC
            .byte $00,$0F,$FC,$00,$03,$FF,$00,$3F
            .byte $FF,$C0,$FF,$FF,$C0,$FF,$FF,$00
            .byte $3F,$FC,$00,$0F,$F0,$00,$03,$F0
            .byte $00,$03,$FC,$00,$0F,$FF,$00,$3F
            .byte $FF,$C3,$FF,$FF,$FF,$00,$FF,$FF
            .byte $FF,$00,$FF,$FF,$F0,$00,$0F,$FF
            .byte $C0,$00,$03,$FF,$0F,$00,$F0,$FF
            .byte $0F,$00,$F0,$FF,$C0,$00,$03,$FF
            .byte $F0,$00,$0F,$FF,$FC,$00,$3F,$FF
            .byte $FF,$00,$FF,$FF,$FF,$00,$FF,$FF
            .byte $F0,$00,$0F,$FF,$C0,$00,$03,$FF
            .byte $0F,$00,$F0,$FF,$0F,$00,$F0,$FF
            .byte $C0,$00,$03,$FF,$F0,$00,$0F,$FF
            .byte $FC,$00,$3F,$FF,$FF,$00,$FF,$FF
            .byte $FF,$00,$FF,$FF,$FF,$00,$FF,$FF
            .byte $FC,$00,$3F,$FF,$F0,$00,$0F,$FF
            .byte $C0,$00,$03,$FF,$00,$00,$00,$FF
            .byte $00,$00,$00,$FF,$C0,$00,$03,$FF
            .byte $C0,$00,$03,$FF,$FC,$00,$3F,$FF
            .byte $FF,$00,$FF,$FF,$FF,$00,$FF,$FF
            .byte $FF,$00,$FF,$FF,$FC,$00,$3F,$FF
            .byte $C0,$00,$03,$FF,$00,$00,$00,$FF
            .byte $00,$00,$00,$FF,$C0,$00,$03,$FF
            .byte $C0,$00,$03,$FF,$FC,$00,$3F,$FF
            .byte $FF,$FC,$3F,$FF,$FF,$F0,$0F,$FF
            .byte $FF,$F0,$0F,$FF,$FF,$00,$00,$FF
            .byte $FC,$00,$00,$3F,$F0,$F0,$0F,$0F
            .byte $F0,$F0,$0F,$0F,$FC,$00,$00,$3F
            .byte $FF,$00,$00,$FF,$FF,$C0,$03,$FF
            .byte $FF,$F0,$0F,$FF,$FF,$F0,$0F,$FF
            .byte $FF,$00,$00,$FF,$FC,$00,$00,$3F
            .byte $F0,$F0,$0F,$0F,$F0,$F0,$0F,$0F
            .byte $FC,$00,$00,$3F,$FF,$00,$00,$FF
            .byte $FF,$C0,$03,$FF,$FF,$F0,$0F,$FF
            .byte $FF,$F0,$0F,$FF,$FF,$F0,$0F,$FF
            .byte $FF,$C0,$03,$FF,$FF,$00,$00,$FF
            .byte $FC,$00,$00,$3F,$F0,$00,$00,$0F
            .byte $F0,$00,$00,$0F,$FC,$00,$00,$3F
            .byte $FC,$00,$00,$3F,$FF,$C0,$03,$FF
            .byte $FF,$F0,$0F,$FF,$FF,$F0,$0F,$FF
            .byte $FF,$F0,$0F,$FF,$FF,$C0,$03,$FF
            .byte $FC,$00,$00,$3F,$F0,$00,$00,$0F
            .byte $F0,$00,$00,$0F,$FC,$00,$00,$3F
            .byte $FC,$00,$00,$3F,$FF,$C0,$03,$FF
            .byte $33,$FF,$03,$FF,$33,$FF,$F3,$3F
            .byte $F0,$3F,$F3,$3F,$30,$33,$FF,$00
            .byte $03,$FF,$30,$33,$FF,$F3,$03,$3F
            .byte $F0,$00,$3F,$F3,$03,$3F,$3F,$FC
            .byte $3F,$FC,$FF,$33,$F0,$0F,$CC,$FF
            .byte $30,$C0,$03,$0C,$FF,$00,$00,$00
            .byte $00,$FF,$30,$F0,$0F,$0C,$FF,$33
            .byte $FC,$3F,$CC,$FF,$3F,$FF,$FF,$FC
            .byte $FF,$F3,$FF,$C3,$FF,$CF,$F3,$3F
            .byte $00,$FC,$CF,$F3,$0C,$00,$30,$CF
            .byte $F0,$00,$00,$00,$0F,$F3,$0F,$00
            .byte $F0,$CF,$F3,$3F,$C3,$FC,$CF,$F3
            .byte $FF,$FF,$FF,$CF,$3F,$0F,$FF,$FF
            .byte $FF,$0F,$CF,$3C,$03,$FC,$03,$FC
            .byte $03,$CF,$3C,$00,$F0,$00,$F0,$03
            .byte $CF,$3F,$03,$C0,$00,$3C,$0F,$CF
            .byte $00,$00,$00,$00,$00,$00,$0F,$00
            .byte $00,$00,$00,$00,$00,$0F,$3F,$03
            .byte $C0,$00,$3C,$0F,$CF,$3C,$00,$F0
            .byte $00,$F0,$03,$CF,$3C,$03,$FC,$03
            .byte $FC,$03,$CF,$3F,$0F,$FF,$0F,$FF
            .byte $0F,$CF,$F3,$F0,$FF,$FF,$FF,$F0
            .byte $FC,$F3,$C0,$3F,$C0,$3F,$C0,$3C
            .byte $F3,$C0,$0F,$00,$0F,$00,$3C,$F3
            .byte $F0,$3C,$00,$03,$C0,$FC,$F0,$00
            .byte $00,$00,$00,$00,$00,$F0,$00,$00
            .byte $00,$00,$00,$00,$F3,$F0,$3C,$00
            .byte $03,$C0,$FC,$F3,$C0,$0F,$00,$0F
            .byte $00,$3C,$F3,$C0,$3F,$C0,$3F,$C0
            .byte $3C,$F3,$F0,$FF,$F0,$FF,$F0,$FC
            .byte $3F,$FC,$00,$FF,$FC,$03,$FF,$F0
            .byte $03,$FF,$CF,$0F,$F0,$00,$3F,$F0
            .byte $00,$FF,$C0,$00,$FF,$0F,$03,$F0
            .byte $00,$0F,$C0,$00,$3F,$00,$00,$FC
            .byte $0F,$03,$F0,$00,$0F,$00,$00,$0F
            .byte $00,$00,$FC,$0F,$03,$F0,$00,$0C
            .byte $00,$00,$03,$00,$00,$FC,$0F,$03
            .byte $FC,$00,$30,$00,$00,$00,$C0,$03
            .byte $FC,$0F,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$0F,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$0F
            .byte $03,$FC,$00,$3C,$00,$00,$03,$C0
            .byte $03,$FC,$0F,$03,$F0,$00,$0F,$00
            .byte $00,$0F,$00,$00,$FC,$0F,$03,$F0
            .byte $00,$0F,$C0,$00,$3F,$00,$00,$FC
            .byte $0F,$03,$F0,$00,$0F,$FC,$03,$FF
            .byte $00,$00,$FC,$0F,$0F,$F0,$00,$3F
            .byte $FF,$0F,$FF,$C0,$00,$FF,$0F,$3F
            .byte $FC,$00,$FF,$FF,$FF,$FF,$F0,$03
            .byte $FF,$CF,$F3,$FF,$C0,$0F,$FF,$C0
            .byte $3F,$FF,$00,$3F,$FC,$F0,$FF,$00
            .byte $03,$FF,$00,$0F,$FC,$00,$0F,$F0
            .byte $F0,$3F,$00,$00,$FC,$00,$03,$F0
            .byte $00,$0F,$C0,$F0,$3F,$00,$00,$F0
            .byte $00,$00,$F0,$00,$0F,$C0,$F0,$3F
            .byte $00,$00,$C0,$00,$00,$30,$00,$0F
            .byte $C0,$F0,$3F,$C0,$03,$00,$00,$00
            .byte $0C,$00,$3F,$C0,$F0,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$F0
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$F0,$3F,$C0,$03,$C0,$00
            .byte $00,$3C,$00,$3F,$C0,$F0,$3F,$00
            .byte $00,$F0,$00,$00,$F0,$00,$0F,$C0
            .byte $F0,$3F,$00,$00,$FC,$00,$03,$F0
            .byte $00,$0F,$C0,$F0,$3F,$00,$00,$FF
            .byte $C0,$3F,$F0,$00,$0F,$C0,$F0,$FF
            .byte $00,$03,$FF,$F0,$FF,$FC,$00,$0F
            .byte $F0,$F3,$FF,$C0,$0F,$FF,$FF,$FF
            .byte $FF,$00,$3F,$FC,$86,$A1,$86,$A1
            .byte $D3,$A1,$D3,$A1,$07,$0B,$17,$20
            .byte $A2,$20,$A2,$68,$A2,$68,$A2,$06
            .byte $0C,$15,$B0,$A2,$B0,$A2,$F8,$A2
            .byte $F8,$A2,$06,$0C,$15,$40,$A3,$40
            .byte $A3,$82,$A3,$82,$A3,$06,$0B,$16
            .byte $C4,$A3,$C4,$A3,$C7,$A3,$C7,$A3
            .byte $01,$03,$01,$CA,$A3,$CA,$A3,$DA
            .byte $A3,$DA,$A3,$02,$08,$03,$EA,$A3
            .byte $EA,$A3,$04,$A4,$04,$A4,$02,$0D
            .byte $05,$1E,$A4,$1E,$A4,$54,$A4,$54
            .byte $A4,$03,$12,$07,$8A,$A4,$8A,$A4
            .byte $EA,$A4,$EA,$A4,$04,$18,$0A,$4A
            .byte $A5,$4A,$A5,$4C,$A5,$4C,$A5,$01
            .byte $02,$02,$4E,$A5,$4E,$A5,$56,$A5
            .byte $56,$A5,$02,$04,$04,$5E,$A5,$5E
            .byte $A5,$6A,$A5,$6A,$A5,$02,$06,$06
            .byte $76,$A5,$76,$A5,$8E,$A5,$8E,$A5
            .byte $03,$08,$08,$A6,$A5,$A6,$A5,$CA
            .byte $A5,$CA,$A5,$03,$0C,$09,$EE,$A5
            .byte $EE,$A5,$26,$A6,$26,$A6,$04,$0E
            .byte $0C,$5E,$A6,$5E,$A6,$64,$A6,$64
            .byte $A6,$02,$03,$05,$6A,$A6,$6A,$A6
            .byte $74,$A6,$74,$A6,$02,$05,$06,$7E
            .byte $A6,$7E,$A6,$93,$A6,$93,$A6,$03
            .byte $07,$09,$A8,$A6,$A8,$A6,$D0,$A6
            .byte $D0,$A6,$04,$0A,$0C,$F8,$A6,$F8
            .byte $A6,$39,$A7,$39,$A7,$05,$0D,$10
            .byte $7A,$A7,$7A,$A7,$7C,$A7,$7C,$A7
            .byte $01,$02,$02,$7E,$A7,$7E,$A7,$90
            .byte $A7,$90,$A7,$02,$09,$03,$A2,$A7
            .byte $A2,$A7,$C2,$A7,$C2,$A7,$02,$10
            .byte $05,$E2,$A7,$E2,$A7,$24,$A8,$24
            .byte $A8,$03,$16,$07,$66,$A8,$66,$A8
            .byte $B7,$A8,$B7,$A8,$03,$1B,$08,$08
            .byte $A9,$08,$A9,$68,$A9,$68,$A9,$03
            .byte $20,$09,$C8,$A9,$C8,$A9,$68,$AA
            .byte $68,$AA,$04,$28,$0C,$08,$AB,$08
            .byte $AB,$0E,$AB,$0E,$AB,$02,$03,$03
            .byte $14,$AB,$14,$AB,$1D,$AB,$1D,$AB
            .byte $03,$03,$07,$26,$AB,$26,$AB,$49
            .byte $AB,$49,$AB,$05,$07,$10,$6C,$AB
            .byte $6C,$AB,$B2,$AB,$B2,$AB,$07,$0A
            .byte $1A,$F8,$AB,$F8,$AB,$92,$AC,$92
            .byte $AC,$0B,$0E,$2A,$87,$BB,$87,$BB
            .byte $88,$BB,$88,$BB,$01,$01,$01,$2C
            .byte $AD,$2C,$AD,$79,$AD,$79,$AD,$07
            .byte $0B,$C6,$AD,$C6,$AD,$0E,$AE,$0E
            .byte $AE,$06,$0C,$56,$AE,$56,$AE,$9E
            .byte $AE,$9E,$AE,$06,$0C,$E6,$AE,$E6
            .byte $AE,$28,$AF,$28,$AF,$06,$0B,$6A
            .byte $AF,$6A,$AF,$6D,$AF,$6D,$AF,$01
            .byte $03,$70,$AF,$70,$AF,$80,$AF,$80
            .byte $AF,$02,$08,$90,$AF,$90,$AF,$AA
            .byte $AF,$AA,$AF,$02,$0D,$C4,$AF,$C4
            .byte $AF,$FA,$AF,$FA,$AF,$03,$12,$30
            .byte $B0,$30,$B0,$90,$B0,$90,$B0,$04
            .byte $18,$F0,$B0,$F0,$B0,$F2,$B0,$F2
            .byte $B0,$01,$02,$F4,$B0,$F4,$B0,$FC
            .byte $B0,$FC,$B0,$02,$04,$04,$B1,$04
            .byte $B1,$10,$B1,$10,$B1,$02,$06,$1C
            .byte $B1,$1C,$B1,$34,$B1,$34,$B1,$03
            .byte $08,$4C,$B1,$4C,$B1,$70,$B1,$70
            .byte $B1,$03,$0C,$94,$B1,$94,$B1,$CC
            .byte $B1,$CC,$B1,$04,$0E,$04,$B2,$04
            .byte $B2,$0A,$B2,$0A,$B2,$02,$03,$10
            .byte $B2,$10,$B2,$1A,$B2,$1A,$B2,$02
            .byte $05,$24,$B2,$24,$B2,$39,$B2,$39
            .byte $B2,$03,$07,$4E,$B2,$4E,$B2,$76
            .byte $B2,$76,$B2,$04,$0A,$9E,$B2,$9E
            .byte $B2,$DF,$B2,$DF,$B2,$05,$0D,$20
            .byte $B3,$20,$B3,$22,$B3,$22,$B3,$01
            .byte $02,$24,$B3,$24,$B3,$36,$B3,$36
            .byte $B3,$02,$09,$48,$B3,$48,$B3,$68
            .byte $B3,$68,$B3,$02,$10,$88,$B3,$88
            .byte $B3,$CA,$B3,$CA,$B3,$03,$16,$0C
            .byte $B4,$0C,$B4,$5D,$B4,$5D,$B4,$03
            .byte $1B,$AE,$B4,$AE,$B4,$0E,$B5,$0E
            .byte $B5,$03,$20,$6E,$B5,$6E,$B5,$0E
            .byte $B6,$0E,$B6,$04,$28,$AE,$B6,$AE
            .byte $B6,$B4,$B6,$B4,$B6,$02,$03,$BA
            .byte $B6,$BA,$B6,$C3,$B6,$C3,$B6,$03
            .byte $03,$CC,$B6,$CC,$B6,$EF,$B6,$EF
            .byte $B6,$05,$07,$12,$B7,$12,$B7,$58
            .byte $B7,$58,$B7,$07,$0A,$9E,$B7,$9E
            .byte $B7,$38,$B8,$38,$B8,$0B,$0E,$89
            .byte $BB,$89,$BB,$8A,$BB,$8A,$BB,$01
            .byte $01,$80,$08,$3F,$F3,$7D,$BB,$BB
            .byte $BB,$BB,$BB,$BB,$BB,$BB,$BB,$BB
            .byte $06,$06,$07,$07,$07,$06,$07,$07
            .byte $07,$07,$07,$06,$07,$07,$07,$07
            .byte $07,$07,$07,$06,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$06,$06,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$06,$06,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $06,$06,$06,$07,$07,$07,$07,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $06,$06,$07,$07,$07,$07,$06,$07
            .byte $07,$07,$07,$07,$06,$07,$07,$07
            .byte $07,$07,$07,$07,$06,$07,$07,$07
            .byte $07,$07,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$3C,$66,$66,$66,$66
            .byte $66,$3C,$00,$18,$38,$18,$18,$18
            .byte $18,$3C,$00,$3C,$66,$06,$0C,$18
            .byte $30,$7E,$00,$3C,$66,$06,$1C,$06
            .byte $66,$3C,$00,$0C,$6C,$6C,$7E,$0C
            .byte $0C,$0C,$00,$7E,$60,$60,$7C,$06
            .byte $66,$3C,$00,$3C,$66,$60,$7C,$66
            .byte $66,$3C,$00,$7E,$06,$0C,$18,$18
            .byte $18,$18,$00,$3C,$66,$66,$3C,$66
            .byte $66,$3C,$00,$3C,$66,$66,$3E,$06
            .byte $06,$3C,$00,$3C,$66,$60,$60,$60
            .byte $66,$3C,$00,$7E,$60,$60,$78,$60
            .byte $60,$7E,$00,$7E,$60,$60,$78,$60
            .byte $60,$60,$00,$60,$60,$60,$60,$60
            .byte $60,$7E,$00,$3C,$66,$66,$66,$66
            .byte $66,$3C,$00,$7C,$66,$66,$7C,$78
            .byte $6C,$66,$00,$3C,$66,$60,$3C,$06
            .byte $66,$3C,$00,$66,$66,$66,$66,$66
            .byte $66,$3C,$00,$00,$18,$18,$00,$18
            .byte $18,$00,$10,$10,$38,$38,$6C,$FE
            .byte $FE,$D6,$00,$00,$00,$1C,$3E,$55
            .byte $3E,$00,$00,$00,$08,$08,$3E,$08
            .byte $08,$00,$00,$00,$08,$08,$3E,$08
            .byte $08,$00,$00,$FF,$00,$00,$00,$00
            .byte $00,$FF,$00,$FF,$00,$80,$80,$80
            .byte $00,$FF,$00,$FF,$00,$C0,$C0,$C0
            .byte $00,$FF,$00,$FF,$00,$E0,$E0,$E0
            .byte $00,$FF,$00,$FF,$00,$F0,$F0,$F0
            .byte $00,$FF,$00,$FF,$00,$F8,$F8,$F8
            .byte $00,$FF,$00,$FF,$00,$FC,$FC,$FC
            .byte $00,$FF,$00,$FF,$00,$FE,$FE,$FE
            .byte $00,$FF,$00,$FF,$00,$FF,$FF,$FF
            .byte $00,$FF,$08,$06,$15,$11,$91,$50
            .byte $55,$55,$00,$00,$90,$98,$56,$55
            .byte $14,$55,$00,$00,$20,$58,$56,$46
            .byte $41,$51,$00,$00,$00,$00,$00,$00
            .byte $80,$54,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$0A,$05
            .byte $15,$55,$00,$00,$00,$00,$06,$85
            .byte $65,$55,$00,$00,$01,$05,$15,$95
            .byte $41,$55,$20,$68,$56,$15,$05,$45
            .byte $41,$55,$00,$00,$00,$80,$61,$65
            .byte $15,$55,$00,$00,$00,$00,$A2,$65
            .byte $15,$55,$00,$00,$00,$00,$00,$80
            .byte $60,$54,$00,$00,$00,$00,$00,$00
            .byte $00,$01,$00,$00,$00,$01,$05,$14
            .byte $55,$55,$00,$00,$80,$A1,$59,$55
            .byte $14,$05,$02,$01,$85,$64,$64,$55
            .byte $55,$54,$80,$A0,$68,$54,$16,$45
            .byte $55,$55,$00,$00,$00,$00,$00,$00
            .byte $40,$40,$00,$00,$02,$01,$05,$05
            .byte $15,$55,$20,$1A,$96,$55,$59,$16
            .byte $05,$45,$00,$00,$A0,$58,$55,$51
            .byte $95,$55,$00,$0A,$15,$55,$51,$50
            .byte $54,$55,$80,$40,$61,$55,$54,$54
            .byte $44,$55,$00,$80,$A0,$68,$59,$56
            .byte $15,$15,$00,$00,$28,$5A,$55,$55
            .byte $45,$41,$00,$00,$00,$00,$00,$80
            .byte $50,$55,$00,$00,$00,$00,$00,$05
            .byte $55,$55,$00,$00,$0A,$16,$56,$45
            .byte $51,$55,$00,$00,$00,$00,$00,$80
            .byte $58,$55,$00,$00,$00,$00,$00,$00
            .byte $40,$50,$00,$00,$00,$00,$00,$00
            .byte $00,$05,$00,$00,$00,$00,$08,$16
            .byte $55,$55,$00,$00,$00,$00,$08,$16
            .byte $55,$51,$00,$00,$00,$00,$00,$00
            .byte $00,$41,$0A,$15,$15,$11,$50,$50
            .byte $51,$55,$80,$A0,$58,$56,$56,$56
            .byte $15,$55,$00,$00,$08,$16,$55,$51
            .byte $54,$55,$00,$00,$00,$80,$90,$58
            .byte $56,$15,$00,$00,$00,$00,$20,$50
            .byte $58,$55,$00,$00,$00,$00,$01,$01
            .byte $05,$15,$00,$20,$68,$56,$56,$05
            .byte $41,$51,$00,$28,$56,$56,$46,$51
            .byte $51,$55,$00,$00,$00,$00,$80,$40
            .byte $60,$51,$00,$00,$00,$00,$05,$14
            .byte $55,$55,$00,$00,$00,$A0,$5A,$55
            .byte $15,$54,$4B,$45,$4E,$20,$4A,$4F
            .byte $52,$44,$41,$4E,$20,$3D,$32,$31
            .byte $33,$2D,$37,$36,$36,$2D,$36,$35
            .byte $31,$33,$70,$70,$70,$70,$70,$70
            .byte $70,$70,$70,$70,$70,$70,$70,$47
            .byte $AE,$BE,$41,$88,$BE,$70,$70,$70
            .byte $70,$70,$70,$70,$70,$70,$70,$70
            .byte $70,$70,$47,$00,$20,$41,$9B,$BE
            .byte $00,$00,$00,$00,$00,$27,$21,$2D
            .byte $25,$00,$2F,$36,$25,$32,$00,$00
            .byte $00,$00,$00,$00
LBEC2:      lda SKSTAT
            and #$04
            bne LBEEB
            lda KBCODE
            cmp #$1C
            beq LBEEC
            cmp #$27
            bne LBEEB
            jsr LBEFE
            ldx #$04
LBED9:      jsr LBEF3
            cmp LBF06,X
            bne LBEEB
            jsr LBEFE
            dex
            bpl LBED9
            lda #$FF
            sta L00AD
LBEEB:      rts
LBEEC:      lda SKSTAT
            and #$04
            beq LBEEC
LBEF3:      lda SKSTAT
            and #$04
            bne LBEF3
            lda KBCODE
            rts
LBEFE:      lda SKSTAT
            and #$04
            beq LBEFE
            rts
LBF06:      .byte $01,$21,$23,$2A
            ora L00AD
            ora (BOOT),Y
            pha
            lda #$40
            sta NMIEN
            lda #$E0
            sta L0903
            lda #$9B
            sta L0900
            lda #$BE
            sta L0901
            lda #$00
            sta L0915
            tax
LBF29:      sta AUDF1,X
            inx
            cpx #$08
            bne LBF29
            lda #$00
            tax
LBF34:      sta L2000,X
            dex
            bne LBF34
            ldx #$07
LBF3C:      lda LBF7A,X
            sta L2005,X
            dex
            bpl LBF3C
            lda L00AE
            and #$03
            clc
            adc #$10
            sta L200D
            lda L00AE
            lsr
            lsr
            clc
            adc #$10
            sta L200B
            lda #$00
            sta DELTAC+1
LBF5D:      lda DELTAC+1
            cmp #$80
            sta L0911
            bne LBF5D
            lda #$A2
            sta L0900
            lda #$A0
            sta L0901
            pla
            sta L0911
            lda #$BC
            sta L0903
            rts
LBF7A:      .byte $2C,$25,$36,$25,$2C,$00,$00,$0E
            .byte $D0,$F8,$20,$48,$70,$98,$C0,$E8
            .byte $10,$38,$60,$88,$B0,$D8,$00,$28
            .byte $50,$78,$A0,$C8,$F0,$18,$40,$68
            .byte $90,$B8,$E0,$08,$30,$58,$80,$A8
            .byte $D0,$F8,$20,$48,$70,$98,$C0,$E8
            .byte $10,$38,$60,$88,$B0,$D8,$00,$28
            .byte $50,$78,$A0,$C8,$F0,$18,$40,$68
            .byte $90,$B8,$E0,$08,$30,$58,$80,$A8
            .byte $D0,$F8,$20,$48,$70,$98,$C0,$E8
            .byte $10,$38,$60,$88,$B0,$D8,$00,$28
            .byte $50,$00,$28,$50,$78,$A0,$C8,$F0
            .byte $18,$40,$68,$90,$B8,$E0,$08,$30
            .byte $58,$80,$A8,$D0,$F8,$20,$48,$70
            .byte $98,$C0,$E8,$10,$38,$60,$88,$B0
            .byte $D8,$00,$28,$50,$78,$A0,$C8,$F0
            .byte $00,$80,$00,$80,$00,$80
;
            ORG $02E2
;
            .word L8000
;
         
