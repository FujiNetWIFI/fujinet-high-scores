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
L008D       = $008D
L008E       = $008E
L008F       = $008F
L0090       = $0090
L0091       = $0091
L0093       = $0093
L0094       = $0094
L0095       = $0095
L0096       = $0096
L0098       = $0098
L009A       = $009A
L009C       = $009C
L00A1       = $00A1
L00A2       = $00A2
L00A3       = $00A3
L00A4       = $00A4
L00A5       = $00A5
L00A6       = $00A6
L00A8       = $00A8
L00AA       = $00AA
L00AB       = $00AB
L00AC       = $00AC
L00B2       = $00B2
L00B3       = $00B3
L00B4       = $00B4
L00B5       = $00B5
L00B6       = $00B6
L00B8       = $00B8
L00B9       = $00B9
L00BB       = $00BB
L00BC       = $00BC
L00BD       = $00BD
L00BE       = $00BE
L00BF       = $00BF
L00C0       = $00C0
L00C1       = $00C1
L00C2       = $00C2
L00C6       = $00C6
L00C7       = $00C7
L00C8       = $00C8
L00C9       = $00C9
L00CA       = $00CA
L00CB       = $00CB
L00D2       = $00D2
L00D3       = $00D3
L00D4       = $00D4
L00D7       = $00D7
L00D8       = $00D8
L00D9       = $00D9
L00DA       = $00DA
L00DB       = $00DB
L00DC       = $00DC
L00DD       = $00DD
L00DE       = $00DE
L00DF       = $00DF
L00E0       = $00E0
L00E1       = $00E1
L00E2       = $00E2
L00E3       = $00E3
L00E4       = $00E4
L00E5       = $00E5
L00E6       = $00E6
L00E7       = $00E7
L00E8       = $00E8
L00E9       = $00E9
L00EA       = $00EA
L00EB       = $00EB
L00EC       = $00EC
L00ED       = $00ED
L00EE       = $00EE
L00EF       = $00EF
L00F0       = $00F0
L00F1       = $00F1
L00F2       = $00F2
L00F3       = $00F3
L00F4       = $00F4
L00F5       = $00F5
L00F6       = $00F6
L00F7       = $00F7
L00F8       = $00F8
L00F9       = $00F9
L00FA       = $00FA
L1000       = $1000
L100C       = $100C
L10FF       = $10FF
L1108       = $1108
L110A       = $110A
L111B       = $111B
L111F       = $111F
L1123       = $1123
L1300       = $1300
L1AFF       = $1AFF
L1BFF       = $1BFF
L66AE       = $66AE
LBDC5       = $BDC5
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
            ORG $022F
;
            .byte $00
;
            ORG $D400
;
            .byte $00
;
            ORG $A000
