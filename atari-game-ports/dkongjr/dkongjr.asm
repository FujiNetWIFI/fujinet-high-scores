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
L0086       = $0086
L0087       = $0087
L0088       = $0088
L0089       = $0089
L008A       = $008A
L008B       = $008B
L008C       = $008C
L0090       = $0090
L0094       = $0094
L0095       = $0095
L0096       = $0096
L009A       = $009A
L009B       = $009B
L009C       = $009C
L009D       = $009D
L009E       = $009E
L00A0       = $00A0
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
L00BD       = $00BD
L00BE       = $00BE
L00BF       = $00BF
L00C0       = $00C0
L00C3       = $00C3
L00C4       = $00C4
L00CA       = $00CA
L00CC       = $00CC
L00CD       = $00CD
L00CE       = $00CE
L00CF       = $00CF
L00DA       = $00DA
L00DB       = $00DB
L00DC       = $00DC
L00DD       = $00DD
L00DE       = $00DE
L00E2       = $00E2
L00ED       = $00ED
L00FC       = $00FC
L00FD       = $00FD
L00FE       = $00FE
L00FF       = $00FF
L0400       = $0400
L0401       = $0401
L0402       = $0402
L0403       = $0403
L0404       = $0404
L0405       = $0405
L0406       = $0406
L0407       = $0407
L0408       = $0408
L0409       = $0409
L040A       = $040A
L040B       = $040B
L040C       = $040C
L040D       = $040D
L040E       = $040E
L040F       = $040F
L0410       = $0410
L0411       = $0411
L0412       = $0412
L0413       = $0413
L0414       = $0414
L0421       = $0421
L0427       = $0427
L0436       = $0436
L0445       = $0445
L0454       = $0454
L0463       = $0463
L0472       = $0472
L0481       = $0481
L0490       = $0490
L049F       = $049F
L04AE       = $04AE
L04BD       = $04BD
L04CB       = $04CB
L04CC       = $04CC
L04CD       = $04CD
L0D90       = $0D90
L0D91       = $0D91
L0D92       = $0D92
L0D93       = $0D93
L0DD8       = $0DD8
L0EDD       = $0EDD
L0EDE       = $0EDE
L0EDF       = $0EDF
L0EE0       = $0EE0
L0EE1       = $0EE1
L0EE2       = $0EE2
L0EE3       = $0EE3
L0EE4       = $0EE4
L0EE6       = $0EE6
L0EE7       = $0EE7
L0EEE       = $0EEE
L0EEF       = $0EEF
L1000       = $1000
L101B       = $101B
L1029       = $1029
L102B       = $102B
L1036       = $1036
L1044       = $1044
L1046       = $1046
L1051       = $1051
L106C       = $106C
L1087       = $1087
L10D8       = $10D8
L1129       = $1129
L1141       = $1141
L1144       = $1144
L1155       = $1155
L1181       = $1181
L11AD       = $11AD
L11D9       = $11D9
L1205       = $1205
L1231       = $1231
L124C       = $124C
L124F       = $124F
L125E       = $125E
L128B       = $128B
L12B8       = $12B8
L12E4       = $12E4
L1310       = $1310
L135B       = $135B
L137A       = $137A
L1399       = $1399
L13B8       = $13B8
L13D7       = $13D7
L13F6       = $13F6
L1800       = $1800
L1801       = $1801
L1808       = $1808
L1817       = $1817
L1818       = $1818
L181F       = $181F
L196E       = $196E
L1996       = $1996
L2838       = $2838
L28F8       = $28F8
L2978       = $2978
L3048       = $3048
L3420       = $3420
L3520       = $3520
L3720       = $3720
L37E3       = $37E3
L37E4       = $37E4
L37E5       = $37E5
L37E6       = $37E6
L37E7       = $37E7
L37E8       = $37E8
L37EC       = $37EC
L37ED       = $37ED
L37F3       = $37F3
L37F5       = $37F5
L37F9       = $37F9
L3800       = $3800
L3801       = $3801
L3807       = $3807
L380C       = $380C
L380D       = $380D
L3815       = $3815
L3819       = $3819
L3820       = $3820
L3821       = $3821
L3827       = $3827
L3835       = $3835
L3839       = $3839
L383F       = $383F
L3840       = $3840
L3841       = $3841
L3847       = $3847
L3855       = $3855
L385C       = $385C
L385D       = $385D
L3860       = $3860
L3861       = $3861
L3867       = $3867
L3868       = $3868
L3869       = $3869
L386A       = $386A
L3880       = $3880
L3888       = $3888
L3889       = $3889
L388A       = $388A
L38ED       = $38ED
L3900       = $3900
L391B       = $391B
L392A       = $392A
L39B1       = $39B1
L39E0       = $39E0
L3B8A       = $3B8A
L3B9A       = $3B9A
L3BB7       = $3BB7
L3BB8       = $3BB8
L3BD7       = $3BD7
L3BD8       = $3BD8
L4848       = $4848
L679B       = $679B
L837A       = $837A
L842F       = $842F
L8D01       = $8D01
L8D17       = $8D17
L8E0B       = $8E0B
L91E7       = $91E7
L927E       = $927E
L9348       = $9348
LC0B5       = $C0B5
LC913       = $C913
LDBC1       = $DBC1
LDBC2       = $DBC2
LDBC5       = $DBC5
LFC29       = $FC29
;
; Start of code
;
            ORG $2020
;
            .byte $46,$69,$6C,$65,$76,$65,$72,$73
            .byte $69,$6F,$6E,$20,$62,$79,$20,$48
            .byte $4F,$4D,$45,$53,$4F,$46,$54,$20
            .byte $3A,$20,$20
;
            ORG $0244
;
            .byte $01
;
            ORG $D301
;
            .byte $FF
;
            ORG $8000
;
L8000:      jsr L8070
L8003:      jsr L80DD
            ldx L008B
            bne L800E
            lda #$00
            sta L008A
L800E:      ldx L00A5
            lda L0089,X
            bne L801E
            txa
            eor #$01
            tax
            sta L00A5
            lda L0089,X
            beq L8003
L801E:      jsr L8167
            ldx L00A5
            dec L0089,X
            lda L008B
            beq L800E
            txa
            eor #$01
            sta L00A5
            jmp L800E
            .byte $70,$70,$50,$44,$E0,$37,$04,$04
            .byte $04,$84,$04,$04,$04,$04,$04,$84
            .byte $04,$04,$04,$04,$04,$04,$84,$04
            .byte $04,$04,$04,$84,$04,$04,$41,$31
            .byte $80,$70,$70,$50,$44,$E0,$37,$04
            .byte $04,$04,$84,$04,$04,$84,$70,$07
            .byte $70,$87,$70,$02,$70,$02,$70,$82
            .byte $70,$02,$70,$02,$41,$52,$80
L8070:      jsr LB3AB
            lda #$00
            sta LOMEM
            sta ROWAC+1
            lda #$38
            sta PMBASE
            lda #$31
            sta GPRIOR
            ldx #$08
L8085:      lda L80D4,X
            sta PCOLR0,X
            dex
            bpl L8085
            jsr L8ED2
            jsr LA72F
            lda #$03
            sta GRACTL
            lda #$8E
            sta VDSLST+1
            lda #$53
            sta VDSLST
            lda #$07
            ldy #$22
            ldx #$8D
            jsr SETVBV
            lda #$C0
            sta NMIEN
            lda #$34
            sta CHBAS
            ldx #$00
            stx L008B
            stx L00A6
            stx SAVADR
            inx
            stx LOMEM
            stx L0086
            lda #$40
            sta POKMSK
            sta IRQEN
            ldx #$0D
L80CC:      lda #$C0
L80CE:      sta L008C,X
            dex
            bpl L80CE
            rts
L80D4:      bit ZCHAIN
            bit ZCHAIN
            rol
            ror L8644
            .byte $00
L80DD:      ldx #$08
            lda #$00
L80E1:      sta L009E,X
            dex
            bpl L80E1
            lda #$03
            sta L0089
            sta L008A
            sta LOGCOL
            jsr LBBD1
            jsr L8252
            jsr L819F
L80F7:      jsr L8207
            lda L008B
            clc
            adc #$11
            sta L391B
            lda L0086
            sta L0087
            sta L0088
            clc
            adc #$10
            sta L392A
            lda STRIG0
            and STRIG1
            beq L811F
            jsr L8143
            beq L80F7
            cmp #$06
            bne L8123
L811F:      ldx #$09
            bne L80CC
L8123:      cmp #$03
            bne L8135
            inc L0086
            lda L0086
            cmp #$05
            bcc L80F7
            lda #$00
            sta L0086
            beq L80F7
L8135:      cmp #$05
            bne L80F7
            dec L008B
            bpl L80F7
            lda #$01
            sta L008B
            bne L80F7
L8143:      jsr L815C
            beq L815B
            pha
L8149:      jsr L815C
            bne L8149
            lda RTCLOK+2
            adc #$03
L8152:      cmp RTCLOK+2
            bne L8152
            lda #$00
            sta ATRACT
            pla
L815B:      rts
L815C:      lda #$08
            sta CONSOL
            lda CONSOL
            cmp #$07
            rts
L8167:      jsr L8187
            jsr L819F
            lda #$00
            sta LOMEM+1
            sta L0082
            sta L0083
L8175:      lda LOMEM+1
            bne L8186
            jsr L81B9
            lda L0082
            beq L8175
            jsr L821D
            jmp L8167
L8186:      rts
L8187:      ldy L00A5
            ldx L00A3,Y
            bne L8190
            jmp L8264
L8190:      dex
            bne L8196
            jmp L8285
L8196:      dex
            bne L819C
            jmp L829D
L819C:      jmp L82B8
L819F:      ldy L00A5
            ldx L00A3,Y
            lda L81B5,X
            sta BUFCNT
            tax
            lda L101B,X
            sta ADRESS+1
            lda #$10
            sta ADRESS
            jmp L9A4C
L81B5:      .byte $00,$0A,$0B,$16
L81B9:      .byte $20,$43,$81,$F0,$0C
            lda #$00
            sta L0089
            sta L008A
            ldx L00A5
            inc L0089,X
            inc LOMEM+1
            ldy #$05
            ldx #$01
L81CE:      lda L008C,Y
            and #$01
            beq L81DD
            lda L009E,X
            bmi L81DD
            inc L0089,X
            dec L009E,X
L81DD:      ldy #$01
            dex
            bpl L81CE
            ldy #$00
            jsr L81E9
            ldy #$04
L81E9:      ldx #$00
L81EB:      lda L008C,Y
            cmp L0096,X
            bcc L81FA
            bne L81FB
            iny
            inx
            cpx #$04
            bne L81EB
L81FA:      rts
L81FB:      lda L008C,Y
            sta L0096,X
            iny
            inx
            cpx #$04
            bne L81FB
            rts
L8207:      ldy L0087
            lda L8218,Y
            sta L0084
            sta L0085
            ldx #$00
            jsr L823B
            sta L00A4
            rts
L8218:      .byte $00,$01,$03,$06,$09
L821D:      ldx L00A5
            inc L0084,X
            lda L0084,X
            cmp #$0D
            bcc L822B
            lda #$09
            sta L0084,X
L822B:      tay
            lda L8245,Y
            bpl L823B
            inc L0087,X
            lda #$09
            cmp L0087,X
            bcs L823B
            sta L0087,X
L823B:      ldy L0084,X
            lda L8245,Y
            and #$03
            sta L00A3,X
            rts
L8245:      .byte $80,$80,$01,$80,$02,$01,$80,$03
            .byte $01,$80,$02,$03,$01
L8252:      jsr L82D6
            ldx #$00
            stx ROWAC+1
            jsr L87BC
            ldx #$06
            jsr L87BC
            jmp L8276
L8264:      jsr L82D6
            ldx #$00
            jsr L87BC
            ldx #$02
            stx ROWAC+1
            jsr L87BC
            jsr L8EFA
L8276:      jsr L8334
            jsr LBBD1
L827C:      lda #$12
            sta L0EE4
            sta L0408
            rts
L8285:      jsr L82D6
            ldx #$01
            jsr LB887
            ldx #$03
            stx ROWAC+1
            jsr L87BC
            jsr L8F75
            jsr L8334
            jmp LBB7D
L829D:      jsr L83C0
            ldx #$00
            jsr L87BC
            ldx #$04
            stx ROWAC+1
            jsr L87BC
            jsr L8FE5
            jsr L8334
            lda #$07
            sta L0404
            rts
L82B8:      jsr L82D6
            ldx #$02
            jsr LB887
            ldx #$01
            stx ROWAC+1
            jsr L87BC
            ldx #$05
            jsr L87BC
            jsr L902A
            jsr L8334
            inc L0410
            rts
L82D6:      jsr LBBD1
            ldy #$01
            sty LOMEM
            dey
            sty SDMCTL
            sty ABUFPT+2
            lda #$3F
            sta ABUFPT+3
            ldx #$09
            tya
L82EA:      sta (ABUFPT+2),Y
            dey
            bne L82EA
            dec ABUFPT+3
            dex
            bpl L82EA
            inx
            jsr LB887
            jsr L8342
            jsr L8ED2
            ldy L00A5
            lda L0087,Y
            cmp #$05
            bcc L8309
            lda #$05
L8309:      tax
            lda L8328,X
            sta L00A2
            lda L832E,X
            sta L0094
            lda #$C0
            sta L0095
            lda #$01
            ldx L00A3,Y
            dex
            bne L8321
            lda #$0D
L8321:      sta DELTAC+1
            lda #$38
            sta KEYDEF
            rts
L8328:      .byte $28,$32,$3C,$46,$50,$5A
L832E:      .byte $C4,$C5,$C6,$C7,$C8,$C9
L8334:      .byte $A9,$00
            sta LOMEM
            sta L00FE
            lda #$3D
            sta SDMCTL
            sta L00FD
            rts
L8342:      lda #$00
            sta ABUFPT+2
            lda #$34
            sta ABUFPT+3
            ldx #$0D
            lda #$AA
L834E:      ldy L83A2,X
            cpy #$60
            beq L835B
            cpy #$68
            beq L835B
            sta (ABUFPT+2),Y
L835B:      inc ABUFPT+3
            sta (ABUFPT+2),Y
            dec ABUFPT+3
            dex
            bpl L834E
            ldx #$0F
            stx ICHIDZ
L8368:      lda #$FC
            sta ICDNOZ
            lda #$02
            sta ICCOMZ
            jsr L8381
            lda #$3F
            sta ICDNOZ
            lda #$80
            sta ICCOMZ
            jsr L8381
            bpl L8368
            rts
L8381:      ldx ICHIDZ
            ldy L83B0,X
            ldx #$07
L8388:      jsr L8399
            inc ABUFPT+3
            jsr L8399
            dec ABUFPT+3
            iny
            dex
            bpl L8388
            dec ICHIDZ
            rts
L8399:      lda (ABUFPT+2),Y
            and ICDNOZ
            ora ICCOMZ
            sta (ABUFPT+2),Y
            rts
L83A2:      .byte $20,$28,$40,$48,$60,$68,$70,$AF
            .byte $B7,$BF,$DF,$E7,$EF,$FF
L83B0:      jsr L3048
            cli
            rts
            bvs L842F
            dey
            bcc L837A
            ldy #$D0
            tay
            cld
            clv
            inx
L83C0:      jsr L82D6
            lda #$00
            sta ROWAC+1
            ldx #$05
L83C9:      sta L00AB,X
            dex
            bpl L83C9
            lda #$FF
            sta L3BB7
            sta L3BB8
            sta L3BD7
            sta L3BD8
            ldx #$10
L83DE:      sta L3B8A,X
            dex
            bpl L83DE
            lda #$F0
            ldx #$08
L83E8:      sta L3B9A,X
            dex
            bpl L83E8
            lda #$60
            sta L00A8
            lda #$78
            sta L00A9
            lda #$8C
            sta L00AA
            lda #$86
            sta L1029
            lda #$71
            sta L102B
            lda #$94
            sta L1044
            lda #$7A
            sta L1046
            lda #$57
            sta L1141
            lda #$77
            sta L1144
            lda #$5C
            sta L124C
            lda #$7C
            sta L124F
            rts
L8423:      dec L00AB
            bpl L842A
            jsr L84AF
L842A:      dec L00AC
            bpl L8431
            jsr L8513
L8431:      dec L00AD
            bpl L8438
            jsr L8548
L8438:      jsr L8589
            jsr L873D
            lda LOMEM+1
            ora L0082
            ora FMSZPG+2
            bne L8456
            lda RTCLOK+2
            and #$7F
            bne L8473
            dec L00A2
            bpl L8457
            inc L00A2
            lda #$1E
            sta MLTTMP+1
L8456:      rts
L8457:      lda L00A2
            cmp #$0A
            bne L8465
            jsr LBBD1
            lda #$60
            sta L0407
L8465:      dec L0095
            lda L0095
            cmp #$C0
            bcs L8473
            lda #$C9
            sta L0095
            dec L0094
L8473:      rts
L8474:      sty ICAX2Z
            lda L849D,Y
            jsr L8493
            lda #$1F
            sta DELTAR
            ldy ICAX2Z
            lda L84A3,Y
            sta L009A
            lda L84A9,Y
            sta L009B
            lda #$68
            sta L009C
            sta L009D
            rts
L8493:      ldy L00A5
            clc
            adc L00A0,Y
            sta L00A0,Y
            rts
L849D:      .byte $10,$0C,$08,$04,$02,$01
L84A3:      .byte $63,$63,$00,$00,$00,$00
L84A9:      .byte $66,$64,$67,$65,$64,$63
L84AF:      lda #$06
            sta L00AB
            bit L00AE
            lda MLTTMP+1
            beq L84DF
            cmp #$09
            bcs L84DF
            cmp #$02
            beq L84C5
            cmp #$08
            bne L84D1
L84C5:      lda BUFCNT
            cmp #$1B
            beq L84DB
            cmp #$1E
            beq L84DB
            bne L84DF
L84D1:      lda BUFCNT
            cmp #$18
            beq L84DB
            cmp #$1B
            bne L84DF
L84DB:      bvc L84FA
            inc ADRESS+1
L84DF:      bvc L84FC
            inc L1141
            inc L1144
            inc L124C
            inc L124F
            inc L00A8
            lda L00A8
            cmp #$78
            bcc L84F9
            lda #$00
            sta L00AE
L84F9:      rts
L84FA:      dec ADRESS+1
L84FC:      dec L1141
            dec L1144
            dec L124C
            dec L124F
            dec L00A8
            lda L00A8
            cmp #$61
            bcs L84F9
            dec L00AE
            rts
L8513:      lda #$07
            sta L00AC
            bit L00AF
            lda BUFCNT
            cmp #$10
            bne L8522
            jsr L857D
L8522:      bvc L8537
            inc L00A9
            inc L102B
            inc L1046
            lda L00A9
            cmp #$84
            bcc L856B
            lda #$00
            sta L00AF
            rts
L8537:      dec L00A9
            dec L102B
            dec L1046
            lda L00A9
            cmp #$79
            bcs L856B
            dec L00AF
            rts
L8548:      lda #$08
            sta L00AD
            bit L00B0
            lda BUFCNT
            cmp #$0E
            bne L8557
            jsr L857D
L8557:      bvc L856C
            inc L00AA
            inc L1029
            inc L1044
            lda L00AA
            cmp #$98
            bcc L856B
            lda #$00
            sta L00B0
L856B:      rts
L856C:      dec L00AA
            dec L1029
            dec L1044
            lda L00AA
            cmp #$8D
            bcs L856B
            dec L00B0
            rts
L857D:      lda MLTTMP+1
            bne L856B
            bvc L8586
            inc ADRESS+1
            rts
L8586:      dec ADRESS+1
            rts
L8589:      lda MLTTMP+1
            cmp #$10
            bcc L8590
            rts
L8590:      lda MLTTMP
            sec
            sbc #$21
            and #$F8
            sta COLAC+1
            lda #$00
            sta ENDPT
            asl COLAC+1
            rol ENDPT
            asl COLAC+1
            rol ENDPT
            lda ADRESS+1
            sec
            sbc #$3D
            lsr
            lsr
            clc
            adc COLAC+1
            sta COLAC+1
            lda #$38
            adc ENDPT
            sta ENDPT
            ldy #$00
            lda FKDEF+1
            beq L85C1
            inc PALNTS
            bne L85C3
L85C1:      sty PALNTS
L85C3:      sty FKDEF+1
            lda #$00
            sta ICBALZ
            ldx #$05
            lda MLTTMP+1
            beq L85E1
            cmp #$06
            bcs L85E1
            ldx #$01
            lda MLTTMP
            and #$07
            cmp #$02
            bcs L85E1
            inc ICBALZ
            ldx #$04
L85E1:      cpx #$02
            bne L85E9
            lda ICBALZ
            bne L85F3
L85E9:      ldy L861D,X
            stx ICSTAZ
            jsr L8623
            ldx ICSTAZ
L85F3:      dex
            bpl L85E1
            lda DELTAC
            beq L85FD
            dec DELTAC
            rts
L85FD:      lda MLTTMP+1
            and #$FC
            cmp #$0C
            bne L861C
            ldy #$5F
            ldx #$04
L8609:      lda (COLAC+1),Y
            and #$40
            beq L8618
            ldy #$3C
            sta DELTAC
            ldy #$05
            jmp L8474
L8618:      iny
            dex
            bpl L8609
L861C:      rts
L861D:      .byte $00,$01,$02,$20,$21,$22
L8623:      lda (COLAC+1),Y
            beq L8650
            sta ICHIDZ
            tya
            clc
            adc COLAC+1
            bcs L8637
            bmi L8637
            lda ENDPT
            and #$03
            beq L8650
L8637:      lda ICHIDZ
            and #$40
            beq L8651
            lda #$01
            sta FKDEF+1
            ldy PALNTS
            iny
L8644:      cpy LOGCOL
            bne L8650
            lda COLAC
            bne L8650
            lda #$1E
            sta MLTTMP+1
L8650:      rts
L8651:      lda ICHIDZ
            and #$70
            bne L865E
            lda FMSZPG+3
            bne L8650
            jmp L86C2
