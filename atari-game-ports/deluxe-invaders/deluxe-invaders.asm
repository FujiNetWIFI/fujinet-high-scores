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
L008B       = $008B
L008C       = $008C
L008D       = $008D
L008E       = $008E
L008F       = $008F
L0091       = $0091
L0092       = $0092
L0093       = $0093
L0094       = $0094
L0095       = $0095
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
L00B2       = $00B2
L00B3       = $00B3
L00B4       = $00B4
L00B5       = $00B5
L00B6       = $00B6
L00B7       = $00B7
L00B8       = $00B8
L00B9       = $00B9
L00BA       = $00BA
L00BB       = $00BB
L00BC       = $00BC
L00BD       = $00BD
L00BE       = $00BE
L00BF       = $00BF
L00C0       = $00C0
L00C1       = $00C1
L00C2       = $00C2
L00C3       = $00C3
L00C4       = $00C4
L00C5       = $00C5
L00C6       = $00C6
L00C7       = $00C7
L00C8       = $00C8
L00C9       = $00C9
L00CA       = $00CA
L00CB       = $00CB
L00CC       = $00CC
L00CD       = $00CD
L00CE       = $00CE
L00CF       = $00CF
L00D0       = $00D0
L00D1       = $00D1
L00D2       = $00D2
L00D3       = $00D3
L00D4       = $00D4
L00DA       = $00DA
L00E0       = $00E0
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
L05FF       = $05FF
L0600       = $0600
L0602       = $0602
L0608       = $0608
L0609       = $0609
L060B       = $060B
L0611       = $0611
L0617       = $0617
L0629       = $0629
L064A       = $064A
L0661       = $0661
L0800       = $0800
L0880       = $0880
L0898       = $0898
L08B0       = $08B0
L08C8       = $08C8
L08E0       = $08E0
L08F8       = $08F8
L0900       = $0900
L0910       = $0910
L0928       = $0928
L0940       = $0940
L0958       = $0958
L0970       = $0970
L0988       = $0988
L09A0       = $09A0
L09D0       = $09D0
L0A00       = $0A00
L0A14       = $0A14
L0A3C       = $0A3C
L0A64       = $0A64
L0A65       = $0A65
L0A8C       = $0A8C
L0A8D       = $0A8D
L0AB4       = $0AB4
L0ADC       = $0ADC
L0B00       = $0B00
L0B01       = $0B01
L0B02       = $0B02
L0B03       = $0B03
L0B04       = $0B04
L0B05       = $0B05
L0B06       = $0B06
L0B07       = $0B07
L0B18       = $0B18
L0B19       = $0B19
L0B20       = $0B20
L0B21       = $0B21
L0C00       = $0C00
L0CC9       = $0CC9
L0D00       = $0D00
L0E00       = $0E00
L0E01       = $0E01
L0E08       = $0E08
L0E09       = $0E09
L0E48       = $0E48
L0E49       = $0E49
L0E4A       = $0E4A
L0E4B       = $0E4B
L0E4C       = $0E4C
L0E4D       = $0E4D
L0E4E       = $0E4E
L0E4F       = $0E4F
L0EAA       = $0EAA
L0EAC       = $0EAC
L0F00       = $0F00
L0F18       = $0F18
L0F19       = $0F19
L0F20       = $0F20
L0F21       = $0F21
L0FB0       = $0FB0
L1610       = $1610
L163E       = $163E
L163F       = $163F
L166D       = $166D
L1670       = $1670
L1673       = $1673
L1690       = $1690
L1694       = $1694
L1695       = $1695
L169D       = $169D
L169E       = $169E
L16A0       = $16A0
L16A1       = $16A1
L16A4       = $16A4
L16A5       = $16A5
L16A8       = $16A8
L16A9       = $16A9
L16AC       = $16AC
L16AD       = $16AD
L16B0       = $16B0
L16B1       = $16B1
L16B4       = $16B4
L16B5       = $16B5
L16B7       = $16B7
L16B8       = $16B8
L16BA       = $16BA
L16BB       = $16BB
L16BD       = $16BD
L16BE       = $16BE
L177D       = $177D
L178A       = $178A
L1812       = $1812
L183B       = $183B
L1845       = $1845
L1888       = $1888
L18A1       = $18A1
L18A4       = $18A4
L18A7       = $18A7
L193B       = $193B
L193E       = $193E
L1954       = $1954
L1976       = $1976
L1987       = $1987
L198E       = $198E
L1A58       = $1A58
L1AFA       = $1AFA
L1B02       = $1B02
L1B08       = $1B08
L1B4E       = $1B4E
L1BB2       = $1BB2
L1BD9       = $1BD9
L1BEA       = $1BEA
L1C85       = $1C85
L1D2E       = $1D2E
L1D60       = $1D60
L1D85       = $1D85
L1DAB       = $1DAB
L1E1D       = $1E1D
L1E88       = $1E88
L1EA9       = $1EA9
L1EF5       = $1EF5
L1F16       = $1F16
L1F23       = $1F23
L1F2E       = $1F2E
L1F62       = $1F62
L1F90       = $1F90
L1F97       = $1F97
L1FA5       = $1FA5
L1FB3       = $1FB3
L1FC1       = $1FC1
L1FCF       = $1FCF
L1FDD       = $1FDD
L1FEB       = $1FEB
L2014       = $2014
L2036       = $2036
L203D       = $203D
L2048       = $2048
L2057       = $2057
L206E       = $206E
L2083       = $2083
L20B9       = $20B9
L20DB       = $20DB
L2108       = $2108
L2138       = $2138
L215F       = $215F
L21F9       = $21F9
L2267       = $2267
L2271       = $2271
L22C5       = $22C5
L22ED       = $22ED
L234C       = $234C
L2357       = $2357
L23B6       = $23B6
L23B7       = $23B7
L23C8       = $23C8
L241B       = $241B
L241E       = $241E
L2458       = $2458
L246D       = $246D
L2478       = $2478
L24DC       = $24DC
L258D       = $258D
L25E5       = $25E5
L2695       = $2695
L269E       = $269E
L26CA       = $26CA
L273C       = $273C
L2760       = $2760
L2771       = $2771
L277E       = $277E
L27A6       = $27A6
L28AC       = $28AC
L28CC       = $28CC
L2909       = $2909
L2929       = $2929
L2949       = $2949
L297B       = $297B
L29BA       = $29BA
L2A4D       = $2A4D
L2A62       = $2A62
L2A8A       = $2A8A
L2A9D       = $2A9D
L2AF3       = $2AF3
L2B20       = $2B20
L2B36       = $2B36
L2B8E       = $2B8E
L2BCB       = $2BCB
L2C08       = $2C08
L2C13       = $2C13
L2CA9       = $2CA9
L2CC6       = $2CC6
L2D48       = $2D48
L2DAB       = $2DAB
L2DBC       = $2DBC
L2E40       = $2E40
L2E65       = $2E65
L2E92       = $2E92
L2F27       = $2F27
L3099       = $3099
L30AA       = $30AA
L30C0       = $30C0
L30E2       = $30E2
L30F3       = $30F3
L3109       = $3109
L31CF       = $31CF
L31D5       = $31D5
L339A       = $339A
L33E2       = $33E2
L33FA       = $33FA
L3400       = $3400
L347B       = $347B
L3493       = $3493
L34D3       = $34D3
L3517       = $3517
L351D       = $351D
L355D       = $355D
L359D       = $359D
L35A1       = $35A1
L35DD       = $35DD
L3683       = $3683
L3689       = $3689
L368F       = $368F
L36A7       = $36A7
L36AB       = $36AB
L36BF       = $36BF
L36D3       = $36D3
L36E0       = $36E0
L36ED       = $36ED
L36FA       = $36FA
L3707       = $3707
L372E       = $372E
L3755       = $3755
L376D       = $376D
L3785       = $3785
L3789       = $3789
L378D       = $378D
L3917       = $3917
L394F       = $394F
L3997       = $3997
LE080       = $E080
LE100       = $E100
LE150       = $E150
;
; Start of code
;
            ORG $3FCE
;
L3FCE:      lda #$7D
            sta L00F0
            lda #$17
            sta L00F1
            lda #$00
            sta L00F2
            lda #$40
            sta L00F3
            ldy #$00
L3FE0:      lda (L00F2),Y
            sta (L00F0),Y
            iny
            bne L3FE0
            inc L00F1
            inc L00F3
            lda L00F1
            cmp #$40
            bne L3FE0
            lda #$7D
            sta DOSVEC
            sta DOSINI
            lda #$17
            sta DOSVEC+1
            sta DOSINI+1
            jmp L177D
            lda #$03
            sta SKCTL
            lda #$00
            sta AUDCTL
            jmp L2E92
            ldy #$EB
            ldx #$19
            lda #$07
            jsr SETVBV
            lda #$60
            sta VDSLST
            lda #$1A
            sta VDSLST+1
            lda #$C0
            sta NMIEN
            lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            lda #$08
            sta CHBAS
            lda #$08
            sta PMBASE
            lda #$24
            sta COLOR2
            lda #$46
            sta COLOR3
            lda #$0C
            sta PCOLR0
            lda #$01
            sta GPRIOR
            lda #$00
            sta SIZEP0
            sta SIZEP1
            sta SIZEP2
            sta SIZEP3
            cli
            jsr L2B20
            jsr L1EA9
            jsr L1EF5
            jsr L2AF3
            lda LOMEM
            cmp #$02
            beq L4095
            lda #$50
            sta L163E
            lda #$06
            sta L163F
            lda #$01
            sta L0086
            lda LOMEM
            cmp #$02
            bcc L4086
            lda #$00
            sta LOMEM
L4086:      jsr L1B4E
            lda CONSOL
            lsr
            bcs L4086
L408F:      lda CONSOL
            lsr
            bcc L408F
L4095:      ldy LOMEM
            ldx #$76
            lda #$00
L409B:      sta LOMEM,X
            dex
            bpl L409B
            sty LOMEM
            lda #$0C
            sta L008B
            sta L008C
            sta L0087
            sta L0088
            jsr L1EA9
            jsr L1EF5
            jsr L2AF3
            jsr L1F2E
            lda #$00
            sta L0095
            sta L0096
            jsr L2057
            jsr L21F9
            lda #$00
            sta ATRACT
            lda #$40
            sta IRQEN
            lda SSFLAG
            beq L40E4
            ldx L0083
            lda #$00
            sta L0083
L40D8:      lda #$40
            sta IRQEN
            lda SSFLAG
            bne L40D8
            stx L0083
L40E4:      jsr L1B08
            ldx #$05
L40E9:      lda L00D4,X
            cmp #$79
            beq L40F4
            dex
            bpl L40E9
            bmi L4153
L40F4:      jsr L1F16
            lda LOMEM
            cmp #$01
            beq L4100
            jmp L1888
L4100:      lda L0091
            beq L4116
            lda L0092
            beq L4116
            jmp L18A4
            lda L0091
            bne L4127
            lda #$01
            sta L0091
            jmp L18A1
L4116:      ldx L0097
            lda #$01
            sta L0091,X
            lda L0091
            beq L4147
            lda L0092
            beq L4147
            jsr L1FEB
L4127:      jsr L206E
            jsr L1B08
            lda LOMEM
            cmp #$02
            bne L4139
            jsr L1F23
            jmp L2E92
L4139:      jsr L1F23
            jsr L1F23
            lda LOMEM
            jmp L2E92
            jmp L18A7
L4147:      jsr L1FEB
            jsr L1E1D
            jsr L1F2E
            jmp L183B