;
            .byte $FF,$FF,$FF,$FF,$87,$FF,$FF,$FF
            .byte $D3,$FF,$FF,$FF,$00,$FF,$FF,$FF
            .byte $00,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$FF,$FF,$FF,$FF,$EF,$FF,$FF
            .byte $00,$00,$00,$00,$FA,$FF,$00,$00
            .byte $3A,$FF,$00,$00,$3A,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $FF,$FF,$FF,$FF,$FF,$02,$FF,$FF
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$FF,$FF,$FF,$00,$3A,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FE,$FF
            .byte $00,$FA,$FF,$78,$60,$00,$FF,$00
            .byte $00,$00,$FF,$FF,$FF,$FF,$00,$FA
            .byte $FF,$FF,$00,$BA,$00,$00,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$8D,$FF,$FF,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$3A,$C5,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$F7,$FF,$00
            .byte $3A,$FF,$00,$18,$3A,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$FF,$FF
            .byte $FF,$00,$FA,$FF,$FF,$00,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $00,$FF,$00,$00,$00,$FF,$FF,$FF
            .byte $FF,$00,$FA,$FF,$FF,$00,$3A,$00
            .byte $00,$FA,$00,$00,$00,$3A,$AF,$FF
            .byte $FF,$FF,$8F,$FF,$FF,$FF,$5D,$FF
            .byte $FF,$FF,$00,$FA,$FF,$FF,$00,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$FF
            .byte $FF,$3C,$00,$FF,$00,$00,$00,$FF
            .byte $FF,$FF,$FF,$00,$FA,$FF,$FF,$00
            .byte $00,$00,$00,$FF,$82,$FF,$FF,$FF
            .byte $F7,$FF,$FF,$FF,$FF,$00,$00,$FA
            .byte $00,$FF,$FF,$00,$00,$FF,$FF,$00
            .byte $00,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FC,$FF,$FF,$FF
            .byte $07,$FF,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $66,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$C7,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$FF,$00,$66
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$FF,$02,$FF,$AF,$FF,$FF
            .byte $FF,$97,$FF,$FF,$00,$FF,$00,$66
            .byte $00,$00,$00,$FF,$FE,$FF,$FF,$FF
            .byte $C7,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $00,$3A,$00,$FA,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $A7,$FF,$FF,$FF,$FF,$00,$00,$00
            .byte $FF,$76,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$3A,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$FF,$FF,$FF,$00,$FA,$FF
            .byte $FF,$00,$00,$FF,$FF,$B2,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$FF,$00,$00
            .byte $00,$FF,$FF,$FF,$FF,$00,$FA,$FF
            .byte $FF,$00,$00,$00,$00,$FF,$00,$00
            .byte $FF,$FF,$FF,$00,$3E,$00,$FF,$76
            .byte $00,$00,$FF,$00,$00,$07,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$F6
            .byte $FF,$FF,$FF,$FF,$1C,$00,$FA,$FF
            .byte $3C,$00,$FA,$FF,$00,$00,$00,$FF
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$00
            .byte $00,$3A,$FF,$FF,$FF,$FF,$FF,$97
            .byte $FF,$FF,$FF,$FF,$00,$00,$00,$32
            .byte $FA,$FF,$FF,$00,$FA,$FF,$FF,$00
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $00,$00,$FF,$FF,$57,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$00,$00,$FF,$FF,$00
            .byte $00,$00,$00,$BA,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$FF,$FF,$9F,$FF,$FF,$FF
            .byte $00,$00,$FF,$FF,$FF,$00,$00,$00
            .byte $3A,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$00,$00,$00,$FF,$FF,$FF
            .byte $FF,$00,$FA,$FF,$FF,$00,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$00,$FF,$FF,$00,$00,$00
            .byte $00,$3A,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$FF,$01,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FA,$3A
            .byte $7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$00,$FF,$66,$60,$00,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$00,$FF,$00,$60,$C7,$FA,$FF
            .byte $00,$00,$FA,$FF,$00,$00,$00,$FF
            .byte $FF,$FF,$00,$00,$FF,$FF,$00,$BF
            .byte $FF,$FF,$FF,$B6,$FF,$FF,$FF,$FF
            .byte $00,$38,$00,$FF,$00,$00,$00,$FF
            .byte $FA,$FF,$FF,$00,$FA,$FF,$FF,$00
            .byte $3A,$00,$00,$FF,$00,$00,$00,$FF
            .byte $FF,$FF,$FF,$FF,$B0,$FF,$FF,$FF
            .byte $00,$FF,$FF,$7C,$00,$FF,$FF,$00
            .byte $00,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$FF
            .byte $FF,$FF,$FF,$FF,$72,$FF,$FF,$FF
            .byte $00,$00,$3A,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FE,$00,$00,$FF
            .byte $00,$FF,$00,$00,$00,$FF,$FF,$FF
            .byte $FF,$00,$FA,$FF,$FF,$00,$00,$FA
            .byte $00,$FF,$FF,$FF,$FF,$A5,$FF,$FF
            .byte $FF,$F6,$00,$00,$00,$FF,$FF,$FF
            .byte $FF,$00,$FA,$FF,$FF,$00,$00,$00
            .byte $00,$FA,$00,$00,$00,$FA,$FF,$00
            .byte $00,$FF,$FF,$FF,$FF,$FF,$52,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$00,$00
            .byte $3A,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$FF,$B6,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$FF,$00,$3C,$00,$FF,$00
            .byte $00,$00,$FA,$FF,$00,$00,$FA,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $F7,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$00,$FF,$00,$66,$00,$FF
            .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$DF,$07,$3C
            .byte $00,$FF,$00,$00,$00,$FF,$FF,$FF
            .byte $FF,$00,$FA,$FF,$FF,$00,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$5F,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$3A,$FF
            .byte $FF,$00,$00,$FF,$FF,$00,$00,$00
            .byte $00,$3A,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$FF,$CF,$FF
            .byte $FF,$FF,$F7,$FF,$FF,$FF,$0C,$FA
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$FF,$FF,$DF
            .byte $FF,$FF,$FF,$FE,$FF,$00,$00,$FF
            .byte $66,$60,$00,$FF,$00,$00,$00,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $FF,$18,$00,$FF,$66,$00,$00,$FF
            .byte $FF,$00,$00,$FA,$FF,$00,$00,$00
            .byte $FF,$FF,$FF,$00,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$AF,$FF,$FF,$FF
            .byte $FF,$63,$00,$00,$FF,$00,$00,$00
            .byte $3A,$FF,$FF,$FF,$00,$FA,$FF,$FF
            .byte $00,$00,$00,$00,$FF,$00,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$9B,$FF,$FF
            .byte $FA,$00,$FF,$FF,$0C,$00,$FF,$FF
            .byte $00,$00,$00,$BA,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$FF
            .byte $FF,$5F,$FF,$FF,$3A,$F2,$FF,$00
            .byte $FF,$00,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$FF
            .byte $FF,$FF,$DD,$FF,$FF,$FF,$87,$00
            .byte $FF,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$FF,$FF
            .byte $FF,$5F,$FF,$FF,$FF,$FF,$7F,$00
            .byte $00,$FF,$6C,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FA,$3A,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$EF,$FF,$FF,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$FF,$FF,$FF,$00,$FA
            .byte $FF,$FF,$00,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$DF,$FF,$00,$FF,$00
            .byte $00,$00,$FF,$FF,$FF,$FF,$00,$FA
            .byte $FF,$FF,$00,$00,$00,$00,$FA,$FF
            .byte $00,$00,$00,$FF,$FF,$FF,$FF,$FD
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $FA,$FF,$FF,$00,$00,$00,$BA,$FF
            .byte $F7,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$00,$00,$00,$FA,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$FF
            .byte $FF,$FF,$8F,$FF,$FF,$FF,$FF,$67
            .byte $00,$00,$FF,$66,$00,$00,$FE,$00
            .byte $00,$00,$FE,$FF,$00,$00,$FA,$FF
            .byte $00,$00,$FA,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$C7,$FF,$FF,$00,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $00,$00,$00,$FF,$FF,$FF,$FF,$00
            .byte $FA,$FF,$FF,$00,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$AF,$FF,$00,$FF
            .byte $00,$00,$00,$FA,$00,$FF,$FF,$00
            .byte $00,$FF,$FF,$00,$00,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $FF,$00,$00,$FF,$FF,$FF,$03,$00
            .byte $00,$00,$FF,$FF,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$D3,$FF,$00,$FF,$00,$FA
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FA,$00
            .byte $00,$00,$FA,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$3C,$00,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $BF,$FF,$FF,$FF,$00,$DF,$00,$FF
            .byte $7C,$00,$00,$FF,$00,$00,$00,$FA
            .byte $00,$FF,$FF,$00,$00,$FF,$FF,$00
            .byte $00,$00,$00,$FF,$54,$FF,$FF,$FF
            .byte $F7,$FF,$FF,$FF,$FF,$00,$00,$00
            .byte $00,$00,$00,$FA,$87,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$6B,$00,$00
            .byte $FF,$00,$00,$00,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $00,$FA,$FF,$FF,$8F,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$00,$00,$00
            .byte $FF,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $00,$FA,$FF,$FF,$00,$00,$00,$00
            .byte $FA,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$87,$FF,$FF,$00,$FF,$FF,$FF
            .byte $FF,$00,$FA,$FF,$FF,$00,$00,$00
            .byte $3A,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$ED,$B7,$00,$FF,$00,$BA,$00
            .byte $00,$FA,$00,$00,$00,$FA,$FF,$00
            .byte $00,$3A,$FF,$00,$00,$3A,$FF,$00
            .byte $FF,$FF,$FF,$FF,$00,$00,$00,$FF
            .byte $FF,$00,$00,$FA,$FF,$00,$00,$00
            .byte $FF,$FF,$FF,$FF,$00,$FA,$FF,$FF
            .byte $00,$FA,$FF,$FF,$DF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$00,$FF,$00,$00,$00
            .byte $32,$FF,$FF,$FF,$00,$FA,$FF,$FF
            .byte $00,$00,$00,$00,$FF,$00,$00,$00
            .byte $FE,$00,$FF,$FF,$FF,$BF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$00,$FF,$FF
            .byte $00,$00,$00,$00,$3A,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$BA,$00,$00,$FF,$7C,$00
            .byte $00,$FF,$00,$00,$00,$FF,$00,$00
            .byte $00,$FF,$00,$00,$00,$FA,$00,$00
            .byte $00,$FB,$EF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$FF,$FF,$FF,$FF,$00,$FF,$FF
            .byte $FF,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$00,$00,$FF,$00,$00
            .byte $00,$FF,$FF,$FF,$FF,$00,$FA,$FF
            .byte $FF,$00,$00,$FA,$00,$FF,$00,$00
            .byte $00,$FF,$F7,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FD,$FF,$FF,$00,$00,$FF
            .byte $FF,$FF,$00,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$01,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$00,$00,$00,$00,$FF,$3C
            .byte $00,$00,$FF,$00,$00,$00,$FF,$00
            .byte $00,$00,$FF,$00,$00,$00,$FA,$00
            .byte $00,$00,$FF,$FF,$FF,$FF,$FF,$A2
            .byte $FF,$FF,$00,$FF,$00,$7C,$00,$FF
            .byte $00,$00,$00,$FF,$00,$00,$00,$FF
            .byte $FF,$FA,$FF,$FF,$FF,$00,$00,$BA
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$BF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$00,$FF,$00
            .byte $FA,$FF,$FF,$FF,$FA,$FF,$FF,$FF
            .byte $FA,$FF,$FF,$FF,$00,$FF,$FF,$FF
            .byte $00,$FF,$FF,$FF,$FF,$FC,$FF,$FF
            .byte $FF,$07,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FA,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$CF,$FF,$FF,$3A,$FF,$FF
            .byte $FF,$3A,$FF,$FF,$FF,$3A,$FF,$FF
            .byte $FF,$FF,$FF,$FA,$FF,$FF,$FF,$00
            .byte $00,$BA,$FF,$FF,$FF,$FF,$AF,$FF
            .byte $FF,$FF,$02,$FF,$FF,$FF,$BB,$FF
            .byte $FF,$FF,$FF,$FA,$87,$FF,$FF,$FF
            .byte $C9,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FA,$FF,$FF,$CF,$FF,$FF,$FF
            .byte $D7,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FA,$FF,$FF,$FF,$00,$00,$FF
            .byte $FA,$FF,$FF,$FF,$FF,$F5,$FF,$FF
            .byte $FF,$81,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FA,$FF,$FF,$FF,$00,$00
            .byte $3A,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$BF,$FF
            .byte $FF,$05,$FF,$FF,$FF,$FF,$BA,$00
            .byte $00,$FA,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$3A,$FF,$FF,$FF,$3A,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FA,$FF,$FF,$FF,$00,$00,$FF
            .byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$02,$FF,$FF,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FA,$FF,$FF,$FF,$FF,$00
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$00,$FF,$FF
            .byte $FF,$AD,$FF,$FF,$FF,$FF,$00,$FA
            .byte $00,$FF,$FF,$FF,$FF,$FE,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$00,$E6,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FA,$FF,$FF,$FF
            .byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FA,$FF,$FF,$00,$00
            .byte $3A,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FA,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$D3,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FA,$FF,$FF,$FF,$00
            .byte $3A,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FA,$00
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$10,$FF,$DF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FA,$FF,$FF,$FF,$00,$00
            .byte $FF,$09,$BF,$FF,$FF,$FF,$AF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$3A,$FF
            .byte $FF,$FF,$3A,$FF,$FF,$FF,$00,$FA
            .byte $00,$FA,$FF,$FF,$FF,$00,$FF,$FF
            .byte $FF,$FF,$02,$FF,$FF,$FF,$CF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $FF,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FE,$FF,$FF,$FF,$F7
            .byte $00,$BA,$FE,$FF,$FF,$FF,$FA,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$00,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FA
            .byte $00,$FF,$92,$FF,$BF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FC,$FF,$FF,$FF
            .byte $FF,$5D,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$00,$FF,$FF
            .byte $FF,$FF,$00,$FA,$00,$FF,$FF,$FF
            .byte $00,$FF,$FF,$FF,$FF,$C7,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FA,$FF
            .byte $FF,$FF,$00,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$B3,$FF
            .byte $FF,$FF,$FF,$00,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$D0,$FF,$FF,$FF,$E6,$FF,$FF
            .byte $FF,$FF,$00,$FA,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$F5,$FF
            .byte $FF,$FF,$81,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$BA,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$3A,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$F7,$FF
            .byte $04,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FA
            .byte $FF,$FF,$FF,$FA,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FA,$FF,$FF,$FF,$FF,$00,$00,$FF
            .byte $FF,$00,$FF,$FF,$FF,$00,$FF,$FF
            .byte $FF,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FA
            .byte $FF,$FF,$DF,$FF,$FF,$FF,$D2,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$3A
            .byte $FF,$FF,$FF,$FF,$00,$00,$BA,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$FA,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$00,$00,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FA
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$00
            .byte $80,$FF,$FF,$FF,$9F,$FF,$FF,$FF
            .byte $00,$3A,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $EF,$FF,$FF,$FF,$CF,$FF,$FA,$FF
            .byte $FF,$00,$00,$FA,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $A5,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FE,$FF,$FF,$FF
            .byte $FA,$00,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$52,$FF,$FF,$FF,$EF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FA,$FF
            .byte $FF,$FF,$00,$FA,$00,$BF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$80,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FA,$FF,$FF,$FF,$00
            .byte $00,$BA,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$5F
            .byte $FF,$FF,$FF,$3A,$FF,$FF,$FF,$00
            .byte $3A,$00,$FA,$FF,$FF,$FF,$FA,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$00,$09
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$FF
            .byte $00,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $82,$FF,$FF,$FF,$07,$FF,$FF,$FA
            .byte $FF,$FF,$FF,$FA,$FF,$FF,$FF,$00
            .byte $FF,$FF,$FF,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $32,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FA,$BB
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$86
            .byte $FF,$FF,$FF,$F7,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$FF,$00,$DF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$3A,$FF,$FF,$FF
            .byte $FF,$00,$00,$FA,$FF,$FF,$FF,$BA
            .byte $FF,$FF,$FF,$FF,$F6,$FF,$FF,$FF
            .byte $DF,$FF,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$FA,$00,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$01,$FF,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$D0,$FF,$FF
            .byte $FF,$B5,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FA,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$D2,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$FA,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$00,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$80,$FF
            .byte $FF,$FF,$F2,$FF,$FF,$FF,$FF,$FA
            .byte $FF,$FF,$FF,$FF,$00,$00,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$EF
            .byte $FF,$FF,$FF,$FF,$BA,$00,$00,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FA,$FF,$FF,$FF,$00,$00,$FF
            .byte $FA,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$02,$FF,$FF,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FA,$FF,$FF,$FF,$FF,$00
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$2B,$FF,$FF
            .byte $FF,$80,$FF,$FF,$FF,$FF,$00,$FA
            .byte $00,$FF,$FF,$FF,$FF,$FE,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$00,$EF,$FF,$FF,$FF,$CF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$18,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FA,$FF,$FF,$FF,$FF,$00,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $D4,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $00,$FF,$FF,$FF,$FF,$00,$BA,$00
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$4D,$FF,$FF,$FF
            .byte $82,$FF,$FF,$FF,$FF,$00,$00,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$03,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$BA,$FF,$FF,$FF
            .byte $3A,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$F6,$FF,$FF,$FF
            .byte $B5,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $3A,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$00,$FF,$FF,$FF,$FF,$FF
            .byte $EF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $52,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$FF,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$A5,$FF,$FF
            .byte $FF,$FF,$00,$FA,$FA,$FF,$FF,$FF
            .byte $00,$FF,$FF,$FF,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$1F,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FA,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FA,$FF,$FF,$FF
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $EF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $3A,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$00,$00,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$F7,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FA,$FF,$FF
            .byte $FF,$00,$FF,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$A9,$FF,$FF
            .byte $FF,$FF,$00,$FA,$00,$FF,$FF,$FF
            .byte $00,$FF,$FF,$FF,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$BF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