L865E:      ldy L00A5
            lda L00A3,Y
            cmp #$01
            bne L8650
            lda ICHIDZ
            and #$FC
            cmp #$A8
            bne L8650
            ldx #$05
            lda ADRESS+1
L8673:      cmp L867E,X
            beq L8684
            bcs L8688
            dex
            bpl L8673
            rts
L867E:      .byte $00,$62,$6F,$7B,$87,$97
L8684:      jsr L8688
            dex
L8688:      txa
            asl
            tay
            lda L0414,Y
            sta ABUFPT+2
            lda L0413,Y
            ror ABUFPT+2
            ror
            ror ABUFPT+2
            ror
            and #$F8
            clc
            adc #$2F
            cmp MLTTMP
            bcc L86C1
            sec
            sbc #$11
            ldy MLTTMP+1
            cpy #$05
            bcc L86AE
            sec
            sbc #$05
L86AE:      cmp MLTTMP
            bcs L86C1
            clc
            adc #$0C
            cmp MLTTMP
            bcc L86BE
            inc L0421,X
            bne L86C1
L86BE:      dec L0421,X
L86C1:      rts
L86C2:      ldy L00A5
            ldx L00A3,Y
            beq L8708
            dex
            beq L86FA
            dex
            beq L86E4
            lda MLTTMP
            cmp #$6D
            bcs L86D8
            lda #$0B
            bne L8726
L86D8:      cmp #$95
            bcs L86E0
            lda #$0C
            bne L8726
L86E0:      lda #$0D
            bne L8726
L86E4:      lda ADRESS+1
            cmp #$5F
            bcs L86EE
            lda #$0B
            bne L8726
L86EE:      cmp #$77
            bcs L86F6
            lda #$0C
            bne L8726
L86F6:      lda #$0D
            bne L8726
L86FA:      lda ADRESS+1
            cmp #$7B
            bcs L8704
            lda #$0C
            bne L8726
L8704:      lda #$0D
            bne L8726
L8708:      lda ADRESS+1
            cmp #$5F
            bcs L8712
            lda #$0A
            bne L8726
L8712:      cmp #$78
            bcs L871A
            lda #$0B
            bne L8726
L871A:      lda MLTTMP
            cmp #$77
            bcs L8724
            lda #$0D
            bne L8726
L8724:      lda #$0C
L8726:      ldy L0083
            bne L873C
            sta FMSZPG+3
            ldy #$03
            sty L0083
            sty FKDEF
            ldy #$03
            jsr L8474
            lda #$10
            sta L0406
L873C:      rts
L873D:      lda FMSZPG+3
            bne L877C
            lda MLTTMP
            cmp #$2C
            bcs L877D
            lda L37F3
            cmp #$50
            bne L877C
            lda MLTTMP+1
            cmp #$02
            bne L8766
            lda BUFCNT
            cmp #$0D
            bne L875E
            lda #$09
            bne L8726
L875E:      cmp #$24
            bne L877C
            lda #$0A
            bne L8726
L8766:      cmp #$04
            bne L877C
            lda BUFCNT
            cmp #$0C
            bne L8774
            lda #$09
            bne L8726
L8774:      cmp #$25
            bne L877C
            lda #$0A
            bne L8726
L877C:      rts
L877D:      cmp #$5D
            bcc L877C
            cmp #$6A
            bcs L879C
            lda L38ED
            cmp #$0C
            bne L877C
            lda MLTTMP+1
            cmp #$06
            bne L877C
            lda BUFCNT
            cmp #$04
            bne L877C
            lda #$0B
            bne L8726
L879C:      cmp #$8B
            bcc L877C
            cmp #$93
            bcs L877C
            lda L39B1
            cmp #$08
            bne L877C
            lda MLTTMP+1
            cmp #$08
            bne L877C
            lda BUFCNT
            cmp #$06
            bne L877C
            lda #$0C
            jmp L8726
L87BC:      lda L8938,X
            sta ICAX3Z
            lda L8941,X
            sta ICAX4Z
L87C6:      jsr L88EB
            tax
            beq L87D2
            jsr L883C
            jmp L87C6
L87D2:      rts
L87D3:      jsr L88FB
L87D6:      jsr L890C
            ldy BFENHI
            dey
            lda ICAX6Z
L87DE:      sta (BUFRHI),Y
            dey
            bpl L87DE
            dec ICAX5Z
            bne L87D6
            rts
L87E8:      jsr L88F6
L87EB:      jsr L890C
            ldy BFENHI
            dey
            lda STATUS
            sta (BUFRHI),Y
            dey
            lda ICAX6Z
L87F8:      sta (BUFRHI),Y
            dey
            bpl L87F8
            dec ICAX5Z
            bne L87EB
            rts
L8802:      jsr L88FB
L8805:      jsr L890C
            ldy #$00
            ldx BFENHI
L880C:      lda ICAX6Z
            sta (BUFRHI),Y
            jsr L8920
            dex
            bne L880C
            dec ICAX5Z
            bne L8805
            rts
L881B:      jsr L88F6
L881E:      jsr L890C
            ldx BFENHI
            ldy #$00
L8825:      lda (BUFRHI),Y
            bne L882D
            lda ICAX6Z
            bne L882F
L882D:      lda STATUS
L882F:      sta (BUFRHI),Y
            jsr L8920
            dex
            bne L8825
            dec ICAX5Z
            bne L881E
            rts
L883C:      tax
            and #$0F
            sta ICAX5Z
            txa
            and #$F0
            asl
            asl
            bcs L8853
            asl
            bcs L884F
            beq L87D3
            bne L87E8
L884F:      beq L8802
            bne L881B
L8853:      asl
            bcs L885A
            beq L885E
            bne L8873
L885A:      beq L888E
            bne L88C9
L885E:      jsr L88DA
L8861:      jsr L8901
            ldy BFENHI
            dey
L8867:      lda (CHKSUM),Y
            sta (BUFRHI),Y
            dey
            bpl L8867
            dec ICAX5Z
            bne L8861
            rts
L8873:      jsr L88DA
L8876:      jsr L8901
            ldx #$00
            ldy #$00
L887D:      lda (CHKSUM),Y
            sta (BUFRHI,X)
            jsr L8920
            iny
            cpy BFENHI
            bne L887D
            dec ICAX5Z
            bne L8876
            rts
L888E:      jsr L88F6
            lda STATUS
            tax
            and #$0F
            sta LTEMP
            txa
            and #$F0
            lsr
            lsr
            lsr
            lsr
            sta BUFRFL
L88A1:      lda ICAX6Z
            sta XMTDON
            lda LTEMP
            sta LTEMP+1
            lda BUFRFL
            sta RECVDN
            jsr L8901
L88B0:      ldy #$00
L88B2:      lda XMTDON
            sta (BUFRHI),Y
            inc XMTDON
            iny
            cpy BUFRFL
            bne L88B2
            jsr L8920
            dec LTEMP+1
            bne L88B0
            dec ICAX5Z
            bne L88A1
            rts
L88C9:      jsr L88FB
L88CC:      jsr L8901
            ldy #$00
            lda ICAX6Z
            sta (BUFRHI),Y
            dec ICAX5Z
            bne L88CC
            rts
L88DA:      jsr L88EB
            sta BFENHI
            lda ICAX3Z
            sta CHKSUM
            lda ICAX4Z
            sta BUFRLO
            jsr L892C
            rts
L88EB:      ldy #$00
            lda (ICAX3Z),Y
            inc ICAX3Z
            bne L88F5
            inc ICAX4Z
L88F5:      rts
L88F6:      jsr L88EB
            sta STATUS
L88FB:      jsr L88EB
            sta ICAX6Z
            rts
L8901:      jsr L88EB
            sta BUFRHI
            jsr L88EB
            sta BFENLO
            rts
L890C:      jsr L8901
            lda BFENLO
            tax
            lsr
            lsr
            lsr
            sta BFENHI
            txa
            and #$03
            clc
            adc #$38
            sta BFENLO
            rts
L8920:      lda BUFRHI
            clc
            adc #$20
            sta BUFRHI
            bcc L892B
            inc BFENLO
L892B:      rts
L892C:      lda BFENHI
            clc
            adc ICAX3Z
            sta ICAX3Z
            bcc L8937
            inc ICAX4Z
L8937:      rts
L8938:      .byte $4A,$5D,$69,$CC,$3B,$D8,$49,$C8
            .byte $CE
L8941:      .byte $89,$89,$89,$89,$8A,$8A,$8B,$8A
            .byte $8A,$11,$5E,$5A,$48,$20,$72,$58
            .byte $7B,$38,$7E,$38,$51,$04,$58,$58
            .byte $58,$59,$F4,$37,$61,$22,$D4,$EC
            .byte $37,$51,$02,$58,$59,$2D,$38,$00
            .byte $15,$2A,$10,$A1,$A0,$D4,$38,$46
            .byte $29,$B9,$39,$06,$3A,$11,$26,$23
            .byte $E1,$42,$01,$24,$E9,$C2,$39,$3C
            .byte $29,$9B,$68,$9E,$68,$A2,$78,$A5
            .byte $70,$AE,$68,$B2,$40,$D5,$60,$D8
            .byte $50,$48,$51,$44,$03,$21,$1F,$1E
            .byte $9A,$3A,$AC,$3A,$B5,$3A,$D1,$3A
            .byte $44,$03,$2C,$2B,$2D,$BB,$3A,$CD
            .byte $3A,$D6,$3A,$DB,$3A,$43,$03,$27
            .byte $25,$28,$ED,$3A,$F6,$3A,$FB,$3A
            .byte $44,$02,$20,$22,$9D,$3A,$AF,$3A
            .byte $B8,$3A,$D3,$3A,$41,$02,$27,$28
            .byte $F2,$3A,$00,$22,$26,$E2,$80,$FE
            .byte $80,$28,$27,$E6,$68,$E9,$68,$EC
            .byte $68,$EF,$68,$F2,$68,$F5,$68,$F8
            .byte $68,$FB,$68,$6A,$32,$AC,$A1,$38
            .byte $A4,$38,$A7,$38,$AA,$38,$AD,$38
            .byte $B0,$38,$B3,$38,$B6,$38,$B9,$38
            .byte $BC,$38,$6A,$31,$AC,$E1,$3A,$E4
            .byte $3A,$E7,$3A,$EA,$3A,$ED,$3A,$F0
            .byte $3A,$F3,$3A,$F6,$3A,$F9,$3A,$FC
            .byte $3A,$66,$23,$A0,$85,$38,$8B,$38
            .byte $8E,$38,$91,$38,$94,$38,$9A,$38
            .byte $66,$22,$A8,$25,$3A,$2B,$3A,$2E
            .byte $3A,$31,$3A,$34,$3A,$3A,$3A,$72
            .byte $AC,$BF,$38,$FF,$3A,$71,$AF,$DF
            .byte $38,$00,$12,$2A,$10,$A1,$A8,$B8
            .byte $18,$01,$BD,$87,$B9,$01,$25,$E1
            .byte $FA,$02,$24,$E7,$3A,$F2,$4A,$06
            .byte $2B,$41,$2A,$61,$2A,$81,$2A,$C1
            .byte $32,$CF,$1A,$DB,$2A,$48,$03,$21
            .byte $2F,$22,$43,$39,$42,$39,$BB,$39
            .byte $25,$3A,$A5,$3A,$AD,$3A,$B0,$3A
            .byte $BA,$3A,$05,$1E,$21,$32,$A1,$32
            .byte $AF,$1A,$BB,$2A,$BD,$11,$3B,$3C
            .byte $29,$9B,$28,$9E,$28,$A3,$20,$A6
            .byte $48,$A9,$30,$AC,$20,$AF,$28,$B2
            .byte $20,$B5,$38,$B8,$20,$DF,$21,$33
            .byte $20,$2D,$44,$39,$BE,$41,$26,$22
            .byte $21,$2B,$DD,$39,$22,$2E,$63,$19
            .byte $DC,$21,$22,$2C,$C3,$19,$5C,$1A
            .byte $41,$04,$30,$31,$31,$32,$37,$3A
            .byte $71,$3F,$B5,$38,$71,$3E,$BF,$39
            .byte $51,$03,$1F,$2C,$27,$AE,$3A,$61
            .byte $33,$33,$A9,$3A,$00,$61,$31,$33
            .byte $C9,$3A,$01,$00,$A9,$1A,$00,$24
            .byte $A9,$02,$61,$05,$61,$9B,$88,$9E
            .byte $88,$18,$A5,$A4,$A1,$50,$C3,$18
            .byte $C8,$90,$88,$91,$9C,$19,$23,$1A
            .byte $28,$92,$C8,$92,$14,$AB,$A2,$E3
            .byte $18,$E8,$90,$BC,$19,$43,$1A,$01
            .byte $A2,$E1,$2A,$01,$DC,$48,$18,$13
            .byte $AA,$A8,$A9,$89,$49,$8A,$E9,$8A
            .byte $36,$A1,$A0,$E9,$28,$ED,$28,$F3
            .byte $28,$F7,$28,$C8,$19,$78,$1A,$57
            .byte $02,$A3,$A6,$C2,$38,$C7,$38,$87
            .byte $39,$9B,$39,$22,$3A,$27,$3A,$C7
            .byte $3A,$73,$A7,$A8,$39,$48,$3A,$E8
            .byte $3A,$73,$AB,$B9,$39,$59,$3A,$F9
            .byte $3A,$72,$DD,$7B,$38,$7E,$38,$00
            .byte $12,$2A,$10,$A1,$98,$D4,$38,$22
            .byte $29,$9B,$18,$9E,$18,$41,$12,$24
            .byte $2F,$2E,$2B,$25,$39,$00,$2B,$2F
            .byte $2E,$27,$00,$2A,$35,$2E,$29,$2F
            .byte $32,$E1,$38,$41,$0B,$22,$39,$00
            .byte $2E,$29,$2E,$34,$25,$2E,$24,$2F
            .byte $F8,$38,$41,$25,$30,$32,$25,$33
            .byte $33,$00,$B3,$B4,$A1,$B2,$B4,$00
            .byte $26,$2F,$32,$00,$11,$00,$30,$2C
            .byte $21,$39,$25,$32,$00,$2C,$25,$36
            .byte $25,$2C,$00,$11,$00,$27,$21,$2D
            .byte $25,$0B,$39,$41,$23,$30,$32,$25
            .byte $33,$33,$00,$B3,$A5,$AC,$A5,$A3
            .byte $B4,$00,$34,$2F,$00,$23,$28,$21
            .byte $2E,$27,$25,$00,$03,$00,$2F,$26
            .byte $00,$30,$2C,$21,$39,$25,$32,$33
            .byte $33,$39,$41,$25,$30,$32,$25,$33
            .byte $33,$00,$AF,$B0,$B4,$A9,$AF,$AE
            .byte $00,$34,$2F,$00,$23,$28,$21,$2E
            .byte $27,$25,$00,$33,$34,$21,$32,$34
            .byte $29,$2E,$27,$00,$2C,$25,$36,$25
            .byte $2C,$5B,$39,$41,$17,$08,$23,$09
            .byte $00,$11,$19,$18,$12,$0C,$00,$11
            .byte $19,$18,$13,$00,$2E,$29,$2E,$34
            .byte $25,$2E,$24,$2F,$89,$39,$41,$13
            .byte $61,$6C,$6C,$00,$72,$69,$67,$68
            .byte $74,$73,$00,$72,$65,$73,$65,$72
            .byte $76,$65,$64,$B3,$39,$00
L8C27:      ldy #$03
            ldx L00A5
            beq L8C2F
            ldy #$07
L8C2F:      lda L00A0,X
            beq L8C49
            dec L00A0,X
            tya
            tax
            ldy #$03
L8C39:      inc L008C,X
            lda L008C,X
            cmp #$CA
            bcc L8C49
            lda #$C0
            sta L008C,X
            dex
            dey
            bpl L8C39
L8C49:      ldx #$0A
L8C4B:      lda L8CF6,X
            sta L37F5,X
            lda L8D01,X
            sta L3815,X
            lda L8D0C,X
            sta L3835,X
            lda L8D17,X
            sta L3855,X
            dex
            bpl L8C4B
            ldx #$03
L8C68:      lda L0096,X
            sta L37F9,X
            lda L008C,X
            sta L3819,X
            lda L0090,X
            sta L3839,X
            dex
            bpl L8C68
            lda L0094
            sta L385C
            lda L0095
            sta L385D
            ldx L00A5
            lda L0087,X
            clc
            adc #$C0
            sta L383F
            ldy #$5F
            lda L0089,X
            tax
            lda #$60
            dex
            beq L8CB3
            dex
            beq L8CAD
            dex
            beq L8CA7
            dex
            bne L8CB3
            sty L37E3
            sta L37E4
L8CA7:      sty L37E5
            sta L37E6
L8CAD:      sty L37E7
            sta L37E8
L8CB3:      ldy #$51
            ldx KEYDEF+1
            dex
            bne L8CBC
            ldy #$46
L8CBC:      ldx #$03
            dec DELTAR
            bpl L8CC7
            inc DELTAR
            jmp L8CD6
L8CC7:      lda FTYPE
            beq L8CD6
L8CCB:      lda L009A,X
            sta L3800,Y
            dey
            dex
            bpl L8CCB
            bmi L8CDF
L8CD6:      lda #$00
L8CD8:      sta L3800,Y
            dey
            dex
            bpl L8CD8
L8CDF:      ldy #$1E
            ldx #$09
            lda L00A5
            beq L8CE9
            ldy #$3E
L8CE9:      lda #$7F
            and L3800,Y
            sta L3800,Y
            dey
            dex
            bpl L8CE9
            rts
L8CF6:      dex
            sbc (L00E2,X)
            .byte $DB
            cpy #$C0
            cpy #$C0
            cpy #$C0
            ldy #$CA
            dec LDBC1
            cpy #$C0
            cpy #$C0
            cpy #$C0
            .byte $CF
L8D0C:      dex
            dec LDBC2
            cpy #$C0
            cpy #$C0
            cpy #$C0
            cmp (L00CA,X)
            .byte $CB
            cpy #$CC
            cmp LDBC5
            cmp L00C0
            cpy #$C0
            lda KEYDEF+1
            cmp #$03
            bne L8D39
            lda RTCLOK+2
            and #$03
            bne L8D39
            ldx #$0A
L8D30:      lda L00CF,X
            eor #$04
            sta L00CF,X
            dex
            bpl L8D30
L8D39:      jsr LA4D2
            lda #$03
            sta SKCTL
            lda #$80
            sta SDLSTH
            lda #$31
            ldx ROWAC+1
            bne L8D4E
            lda #$52
L8D4E:      sta SDLSTL
            lda #$00
            ldx #$03
L8D55:      sta HPOSM0,X
            dex
            bpl L8D55
            sta ENDPT+1
            ldx PORTA
            inx
            bne L8D6B
            lda STRIG0
            and STRIG1
            bne L8D6D
L8D6B:      sta ATRACT
L8D6D:      ldy ATRACT
            bpl L8D89
            sta COLBK
            sta COLPF2
            sta COLPF3
            lda COLOR0
            eor COLRSH
            and DRKMSK
            ldx #$03
L8D83:      sta COLPM0,X
            dex
            bpl L8D83
L8D89:      lda LOMEM
            bne L8DCB
            inc LOMEM
            ldx CH
            ldy #$FF
            sty CH
            cpx #$21
            bne L8DA1
            inc L00A6
            beq L8DA1
            sty L00A6
L8DA1:      jsr L8DCE
            lda L00A6
            beq L8DB4
            ldx #$08
            lda #$00
L8DAC:      sta AUDF1,X
            dex
            bpl L8DAC
            bmi L8DC7
L8DB4:      jsr L975E
            lda ROWAC+1
            beq L8DC4
            jsr L9A08
            jsr L8423
            jsr L90AE
L8DC4:      jsr LB909
L8DC7:      lda #$00
            sta LOMEM
L8DCB:      jmp XITVBV
L8DCE:      ldy NOCKSM
            bne L8DE9
            txa
            inx
            beq L8DE3
            ldx BPTR
            cmp L8E06,X
            bne L8DE4
            dec BPTR
            bpl L8DE3
            inc NOCKSM
L8DE3:      rts
L8DE4:      lda #$04
            sta BPTR
            rts
L8DE9:      ldy #$00
            lda #$01
            cpx #$05
            bne L8DF3
            sta COLAC
L8DF3:      cpx #$0D
            bne L8DF9
            sty COLAC
L8DF9:      cpx #$3E
            bne L8DFF
            sta L0082
L8DFF:      cpx #$08
            bne L8E05
            sty NOCKSM
L8E05:      rts
L8E06:      .byte $7F
            adc L4848,X
            eor L00A5,X
            .byte $7A
            cmp #$02
            bne L8E2A
            lda ATRACT
            bmi L8E1A
            lda #$58
            sta COLPF3
L8E1A:      lda #$FF
            sta SIZEM
            lda L00A9
            sta HPOSM1
            clc
            adc #$02
            sta HPOSM3
L8E2A:      lda MLTTMP
            cmp #$94
            bcs L8E33
            jsr LA6E8
L8E33:      jmp L8E81
L8E36:      lda L00A7
            bne L8E81
L8E3A:      lda #$30
            sta CHBASE
            lda ATRACT
            bmi L8E4D
            lda #$2A
            sta COLPF0
            lda #$8C
            sta COLPF1
L8E4D:      jsr L8C27
            jmp L8E81
            pha
            txa
            pha
            tya
            pha
            ldx ENDPT+1
            beq L8E36
            dex
            beq L8E86
            dex
            beq L8E0B
            lda L00A7
            beq L8E70
            ldx #$07
L8E68:      stx WSYNC
            dex
            bpl L8E68
            bmi L8E3A
L8E70:      lda KEYDEF+1
            cmp #$02
            bne L8E81
            lda L00AA
            sta HPOSM1
            clc
            adc #$08
            sta HPOSM3
L8E81:      inc ENDPT+1
            jmp XITVBV
L8E86:      lda ROWAC+1
            bne L8EA2
            lda #$E0
            sta CHBASE
            lda #$3E
            sta DMACLT
            lda ATRACT
            bmi L8EA2
            lda #$CA
            sta COLPF0
            lda #$00
            sta COLPF2