L4153:      lda L00B2
            bne L415A
            jmp L198E
L415A:      lda #$00
            sta AUDC1
            sta AUDC2
            sta AUDC3
L4165:      lda L00B3
            cmp #$05
            bne L4165
            lda #$00
            sta AUDF4
            sta AUDC4
            tax
L4174:      lda L0B00,X
            and #$FC
            sta L0B00,X
            lda #$00
            sta L0C00,X
            sta L0D00,X
            sta L0E00,X
            inx
            bne L4174
            ldx #$0C
            lda #$00
L418E:      sta L00A5,X
            dex
            bpl L418E
            sta L00B2
            ldx L0097
            dec L008D,X
            lda L008D,X
            bne L41DE
            lda #$01
            sta L0091,X
            lda #$10
            ldy LOMEM
            beq L41BE
            cpy #$01
            beq L41AE
            jmp L193B
L41AE:      ldy L0097
            bne L41B8
            sta L0608
            jmp L193E
L41B8:      sta L0611
            jmp L193E
L41BE:      sta L0609
            jsr L1FEB
            lda LOMEM
            beq L41D7
            cmp #$01
            beq L41CF
            jmp L1954
L41CF:      lda L0091
            beq L41F9
            lda L0092
            beq L41F9
L41D7:      lda #$01
            sta L0083
            jmp L1845
L41DE:      ora #$10
            ldy LOMEM
            cpy #$01
            beq L41EC
            sta L0609
            jmp L1987
L41EC:      cpx #$00
            bne L41F6
            sta L0608
            jmp L1976
L41F6:      sta L0611
L41F9:      lda L0097
            pha
            jsr L1E1D
            pla
            cmp L0097
            beq L420A
            jsr L1F2E
            jmp L183B
L420A:      jsr L2A62
            lda #$01
            sta L0083
            lda L00A1
            beq L421C
            jsr L28CC
            lda #$00
            sta L00A1
L421C:      lda L00A0
            beq L4223
            jsr L2C13
L4223:      jsr L26CA
            jsr L1BD9
            lda L00B4
            cmp #$01
            bne L4268
            lda #$00
            sta AUDC1
            lda L00BB
            bne L4268
            jsr L1BD9
            lda L00B4
            cmp #$01
            beq L4247
            lda #$01
            sta L0084
            bne L4268
L4247:      lda L00B1
            bne L4268
            lda L00A5
            bne L4268
            lda L00A6
            bne L4268
            sta AUDC2
            sta L0082
            tax
L4259:      sta L0A00,X
            inx
            bne L4259
            jsr L1EF5
            jsr L1F2E
            jmp L183B
L4268:      jsr L23B7
            jmp L1845
            lda #$00
            sta L0098
            lda L00C1
            cmp #$01
            bne L427E
            jsr L2AF3
            jmp L1A58
L427E:      lda LOMEM+1
            beq L42DB
            lda L00F3
            beq L4289
            jsr L2138
L4289:      jsr L258D
            lda L00B2
            beq L429A
            lda #$00
            sta L0083
            jsr L1BB2
            jmp L1A58
L429A:      lda L0083
            beq L42DB
            lda L0084
            bne L42AA
            sta AUDF1
            sta AUDC1
            beq L42B9
L42AA:      lda L00C2
            cmp #$05
            beq L42B3
            jsr L277E
L42B3:      jsr L22C5
            jsr L2929
L42B9:      lda L0082
            beq L42DB
            jsr L2949
            jsr L1D2E
            jsr L1C85
            jsr L28AC
            lda L0099
            lsr
            bcc L42D1
            jsr L24DC
L42D1:      lda L0099
            and #$03
            bne L42DB
            lda #$01
            sta L00A1
L42DB:      inc L0099
            sta HITCLR
            jmp XITVBV
            pha
            txa
            pha
            ldx L0098
            cpx #$1A
            beq L4366
            cpx #$19
            bne L42F3
            jmp L1AFA
L42F3:      lda L0086
            beq L4314
            cpx #$02
            bne L430B
            lda #$0C
            sta WSYNC
            sta COLPF0
            lda #$E0
            sta CHBASE
            jmp L1B02
L430B:      cpx #$03
            bne L4314
            lda #$08
            sta CHBASE
L4314:      lda L33E2,X
            sta WSYNC
            sta COLPF0
            sta COLPF1
            sta COLPF2
            lda L00BB
            beq L4339
            cpx #$00
            bne L4339
            lda L00B9
            sta COLPM3
            sta COLPM2
            sta COLPM1
            jmp L1B02
L4339:      lda L00F3
            beq L4385
            cpx #$04
            bne L4355
            lda L00F1
            beq L4355
            lda L00EF
            sta COLPM3
            clc
            lda L00B5
            adc #$03
            sta HPOSP3
            jmp L1B02
L4355:      cpx #$06
            bne L4385
            lda L00A9
            sta COLPM1
            lda L00AA
            sta COLPM2
            jmp L1B02
L4366:      lda #$E0
            sta CHBASE
            ldx #$2C
            lda #$24
            sta WSYNC
            sta COLPF2
            stx COLPF0
            stx COLPF1
            bne L4387
            lda #$24
            sta WSYNC
            sta COLBK
L4385:      inc L0098
L4387:      pla
            tax
            pla
            rti
            lda ATRACT
            cmp #$7F
            bcc L43AF
            lda LOMEM
            bne L439B
            lda L0091
            bne L43A9
            beq L43AF
L439B:      cmp #$01
            bne L43A9
            lda L0091
            bne L43A5
            beq L43AF
L43A5:      lda L0092
            beq L43AF
L43A9:      ldx #$FF
            txs
            jmp L2E92
L43AF:      lda CONSOL
            lsr
            bcs L43D1
L43B5:      lda CONSOL
            lsr
            bcc L43B5
            jsr L1F16
            ldx #$FF
            txs
            lda LOMEM
            cmp #$02
            bcc L43CE
            lda #$00
            sta LOMEM
            jmp L178A
L43CE:      jmp L1812
L43D1:      lda CONSOL
            lsr
            lsr
            bcs L4406
L43D8:      lda CONSOL
            lsr
            lsr
            bcc L43D8
            lda L0083
            bne L43E9
            lda L00F6
            cmp RTCLOK+2
            beq L4434
L43E9:      jsr L1F16
            lda #$00
            sta ATRACT
            lda LOMEM
            beq L43F8
L43F4:      lda #$00
            beq L43FA
L43F8:      lda #$01
L43FA:      sta LOMEM
            lda RTCLOK+2
            sta L00F6
L4400:      ldx #$FF
            txs
            jmp L178A
L4406:      lda CONSOL
            lsr
            lsr
            lsr
            bcs L4434
L440E:      lda CONSOL
            lsr
            lsr
            lsr
            bcc L440E
            jsr L1F16
            lda L0661
            and #$0F
            clc
            adc #$01
            cmp #$0A
            bne L4427
            lda #$01
L4427:      ora #$10
            sta L0661
            lda LOMEM
            cmp #$02
            beq L43F4
            bne L4400
L4434:      rts
            lda L0099
            and #$0F
            bne L445B
            ldx L00B3
            cpx #$05
            beq L445B
            lda #$30
            sta AUDF4
            txa
            asl
            tay
            lda L3785,X
            sta L0CC9,Y
            iny
            sta L0CC9,Y
            lda L3789,X
            sta AUDC4
            inc L00B3
L445B:      rts
            ldx #$00
            stx L00B4
L4460:      lda L0A00,X
            bne L446C
            inx
            bne L4460
            lda #$01
            sta L00B4
L446C:      rts
            lda RANDOM
            asl
            bcc L4495
            lda #$2E
            sta L00B5
            sta HPOSP3
            lda #$36
            sta L00B6
            sta HPOSM3
            lda #$38
            sta L00B7
            sta HPOSM2
            lda #$3A
            sta L00B8
            sta HPOSM1
            lda #$01
            sta L00BB
            bne L44B5
L4495:      lda #$C4
            sta L00B5
            sta HPOSP3
            lda #$CC
            sta L00B6
            sta HPOSM3
            lda #$CE
            sta L00B7
            sta HPOSM2
            lda #$D0
            sta L00B8
            sta HPOSM1
            lda #$02
            sta L00BB
L44B5:      ldy #$2C
            cpx #$02
            bne L44C1
            lda #$56
            sta L00B9
            bne L44DE
L44C1:      cpx #$01
            bne L4507
            lda #$88
            sta L00B9
            ldx #$0C
L44CB:      lda L36D3,X
            sta L0F00,Y
            lda L36E0,X
            sta L0B00,Y
            dey
            dex
            bpl L44CB
            bmi L44F0
            rts
L44DE:      ldx #$0C
L44E0:      lda L36ED,X
            sta L0F00,Y
            lda L36FA,X
            sta L0B00,Y
            dey
            dex
            bpl L44E0
L44F0:      ldx L0097
            lda L008B,X
            cmp #$18
            beq L4507
            lda L009E
            cmp #$11
            bcc L4507
            lda RTCLOK+2
            lsr
            bcc L4507
            lda #$01
            sta L00F3
L4507:      rts
            lda L00BB
            bne L450D
            rts
L450D:      cmp #$03
            bcc L4514
            jmp L1D60
L4514:      ldx L0F20
            cpx #$0F
            bne L4522
            lda L0099
            lsr
            bcc L4574
            lda L00BB
L4522:      cmp #$01
            bne L454C
            lda L00F0
            bne L4574
            inc L00B5
            lda L00B5
            sta HPOSP3
            inc L00B6
            lda L00B6
            sta HPOSM3
            inc L00B7
            lda L00B7
            sta HPOSM2
            inc L00B8
            lda L00B8
            sta HPOSM1
            cmp #$D0
            beq L4598
            bne L4574
L454C:      cmp #$02
            bne L45B0
            lda L00F0
            bne L4574
            dec L00B5
            lda L00B5
            sta HPOSP3
            dec L00B6
            lda L00B6
            sta HPOSM3
            dec L00B7
            lda L00B7
            sta HPOSM2
            dec L00B8
            lda L00B8
            sta HPOSM1
            cmp #$3A
            beq L4598
L4574:      lda L0099
            lsr
            bcs L45B0
            lda L00BA
            bne L4586
            inc L00BA
            lda #$40
            sta AUDF3
            bne L4591
L4586:      cmp #$01
            bne L4598
            dec L00BA
            lda #$50
            sta AUDF3
L4591:      lda #$A6
            sta AUDC3
            bne L45B0
L4598:      lda #$00
            sta AUDF3
            sta AUDC3
            sta L00BB
            jsr L1DAB
            lda L00F3
            beq L45B0
            lda L00F2
            bne L45B0
            jsr L215F
L45B0:      rts
            lda L00BB
            bne L45E2
            ldx L0097
            lda L008F,X
            beq L45E2
            cmp L00BC
            bne L45E2
            lda L009E
            cmp #$10
            bcs L45CD
            lda RANDOM
            and #$2F
            sta L00BC
            rts
L45CD:      lda RANDOM
            lsr
            and #$2F
            sta L00BC
            bcc L45DD
            ldx #$01
            jsr L1BEA
            rts
L45DD:      ldx #$02
            jsr L1BEA
L45E2:      rts
            lda L00BA
            bne L45F9
            inc L00BA
            lda L00EA
            beq L4608
            dec L00EA
            dec L00EA
            lda L00EA
            sta AUDF3
            jmp L1D85
L45F9:      dec L00BA
            lda L00E9
            beq L4598
            dec L00E9
            dec L00E9
            lda L00E9
            sta AUDF3