LB000:      jsr LBDD9
            ldy #$7C
LB005:      sta COUNTR+1,Y
            dey
            bne LB005
            lda RANDOM
            sta L00BC
            jsr LBE78
            lda #$37
            sta SDMCTL
            lda #$10
            sta PMBASE
            ldy #$01
            sty GRACTL
            sty L0082
            lda #$04
            sta GPRIOR
            lda #$1B
            sta PCOLR2
            lda #$BE
            sta CHBAS
            lda #$B2
            sta VDSLST+1
            lda #$76
            sta VDSLST
            ldx #$B0
            ldy #$98
            lda #$06
            jsr SETVBV
            lda #$BE
            sta SDLSTH
            lda #$C8
            sta SDLSTL
            lda #$40
            sta NMIEN
            jsr LBBCC
LB058:      jmp LB058
LB05B:      lda #$01
            sta L00CA
            sta L00EE
LB061:      lda #$0A
            sta L00E8
            sta L00E4
            lda #$01
            sta L00EB
            sta L00EC
            jsr LBBCC
            jsr LBDD9
            sta L00F7
            sta L00F8
            sta L00E3
            sta L00E0
            sta L00EA
            sta L00F4
            ldy #$05
LB081:      sta L0096,Y
            dey
            bpl LB081
            sta L00D2
LB089:      sta L00E2
            sta L00E9
            ldx #$06
LB08F:      sta L00CB,X
            sta L100C,X
            dex
            bpl LB08F
            rts
            lda #$00
            sta L00F9
            nop
            nop
            nop
            lda L00EE
            bne LB0EA
            lda L0082
            beq LB0B4
            ldy #$0F
LB0A9:      lda LBDEC,Y
            sta L111B,Y
            dey
            bne LB0A9
            beq LB0EA
LB0B4:      ldy L0083
            lda LBADE,Y
            sta LOMEM
            lda #$BA
            sta LOMEM+1
            ldy #$03
LB0C1:      lda (LOMEM),Y
            sta L110A,Y
            dey
            bpl LB0C1
            ldy L00F3
            iny
            lda LBF99,Y
            sta LOMEM
            lda #$BF
            sta LOMEM+1
            ldy #$02
LB0D7:      lda (LOMEM),Y
            sta L111F,Y
            dey
            bpl LB0D7
            ldy #$05
LB0E1:      lda LBFA1,Y
            sta L1123,Y
            dey
            bpl LB0E1