L8EA2:      lda KEYDEF+1
            cmp #$02
            bne L8EC6
            lda ATRACT
            bmi L8EB6
            lda #$DA
            sta COLPF0
            lda #$38
            sta COLPF3
L8EB6:      lda #$00
            sta SIZEM
            lda L00A8
            sta HPOSM1
            clc
            adc #$20
            sta HPOSM3
L8EC6:      lda MLTTMP
            cmp #$94
            bcc L8ECF
            jsr LA6E8
L8ECF:      jmp L8E81
L8ED2:      lda #$00
            tax
L8ED5:      sta L0427,X
            dex
            bne L8ED5
            ldx #$3C
L8EDD:      sta L00B1,X
            dex
            bne L8EDD
            ldx #$0E
            lda #$01
L8EE6:      sta L00ED,X
            dex
            bpl L8EE6
            lda #$00
            sta L00FE
            sta FMSZPG+2
            sta FMSZPG+3
            sta FMSZPG+5
            lda #$06
            sta FTYPE
            rts
L8EFA:      ldx #$0E
L8EFC:      lda L8F4A,X
            sta L00B1,X
            lda L8F3B,X
            sta L00C0,X
            lda L8F58,X
            sta L04BD,X
            sta L00CF,X
            lda L8F67,X
            sta L00DE,X
            dex
            bpl L8EFC
            lda SWPFLG
            cmp #$02
            bcs L8F26
            lda #$00
            sta L00C3
            sta L00C4
            lda #$A0
            bne L8F38
L8F26:      cmp #$03
            bcs L8F2E
            lda #$80
            bne L8F38
L8F2E:      cmp #$04
            bcs L8F36
            lda #$60
            bne L8F38
L8F36:      lda #$50
L8F38:      sta DSTAT
            rts
L8F3B:      .byte $39,$38,$38,$38,$38,$00,$00,$00
            .byte $00,$37,$38,$38,$39,$39,$00
L8F4A:      .byte $27,$B3,$9A,$80,$B4,$00,$00,$00
            .byte $00,$F3,$C4,$ED,$B1,$14
L8F58:      .byte $02,$03,$04,$01,$03,$00,$00,$00
            .byte $00,$53,$07,$0F,$0B,$07,$17
L8F67:      .byte $11,$11,$11,$11,$11,$00,$00,$00
            .byte $00,$10,$10,$10,$10,$10
L8F75:      ldx #$0B
            lda #$01
L8F79:      sta L0481,X
            dex
            cpx #$04
            bne L8F79
            ldx #$04
            lda SWPFLG
            cmp #$04
            bcs L8F8A
            tax
L8F8A:      lda L8FE0,X
            sta DSTAT
            ldx #$04
            lda SWPFLG
            cmp #$02
            bcs L8F99
            ldx #$03
L8F99:      lda #$38
            sta L00C0,X
            txa
            asl
            clc
            adc #$85
            sta L00B1,X
            lda #$05
            sta L00DE,X
            dex
            bpl L8F99
            lda #$39
            sta L00CC
            sta L00CD
            lda #$68
            sta L00BD
            lda #$77
            sta L00BE
            lda #$0F
            sta L00DB
            sta L00DC
            lda #$17
            sta L00DD
            ldx #$13
            lda #$00
L8FC7:      cpx #$0C
            bcs L8FCE
            lda L8FD5,X
L8FCE:      sta L0413,X
            dex
            bpl L8FC7
            rts
L8FD5:      .byte $25,$3A,$2B,$3A,$2E,$3A,$31,$3A
            .byte $34,$3A,$3A
L8FE0:      .byte $3A,$C0,$A0,$80,$60
L8FE5:      lda SWPFLG
            cmp #$03
            bcs L8FEF
            lda #$70
            bne L8FF9
L8FEF:      cmp #$05
            bcs L8FF7
            lda #$60
            bne L8FF9
L8FF7:      lda #$50
L8FF9:      sta DSTAT
            ldx #$0E
            ldy #$05
L8FFF:      lda L9020,Y
            sta L00B1,X
            lda L901B,Y
            sta L00C0,X
            lda L9024,Y
            sta L00CF,X
            lda #$10
            sta L00DE,X
            lda #$01
            sta L0481,Y
            dex
            dey
            bne L8FFF
L901B:      rts
            .byte $37,$38,$38,$39
L9020:      .byte $00,$F3,$C5,$CB
L9024:      .byte $54,$53,$07,$0F,$07,$17
L902A:      ldx #$0E
L902C:      lda L908E,X
            sta L00B1,X
            lda L907F,X
            sta L00C0,X
            lda L909C,X
            sta L00DE,X
            lda L90A7,X
            sta L04AE,X
            dex
            bpl L902C
            lda #$C0
            sta DSTAT
            ldx #$0A
L904A:      lda #$4B
            sta L00CF,X
            lda #$05
            sta L04CC,X
            dex
            cpx #$04
            bne L904A
L9058:      lda #$43
            sta L00CF,X
            lda #$06
            sta L04CC,X
            dex
            bpl L9058
            ldy #$03
            sty L04CC
            lda SWPFLG
            cmp #$04
            bcc L9072
            sty L04CD
L9072:      lda #$0F
            sta L00DA
            sta L00DB
            sta L00DC
            lda #$17
            sta L00DD
            rts
L907F:      .byte $38,$39,$3A,$3A,$3A,$3A,$3A,$00
            .byte $00,$00,$00,$39,$39,$3A,$00
L908E:      .byte $BA,$66,$0A,$1A,$A6,$11,$AE,$00
            .byte $00,$00,$00,$0E,$B1,$4E
L909C:      .byte $93,$11,$93,$93,$11,$11,$13,$00
            .byte $00,$00,$00
L90A7:      .byte $15,$14,$05,$15,$14,$14,$14
L90AE:      ldx #$0E
L90B0:      lda L00C0,X
            sta L0472,X
            lda L00B1,X
            sta L0463,X
            lda L00DE,X
            sta L049F,X
            lda L0481,X
            sta L0490,X
            dex
            bpl L90B0
            lda ZCHAIN+1
            beq L90CE
            dec ZCHAIN+1
L90CE:      lda KEYDEF+1
            lsr
            bne L90F8
            bcs L911F
            lda FMSZPG+2
            bne L90F5
            ldx #$08
L90DB:      jsr L9182
            jsr L9157
            dex
            cpx #$04
            bne L90DB
L90E6:      jsr L91C5
            jsr L9157
            dex
            bpl L90E6
            jsr L9211
            jsr L966A
L90F5:      jmp L9729
L90F8:      bcc L913F
            lda FMSZPG+2
            bne L911C
            ldx #$0A
L9100:      jsr L94B8
            dex
            cpx #$07
            bne L9100
L9108:      jsr L94F5
            dex
            cpx #$04
            bne L9108
L9110:      jsr L947F
            dex
            bpl L9110
            jsr L9211
            jsr L96B5
L911C:      jmp L9729
L911F:      lda FMSZPG+2
            bne L913C
            ldx #$0B
L9125:      jsr L9316
            dex
            cpx #$04
            bne L9125
L912D:      jsr L92EB
            jsr L9157
            dex
            bpl L912D
            jsr L9211
            jsr L9687
L913C:      jmp L9729
L913F:      lda FMSZPG+2
            bne L9154
            ldx #$05
L9145:      jsr L9320
            dex
            bne L9145
            jsr L9445
            jsr L9211
            jsr L96A8
L9154:      jmp L9729
L9157:      lda L00DE,X
            and #$0F
            lsr
            tay
            bcc L9176
            lda L9166,Y
            ldy #$01
            bne L917B
L9166:      .byte $76,$7C,$79,$7F,$F6,$FC,$F9,$FF
L916E:      .byte $6F,$67,$73,$6B,$EF,$E7,$F3,$EB
L9176:      lda L916E,Y
            ldy #$00
L917B:      sta L00CF,X
            tya
            sta L0481,X
            rts
L9182:      dec L00ED,X
            bne L9198
            jsr L9199
            lda L00DE,X
            and #$01
L918D:      beq L9194
            lda #$0A
            sta L00ED,X
            rts
L9194:      lda #$06
            sta L00ED,X
L9198:      rts
L9199:      lda L00DE,X
            and #$10
            bne L91A2
            jmp L9244
L91A2:      dec L04AE,X
            bne L91B3
            lda L00DE,X
            and #$01
            beq L91B0
            jmp L927E
L91B0:      jmp L9663
L91B3:      lda #$93
            cmp L00B1,X
            bne L91C2
            lda #$38
            cmp L00C0,X
            bne L91C2
            jmp L929A
L91C2:      jmp L92CB
L91C5:      dec L00ED,X
            bne L9210
            lda L00DE,X
            and #$10
            bne L91D2
            jmp L91E7
L91D2:      jsr L9537
            jmp L91D8
L91D8:      lda L00DE,X
            and #$03
            tay
            lda L91E3,Y
            sta L00ED,X
            rts
L91E3:      clc
            bpl L91F1
            bpl L918D
            .byte $4B
            beq L91ED
            dec ZCHAIN+1
L91ED:      lda SWPFLG
            cmp #$04
L91F1:      bcc L9210
            lda #$01
            sta L04BD,X
L91F8:      lda #$11
            sta L00DE,X
            lda #$10
            sta L00ED,X
L9200:      lda #$8B
            sta L00B1,X
L9204:      lda #$38
            sta L00C0,X
            lda DSTAT
            sta ZCHAIN+1
            lda #$00
            sta L00FC
L9210:      rts
L9211:      ldx FMSZPG+3
            beq L9243
            lda L00ED,X
            beq L921C
            dec L00ED,X
            rts
L921C:      lda #$02
            sta L00ED,X
            lda L00C0,X
            beq L9243
            sta FMSZPG+5
            lda L00B1,X
            sta FMSZPG+4
            jsr L929A
            lda L00C0,X
            cmp #$3B
            bcc L9243
            lda #$00
            sta FKDEF
            sta L00C0,X
            sta L00DE,X
            sta FMSZPG+3
            sta FMSZPG+1
            sta FMSZPG+5
            sta L0083
L9243:      rts
L9244:      lda SWPFLG
            beq L9254
            lda ZCHAIN+1
            beq L9255
            cmp #$10
            bcs L9254
            lda #$01
            sta L00FC
L9254:      rts
L9255:      lda RANDOM
            and #$07
            tay
            dey
            bmi L9255
            cpy L00FF
            beq L9255
            sty L00FF
            lda #$19
            cpy #$02
            bcs L926C
            lda #$1B
L926C:      sta L00DE,X
            lda L9277,Y
            sta L04AE,X
            jmp L9200
L9277:      .byte $0B,$08,$03,$07,$0B
            asl LB511
            dec LFC29,X
            ora #$02
            sta L00DE,X
            lda #$13
            sta L04AE,X
            rts
L928C:      lda #$01
            jsr L92DE
L9291:      lda #$01
            bne L929C
L9295:      lda #$02
            jsr L92DE
L929A:      lda #$20
L929C:      clc
            adc L00B1,X
            sta L00B1,X
            bcc L92A5
            inc L00C0,X
L92A5:      rts
L92A6:      lda #$03
            jsr L92DE
L92AB:      lda #$01
            bne L92B6
L92AF:      lda #$00
            jsr L92DE
L92B4:      lda #$20
L92B6:      sta ABUFPT+2
            lda L00B1,X
            sec
            sbc ABUFPT+2
            sta L00B1,X
            bcs L92A5
            dec L00C0,X
            rts
L92C4:      lda L00DE,X
            eor #$02
            sta L00DE,X
            rts
L92CB:      lda L00DE,X
            eor #$04
            sta L00DE,X
            and #$03
            beq L92B4
            tay
            dey
            beq L9291
            dey
            beq L929A
            bne L92AB
L92DE:      sta ABUFPT+2
            lda L00DE,X
            and #$FC
            eor #$04
            ora ABUFPT+2
            sta L00DE,X
            rts
L92EB:      dec L00ED,X
            bne L92F5
            jsr L92F6
            jsr L91D8
L92F5:      rts
L92F6:      lda L00B1,X
            ldy L00C0,X
            bne L9305
            lda SWPFLG
            cmp #$04
            bcc L92F5
            jmp L91E7
L9305:      cmp #$60
            bmi L930D
            cpy #$3A
            bpl L92AF
L930D:      sta ABUFPT+2
            sty ABUFPT+3
            ldy #$05
            jmp L9545
L9316:      dec L00ED,X
            bne L9335
            jsr L9348
            jmp L9327
L9320:      dec L00ED,X
            bne L9335
            jsr L93E9
L9327:      lda L00DE,X
            and #$01
            bne L9331
            lda #$08
            bne L9333
L9331:      lda #$08
L9333:      sta L00ED,X
L9335:      lda L00DE,X
            and #$07
            tay
            lda L9340,Y
            sta L00CF,X
            rts
L9340:      .byte $D2,$D5,$D2,$DB,$D2,$D8,$D2
            dec LC0B5,X
            beq L93B1
            cmp #$38
            bne L9359
            lda L00B1,X
            cmp #$9D
            bne L9359
            jmp L93C6
L9359:      lda L00C0,X
            cmp #$3A
            bne L937D
            lda L00B1,X
            cmp #$62
            bne L9368
            jmp L9663
L9368:      cmp #$82
            bne L936F
            jmp L9663
L936F:      cmp #$A2
            bne L9376
            jmp L9663
L9376:      cmp #$42
            bne L937D
            jmp L9663
L937D:      dec L04AE,X
            bne L93AE
            lda L00DE,X
            tay
            and #$01
            beq L9396
            tya
            eor #$20
            and #$FC
            ora #$02
            sta L00DE,X
            lda #$05
            bne L93AB
L9396:      tya
            and #$20
            beq L93A2
            tya
            and #$FC
            ora #$01
            bne L93A7
L93A2:      tya
            and #$FC
            ora #$03
L93A7:      sta L00DE,X
            lda #$1C
L93AB:      sta L04AE,X
L93AE:      jmp L92CB
L93B1:      lda ZCHAIN+1
            beq L93BE
            cmp #$10
            bcs L93BD
            lda #$01
            sta L00FC
L93BD:      rts
L93BE:      lda #$FF
            sta L04AE,X
            jmp L91F8
L93C6:      jsr L93D9
            ldy SWPFLG
            cpy #$01
            bne L93D1
            and #$01
L93D1:      ora #$04
            sta L04AE,X
            jmp L92CB
L93D9:      lda #$1A
            sta L00DE,X
L93DD:      lda RANDOM
            and #$03
            cmp L00FF
            beq L93DD
            sta L00FF
            rts
L93E9:      lda L00C0,X
            beq L93B1
            cmp #$38
            bne L9408
            lda L00B1,X
            cmp #$95
            bne L9408
            jsr L93D9
            clc
            adc #$02
            sta L04AE,X
            lda #$26
            sta L0403
            jmp L92CB
L9408:      dec L04AE,X
            beq L9410
            jmp L92CB
L9410:      lda L00DE,X
            and #$01
            beq L9419
            jmp L9663
L9419:      lda #$15
            sta L04AE,X
            lda #$FB
            sta L00DE,X
            lda RANDOM
            bmi L9442
            lda L00C0
            bne L9442
            lda L00C0,X
            sta L00C0
            lda L00B1,X
            sta L00B1
            inc L00B1
            lda #$12
            sta L00DE
            lda #$08
            sta L04AE
            lda #$08
            sta L00ED
L9442:      jmp L92CB
L9445:      ldx #$00
            dec L00ED
            bne L947E
            lda #$08
            sta L00ED
            lda L00C0
            beq L947E
            cmp #$39
            bne L9463
            lda L00B1
            cmp #$F6
            bne L9463
            lda #$63
            ldy #$01
            bne L9467
L9463:      lda #$60
            ldy #$FF
L9467:      sta L00CF
            sty L0481
            lda L00C0
            cmp #$3A
            bne L947B
            lda L00B1
            cmp #$16
            bne L947B
            jmp L9663
L947B:      jmp L929A
L947E:      rts
L947F:      lda L00C0,X
            bne L9484
            rts
L9484:      dec L00ED,X
            beq L9489
            rts
L9489:      lda L04CC,X
            sta L00ED,X
            dec L04AE,X
            beq L9496
            jmp L92CB
L9496:      lda L00DE,X
            tay
            bmi L949D
            iny
            iny
L949D:      dey
            and #$FC
            sta ABUFPT+2
            tya
            and #$03
            ora ABUFPT+2
            sta L00DE,X
            ldy #$02
            and #$01
            beq L94B1
            ldy #$13
L94B1:      tya
            sta L04AE,X
            jmp L92CB
L94B8:      lda L00DE,X
            and #$10
            bne L94E6
            lda CHKSNT
            bne L94C3
            rts
L94C3:      and #$03
            tay
            lda L9656,Y
            sta L00B1,X
            lda L9614,Y
            and #$03
            ora #$38
            sta L00C0,X
            lda #$00
            sta L0472,X
            sta CHKSNT
            lda #$12
            sta L00DE,X
            lda #$05
            sta L00ED,X
            jmp L92CB
L94E6:      lda L00C0,X
            cmp #$39
            bne L94F5
            lda L00B1,X
            cmp #$A7
            bne L94F5
            jmp L9663
L94F5:      dec L00ED,X
            beq L94FA
            rts
L94FA:      lda #$05
            sta L00ED,X
            lda L00C0,X
            beq L9517
            ldy L00B1,X
            cpy #$E6
            bne L950F
            cmp #$3A
            bne L950F
            jmp L9663
L950F:      sty ABUFPT+2
            sta ABUFPT+3
            ldy #$06
            bne L9545
L9517:      lda ZCHAIN+1
            beq L9524
            cmp #$10
            bcs L9523
            lda #$01
            sta L00FC
L9523:      rts
L9524:      lda #$AB
            sta L00B1,X
            lda L00DE,X
            ora #$11
            eor #$08
            sta L00DE,X
            lda #$05
            sta L00ED,X
            jmp L9204
L9537:      ldy L04BD,X
            lda L00B1,X
            sta ABUFPT+2
            lda L00C0,X
            bne L9543
            rts
L9543:      sta ABUFPT+3
L9545:      lda L9620,Y
            sta ICHIDZ
            dec ICHIDZ
            lda L9621,Y
            tay
L9550:      sty ICDNOZ
            lda ABUFPT+2
            cmp L9628,Y
            bne L9564
            lda L95E6,Y
            and #$03
            ora #$38
            cmp ABUFPT+3
            beq L956C
L9564:      dey
            cpy ICHIDZ
            bne L9550
            jmp L92CB
L956C:      lda L95E6,Y
            bmi L9580
            lsr
            lsr
            sta ABUFPT+2
            lda L00DE,X
            and #$FC
            ora ABUFPT+2
            sta L00DE,X
            jmp L92CB
L9580:      and #$F0
            cmp #$F0
            beq L95CD
            ldy #$00
            sty ABUFPT+2
            sty ABUFPT+3
            iny
            asl
            beq L9596
            sty ABUFPT+2
            bpl L9596
            sty ABUFPT+3
L9596:      lda L00DE,X
            and #$03
            lsr
            bcs L95AB
            ldy ABUFPT+3
            bne L95A8
            lda RTCLOK+2
            bmi L95A8
            jmp L928C
L95A8:      jmp L92A6
L95AB:      lda RANDOM
            and #$F0
            bne L95B5
            jmp L92C4
L95B5:      bmi L95BE
            lda ABUFPT+3
            bne L95A8
L95BB:      jmp L92CB
L95BE:      lda ABUFPT+2
            beq L95C7
            lda RANDOM
            bmi L95CA
L95C7:      jmp L9295
L95CA:      jmp L92AF
L95CD:      lda RTCLOK+2
            and #$03
            beq L95C7
            lda ICDNOZ
            tay
            and #$01
            sta ICDNOZ
            tya
            and #$10
            lsr
            lsr
            lsr
            ora ICDNOZ
            sta CHKSNT
            bne L95BB
L95E6:      .byte $04,$80,$80,$80,$80,$0C,$02,$02
            .byte $02,$01,$05,$81,$0D,$05,$A1,$0D
            .byte $02,$04,$80,$80,$0C,$02,$01,$08
            .byte $08,$05,$A1,$E1,$02,$02,$04,$80
            .byte $80,$80,$80,$80,$80,$80,$80,$0C
            .byte $08,$0C,$09,$05,$0A,$0E
L9614:      .byte $0A,$F0,$F0,$F0,$08,$09,$0A,$0D
            .byte $0D,$0D,$0D,$06
L9620:      .byte $0E
L9621:      .byte $00,$0A,$11,$17,$1E,$28,$3B
L9628:      .byte $80,$81,$84,$8D,$91,$92,$61,$44
            .byte $2D,$91,$25,$27,$29,$E5,$E7,$EA
            .byte $67,$B3,$B4,$B7,$B9,$34,$F7,$9A
            .byte $9D,$98,$9A,$9D,$1A,$1D,$82,$85
            .byte $88,$8B,$8E,$91,$94,$97,$9A,$9C
            .byte $B9,$F9,$66,$A6,$19,$59
L9656:      .byte $A6,$F7,$F2,$ED,$E8,$A7,$58,$77
            .byte $72,$6D,$68,$07,$B8
L9663:      lda #$00
            sta L00DE,X
            sta L00C0,X
            rts
L966A:      ldx #$08
L966C:      lda L00C0,X
            beq L9683
            lda L00DE,X
            and #$01
            beq L967C
            jsr L96C6
            jmp L967F
L967C:      jsr L96D3
L967F:      lda L00C0,X
            beq L9686
L9683:      dex
            bpl L966C
L9686:      rts
L9687:      ldx #$0B
L9689:      lda L00C0,X
            beq L9694
            jsr L96C6
            lda L00C0,X
            beq L96A7
L9694:      dex
            cpx #$04
            bne L9689
L9699:      lda L00C0,X
            beq L96A4
            jsr L96D3
            lda L00C0,X
            beq L96A7
L96A4:      dex
            bpl L9699
L96A7:      rts
L96A8:      ldx #$05
L96AA:      lda L00C0,X
            beq L96B1
            jsr L96C6
L96B1:      dex
            bne L96AA
            rts