L4608:      lda L0099
            and #$03
            bne L45E2
            lda L00BB
            cmp #$03
            bne L4618
            ldx #$00
            beq L4665
L4618:      cmp #$04
            bne L4620
            ldx #$0D
            bne L4665
L4620:      cmp #$05
            bne L4628
            ldx #$1A
            bne L4665
L4628:      cmp #$06
            bne L4641
            inc L00BB
            ldx #$1A
L4630:      lda #$00
            sta L0F18,X
            lda L0B18,X
            and #$03
            sta L0B18,X
            dex
            bpl L4630
            rts
L4641:      cmp #$07
            bne L469F
            ldx L00E7
            ldy #$00
L4649:      lda L3755,X
            sta L0F20,Y
            sta L0F21,Y
            lda L376D,X
            sta L0B20,Y
            sta L0B21,Y
            inx
            iny
            iny
            cpy #$0C
            bne L4649
            inc L00BB
            rts
L4665:      lda L00E8
            cmp #$02
            beq L4682
            ldy #$00
L466D:      lda L3707,X
            sta L0F20,Y
            lda L372E,X
            sta L0B20,Y
            inx
            iny
            cpy #$0D
            bne L466D
            inc L00BB
            rts
L4682:      ldy #$00
L4684:      lda L3707,X
            sta L0F18,Y
            sta L0F19,Y
            lda L372E,X
            sta L0B18,Y
            sta L0B19,Y
            inx
            iny
            iny
            cpy #$1A
            bne L4684
            inc L00BB
L469F:      rts
            lda LOMEM
            cmp #$01
            bne L46E2
            lda #$00
            sta L00CE
            sta L00D0
            ldx L0097
            bne L46E3
            lda L008E
            beq L46E2
            lda L0092
            bne L46E2
            jsr L2E40
            lda #$08
            sta L00CF
            lda #$10
            sta L00D1
            jsr L1E88
            lda L008E
            cmp #$03
            bne L46D1
            lda #$01
            sta L0097
            rts
L46D1:      lda #$13
            sta L00CF
            lda #$08
            sta L00D1
            jsr L1E88
            lda #$01
            sta L0097
            inc L0085
L46E2:      rts
L46E3:      lda L008D
            beq L46E2
            lda L0091
            bne L46E2
            jsr L2E40
            lda #$08
            sta L00CF
            lda #$13
            sta L00D1
            jsr L1E88
            lda #$10
            sta L00CF
            lda #$08
            sta L00D1
            jsr L1E88
            lda #$00
            sta L0097
            inc L0085
            rts
            ldx #$02
            ldy #$00
L470F:      lda (L00CE),Y
            cpx #$00
            bne L471F
            cmp #$80
            bcc L471F
            cmp #$93
            bcs L471F
            lda #$00
L471F:      sta (L00D0),Y
            iny
            bne L470F
            inc L00CF
            inc L00D1
            dex
            bpl L470F
            rts
            lda LOMEM
            beq L4734
            cmp #$01
            beq L475D
L4734:      ldx #$3D
L4736:      lda L35A1,X
            sta L0600,X
            dex
            bpl L4736
            lda LOMEM
            beq L474E
            lda #$01
            sta L008D
            lda #$11
            sta L0609
            bne L4752
L474E:      lda #$03
            sta L008D
L4752:      lda L0661
            sta L0611
            and #$0F
            sta L0093
            rts
L475D:      ldx #$3D
L475F:      lda L35DD,X
            sta L0600,X
            dex
            bpl L475F
            lda #$03
            sta L008D
            sta L008E
            lda L0661
            and #$0F
            sta L0093
            sta L0094
            rts
            ldx #$01
            ldy #$00
            sty L00D0
            lda #$08
            sta L00D1
            lda #$E2
            sta L00CE
            lda #$31
            sta L00CF
L478A:      lda (L00CE),Y
            sta (L00D0),Y
            iny
            bne L478A
            inc L00CF
            inc L00D1
            dex
            bpl L478A
            rts
            lda #$00
            ldx #$07
L479D:      sta AUDF1,X
            dex
            bpl L479D
            sta L0083
            rts
            ldx L0099
            dex
L47A9:      jsr L1B08
            cpx L0099
            bne L47A9
            rts
            lda #$01
            sta L00C1
L47B5:      lda L00C1
            bne L47B5
            jsr L203D
            jsr L2B20
            ldx L0097
            bne L47EB
            lda #$19
            sta L163E
            lda #$36
            sta L163F
            lda #$01
            sta L0086
            lda LOMEM
            beq L47E5
            cmp #$01
            beq L47DC
            jmp L1F62
L47DC:      jsr L1F97
            jsr L1FA5
            jmp L1F90
L47E5:      jsr L1FCF
            jmp L1F90
L47EB:      lda L008E
            cmp #$03
            bne L47F4
            jsr L1EF5
L47F4:      lda #$2D
            sta L163E
            lda #$36
            sta L163F
            lda #$01
            sta L0086
            lda LOMEM
            beq L4813
            cmp #$01
            beq L480D
            jmp L1F90
L480D:      jsr L1FB3
            jsr L1FC1
L4813:      jsr L1F23
            jsr L2048
            rts
            ldx #$11
L481C:      lda L0629,X
            and #$7F
            sta L0629,X
            dex
            bpl L481C
            rts
            ldx #$11
L482A:      lda L0617,X
            ora #$80
            sta L0617,X
            dex
            bpl L482A
            rts
            ldx #$11
L4838:      lda L0617,X
            and #$7F
            sta L0617,X
            dex
            bpl L4838
            rts
            ldx #$11
L4846:      lda L0629,X
            ora #$80
            sta L0629,X
            dex
            bpl L4846
            rts
            ldx #$23
L4854:      lda L0617,X
            ora #$80
            sta L0617,X
            dex
            bpl L4854
            rts
            ldx #$23
L4862:      lda L0617,X
            and #$7F
            sta L0617,X
            dex
            bpl L4862
            rts
            jsr L2B20
            jsr L203D
            ldx L0097
            bne L489D
            lda #$41
            sta L163E
            lda #$36
            sta L163F
            lda #$01
            sta L0086
            lda LOMEM
            beq L4897
            cmp #$01
            beq L4891
            jmp L2014
L4891:      jsr L1FB3
            jmp L2036
L4897:      jsr L1FDD
            jmp L2036
L489D:      lda #$57
            sta L163E
            lda #$36
            sta L163F
            lda #$01
            sta L0086
            lda LOMEM
            beq L48B9
            cmp #$01
            beq L48B6
            jmp L2036
L48B6:      jsr L1F97
L48B9:      jsr L1F23
            jsr L2048
            rts
            lda L163E
            sta L00A7
            lda L163F
            sta L00A8
            rts
            lda L00A7
            sta L163E
            lda L00A8
            sta L163F
            lda #$00
            sta L0086
            rts
            lda LOMEM
            cmp #$01
            beq L48F0
            lda #$01
            sta FMSZPG+3
            lda #$00
            sta FMSZPG+6
            sed
            ldx #$0E
            ldy #$03
            jsr L2DBC
L48F0:      rts
            jsr L2083
            jsr L2B20
            lda #$3C
            sta L163E
            lda #$06
            sta L163F
            lda #$01
            sta L0086
            rts
            lda LOMEM
            cmp #$02
            bcs L493B
            ldx #$00
            jsr L20B9
            lda LOMEM
            cmp #$01
            bne L491C
            ldx #$09
            jsr L20B9
L491C:      ldx #$00
L491E:      lda L00F7,X
            bne L4929
            inx
            cpx #$06
            bne L491E
            beq L493B
L4929:      ldy #$00
L492B:      lda L00F7,X
            sta L064A,Y
            iny
            inx
            cpx #$06
            bne L492B
            lda #$10
            sta L064A,Y
L493B:      rts
            ldy #$00
L493E:      lda L0600,X
            cmp L00F7,Y
            beq L494A
            bcc L4950
            bcs L4951
L494A:      inx
            iny
            cpy #$06
            bne L493E
L4950:      rts
L4951:      lda L0600,X
            sta L00F7,Y
            inx
            iny
            cpy #$06
            bne L4951
            rts
            ldy L00EC
            lda #$00
            sta L0F00,Y
            iny
            cpx #$01
            bne L4979
            tax
L496B:      lda L394F,X
            sta L0F00,Y
            iny
            inx
            cpx #$08
            bne L496B
            beq L4986
L4979:      tax
L497A:      lda L3997,X
            sta L0F00,Y
            iny
            inx
            cpx #$08
            bne L497A
L4986:      inc L00EC
            dec L00ED
            rts
            ldx #$00
L498D:      lda L0A14,X
            cmp #$01
            beq L49B1
            cmp #$03
            beq L49B6
            inx
            inx
            cpx #$10
            bne L498D
            ldx #$00
L49A0:      lda L0A3C,X
            cmp #$01
            beq L49B6
            cmp #$03
            beq L49B1
            inx
            inx
            cpx #$10
            bne L49A0
L49B1:      lda #$01
            sta L00EE
            rts
L49B6:      lda #$02
            sta L00EE
            rts
            lda L00B5
            sta HPOSP3
            lda L00F2
            bne L4A2D
            lda L00BB
            beq L49E2
            lda L00D4
            beq L49E2
            ldx #$00
            lda L00B5
L49D0:      cmp BUFRFL,X
            beq L49F1
            inx
            cpx #$08
            bne L49D0
L49D9:      rts
L49DA:      lda L00BB
            beq L49E2
            lda L00F1
            beq L49D9
L49E2:      lda #$01
            sta L0084
            lda #$00
            sta L00F3
            sta L00F1
            sta L00F2
            sta L00EF
            rts
L49F1:      lda L00F1
            bne L4A00
            lda L009E
            sec
            sbc #$0C
            tay
            lda L33E2,Y
            sta L00EF
L4A00:      txa
            clc
            asl
            tax
            lda L0A14,X
            bne L49DA
            stx L00EB
            lda #$00
            sta L0084
            lda #$01
            ldx L00F1
            bne L4A17
            sta L00F1
L4A17:      sta L00F0
            sta L00F2
            jsr L2108
            lda #$32
            sta L00EC
            sec
            lda L00BE
            cmp #$28
            bcc L4A3D
            sbc #$28
            sta L00ED
L4A2D:      ldx L00EE
            jsr L20DB
            lda L00ED
            beq L4A37
            rts
L4A37:      ldx L00EC
            ldy #$07
            lda #$00
L4A3D:      sta L0F00,X
            inx
            dey
            bpl L4A3D
            ldx L00EB
            lda L00EE
            cmp #$01
            bne L4A59
            lda #$01
            sta L0A14,X
            inx
            lda #$02
            sta L0A14,X
            bne L4A64
L4A59:      lda #$03
            sta L0A14,X
            inx
            lda #$04
            sta L0A14,X
L4A64:      lda #$00
            sta L00F0
            sta L00F2
            ldx L0097
            dec L008F,X
            lda L00BB
            cmp #$01
            beq L4A7B
            cmp #$02
            beq L4A7B
            jsr L215F
L4A7B:      rts
            lda #$00
            sta HSCROL
            sta L0082
            ldx #$5C
L4A85:      sta L009A,X
            dex
            bpl L4A85
            ldx #$1F
L4A8C:      sta ICHIDZ,X
            dex
            bpl L4A8C
            ldx #$06
L4A93:      sta FMSZPG,X
            dex
            bpl L4A93
            lda #$01
            sta L00C1