LB0EA:      jsr LBAA8
            lda CONSOL
            eor #$FF
            and #$07
            beq LB131
            lda L00F2
            bne LB133
            lda #$FF
            sta L00F2
            lda CONSOL
            ror
            bcc LB113
            ror
            bcc LB119
            ror
            bcs LB133
            lda L0083
            eor #$01
            sta L0083
            jmp LB11F
LB113:      jsr LB05B
            jmp LB12A
LB119:      lda L00F3
            eor #$FF
            sta L00F3
LB11F:      lda #$00
            sta L00EE
            sta L00CA
            sta L0082
            jsr LB061
LB12A:      lda #$FF
            sta L00F9
            jmp LB166
LB131:      sta L00F2
LB133:      lda L00CA
            bmi LB13B
            bne LB166
            beq LB14F
LB13B:      dec L00E6
            bne LB14F
            dec L00E7
            bne LB14F
            jsr LBBCC
            lda #$00
            jsr LB089
            sta L00CA
            stx L0082
LB14F:      ldx #$00
            stx L00E0
            stx L00B6
            stx L00BB
            lda L00D7
            bne LB166
            lda STRIG0
            bne LB166
            jsr LB05B
            jmp LB12A
LB166:      ldx #$06
            stx L00E5
LB16A:      lda L00CB,X
            beq LB1B6
            cmp #$05
            beq LB17C
            lda L00EF
            and #$07
            bne LB19A
            inc L00CB,X
            bpl LB19A
LB17C:      dec L00E5
            bpl LB19A
            lda L00ED
            bne LB19A
            lda #$FF
            ldy L00F3
            beq LB198
            ldy L00F4
            sta L00F7,Y
            tya
            eor #$01
            tay
            lda L00F7,Y
            beq LB19A
LB198:      sta L00CA
LB19A:      ldy L00CB,X
            dey
            cpx #$06
            bne LB1AD
            lda LBD53,Y
            sta L0090
            lda LBD58,Y
            sta L0091
            bne LB1CF
LB1AD:      lda LBD4E,Y
            sta L0086
            sta L008A,X
            bne LB1CF
LB1B6:      ldy LBD38,X
            lda L00EF
            and LBD47,X
            bne LB1C3
            ldy LBD3F,X
LB1C3:      sty L0086
            sty L008A,X
            cpx #$06
            bne LB1CF
            lda #$18
            sta L0091
LB1CF:      dex
            bpl LB16A
            lda #$BC
            sta L0087
            lda #$1B
            sta L0089
            ldx #$02
LB1DC:      ldy #$4C
            lda L00CA
            bmi LB1EC
            ldy #$CC
            lda L00D4,X
            beq LB1EC
            dec L00D4,X
            ldy #$D4
LB1EC:      sty L0088,X
            dex
            dex
            bpl LB1DC
            lda L00F9
            bne LB23D
            lda #$03
            sta L00A1
LB1FA:      ldx L00A1
            lda L009C,X
            sec
            sbc #$08
            cmp #$F7
            bcc LB207
            lda #$00
LB207:      ldx #$00
            sta L0084
            lda L00A1
            asl
            tax
            lda L0084
            sta L00A2,X
            lda L0085
            sta L00A3,X
            ldx L00A1
            lda L009C,X
            ldx #$01
            sta L0084
            lda L00A1
            asl
            tax
            lda L0084
            sta L00AA,X
            lda L0085
            sta L00AB,X
            dec L00A1
            bpl LB1FA
            lda L00B6
            beq LB23D
            lda L009C
            sta L00B6
            clc
            adc #$02
            sta HPOSP2
LB23D:      ldx #$04
            lda L00EF
            and #$07
            bne LB251
            lda L00BC
            and #$06
            bne LB24D
            lda #$06
LB24D:      eor #$C0
            sta L0095
LB251:      ldy #$00
            lda L00D7
            beq LB25F
            and #$01
            beq LB25D
            ldy #$0F
LB25D:      dec L00D7
LB25F:      sty COLOR4
            sty COLBK
            ldy #$00
            nop
            lda #$98
            cmp #$98
            bne LB270
            ldy #$C0
LB270:      sty NMIEN
            jmp SYSVBV
            lda L00DB
            sta COLPF2
            lda L00CA
            bmi LB286
            lda L00D2
            bmi LB289
            jmp LB3F1
LB286:      jmp LB380
LB289:      lda L00EF
            and #$07
            bne LB2B2
            inc L00D2
            lda L00D2
            cmp #$85
            bcc LB2B2
            ldx #$03
LB299:      lda #$07
            sta L00BE,X
            lda #$00
            sta L009C,X
            dex
            bpl LB299
            nop
            nop
            nop
            sta L00B6
            sta L00D2
            sta L00B4
            sta L00B5
            jmp LB3F1
LB2B2:      lda L00D2
            and #$07
            tax
            lda LBB7F,X
            sta L00A2
            lda LBB84,X
            sta L00A4
            lda #$BB
            sta L00A5
            lda LBB9F,X
            sta L00A6
            lda LBBA4,X
            sta L00A8
            lda LBBA9,X
            sta L00AA
            ldy L00D3
            lda LBDC5,Y
            sec
            sbc LBB98,X
            sta L00AC
            lda #$3E
            cpx #$04
            bne LB2ED
            lda L00EF
            and #$0E
            eor #$0F
            ora #$30
LB2ED:      sta COLPM0
            sta COLPM1
            sta COLPM2
            sta COLPM3
            sta COLPF2
            lda L00B8
            clc
            adc #$05
            adc LBB89,X
            sta HPOSP3
            clc
            adc LBB8E,X
            sta HPOSP1
            sec
            sbc LBB93,X
            sta HPOSP2
            sec
            sbc LBB9A,X
            sta HPOSP0
            ldx #$C0
LB31E:      sta WSYNC
LB321:      txa
            sec
            sbc L00AC
            tay
            and L00A6
            bne LB35E
            tya
            and L00A8
            beq LB333
            tya
            eor L00AA
            tay
LB333:      lda (L00A4),Y
            clc
            ror
            ror
            ror
            sta GRAFP2
            and #$80
            sta GRAFP3
            lda #$BB
            sta L00A3
            lda (L00A2),Y
            dex
            cpx #$60
            beq LB363
            sta WSYNC
            sta GRAFP0
            lda #$1C
            sta L00A3
            lda (L00A2),Y
            sta GRAFP1
            jmp LB321
LB35E:      dex
            cpx #$60
            bne LB31E
LB363:      jsr LB374
            sta GRAFP2
            sta GRAFP3
            lda L00DB
            sta COLPF2
            jmp LB4D0
LB374:      sta WSYNC
LB377:      lda #$00
            sta GRAFP0
            sta GRAFP1
            rts
LB380:      ldy #$AE
            lda L00EF
            and #$02
            beq LB38A
            ldy #$B5
LB38A:      sty L00A2
            lda #$BD
            sta L00A3
            lda #$DE
            sta COLPM0
            lda L00EF
            and #$0F
            bne LB3AB
            lda L00DA
            beq LB3A1
            dec L00DA
LB3A1:      lda L00DA
            tay
            lda LBDBD,Y
            sta L00DB
            sta L00DC
LB3AB:      lda L00D9
            bne LB3C3
            lda #$3F
            sta L00DD
            sta L00E7
            lda #$8F
            sta L00D7
            sta L00DF
            lda #$02
            sta L00E1
            lda #$4B
            sta L00D8
LB3C3:      cmp #$80
            bcs LB3C9
            inc L00D9
LB3C9:      lda L00D8
            cmp #$D2
            bcs LB3D1
            inc L00D8
LB3D1:      lda L00D9
            sta HPOSP0
            ldx #$C0
LB3D8:      sta WSYNC
            txa
            sec
            sbc L00D8
            tay
            and #$F8
            bne LB3E9
            lda (L00A2),Y
            sta GRAFP0
LB3E9:      dex
            cpx #$61
            bne LB3D8
            jmp LB363
LB3F1:      lda #$03
            sta L00A1