L96B5:      ldx #$0A
L96B7:      lda L00C0,X
            beq L96C2
            jsr L96D3
            lda L00C0,X
            beq L96C5
L96C2:      dex
            bpl L96B7
L96C5:      rts
L96C6:      lda #$02
            jsr L9715
            bne L96D2
            tya
            and #$DC
            beq L96ED
L96D2:      rts
L96D3:      lda #$21
            jsr L9715
            bne L96D2
            tya
            and #$9C
            bne L96D2
            tya
            and #$03
            cmp #$03
            beq L96D2
            tya
            and #$60
            cmp #$60
            beq L96D2
L96ED:      dec FKDEF
            ldy FKDEF
            bpl L96F5
            ldy #$00
L96F5:      jsr L8474
            lda #$FF
            sta L0411
            sta L0EDF
            lda #$F4
            sta L0EE1
            lda #$EF
            sta L0EE3
            lda L00C0,X
            sta FMSZPG+1
            lda L00B1,X
            sta FMSZPG
            jmp L9663
L9715:      clc
            adc L00B1,X
            tay
            lda L00C0,X
            adc #$00
            sta ABUFPT+3
            tya
            sec
            sbc FMSZPG+4
            tay
            lda ABUFPT+3
            sbc FMSZPG+5
            rts
L9729:      lda L00CE
            bne L9744
            lda FMSZPG+1
            beq L975D
            sta L00CE
            lda FMSZPG
            sta L00BF
            lda #$40
            sta FMSZPG+2
            lda #$00
            sta FMSZPG+1
            lda #$14
            sta L04CB
L9744:      lda FMSZPG+2
            beq L9759
            dec FMSZPG+2
            lda FMSZPG+2
            and #$08
            beq L975D
            lda L04CB
            eor #$80
            sta L04CB
            rts
L9759:      lda #$00
            sta L00CE
L975D:      rts
L975E:      lda L00A7
            beq L9765
            jmp L993E
L9765:      ldx #$0F
L9767:      lda L0472,X
            beq L9798
            sta ABUFPT+3
            lda L0463,X
            sta ABUFPT+2
            lda L0490,X
            beq L977E
            bmi L978B
            ldy #$02
            bne L9786
L977E:      ldy #$21
            lda L0454,X
            sta (ABUFPT+2),Y
            dey
L9786:      lda L0445,X
            sta (ABUFPT+2),Y
L978B:      ldy #$01
            lda L0436,X
            sta (ABUFPT+2),Y
            dey
            lda L0427,X
            sta (ABUFPT+2),Y
L9798:      dex
            bpl L9767
            jsr L9908
            ldx KEYDEF+1
            dex
            bne L97A6
            jsr L9829
L97A6:      ldx #$00
L97A8:      lda L00C0,X
            beq L97F4
            sta ABUFPT+3
            lda L00B1,X
            sta ABUFPT+2
            lda L00CF,X
            sta ICHIDZ
            lda L0481,X
            beq L97C1
            bmi L97DA
            ldy #$02
            bne L97CF
L97C1:      ldy #$21
            lda (ABUFPT+2),Y
            sta L0454,X
            lda ICHIDZ
            sta (ABUFPT+2),Y
            dey
            dec ICHIDZ
L97CF:      lda (ABUFPT+2),Y
            sta L0445,X
            lda ICHIDZ
            sta (ABUFPT+2),Y
            dec ICHIDZ
L97DA:      ldy #$01
            lda (ABUFPT+2),Y
            sta L0436,X
            lda ICHIDZ
            sta (ABUFPT+2),Y
            dec ICHIDZ
            dey
            lda (ABUFPT+2),Y
            sta L0427,X
            lda ICHIDZ
            sta (ABUFPT+2),Y
            jsr L97FC
L97F4:      inx
            cpx #$0F
            bne L97A8
            jmp L993E
L97FC:      lda L00CF,X
            cmp #$53
            bne L9828
            lda L00B1,X
            cmp #$73
            bne L9828
            lda L00C0,X
            cmp #$38
            bne L9828
            lda ABUFPT+2
            clc
            adc #$20
            sta ABUFPT+2
            bcc L9819
            inc ABUFPT+3
L9819:      lda #$0E
            ldy #$00
            sta (ABUFPT+2),Y
            lda #$0F
            iny
            sta (ABUFPT+2),Y
            lda #$0F
            sta L00CF,X
L9828:      rts
L9829:      lda #$05
            sta ICSTAZ
L982D:      tay
            asl
            tax
            lda L0414,X
            beq L983E
            lda L0421,Y
            beq L983E
            bpl L9845
            bmi L987C
L983E:      dec ICSTAZ
            lda ICSTAZ
            bpl L982D
            rts
L9845:      lda #$00
            sta L0421,Y
            lda L0414,X
            cmp #$3A
            bcc L9859
            lda L0413,X
            cmp #$40
            bcc L9859
            rts
L9859:      jsr L98F1
            ldy #$00
            jsr L9899
            jsr L98E3
            lda #$A8
L9866:      sta ICHIDZ
            ldy #$00
L986A:      lda ICHIDZ
            sta (ABUFPT+2),Y
            inc ICHIDZ
            iny
            cpy #$02
            bne L9877
            ldy #$20
L9877:      cpy #$22
            bne L986A
            rts
L987C:      lda #$00
            sta L0421,Y
            lda #$38
            cmp L0414,X
            bcc L988F
            lda #$E0
            cmp L0413,X
            bcs L98A3
L988F:      jsr L98CF
            lda #$A8
L9894:      jsr L9866
            ldy #$40
L9899:      lda #$00
            sta (ABUFPT+2),Y
            iny
            lda #$27
            sta (ABUFPT+2),Y
            rts
L98A3:      jsr L98CF
            jsr L98CF
            ldy #$00
            tya
            sta (ABUFPT+2),Y
            iny
            sta (ABUFPT+2),Y
            jsr L98E3
            lda #$28
            jsr L9894
            lda #$00
            sta L0414,X
            dec FTYPE
            bne L98C6
            lda #$1C
            sta MLTTMP+1
L98C6:      ldy #$04
            jsr L8474
            jsr LBB76
            rts
L98CF:      lda L0413,X
            sec
            sbc #$20
            sta L0413,X
            lda L0414,X
            sbc #$00
            sta L0414,X
            jmp L98F1
L98E3:      lda L0413,X
            clc
            adc #$20
            sta L0413,X
            bcc L98F1
            inc L0414,X
L98F1:      lda L0414,X
            sta ABUFPT+3
            lda L0413,X
            sta ABUFPT+2
            rts
L98FC:      ora (L0082,X)
            .byte $83
            ora (CASINI,X)
            .byte $03
            and (L00A2,X)
            .byte $A3
            ora (RTCLOK),Y
            .byte $13
L9908:      ldx SWPFLG
            beq L9910
            ldx L00FD
            bne L9923
L9910:      stx L3868
            stx L3869
            stx L386A
            stx L3888
            stx L3889
            stx L388A
            rts
L9923:      ldy #$05
            lda L00FC
            bne L992B
            ldy #$0B
L992B:      ldx #$22
L992D:      cpx #$1F
            bne L9933
            ldx #$02
L9933:      lda L98FC,Y
            sta L3868,X
            dey
            dex
            bpl L992D
            rts
L993E:      lda L00FE
            bne L994D
            dec FMSZPG+6
            bne L994E
            lda RANDOM
            and #$20
            sta ZCHAIN
L994D:      rts
L994E:      ldx #$04
            lda FMSZPG+6
L9952:      cmp L99E0,X
            beq L995D
            dex
            bpl L9952
            bmi L9966
            rts
L995D:      lda ZCHAIN
            and #$E0
            ora L99E5,X
            sta ZCHAIN
L9966:      lda DELTAC+1
            sta ABUFPT+2
            lda KEYDEF
            sta ABUFPT+3
            lda #$2C
            ldy #$02
            ldx #$02
            jsr L99D6
            lda #$1E
            ldy #$43
            sta (ABUFPT+2),Y
            lda #$1F
            ldy #$63
            sta (ABUFPT+2),Y
            ldx #$04
            stx ICHIDZ
L9987:      ldx ICHIDZ
            ldy L99EF,X
            lda ZCHAIN
            and L99EA,X
            beq L9996
            ldy L99F4,X
L9996:      sty ICDNOZ
            ldy L99F9,X
            lda L9A03,X
            tax
            lda ICDNOZ
            jsr L99D6
            sta ICDNOZ
            ldx ICHIDZ
            ldy L99FE,X
            bmi L99B6
            lda L9A03,X
            tax
            lda ICDNOZ
            jsr L99D6
L99B6:      dec ICHIDZ
            bpl L9987
            ldx KEYDEF+1
            dex
            bne L99D5
            lda ABUFPT+2
            sec
            sbc #$20
            sta ABUFPT+2
            lda ABUFPT+3
            sbc #$00
            sta ABUFPT+3
            ldy #$06
            lda #$00
L99D0:      sta (ABUFPT+2),Y
            dey
            bpl L99D0
L99D5:      rts
L99D6:      sta (ABUFPT+2),Y
            clc
            adc #$01
            iny
            dex
            bpl L99D6
            rts
L99E0:      .byte $F0,$D0,$B0,$90,$70
L99E5:      .byte $10,$00,$0F,$0C,$00
L99EA:      .byte $01,$02,$10,$04,$08
L99EF:      .byte $04,$08,$0F,$12,$18
L99F4:      .byte $24,$28,$2F,$32,$38
L99F9:      .byte $00,$05,$22,$40,$44
L99FE:      .byte $20,$25,$FF,$60,$64
L9A03:      .byte $01,$01,$02,$02,$02
L9A08:      dec SAVADR+1
            bne L9A21
            inc SAVADR+1
            lda MLTTMP+1
            tax
            cmp #$12
            bcs L9A19
            lda FMSZPG+2
            bne L9A21
L9A19:      lda L9A23,X
            pha
            lda L9A22,X
            pha
L9A21:      rts
L9A22:      rts
L9A23:      txs
            jmp (L679B)
            .byte $9D,$53,$9F,$AB,$9F,$3E,$A0,$D7
            .byte $A0,$FD,$A1,$21,$A3,$8D,$A3,$C5
            .byte $A3,$CD,$A3,$02,$A4,$24,$A5,$19
            .byte $A5,$78,$A3
L9A42:      lda #$09
            sta ADRESS
            bne L9A4C
L9A48:      lda #$01
            sta ADRESS
L9A4C:      ldx BUFCNT
            cmp #$0C
            bne L9A55
            jmp LA3A2
L9A55:      lda L1000,X
            sta MLTTMP
            lda #$00
            sta MLTTMP+1
            jmp LA4C9
            ldx #$00
            stx SHFAMT
            lda INSDAT
            beq L9A72
            ldx HOLDCH
            dex
            beq L9A83
            dex
            beq L9AE6
            rts
L9A72:      ldx HOLDCH
            dex
            bne L9A7A
            jmp LA0B9
L9A7A:      dex
            bne L9A80
            jmp LA0BD
L9A80:      jmp LA0B1
L9A83:      lda #$08
            sta SAVADR
            jsr LA721
            jsr L9B2B
            cmp L101B,X
            bcs L9A9E
            lda L1051,X
            and #$C0
            bpl L9AA1
            lda L101B,X
            sta ADRESS+1
L9A9E:      jmp LA4C9
L9AA1:      beq L9AA6
            jmp LA2E1
L9AA6:      lda L1051,X
            and #$3F
            sta BUFCNT
L9AAD:      ldx BUFCNT
            cpx #$0E
            bne L9AB9
            jsr LBBA9
            jmp LA3F4
L9AB9:      cpx #$25
            bne L9AC3
            jsr LBBB3
            jmp LA3F4
L9AC3:      cpx #$2C
            bne L9ACD
            jsr LBBBD
            jmp LA3F4
L9ACD:      lda L1231,X
            sta ADRESS+1
            lda L125E,X
            cmp MLTTMP
            bcc L9ADB
            sta MLTTMP
L9ADB:      lda #$02
            sta MLTTMP+1
            lda #$0E
            sta ADRESS
            jmp LA4BD
L9AE6:      lda #$00
            sta SAVADR
            jsr LA728
            jsr L9B2B
            cmp L1036,X
            bcc L9B01
            lda L106C,X
            and #$C0
            bpl L9B04
            lda L1036,X
            sta ADRESS+1
L9B01:      jmp LA4C9
L9B04:      beq L9B09
            jmp LA2E6
L9B09:      lda L106C,X
            and #$3F
            sta BUFCNT
L9B10:      ldx BUFCNT
            lda L1129,X
            sta ADRESS+1
            lda L1155,X
            cmp MLTTMP
            bcc L9B20
            sta MLTTMP
L9B20:      lda #$04
            sta MLTTMP+1
            lda #$06
            sta ADRESS
            jmp LA4BD
L9B2B:      dec RAMTOP
            lda RAMTOP
            and #$03
            sta RAMTOP
            cmp #$03
            bne L9B39
            lda #$01
L9B39:      clc
            adc SAVADR
            sta ADRESS
            and #$01
            bne L9B47
            lda #$07
            sta L0402
L9B47:      ldx BUFCNT
            lda ADRESS+1
            rts
L9B4C:      jsr L9B5C
            cmp L125E,X
            bcs L9B57
            lda L125E,X
L9B57:      sta MLTTMP
            jmp LA4C1
L9B5C:      jsr LBB70
            lda #$01
            eor ADRESS
            sta ADRESS
            lda MLTTMP
            sec
            sbc #$02
            ldx BUFCNT
            rts
            ldx HOLDCH
            dex
            beq L9BC7
            dex
            bne L9B78
            jmp L9C37
L9B78:      dex
            beq L9B4C
            dex
            beq L9B7F
            rts
L9B7F:      jsr LBB70
            lda MLTTMP
            clc
            adc #$04
            ldx BUFCNT
            cmp L128B,X
            bcs L9B93
            sta MLTTMP
            jmp LA4CD
L9B93:      lda L12B8,X
            bmi L9BA2
            sta BUFCNT
            tax
            lda L1000,X
            ldx #$01
            bne L9BC4
L9BA2:      cmp #$F1
            bcs L9BB2
            and #$3F
            sta BUFCNT
            tax
            lda L1000,X
            ldx #$00
            beq L9BC4
L9BB2:      cmp #$FF
            bne L9BC0
            ldx BUFCNT
            lda L128B,X
            sta MLTTMP
            jmp LA4C9
L9BC0:      lda #$D2
            ldx #$00
L9BC4:      jmp LA30C
L9BC7:      ldx BUFCNT
            lda L12E4,X
            bmi L9BD3
            sta BUFCNT
            jmp L9B10
L9BD3:      and #$7F
            bne L9BD8
            rts
L9BD8:      tay
            dey
            bne L9BEF
            lda MLTTMP
            cmp #$47
            bcs L9BE6
            lda #$07
            bne L9C32
L9BE6:      cmp #$5B
            bcs L9BEB
            rts
L9BEB:      lda #$08
            bne L9C32
L9BEF:      dey
            bne L9C05
            lda MLTTMP
            cmp #$68
            bcs L9BFC
            lda #$15
            bne L9C32
L9BFC:      cmp #$7C
            bcs L9C01
;
            ORG $A000
;
            sta LC913,Y
            .byte $FF
            bne LA00F
            lda L137A,X
            cmp MLTTMP
            bcs LA00F
            sta MLTTMP
LA00F:      jmp LA4BD
LA012:      jsr LBB70
            ldx BUFCNT
            lda L13B8,X
            sta BUFCNT
            jmp L9AAD
LA01F:      jsr LBB70
            ldx BUFCNT
            lda L13D7,X
            sta BUFCNT
            jmp L9B10
LA02C:      jsr LA0A3
            sec
            sbc #$04
            cmp L135B,X
            bcs LA03A
            lda L135B,X
LA03A:      sta MLTTMP
            jmp LA4C1
            ldx HOLDCH
            dex
            beq LA012
            dex
            beq LA01F
            dex
            beq LA02C
            dex
            beq LA04E
            rts
LA04E:      jsr LA0A3
            clc
            adc #$04
            cmp L137A,X
            bcs LA05E
            sta MLTTMP
            jmp LA4C1
LA05E:      lda L1399,X
            bmi LA074
            asl
            bmi LA06C
            lsr
            sta BUFCNT
            jmp L9AAD
LA06C:      lsr
            and #$3F
            sta BUFCNT
            jmp L9B10
LA074:      cmp #$FF
            bne LA082
            ldx BUFCNT
            lda L137A,X
            sta MLTTMP
            jmp LA4C1
LA082:      cmp #$FE
            bne LA08C
            lda #$D2
            ldx #$00
            beq LA0A0
LA08C:      cmp #$FD
            bne LA096
            lda #$74
            ldx #$00
            beq LA0A0
LA096:      and #$7F
            sta BUFCNT
            tay
            lda L1000,Y
            ldx #$01
LA0A0:      jmp LA30C
LA0A3:      jsr LBB70
            ldx BUFCNT
            lda #$08
            eor ADRESS
            sta ADRESS
            lda MLTTMP
            rts
LA0B1:      lda #$01
            sta SHFAMT
            lda SAVADR
            beq LA0BD
LA0B9:      lda #$0C
            bne LA0BF
LA0BD:      lda #$0E
LA0BF:      sta MLTTMP+1
            lda #$03
            clc
            adc SAVADR
            sta ADRESS
            lda #$01
            sta BITMSK
            jsr LBB6A
            lda MLTTMP+1
            cmp #$0C
            beq LA0D8
            jmp LA1FE
LA0D8:      lda SHFAMT
            bne LA0DF
            jsr LA723
LA0DF:      jsr LA1CE
            ldx BUFCNT
            lda MLTTMP
            cmp L1000,X
            bcc LA0F5
            lda ADRESS+1
            cmp L101B,X
            bcc LA0F5
            jmp L9A42
LA0F5:      ldy #$02
            sty ICBLHZ
LA0F9:      jsr LA10F
            lda L1087,X
            sta ABUFPT+3
            bmi LA16D
            asl
            bmi LA13C
            bpl LA11D
LA108:      dec ICBLHZ
            bpl LA0F9
            jmp LA4C5
LA10F:      lda BUFCNT
            ldy ICBLHZ
            beq LA11B
LA115:      clc
            adc #$1B
            dey
            bne LA115
LA11B:      tax
            rts
LA11D:      ldx ABUFPT+3
            lda L128B,X
            clc
            adc #$02
            cmp MLTTMP
            bcc LA15F
            lda L1231,X
            cmp ADRESS+1
            bcs LA15F
            clc
            adc #$06
            cmp ADRESS+1
            bcc LA15F
            stx BUFCNT
            jmp L9AAD
LA13C:      jsr LA162
            bcs LA15F
            cmp ABUFPT+2
            bcc LA15F
            lda ADRESS+1
            cmp L101B,X
            bcc LA15F
            cmp L1036,X
            beq LA153
            bcs LA15F
LA153:      stx BUFCNT
            cpx #$0C
            bne LA15C
            jmp LA3A2
LA15C:      jmp L9A42
LA15F:      jmp LA108
LA162:      lda ABUFPT+3
            and #$3F
            tax
            lda L1000,X
            cmp MLTTMP
            rts
LA16D:      and #$3F
            tax
            dex
            beq LA189
            dex
            beq LA1A6
            dex
            beq LA1C2
LA179:      ldx BUFCNT
            lda L101B,X
            cmp ADRESS+1
            bcc LA186
            sta ADRESS+1
            sta SHFAMT
LA186:      jmp LA4C5
LA189:      lda MLTTMP
            cmp #$3A
            bcc LA186
            cmp #$42
            bcs LA1A3
            lda ADRESS+1
            cmp #$8C
            bcs LA186
            inc BUFCNT
            lda #$88
            cmp ADRESS+1
            bcs LA1A3
            sta ADRESS+1
LA1A3:      jmp L9A42
LA1A6:      lda MLTTMP
            cmp #$C0
            bcs LA179
            lda #$A8
            jsr LA1EA
            cpy #$00
            bne LA179
            cmp ADRESS+1
            bcc LA179
            txa
            clc
            adc #$0F
            sta BUFCNT
LA1BF:      jmp L9AAD
LA1C2:      lda MLTTMP
            cmp #$47
            bcc LA15F
            lda #$20
            sta BUFCNT
            bne LA1BF
LA1CE:      inc BITMSK
            ldy BITMSK
            lda MLTTMP
            sta ABUFPT+2
            clc
            adc L13F6,Y
            cmp #$DA
            bcs LA1E1
            sta MLTTMP
            rts
LA1E1:      lda #$D2
            sta MLTTMP
            pla
            pla
            jmp LA379
LA1EA:      ldy #$00
            ldx #$07
LA1EE:      cmp ADRESS+1
            bcc LA1FA
            sec
            sbc #$0C
            dex
            bpl LA1EE
            iny
            rts
LA1FA:      clc
            adc #$05
            rts
LA1FE:      lda SHFAMT
            bne LA205
            jsr LA72A
LA205:      jsr LA1CE
            ldx BUFCNT
            lda MLTTMP
            cmp L1000,X
            bcc LA21D
            lda ADRESS+1
            cmp L1036,X
            beq LA21A
            bcs LA21D
LA21A:      jmp L9A48
LA21D:      ldy #$02
            sty ICBLHZ
LA221:      jsr LA10F
            lda L10D8,X
            sta ABUFPT+3
            bmi LA27F
            asl
            bmi LA259
            bpl LA237
LA230:      dec ICBLHZ
            bpl LA221
            jmp LA4C5
LA237:      ldx ABUFPT+3
            lda L1181,X
            clc
            adc #$02
            cmp MLTTMP
            bcc LA27C
            lda L1129,X
            sec
            sbc #$01
            cmp ADRESS+1
            bcc LA27C
            sec
            sbc #$06
            cmp ADRESS+1
            bcs LA27C
            stx BUFCNT
            jmp L9B10
LA259:      jsr LA162
            bcs LA27C
            cmp ABUFPT+2
            bcc LA27C
            lda ADRESS+1
            cmp L101B,X
            bcc LA27C
            cmp L1036,X
            beq LA270
            bcs LA27C
LA270:      stx BUFCNT
            cpx #$0C
            bne LA279
            jmp LA3A8