L4A9C:      lda L00C1
            bne L4A9C
            lda #$01
            sta L009C
            sta L009F
            lda #$07
            sta L009A
            lda #$06
            sta L00A4
            ldx L0097
            inc L008B,X
            lda L008B,X
            cmp #$18
            bcc L4AC4
            lda L0093,X
            cmp #$09
            beq L4AC0
            inc L0093,X
L4AC0:      lda #$0D
            sta L008B,X
L4AC4:      sta L0089,X
            lda L0085
            beq L4AEA
            lda L0087,X
            sta L0089,X
            dec L008B,X
            ldx #$00
            stx L0085
L4AD4:      lda L0A00,X
            bne L4AE7
            inx
            bne L4AD4
            ldx L0097
            inc L008B,X
            lda L008B,X
            sta L0089,X
            jmp L2267
L4AE7:      jmp L2271
L4AEA:      lda #$00
            sta L008F,X
            jsr L2A8A
            jsr L1EF5
            lda #$0D
            sta L00C7
            ldx #$0B
L4AFA:      lda L3683,X
            sta L00DA,X
            dex
            bpl L4AFA
            jsr L2B20
            ldx #$00
            lda #$23
L4B09:      clc
            adc #$10
            sta ICBLLZ,X
            tay
            sec
            sbc #$02
            sta BUFRFL,X
            tya
            inx
            cpx #$08
            bne L4B09
            ldx #$07
            lda #$00
L4B1E:      sta STATUS,X
            dex
            bpl L4B1E
            lda #$30
            sta L00BD
            lda #$A8
            sta L00BE
            lda #$01
            sta LOMEM+1
            sta L0083
            sta L0084
L4B33:      jsr L1B08
            lda L0082
            beq L4B33
            lda RANDOM
            and #$2F
            clc
            adc #$01
            sta L00BC
            jsr L2A62
            rts
            lda L00B4
            cmp #$01
            bne L4B53
            lda #$00
            sta L0084
            rts
L4B53:      lda L00A2
            beq L4B59
            dec L00A2
L4B59:      ora #$60
            sta AUDC1
            lda L009D
            beq L4B6E
            lda L0082
            bne L4B7D
            lda L009E
            and #$03
            tax
            jmp L22ED
L4B6E:      ldx L00A3
            lda L359D,X
            sta AUDF1
            lda L0099
            and L009A
            beq L4B7D
            rts
L4B7D:      lda L009D
            beq L4BA5
            lda L0082
            beq L4B8C
            lda L00F6
            beq L4B8C
            dec L00F6
            rts
L4B8C:      ldx #$07
L4B8E:      clc
            lda ICHIDZ,X
            adc #$08
            sta ICHIDZ,X
            dex
            bpl L4B8E
            clc
            lda L00BE
            adc #$08
            sta L00BE
            jsr L2B36
            jmp L23B6
L4BA5:      lda L009F
            pha
            cmp #$01
            bne L4BBE
            clc
            lda L009B
            adc L009C
            cmp #$08
            bne L4BD4
            jsr L273C
            jsr L2BCB
            jmp L234C
L4BBE:      cmp #$02
            bne L4BEF
            sec
            lda L009B
            sbc L009C
            bne L4BD4
            jsr L273C
            jsr L2B8E
            sta L009B
            jmp L2357
L4BD4:      sta L009B
            cmp #$04
            bne L4BEA
            inc L00A0
            lda L00A3
            cmp #$03
            beq L4BE6
            inc L00A3
            bne L4BEA
L4BE6:      lda #$00
            sta L00A3
L4BEA:      lda L009B
            sta HSCROL
L4BEF:      pla
            cmp #$01
            bne L4C16
            ldx #$07
L4BF6:      clc
            lda ICBLLZ,X
            adc L009C
            sta ICBLLZ,X
            dex
            bpl L4BF6
            ldx #$07
L4C02:      clc
            lda BUFRFL,X
            adc L009C
            sta BUFRFL,X
            dex
            bpl L4C02
            clc
            lda L00BD
            adc L009C
            sta L00BD
            jmp L23B6
L4C16:      cmp #$02
            bne L4C39
            ldx #$07
L4C1C:      sec
            lda ICBLLZ,X
            sbc L009C
            sta ICBLLZ,X
            dex
            bpl L4C1C
            ldx #$07
L4C28:      sec
            lda BUFRFL,X
            sbc L009C
            sta BUFRFL,X
            dex
            bpl L4C28
            sec
            lda L00BD
            sbc L009C
            sta L00BD
L4C39:      rts
            lda L0082
            beq L4C44
            ldx L0097
            lda L0091,X
            beq L4C45
L4C44:      rts
L4C45:      ldx #$00
            lda #$0D
            sta L00C9
            lda L00AB,X
            beq L4C70
            cmp #$05
            bne L4C56
            jmp L2458
L4C56:      cmp #$01
            beq L4C5D
            jmp L246D
L4C5D:      txa
            pha
            lda #$00
            sta L00C5
            lda L00A5,X
            sta L00C3
            lda L00A7,X
            jsr L2CA9
            pla
            tax
            inc L00AB,X
L4C70:      lda L0082
            beq L4CD3
            lda L0083
            beq L4C44
            lda L0084
            bne L4C80
            lda L00F3
            beq L4CD3
L4C80:      lda L00AD
            bne L4CD3
            lda L00A5,X
            bne L4CD3
            lda RANDOM
            and #$07
            tay
            lda ICHIDZ,Y
            beq L4CF0
            cmp #$B8
            bcs L4CF0
            sta L00C8
            sta L00A5,X
            jmp L2478
            lda ICBLLZ,Y
            sta L00A7,X
            sta HPOSP1,X
            lda L009E
            sec
            sbc STATUS,Y
            tay
            dey
            dey
            lda L33E2,Y
            sta L00A9,X
            sta PCOLR1,X
            ldy #$00
L4CB9:      lda #$08
            sta (L00C8),Y
            iny
            sta (L00C8),Y
            iny
            lda #$04
            sta (L00C8),Y
            iny
            sta (L00C8),Y
            iny
            cpy #$08
            bne L4CB9
            lda #$06
            sta L00AD
            bne L4CF0
L4CD3:      lda L00A5,X
            cmp #$CC
            bcs L4CDD
            bcc L4CF0
            lda L00A5,X
L4CDD:      sta L00C8
            dec L00C8
            dec L00C8
            lda #$00
            ldy #$13
L4CE7:      sta (L00C8),Y
            dey
            bpl L4CE7
            sta L00A5,X
            sta L00AB,X
L4CF0:      inx
            cpx #$02
            beq L4CFA
            inc L00C9
            jmp L23C8
L4CFA:      rts
            txa
            pha
            ldx L0097
            lda L0093,X
            beq L4D5A
            tya
            asl
            tax
            lda STATUS,Y
            cmp #$06
            bne L4D26
            lda L0A64,X
            cmp #$37
            beq L4D43
            cmp #$38
            beq L4D43
            inx
            lda L0A64,X
            cmp #$77
            beq L4D4B
            cmp #$78
            beq L4D4B
            bne L4D5A
L4D26:      cmp #$04
            bne L4D5A
            lda L0A8C,X
            cmp #$37
            beq L4D43
            cmp #$38
            beq L4D43
            inx
            lda L0A8C,X
            cmp #$77
            beq L4D4B
            cmp #$78
            beq L4D4B
            bne L4D5A
L4D43:      sec
            lda ICBLLZ,Y
            sbc #$04
            bne L4D51
L4D4B:      clc
            lda ICBLLZ,Y
            adc #$04
L4D51:      sta L00E6
            pla
            tax
            lda L00E6
            jmp L241E
L4D5A:      pla
            tax
            jmp L241B
            lda L0082
            beq L4CFA
            lda L00AD
            beq L4D69
            dec L00AD
L4D69:      lda L00A5
            beq L4DBC
            sta L00C6
            lda #$0D
            sta L00C7
            lda L00AB
            beq L4DA5
            cmp #$02
            bne L4D7F
            ldx #$00
            beq L4D8D
L4D7F:      cmp #$03
            bne L4D87
            ldx #$08
            bne L4D8D
L4D87:      cmp #$04
            bne L4DBC
            beq L4DA1
L4D8D:      ldy #$00
            dec L00C6
            dec L00C6
L4D93:      lda L368F,X
            sta (L00C6),Y
            iny
            sta (L00C6),Y
            inx
            iny
            cpy #$10
            bne L4D93
L4DA1:      inc L00AB
            bne L4DBC
L4DA5:      ldy #$00
            lda (L00C6),Y
            ldy #$08
            sta (L00C6),Y
            iny
            sta (L00C6),Y
            ldy #$00
            tya
            sta (L00C6),Y
            iny
            sta (L00C6),Y
            inc L00A5
            inc L00A5
L4DBC:      lda L00A6
            beq L4E0F
            sta L00C6
            lda #$0E
            sta L00C7
            lda L00AC
            beq L4DF8
            cmp #$02
            bne L4DD2
            ldx #$00
            beq L4DE0
L4DD2:      cmp #$03
            bne L4DDA
            ldx #$08
            bne L4DE0
L4DDA:      cmp #$04
            bne L4E0F
            beq L4DF4
L4DE0:      ldy #$00
            dec L00C6
            dec L00C6
L4DE6:      lda L368F,X
            sta (L00C6),Y
            iny
            sta (L00C6),Y
            inx
            iny
            cpy #$10
            bne L4DE6
L4DF4:      inc L00AC
            bne L4E0F
L4DF8:      ldy #$00
            lda (L00C6),Y
            ldy #$08
            sta (L00C6),Y
            iny
            sta (L00C6),Y
            ldy #$00
            tya
            sta (L00C6),Y
            iny
            sta (L00C6),Y
            inc L00A6
            inc L00A6
L4E0F:      rts
            lda #$08
            bit P1PF
            beq L4E1D
            lda L00AB
            bne L4E1D
            inc L00AB
L4E1D:      lda #$08
            bit P2PF
            beq L4E2A
            lda L00AC
            bne L4E2A
            inc L00AC
L4E2A:      lda #$08
            bit M0PF
            beq L4E4B
            lda L00B1
            cmp #$01
            bne L4E4B
            ldx L00AE
            stx L00C4
            sta L00C5
            lda L00AF
            sec
            sbc #$04
            jsr L2CA9
            lda #$00
            sta L00C5
            inc L00B1
L4E4B:      lda #$02
            bit P0PL
            beq L4E5B
            lda PCOLR1
            sta PCOLR0
            jmp L25E5
L4E5B:      lda #$04
            bit P0PL
            beq L4E7E
            lda PCOLR2
            sta PCOLR0
            lda L00B2
            bne L4E7E
            lda #$01
            sta L00B2
            lda #$00
            sta L00B3
            lda #$30
            sta AUDF4
            lda #$8F
            sta AUDC4
L4E7E:      lda #$01
            bit M0PF
            beq L4E88
            jsr L27A6
L4E88:      lda #$02
            bit M0PF
            beq L4E9A
            lda #$01
            sta L00F4
            jsr L27A6
            lda #$00
            sta L00F4
L4E9A:      lda #$02
            bit M0PL
            beq L4EAB
            lda #$02
            sta L00B1
            ldx L00AB
            bne L4EAB
            sta L00AB
L4EAB:      lda #$04
            bit M0PL
            beq L4EBC
            lda #$02
            sta L00B1
            ldx L00AC
            bne L4EBC
            sta L00AC