LB3F5:      sta WSYNC
            ldy L00A1
            lda LBCFC,Y
            lsr
            cmp VCOUNT
            bne LB3F5
            lda #$4C
            sta L0084
            sta L0093
            lda L00BE
            bpl LB418
            and #$07
            cmp L00A1
            bne LB423
            lda L00C6
            jmp LB463
LB418:      and #$07
            cmp L00A1
            bne LB423
            lda L00C6
            jmp LB476
LB423:      lda L00BF
            bpl LB432
            and #$07
            cmp L00A1
            bne LB43D
            lda L00C7
            jmp LB463
LB432:      and #$07
            cmp L00A1
            bne LB43D
            lda L00C7
            jmp LB476
LB43D:      lda L00C0
            bpl LB44C
            and #$07
            cmp L00A1
            bne LB457
            lda L00C8
            jmp LB463
LB44C:      and #$07
            cmp L00A1
            bne LB457
            lda L00C8
            jmp LB476
LB457:      lda L00C1
            bpl LB46E
            and #$07
            cmp L00A1
            bne LB47F
            lda L00C9
LB463:      sta L0093
            clc
            adc #$08
            sta L0084
            ldy #$1B
            bne LB47F
LB46E:      and #$07
            cmp L00A1
            bne LB47F
            lda L00C9
LB476:      sta L0084
            clc
            adc #$08
            sta L0093
            ldy #$BC
LB47F:      sty L0085
            sty L0094
            ldy L00A1
            lda L009C,Y
            tax
            adc #$08
            jsr LBBF7
            nop
            lda #$B0
            clc
            adc #$57
            tay
            lda LBD1F
LB498:      sta WSYNC
            sta COLPM0
            sta COLPM1
            lda (L0084),Y
            sta GRAFP0
            lda (L0093),Y
            sta GRAFP1
            lda LBD17,Y
            dey
            bpl LB498
            jsr LB374
            dec L00A1
            bmi LB4BB
            jmp LB3F5
LB4BB:      ldy #$18
            lda L00CA
            beq LB4C5
            lda L00B6
            bne LB4C6
LB4C5:      tay
LB4C6:      lda L00EF
            and #$01
            bne LB4CD
            tay
LB4CD:      sty GRAFP2
LB4D0:      sta WSYNC
            lda VCOUNT
            cmp #$3B
            bne LB4D0
            sta WSYNC
            lda L00CB
            bne LB4E5
            lda #$BE
            sta L0087
LB4E5:      ldx #$78
            lda #$C8
            jsr LBBF7
            nop
            lda #$8D
            clc
            adc #$7A
            tay
            lda LBD2F
            sta COLPM0
            lda LBD27
LB4FC:      sta WSYNC
            sta COLPM1
            lda (L0086),Y
            sta GRAFP0
            lda (L0088),Y
            sta GRAFP1
            lda LBD27,Y
            sta COLPM0
            lda LBD1F,Y
            dey
            bpl LB4FC
            jsr LB374
            lda #$BC
            sta L0087
            jsr LBBEC
            ldy #$05
LB524:      sta WSYNC
            dey
            bpl LB524
            lda L008A
            sta L0086
            lda L008B
            sta L0088
            ldx #$30
            lda #$7F
            jsr LBBF7
            ldy #$07
            ldx LBD37
            lda LBD27
LB541:      sta WSYNC
            sta COLPM0
            stx COLPM1
            lda (L0086),Y
            sta GRAFP0
            lda (L0088),Y
            sta GRAFP1
            lda LBD1F,Y
            ldx LBD2F,Y
            dey
            bpl LB541
            lda L0095
            sta WSYNC
            sta COLBK
            jsr LB377
            lda L0095
            eor #$04
            sta WSYNC
            sta COLBK
            lda L0095
            sta WSYNC
            sta COLBK
            lda #$85
            sta COLBK
            lda L008C
            sta L0086
            lda L008D
            sta L0088
            lda L00DC
            and L00F1
            sta WSYNC
            sta COLPF2
            ldx #$6A
            lda #$B8
            jsr LBBF7
            ldy #$03
LB59A:      sta WSYNC
            dey
            bpl LB59A
            lda #$9C
            sta COLPM0
            lda #$3A
            sta COLPM1
            ldy #$07
LB5AC:      sta WSYNC
            lda (L0086),Y
            sta GRAFP0
            lda (L0088),Y
            sta GRAFP1
            dey
            bpl LB5AC
            jsr LB374
            ldy #$06
LB5C1:      sta WSYNC
            dey
            bpl LB5C1
            lda L008E
            sta L0086
            sta L0088
            ldx #$54
            lda #$5C
            jsr LBBF7
            ldy #$07
LB5D6:      sta WSYNC
            lda (L0086),Y
            sta GRAFP0
            lda (L0088),Y
            sta GRAFP1
            lda LBD00,Y
            sta COLPM0
            sta COLPM1
            dey
            bpl LB5D6
            jsr LB374
            lda L008F
            sta L0086
            sta L0088
            ldx #$90
            lda #$98
            jsr LBBF7
            sta WSYNC
            ldy #$07
LB604:      sta WSYNC
            lda (L0086),Y
            sta GRAFP0
            lda (L0088),Y
            sta GRAFP1
            lda LBD08,Y
            sta COLPM0
            sta COLPM1
            dey
            bpl LB604
            jsr LB374
            ldy #$04
LB622:      sta WSYNC
            dey
            bpl LB622
            lda L0090
            sta L0086
            lda L0091
            sta L0088
            lda #$BC
            sta L0089
            ldx #$40
            lda #$48
            jsr LBBF7
            ldy #$07
LB63D:      sta WSYNC
            lda (L0086),Y
            sta GRAFP0
            lda (L0088),Y
            sta GRAFP1
            lda LBD10,Y
            sta COLPM0
            sta COLPM1
            dey
            bpl LB63D
            jsr LB374
            inc L00EF
            bne LB665
            inc L00F0
            bne LB665
            lda #$F3
            sta L00F1
LB665:      lda L00EF
            and #$07
            tay
            lda LBDA7,Y
            sta L00F5
            ldy L00F4
            lda STICK0,Y
            sta L00FA
            ldx #$01
LB678:      lda L00B2,X
            beq LB6B4
            tay
            lda LBD46,X
            eor #$FF
            and L1300,Y
            sta L1300,Y
            lda L00B4,X
            clc
            adc L00B9,X
            sta L00B4,X
            sta HPOSM0,X
            dec L00B2,X
            dec L00B2,X
            ldy L00B9,X
            bne LB69C
            dec L00B2,X
LB69C:      lda L00B2,X
            tay
            lda LBD46,X
            ora L1300,Y
            sta L1300,Y
            lda L00B2,X
            cmp #$05
            bcs LB6B4
            lda #$00
            sta L00B2,X
            sta L00B4,X
LB6B4:      dex
            bpl LB678
            lda L00EE
            beq LB6BE
            jsr LBFD1
LB6BE:      sta WSYNC
            lda VCOUNT
            cmp #$68
            bne LB6BE
            lda #$00
            sta GRAFP2
            lda #$90
            sta COLBK
            ldy L00F4
            lda LBF5F,Y
            sta COLPF0
            lda #$E0
            sta CHBASE
            jsr LBFA7
            lda L00CA
            cmp #$01
            bne LB725
            lda L00D2
            bmi LB725
            ldy L00F4
            lda STRIG0,Y
            beq LB6F9
            lda #$FF
            sta L00BB
            bne LB725
LB6F9:      lda L00BB
            bpl LB725
            ldx #$01
            ldy #$02
            stx ATRACT
            sty L00BB
            lda L00FA
            and #$08
            bne LB70E
            tay
            beq LB719
LB70E:      lda L00FA
            and #$04
            beq LB719
            lda L00CB
            bne LB725
            dey
LB719:      lda L00B3
            beq LB722
            dex
            lda L00B2
            bne LB725