LA279:      jmp L9A48
LA27C:      jmp LA230
LA27F:      and #$0F
            tax
            dex
            beq LA29B
            dex
            beq LA2C1
            dex
            beq LA2D4
LA28B:      ldx BUFCNT
            lda L1036,X
            cmp ADRESS+1
            bcs LA298
            sta ADRESS+1
            sta SHFAMT
LA298:      jmp LA4C5
LA29B:      lda MLTTMP
            cmp #$C0
            bcs LA28B
            ldx #$07
            lda #$9C
LA2A5:      cmp ADRESS+1
            bcc LA2B1
            sec
            sbc #$0C
            dex
            bpl LA2A5
            bmi LA28B
LA2B1:      clc
            adc #$05
            cmp ADRESS+1
            bcc LA28B
            txa
            clc
            adc #$0D
            sta BUFCNT
            jmp L9B10
LA2C1:      lda ADRESS+1
            cmp #$50
            bcc LA27C
            lda MLTTMP
            cmp #$C2
            bcc LA27C
            lda #$17
            sta BUFCNT
            jmp L9A48
LA2D4:      lda MLTTMP
            cmp #$46
            bcc LA27C
            lda #$1E
            sta BUFCNT
            jmp L9B10
LA2E1:      lda L1051,X
            bne LA2E9
LA2E6:      lda L106C,X
LA2E9:      and #$0F
            tax
            dex
            beq LA2FB
            dex
            beq LA304
            jsr LBB93
            lda #$D2
            ldx #$00
            beq LA30C
LA2FB:      jsr LBB93
            lda #$92
            ldx #$00
            beq LA30C
LA304:      lda #$07
            sta BUFCNT
            lda #$42
            ldx #$01
LA30C:      sta BUFSTR+1
            stx BUFSTR
            lda #$0D
            ldx SAVADR
            bne LA318
            lda #$05
LA318:      sta ADRESS
            lda #$10
            sta MLTTMP+1
            lda #$05
            sta BITMSK
            jsr LA1CE
            lda KEYDEF+1
            cmp #$02
            bne LA35E
            lda #$A2
            cmp MLTTMP
            bcs LA347
            cmp ABUFPT+2
            bcc LA347
            lda ADRESS+1
            cmp L102B
            bcc LA347
            cmp L1046
            bcs LA347
            ldx #$10
            stx BUFCNT
            bne LA36F
LA347:      lda #$C4
            cmp MLTTMP
            bcs LA35E
            cmp ABUFPT+2
            bcc LA35E
            lda ADRESS+1
            cmp #$5D
            bcc LA35E
            cmp #$67
            bcs LA35E
            jmp LA3A2
LA35E:      lda MLTTMP
            cmp BUFSTR+1
            bcs LA367
            jmp LA4C9
LA367:      lda BUFSTR+1
            sta MLTTMP
            lda BUFSTR
            beq LA379
LA36F:      lda SAVADR
            bne LA376
            jmp L9A48
LA376:      jmp L9A42
LA379:      ldx #$13
            stx BITMSK
            lda #$FF
            sta FMSZPG+2
            stx ADRESS
            dex
            stx MLTTMP+1
            jsr LBBD1
            lda #$64
            sta L0405
            dec BITMSK
            bmi LA39B
            lda ADRESS
            eor #$01
            sta ADRESS
            jmp LA4C9
LA39B:      lda #$20
            sta LOMEM+1
            jmp LA4CF
LA3A2:      ldy #$14
            lda #$08
            bne LA3AC
LA3A8:      ldy #$16
            lda #$00
LA3AC:      sty MLTTMP+1
            sta SAVADR
            sta ADRESS
            lda #$0C
            sta BUFCNT
            lda #$C4
            sta MLTTMP
            lda #$00
            sta SHFAMT
            ldx #$08
            jsr L87BC
            jmp LA4BD
            ldx #$07
            jsr L87BC
            jmp LA0B9
            ldx #$07
            jsr L87BC
            ldy #$01
            ldx INSDAT
            bne LA3DD
            ldy #$FF
            bne LA3E4
LA3DD:      lda ADRESS+1
            clc
            adc #$04
            sta ADRESS+1
LA3E4:      sty BITMSK
            lda #$0E
            sta MLTTMP+1
            lda #$03
            sta ADRESS
            jsr LBB6A
            jmp LA1FE
LA3F4:      lda #$11
            sta BITMSK
            lda #$18
            sta MLTTMP+1
            lda #$20
            sta BUFSTR+1
            jsr LA541
            dec BITMSK
            ldx BITMSK
            cpx #$09
            beq LA42E
            ldx BITMSK
            bmi LA43F
            lda LA479,X
            cmp MLTTMP
            bcs LA418
            sta MLTTMP
LA418:      lda LA48A,X
            sta ADRESS+1
            lda LA49B,X
            sta ADRESS
            lda LA4AC,X
            bne LA42B
LA427:      lda #$30
            sta L0082
LA42B:      jmp LA4CF
LA42E:      lda #$00
            sta L37EC
            sta L380C
            lda #$58
            sta L37ED
            sta L380D
            rts
LA43F:      stx L00FE
            dec BUFSTR+1
            ldx BUFSTR+1
            bmi LA427
            ldy #$00
LA449:      lda L3801,Y
            sta L3800,Y
            lda L3821,Y
            sta L3820,Y
            lda L3841,Y
            sta L3840,Y
            lda L3861,Y
            sta L3860,Y
            iny
            cpy #$07
            bcc LA449
            ldx #$00
            stx L3807
            stx L3827
            stx L3847
            stx L3867
            stx L00FD
            jmp LA4C9
LA479:      .byte $21,$21,$21,$21,$21,$21,$23,$26
            .byte $26,$28,$2A,$2C,$2E,$30,$32,$34
            .byte $36
LA48A:      .byte $60,$60,$60,$62,$64,$66,$68,$6A
            .byte $6F,$6F,$6F,$6F,$6F,$6F,$6F,$6F
            .byte $6F
LA49B:      .byte $11,$10,$09,$0A,$09,$08,$0C,$07
            .byte $0E,$0F,$0E,$0F,$0E,$0F,$0E,$0F
            .byte $0E
LA4AC:      .byte $40,$20,$06,$05,$04,$06,$05,$11
            .byte $09,$04,$04,$07,$04,$04,$04,$07
            .byte $04
LA4BD:      lda #$08
            bne LA4CF
LA4C1:      lda #$06
            bne LA4CF
LA4C5:      lda #$05
            bne LA4CF
LA4C9:      lda #$04
            bne LA4CF
LA4CD:      lda #$02
LA4CF:      sta SAVADR+1
            rts
LA4D2:      ldy L00A5
            lda STICK0,Y
            eor #$0F
            tax
            lda LA50F,X
            sta HOLDCH
            lda L00A3,Y
            sta KEYDEF+1
            lda L0087,Y
            sta SWPFLG
            lda STRIG0,Y
            bne LA503
            lda COUNTR
            bne LA50C
            lda COUNTR+1
            beq LA507
            lda #$00
            sta INSDAT
            sta COUNTR+1
            sta L00A6
            lda #$03
            sta COUNTR
            rts
LA503:      lda #$01
            sta COUNTR+1
LA507:      lda #$01
            sta INSDAT
            rts
LA50C:      dec COUNTR
            rts
LA50F:      .byte $00,$03,$04,$00,$01,$01,$01,$00
            .byte $02,$02,$02
            lda #$1A
            sta MLTTMP+1
            lda #$FF
            sta BUFSTR
            jsr LA541
            inc BUFSTR
            lda BUFSTR
            cmp #$80
            bne LA535
            ldx #$01
            stx L0082
            dex
            stx L00A7
            rts
LA535:      jsr LA54B
            jsr LA5F4
            jsr LA695
            jmp LA4C5
LA541:      lda L00A2
            jsr L8493
            ldx #$01
            stx FMSZPG+2
            rts
LA54B:      lda BUFSTR
            bne LA56D
            ldx #$04
            jsr LB887
            lda #$00
            tax
LA557:      sta L3880,X
            sta L3900,X
            sta L39E0,X
            sta L0427,X
            dex
            bne LA557
            inx
            stx L00A7
            jsr LBBC7
            rts
LA56D:      cmp #$14
            bcs LA57D
            lda DELTAC+1
            clc
            adc #$20
            sta DELTAC+1
            bcc LA57C
            inc KEYDEF
LA57C:      rts
LA57D:      cmp #$16
            bcs LA582
            rts
LA582:      cmp #$19
            bcs LA59D
            ldx #$7F
LA588:      lda L28F8,X
            sta L3420,X
            lda L2978,X
            sta L3520,X
            dex
            bpl LA588
            lda #$6C
            sta L00FE
            bne LA5AD
LA59D:      cmp #$1E
            bcs LA5A7
            lda #$6A
            ldy #$33
            bne LA5AF
LA5A7:      cmp #$48
            bcs LA5E0
            lda #$6A
LA5AD:      ldy #$13
LA5AF:      sta ABUFPT+2
            sta DELTAC+1
            clc
            adc #$04
            sta ICHIDZ
            lda #$3A
            sta ABUFPT+3
            sta ICDNOZ
            sta KEYDEF
            sty ICCOMZ
            ldx #$0F
LA5C4:      txa
            and #$03
            sta ICBLLZ
            txa
            and #$0C
            asl
            asl
            asl
            ora ICBLLZ
            tay
            lda ICCOMZ
            sta (ABUFPT+2),Y
            lda #$00
            sta (ICHIDZ),Y
            dec ICCOMZ
            dex
            bpl LA5C4
            rts
LA5E0:      cmp #$68
            bcs LA5ED
            ldx #$04
            jsr LB887
            lda #$27
            bne LA5EF
LA5ED:      lda #$37
LA5EF:      sta ZCHAIN
            jmp L9966
LA5F4:      lda BUFSTR
            bne LA616
            ldy #$BF
LA5FA:      lda L2838,Y
            sta L3720,Y
            dey
            cpy #$FF
            bne LA5FA
            iny
            sty BUFSTR+1
            lda #$68
            sta FKDEF
            lda #$38
            sta FKDEF+1
LA610:      jsr LA670
            jmp LA654
LA616:      cmp #$04
            bcs LA623
            jsr LA670
            sec
            sbc #$20
            jmp LA648
LA623:      cmp #$06
            bcc LA610
            cmp #$19
            bcs LA63C
            jsr LA670
            clc
            adc #$20
            sta ABUFPT+2
            sta FKDEF
            lda ABUFPT+3
            adc #$00
            jmp LA650
LA63C:      cmp #$20
            bcs LA670
            jsr LA670
            lda ABUFPT+2
            sec
            sbc #$61
LA648:      sta ABUFPT+2
            sta FKDEF
            lda ABUFPT+3
            sbc #$00
LA650:      sta ABUFPT+3
            sta FKDEF+1
LA654:      inc BUFSTR+1
            lda BUFSTR+1
            and #$03
            tax
            lda LA688,X
            sta ICHIDZ
            ldx #$05
            ldy #$22
LA664:      lda ICHIDZ
            sta (ABUFPT+2),Y
            dec ICHIDZ
            jsr LA68C
            bpl LA664
            rts
LA670:      lda FKDEF
            sta ABUFPT+2
            lda FKDEF+1
            sta ABUFPT+3
            ldy #$22
            lda #$00
            ldx #$05
LA67E:      sta (ABUFPT+2),Y
            jsr LA68C
            bpl LA67E
            lda ABUFPT+2
            rts
LA688:      adc #$6F
            adc SWPFLG,X
LA68C:      dey
            cpy #$1F
            bne LA693
            ldy #$02
LA693:      dex
            rts
LA695:      lda BUFSTR
            bne LA69F
            lda #$61
            ldy #$0D
            bne LA6B3
LA69F:      cmp #$0E
            bcs LA6AB
            lda MLTTMP
            clc
            adc #$08
            sta MLTTMP
            rts
LA6AB:      cmp #$1F
            bcs LA6B8
            lda #$C9
            ldy #$08
LA6B3:      sta MLTTMP
LA6B5:      sty ADRESS
            rts
LA6B8:      cmp #$40
            bcs LA6C0
            ldy #$14
            bne LA6B5
LA6C0:      cmp #$50
            bcs LA6DC
            lda #$0A
            sta BUFCNT
            lda ADRESS+1
            cmp #$80
            bcc LA6D1
            jmp L9A83
LA6D1:      cmp #$7B
            bcs LA6D8
            jmp L9AE6
LA6D8:      ldy #$09
            bne LA6B5
LA6DC:      cmp #$60
            bcs LA6E4
            ldy #$15
            bne LA6B5
LA6E4:      ldy #$16
            bne LA6B5
LA6E8:      ldy #$13
            lda #$00
LA6EC:      sta (SAVMSC),Y
            sta (OLDROW),Y
            sta (OLDCOL+1),Y
            sta (OLDADR),Y
            dey
            bpl LA6EC
            jsr LA72F
            ldy #$13
LA6FC:      lda (TEMP),Y
            sta (SAVMSC),Y
            lda (LMARGN),Y
            sta (OLDROW),Y
            lda (ROWCRS),Y
            sta (OLDCOL+1),Y
            lda (COLCRS+1),Y
            sta (OLDADR),Y
            dey
            bpl LA6FC
            lda ADRESS+1
            sta HPOSP0
            sta HPOSP1
            clc
            adc #$08
            sta HPOSP2
            sta HPOSP3
            rts
LA721:      dec ADRESS+1
LA723:      dec ADRESS+1
            dec ADRESS+1
            rts
LA728:      inc ADRESS+1
LA72A:      inc ADRESS+1
            inc ADRESS+1
            rts
LA72F:      lda MLTTMP
            sta SAVMSC
            sta OLDROW
            sta OLDCOL+1
            sta OLDADR
            ldy #$3C
            sty SAVMSC+1
            iny
            sty OLDCOL
            iny
            sty OLDCHR
            iny
            sty OLDADR+1
            ldy ADRESS
            lda L1800,Y
            sta TEMP
            lda L1817,Y
            sta HOLD1
            ldy #$02
            ldx #$00