L4EBC:      lda L00BB
            cmp #$01
            beq L4EC7
            cmp #$02
            beq L4EC7
            rts
L4EC7:      lda #$08
            bit M0PL
            beq L4EDA
            lda L00AE
            cmp #$2C
            bcc L4EF2
            lda #$02
            sta L00B1
            bne L4F20
L4EDA:      lda L00AE
            cmp #$29
            bcs L4F20
            cmp #$20
            bcc L4F20
            lda L00AF
            cmp L00B6
            bcc L4F20
            lda L00AF
            sbc L00B6
            cmp #$05
            bcs L4F20
L4EF2:      lda #$03
            sta L00BB
            lda #$02
            sta L00B1
            lda L0F20
            cmp #$0F
            bne L4F0B
            lda #$01
            sta L00E8
            jsr L269E
            jmp L2695
L4F0B:      lda #$02
            sta L00E8
            sta FMSZPG+4
            jsr L2DAB
            lda #$12
            sta L00E7
            lda #$50
            sta L00E9
            lda #$40
            sta L00EA
L4F20:      rts
            lda RTCLOK+2
            and #$03
            cmp #$02
            bcc L4F35
            beq L4F3D
            lda #$0C
            sta L00E7
            ldy #$01
            ldx #$05
            bne L4F45
L4F35:      ldy #$00
            sty L00E7
            ldx #$05
            bne L4F45
L4F3D:      ldy #$01
            ldx #$00
            lda #$06
            sta L00E7
L4F45:      sty FMSZPG+4
            stx FMSZPG+5
            jsr L2DAB
            rts
            ldy #$00
            ldx #$00
L4F51:      lda L0ADC,Y
            beq L4F5D
            lda #$00
            pha
            lda #$5A
            bne L4FAF
L4F5D:      lda L0AB4,Y
            beq L4F69
            lda #$02
            pha
            lda #$4A
            bne L4FAF
L4F69:      lda L0A8C,Y
            bne L4F77
            iny
            lda L0A8C,Y
            dey
            cmp #$00
            beq L4F7E
L4F77:      lda #$04
            pha
            lda #$3A
            bne L4FAF
L4F7E:      lda L0A64,Y
            bne L4F8C
            iny
            lda L0A64,Y
            dey
            cmp #$00
            beq L4F93
L4F8C:      lda #$06
            pha
            lda #$2A
            bne L4FAF
L4F93:      lda L0A3C,Y
            beq L4F9F
            lda #$08
            pha
            lda #$1A
            bne L4FAF
L4F9F:      lda L0A14,Y
            beq L4FA9
            lda #$0A
            pha
            bne L4FAF
L4FA9:      lda #$00
            sta ICHIDZ,X
            beq L4FB7
L4FAF:      clc
            adc L00BE
            sta ICHIDZ,X
            pla
            sta STATUS,X
L4FB7:      iny
            iny
            inx
            cpx #$08
            bne L4F51
            rts
            lda L00C2
            beq L5000
            cmp #$01
            bne L4FD0
            lda #$03
            sta L009A
            lda #$07
            sta L00A4
            rts
L4FD0:      cmp #$02
            bne L4FDF
            sta L009C
            lda #$03
            sta L009A
            lda #$08
            sta L00A4
            rts
L4FDF:      cmp #$03
            bne L4FF0
            lda #$01
            sta L009A
            lda #$02
            sta L009C
            lda #$09
            sta L00A4
            rts
L4FF0:      cmp #$04
            bne L5000
            lda #$01
            sta L009A
            lda #$04
            sta L009C
            lda #$0A
            sta L00A4
L5000:      rts
            ldx L0097
            lda L008F,X
            cmp #$2F
            bcc L500E
            lda #$04
            sta L00C2
            rts
L500E:      cmp #$2A
            bcc L5017
            lda #$03
            sta L00C2
            rts
L5017:      cmp #$24
            bcc L5020
            lda #$02
            sta L00C2
            rts
L5020:      cmp #$18
            bcc L5028
            lda #$01
            sta L00C2
L5028:      rts
            lda #$0A
            sta L00D1
            sec
            lda L00AE
            sbc L00BE
            cmp #$50
            bcc L503C
            lda #$DC
            ldx #$01
            bne L5068
L503C:      cmp #$40
            bcc L5046
            lda #$B4
            ldx #$01
            bne L5068
L5046:      cmp #$30
            bcc L5050
            lda #$8C
            ldx #$02
            bne L5068
L5050:      cmp #$20
            bcc L505A
            lda #$64
            ldx #$02
            bne L5068
L505A:      cmp #$10
            bcc L5064
            lda #$3C
            ldx #$03
            bne L5068
L5064:      lda #$14
            ldx #$03
L5068:      sta L00D0
            ldy L0097
            lda L0093,Y
            beq L5080
            cpx #$02
            bne L507C
            inx
            lda #$01
            sta L00F5
            bne L5080
L507C:      lda #$00
            sta L00F5
L5080:      stx FMSZPG+5
            sec
            lda L00AF
            sbc L00BD
            cmp #$70
            bcc L508F
            ldy #$0E
            bne L50C1
L508F:      cmp #$60
            bcc L5097
            ldy #$0C
            bne L50C1
L5097:      cmp #$50
            bcc L509F
            ldy #$0A
            bne L50C1
L509F:      cmp #$40
            bcc L50A7
            ldy #$08
            bne L50C1
L50A7:      cmp #$30
            bcc L50AF
            ldy #$06
            bne L50C1
L50AF:      cmp #$20
            bcc L50B7
            ldy #$04
            bne L50C1
L50B7:      cmp #$10
            bcc L50BF
            ldy #$02
            bne L50C1
L50BF:      ldy #$00
L50C1:      lda (L00D0),Y
            beq L50EB
            cmp #$0D
            bcc L5112
            cmp #$45
            bne L50DA
            dec FMSZPG+5
            lda #$37
            sta (L00D0),Y
            lda #$77
            iny
            sta (L00D0),Y
            bne L511B
L50DA:      cmp #$47
            bne L50EB
            dec FMSZPG+5
            lda #$38
            sta (L00D0),Y
            lda #$78
            iny
            sta (L00D0),Y
            bne L511B
L50EB:      ldx L00F5
            beq L512E
            ldx L00F4
            bne L50FD
            cmp #$37
            beq L510C
            cmp #$38
            beq L510C
            bne L512E
L50FD:      lda #$00
            sta L00F4
            iny
            lda (L00D0),Y
            cmp #$77
            beq L510C
            cmp #$78
            bne L512E
L510C:      lda #$B9
            sta (L00D0),Y
            bne L511F
L5112:      lda #$8D
            sta (L00D0),Y
            iny
            lda #$8E
            sta (L00D0),Y
L511B:      ldx L0097
            inc L008F,X
L511F:      lda #$01
            sta L00BF
            lda #$13
            sta L00C0
            jsr L2DAB
            lda #$02
            sta L00B1
L512E:      rts
            lda L00BF
            lsr
            bcc L514E
            ldx L00C0
            bpl L5140
            lda #$00
            sta L00BF
            sta L00C0
            beq L514E
L5140:      lda L36AB,X
            sta AUDF2
            lda L36BF,X
            sta AUDC2
            dec L00C0
L514E:      rts
            lda #$0A
            sta L00D3
            lda #$00
            sta L00D2
            ldy #$00
L5159:      lda (L00D2),Y
            beq L518A
            cmp #$92
            bcs L518A
            cmp #$8D
            bcc L518A
            bne L516B
            lda #$8F
            bne L517E
L516B:      cmp #$8F
            bne L5173
            lda #$91
            bne L517E
L5173:      lda #$00
            sta (L00D2),Y
            iny
            sta (L00D2),Y
            iny
            jmp L2909
L517E:      sta (L00D2),Y
            iny
            clc
            adc #$01
            sta (L00D2),Y
            iny
            jmp L2909
L518A:      iny
            iny
            bne L5159
            lda #$64
            sta L00D2
            ldy #$38
L5194:      lda (L00D2),Y
            beq L51A8
            cmp #$B9
            bne L51A0
            lda #$BA
            bne L51A6
L51A0:      cmp #$BA
            bne L51A8
            lda #$00
L51A6:      sta (L00D2),Y
L51A8:      dey
            bpl L5194
            rts
            ldx #$00
            lda #$0A
            sta L00D1
L51B2:      ldy #$00
            lda L3689,X
            sta L00D0
L51B9:      lda (L00D0),Y
            bne L51C6
            iny
            cpy #$10
            bne L51B9
            lda #$00
            sta L00D4,X
L51C6:      inx
            cpx #$06
            bne L51B2
            rts
            ldx L0097
            lda L0091,X
            beq L51D3
            rts
L51D3:      lda LOMEM
            cmp #$02
            bne L51DC
            jmp L297B
L51DC:      lda STICK0
            cmp #$0F
            beq L51FB
            cmp #$0B
            beq L5225
            cmp #$0A
            beq L5225
            cmp #$09
            beq L5225
            cmp #$07
            beq L51FE
            cmp #$06
            beq L51FE
            cmp #$05
            beq L51FE
L51FB:      jmp L29BA
L51FE:      lda LOMEM
            cmp #$02
            bne L520A
            lda L00B0
            cmp #$52
            bcs L51FB
L520A:      lda L00B0
            cmp #$C8
            bcs L51FB
            lda L00B1
            bne L521B
            inc L00AF
            lda L00AF
            sta HPOSM0
L521B:      inc L00B0
            lda L00B0
            sta HPOSP0
            jmp L29BA
L5225:      lda L00B0
            cmp #$32
            bcc L51FB
            lda L00B1
            bne L5236
            dec L00AF
            lda L00AF
            sta HPOSM0
L5236:      dec L00B0
            lda L00B0
            sta HPOSP0
            lda L00B1
            beq L52BC
            cmp #$01
            bne L524D
            ldx L00AE
            cpx #$20
            bcs L5271
            bcc L5253
L524D:      cmp #$02
            bne L52BB
            ldx L00AE
L5253:      ldy #$07
L5255:      lda L0B00,X
            and #$FC
            sta L0B00,X
            inx
            dey
            bpl L5255
            lda #$00
            sta L00B1
            clc
            lda L00B0
            adc #$04
            sta HPOSM0
            sta L00AF
            bne L52BB
L5271:      lda L0B04,X
            and #$FC
            sta L0B04,X
            lda L0B05,X
            and #$FC
            sta L0B05,X
            lda L0B06,X
            and #$FC
            sta L0B06,X
            lda L0B07,X
            and #$FC
            sta L0B07,X
            dec L00AE
            dec L00AE
            dec L00AE
            dec L00AE
            ldx L00AE
            lda L0B00,X
            ora #$02
            sta L0B00,X
            lda L0B01,X
            ora #$02
            sta L0B01,X
            lda L0B02,X
            ora #$02
            sta L0B02,X
            lda L0B03,X
            ora #$02
            sta L0B03,X
L52BB:      rts
L52BC:      lda L0082
            beq L52BB
            lda LOMEM
            cmp #$02
            bne L52CB
            lda #$00
            jmp L2A4D
L52CB:      lda STRIG0
            bne L52BB
            sta ATRACT
            lda #$C1
            sta L00AE
            tax
            ldy #$07
            lda #$02
L52DB:      sta L0B00,X
            inx
            dey
            bpl L52DB
            inc L00B1
            rts
            lda #$0E
            sta PCOLR0
            lda #$40
            sta L00B0
            sta HPOSP0
            lda #$44
            sta L00AF
            sta HPOSM0
            ldy #$00
            ldx #$00