LB722:      jsr LBD78
LB725:      ldy #$01
LB727:      ldx #$03
LB729:      lda L009C,X
            clc
            adc #$05
            sec
            sbc L00B4,Y
            bpl LB739
            eor #$FF
            clc
            adc #$01
LB739:      cmp #$09
            bcc LB740
LB73D:      jmp LB7F0
LB740:      lda LBCFC,X
            sec
            sbc L00B2,Y
            bcs LB73D
            lda LBCFC,X
            clc
            adc #$08
            sbc L00B2,Y
            bcc LB73D
            sty L0085
            ldy #$03
LB758:      lda L00BE,Y
            and #$47
            sta L0084
            cpx L0084
            bne LB7E2
            lda L00C6,Y
            cmp #$3D
            bne LB798
            lda #$10
            jsr LBF61
            lda #$80
            sta L00D2
            stx L00D3
            lda L00D7
            bne LB77D
            lda #$20
            sta L00D7
LB77D:      lda L009C,X
            sta L00B8
            ldy L00B2
            lda #$00
            sta L1300,Y
            ldy L00B3
            sta L1300,Y
            sta L00B2
            sta L00B3
            sta L00E0
            sec
            lda #$3F
            bne LB7A8
LB798:      lda L00BE,Y
            ora #$40
            sta L00BE,Y
            lda #$01
            jsr LBF61
            clc
            lda #$2F
LB7A8:      sta L00DD
            lda #$00
            sta L00DE
            ldy L0085
            lda L00B9,Y
            beq LB7BE
            lda #$01
            bcc LB7BB
            lda #$10
LB7BB:      jsr LBF61
LB7BE:      cpx #$00
            bne LB7C4
            stx L00B6
LB7C4:      sty LOMEM
            lda LBD46,Y
            sta LOMEM+1
            lda L00B2,Y
            tay
            lda LOMEM+1
            eor #$FF
            and L1300,Y
            sta L1300,Y
            ldy LOMEM
            lda #$00
            sta L00B2,Y
            beq LB7EA
LB7E2:      dey
            bmi LB7E8
            jmp LB758
LB7E8:      ldy L0085
LB7EA:      dey
            bmi LB7F6
            jmp LB727
LB7F0:      dex
            bmi LB7EA
            jmp LB729
LB7F6:      lda L00D2
            bmi LB831
            ldx #$06
LB7FC:      lda LBD71,X
            sec
            sbc L00B6
            bpl LB809
            eor #$FF
            clc
            adc #$01
LB809:      cmp LBFE1,X
            bcs LB82E
            cpx #$00
            beq LB816
            lda L00CB
            beq LB82E
LB816:      lda L00CB,X
            bne LB82E
            sta L00B6
            sta L00E4
            inc L00CB,X
            lda #$3F
            sta L00DD
            lda L00D7
            bne LB831
            lda #$03
            sta L00D7
            bne LB831
LB82E:      dex
            bpl LB7FC
LB831:      lda L00D2
            bmi LB839
            lda L00CA
            bpl LB83C
LB839:      jmp LB922
LB83C:      ldy #$03
LB83E:      lda #$03
            sta L0085
            lda L009C,Y
            beq LB84A
            jmp LB8E4
LB84A:      ldx L0085
            lda L00BE,X
            and #$03
            sta L0084
            cpy L0084
            beq LB85D
LB856:      dec L0085
            bpl LB84A
LB85A:      jmp LB8DE
LB85D:      lda L00BE,X
            and #$04
            beq LB856
            cpy #$03
            bne LB8BB
            lda L00CA
            beq LB86F
            lda L00E4
            beq LB856
LB86F:      lda L00EF
            and #$1F
            bne LB85A
            lda L00BC
            and #$80
            ora L00BE,X
            sta L00BE,X
            dec L00E4
            lda L00BC
            and #$03
            clc
            adc L00E2
            tax
            lda LBFE5,X
            sta L0093
            lda L00BD
            and #$07
            adc L0093
            sta L0093
            lda L00BD
            and #$03
            tax
LB899:      lda LBD66,X
            ldx L0085
            sta L00C6,X
            cmp #$3D
            bne LB8B5
            ldx #$01
            lda L00E9
            beq LB899
            lda L0093
            clc
            adc #$08
            sta L0093
            dec L00E9
            sta L00E0
LB8B5:      ldx L0085
            lda L0093
            sta L00C2,X
LB8BB:      lda L00BE,X
            and #$FB
            sta L00BE,X
            lda L00BE,X
            bpl LB8C9
            lda #$08
            bne LB8CB
LB8C9:      lda #$D0
LB8CB:      sta L009C,Y
            cpy #$00
            bne LB8DE
            sta L00B6
            lda L00C6,X
            cmp #$3D
            bne LB8DE
            lda #$00
            sta L00E0
LB8DE:      dey
            bmi LB922
            jmp LB83E
LB8E4:      ldx L0085
            lda L00BE,X
            and #$07
            sta L0084
            cpy L0084
            bne LB91C
            lda L00BE,X
            and #$40
            bne LB8DE
            jsr LBEA3
            cmp #$08
            bcc LB901
            cmp #$D0
            bcc LB8DE
LB901:      lda #$00
            sta L009C,Y
            cpy #$00
            bne LB912
            sta L00B6
            lda #$07
            sta L00BE,X
            bne LB8DE
LB912:      dec L00BE,X
            lda #$04
            ora L00BE,X
            sta L00BE,X
            bne LB8DE
LB91C:      dec L0085
            bpl LB8E4
            bmi LB8DE
LB922:      lda L00CA
            cmp #$01
            beq LB92E
            jsr LBDC9
            jmp LB93A
LB92E:      ldx #$1F
            ldy #$02
            lda #$22
            sta AUDC1
            sta AUDC2
LB93A:      lda L00DD
            beq LB946
            lsr
            lsr
            tax
            tay
            dec L00DD
            lda #$80
LB946:      sty LOMEM
            ora LOMEM
            sta AUDC1
            txa
            asl
            asl
            asl
            sta AUDF1
            ldy #$00
            lda L00DE
            beq LB971
            eor #$1F
            tax
            lda L00DE
            lsr
            lsr
            tay
            dec L00DE
            lda #$03
            sta AUDC2
            sta AUDC1
            stx AUDF1
            bne LB9C9
LB971:      lda L00DF
            beq LB989
            dec L00DF
            lda L00DF
            and L00E1
            beq LB989
            lda #$A6
            sta AUDC1
            sta AUDC2
            ldx #$0A
            ldy #$08
LB989:      lda L00E0
            beq LB9A6
            lda L00DD
            bne LB9A6
            lda #$A6
            sta AUDC1
            sta AUDC2
            ldx #$2C
            stx AUDF1
            lda L00EF
            and #$04
            bne LB9A6
            ldx #$2A
LB9A6:      lda L00B6
            beq LB9C9
            lda L00CA
            beq LB9C9
            lda L00D2
            bmi LB9C9
            lda #$AC
            sta AUDC2
            sta AUDC1
            ldy #$06
            ldx #$64
            stx AUDF1
            lda L00EF
            and #$04
            bne LB9C9
            ldx #$60
LB9C9:      stx AUDF2
            lda L00CA
            cmp #$02
            bne LBA23
            lda L00E6
            cmp #$4F
            bne LB9F7
            lda L00ED
            beq LB9EF
            ldx #$00
LB9DE:      lda L00CB,X
            beq LB9EA
            lda #$00
            sta L00CB,X
            dec L00ED
            beq LB9EF
LB9EA:      inx
            cpx #$07
            bne LB9DE
LB9EF:      lda #$40
            sta L00DF
            lda #$08
            sta L00E1
LB9F7:      dec L00E6
            bne LBA50
            jsr LBBCC
            lda #$01
            sta L00CA
            jsr LBDE4
            lda L00F3
            beq LBA1D