LA756:      lda TEMP,X
            clc
            adc #$14
            sta LMARGN,X
            lda HOLD1,X
            adc #$00
            sta RMARGN,X
            inx
            inx
            dey
            bpl LA756
            rts
            .byte $C9,$BA,$C2,$BA,$B2,$92,$62,$42
            .byte $3A,$21,$C9,$BA,$C4,$BA,$C3,$BA
            .byte $A2,$9A,$9A,$3A,$3A,$21,$CD,$C2
            .byte $9A,$72,$42,$3E,$6C,$80,$90,$A4
            .byte $61,$55,$8D,$6B,$5F,$43,$43,$5D
            .byte $6F,$8C,$A4,$78,$43,$95,$99,$6B
            .byte $5F,$40,$56,$57,$57,$6A,$5A,$7A
            .byte $8A,$9E,$B1,$68,$60,$9D,$88,$64
            .byte $B2,$56,$67,$81,$9C,$B2,$82,$55
            .byte $A2,$9E,$8C,$64,$4F,$9E,$9E,$9E
            .byte $9E,$80,$40,$40,$40,$40,$04,$01
            .byte $C0,$80,$80,$80,$80,$40,$40,$40
            .byte $40,$40,$80,$40,$40,$80,$80,$80
            .byte $29,$28,$28,$80,$40,$40,$40,$40
            .byte $80,$03,$41,$07,$42,$80,$80,$40
            .byte $40,$40,$40,$80,$40,$40,$21,$1F
            .byte $40,$40,$80,$29,$29,$28,$28,$84
            .byte $05,$41,$42,$43,$04,$01,$48,$84
            .byte $00,$84,$84,$4B,$4C,$4D,$23,$4C
            .byte $84,$1E,$24,$84,$00,$84,$29,$28
            .byte $28,$84,$00,$05,$41,$42,$43,$04
            .byte $01,$48,$84,$00,$84,$84,$4B,$4C
            .byte $4D,$23,$1B,$18,$1E,$54,$25,$00
            .byte $84,$29,$28,$28,$84,$03,$06,$41
            .byte $08,$0C,$04,$01,$81,$0E,$00,$82
            .byte $84,$4B,$4C,$4D,$4E,$1E,$19,$1E
            .byte $83,$24,$00,$27,$29,$28,$28,$2C
            .byte $02,$42,$43,$44,$84,$03,$03,$07
            .byte $47,$00,$81,$4C,$4D,$4E,$4F,$84
            .byte $52,$4C,$21,$1F,$83,$00,$82,$29
            .byte $29,$28,$28,$02,$42,$43,$44,$0B
            .byte $03,$03,$07,$47,$00,$81,$4C,$50
            .byte $4E,$4F,$24,$52,$18,$21,$1F,$53
            .byte $00,$82,$29,$29,$28,$28,$00,$03
            .byte $43,$09,$09,$03,$03,$07,$0C,$00
            .byte $81,$4C,$1B,$4E,$4F,$22,$1B,$16
            .byte $21,$1F,$25,$00,$27,$29,$29,$28
            .byte $28,$4A,$56,$56,$6E,$7E,$8A,$96
            .byte $A2,$A2,$A2,$AE,$AE,$86,$4E,$5A
            .byte $66,$72,$7E,$8A,$96,$A2,$4E,$4E
            .byte $5A,$57,$66,$72,$77,$7E,$8A,$96
            .byte $A2,$A2,$A6,$A6,$AE,$B2,$86,$4C
            .byte $4C,$A4,$A4,$B0,$B0,$53,$7B,$AB
            .byte $53,$53,$5B,$5B,$3E,$5B,$93,$3E
            .byte $93,$1D,$5E,$5E,$5E,$5E,$5E,$5E
            .byte $5E,$5E,$53,$7C,$53,$8A,$53,$53
            .byte $8A,$53,$53,$53,$3E,$53,$93,$B2
            .byte $3E,$93,$1D,$65,$BD,$3E,$94,$3E
            .byte $94,$BA,$97,$C2,$B2,$8A,$B2,$A2
            .byte $47,$7F,$AA,$7F,$AA,$36,$C2,$C2
            .byte $C2,$C2,$C2,$C2,$C2,$C2,$68,$92
            .byte $7A,$97,$6A,$72,$9F,$6A,$82,$6A
            .byte $40,$6A,$A2,$B2,$6A,$B2,$36,$A0
            .byte $C2,$78,$CA,$78,$CA,$00,$FF,$00
            .byte $01,$FE,$FE,$83,$FF,$FF,$FE,$FF
            .byte $04,$08,$0A,$0A,$0A,$0A,$0A,$0A
            .byte $0A,$0A,$FF,$11,$FE,$FD,$FE,$FE
            .byte $FC,$FE,$FE,$92,$FF,$92,$FF,$0F
            .byte $FB,$0F,$14,$FF,$16,$FF,$FE,$FF
            .byte $FE,$00,$01,$82,$83,$81,$84,$04
            .byte $85,$05,$86,$07,$08,$87,$88,$09
            .byte $0A,$0B,$0C,$0D,$0E,$0F,$11,$12
            .byte $13,$89,$14,$8A,$8B,$16,$8C,$18
            .byte $8D,$19,$8E,$81,$1A,$10,$8F,$1B
            .byte $1C,$90,$91,$1D,$1E,$81,$04,$05
            .byte $06,$07,$08,$82,$0B,$0B,$0C,$80
            .byte $80,$0D,$0F,$10,$11,$12,$13,$14
            .byte $15,$16,$19,$19,$1A,$1B,$1C,$1D
            .byte $1E,$1F,$20,$21,$22,$22,$23,$23
            .byte $80,$80,$24,$28,$29,$2A,$2B,$80
            .byte $80,$43,$4F,$4F,$4F,$5B,$5B,$73
            .byte $83,$8F,$9B,$9B,$A7,$A7,$8B,$6F
            .byte $53,$5F,$6B,$77,$83,$8F,$9B,$A7
            .byte $47,$47,$53,$5F,$5C,$6B,$77,$7C
            .byte $83,$8F,$9B,$A7,$AB,$8B,$6F,$45
            .byte $45,$51,$51,$A9,$A9,$70,$53,$53
            .byte $7B,$AB,$7B,$AB,$53,$53,$5B,$5B
            .byte $93,$3E,$93,$1D,$1D,$5E,$5E,$5E
            .byte $5E,$5E,$5E,$5E,$5E,$53,$7C,$53
            .byte $53,$8C,$53,$53,$8C,$53,$53,$53
            .byte $3E,$93,$1D,$1D,$65,$BD,$65,$BD
            .byte $3E,$94,$1D,$C2,$67,$97,$BA,$97
            .byte $C2,$B2,$8C,$B2,$7F,$A2,$7F,$AA
            .byte $36,$36,$C2,$C2,$C2,$C2,$C2,$C2
            .byte $C2,$C2,$68,$92,$92,$7A,$97,$6A
            .byte $72,$9F,$6A,$82,$6A,$6A,$B2,$36
            .byte $36,$A0,$C2,$A0,$C2,$78,$CA,$36
            .byte $00,$FF,$FF,$00,$FF,$00,$01,$FE
            .byte $FE,$FF,$83,$FF,$04,$07,$08,$0A
            .byte $0A,$0A,$0A,$0A,$0A,$0A,$0A,$FF
            .byte $11,$11,$FC,$FD,$FE,$FE,$FC,$FE
            .byte $FE,$92,$FB,$0F,$14,$14,$FF,$16
            .byte $FF,$16,$FF,$FE,$80,$00,$00,$00
            .byte $01,$02,$03,$04,$05,$06,$06,$81
            .byte $09,$0C,$80,$0D,$0E,$0F,$10,$11
            .byte $12,$13,$14,$80,$80,$82,$17,$18
            .byte $19,$1A,$1B,$1C,$1D,$1E,$83,$84
            .byte $25,$80,$80,$80,$26,$27,$28,$29
            .byte $81,$82,$01,$02,$83,$80,$84,$85
            .byte $86,$05,$06,$07,$08,$87,$80,$09
            .byte $0A,$0B,$0C,$0D,$0E,$0F,$88,$11
            .byte $12,$89,$8A,$8B,$15,$8C,$8D,$17
            .byte $8E,$19,$1A,$10,$8F,$80,$1B,$1C
            .byte $90,$91,$1D,$1E,$47,$53,$53,$87
            .byte $93,$9F,$9F,$AB,$AB,$57,$63,$6F
            .byte $7B,$87,$93,$9F,$AF,$4B,$4B,$57
            .byte $63,$6F,$7B,$87,$93,$9F,$AB,$49
            .byte $49,$AD,$AD,$53,$7B,$AB,$5B,$5B
            .byte $5B,$93,$3E,$93,$5E,$5E,$5E,$5E
            .byte $5E,$5E,$5E,$93,$53,$7C,$53,$53
            .byte $53,$53,$53,$53,$53,$3E,$65,$BD
            .byte $3E,$95,$BA,$94,$BA,$8A,$A2,$7C
            .byte $A2,$7C,$AA,$C2,$C2,$C2,$C2,$C2
            .byte $C2,$C2,$B2,$64,$92,$7A,$6A,$6A
            .byte $6A,$6A,$6A,$6A,$6A,$9C,$C8,$74
            .byte $CA,$00,$FF,$42,$45,$08,$FF,$49
            .byte $FF,$84,$8A,$8A,$8A,$8A,$8A,$8A
            .byte $8A,$8F,$FF,$91,$19,$1A,$5A,$1D
            .byte $5D,$20,$FE,$FD,$FF,$96,$FF,$FE
            .byte $00,$02,$03,$07,$08,$09,$0A,$0B
            .byte $0C,$0F,$10,$11,$12,$13,$14,$15
            .byte $23,$17,$18,$19,$1A,$1C,$1D,$1F
            .byte $20,$21,$22,$26,$27,$2A,$2B,$00
            .byte $01,$02,$05,$06,$08,$09,$0A,$0B
            .byte $0E,$0F,$10,$11,$12,$13,$14,$24
            .byte $15,$16,$17,$19,$1A,$1C,$1D,$1E
            .byte $20,$23,$26,$27,$2A,$2B,$F0,$F4
            .byte $F8,$FC,$FE,$00,$02,$04,$08,$0C
            .byte $10,$14,$18,$1C,$20,$20,$20,$20
            .byte $E8,$2E,$3F,$37,$07,$05,$D5,$F5
            .byte $F0,$F0,$5F,$D5,$D5,$F5,$E5,$E9
            .byte $26,$3F,$48,$58,$50,$50,$40,$04
            .byte $04,$54,$00,$00,$20,$28,$09,$01
            .byte $05,$05,$00,$02,$2A,$A8,$50,$5C
            .byte $5C,$57,$57,$5F,$5F,$5C,$FC,$3C
            .byte $E2,$84,$57,$16,$DF,$1F,$3C,$00
            .byte $00,$80,$A4,$85,$91,$D4,$D5,$31
            .byte $00,$01,$05,$55,$57,$01,$55,$54
            .byte $3C,$03,$E6,$02,$03,$FC,$E7,$04
            .byte $02,$0A,$03,$0E,$83,$3B,$09,$00
            .byte $E8,$DA,$F0,$FC,$FF,$FF,$FF,$3B
            .byte $84,$3F,$03,$0F,$03,$00,$85,$FF
            .byte $08,$FC,$F0,$00,$00,$55,$55,$44
            .byte $55,$E3,$08,$7F,$5F,$5F,$1D,$15
            .byte $05,$0F,$3F,$83,$FF,$05,$55,$95
            .byte $15,$3F,$00,$83,$80,$02,$40,$10
            .byte $E6,$11,$20,$0C,$00,$00,$2F,$80
            .byte $C0,$C0,$C2,$0C,$00,$00,$3E,$00
            .byte $00,$0C,$20,$E4,$07,$03,$00,$0C
            .byte $C2,$C0,$C0,$80,$B2,$00,$17,$59
            .byte $56,$59,$11,$44,$37,$F7,$00,$59
            .byte $56,$59,$11,$44,$07,$07,$00,$59
            .byte $56,$59,$11,$44,$34,$F4,$E2,$83
            .byte $01,$E4,$0F,$40,$50,$50,$10,$40
            .byte $00,$00,$59,$56,$59,$45,$21,$A8
            .byte $AA,$AA,$E4,$15,$20,$A8,$AA,$AA
            .byte $55,$7F,$7F,$4F,$21,$A8,$AA,$AA
            .byte $40,$50,$50,$80,$20,$A8,$AA,$AA
            .byte $05,$83,$07,$0C,$21,$A8,$AA,$AA
            .byte $54,$7C,$7C,$4C,$20,$A8,$AA,$AA
            .byte $C4,$02,$80,$40,$E1,$84,$40,$E3
            .byte $81,$55,$83,$7F,$81,$55,$83,$F7
            .byte $81,$05,$83,$0F,$81,$05,$83,$07
            .byte $81,$54,$83,$7C,$81,$54,$83,$F4
            .byte $16,$85,$4F,$8F,$4F,$85,$47,$87
            .byte $47,$00,$59,$56,$59,$11,$44,$07
            .byte $47,$00,$15,$55,$55,$44,$10,$E3
            .byte $83,$55,$02,$44,$10,$E3,$05,$50
            .byte $54,$54,$44,$10,$E5,$83,$FF,$02
            .byte $A0,$28,$E3,$83,$FF,$E5,$83,$FF
            .byte $04,$0A,$28,$0A,$02,$E4,$0C,$02
            .byte $0A,$00,$82,$BE,$3C,$3C,$BE,$82
            .byte $00,$A0,$80,$E4,$22,$80,$A0,$28
            .byte $A0,$FF,$CF,$23,$A8,$AA,$AA,$00
            .byte $00,$FF,$CF,$23,$A8,$AA,$AA,$28
            .byte $0A,$FF,$CF,$23,$A8,$AA,$AA,$00
            .byte $55,$55,$44,$55,$00,$80,$40,$E2
            .byte $82,$FF,$E5,$08,$40,$50,$50,$10
            .byte $40,$00,$40,$00,$84,$40,$03,$00
            .byte $80,$40,$E3,$12,$02,$88,$21,$25
            .byte $21,$00,$00,$08,$80,$20,$48,$58
            .byte $48,$25,$21,$08,$02,$08,$E3,$04
            .byte $58,$48,$20,$82,$E7,$05,$08,$00
            .byte $01,$05,$04,$E4,$07,$02,$40,$50
            .byte $10,$05,$01,$20,$E5,$05,$50,$40
            .byte $00,$00,$08,$E5,$06,$02,$02,$22
            .byte $81,$09,$20,$C2,$03,$00,$00,$20
            .byte $06,$40,$20,$22,$02,$01,$22,$E4
            .byte $02,$08,$20,$E8,$06,$20,$02,$02
            .byte $21,$01,$A5,$E4,$07,$20,$08,$00
            .byte $68,$82,$22,$01,$E5,$04,$20,$00
            .byte $00,$20,$E4,$15,$82,$A0,$8A,$AB
            .byte $2B,$01,$00,$00,$AA,$A8,$AA,$EF
            .byte $23,$55,$54,$10,$08,$28,$88,$A8
            .byte $A0,$E4,$24,$02,$8A,$88,$AA,$A0
            .byte $2A,$AA,$0F,$BC,$BC,$2F,$A9,$A9
            .byte $A9,$80,$00,$90,$54,$55,$55,$00
            .byte $54,$00,$0A,$20,$2A,$88,$8A,$AA
            .byte $AA,$56,$00,$8F,$BC,$BC,$AF,$83
            .byte $A9,$E2,$12,$95,$54,$50,$40,$50
            .byte $54,$00,$06,$15,$55,$55,$00,$15
            .byte $00,$F0,$3E,$3E,$F8,$83,$6A,$16
            .byte $02,$00,$80,$A2,$22,$AA,$0A,$A8
            .byte $AA,$00,$00,$56,$15,$05,$01,$05
            .byte $15,$00,$F2,$3E,$3E,$FA,$83,$6A
            .byte $1B,$A0,$08,$A8,$22,$A2,$AA,$AA
            .byte $95,$2A,$A6,$BE,$AF,$2B,$29,$0A
            .byte $02,$00,$A0,$A8,$AA,$EA,$E6,$FA
            .byte $A8,$00,$08,$28,$83,$AA,$07,$28
            .byte $0A,$00,$82,$A0,$80,$80,$E3,$0B
            .byte $A0,$A8,$AA,$2A,$2A,$A8,$20,$00
            .byte $00,$03,$03,$84,$FF,$39,$EB,$FF
            .byte $FC,$F0,$F0,$FC,$CC,$FC,$FC,$E3
            .byte $3E,$3F,$3E,$3F,$3E,$0F,$0E,$BC
            .byte $FC,$BC,$FC,$BC,$FC,$B0,$70,$3F
            .byte $0F,$03,$0F,$FF,$FF,$E9,$E3,$40
            .byte $C0,$C0,$F0,$FC,$FC,$3F,$FF,$0E
            .byte $3C,$F8,$C8,$E0,$C0,$E0,$C0,$4F
            .byte $6F,$43,$4B,$43,$8B,$40,$48,$0A
            .byte $0E,$0F,$3E,$3F,$3E,$3F,$3E,$E3
            .byte $70,$B0,$C3,$02,$FC,$BC,$81,$EB
            .byte $84,$FF,$2B,$03,$03,$00,$FC,$FC
            .byte $CC,$FC,$F0,$F0,$FC,$FF,$C0,$E0
            .byte $C0,$E0,$C8,$F8,$3C,$0E,$48,$40
            .byte $8B,$43,$4B,$43,$6F,$4F,$E3,$E9
            .byte $FF,$FF,$0F,$03,$0F,$3F,$FF,$3F
            .byte $FC,$FC,$F0,$C0,$C0,$40,$18,$03
            .byte $C3,$F3,$FF,$3F,$3F,$0F,$03,$FC
            .byte $E8,$EB,$E3,$E1,$3E,$3F,$FF,$00
            .byte $00,$FF,$FF,$55,$22,$BB,$FC,$83
            .byte $03,$3D,$0F,$3F,$3F,$FF,$F3,$FC
            .byte $E8,$E8,$E1,$E2,$FC,$3D,$FF,$0C
            .byte $3F,$D6,$60,$C0,$C0,$B3,$DB,$00
            .byte $00,$FF,$FF,$55,$88,$EE,$3F,$3F
            .byte $2B,$EB,$CB,$4B,$BC,$FC,$FF,$C0
            .byte $C3,$CF,$FF,$FC,$FC,$F0,$C0,$30
            .byte $FC,$97,$09,$03,$03,$CE,$E7,$3F
            .byte $2B,$2B,$4B,$8B,$3F,$7C,$FF,$83
            .byte $C0,$05,$F0,$FC,$FC,$FF,$CF,$E9
            .byte $17,$01,$0C,$0E,$3E,$3F,$02,$0F
            .byte $54,$55,$FA,$E8,$AA,$AB,$AA,$5D
            .byte $00,$50,$00,$A0,$E8,$F0,$80,$40
            .byte $E3,$05,$15,$15,$1D,$2A,$22,$E3
            .byte $06,$40,$50,$F0,$A8,$23,$2A,$84
            .byte $3F,$08,$3D,$0F,$03,$AB,$C3,$DF
            .byte $DF,$7F,$83,$FF,$12,$00,$01,$05
            .byte $07,$2A,$08,$EA,$F3,$00,$54,$54
            .byte $74,$A8,$88,$A8,$FC,$F1,$FD,$86
            .byte $FF,$07,$FC,$FC,$7C,$DC,$FC,$F0
            .byte $C0,$E4,$0A,$20,$0C,$00,$00,$2F
            .byte $80,$C0,$C0,$C2,$0C,$E2,$89,$3E
            .byte $0A,$D5,$D7,$DD,$F5,$D5,$F5,$FF
            .byte $FF,$55,$FF,$84,$55,$0A,$FF,$FF
            .byte $57,$D7,$77,$5F,$57,$5F,$FF,$FF
            .byte $E5,$83,$03,$81,$FF,$83,$3F,$84
            .byte $FF,$0D,$F5,$D5,$DD,$D5,$D5,$FF
            .byte $FD,$FD,$03,$0A,$20,$02,$01,$E3
            .byte $05,$FF,$AA,$8A,$AA,$55,$E3,$05
            .byte $FC,$A8,$A0,$A8,$10,$E3,$09,$5F
            .byte $57,$77,$57,$57,$FF,$FF,$7F,$FC
            .byte $83,$F0,$81,$FC,$83,$FF,$E7,$09
            .byte $C0,$3F,$3F,$3F,$2A,$0A,$2A,$04
            .byte $00,$83,$FF,$13,$AA,$A2,$AA,$55
            .byte $00,$C0,$C0,$C8,$A0,$00,$80,$40
            .byte $00,$7D,$55,$55,$7D,$FF,$D7,$83
            .byte $55,$E7,$88,$FF,$10,$05,$15,$FF
            .byte $EE,$EA,$FA,$0A,$1D,$40,$55,$A0
            .byte $8A,$AE,$BF,$AA,$75,$E4,$1D,$84
            .byte $04,$04,$10,$00,$15,$15,$1D,$2A
            .byte $22,$2A,$3F,$00,$40,$50,$D0,$A8
            .byte $20,$AB,$CF,$3F,$3D,$37,$3F,$0F
            .byte $03,$00,$00,$7F,$86,$FF,$81,$3F
            .byte $E3,$05,$01,$05,$0F,$2A,$C8,$E3
            .byte $0E,$54,$54,$74,$A8,$88,$EA,$C3
            .byte $F7,$F7,$FD,$FF,$FF,$FF,$A8,$84
            .byte $FC,$33,$7C,$F0,$C0,$00,$00,$03
            .byte $0D,$35,$35,$3D,$3D,$00,$FF,$FF
            .byte $7D,$BE,$14,$55,$7D,$00,$00,$C0
            .byte $70,$5C,$5C,$7C,$7C,$D5,$D6,$D6
            .byte $D0,$D6,$D6,$F5,$FF,$55,$55,$22
            .byte $00,$22,$22,$55,$FF,$57,$67,$27
            .byte $07,$27,$27,$5F,$FF,$E7,$02,$03
            .byte $3F,$83,$0F,$81,$3F,$83,$FF,$10
            .byte $F5,$D5,$DD,$D5,$D5,$FF,$FF,$FD
            .byte $03,$03,$23,$0A,$00,$02,$01,$00
            .byte $83,$FF,$16,$AA,$8A,$AA,$55,$00
            .byte $FC,$FC,$FC,$A8,$A0,$A8,$10,$00
            .byte $5F,$57,$77,$57,$57,$FF,$7F,$7F
            .byte $FF,$83,$FC,$84,$FF,$E5,$83,$C0
            .byte $05,$3F,$2A,$0A,$2A,$04,$E3,$05
            .byte $FF,$AA,$A2,$AA,$55,$E3,$05,$C0
            .byte $A0,$08,$80,$40,$E3,$06,$7D,$55
            .byte $55,$7D,$FF,$D7,$83,$55,$E7,$20
            .byte $FF,$AB,$BB,$BB,$BB,$AB,$AB,$FF
            .byte $FF,$AF,$EF,$EF,$EF,$AB,$AB,$FF
            .byte $FF,$AB,$FB,$AB,$BF,$BB,$AB,$FF
            .byte $FF,$AB,$FB,$EB,$FB,$AB,$AB,$FF
            .byte $30,$FF,$BF,$BB,$AB,$FB,$FB,$FB
            .byte $FF,$FF,$AB,$BF,$AB,$FB,$BB,$AB
            .byte $FF,$FF,$AF,$BF,$AB,$BB,$BB,$AB
            .byte $FF,$FF,$AB,$FB,$EF,$EF,$BF,$BF
            .byte $FF,$FF,$AB,$BB,$AB,$BB,$BB,$AB
            .byte $FF,$FF,$AB,$BB,$AB,$FB,$FB,$FB
            .byte $FF,$88,$0F,$0A,$FF,$AF,$BB,$AF
            .byte $BB,$BB,$AF,$FF,$FF,$BB,$84,$AB
            .byte $03,$BB,$FF,$FF,$85,$BB,$0B,$AB
            .byte $FF,$FF,$AF,$BB,$BB,$AF,$BF,$BF
            .byte $FF,$FF,$84,$BF,$08,$AB,$AB,$FF
            .byte $00,$02,$0A,$03,$0E,$83,$3B,$05
            .byte $00,$E8,$DA,$F0,$FC,$83,$FF,$81
            .byte $3B,$84,$3F,$03,$0F,$03,$00,$85
            .byte $FF,$05,$FC,$F0,$00,$0A,$2F,$83
            .byte $2E,$83,$2F,$0C,$A8,$FE,$AE,$EE
            .byte $AE,$BE,$BE,$AE,$2F,$2F,$2F,$0A
            .byte $E4,$08,$BE,$AE,$FE,$A8,$00,$40
            .byte $80,$40,$C6,$02,$80,$40,$E4,$04
            .byte $55,$55,$44,$55,$E4,$83,$FF,$82
            .byte $AB,$85,$FF,$81,$55,$E5,$88,$34
            .byte $84,$40,$E4,$22,$3F,$2B,$0B,$2B
            .byte $AA,$8A,$2B,$0F,$C0,$F0,$BC,$BC
            .byte $FC,$FC,$FC,$C0,$FF,$BB,$BB,$AB
            .byte $AB,$BB,$BB,$FF,$FF,$AB,$AB,$EF
            .byte $EF,$AB,$AB,$FF,$A0,$A0,$84,$20
            .byte $84,$A8,$06,$08,$A8,$A8,$80,$A8
            .byte $A8,$83,$88,$82,$A8,$83,$08,$06
            .byte $A8,$A8,$80,$A8,$A8,$88,$84,$A8
            .byte $04,$88,$A8,$A8,$88,$84,$A8,$84
            .byte $88,$02,$A8,$A8,$30,$0E,$3A,$3A
            .byte $03,$3F,$03,$03,$03,$BC,$FF,$FF
            .byte $B0,$BF,$B0,$B0,$B0,$AB,$AB,$FF
            .byte $A0,$05,$05,$04,$04,$BA,$BA,$BF
            .byte $02,$54,$14,$04,$04,$05,$05,$05
            .byte $05,$05,$85,$85,$CD,$14,$14,$04
            .byte $14,$04,$14,$54,$50,$83,$82,$83
            .byte $28,$82,$82,$C4,$02,$80,$C0,$04
            .byte $00,$02,$0A,$2B,$84,$2F,$08,$80
            .byte $A0,$E8,$FA,$BE,$AE,$BE,$AE,$83
            .byte $2F,$83,$2E,$02,$2F,$2A,$83,$BE
            .byte $04,$AE,$EE,$AE,$FE,$83,$AA,$03
            .byte $FF,$AA,$AA,$83,$28,$05,$AA,$AA
            .byte $FF,$AA,$0A,$83,$02,$05,$AA,$AA
            .byte $FF,$AA,$A0,$83,$80,$84,$28,$83
            .byte $AA,$81,$FF,$84,$02,$04,$0A,$AA
            .byte $AA,$FF,$84,$80,$04,$A0,$AA,$AA
            .byte $FF,$C2,$04,$03,$03,$C0,$C0,$E4
            .byte $03,$3C,$7D,$14,$E5,$08,$FF,$FF
            .byte $55,$00,$00,$3F,$FF,$D5,$84,$D0
            .byte $04,$00,$FF,$FF,$55,$E5,$03,$FC
            .byte $FD,$5D,$84,$0D,$84,$D0,$03,$FF
            .byte $FF,$35,$E4,$05,$40,$50,$54,$50
            .byte $40,$E4,$04,$20,$88,$02,$00,$88
            .byte $34,$E3,$05,$01,$05,$15,$05,$01
            .byte $84,$0D,$04,$FD,$FD,$54,$00,$E2
            .byte $3E,$F0,$F0,$50,$55,$15,$05,$00
            .byte $02,$0E,$3F,$3C,$FF,$5A,$7B,$00
            .byte $80,$80,$00,$F0,$F4,$A5,$85,$05
            .byte $05,$15,$55,$D0,$F0,$F0,$00,$FB
            .byte $7B,$5A,$FF,$3C,$0F,$02,$02,$A5
            .byte $85,$A5,$F4,$F0,$00,$80,$80,$00
            .byte $01,$03,$0E,$0E,$8E,$82,$FD,$54
            .byte $55,$AB,$22,$AA,$FE,$AA,$FD,$E3
            .byte $55,$C0,$C0,$CA,$0A,$FC,$3D,$0D
            .byte $01,$05,$D5,$D5,$F4,$3C,$FD,$75
            .byte $55,$55,$55,$01,$00,$00,$F0,$C0
            .byte $00,$40,$5C,$5C,$7C,$F0,$00,$02
            .byte $02,$00,$0F,$1F,$5A,$52,$00,$80
            .byte $B0,$FC,$3C,$FF,$A5,$ED,$00,$00
            .byte $0F,$0F,$05,$55,$54,$10,$5A,$52
            .byte $5A,$1F,$0F,$00,$02,$02,$EF,$ED
            .byte $A5,$FF,$3C,$F0,$80,$80,$50,$50
            .byte $54,$55,$07,$0F,$0F,$00,$00,$3C
            .byte $F4,$D5,$D5,$05,$01,$0D,$E3,$23
            .byte $01,$55,$55,$55,$75,$00,$F0,$7C
            .byte $5C,$5C,$40,$00,$C0,$3D,$FD,$82
            .byte $8E,$0E,$0E,$03,$01,$FD,$FD,$AA
            .byte $FE,$AA,$22,$AB,$55,$F0,$FC,$0A
            .byte $CA,$C0,$C0,$E8,$12,$01,$0D,$00
            .byte $3F,$FF,$5F,$97,$D3,$5D,$55,$00
            .byte $C0,$F0,$F0,$FC,$FF,$FF,$F7,$E6
            .byte $07,$C0,$C0,$05,$0F,$05,$05,$01
            .byte $E3,$0D,$57,$55,$D5,$75,$57,$5F
            .byte $3F,$3F,$F7,$DF,$DF,$7F,$7F,$83
            .byte $7D,$83,$F0,$83,$FC,$82,$FF,$E8
            .byte $84,$1F,$04,$3F,$1F,$17,$17,$84
            .byte $7D,$04,$75,$D5,$D5,$D7,$84,$FF
            .byte $04,$7F,$7F,$FF,$FF,$E8,$17,$07
            .byte $03,$03,$00,$00,$01,$01,$00,$FF
            .byte $FF,$AA,$88,$AA,$75,$55,$00,$FC
            .byte $30,$80,$80,$80,$40,$40,$A1,$00
            .byte $A3,$00,$05,$50,$D0,$53,$D3,$5F
            .byte $E4,$04,$FF,$DF,$D7,$D7,$80,$00
            .byte $02,$17,$07,$E6,$02,$F7,$3D,$96
            .byte $00,$00