L52FC:      lda L36A7,Y
            sta L0CC9,X
            inx
            sta L0CC9,X
            inx
            iny
            cpx #$08
            bne L52FC
            rts
            ldx #$00
            txa
L5310:      sta L0A00,X
            inx
            bne L5310
            lda #$14
            sta L00D0
            lda #$0A
            sta L00D1
            ldx #$00
L5320:      cpx #$06
            beq L5345
            ldy #$00
L5326:      lda L3517,X
            sta (L00D0),Y
            clc
            adc #$01
            iny
            sta (L00D0),Y
            iny
            cpy #$10
            bne L5326
            inx
            clc
            lda L00D0
            adc #$28
            sta L00D0
            bcc L5320
            inc L00D1
            jmp L2A9D
L5345:      ldx L0097
            inc L0089,X
            lda L0093,X
            sec
            sbc #$02
            bmi L5375
            asl
            asl
            asl
            tax
            ldy #$00
L5356:      lda L351D,X
            sta L0A64,Y
            clc
            adc #$01
            sta L0A65,Y
            lda L355D,X
            sta L0A8C,Y
            clc
            adc #$01
            sta L0A8D,Y
            inx
            iny
            iny
            cpy #$10
            bne L5356
L5375:      rts
            ldx #$00
L5378:      lda L3400,X
            sta L1610,X
            inx
            cpx #$7E
            bne L5378
            lda #$34
            sta SDLSTL
            lda #$16
            sta SDLSTH
            ldx #$00
            ldy #$06
L5391:      lda L33FA,X
            sta L00D4,X
            inx
            dey
            bne L5391
            lda #$01
            sta L009D
            lda #$00
            sta L00C1
            rts
            ldx #$00
            txa
L53A6:      sta L0B00,X
            sta L0C00,X
            sta L0D00,X
            sta L0E00,X
            sta L0F00,X
            inx
            bne L53A6
            rts
            lda #$16
            sta L00CF
            sta L00D1
            ldx #$05
L53C1:      lda L00D4,X
            beq L53D7
            clc
            sta L00CE
            adc #$03
            sta L00D0
            sta L00D4,X
            ldy #$05
L53D0:      lda (L00CE),Y
            sta (L00D0),Y
            dey
            bpl L53D0
L53D7:      dex
            bpl L53C1
            ldx L0097
            inc L009E
            lda L009E
            sta L0087,X
            cmp L0089,X
            bne L53F0
            lda #$00
            sta L009D
            lda L0082
            bne L53F0
            inc L0082
L53F0:      lda L0082
            bne L53F7
            jsr L2C13
L53F7:      lda L00C2
            cmp #$04
            bne L53FF
            inc L00C2
L53FF:      cmp #$05
            bne L5410
            lda RANDOM
            lsr
            bcc L540D
            jsr L2771
            rts
L540D:      jsr L2760
L5410:      rts
            lda #$0A
            sta L00CF
            ldx #$05
            ldy #$00
L5419:      lda L00E0,X
            sta L00CE
            lda (L00CE),Y
            bne L5426
            dex
            bpl L5419
            bmi L542F
L5426:      lda #$01
            sta L009F
            lda #$00
            jmp L2C08
L542F:      lda #$16
            sta L00CF
            ldx #$05
            ldy #$04
L5437:      lda L00D4,X
            beq L5448
            clc
            sta L00CE
            lda (L00CE),Y
            adc #$01
            sta (L00CE),Y
            inc L00E0,X
            inc L00DA,X
L5448:      dex
            bpl L5437
            lda #$08
            rts
            lda #$0A
            sta L00CF
            ldx #$05
            ldy #$00
L5456:      lda L00DA,X
            sta L00CE
            lda (L00CE),Y
            bne L5463
            dex
            bpl L5456
            bmi L546C
L5463:      lda #$02
            sta L009F
            lda #$08
            jmp L2C08
L546C:      lda #$16
            sta L00CF
            ldx #$05
            ldy #$04
L5474:      lda L00D4,X
            beq L5485
            sec
            sta L00CE
            lda (L00CE),Y
            sbc #$01
            sta (L00CE),Y
            dec L00DA,X
            dec L00E0,X
L5485:      dex
            bpl L5474
            lda #$00
            rts
            ldx L0097
            inc L0089,X
            inc L009D
            ldx #$02
            stx L00F6
            rts
            lda #$00
            sta L00D2
            lda #$0A
            sta L00D3
            ldy #$00
L54A0:      lda (L00D2),Y
            beq L54EC
            cmp #$01
            bne L54AC
            lda #$03
            bne L54E2
L54AC:      cmp #$03
            bne L54B4
            lda #$01
            bne L54E2
L54B4:      cmp #$05
            bne L54BC
            lda #$07
            bne L54E2
L54BC:      cmp #$07
            bne L54C4
            lda #$05
            bne L54E2
L54C4:      cmp #$09
            bne L54CC
            lda #$0B
            bne L54E2
L54CC:      cmp #$0B
            bne L54D4
            lda #$09
            bne L54E2
L54D4:      cmp #$45
            bne L54DC
            lda #$47
            bne L54E2
L54DC:      cmp #$47
            bne L54EC
            lda #$45
L54E2:      sta (L00D2),Y
            iny
            clc
            adc #$01
            sta (L00D2),Y
            bne L54ED
L54EC:      iny
L54ED:      iny
            bne L54A0
            ldx L0097
            lda L0093,X
            beq L5523
            lda #$64
            sta L00D2
            ldy #$38
L54FC:      lda (L00D2),Y
            beq L5520
            cmp #$37
            bne L5508
            lda #$38
            bne L551E
L5508:      cmp #$38
            bne L5510
            lda #$37
            bne L551E
L5510:      cmp #$77
            bne L5518
            lda #$78
            bne L551E
L5518:      cmp #$78
            bne L5520
            lda #$77
L551E:      sta (L00D2),Y
L5520:      dey
            bpl L54FC
L5523:      lda #$00
            sta L00A0
            lda L00A4
            sta L00A2
            rts
            ldx L00C5
            cpx #$01
            beq L5549
            tax
            lda RANDOM
            and #$03
            cmp #$02
            beq L5542
            bcs L5547
            txa
            jmp L2CC6
L5542:      dex
            txa
            jmp L2CC6
L5547:      inx
            txa
L5549:      cmp #$BC
            bcs L55C7
            cmp #$B4
            bcs L55C0
            cmp #$AB
            bcs L55B9
            cmp #$94
            bcs L55B2
            cmp #$8C
            bcs L55AB
            cmp #$83
            bcs L55A4
            cmp #$6C
            bcs L559D
            cmp #$64
            bcs L5596
            cmp #$5B
            bcs L558F
            cmp #$44
            bcs L5588
            cmp #$3C
            bcs L5581
            cmp #$33
            bcs L557A
            rts
L557A:      ldy #$00
            sbc #$34
            jmp L2D48
L5581:      ldy #$02
            sbc #$3C
            jmp L2D48
L5588:      ldy #$04
            sbc #$44
            jmp L2D48
L558F:      ldy #$06
            sbc #$5C
            jmp L2D48
L5596:      ldy #$08
            sbc #$64
            jmp L2D48
L559D:      ldy #$0A
            sbc #$6C
            jmp L2D48
L55A4:      ldy #$0C
            sbc #$84
            jmp L2D48
L55AB:      ldy #$0E
            sbc #$8C
            jmp L2D48
L55B2:      ldy #$10
            sbc #$94
            jmp L2D48
L55B9:      ldy #$12
            sbc #$AC
            jmp L2D48
L55C0:      ldy #$14
            sbc #$B4
            jmp L2D48
L55C7:      ldy #$16
            sbc #$BC
            bpl L55CF
            lda #$00
L55CF:      tax
            lda L00C5
            cmp #$01
            beq L5602
            txa
            asl
            asl
            asl
            tax
            lda L347B,Y
            sta L00CA
            iny
            lda L347B,Y
            sta L00CB
            sec
            lda L00C3
            sbc #$9A
            tay
            lda #$07
            sta L00C3
L55F0:      lda (L00CA),Y
            and L3493,X
            sta (L00CA),Y
            inx
            iny
            cpy #$18
            beq L5601
            dec L00C3
            bpl L55F0
L5601:      rts
L5602:      lda L34D3,X
            eor #$FF
            sta L00C5
            lda L347B,Y
            sta L00CC
            iny
            lda L347B,Y
            sta L00CD
            sec
            lda L00C4
            sbc #$9E
            tay
            bmi L562D
            lda #$07
            sta L00C4
L5620:      lda (L00CC),Y
            and L00C5
            sta (L00CC),Y
            dey
            bmi L562D
            dec L00C4
            bpl L5620
L562D:      rts
            lda #$00
            sta FMSZPG+6
            sed
            lda L0097
            beq L563B
            ldx #$0E
            bne L563D
L563B:      ldx #$05
L563D:      ldy #$05
L563F:      clc
            lda L0600,X
            and #$0F
            adc FMSZPG+6
            adc FMSZPG,Y
            pha
            and #$10
            beq L5651
            lda #$01
L5651:      sta FMSZPG+6
            pla
            ora #$10
            cmp #$10
            bne L566C
            cpy #$00
            bne L5661
            tya
            beq L566C
L5661:      lda L05FF,X
            bne L566A
            lda FMSZPG+6
            beq L566C
L566A:      lda #$10
L566C:      sta L0600,X
            dex
            dey
            bpl L563F
            cld
            ldx #$05
            lda #$00
L5678:      sta FMSZPG,X
            dex
            bpl L5678
            lda LOMEM
            beq L56AE
            cmp #$01
            bne L56AD
            lda L0602
            beq L5699
            lda L0095
            bne L5699
            inc L008D
            inc L0095
            lda L008D
            ora #$10
            sta L0608
L5699:      lda L060B
            beq L56AD
            lda L0096
            bne L56AD
            inc L008E
            inc L0096
            lda L008E
            ora #$10
            sta L0611
L56AD:      rts
L56AE:      lda L0602
            beq L56AD
            lda L0095
            bne L56AD
            inc L008D
            inc L0095
            lda L008D
            ora #$10
            sta L0609
            rts
            lda L166D
            cmp #$C6
            beq L56CF
            ldx #$00
            jsr L2E65
L56CF:      lda L1670
            cmp #$C6
            beq L56DB
            ldx #$08
            jsr L2E65
L56DB:      lda L1673
            cmp #$C6
            beq L56E7
            ldx #$10
            jsr L2E65
L56E7:      rts
            lda #$00
            ldy #$07
L56EC:      sta L0898,X
            sta L08B0,X
            sta L08C8,X
            sta L08E0,X
            sta L08F8,X
            sta L0910,X
            sta L0928,X
            sta L0940,X
            sta L0958,X
            sta L0970,X
            sta L0988,X
            sta L09A0,X
            inx
            dey
            bpl L56EC
            rts
            ldx #$10
            lda #$00
            sta ATRACT
L571B:      sta L00B0,X
            dex
            bpl L571B
            lda #$02
            sta LOMEM
            ldx #$7F
L5726:      lda L3917,X
            sta L0800,X
            lda LE080,X
            sta L0880,X
            dex
            bpl L5726
            ldx #$00
L5737:      lda LE100,X
            sta L0900,X
            inx
            sta COLPF2
            bne L5737
            ldx #$07