LBA09:      jsr LBBAE
            jsr LBAB6
            bne LBA14
            jsr LBABD
LBA14:      ldy L00F4
            lda L00F7,Y
            bne LBA09
            beq LBA50
LBA1D:      jsr LBABD
            jmp LBA50
LBA23:      cmp #$01
            bne LBA54
            lda L00E4
            bne LBA50
            ldx #$03
LBA2D:      lda L00BE,X
            cmp #$07
            bne LBA50
            dex
            bpl LBA2D
            lda #$02
            sta L00CA
            ldx L00E5
            bmi LBA48
            lda LBD6A,X
            jsr LBF61
            lda #$18
            sta L00DF
LBA48:      lda #$02
            sta L00E1
            lda #$9F
            sta L00E6
LBA50:      lda #$FF
            sta L00F1
LBA54:      ldx #$03
LBA56:      lda L00BE,X
            and #$40
            beq LBA8E
            lda L00EF
            and #$07
            bne LBAA4
            lda L00BE,X
            clc
            adc #$08
            sta L00BE,X
            lsr
            lsr
            lsr
            and #$07
            cmp #$04
            bne LBA88
            lda L00BE,X
            and #$03
            tay
            lda #$00
            sta L009C,Y
            cpy #$00
            bne LBA82
            sta L00B6
LBA82:      lda #$07
            sta L00BE,X
            bne LBAA4
LBA88:      tay
            lda LBD53,Y
            sta L00C6,X
LBA8E:      lda L00C6,X
            cmp #$1F
            beq LBA98
            cmp #$2E
            bne LBAA4
LBA98:      ldy #$1F
            lda L00EF
            and #$04
            bne LBAA2
            ldy #$2E
LBAA2:      sty L00C6,X
LBAA4:      dex
            bpl LBA56
            rti
LBAA8:      lda L00CA
            bpl LBABC
            lda L00F3
            beq LBABC
            lda L00EF
            and #$7F
            bne LBABC
LBAB6:      lda L00F4
            eor #$01
            sta L00F4
LBABC:      rts
LBABD:      lda L00E8
            clc
            adc #$02
            jsr LBDE4
            inc L00EA
            lda L0083
            bne LBAD1
            lda L00E9
            and #$07
            bne LBADD
LBAD1:      inc L00E2
            lda L00E2
            cmp #$08
            bcc LBADD
            lda #$08
            sta L00E2
LBADD:      rts
LBADE:      .byte $E0,$E4,$65,$61,$73,$79,$68,$61
            .byte $72,$64,$93,$36,$78,$6D,$52,$AF
            .byte $09,$AF,$6C,$8C,$5C,$BE,$0C,$8C
            .byte $A3,$BE,$62,$02,$2C,$1C,$42,$06
            .byte $39
LBAFF:      .byte $2F,$00,$00,$00,$00,$01,$01,$02
            .byte $03,$00,$00,$00,$03,$03,$02,$03
            .byte $01,$00,$02,$00,$05,$12,$07,$0A
            .byte $07,$00,$00,$01,$02,$01,$03,$02
            .byte $01,$00,$00,$00,$00,$00,$00,$01
            .byte $04,$00,$16,$02,$49,$1C,$0B,$25
            .byte $8E,$00,$00,$00,$00,$00,$01,$00
            .byte $00,$02,$01,$00,$02,$02,$00,$01
            .byte $02,$00,$00,$00,$04,$21,$00,$02
            .byte $12,$40,$12,$09,$00,$46,$12,$88
            .byte $01,$00,$02,$00,$00,$01,$00,$02
            .byte $00,$00,$01,$02,$02,$00,$02,$01
            .byte $00,$00,$00,$00,$02,$00,$40,$00
            .byte $00,$00,$02,$00,$00,$20,$00,$02
            .byte $00,$00,$00,$02,$00,$00,$00,$00
            .byte $01,$00,$00,$00,$00,$02,$00,$01
LBB7F:      .byte $00,$10,$20,$40,$60
LBB84:      .byte $08,$18,$30,$50,$70
LBB89:      .byte $01,$01,$01,$02,$03
LBB8E:      .byte $01,$01,$01,$02,$04
LBB93:      .byte $03,$03,$03,$06,$0A
LBB98:      .byte $00,$00
LBB9A:      .byte $08,$08,$08,$09,$0B
LBB9F:      .byte $F0,$F0,$E0,$E0,$E0
LBBA4:      .byte $08,$08,$10,$10,$10
LBBA9:      .byte $0F,$0F,$1F,$1F,$1F
LBBAE:      lda L00ED
            tax
            lda L00F6
            sta L00ED
            stx L00F6
            nop
            nop
            nop
            ldy #$07
LBBBC:      lda L100C,Y
            tax
            lda L00CB,Y
            sta L100C,Y
            stx L00CB,Y
            dey
            bpl LBBBC
            rts
LBBCC:      ldx #$03
LBBCE:      lda #$00
            sta L00D8
            sta L00D9
            sta L00B6
            sta L009C,X
            lda #$07
            sta L00BE,X
            sta L00DA
            dex
            bpl LBBCE
            stx L00F1
            lda #$06
            sta L00DB
            lda #$71
            sta L00DC
            rts
LBBEC:      lda L00BD
            lsr
            eor L00BC
            lsr
            rol L00BC
            ror L00BD
            rts
LBBF7:      stx HPOSP0
            sta HPOSP1
            rts
            .byte $B2
LBBFF:      .byte $6F,$8F,$8F,$43,$43,$21,$11,$08
            .byte $07,$09,$1B,$FF,$4B,$29,$1D,$09
            .byte $09,$FF,$7D,$2C,$2C,$08,$08,$00
            .byte $00,$FF,$F6,$D4,$D4,$D0,$C0,$C0
            .byte $00,$00,$07,$FF,$01,$00,$00,$00
            .byte $7E,$F8,$FE,$54,$FE,$3C,$0C,$00
            .byte $00,$07,$FF,$01,$00,$00,$00,$7E
            .byte $F8,$FE,$A8,$FE,$3C,$0C,$00,$00
            .byte $00,$0F,$00,$00,$00,$00,$78,$10
            .byte $30,$F8,$30,$10,$78,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$05,$0A,$05
            .byte $00,$00,$00,$00,$50,$A8,$50,$00
            .byte $00,$09,$12,$04,$12,$0C,$00,$00
            .byte $48,$A4,$10,$A0,$04,$80,$00,$12
            .byte $04,$09,$24,$11,$00,$08,$04,$90
            .byte $42,$08,$A0,$50,$A2,$00,$22,$05
            .byte $10,$04,$4A,$04,$22,$00,$02,$48
            .byte $A1,$04,$20,$48,$A1,$08,$06,$64
            .byte $CD,$7F,$7F,$CD,$64,$06,$0F,$3C
            .byte $F8,$5F,$5F,$F8,$7C,$0F,$00,$0E
            .byte $1C,$FF,$C7,$7F,$00,$00,$1F,$3C
            .byte $F8,$F8,$5E,$F8,$7C,$0F,$10,$10
            .byte $34,$10,$34,$10,$34,$18,$08,$08
            .byte $2C,$08,$2C,$08,$2C,$18,$90,$60
            .byte $90,$60,$90,$60,$90,$60,$60,$60
            .byte $60,$60,$60,$60,$60,$FF,$AB,$95
            .byte $36,$1E,$0C,$06,$03,$FF,$FF,$F5
            .byte $3E,$1E,$0C,$06,$00,$45,$AA,$3A
            .byte $4D,$98,$22,$08,$00,$00,$25,$A8
            .byte $0A,$44,$20,$81,$08,$00,$12,$41
            .byte $24,$01,$44,$01,$14,$20,$01,$80
            .byte $00,$82,$00,$00,$41