LB3AB:      ldx #$03
            jsr LB887
            ldx #$0A
            jsr LB7DB
            ldx #$0B
            jsr LB7DB
            ldx #$0C
            jsr LB7DB
            ldx #$05
            jsr LB878
            ldx #$06
            jsr LB878
            ldx #$07
            jsr LB878
            ldx #$08
            jsr LB878
            ldx #$09
            jsr LB878
            lda #$2E
            sta L1800
            lda #$18
            sta L1817
            ldx #$00
LB3E4:      lda L1800,X
            clc
            adc #$50
            sta L1801,X
            lda L1817,X
            adc #$00
            sta L1818,X
            inx
            cpx #$16
            bne LB3E4
            ldx #$07
            stx ICAX1Z
LB3FE:      ldx ICAX1Z
            lda L1808,X
            sta ABUFPT+2
            clc
            adc #$28
            sta ICHIDZ
            lda L181F,X
            sta ABUFPT+3
            adc #$00
            sta ICDNOZ
            lda L1800,X
            sta ICCOMZ
            clc
            adc #$28
            sta ICBALZ
            lda L1817,X
            sta ICSTAZ
            adc #$00
            sta ICBAHZ
            ldy #$27
LB428:      lda (ABUFPT+2),Y
            sta ICPTLZ
            lda (ICHIDZ),Y
            ldx #$07
LB430:      asl ICPTLZ
            ror ICBLHZ
            asl
            ror ICBLLZ
            dex
            bpl LB430
            lda ICBLLZ
            sta (ICCOMZ),Y
            lda ICBLHZ
            sta (ICBALZ),Y
            dey
            bpl LB428
            dec ICAX1Z
            bpl LB3FE
            ldx #$27
LB44B:      asl L1996,X
            rol L196E,X
            asl L1996,X
            rol L196E,X
            dex
            bpl LB44B
            rts
            .byte $28,$00,$1E,$13,$03,$06,$04,$03
            .byte $37,$07,$0F,$1F,$1F,$1F,$3F,$7F
            .byte $7F,$6F,$2E,$00,$02,$00,$00,$1C
            .byte $0C,$39,$7B,$7D,$4A,$3C,$08,$10
            .byte $00,$01,$03,$07,$0F,$03,$50,$67
            .byte $4D,$E3,$08,$80,$80,$C0,$C0,$E0
            .byte $E0,$E0,$F0,$84,$F8,$04,$FC,$FE
            .byte $3E,$06,$E6,$81,$C0,$E4,$13,$10
            .byte $38,$F8,$E0,$80,$00,$00,$01,$61
            .byte $2E,$00,$0F,$09,$01,$11,$00,$01
            .byte $09,$03,$86,$0F,$03,$07,$06,$06
            .byte $E4,$0D,$0E,$06,$0C,$3F,$3E,$26
            .byte $1C,$02,$0E,$0E,$0C,$04,$04,$E3
            .byte $0C,$0F,$0E,$00,$00,$80,$40,$60
            .byte $E0,$F0,$F0,$F8,$F8,$86,$FC,$03
            .byte $F8,$38,$38,$E4,$82,$80,$E3,$18
            .byte $08,$08,$1C,$1C,$3C,$64,$40,$C0
            .byte $C0,$00,$00,$78,$04,$04,$07,$04
            .byte $00,$09,$00,$06,$0E,$00,$18,$1F
            .byte $84,$3F,$03,$77,$67,$03,$E4,$1D
            .byte $07,$03,$06,$1F,$19,$11,$0F,$07
            .byte $08,$0F,$0F,$0F,$0E,$06,$14,$60
            .byte $47,$00,$00,$80,$C0,$A0
LB511:      .byte $20,$60,$60,$70,$70,$F0,$F0,$84
            .byte $F8,$03,$FC,$F8,$C0,$E5,$02,$40
            .byte $C0,$84,$80,$E2,$16,$80,$C0,$E0
            .byte $20,$11,$07,$0B,$98,$00,$00,$33
            .byte $27,$18,$7A,$70,$30,$16,$03,$03
            .byte $08,$03,$07,$84,$0F,$15,$04,$00
            .byte $40,$70,$40,$53,$64,$07,$0F,$0F
            .byte $09,$0C,$0C,$0F,$0C,$0E,$17,$33
            .byte $31,$30,$18,$E3,$11,$80,$C0,$D8
            .byte $5C,$DC,$28,$30,$74,$78,$F0,$F0
            .byte $F0,$F8,$F8,$FC,$FC,$3A,$E4,$4B
            .byte $80,$80,$A0,$60,$D6,$CF,$CB,$CE
            .byte $70,$F0,$F0,$E2,$C6,$82,$83,$01
            .byte $00,$00,$02,$40,$02,$C2,$E0,$F8
            .byte $F7,$73,$7B,$38,$3F,$1F,$1F,$3F
            .byte $7F,$7F,$30,$00,$00,$03,$C3,$81
            .byte $C5,$0D,$0F,$07,$08,$0C,$14,$17
            .byte $18,$1F,$1B,$4D,$8B,$87,$C0,$60
            .byte $00,$E0,$30,$B0,$30,$30,$50,$08
            .byte $0C,$1C,$3C,$78,$F8,$F0,$E0,$E0
            .byte $F0,$F8,$E0,$E3,$12,$C0,$C0,$40
            .byte $CC,$AC,$E4,$E0,$E0,$C0,$80,$80
            .byte $80,$E0,$C0,$80,$04,$1C,$30,$E3
            .byte $10,$07,$05,$10,$30,$70,$04,$00
            .byte $00,$0E,$06,$11,$7F,$7F,$7F,$3F
            .byte $19,$E5,$1A,$0A,$0F,$05,$05,$7B
            .byte $7F,$5F,$11,$19,$1E,$11,$1F,$08
            .byte $06,$60,$38,$01,$00,$00,$1C,$BE
            .byte $F8,$70,$78,$F0,$F0,$87,$E0,$03
            .byte $C0,$E0,$C0,$E5,$0A,$46,$8E,$86
            .byte $8C,$80,$80,$80,$C0,$E0,$E0,$E4
            .byte $11,$20,$E0,$00,$01,$05,$02,$00
            .byte $01,$06,$0C,$02,$0D,$1E,$3F,$3F
            .byte $13,$11,$E6,$0D,$0C,$0A,$0D,$03
            .byte $02,$19,$13,$19,$00,$00,$40,$00
            .byte $20,$E6,$09,$E0,$50,$B0,$08,$40
            .byte $B0,$08,$00,$08,$84,$F8,$02,$F0
            .byte $C0,$E6,$0E,$A0,$E8,$50,$B8,$48
            .byte $F0,$F8,$F0,$08,$18,$78,$78,$70
            .byte $C0,$E6,$0D,$05,$01,$06,$00,$01
            .byte $0E,$04,$02,$0D,$0E,$0F,$0D,$09
            .byte $E6,$09,$0C,$08,$0E,$01,$03,$1A
            .byte $11,$1B,$01,$E4,$02,$10,$0C,$E5
            .byte $09,$E0,$50,$B0,$08,$40,$B0,$08
            .byte $00,$08,$84,$F8,$02,$F0,$C0,$E6
            .byte $0E,$A0,$E8,$50,$B8,$48,$F0,$F8
            .byte $F0,$08,$18,$78,$78,$70,$C0,$E8
            .byte $10,$03,$06,$0C,$08,$10,$13,$34
            .byte $38,$7F,$7F,$6F,$6F,$6F,$2F,$0C
            .byte $0E,$E5,$10,$07,$05,$06,$0F,$0C
            .byte $0B,$07,$08,$0F,$0C,$0F,$06,$43
            .byte $70,$60,$2E,$E3,$10,$80,$C0,$60
            .byte $20,$10,$90,$58,$38,$DC,$FC,$AC
            .byte $EC,$EC,$E8,$60,$E0,$E5,$10,$C0
            .byte $40,$C0,$E0,$60,$A0,$C0,$20,$E0
            .byte $20,$60,$C0,$84,$1C,$0C,$E8,$E8
            .byte $03,$10,$35,$3B,$92,$00,$02,$09
            .byte $04,$E9,$0B,$06,$09,$01,$82,$C4
            .byte $64,$20,$14,$14,$58,$B8,$E5,$0F
            .byte $EC,$64,$E4,$04,$06,$09,$01,$02
            .byte $C4,$44,$C0,$E4,$64,$20,$40,$E5
            .byte $16,$80,$18,$08,$E8,$00,$00,$03
            .byte $07,$0B,$0F,$00,$03,$47,$26,$70
            .byte $3F,$1F,$0F,$1F,$3F,$3F,$10,$E5
            .byte $23,$04,$0A,$0C,$07,$AC,$A8,$C9
            .byte $0F,$00,$08,$0F,$0C,$06,$03,$60
            .byte $10,$00,$00,$00,$60,$F0,$B0,$E0
            .byte $00,$80,$D0,$D8,$18,$F0,$F0,$E0
            .byte $F0,$F8,$F8,$10,$E4,$11,$60,$F0
            .byte $B0,$60,$C0,$60,$25,$26,$E0,$00
            .byte $20,$E0,$60,$40,$80,$0C,$10,$E3
            .byte $11,$0F,$1F,$1B,$0F,$00,$07,$06
            .byte $04,$40,$1F,$7F,$0F,$0F,$1F,$3F
            .byte $1C,$08,$E3,$12,$0C,$1E,$1A,$0C
            .byte $07,$08,$09,$2B,$AF,$E0,$08,$0F
            .byte $0C,$06,$03,$00,$04,$38,$E3,$10
            .byte $C0,$A0,$E0,$00,$C0,$C0,$50,$18
            .byte $F8,$F0,$E0,$E0,$F0,$F8,$70,$20
            .byte $E4,$11,$40,$A0,$60,$C0,$20,$20
            .byte $A0,$E0,$06,$25,$E0,$60,$40,$80
            .byte $00,$40,$38,$03,$10,$1F,$29,$91
            .byte $00,$02,$E0,$60,$BA,$00,$E8,$02
            .byte $14,$33,$92,$00,$02,$0B,$0C,$92
            .byte $00,$02,$50,$98,$92,$00,$02,$A0
            .byte $60,$B5,$00,$25,$84,$C6,$66,$26
            .byte $16,$5E,$9E,$3C,$D8,$F0,$E0,$E0
            .byte $E0,$E0,$60,$E0,$00,$06,$06,$0E
            .byte $02,$C0,$40,$C0,$E0,$A0,$60,$C0
            .byte $20,$E0,$20,$60,$C0,$80,$00,$00
            .byte $E0,$00
LB7DB:      jsr LB8AB
LB7DE:      ldy #$00
            lda (ABUFPT+2),Y
            bne LB7E5
            rts
LB7E5:      bmi LB81A
            tax
            inc ABUFPT+2
            bne LB7EE
            inc ABUFPT+3
LB7EE:      lda (ABUFPT+2),Y
            sta (ICHIDZ),Y
            inc ABUFPT+2
            bne LB7F8
            inc ABUFPT+3
LB7F8:      inc ICHIDZ
            bne LB7FE
            inc ICDNOZ
LB7FE:      dex
            bne LB7EE
            beq LB7DE
LB803:      and #$1F
            tax
            inc ABUFPT+2
            bne LB80C
            inc ABUFPT+3
LB80C:      tya
LB80D:      sta (ICHIDZ),Y
            inc ICHIDZ
            bne LB815
            inc ICDNOZ
LB815:      dex
            bne LB80D
            beq LB7DE
LB81A:      cmp #$E0
            bcs LB803
            cmp #$C0
            and #$3F
            bcs LB841
            tax
            iny
            lda (ABUFPT+2),Y
            dey
LB829:      sta (ICHIDZ),Y
            inc ICHIDZ
            bne LB831
            inc ICDNOZ
LB831:      dex
            bne LB829
            lda #$02
LB836:      clc
            adc ABUFPT+2
            sta ABUFPT+2
            bcc LB7DE
            inc ABUFPT+3
            bne LB7DE
LB841:      sta ICBALZ
            inc ABUFPT+2
            bne LB849
            inc ABUFPT+3
LB849:      lda (ABUFPT+2),Y
            sta ICBAHZ
            inc ABUFPT+2
            bne LB853
            inc ABUFPT+3
LB853:      ldx ICBAHZ
            lda ABUFPT+2
            sta ICCOMZ
            lda ABUFPT+3
            sta ICSTAZ
LB85D:      lda (ICCOMZ),Y
            sta (ICHIDZ),Y
            inc ICHIDZ
            bne LB867
            inc ICDNOZ
LB867:      inc ICCOMZ
            bne LB86D
            inc ICSTAZ
LB86D:      dex
            bne LB85D
            dec ICBALZ
            bne LB853
            lda ICBAHZ
            bne LB836
LB878:      jsr LB8AB
LB87B:      lda (ICHIDZ),Y
            bne LB883
            lda (ABUFPT+2),Y
            sta (ICHIDZ),Y
LB883:      dey
            bpl LB87B
            rts
LB887:      jsr LB8AB
            sta ICCOMZ
            tya
            tax
            cpx #$00
            beq LB8A6
            ldy #$FF
LB894:      lda (ABUFPT+2),Y
            sta (ICHIDZ),Y
            dey
            cpy #$FF
            bne LB894
            inc ABUFPT+3
            inc ICDNOZ
            dex
            bmi LB8AA
            bne LB894
LB8A6:      ldy ICCOMZ
            bne LB894
LB8AA:      rts
LB8AB:      lda LB8C6,X
            sta ABUFPT+2
            lda LB8D3,X
            sta ABUFPT+3
            lda LB8E0,X
            sta ICHIDZ
            lda LB8ED,X
            sta ICDNOZ
            ldy LB8FA,X
            lda LB904,X
            rts
LB8C6:      .byte $00,$48,$D8,$69,$00,$F8,$FE,$2E
            .byte $2E,$BE,$E7,$71,$5B
LB8D3:      .byte $20,$27,$27,$A7,$24,$28,$1A,$1D
            .byte $1D,$1E,$BB,$AB,$B4
LB8E0:      .byte $00,$00,$00,$00,$00,$78,$6E,$7E
            .byte $BE,$0E,$00,$00,$AE
LB8ED:      .byte $30,$31,$31,$10,$34,$29,$1E,$1D
            .byte $1E,$1F,$08,$20,$1A
LB8FA:      .byte $07,$01,$01,$08,$02,$7F,$4F,$4F
            .byte $4F,$2F
LB904:      .byte $80,$00,$00,$00,$00
LB909:      ldx L0412
            beq LB918
            dec L0412
            bne LB918
            lda #$07
            sta L0404
LB918:      ldx #$09
            lda #$00
LB91C:      sta BUFADR,X
            dex
            bpl LB91C
            ldx #$11
            stx ICBLLZ
LB925:      ldx ICBLLZ
            lda L0400,X
            beq LB92F
            jsr LB93E
LB92F:      dec ICBLLZ
            bpl LB925
            ldx #$08
LB935:      lda BUFADR,X
            sta AUDF1,X
            dex
            bpl LB935
            rts
LB93E:      lda LBB1E,X
            pha
            lda LBB30,X
            pha
            rts
            ldx #$06
            ldy #$BE
            lda #$BA
            jsr LBA70
            bne LB955
            jsr L827C
LB955:      rts
            ldx #$06
            ldy #$C6
            lda #$BA
            jsr LBA70
            bne LB964
            jsr LBB80
LB964:      rts
            lda #$50
            sta ABUFPT+1
            ldx #$00
            ldy #$CE
            lda #$BA
            jsr LBA70
            ldx #$02
            ldy #$D6
            lda #$BA
            jsr LBA70
            ldx #$04
            ldy #$DE
            lda #$BA
            jsr LBA70
            sta L040A
            rts
            ldx #$00
            ldy #$E6
            lda #$BA
            jsr LBA70
            ldx #$02
            ldy #$EE
            lda #$BA
            jsr LBA70
            sta L040B
            rts
            ldx #$00
            ldy #$F6
            lda #$BA
            jsr LBA70
            ldx #$02
            ldy #$FE
            lda #$BA
            jsr LBA70
            sta L040C
            rts
            ldx #$02
            ldy #$06
            lda #$BB
            jsr LBA70
            sta L040D
            rts
            ldx #$00
            ldy #$0E
            lda #$BB
            jsr LBA70
            ldx #$02
            ldy #$16
            lda #$BB
            jsr LBA70
            sta L040E
            rts
            dec L0400,X
            bne LB9EE
            cpx #$04
            bne LB9E5
            lda #$07
            sta L0412
LB9E5:      cpx #$07
            bne LB9EE
            lda #$60
            sta L0400,X
LB9EE:      lda LBB52,X
            sta ABUFPT+2
            lda LBB4A,X
            sta ABUFPT+3
            lda LBB62,X
            sta ICHIDZ
            lda LBB5A,X
            sta ICDNOZ
            ldy L0400,X
            lda LBB42,X
            asl
            tax
            lda (ABUFPT+2),Y
            sta BUFADR,X
            lda (ICHIDZ),Y
            sta BUFADR+1,X
            ldx ICBLLZ
            rts
            lda L0D91
            sta DSKFMS+1
            lda L0D92
            sta DSKUTL
            inc L0D90
            lda L0D90
            and #$07
            bne LBA2C
            inc L0D92
LBA2C:      inc L0D91
            lda L0D91
            sec
            sbc #$66
            bne LBA3A
            sta L040F
LBA3A:      rts
            ldx #$02
LBA3D:      inc L0EDD,X
            bmi LBA53
            ldy L0EDD,X
            cpy #$45
            bcs LBA5A
            lda L0DD8,Y
            sta BUFADR,X
            lda L0D93,Y
            sta BUFADR+1,X
LBA53:      inx
            inx
            cpx #$08
            bcc LBA3D
            rts
LBA5A:      txa
            sec
            sbc #$06
            sta L0411
            jmp LBA53
            lda RANDOM
            and #$3E
            sta DSKFMS+1
            lda #$A3
            sta DSKUTL
            rts
LBA70:      dec L0EEF,X
            bpl LBA9F
            sty ICPTLZ
            sta ICPTHZ
            ldy #$07
LBA7B:      lda (ICPTLZ),Y
            sta ABUFPT+2,Y
            dey
            bpl LBA7B
            dec L0EDE,X
            bmi LBABB
            ldy L0EDE,X
            lda (ABUFPT+2),Y
            sta L0EE6,X
            lda (ICHIDZ),Y
            sta L0EE7,X
            lda (ICBALZ),Y
            sta L0EEF,X
            lda (ICCOMZ),Y
            sta L0EEE,X
LBA9F:      dec L0EEE,X
            bpl LBAAE
            lda L0EE7,X
            and #$0F
            beq LBAAE
            dec L0EE7,X
LBAAE:      lda L0EE6,X
            sta BUFADR,X
            lda L0EE7,X
            sta BUFADR+1,X
            lda #$01
            rts
LBABB:      .byte $A9,$00,$60,$12,$08,$24,$08,$36
            .byte $08,$48,$08,$5A,$08,$74,$08,$8E
            .byte $08,$A8,$08,$26,$09,$36,$09,$46
            .byte $09,$56,$09,$66,$09,$76,$09,$86
            .byte $09,$96,$09,$A6,$09,$B6,$09,$C6
            .byte $09,$D6,$09,$E6,$09,$06,$0A,$26
            .byte $0A,$46,$0A,$66,$0A,$86,$0A,$A6
            .byte $0A,$C6,$0A,$E6,$0A,$F8,$0A,$0A
            .byte $0B,$1C,$0B,$2E,$0B,$40,$0B,$52
            .byte $0B,$64,$0B,$D0,$0B,$D2,$0B,$D4
            .byte $0B,$D6,$0B,$F8,$0B,$12,$0C,$2C
            .byte $0C,$46,$0C,$60,$0C,$7A,$0C,$94
            .byte $0C,$AE,$0C
LBB1E:      .byte $B9,$B9,$B9,$B9,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$B9,$BA
            .byte $BA,$BA
LBB30:      .byte $D6,$D6,$D6,$D6,$D6,$D6,$D6,$D6
            .byte $46,$55,$64,$87,$9D,$B3,$C0,$14
            .byte $63,$3A
LBB42:      .byte $00,$00,$00,$03,$03,$00,$01,$02
LBB4A:      .byte $08,$08,$09,$0B,$0B,$0C,$0B,$0E
LBB52:      .byte $00,$C2,$18,$84,$76,$C8,$D8,$1A
LBB5A:      .byte $08,$08,$09,$0B,$0B,$0D,$0B,$0E
LBB62:      .byte $09,$ED,$1F,$AA,$7D,$2C,$E8,$7D
LBB6A:      lda #$2B
            sta L0401
            rts
LBB70:      lda #$09
            sta L0400
            rts
LBB76:      lda #$02
            sta L040D
            bne LBB89
LBB7D:      jsr LBBD1
LBB80:      lda #$1A
            sta L0EE4
            sta L0409
            rts
LBB89:      sta L0EE2
LBB8C:      sta L0EE0
            sta L0EDE
            rts
LBB93:      jsr LBBD1
            lda #$00
            sta L0D90
            lda #$16
            sta L0D91
            lda #$A3
            sta L0D92
            sta L040F
            rts
LBBA9:      jsr LBBD1
            lda #$10
            sta L040A
            bne LBB89
LBBB3:      jsr LBBD1
            lda #$12
            sta L040C
            bne LBB8C
LBBBD:      jsr LBBD1
            lda #$1A
            sta L040E
            bne LBB8C