L5745:      lda L339A,X
            sta L09D0,X
            dex
            bpl L5745
            ldy #$1C
            ldx #$31
            lda #$07
            jsr SETVBV
            lda #$2D
            sta VDSLST
            lda #$31
            sta VDSLST+1
            lda #$C0
            sta NMIEN
            lda #$00
            sta COLOR2
            ldx #$35
            jsr L30AA
            lda #$08
            sta PMBASE
            lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            lda #$01
            sta L0084
            jsr L2B20
            lda #$08
            sta L0085
            lda #$78
            sta HPOSP2
            sta HPOSP3
            lda #$88
            sta PCOLR2
            lda #$0C
            sta PCOLR3
            lda #$3F
            sta L0082
            jsr L30C0
            jsr L30C0
            lda #$07
            sta L0082
            jsr L30E2
            inc L0085
            inc L0085
            lda L0085
            cmp #$38
            beq L57BD
            jsr L30C0
            jmp L2F27
L57BD:      lda #$FF
            sta L0082
            jsr L30C0
            lda #$C3
            sta L1694
            lda #$37
            sta L1695
            jsr L30C0
            lda #$EB
            sta L169D
            lda #$37
            sta L169E
            lda #$FF
            sta L16A0
            lda #$37
            sta L16A1
            jsr L30C0
            lda #$7F
            sta L0082
            lda #$13
            sta L16A4
            lda #$38
            sta L16A5
            jsr L30C0
            lda #$27
            sta L16A8
            lda #$38
            sta L16A9
            jsr L30C0
            lda #$3B
            sta L16AC
            lda #$38
            sta L16AD
            jsr L30C0
            lda #$4F
            sta L16B0
            lda #$38
            sta L16B1
            jsr L30C0
            lda #$63
            sta L16B4
            lda #$38
            sta L16B5
            lda #$77
            sta L16B7
            lda #$38
            sta L16B8
            jsr L30C0
            lda #$8B
            sta L16BA
            lda #$38
            sta L16BB
            lda #$9F
            sta L16BD
            lda #$38
            sta L16BE
            lda #$FF
            sta L0082
            jsr L30C0
            jsr L30AA
            lda #$C3
            sta L1694
            lda #$37
            sta L1695
            jsr L30C0
            lda #$7F
            sta L0082
            jsr L30C0
            ldx #$07
L586B:      lda LE150,X
            sta L0FB0,X
            dex
            bpl L586B
            lda #$DB
            sta L16B4
            lda #$38
            sta L16B5
            jsr L30C0
            lda #$07
            sta L0082
            lda #$48
            sta L0086
            lda #$08
            sta L0E48
            sta L0E49
            jsr L30C0
            lda #$04
            sta L0E4A
            sta L0E4B
            jsr L30C0
            lda #$08
            sta L0E4C
            sta L0E4D
            jsr L30C0
            lda #$04
            sta L0E4E
            sta L0E4F
L58B2:      jsr L30C0
            ldx L0086
            lda L0E00,X
            sta L0E08,X
            sta L0E09,X
            lda #$00
            sta L0E00,X
            sta L0E01,X
            inx
            inx
            stx L0086
            cpx #$AC
            bne L58B2
            ldx #$0F
            lda #$00
L58D4:      sta L0EAA,X
            sta L0FB0,X
            dex
            bpl L58D4
            ldx #$00
            ldy #$00
            jsr L3099
            jsr L30C0
            ldx #$08
            ldy #$00
            jsr L3099
            jsr L30C0
            ldx #$10
            ldy #$00
            jsr L3099
            lda #$FF
            sta L0082
            jsr L30C0
            lda #$EF
            sta L16B4
            lda #$38
            sta L16B5
            jsr L30C0
            lda #$BA
            sta L16B4
            lda #$33
            sta L16B5
            jsr L30C0
            jmp L178A
L591C:      lda L368F,X
            sta L0EAC,Y
            iny
            sta L0EAC,Y
            iny
            inx
            cpy #$10
            bne L591C
            rts
            ldx #$35
L592F:      lda L378D,X
            sta L1690,X
            dex
            bpl L592F
            lda #$90
            sta SDLSTL
            lda #$16
            sta SDLSTH
            rts
L5943:      ldx LOMEM
            cpx #$03
            beq L595F
            lda RTCLOK+2
            and L0082
            bne L5943
L594F:      lda RTCLOK+2
            and L0082
            beq L594F
            lda L0084
            beq L595C
            dec L0084
            rts
L595C:      inc L0084
            rts
L595F:      ldx #$00
            txs
            jmp L31D5
            lda #$00
            sta L0087
            clc
            lda #$08
            adc #$06
            sta L0088
            ldy L0085
            jsr L30F3
            rts
            lda #$00
            tax
            sta (L0087),Y
            iny
            sta (L0087),Y
            iny
L597F:      lda L0084
            bne L5989
            lda L394F,X
            jmp L3109
L5989:      lda L3997,X
            sta (L0087),Y
            iny
            sta (L0087),Y
            iny
            inx
            cpx #$08
            bne L597F
            lda #$00
            sta (L0087),Y
            iny
            sta (L0087),Y
            rts
            lda #$00
            sta LOMEM+1
            lda CONSOL
            lsr
            bcs L59AD
            lda #$03
            sta LOMEM
L59AD:      jmp XITVBV
            pha
            txa
            pha
            ldx LOMEM+1
            bne L59C7
            lda #$48
            sta WSYNC
            sta COLPF0
            lda #$E0
            sta CHBASE
            jmp L31CF
L59C7:      cpx #$01
            bne L59D6
            lda #$88
            sta WSYNC
            sta COLPF0
            jmp L31CF
L59D6:      cpx #$02
            bne L59E5
            lda #$B8
            sta WSYNC
            sta COLPF0
            jmp L31CF
L59E5:      cpx #$03
            bne L59F1
            lda #$0C
            sta WSYNC
            sta COLPF0
L59F1:      cpx #$04
            bne L5A05
            lda #$08
            sta WSYNC
            sta CHBASE
            lda #$38
            sta COLPF1
            jmp L31CF
L5A05:      cpx #$05
            bne L5A14
            lda #$B8
            sta WSYNC
            sta COLPF1
            jmp L31CF
L5A14:      cpx #$06
            bne L5A28
            ldx #$48
            lda #$2C
            sta WSYNC
            sta COLPF1
            stx COLPF3
            jmp L31CF
L5A28:      cpx #$07
            bne L5A3C
            lda #$88
            sta WSYNC
            sta COLPF1
            lda #$56
            sta COLPF2
            jmp L31CF
L5A3C:      cpx #$08
            bne L5A52
            lda #$E0
            sta WSYNC
            sta CHBASE
            lda #$0C
            sta COLPF1
            lda #$00
            sta COLPF2
L5A52:      inc LOMEM+1
            pla
            tax
            pla
            rti