LBCFC:      .byte $60,$49,$32,$1B
LBD00:      .byte $38,$38,$B8,$38,$38,$6E,$38,$38
LBD08:      .byte $A8,$2A,$37,$80,$28,$00,$77,$FD
LBD10:      .byte $C8,$48,$97,$A8,$A8,$A8,$A8
LBD17:      .byte $A8,$64,$A4,$78,$DA,$3A,$56,$18
LBD1F:      .byte $98,$F6,$C8,$48,$96,$F6,$86,$86
LBD27:      .byte $7B,$16,$26,$34,$48,$66,$66,$74
LBD2F:      .byte $74,$37,$97,$3A,$54,$C6,$97,$26
LBD37:      .byte $38
LBD38:      .byte $70,$BD,$AD,$BD,$00,$08,$10
LBD3F:      .byte $70,$C4,$B5,$C4,$00,$08,$10
LBD46:      .byte $01
LBD47:      .byte $04,$04,$02,$04,$04,$04,$04
LBD4E:      .byte $DC,$E4,$EC,$F4,$4C
LBD53:      .byte $51,$5F,$6D,$7D,$4C
LBD58:      .byte $58,$66,$75,$85,$4C
LBD5D:      .byte $7A,$7A,$88
LBD60:      .byte $C8,$7A,$35
LBD63:      .byte $FD,$00,$03
LBD66:      .byte $1F,$9D,$8D,$3D
LBD6A:      .byte $05,$10,$15,$20,$25
LBD6F:      .byte $30,$35
LBD71:      .byte $7B,$82,$69,$BE,$5E,$90,$4E
LBD78:      lda LBD5D,Y
            sta L00B2,X
            lda LBD60,Y
            sta L00B4,X
            lda LBD63,Y
            sta L00B9,X
            lda #$1F
            sta L00DE
            lda #$03
            sta L00D4,Y
            rts
LBD91:      sta LOMEM
            lsr
            lsr
            lsr
            lsr
            jsr LBD9E
            lda LOMEM
            and #$0F
LBD9E:      clc
            adc #$10
LBDA1:      sta L1000,X
            inx
            inx
            rts
LBDA7:      .byte $05,$02,$07,$04,$01,$06,$03,$00
            .byte $18,$FF,$70,$FF,$18,$00,$00,$18
            .byte $FF,$0E,$FF,$18,$00,$00
LBDBD:      ldy #$A2
            ldy L00A6
            tay
            tax
            ldy L66AE
            .byte $7C
            bcc LBD6F
LBDC9:      lda #$00
            ldy #$07
LBDCD:      sta AUDC2,Y
            dey
            bpl LBDCD
            lda #$01
            sta AUDCTL
            rts
LBDD9:      ldy #$32
            lda #$00
LBDDD:      sta L10FF,Y
            dey
            bne LBDDD
            rts
LBDE4:      lda L00E8
            sta L00E4
            lda L00EA
            sta L00E9
LBDEC:      rts
            .byte $48,$63,$49,$40,$51,$59,$58,$53
            .byte $40,$69,$6D,$61,$67,$69,$63,$00
            .byte $09,$B8,$2C,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$FF,$66,$66,$3C,$24
            .byte $24,$7E,$FF,$0F,$07,$07,$03,$0F
            .byte $2F,$3F,$FF,$FF,$FE,$FC,$FE,$FE
            .byte $FC,$FE,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$7F,$7F,$1F,$3F
            .byte $7F,$3F,$7F,$C0,$E0,$C0,$E0,$F0
            .byte $F8,$FE,$FF,$0F,$07,$03,$07,$07
            .byte $03,$07,$0F,$F0,$E0,$C0,$E0,$E0
            .byte $C0,$E0,$F0,$00,$00,$00,$00,$FF
            .byte $FF,$FF,$FF,$F8,$FC,$FE,$FF,$FF
            .byte $FF,$FF,$FF,$0F,$3F,$BF,$FF,$FF
            .byte $FF,$FF,$FF,$00,$00,$00,$00,$C1
            .byte $C3,$EF,$FF,$FF,$7F,$3F,$7F,$FF
            .byte $FF,$FF,$FF,$5A,$FF,$5A,$7E,$5A
            .byte $10,$10,$10
LBE78:      ldy #$FF
LBE7A:      lda LBBFF,Y
            jsr LBE95
            sta L1AFF,Y
            dey
            bne LBE7A
            ldy #$FF
LBE88:      lda LBAFF,Y
            jsr LBE95
            sta L1BFF,Y
            dey
            bne LBE88
            rts
LBE95:      sta LOMEM
            ldx #$07
LBE99:      rol LOMEM
            ror LOMEM+1
            dex
            bpl LBE99
            lda LOMEM+1
            rts
LBEA3:      lda L00BE,X
            bpl LBEB0
            jsr LBEBF
            clc
            adc L009C,Y
            bne LBEBB
LBEB0:      jsr LBEBF
            sta LOMEM
            lda L009C,Y
            sec
            sbc LOMEM
LBEBB:      sta L009C,Y
            rts
LBEBF:      lda L00C2,X
            clc
            adc L00F5
            lsr
            lsr
            lsr
            rts
            .byte $80,$70,$70,$70,$70,$70,$70,$70
            .byte $70,$70,$70,$70,$70,$70,$70,$70
            .byte $47,$E7,$BE,$07,$07,$07,$07,$20
            .byte $46,$00,$11,$06,$41,$00,$1D,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$81,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$81,$00,$00,$00
            .byte $00,$81,$00,$00,$00,$00,$00,$00
            .byte $00,$82,$84,$83,$00,$00,$00,$00
            .byte $00,$00,$00,$82,$84,$84,$84,$84
            .byte $84,$83,$00,$00,$00,$00,$00,$00
            .byte $87,$84,$84,$83,$00,$00,$00,$00
            .byte $00,$00,$85,$84,$84,$84,$84,$84
            .byte $84,$84,$86,$00,$00,$82,$84,$88
            .byte $87,$84,$84,$84,$8A,$00,$00,$8B
            .byte $8C,$88,$87,$84,$84,$84,$84,$84
            .byte $84,$84,$84,$89,$89,$84,$84,$8A
            .byte $8B,$84,$84,$84,$8A,$8C,$8C,$8D
            .byte $84,$8A,$8B,$84,$84,$84,$84
LBF5F:      .byte $68,$28
LBF61:      sty LOMEM
            ldy L00F4
            sed
            bit L00CA
            bmi LBF95
            clc
            adc L0098,Y
            sta L0098,Y
            lda L009A,Y
            adc #$00
            sta L009A,Y
            lda L0096,Y
            adc #$00
            sta L0096,Y
            lda L009A,Y
            cmp L00EB,Y
            bne LBF95
            clc
            adc #$01
            sta L00EB,Y
            and #$F0
            bne LBF95
            inc L00ED
LBF95:      cld
            ldy LOMEM
            rts
LBF99:      .byte $9E,$9B,$6F,$6E,$65,$74,$77,$6F
LBFA1:      .byte $70,$6C,$61,$79,$65,$72
LBFA7:      ldy L00F4
            ldx #$00
            lda L009A,Y
            jsr LBD91
            lda L0098,Y
            jsr LBD91
            lda L0096,Y
            jsr LBD91
            cld
            ldx #$00
LBFC0:      lda L1000,X
            cmp #$10
            bne LBFD0
            lda #$00
            jsr LBDA1
            cpx #$0A
            bne LBFC0
LBFD0:      rts
LBFD1:      ldy #$05
            ldx #$0A
LBFD5:      lda L1000,X
            sta L1108,Y
            dex
            dex
            dey
            bpl LBFD5
            rts
LBFE1:      .byte $04,$02,$02,$02
LBFE5:      .byte $08,$08,$08,$08,$10,$10,$10,$10
            .byte $18,$18,$18,$18,$00,$61,$64,$76
            .byte $65,$6E,$74,$75,$72,$00,$B0,$00
            .byte $04,$97,$B0
;
            ORG $02E2
;
            .word LB000
;
         