LBBC7:      jsr LBBD1
            lda #$20
            sta L040B
            bne LBB8C
LBBD1:      lda #$00
            sta L0412
            ldy #$11
LBBD8:      sta L0400,Y
            dey
            bpl LBBD8
            ldy #$07
LBBE0:      sta L0EEE,Y
            dey
            bpl LBBE0
            rts
            .byte $0A,$14,$12,$10,$0F,$0D,$0B,$09
            .byte $07,$05,$A5,$82,$A4,$83,$A3,$83
            .byte $A2,$12,$D9,$F3,$D9,$B6,$B6,$D9
            .byte $F3
;
            ORG $022F
;
            .byte $00
;
            ORG $D400
;
            .byte $00
;
            ORG $9C00
;
            rts
L9C01:      lda #$16
            bne L9C32
L9C05:      dey
            bne L9C1B
            lda MLTTMP
            cmp #$40
            bcs L9C12
            lda #$1F
            bne L9C32
L9C12:      cmp #$53
            bcs L9C17
            rts
L9C17:      lda #$20
            bne L9C32
L9C1B:      dey
            bne L9C31
            lda MLTTMP
            cmp #$A0
            bcs L9C28
            lda #$21
            bne L9C32
L9C28:      cmp #$B2
            bcs L9C2D
            rts
L9C2D:      lda #$22
            bne L9C32
L9C31:      rts
L9C32:      sta BUFCNT
            jmp L9B10
L9C37:      ldx BUFCNT
            lda L1310,X
            bpl L9CAF
            and #$7F
            bne L9C46
            lda #$FF
            bne L9CB4
L9C46:      tay
            dey
            bne L9C58
            lda MLTTMP
            cmp #$BD
            bcs L9C54
            lda #$00
            beq L9CAF
L9C54:      lda #$00
            beq L9CB4
L9C58:      dey
            bne L9C5F
            lda #$06
            bne L9CB4
L9C5F:      dey
            bne L9C66
            lda #$05
            bne L9CB4
L9C66:      dey
            bne L9C77
            lda MLTTMP
            cmp #$AA
            bcs L9C73
            lda #$81
            bne L9CB4
L9C73:      lda #$01
            bne L9CB4
L9C77:      dey
            bne L9C85
            lda MLTTMP
            cmp #$5B
            bcs L9C81
            rts
L9C81:      lda #$03
            bne L9CAF
L9C85:      dey
            bne L9C9E
            lda MLTTMP
            cmp #$A5
            bcs L9C92
            lda #$04
            bne L9CAF
L9C92:      cmp #$AE
            bcs L9C9A
            lda #$83
            bne L9CB4
L9C9A:      lda #$03
            bne L9CB4
L9C9E:      dey
            bne L9CC8
            lda MLTTMP
            cmp #$2E
            bcs L9CAB
            lda #$87
            bne L9CB4
L9CAB:      lda #$07
            bne L9CB4
L9CAF:      ldx #$04
            jmp L9FF1
L9CB4:      sta ROWAC
            lda #$04
            sta ADRESS
            lda #$08
            sta MLTTMP+1
            lda ADRESS+1
            clc
            adc #$04
            sta ADRESS+1
            jmp LA4BD
L9CC8:      dey
            bne L9CD9
            lda MLTTMP
            cmp #$BA
            bcs L9CD5
            lda #$8A
            bne L9CB4
L9CD5:      lda #$0A
            bne L9CB4
L9CD9:      dey
            bne L9CEA
            lda MLTTMP
            cmp #$7B
            bcs L9CE6
            lda #$13
            bne L9CAF
L9CE6:      lda #$FF
            bne L9CB4
L9CEA:      dey
            bne L9CFB
            lda MLTTMP
            cmp #$6B
            bcs L9CF7
            lda #$14
            bne L9CAF
L9CF7:      lda #$FF
            bne L9CB4
L9CFB:      dey
            bne L9D02
            lda #$FF
            bne L9CB4
L9D02:      dey
            bne L9D13
            lda MLTTMP
            cmp #$6B
            bcs L9D0F
            lda #$16
            bne L9CAF
L9D0F:      lda #$FF
            bne L9CB4
L9D13:      dey
            bne L9D1A
            lda #$FF
            bne L9CB4
L9D1A:      dey
            bne L9D2B
            lda MLTTMP
            cmp #$6B
            bcs L9D27
            lda #$18
            bne L9CAF
L9D27:      lda #$FF
            bne L9CB4
L9D2B:      dey
            bne L9D32
            lda #$FF
L9D30:      bne L9CB4
L9D32:      dey
            bne L9D50
            lda MLTTMP
            cmp #$69
            bcs L9D3F
            lda #$99
            bne L9D30
L9D3F:      cmp #$7A
            bcs L9D47
            lda #$19
            bne L9D30
L9D47:      cmp #$93
            bcs L9D4C
            rts
L9D4C:      lda #$18
            bne L9D30
L9D50:      dey
            bne L9D57
            lda #$17
            bne L9D30
L9D57:      rts
L9D58:      jsr L9B5C
            cmp L1155,X
            bcs L9D63
            lda L1155,X
L9D63:      sta MLTTMP
            jmp LA4C1
            ldx HOLDCH
            dex
            bne L9D70
            jmp L9E21
L9D70:      dex
            beq L9DC2
            dex
            beq L9D58
            dex
            beq L9D7A
            rts
L9D7A:      jsr LBB70
            lda MLTTMP
            clc
            adc #$04
            ldx BUFCNT
            cmp L1181,X
            bcs L9D8E
            sta MLTTMP
            jmp LA4CD
L9D8E:      lda L11AD,X
            bmi L9D9D
            sta BUFCNT
            tax
            lda L1000,X
            ldx #$01
            bne L9DBF
L9D9D:      cmp #$F1
            bcs L9DAD
            and #$3F
            sta BUFCNT
            tax
            lda L1000,X
            ldx #$00
            beq L9DBF
L9DAD:      cmp #$FF
            bne L9DBB
            ldx BUFCNT
            lda L1181,X
            sta MLTTMP
            jmp LA4C9
L9DBB:      lda #$D2
            ldx #$00
L9DBF:      jmp LA30C
L9DC2:      ldx BUFCNT
            lda L1205,X
            bmi L9DDC
            sta BUFCNT
            tax
            lda #$0E
            sta ADRESS
            lda #$02
            sta MLTTMP+1
            lda L1231,X
            sta ADRESS+1
            jmp LA4BD
L9DDC:      and #$7F
            bne L9DE1
            rts
L9DE1:      tay
            dey
            bne L9E05
            lda MLTTMP
            cmp #$67
            bcs L9DEF
            lda #$01
            bne L9E1C
L9DEF:      cmp #$7B
            bcs L9DF4
            rts
L9DF4:      cmp #$97
            bcs L9DFC
            lda #$02
            bne L9E1C
L9DFC:      cmp #$AB
            bcs L9E01
            rts
L9E01:      lda #$03
            bne L9E1C
L9E05:      dey
            bne L9E1B
            lda MLTTMP
            cmp #$7F
            bcs L9E12
            lda #$09
            bne L9E1C
L9E12:      cmp #$93
            bcs L9E17
            rts
L9E17:      lda #$0A
            bne L9E1C
L9E1B:      rts
L9E1C:      sta BUFCNT
            jmp L9AAD
L9E21:      ldx BUFCNT
            lda L11D9,X
            bpl L9EA6
            and #$7F
            bne L9E2D
            rts
L9E2D:      tay
            dey
            bne L9E35
            lda #$FF
            bne L9EAB
L9E35:      dey
            bne L9E46
            lda MLTTMP
            cmp #$BA
            bcs L9E42
            lda #$02
            bne L9EA6
L9E42:      lda #$00
            beq L9EAB
L9E46:      dey
            bne L9E64
            lda MLTTMP
            cmp #$80
            bcs L9E53
            lda #$85
            bne L9EAB
L9E53:      cmp #$97
            bcs L9E5B
            lda #$05
            bne L9EAB
L9E5B:      cmp #$AB
            bcs L9E60
            rts
L9E60:      lda #$FF
            bne L9EAB
L9E64:      dey
            bne L9E7D
            lda MLTTMP
            cmp #$8D
            bcs L9E71
            lda #$03
            bne L9EA6
L9E71:      cmp #$AF
            bcs L9E79
            lda #$82
            bne L9EAB
L9E79:      lda #$02
            bne L9EAB
L9E7D:      dey
            bne L9E84
            lda #$07
            bne L9EAB
L9E84:      dey
            bne L9E95
            lda MLTTMP
            cmp #$A2
            bcs L9E91
            lda #$06
            bne L9EA6
L9E91:      lda #$03
            bne L9EAB
L9E95:      dey
            bne L9EBF
            lda MLTTMP
            cmp #$26
            bcs L9EA2
            lda #$88
            bne L9EAB
L9EA2:      lda #$08
            bne L9EAB
L9EA6:      ldx #$0C
            jmp L9FF1
L9EAB:      sta ROWAC
            lda #$0C
            sta ADRESS
            lda #$06
            sta MLTTMP+1
            lda ADRESS+1
            sec
            sbc #$03
            sta ADRESS+1
            jmp LA4BD
L9EBF:      dey
            bne L9ED0
            lda MLTTMP
            cmp #$BA
            bcs L9ECC
            lda #$8A
            bne L9EAB
L9ECC:      lda #$0A
            bne L9EAB
L9ED0:      dey
            bne L9ED7
            lda #$7F
            bne L9EAB
L9ED7:      dey
            bne L9EE8
            lda MLTTMP
            cmp #$6E
            bcs L9EE4
            lda #$15
            bne L9EA6
L9EE4:      lda #$8D
            bne L9EAB
L9EE8:      dey
            bne L9EEF
            lda #$FF
            bne L9EAB
L9EEF:      dey
            bne L9F00
            lda MLTTMP
            cmp #$6E
            bcs L9EFC
            lda #$17
            bne L9EA6
L9EFC:      lda #$FF
            bne L9EAB
L9F00:      dey
            bne L9F07
            lda #$13
            bne L9EAB
L9F07:      dey
            bne L9F0E
            lda #$12
            bne L9EAB
L9F0E:      dey
            bne L9F1F
            lda MLTTMP
            cmp #$26
            bcs L9F1B
            lda #$94
            bne L9EAB
L9F1B:      lda #$14
L9F1D:      bne L9EAB
L9F1F:      dey
            bne L9F3D
            lda MLTTMP
            cmp #$49
            bcs L9F2C
            lda #$1A
            bne L9F1D
L9F2C:      cmp #$64
            bcs L9F31
            rts
L9F31:      cmp #$68
            bcs L9F39
            lda #$99
            bne L9F1D
L9F39:      lda #$19
            bne L9F1D
L9F3D:      dey
            bne L9F53
            lda MLTTMP
            cmp #$A2
            bcs L9F4A
            lda #$18
            bne L9F1D
L9F4A:      cmp #$BC
            bcs L9F4F
            rts
L9F4F:      lda #$17
            bne L9F1D
L9F53:      rts
            lda #$08
            sta SAVADR
            ldx HOLDCH
            dex
            beq L9F65
            dex
            beq L9FA9
            dex
            dex
            beq L9FA9
            rts
L9F65:      lda ROWAC
            cmp #$7F
            bne L9F88
            lda ADRESS+1
            cmp #$58
            bcs L9F84
            lda MLTTMP
            cmp #$94
            bcs L9F7E
            lda #$19
            sta BUFCNT
            jmp L9AAD
L9F7E:      ldx #$01
            lda #$11
            bne L9F96
L9F84:      lda #$FF
            bne L9F90
L9F88:      lda ROWAC
            bmi L9F90
            ldx #$01
            bne L9F96
L9F90:      cmp #$FF
            beq L9FA2
            ldx #$00
L9F96:      and #$7F
            sta BUFCNT
            tay
            lda L1000,Y
            stx BUFSTR
            bne L9FA6
L9FA2:      ldx #$00
            lda #$D2
L9FA6:      jmp LA30C
L9FA9:      jmp L9B10
            lda #$00
            sta SAVADR
            ldx HOLDCH
            dex
            beq L9FBD
            dex
            beq L9FC0
            dex
            dex
            beq L9FBD
            rts
L9FBD:      jmp L9AAD
L9FC0:      lda BUFCNT
            cmp #$1E
            bne L9FD2
            lda ADRESS+1
            cmp #$94
            bcc L9FEA
            ldx #$01
            lda #$12
            bne L9FE0
L9FD2:      lda ROWAC
            bmi L9FDA
            ldx #$01
            bne L9FE0
L9FDA:      cmp #$FF
            beq L9FEA
            ldx #$00
L9FE0:      and #$7F
            sta BUFCNT
            tay
            lda L1000,Y
            bne L9FEE
L9FEA:      ldx #$00
            lda #$D2
L9FEE:      jmp LA30C
L9FF1:      .byte $85,$6B,$86,$64,$AA,$A9,$0A,$85
            .byte $67,$BD,$3C,$13,$85,$65,$BD
;
            ORG $BC00
;
            .byte $D9,$B6,$F3,$6E,$F3,$CC,$CC,$F3
            .byte $6E,$F3,$CC,$8A,$A5,$81,$C5,$84
            .byte $A5,$03,$C5,$A5,$A5,$C2,$09,$07
            .byte $06,$02,$05,$08,$04,$06,$06,$06
            .byte $C2,$09,$0F,$10,$08,$10,$0F,$08
            .byte $11,$0F,$10,$05,$AD,$B6,$C1,$B6
            .byte $F3,$C2,$03,$B6,$B6,$F3,$06,$B6
            .byte $B6,$C1,$CC,$D9,$CC,$C3,$03,$6E
            .byte $CC,$CC,$91,$A5,$C3,$03,$C5,$A5
            .byte $A5,$C2,$0D,$05,$06,$05,$06,$05
            .byte $0A,$06,$05,$09,$07,$07,$09,$06
            .byte $C2,$0D,$0A,$0B,$0A,$0B,$0C,$14
            .byte $0B,$0C,$14,$0B,$0C,$15,$0B,$C2
            .byte $06,$32,$33,$34,$35,$34,$33,$83
            .byte $32,$82,$33,$82,$34,$82,$35,$82
            .byte $34,$82,$33,$84,$32,$0E,$33,$34
            .byte $35,$33,$32,$31,$30,$30,$31,$32
            .byte $34,$36,$37,$39,$83,$A2,$84,$A3
            .byte $84,$A4,$85,$A5,$9B,$A6,$1E,$2A
            .byte $2E,$32,$39,$48,$61,$61,$A5,$A6
            .byte $A7,$A6,$A5,$06,$06,$78,$F2,$B8
            .byte $97,$B8,$97,$46,$B8,$46,$B8,$46
            .byte $FA,$B8,$FA,$B8,$FA,$90,$A0,$30
            .byte $15,$14,$13,$0B,$13,$0A,$14,$14
            .byte $09,$14,$09,$14,$14,$09,$15,$0A
            .byte $15,$14,$13,$0B,$13,$0A,$14,$14
            .byte $09,$14,$0A,$14,$14,$09,$15,$0A
            .byte $02,$02,$03,$05,$03,$05,$05,$03
            .byte $05,$03,$05,$04,$03,$04,$03,$04
            .byte $90,$A9,$82,$0A,$83,$06,$08,$05
            .byte $08,$09,$06,$06,$05,$09,$07,$83
            .byte $05,$20,$15,$14,$13,$0B,$13,$0A
            .byte $14,$14,$09,$14,$0A,$14,$14,$09
            .byte $15,$0A,$B6,$5B,$60,$00,$44,$51
            .byte $66,$79,$72,$60,$72,$88,$6C,$5B
            .byte $6C,$88,$90,$A7,$04,$0F,$08,$02
            .byte $12,$87,$0A,$81,$05,$83,$0A,$05
            .byte $05,$16,$12,$04,$12,$8C,$14,$E2
            .byte $1E,$44,$3C,$32,$2D,$35,$44,$51
            .byte $48,$35,$2D,$48,$44,$35,$2D,$44
            .byte $3C,$35,$32,$2D,$35,$44,$51,$48
            .byte $35,$2D,$48,$44,$35,$2D,$44,$E2
            .byte $9E,$A9,$E2,$C2,$0F,$11,$0E,$06
            .byte $0A,$06,$0A,$0A,$0A,$06,$0A,$0A
            .byte $0A,$06,$0A,$0A,$E2,$C2,$0F,$25
            .byte $25,$0A,$13,$0A,$13,$13,$1C,$0A
            .byte $13,$13,$1C,$0B,$13,$13,$21,$00
            .byte $88,$F3,$B6,$88,$6C,$88,$CC,$88
            .byte $6C,$88,$6C,$B6,$88,$B6,$88,$6C
            .byte $5B,$B6,$88,$88,$CC,$88,$CC,$88
            .byte $6C,$88,$6C,$B6,$88,$B6,$88,$00
            .byte $9F,$A6,$03,$00,$0A,$0C,$9D,$0A
            .byte $03,$11,$13,$15,$9D,$13,$12,$48
            .byte $44,$3C,$35,$32,$35,$3C,$44,$5B
            .byte $51,$48,$44,$3C,$35,$32,$35,$3C
            .byte $44,$92,$A8,$02,$0A,$07,$83,$0A
            .byte $C2,$04,$07,$07,$0A,$0A,$07,$0A
            .byte $0A,$07,$07,$0A,$13,$0A,$83,$13
            .byte $1F,$0A,$0A,$13,$13,$0A,$13,$0A
            .byte $13,$13,$13,$0A,$0A,$13,$5B,$5B
            .byte $51,$48,$44,$48,$51,$5B,$79,$6C
            .byte $66,$5B,$51,$48,$44,$48,$51,$5B
            .byte $92,$A8,$02,$0A,$07,$83,$0A,$C2
            .byte $04,$07,$07,$0A,$0A,$1F,$0A,$0A
            .byte $07,$07,$0A,$13,$0A,$13,$13,$13
            .byte $0A,$0A,$13,$13,$0A,$13,$0A,$13
            .byte $13,$13,$0A,$0A,$13,$18,$18,$1B
            .byte $1B,$1E,$1E,$23,$A7,$C3,$02,$A4
            .byte $A7,$85,$80,$84,$72,$84,$66,$83
            .byte $51,$83,$40,$83,$39,$83,$32,$83
            .byte $2A,$83,$25,$83,$23,$84,$1B,$A6
            .byte $A7,$08,$37,$4E,$C7,$C3,$0A,$04
            .byte $0A,$04,$20,$32,$32,$2D,$2D,$28
            .byte $28,$25,$25,$21,$21,$1D,$1D,$1A
            .byte $1A,$19,$19,$A3,$A8,$A4,$A9,$A5
            .byte $A9,$A6,$AA,$A7,$AA,$A7,$AA,$A8
            .byte $AB,$A9,$AC,$1B,$00,$44,$3C,$32
            .byte $35,$2D,$32,$28,$2D,$25,$28,$21
            .byte $25,$1D,$21,$1A,$1D,$19,$1B,$21
            .byte $28,$2F,$1D,$23,$2A,$35,$00,$99
            .byte $A9,$02,$5F,$06,$90,$03,$88,$06
            .byte $02,$5F,$18,$C2,$08,$05,$05,$05
            .byte $06,$05,$06,$05,$06,$C2,$04,$0A
            .byte $0C,$0C,$0C,$EA,$10,$88,$79,$88
            .byte $A2,$B6,$CC,$D9,$6E,$D9,$B6,$90
            .byte $79,$E6,$C1,$90,$6C,$EA,$87,$A5
            .byte $81,$C5,$88,$A5,$EA,$90,$06,$EA
            .byte $81,$18,$83,$0C,$81,$17,$83,$0C
            .byte $88,$18,$64,$88,$78,$6B,$5B,$70
            .byte $87,$98,$A6,$88,$7B,$68,$55,$68
            .byte $80,$8F,$A0,$88,$75,$62,$51,$68
            .byte $7A,$89,$9A,$80,$6E,$5D,$4C,$60
            .byte $73,$82,$93,$78,$68,$5A,$48,$64
            .byte $78,$8C,$78,$6B,$5F,$44,$56,$60
            .byte $73,$85,$67,$52,$40,$58,$6F,$7E
            .byte $68,$5F,$4D,$3C,$54,$58,$6A,$77
            .byte $60,$58,$49,$3A,$51,$65,$70,$60
            .byte $55,$45,$35,$4B,$50,$60,$69,$50
            .byte $40,$32,$45,$48,$5A,$63,$4C,$3D
            .byte $2F,$42,$54,$5C,$49,$39,$2D,$38
            .byte $40,$4D,$55,$46,$32,$2D,$27,$84
            .byte $A5,$86,$A6,$86,$A7,$8B,$A8,$89
            .byte $A9,$A0,$AA,$A0,$AA,$03,$00,$16
            .byte $00,$83,$A3,$83,$A0,$83,$A4,$C2
            .byte $06,$A0,$A0,$A0,$A5,$A5,$A5,$83
            .byte $A0,$83,$A6,$82,$A0,$83,$A8,$82
            .byte $A0,$82,$A9,$C2,$04,$A0,$A0,$A8
            .byte $A8,$82,$A0,$82,$A7,$81,$A0,$C2
            .byte $04,$A6,$A6,$A0,$A0,$82,$A5,$82
            .byte $A0,$82,$A4,$06,$A0,$A3,$A0,$A2
            .byte $A0,$A1,$86,$CC,$83,$B6,$83,$CC
            .byte $83,$A2,$83,$CC,$84,$99,$82,$CC
            .byte $83,$88,$82,$CC,$83,$80,$82,$CC
            .byte $82,$79,$82,$CC,$82,$72,$82,$CC
            .byte $82,$6C,$82,$CC,$82,$66,$81,$CC
            .byte $82,$60,$82,$CC,$83,$5B,$81,$51
            .byte $82,$55,$85,$51,$05,$4C,$51,$48
            .byte $51,$44,$88,$79,$88,$6C,$A0,$66
            .byte $88,$6C,$88,$79,$A0,$88,$CC,$08
            .byte $A0,$A0,$A6,$A6,$A6,$A6,$A6,$A6
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$80,$00,$00,$00,$80
;
            ORG $02E2
;
            .word L8000
;
         