L5A58:      lda CONSOL
            lsr
            bcc L5A58
            lda #$00
            sta LOMEM
            jmp L178A
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $01,$03,$07,$0D,$0F,$02,$05,$0A
            .byte $80,$C0,$E0,$B0,$F0,$40,$A0,$50
            .byte $01,$03,$07,$0D,$0F,$05,$08,$04
            .byte $80,$C0,$E0,$B0,$F0,$A0,$10,$20
            .byte $08,$04,$0F,$1D,$1F,$17,$14,$02
            .byte $10,$20,$F0,$B8,$F8,$E8,$28,$40
            .byte $02,$14,$17,$1D,$1F,$0F,$04,$08
            .byte $40,$28,$E8,$B8,$F8,$F0,$20,$10
            .byte $03,$0F,$1F,$19,$1F,$06,$09,$30
            .byte $C0,$F0,$F8,$98,$F8,$60,$90,$0C
            .byte $03,$0F,$1F,$19,$1F,$0D,$18,$0C
            .byte $C0,$F0,$F8,$98,$F8,$B0,$18,$30
            .byte $00,$10,$0D,$07,$1E,$2F,$07,$09
            .byte $00,$20,$48,$F0,$60,$F0,$C8,$20
            .byte $20,$18,$4F,$06,$1C,$66,$0F,$11
            .byte $46,$98,$F2,$7C,$30,$7C,$E2,$10
            .byte $00,$40,$00,$24,$00,$90,$42,$08
            .byte $00,$22,$84,$00,$11,$00,$22,$04
            .byte $1F,$1F,$3F,$3F,$7F,$7F,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FC,$FC,$F8,$F8,$F0,$F0,$F0,$F0
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $03,$03,$01,$01,$00,$00,$00,$00
            .byte $80,$80,$C0,$C0,$E0,$E0,$F0,$F0
            .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $1F,$1F,$3F,$3F,$7F,$7F,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FC,$FC,$F8,$F8,$F0,$F0,$F0,$F0
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $03,$03,$01,$01,$00,$00,$00,$00
            .byte $80,$80,$C0,$C0,$E0,$E0,$F0,$F0
            .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $1F,$1F,$3F,$3F,$7F,$7F,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FC,$FC,$F8,$F8,$F0,$F0,$F0,$F0
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $03,$03,$01,$01,$00,$00,$00,$00
            .byte $80,$80,$C0,$C0,$E0,$E0,$F0,$F0
            .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $1F,$1F,$3F,$3F,$7F,$7F,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FC,$FC,$F8,$F8,$F0,$F0,$F0,$F0
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $03,$03,$01,$01,$00,$00,$00,$00
            .byte $80,$80,$C0,$C0,$E0,$E0,$F0,$F0
            .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $3C,$7E,$5A,$7E,$66,$3C,$42,$24
            .byte $00,$18,$3C,$5A,$3C,$18,$24,$00
            .byte $00,$42,$2C,$38,$5C,$12,$20,$00
            .byte $00,$22,$04,$00,$C3,$00,$20,$44
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $38,$38,$48,$48,$88,$88,$0C,$0C
            .byte $B8,$B8,$78,$78,$2C,$2C,$58,$58
            .byte $38,$38,$28,$28,$B8,$B8,$68,$68
            .byte $10,$16,$1C,$22,$28,$2E,$D6,$BA
            .byte $33,$D6,$12,$0A,$D6,$BA,$33,$D6
            .byte $3A,$0A,$D6,$BA,$33,$D6,$62,$0A
            .byte $D6,$BA,$33,$D6,$8A,$0A,$D6,$BA
            .byte $33,$D6,$B2,$0A,$D6,$BA,$33,$D6
            .byte $DA,$0A,$D6,$BA,$33,$D6,$BA,$33
            .byte $D6,$BA,$33,$D6,$BA,$33,$D6,$BA
            .byte $33,$D6,$BA,$33,$D6,$BA,$33,$D6
            .byte $BA,$33,$D6,$BA,$33,$D6,$BA,$33
            .byte $D6,$BA,$33,$D6,$BA,$33,$D6,$BA
            .byte $33,$D6,$BA,$33,$D6,$BA,$33,$D6
            .byte $BA,$33,$D6,$BA,$33,$D6,$BA,$33
            .byte $D6,$BA,$33,$C6,$DB,$34,$C6,$EF
            .byte $34,$C6,$03,$35,$D6,$BA,$33,$D6
            .byte $BA,$33,$D6,$BA,$33,$4B,$BA,$33
            .byte $80,$A0,$46,$00,$06,$02,$41,$34
            .byte $16,$98,$08,$B0,$08,$C8,$08,$E0
            .byte $08,$F8,$08,$10,$09,$28,$09,$40
            .byte $09,$58,$09,$70,$09,$88,$09,$A0
            .byte $09,$3F,$3F,$1F,$0F,$8F,$9F,$CF
            .byte $EF,$9F,$9F,$1F,$0F,$8F,$97,$9F
            .byte $2F,$CF,$8F,$CF,$87,$C3,$8B,$4D
            .byte $8F,$E7,$E3,$E7,$C7,$EF,$C3,$81
            .byte $C3,$E3,$D3,$F1,$E2,$E3,$D1,$F2
            .byte $F7,$FB,$F9,$F8,$F9,$F1,$E9,$F8
            .byte $F1,$FC,$F8,$F8,$F4,$ED,$F9,$F3
            .byte $ED,$FC,$FE,$FC,$FC,$FA,$FE,$FC
            .byte $FA,$80,$40,$20,$10,$08,$04,$02
            .byte $01,$00,$D3,$D6,$D9,$00,$00,$DC
            .byte $DF,$E2,$00,$00,$E5,$E8,$EB,$00
            .byte $00,$EE,$F1,$F4,$00,$00,$D4,$D7
            .byte $DA,$00,$00,$DD,$E0,$E3,$00,$00
            .byte $E6,$E9,$EC,$00,$00,$EF,$F2,$F5
            .byte $00,$00,$D5,$D8,$DB,$00,$00,$DE
            .byte $E1,$E4,$00,$00,$E7,$EA,$ED,$00
            .byte $00,$F0,$F3,$F6,$00,$01,$03,$05
            .byte $07,$09,$0B,$01,$01,$01,$45,$45
            .byte $01,$01,$01,$01,$01,$01,$45,$45
            .byte $01,$01,$01,$01,$01,$45,$45,$45
            .byte $45,$01,$01,$01,$01,$45,$45,$45
            .byte $45,$01,$01,$01,$45,$45,$45,$45
            .byte $45,$45,$01,$01,$45,$45,$45,$45
            .byte $45,$45,$01,$45,$45,$45,$45,$45
            .byte $45,$45,$45,$45,$45,$45,$45,$45
            .byte $45,$45,$45,$03,$03,$03,$03,$03
            .byte $03,$03,$03,$03,$03,$03,$47,$47
            .byte $03,$03,$03,$03,$03,$03,$47,$47
            .byte $03,$03,$03,$03,$03,$47,$47,$47
            .byte $47,$03,$03,$03,$03,$47,$47,$47
            .byte $47,$03,$03,$03,$47,$47,$47,$47
            .byte $47,$47,$03,$03,$47,$47,$47,$47
            .byte $47,$47,$03,$47,$47,$47,$47,$47
            .byte $47,$47,$47,$8C,$AA,$C8,$E6,$00
            .byte $00,$00,$00,$00,$00,$10,$00,$00
            .byte $13,$00,$00,$00,$00,$10,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$30
            .byte $2C,$21,$39,$25,$32,$00,$2F,$2E
            .byte $25,$00,$00,$00,$22,$21,$33,$25
            .byte $33,$00,$00,$29,$2E,$36,$21,$33
            .byte $29,$2F,$2E,$00,$00,$27,$21,$2D
            .byte $25,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$10,$00,$13,$00,$00,$00,$00
            .byte $00,$00,$10,$00,$13,$00,$00,$00
            .byte $00,$00,$00,$30,$2C,$21,$39,$25
            .byte $32,$00,$2F,$2E,$25,$00,$22,$21
            .byte $33,$25,$33,$00,$00,$30,$2C,$21
            .byte $39,$25,$32,$00,$34,$37,$2F,$00
            .byte $22,$21,$33,$25,$33,$00,$00,$00
            .byte $00,$00,$00,$00,$30,$2C,$21,$39
            .byte $00,$30,$2C,$21,$39,$25,$32,$00
            .byte $11,$00,$00,$00,$00,$00,$00,$00
            .byte $30,$2C,$21,$39,$00,$30,$2C,$21
            .byte $39,$25,$32,$00,$12,$00,$00,$00
            .byte $00,$00,$27,$21,$2D,$25,$00,$2F
            .byte $36,$25,$32,$00,$30,$2C,$21,$39
            .byte $25,$32,$00,$11,$00,$00,$00,$00
            .byte $27,$21,$2D,$25,$00,$2F,$36,$25
            .byte $32,$00,$30,$2C,$21,$39,$25,$32
            .byte $00,$12,$00,$00,$00,$00,$28,$29
            .byte $00,$33,$23,$2F,$32,$25,$00,$1D
            .byte $00,$10,$00,$00,$00,$00,$00,$00
            .byte $00,$26,$4E,$76,$9E,$C6,$EE,$14
            .byte $3C,$64,$8C,$B4,$DC,$00,$42,$2C
            .byte $38,$5C,$12,$20,$00,$00,$22,$04
            .byte $00,$C3,$00,$20,$44,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$08,$1C,$7F
            .byte $7F,$00,$6C,$55,$48,$35,$90,$6C
            .byte $55,$48,$35,$90,$6C,$55,$48,$35
            .byte $90,$6C,$55,$48,$35,$00,$A2,$A2
            .byte $A2,$A2,$A4,$A4,$A4,$A4,$A4,$A6
            .byte $A6,$A6,$A6,$A6,$A8,$A8,$A8,$A8
            .byte $A8,$0F,$1F,$3F,$6A,$6A,$FF,$FF
            .byte $38,$10,$00,$00,$00,$00,$80,$C0
            .byte $E0,$B0,$B0,$F8,$F8,$E0,$40,$00
            .byte $00,$00,$00,$07,$0F,$1F,$15,$35
            .byte $FF,$FF,$AA,$AA,$FF,$FF,$1F,$0F
            .byte $00,$80,$C0,$40,$60,$F8,$F8,$A8
            .byte $A8,$F8,$F8,$C0,$80,$00,$00,$20
            .byte $18,$0E,$47,$3C,$6F,$86,$0C,$10
            .byte $00,$00,$80,$60,$38,$1E,$8F,$7C
            .byte $18,$3C,$7F,$9C,$38,$60,$80,$00
            .byte $00,$48,$02,$20,$00,$08,$00,$20
            .byte $08,$00,$20,$00,$00,$00,$10,$60
            .byte $C4,$98,$E0,$F0,$C8,$60,$10,$00
            .byte $00,$04,$18,$70,$E0,$C4,$F8,$60
            .byte $F8,$E4,$F0,$30,$18,$04,$00,$04
            .byte $20,$08,$40,$00,$10,$08,$00,$20
            .byte $00,$10,$04,$1C,$10,$1C,$04,$04
            .byte $1C,$47,$C5,$45,$45,$45,$E7,$47
            .byte $C4,$47,$41,$41,$E7,$E7,$25,$25
            .byte $E5,$85,$E7,$E0,$A0,$A0,$A0,$A0
            .byte $E0,$38,$28,$28,$28,$28,$38,$38
            .byte $28,$28,$28,$28,$38,$38,$28,$28
            .byte $28,$28,$38,$94,$41,$02,$20,$8F
            .byte $8C,$8A,$88,$70,$70,$F0,$47,$BA
            .byte $33,$F0,$47,$D7,$37,$70,$F0,$46
            .byte $BA,$33,$46,$BA,$33,$F0,$46,$BA
            .byte $33,$F0,$46,$BA,$33,$F0,$46,$BA
            .byte $33,$F0,$46,$BA,$33,$F0,$46,$BA
            .byte $33,$46,$BA,$33,$46,$BA,$33,$46
            .byte $BA,$33,$F0,$42,$B3,$38,$41,$90
            .byte $16,$00,$00,$00,$00,$00,$00,$00
            .byte $24,$25,$2C,$35,$38,$25,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$29,$2E,$36,$00,$24
            .byte $25,$32,$33,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$22,$2F,$2E,$35
            .byte $33,$00,$22,$21,$33,$25,$00,$26
            .byte $2F,$32,$00,$00,$00,$00,$33,$23
            .byte $2F,$32,$29,$2E,$27,$00,$11,$10
            .byte $0C,$10,$10,$10,$00,$30,$34,$33
            .byte $00,$0A,$0A,$0A,$00,$33,$23,$2F
            .byte $32,$25,$00,$34,$21,$22,$2C,$25
            .byte $00,$0A,$0A,$0A,$00,$00,$00,$45
            .byte $46,$00,$00,$1D,$00,$00,$11,$10
            .byte $00,$30,$2F,$29,$2E,$34,$33,$00
            .byte $00,$00,$00,$43,$44,$00,$00,$1D
            .byte $00,$00,$12,$10,$00,$30,$2F,$29
            .byte $2E,$34,$33,$00,$00,$00,$00,$47
            .byte $FA,$00,$00,$1D,$00,$00,$13,$10
            .byte $00,$30,$2F,$29,$2E,$34,$33,$00
            .byte $00,$00,$00,$48,$49,$00,$00,$1D
            .byte $00,$00,$1F,$1F,$00,$30,$2F,$29
            .byte $2E,$34,$33,$00,$00,$00,$00,$4A
            .byte $4B,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$8C,$8D,$00,$00,$1D
            .byte $00,$12,$10,$10,$00,$30,$2F,$29
            .byte $2E,$34,$33,$00,$00,$00,$00,$8E
            .byte $8F,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$23,$6F,$70,$79,$72,$69
            .byte $67,$68,$74,$65,$64,$00,$08,$23
            .byte $09,$08,$30,$09,$00,$22,$79,$00
            .byte $32,$6F,$6B,$6C,$61,$6E,$00,$23
            .byte $6F,$72,$70,$00,$11,$19,$18,$11
            .byte $00,$00,$00,$29,$2E,$33,$25,$32
            .byte $34,$00,$00,$2A,$2F,$39,$33,$34
            .byte $29,$23,$2B,$00,$00,$00,$30,$32
            .byte $25,$33,$33,$00,$33,$34,$21,$32
            .byte $34,$00,$22,$35,$34,$34,$2F,$2E
            .byte $00,$00,$00,$00,$00,$33,$25,$2C
            .byte $25,$23,$34,$00,$27,$21,$2D,$25
            .byte $00,$00,$11,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$01,$03,$07
            .byte $0D,$0F,$02,$05,$0A,$80,$C0,$E0
            .byte $B0,$F0,$40,$A0,$50,$08,$04,$0F
            .byte $1D,$1F,$17,$14,$02,$10,$20,$F0
            .byte $B8,$F8,$E8,$28,$40,$03,$0F,$1F
            .byte $19,$1F,$06,$09,$30,$C0,$F0,$F8
            .byte $98,$F8,$60,$90,$0C,$18,$3C,$7E
            .byte $DB,$FF,$24,$5A,$A5,$07,$0F,$1F
            .byte $35,$75,$7F,$7F,$1C,$C0,$E0,$F0
            .byte $58,$58,$FC,$FC,$70,$08,$00,$00
            .byte $00,$00,$00,$00,$00,$20,$00,$00
            .byte $00,$00,$00,$00,$00,$03,$07,$0F
            .byte $0A,$1A,$7F,$7F,$55,$80,$C0,$E0
            .byte $A0,$B0,$FC,$FC,$54,$55,$7F,$7F
            .byte $0F,$07,$00,$00,$00,$54,$FC,$FC
            .byte $E0,$C0,$00,$00,$00,$18,$3C,$7E
            .byte $DB,$FF,$5A,$81,$42,$20,$20,$52
            .byte $45,$4D,$4F,$56,$45,$20,$43,$41
            .byte $52,$54,$52,$49,$44,$47,$45,$20
            .byte $41,$4E,$44,$20,$52,$45,$42,$4F
            .byte $4F,$54,$9B,$60,$00,$00
;
            ORG $02E2
;
            .word L3FCE
;
            ORG $02E0
;
            .word L3FCE
;
         
