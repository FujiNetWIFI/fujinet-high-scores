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
L0092       = $0092
L0093       = $0093
L0095       = $0095
L0098       = $0098
L0099       = $0099
L009A       = $009A
L009B       = $009B
L009C       = $009C
L009D       = $009D
L009E       = $009E
L009F       = $009F
L00A0       = $00A0
L00A2       = $00A2
L00A3       = $00A3
L00A4       = $00A4
L00A9       = $00A9
L00B0       = $00B0
L00B1       = $00B1
L00B2       = $00B2
L00B3       = $00B3
L00B5       = $00B5
L00BB       = $00BB
L00BC       = $00BC
L00C0       = $00C0
L00C7       = $00C7
L00CE       = $00CE
L00D3       = $00D3
L00D4       = $00D4
L00D5       = $00D5
L00D6       = $00D6
L00D7       = $00D7
L00D8       = $00D8
L00D9       = $00D9
L00DA       = $00DA
L00DB       = $00DB
L00DC       = $00DC
L00DD       = $00DD
L00DE       = $00DE
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
L00FB       = $00FB
L00FC       = $00FC
L00FD       = $00FD
L00FE       = $00FE
L00FF       = $00FF
L0100       = $0100
L0101       = $0101
L0147       = $0147
L0148       = $0148
L018E       = $018E
L047F       = $047F
L0480       = $0480
L0481       = $0481
L0482       = $0482
L0483       = $0483
L048C       = $048C
L049F       = $049F
L04A0       = $04A0
L04A1       = $04A1
L04A2       = $04A2
L04A3       = $04A3
L04A4       = $04A4
L04A5       = $04A5
L04A6       = $04A6
L04A7       = $04A7
L0500       = $0500
L0501       = $0501
L0502       = $0502
L0503       = $0503
L0504       = $0504
L0505       = $0505
L0506       = $0506
L0507       = $0507
L0513       = $0513
L0514       = $0514
L0524       = $0524
L0551       = $0551
L055B       = $055B
L0585       = $0585
L0586       = $0586
L0587       = $0587
L05C6       = $05C6
L05C7       = $05C7
L05C8       = $05C8
L05C9       = $05C9
L05CB       = $05CB
L05D1       = $05D1
L05D5       = $05D5
L05DB       = $05DB
L05E0       = $05E0
L05E1       = $05E1
L05E8       = $05E8
L05F0       = $05F0
L05F8       = $05F8
L05FF       = $05FF
L0600       = $0600
L0601       = $0601
L0602       = $0602
L0603       = $0603
L0604       = $0604
L0608       = $0608
L0616       = $0616
L0617       = $0617
L061A       = $061A
L061B       = $061B
L061C       = $061C
L061E       = $061E
L0620       = $0620
L0622       = $0622
L0624       = $0624
L0625       = $0625
L0626       = $0626
L063E       = $063E
L0648       = $0648
L0652       = $0652
L065C       = $065C
L0665       = $0665
L0666       = $0666
L0670       = $0670
L0679       = $0679
L067A       = $067A
L0683       = $0683
L0684       = $0684
L068C       = $068C
L0694       = $0694
L069E       = $069E
L06A6       = $06A6
L06AF       = $06AF
L06B0       = $06B0
L06B1       = $06B1
L06B2       = $06B2
L06B9       = $06B9
L06C1       = $06C1
L06C9       = $06C9
L06D1       = $06D1
L06D2       = $06D2
L06D3       = $06D3
L06D5       = $06D5
L0701       = $0701
L070D       = $070D
L0757       = $0757
L0759       = $0759
L07B1       = $07B1
L0808       = $0808
L0834       = $0834
L0860       = $0860
L088C       = $088C
L0A20       = $0A20
L0A21       = $0A21
L0A22       = $0A22
L0A26       = $0A26
L0A2A       = $0A2A
L0A2B       = $0A2B
L0A2C       = $0A2C
L0A2D       = $0A2D
L0A2E       = $0A2E
L0A2F       = $0A2F
L0A30       = $0A30
L0A31       = $0A31
L0A32       = $0A32
L0A33       = $0A33
L0A34       = $0A34
L0A35       = $0A35
L0A36       = $0A36
L0A37       = $0A37
L0A38       = $0A38
L0A39       = $0A39
L0A3A       = $0A3A
L0A3B       = $0A3B
L0A3C       = $0A3C
L0A3D       = $0A3D
L0A3E       = $0A3E
L0A3F       = $0A3F
L0A40       = $0A40
L0A43       = $0A43
L0A44       = $0A44
L0A45       = $0A45
L0A46       = $0A46
L0A47       = $0A47
L0A48       = $0A48
L0A4A       = $0A4A
L0A4B       = $0A4B
L0A4D       = $0A4D
L0A4E       = $0A4E
L0A4F       = $0A4F
L0A50       = $0A50
L0A51       = $0A51
L0A52       = $0A52
L0A53       = $0A53
L0A54       = $0A54
L0A55       = $0A55
L0A56       = $0A56
L0A57       = $0A57
L0A5B       = $0A5B
L0A5C       = $0A5C
L0A5D       = $0A5D
L0A5E       = $0A5E
L0A5F       = $0A5F
L0A60       = $0A60
L0A61       = $0A61
L0A62       = $0A62
L0A63       = $0A63
L0A65       = $0A65
L0A66       = $0A66
L0A67       = $0A67
L0A6A       = $0A6A
L0A6B       = $0A6B
L0A6C       = $0A6C
L0A6D       = $0A6D
L0A6E       = $0A6E
L0A6F       = $0A6F
L0A70       = $0A70
L0A80       = $0A80
L0A88       = $0A88
L0A89       = $0A89
L0A8A       = $0A8A
L0A92       = $0A92
L0A93       = $0A93
L0A94       = $0A94
L0A9C       = $0A9C
L0A9D       = $0A9D
L0A9E       = $0A9E
L0B2F       = $0B2F
L0B30       = $0B30
L0B32       = $0B32
L0B33       = $0B33
L0B34       = $0B34
L0B35       = $0B35
L0B36       = $0B36
L0B8C       = $0B8C
L0C30       = $0C30
L0C31       = $0C31
L0C32       = $0C32
L0C33       = $0C33
L0C34       = $0C34
L0C35       = $0C35
L0C36       = $0C36
L0C37       = $0C37
L0C38       = $0C38
L0C39       = $0C39
L0C3A       = $0C3A
L0C3B       = $0C3B
L0C3C       = $0C3C
L0C3D       = $0C3D
L0FEF       = $0FEF
L10FF       = $10FF
L1110       = $1110
L11FF       = $11FF
L12FF       = $12FF
L13FF       = $13FF
L140E       = $140E
L140F       = $140F
L141F       = $141F
L142E       = $142E
L142F       = $142F
L144E       = $144E
L144F       = $144F
L1718       = $1718
L1918       = $1918
L1C20       = $1C20
L1D1E       = $1D1E
L1D40       = $1D40
L1D6E       = $1D6E
L1D6F       = $1D6F
L1E10       = $1E10
L1E1D       = $1E1D
L1F1E       = $1F1E
L201B       = $201B
L2085       = $2085
L2087       = $2087
L2098       = $2098
L2099       = $2099
L209A       = $209A
L209B       = $209B
L209C       = $209C
L209D       = $209D
L2221       = $2221
L242C       = $242C
L26F6       = $26F6
L282C       = $282C
L360E       = $360E
L368E       = $368E
L3820       = $3820
L3E40       = $3E40
L3EBF       = $3EBF
L3EC2       = $3EC2
L3ECA       = $3ECA
L3ECB       = $3ECB
L3ECC       = $3ECC
L3ED2       = $3ED2
L3EEE       = $3EEE
L3EFF       = $3EFF
L3F00       = $3F00
L3F01       = $3F01
L3F02       = $3F02
L3F03       = $3F03
L3F04       = $3F04
L3F05       = $3F05
L3F06       = $3F06
L3F07       = $3F07
L3F08       = $3F08
L3F09       = $3F09
L3F0A       = $3F0A
L3F14       = $3F14
L3F15       = $3F15
L3F16       = $3F16
L3F17       = $3F17
L3F1C       = $3F1C
L3F21       = $3F21
L3F26       = $3F26
L3F28       = $3F28
L3F29       = $3F29
L3F2C       = $3F2C
L3F30       = $3F30
L3F31       = $3F31
L3F32       = $3F32
L3F51       = $3F51
L3F74       = $3F74
L3F75       = $3F75
L3F76       = $3F76
L3F77       = $3F77
L3F78       = $3F78
L3F7C       = $3F7C
L3F80       = $3F80
L3F83       = $3F83
L3F84       = $3F84
L3F88       = $3F88
L3F89       = $3F89
L3F8A       = $3F8A
L3F8B       = $3F8B
L3F8C       = $3F8C
L3F90       = $3F90
L3F91       = $3F91
L3F92       = $3F92
L3FB0       = $3FB0
L3FC8       = $3FC8
L3FE0       = $3FE0
L3FE9       = $3FE9
L3FF0       = $3FF0
L3FF3       = $3FF3
L3FF9       = $3FF9
L3FFA       = $3FFA
L3FFB       = $3FFB
L3FFC       = $3FFC
L3FFD       = $3FFD
L3FFE       = $3FFE
L460E       = $460E
L601B       = $601B
L6048       = $6048
L7D2B       = $7D2B
L7D36       = $7D36
L818C       = $818C
L847E       = $847E
L8825       = $8825
L89AD       = $89AD
L8D3F       = $8D3F
L8DF1       = $8DF1
L8E0A       = $8E0A
L8E0E       = $8E0E
L90BA       = $90BA
L9309       = $9309
L9373       = $9373
L937E       = $937E
L94FA       = $94FA
L9898       = $9898
L9A85       = $9A85
L9A8E       = $9A8E
L9ABC       = $9ABC
L9B20       = $9B20
L9D98       = $9D98
L9D9D       = $9D9D
LA0B1       = $A0B1
LA0C9       = $A0C9
LA197       = $A197
LA5DB       = $A5DB
LA724       = $A724
LA72A       = $A72A
LA7DB       = $A7DB
LB800       = $B800
LB811       = $B811
LB82D       = $B82D
LB881       = $B881
LB887       = $B887
LB8B7       = $B8B7
LB8DB       = $B8DB
LB8E6       = $B8E6
LB8F0       = $B8F0
LB8FB       = $B8FB
LB8FF       = $B8FF
LB903       = $B903
LB907       = $B907
LB90B       = $B90B
LB90F       = $B90F
LB917       = $B917
LB91F       = $B91F
LB932       = $B932
LB946       = $B946
LB974       = $B974
LB98C       = $B98C
LB9A4       = $B9A4
LB9D4       = $B9D4
LB9EC       = $B9EC
LBA04       = $BA04
LBAC4       = $BAC4
LBBA4       = $BBA4
LBFE2       = $BFE2
LBFE6       = $BFE6
LBFE7       = $BFE7
LBFE8       = $BFE8
LBFE9       = $BFE9
LBFEA       = $BFEA
LBFFA       = $BFFA
LD80A       = $D80A
LF0F0       = $F0F0
LF42C       = $F42C
;
; Start of code
				;
	icl 'hiscore.asm'
	
            org $7500
;
            jsr L94FA
            lda L3FFD
            beq L7511
            jsr L9D28
            jsr L94FA
            jsr L9D28
L7511:      rts
            .byte $70,$70,$70,$70,$47,$C0,$3E,$70
            .byte $70,$70,$70,$70,$06,$70,$70,$70
            .byte $06,$70,$70,$70,$70,$70,$06,$70
            .byte $06,$41,$52,$3F,$00,$00,$00,$00
            .byte $24,$29,$27,$00,$00,$24,$35,$27
            .byte $00,$00,$00,$00,$00,$B2,$AF,$B5
            .byte $AE,$A4,$9A,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$F0,$EC,$E1
            .byte $F9,$E5,$F2,$F3,$DA,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$48,$63,$49
            .byte $00,$51,$59,$58,$52,$00,$6E,$61
            .byte $6D,$63,$6F,$00,$00,$48,$63,$49
            .byte $00,$51,$59,$58,$53,$00,$61,$74
            .byte $61,$72,$69,$00,$00,$00,$00
            lda L3FF9
            bne L7587
            rts
L7587:      ldx #$1C
L7589:      lda LB811,X
            sta L3F51,X
            dex
            bne L7589
            ldx #$53
L7594:      lda LB82D,X
            sta L3EBF,X
            dex
            bne L7594
            jsr LB8DB
            jsr L8892
            lda #$B0
            sta HPOSP0
            lda #$08
            sta L05E0
            lda #$2C
            sta L06B1
            lda #$00
            sta PCOLR0
            jsr LB6DA
            lda L3FFD
            clc
            adc #$D1
            sta L3EEE
            jsr LA19B
            ldx L3FFE
            lda LB91F,X
            sta L0A92
            lda L048C,X
            sta PCOLR0
            jsr LA339
            jmp LB8B7
            lda #$3F
            sta SDLSTH
            lda #$52
            sta SDLSTL
            rts
            lda RTCLOK+2
L75E8:      cmp RTCLOK+2
            beq L75E8
            jsr LA42D
            rts
            ldy #$00
L75F2:      cmp LB8FB,Y
            bcc L75FA
            iny
            bne L75F2
L75FA:      rts
            .byte $37,$67,$8B,$FF,$2A,$2B,$2C,$2D
            .byte $01,$02,$03,$04,$2C,$2E,$2F,$30
            .byte $03,$05,$06,$07,$30,$32,$34,$36
            .byte $38,$39,$3A,$3B,$07,$09,$0B,$0D
            .byte $0F,$10,$11,$12,$3C,$3D,$3E,$3F
            .byte $3F,$40,$40,$41,$41,$42,$42,$43
            .byte $43,$44,$44,$45,$45,$46,$1B,$03
            .byte $05,$06,$07,$07,$08,$08,$0A,$0A
            .byte $0B,$0B,$0C,$0C,$0D,$0D,$0E,$0E
            .byte $0F,$DF,$7F,$FC,$3D,$C1,$0F,$11
            .byte $43,$15,$53,$15,$43,$15,$13,$15
            .byte $41,$10,$0F,$C3,$FF,$7F,$FF,$F7
            .byte $F7,$DF,$7F,$FF,$0D,$F0,$43,$C4
            .byte $53,$C5,$43,$15,$53,$15,$43,$15
            .byte $11,$11,$43,$C0,$0F,$7F,$FF,$F7
            .byte $F7,$C0,$03,$C0,$03,$F0,$03,$C0
            .byte $03,$C0,$03,$C0,$03,$C0,$03,$C0
            .byte $03,$C0,$03,$CC,$0F,$C0,$03,$C0
            .byte $03,$FF,$FF,$FF,$0F,$F0,$03,$C0
            .byte $03,$C0,$03,$00,$03,$00,$03,$00
            .byte $03,$00,$03,$C0,$0F,$FF,$FF,$FF
            .byte $FF,$00,$00,$00,$00,$00,$40,$04
            .byte $50,$05,$40,$15,$50,$15,$40,$15
            .byte $10,$11,$40,$00,$00,$00,$00,$00
            .byte $00,$C0,$03,$C0,$03,$C0,$03,$C0
            .byte $03,$FF,$C3,$C3,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$03,$00,$03,$C0
            .byte $0F,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$04,$04,$14,$14
            .byte $14,$15,$10,$14,$50,$05,$40,$00
            .byte $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$F0,$FF,$F0
            .byte $0F,$C0,$03,$C0,$00,$C0,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$01,$00,$05,$10,$05,$14,$11
            .byte $45,$00,$00,$0A,$00,$0A,$A0,$A2
            .byte $80,$28,$22,$A0,$02,$A0,$0A,$A8
            .byte $2A,$2A,$AA,$0A,$AA,$80,$A8,$00
            .byte $00,$00,$00,$00,$A0,$0A,$A0,$02
            .byte $8A,$88,$28,$80,$0A,$A0,$0A,$A8
            .byte $2A,$AA,$A8,$AA,$A0,$2A,$02,$00
            .byte $00,$00,$00,$00,$00,$00,$0A,$08
            .byte $88,$0A,$AA,$AA,$AA,$AA,$A8,$AA
            .byte $A0,$AA,$00,$80,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$0A,$00,$22
            .byte $20,$AA,$A0,$AA,$AA,$2A,$AA,$0A
            .byte $AA,$00,$AA,$00,$02,$00,$00,$00
            .byte $00,$00,$00,$20,$80,$0A,$20,$2A
            .byte $A0,$AA,$A8,$AA,$AA,$A8,$A8,$80
            .byte $A0,$02,$88,$08,$20,$00,$00,$00
            .byte $00,$00,$00,$02,$08,$08,$A0,$0A
            .byte $A8,$2A,$AA,$AA,$AA,$2A,$2A,$0A
            .byte $02,$22,$80,$08,$20,$00,$00,$00
            .byte $00,$00,$00,$00,$03,$C0,$00,$C0
            .byte $00,$00,$03,$00,$03,$C0,$00,$C0
            .byte $00,$00,$03,$00,$03,$C0,$03,$00
            .byte $00,$FF,$F7,$DD,$DD,$DD,$DD,$F7
            .byte $FF,$FF,$F7,$D7,$F7,$F7,$F7,$D5
            .byte $FF,$FF,$D7,$FD,$FD,$F7,$DF,$D5
            .byte $FF,$FF,$D7,$FD,$F7,$FD,$FD,$D7
            .byte $FF,$FF,$FD,$F5,$DD,$D5,$FD,$FD
            .byte $FF,$FF,$D5,$DF,$D7,$FD,$FD,$D7
            .byte $FF,$FF,$F7,$DF,$D7,$DD,$DD,$F7
            .byte $FF,$FF,$D5,$FD,$FD,$F7,$F7,$F7
            .byte $FF,$FF,$F7,$DD,$F7,$DD,$DD,$F7
            .byte $FF,$FF,$F7,$DD,$DD,$F5,$FD,$F7
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$D5,$55,$5F,$57,$D5,$FD,$DF
            .byte $D5,$FF,$5F,$FF,$FF,$5F,$7F,$FF
            .byte $7F,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FD,$FF,$F5,$7F,$F6,$7F,$F5
            .byte $7F,$FD,$FF,$CC,$CF,$C0,$CF,$F0
            .byte $3F,$FA,$BF,$EE,$AF,$A9,$BB,$A4
            .byte $6B,$B9,$AB,$EA,$EF,$FA,$8F,$3F
            .byte $0F,$0C,$33,$0C,$C3,$C0,$C3,$F0
            .byte $0F,$33,$33,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$CC
            .byte $CC,$DF,$33,$F0,$00,$C0,$00,$C0
            .byte $00,$40,$00,$C0,$00,$C0,$00,$C0
            .byte $00,$C0,$00,$C0,$00,$70,$00,$FC
            .byte $CC,$13,$3F,$00,$0D,$00,$03,$00
            .byte $03,$00,$03,$00,$03,$00,$03,$00
            .byte $01,$00,$03,$00,$03,$00,$0F,$CC
            .byte $F7,$DF,$7F,$FF,$FD,$FF
L78A9:      .byte $FF,$FD,$FF,$7F,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FD,$FF,$7F,$FF,$FF,$7F
            .byte $FF,$F7,$F7,$DF,$7F,$FF,$DD,$77
            .byte $FF,$FF,$77,$77,$FF,$FD,$DF,$FF
            .byte $F7,$DF,$7F,$FF,$FF,$F7,$77,$7F
            .byte $FD,$F7,$DF,$C0,$00,$00,$01,$00
            .byte $03,$C0,$00,$C0,$00,$00,$03,$00
            .byte $03,$C0,$00,$C0,$00,$00,$03,$00
            .byte $03,$C0,$00,$DF,$7F,$F0,$0D,$C0
            .byte $03,$C0,$00,$C0,$00,$00,$03,$00
            .byte $03,$C0,$00,$C0,$00,$00,$03,$00
            .byte $03,$C0,$00,$C0,$00,$00,$03,$00
            .byte $03,$C0,$00,$C0,$00,$00,$03,$00
            .byte $03,$C0,$00,$C0,$00,$C0,$03,$70
            .byte $0F,$F7,$F7,$00,$00,$00,$7C,$FE
            .byte $EA,$EA,$FE,$7C,$48,$48,$6C,$00
            .byte $00,$00,$7C,$FE,$EA,$EA,$FE,$6C
            .byte $36,$24,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$3E,$7F,$57,$57,$7F,$3E
            .byte $12,$12,$36,$00,$00,$00,$3E,$7F
            .byte $57,$57,$7F,$36,$6C,$24,$00,$00
            .byte $00,$00,$00,$00,$00,$3C,$5E,$50
            .byte $3E,$FC,$F0,$78,$3C,$B6,$58,$00
            .byte $00,$00,$00,$3C,$5E,$50,$30,$7E
            .byte $FC,$F0,$38,$6C,$B6,$00,$00,$00
            .byte $00,$78,$F4,$14,$F8,$7E,$1E,$3C
            .byte $78,$DA,$34,$00,$00,$00,$00,$78
            .byte $F4,$14,$18,$FC,$7E,$1E,$38,$6C
            .byte $DA,$00,$00,$00,$00,$00,$00,$5A
            .byte $5E,$D8,$D8,$DA,$7E,$78,$20,$00
            .byte $00,$00,$00,$00,$10,$58,$5A,$DE
            .byte $DA,$DE,$78,$68,$20,$00,$00,$00
            .byte $00,$00,$10,$58,$58,$DA,$DE,$D8
            .byte $68,$68,$20,$00,$00,$00,$70,$FC
            .byte $C0,$E0,$7C,$38,$6C,$78,$48,$6C
            .byte $00,$00,$00,$00,$70,$FC,$C0,$E0
            .byte $7C,$38,$40,$78,$20,$30,$00,$00
            .byte $00,$00,$70,$FC,$C0,$E0,$7C,$58
            .byte $60,$78,$50,$78,$00,$00,$00,$00
            .byte $20,$78,$7E,$DA,$D8,$D8,$5E,$5A
            .byte $08,$00,$00,$00,$00,$00,$20,$68
            .byte $78,$DE,$DA,$DE,$5A,$58,$10,$00
            .byte $00,$00,$00,$00,$20,$68,$68,$D8
            .byte $DE,$DA,$58,$58,$10,$00,$00,$00
            .byte $00,$00,$1C,$7E,$06,$0E,$7C,$38
            .byte $6C,$3C,$24,$6C,$00,$00,$00,$00
            .byte $1C,$7E,$06,$0E,$7C,$38,$04,$3C
            .byte $08,$18,$00,$00,$00,$00,$1C,$7E
            .byte $06,$0E,$7C,$34,$0C,$3C,$14,$3C
            .byte $00,$00,$00,$00,$70,$FC,$E0,$7C
            .byte $78,$6C,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$30,$7C,$60,$70,$3C,$78
            .byte $B8,$24,$30,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$30,$7C,$70,$3C,$78
            .byte $B8,$24,$30,$00,$00,$00,$00,$00
            .byte $00,$18,$3C,$60,$7E,$3C,$52,$18
            .byte $00,$00,$00,$00,$08,$08,$49,$22
            .byte $14,$00,$14,$22,$49,$08,$08,$00
            .byte $00,$00,$66,$99,$FF,$5A,$DB,$FF
            .byte $E7,$E7,$7E,$3C,$00,$00,$00,$00
            .byte $30,$3C,$5E,$56,$76,$7E,$3E,$3C
            .byte $6C,$08,$18,$00,$00,$00,$1C,$3E
            .byte $2E,$4F,$73,$77,$7F,$FE,$3E,$1C
            .byte $38,$00,$00,$3C,$6E,$6E,$CF,$F3
            .byte $F7,$F7,$FF,$7F,$FF,$7E,$7E,$3C
            .byte $00,$3C,$76,$76,$E7,$B9,$5B,$8B
            .byte $1F,$4F,$1F,$AE,$5E,$3C,$00,$00
            .byte $00,$1C,$3E,$58,$76,$3C,$F8,$7C
            .byte $B6,$58,$00,$00,$00,$00,$1C,$3E
            .byte $4C,$5A,$76,$3C,$FE,$FE,$7E,$3C
            .byte $76,$D8,$00,$1C,$3E,$4F,$5C,$5B
            .byte $76,$3E,$7F,$FF,$FF,$3F,$7E,$FB
            .byte $DC,$3E,$7C,$98,$B2,$B6,$ED,$7E
            .byte $F4,$E8,$B2,$69,$74,$FB,$DC,$00
            .byte $00,$00,$3E,$7F,$49,$49,$7F,$7F
            .byte $36,$00,$00,$00,$00,$00,$00,$00
            .byte $1C,$3E,$6B,$5D,$7F,$7F,$36,$00
            .byte $00,$00,$00,$00,$00,$82,$EE,$92
            .byte $92,$6C,$82,$C6,$BA,$54,$38,$00
            .byte $00,$00,$28,$54,$92,$AA,$44,$10
            .byte $6C,$AA,$54,$38,$00,$00,$00,$3E
            .byte $7F,$49,$7F,$12,$36,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$7C,$9E,$F0
            .byte $7E,$B8,$6E,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$E0,$20,$E0,$80
            .byte $F8,$28,$28,$3E,$0A,$0A,$0E,$00
            .byte $00,$00,$E0,$20,$E0,$20,$F8,$28
            .byte $28,$3E,$0A,$0A,$0E,$00,$00,$00
            .byte $A0,$A0,$E0,$20,$38,$28,$28,$3E
            .byte $0A,$0A,$0E,$00,$00,$00,$E0,$80
            .byte $E0,$20,$F8,$28,$28,$3E,$0A,$0A
            .byte $0E,$00,$00,$00,$E0,$80,$E0,$A0
            .byte $F8,$28,$28,$3E,$0A,$0A,$0E,$00
            .byte $00,$00,$E0,$A0,$E0,$A0,$F8,$28
            .byte $28,$3E,$0A,$0A,$0E,$00,$00,$00
            .byte $00,$80,$80,$F0,$D0,$5C,$74,$17
            .byte $1D,$05,$07,$00,$00,$00,$00,$E0
            .byte $20,$E0,$80,$F0,$50,$5C,$74,$17
            .byte $1D,$05,$07,$00,$E0,$20,$E0,$80
            .byte $F0,$40,$70,$1C,$74,$17,$1D,$05
            .byte $07,$00,$00,$E0,$20,$E0,$20,$F0
            .byte $50,$5C,$74,$17,$1D,$05,$07,$00
            .byte $00,$A0,$A0,$E0,$20,$70,$50,$5C
            .byte $74,$17,$1D,$05,$07,$00,$00,$E0
            .byte $80,$E0,$20,$F0,$50,$5C,$74,$17
            .byte $1D,$05,$07,$00,$00,$E0,$80,$E0
            .byte $A0,$F0,$50,$5C,$74,$17,$1D,$05
            .byte $07,$00,$00,$E0,$20,$20,$20,$70
            .byte $50,$5C,$74,$17,$1D,$05,$07,$00
            .byte $00,$E0,$A0,$E0,$A0,$F0,$50,$5C
            .byte $74,$17,$1D,$05,$07,$2E,$2A,$2A
            .byte $2A,$2E,$00,$70,$50,$5C,$74,$17
            .byte $1D,$05,$07,$2E,$22,$2E,$28,$2E
            .byte $00,$70,$50,$5C,$74,$17,$1D,$05
            .byte $07,$2E,$28,$2E,$22,$2E,$00,$70
            .byte $50,$5C,$74,$17,$1D,$05,$07,$1C
            .byte $1C,$36,$36,$3A,$6C,$74,$78,$50
            .byte $60,$00,$00,$00,$00,$08,$0C,$6C
            .byte $76,$F8,$F8,$FC,$FC,$F4,$C8,$78
            .byte $00,$00,$00,$18,$2C,$5E,$5E,$7E
            .byte $42,$18,$18,$1C,$0C,$00,$00,$00
            .byte $00,$02,$02,$03,$05,$07,$0F,$7A
            .byte $AE,$FC,$D8,$70,$00,$00,$00,$02
            .byte $02,$05,$07,$0F,$7F,$DE,$BE,$BC
            .byte $FC,$78,$00,$00,$00,$20,$10,$54
            .byte $EE,$FE,$D6,$7C,$D6,$FE,$6C,$00
            .byte $00,$00,$00,$28,$10,$6C,$FE,$FE
            .byte $BE,$BE,$BE,$5C,$38,$00,$00,$00
            .byte $00,$10,$10,$28,$5C,$5C,$BE,$BE
            .byte $BE,$7C,$54,$00,$00,$00,$00,$00
            .byte $00,$00,$FF,$BD,$FF,$5A,$7E,$3C
            .byte $00,$00,$00,$00,$00,$92,$BA,$FE
            .byte $92,$AA,$54,$6C,$54,$10,$10,$00
            .byte $00,$00,$00,$54,$28,$10,$28,$54
            .byte $54,$AA,$AA,$54,$54,$38,$00,$00
            .byte $00,$10,$08,$04,$08,$10,$38
L7CE8:      sec
            bpl L7CEB
L7CEB:      jsr LF0F0
            jsr $0000
            bpl L7D2B
            sec
            bpl L7D36
            beq L7CE8
            rti
            .byte $00,$12,$86,$00,$04,$FA,$B8
L7D00:      lda #$01
            sta BOOT
            lda #$0C
            sta DOSINI
            lda #$7D
            sta DOSINI+1
            lda #$00
            sta WARMST
            sta COLDST
            sta SDMCTL
            sta DMACLT
            nop
            sta L00B0
            sta L00B2
            lda #$B8
            sta L00B3
            lda #$75
            sta L00B1
            ldy #$00
L7D28:      lda (L00B0),Y
            sta (L00B2),Y
            iny
            bne L7D28
            inc L00B1
            inc L00B3
            lda L00B3
            cmp #$C0
            bne L7D28
            lda #$94
            sta COLOR2
            lda #$00
            sta AUDCTL
            lda #$03
            sta SKCTL
            jmp (LBFFA)
;
            org $7FC4
;
L7FC4:      lda #$00
            sta L3FF9
            sta L3FFC
            txa
            jmp L8666
L7FD0:      lda #$04
            sta L0099
            lda #$78
            sta L0A89
            jmp L807B
L7FDC:      lda L05CB,X
            sta LOMEM
            lda L05D5,X
            cmp #$80
            bcc L7FEE
            cmp #$C0
            bcs L7FEE
            lda #$C0
L7FEE:      sta LOMEM+1
            lda L0FEF,X
            sta (LOMEM),Y
            dex
            bne L7FDC
            txa
            jmp L8C6C
            .byte $00,$00,$00,$00
L8000:      lda #$FF
            sta NMIEN
            jsr L8892
L8008:      jsr L806F
L800B:      ldx #$FF
            txs
            inx
            stx L00DD
L8011:      lda L00DC
            beq L8011
            inc L00DD
            ldx #$00
            stx L00DC
            jsr LA0CE
            jsr LB6DA
            lda L0A3A
            bne L800B
            sta L3FFC
            jsr LA7DB
            jsr LAB9E
            jsr L8EFB
            jsr LAD33
            jsr LADB9
            jsr LB2C5
            jsr LACA4
            jsr LA5DB
            jsr L808B
            ldx L00F9
            beq L804C
            dex
            stx L0665
L804C:      jsr L830D
            inc L0A6F
            jsr L9E08
            lda VCOUNT
            bmi L805E
            cmp #$48
            bpl L8061
L805E:      jsr L94FA
L8061:      jmp L800B
L8064:      ldx L00F9
            dex
            stx L0665
            ldx #$00
            stx L00F9
            rts
L806F:      jmp L7FD0
            sta L78A9,Y
            sta L0A89
            sta L889D
L807B:      ldx #$00
            stx L0A62
            lda #$01
            jsr L9778
            inx
            lda #$0F
            jsr L9778
L808B:      jsr L9D75
            lda L3F07
            beq L80C4
            lda L0A89
            cmp #$38
            beq L80A7
            ldx #$04
            stx L00F9
            stx L0A36
            dex
            stx L0665
            bne L80C4
L80A7:      lda L0099
            cmp #$5B
            beq L80B6
            lda #$03
            sta L00F9
            sta L0A36
            bne L80C4
L80B6:      lda #$00
            sta L3F07
            jsr L8C25
            lda #$02
            sta L00F9
            bne L80CC
L80C4:      jsr L81C3
            jsr L8218
            lda L00F9
L80CC:      bne L8100
            lda L0A6B
            bne L80FA
            lda L0A6A
            bne L80E0
            jsr L976E
            ora L3F07
            bne L80FA
L80E0:      inc L0A6D
            lda L0A6D
            ldx L00D6
            cmp L818A,X
            bne L80FA
            jsr L9889
            ldx #$00
            lda #$07
            jsr L9778
            inc L0A6B
L80FA:      lda #$01
            sta L0679
            rts
L8100:      lda L0A50
            bne L80FA
            lda L0A6A
            bne L8148
            lda L0A6B
            bne L8117
            jsr L976E
            ora L3F07
            bne L8148
L8117:      inc L0A6C
            lda L0A6C
            ldx L00D6
            cmp L818A,X
            bne L8148
            jsr L9889
            ldx #$02
L8129:      lda L8178,X
            jsr L9778
            dex
            bpl L8129
L8132:      inc L0A6A
            lda L3F28
            beq L813F
            lda L0A38
            beq L8148
L813F:      lda #$03
            tax
L8142:      sta L3F83,X
            dex
            bne L8142
L8148:      lda L00F9
            ldy #$00
            sty L0679
            lsr
            bcs L8155
            jmp L818C
L8155:      lda LOMEM+1
            beq L8190
            lda L00F9
            cmp #$01
            beq L817B
            lda L0099
            cmp #$A3
            beq L8181
            cmp #$04
            bne L8172
            lda L0A89
            beq L8181
            cmp #$78
            beq L8181
L8172:      lda L00F9
            sta L0A62
            rts
L8178:      ora (POKMSK),Y
            .byte $02
L817B:      lda L0099
            cmp #$05
            bcs L8172
L8181:      jsr L8064
            ldy #$01
            sty L0679
            rts
L818A:      rti
            bmi L8132
            .byte $80
            bne L8196
L8190:      lda L0A62
            sta L00F9
            rts
L8196:      lda L00F9
            cmp #$02
            bne L81AF
            lda L0A89
            cmp #$78
            bcs L8181
            cmp #$70
            bcc L8172
            lda L0099
            cmp #$04
            beq L8172
            bne L8181
L81AF:      lda L0A89
            beq L8181
            lda L0099
            cmp #$04
            beq L8172
            lda L0A89
            cmp #$08
            beq L8181
            bne L8172
L81C3:      lda #$00
            sta LOMEM
            sta LOMEM+1
            lda #$04
            cmp L0099
            beq L81E4
            lda #$13
L81D1:      cmp L0099
            beq L81E4
            clc
            adc #$0C
            cmp #$AF
            bne L81D1
L81DC:      lda L0A89
            and #$07
            beq L81E8
            rts
L81E4:      inc LOMEM
            bne L81DC
L81E8:      inc LOMEM+1
            rts
L81EB:      lda #$00
            asl L0086
            rol
            asl L0086
            rol
            asl L0086
            rol
            asl L0086
            rol
            asl L0086
            rol
            sta L0087
            lda #$00
            clc
            lsr L0084
            ror
            lsr L0084
            rol
            rol
            sta L00F8
            clc
            lda L0086
            adc L0084
            sta L0082
            lda #$12
            adc L0087
            sta L0083
            rts
L8218:      lda LOMEM
            and LOMEM+1
            beq L824A
            lda L0A89
            sta L0084
            lda L0099
            sta L0086
            jsr L81EB
            ldy #$00
            ldx L00F9
            beq L824A
            lda L824A,X
            clc
            adc L0082
            sta L0082
            lda L824E,X
            adc L0083
            sta L0083
            lda (L0082),Y
            and #$03
            cmp #$01
            bne L824A
            jsr L8064
L824A:      rts
            rti
            .byte $C2,$60
L824E:      .byte $BE,$FF,$00,$02,$00
            lda L00D5
            and #$7F
            bne L8292
            dec L3FFC
            beq L8267
            lda L00D7
            bne L8292
            dec L3FFC
            bne L8292
L8267:      ldx #$00
            lda L3FF9
            ora L0A3B
            bne L8287
            lda L0A3A
            beq L827B
            dec L3FFB
            bpl L8292
L827B:      lda #$10
            sta L3FFC
            stx L3FFA
            lda #$05
            bne L8290
L8287:      stx L3FF9
            inx
            stx L3FFA
            lda #$FF
L8290:      sta L00F2
L8292:      lda #$00
            sta COLBK
            sta ATRACT
            lda L04A3
            sta COLPF0
            lda L3FFA
            beq L82B3
            lda L00D5
            and #$03
            bne L82AD
            inc L0A20
L82AD:      lda L0A20
            sta COLPF0
L82B3:      lda L04A6
            sta COLPF1
            lda L04A4
            ldx L00ED
            beq L82C3
            lda L04A5
L82C3:      sta COLPF3
            inc L00D5
            inc L00D4
            lda L00D6
            beq L82D8
            dec L00D7
            bpl L82D8
            lda #$04
            sta L00D7
            inc L00D4
L82D8:      lda L00F1
            beq L82DE
            dec L00F1
L82DE:      jsr L97E2
            lda SDLSTH
            cmp #$05
            bne L82FC
            lda #$AF
            sta VDSLST
            lda #$A4
            sta VDSLST+1
            lda #$00
            sta L00D3
L82F6:      pla
            tay
            pla
            tax
            pla
            rti
L82FC:      lda #$FB
            sta VDSLST
            lda #$82
            sta VDSLST+1
            jmp L82F6
L8309:      rts
L830A:      jmp L8405
L830D:      lda L00EF
            bne L8309
            lda L0A50
            bne L830A
            lda L0099
            ldx L0A62
            cpx #$01
            bne L8323
            cmp #$10
            bcc L830A
L8323:      cmp #$07
            bcc L830A
            lda L00F9
            beq L8370
            dex
            jsr L847E
            lda #$20
            sta L3F90
            lda #$01
            sta L3F91
            lda #$E0
            sta L3F92
            jsr L95A5
            bcc L8370
            lda #$08
            sta L00ED
            lda L3F07
            bne L8370
            lda L0A65
            asl
            sta LOMEM
            lda L0A62
            and #$01
            adc LOMEM
            tax
            ldy L3F26
            iny
            cpy #$25
            bne L836D
            stx L008A
            ldx #$00
            jsr L96E2
            ldx L008A
            ldy #$00
L836D:      sty L3F26
L8370:      lda L0A89
            ldx L0A62
            cpx #$02
            bne L837D
            clc
            adc #$07
L837D:      sta L0088
            sta L0084
            lda L0099
            cpx #$03
            bne L838A
            clc
            adc #$0B
L838A:      sta L0089
            sta L0086
            lda L0A62
            lsr
            bcs L8397
            jmp L8488
L8397:      lda L0A62
            eor #$FF
            clc
            adc #$03
            clc
            adc L0089
            sta L0089
            sta L0086
            jsr L81EB
            lda L0082
            sta L00F6
            lda L0083
            sta L00F7
            ldy #$00
            lda L0089
            and #$03
            beq L83BD
            and #$01
            beq L83BF
L83BD:      lda #$03
L83BF:      tax
            lda L0089
            and #$03
            beq L83C8
            lda #$C0
L83C8:      jsr L846E
            lda L0A62
            and #$02
            beq L83ED
            dec L0083
            dec L0089
            ldy #$E0
            lda #$C0
            ldx #$03
            jsr L846E
            inc L0083
            ldy #$20
            lda #$F0
            ldx #$0F
            jsr L846E
            jmp L8405
L83ED:      inc L0089
            ldy #$20
            lda #$C0
            ldx #$03
            jsr L846E
            dec L0083
            ldy #$E0
            lda #$F0
            ldx #$0F
            jsr L846E
            inc L0083
L8405:      lda L00F9
            cmp #$01
            bne L843F
            lda #$12
L840D:      cmp L0099
            beq L8419
            clc
            adc #$0C
            cmp #$A2
            bne L840D
            rts
L8419:      lda L00F6
            sec
            sbc #$1E
            sta L0082
            lda L00F7
            sbc #$00
            sta L0083
            ldy #$20
            lda (L0082),Y
            and #$C0
            bne L843E
            ldy #$00
            lda (L0082),Y
            and #$3F
            sta (L0082),Y
            ldy #$1F
            lda (L0082),Y
            and #$FC
            sta (L0082),Y
L843E:      rts
L843F:      lda #$14
L8441:      cmp L0099
            beq L844D
            clc
            adc #$0C
            cmp #$A4
            bne L8441
            rts
L844D:      lda L00F6
            sta L0082
            lda L00F7
            sta L0083
            ldy #$20
            lda (L0082),Y
            and #$C0
            bne L846D
            ldy #$00
            lda (L0082),Y
            and #$3F
            sta (L0082),Y
            ldy #$1F
            lda (L0082),Y
            and #$FC
            sta (L0082),Y
L846D:      rts
L846E:      and (L0082),Y
            sta (L0082),Y
            iny
            txa
            and (L0082),Y
            sta (L0082),Y
            rts
            inc VDSLST,X
            .byte $00
            inc L89AD,X
            asl
            sta L008A
            lda L0099
            sta L008B
            rts
L8488:      lda L0A62
            sec
            sbc #$03
            sta LOMEM
            clc
            adc L0088
            sta L0084
            sta L0088
            jsr L81EB
            lda L0082
            sta L00F6
            lda L0083
            sta L00F7
            ldx L00F8
            ldy #$00
            lda L0088
            and #$03
            bne L84B3
L84AC:      lda L853F,X
            and (L0082),Y
            sta (L0082),Y
L84B3:      tya
            clc
            adc #$20
            tay
            cmp #$C0
            bne L84AC
            lda L0082
            clc
            adc #$C0
            sta L0082
            bcc L84C7
            inc L0083
L84C7:      ldx L00F8
            ldy #$00
L84CB:      lda L853F,X
            and (L0082),Y
            sta (L0082),Y
            tya
            clc
            adc #$20
            tay
            cmp #$A0
            bne L84E3
            lda L0088
            and #$03
            cmp #$02
            bne L84E8
L84E3:      tya
            cmp #$C0
            bne L84CB
L84E8:      lda L00F6
            sta L0082
            lda L00F7
            sta L0083
            lda LOMEM
            tay
            clc
            adc L00F8
            sta L00F8
            and #$FC
            beq L850A
            lda L00F8
            and #$03
L8500:      sta L00F8
            tya
            clc
            adc L0082
            sta L0082
            sta L00F6
L850A:      ldx L00F8
            ldy #$20
L850E:      lda L853F,X
            and (L0082),Y
            sta (L0082),Y
            tya
            clc
            adc #$20
            tay
            cmp #$C0
            bne L850E
            lda L0082
            clc
            adc #$C0
            sta L0082
            bcc L8529
            inc L0083
L8529:      ldx L00F8
            ldy #$00
L852D:      lda L853F,X
            and (L0082),Y
            sta (L0082),Y
            tya
            clc
            adc #$20
            tay
            cmp #$A0
            bne L852D
            beq L8547
L853F:      .byte $3F,$CF,$F3,$FC
L8543:      .byte $80
            jsr VKEYBD
L8547:      lda L00F6
            sta L0082
            lda L00F7
            sta L0083
            lda LOMEM
            eor #$FF
            clc
            adc #$01
            sta LOMEM
            asl
            clc
            adc L00F8
            sta L00F8
            and #$FC
            beq L856F
            lda L00F8
            and #$03
            sta L00F8
            lda LOMEM
            clc
            adc L00F6
            sta L0082
L856F:      ldx L00F8
            ldy #$40
L8573:      lda L853F,X
            and (L0082),Y
            sta (L0082),Y
            tya
            clc
            adc #$20
            tay
            cmp #$C0
            bne L8573
            lda L0082
            clc
            adc #$C0
            sta L0082
            bcc L858E
            inc L0083
L858E:      ldx L00F8
            ldy #$00
L8592:      lda L853F,X
            and (L0082),Y
            sta (L0082),Y
            tya
            clc
            adc #$20
            tay
            cmp #$80
            bne L8592
            lda L00F9
            cmp #$02
            bne L85DD
            lda #$01
L85AA:      cmp L0A89
            beq L85B7
            clc
            adc #$08
            cmp #$A1
            bne L85AA
            rts
L85B7:      lda L00F6
            sec
            sbc #$20
            sta L0082
            lda L00F7
            sbc #$00
            sta L0083
            ldy #$00
            lda (L0082),Y
            and #$03
            bne L85DC
            ldy #$01
            lda (L0082),Y
            and #$3F
            sta (L0082),Y
            ldy #$20
            lda (L0082),Y
            and #$FC
            sta (L0082),Y
L85DC:      rts
L85DD:      lda #$07
L85DF:      cmp L0A89
            beq L85EC
            clc
            adc #$08
            cmp #$77
            bne L85DF
            rts
L85EC:      lda L00F6
            clc
            adc #$5F
            sta L0082
            lda L00F7
            adc #$01
            sta L0083
            ldy #$00
            lda (L0082),Y
            and #$03
            bne L8611
            ldy #$01
            lda (L0082),Y
            and #$3F
            sta (L0082),Y
            ldy #$20
            lda (L0082),Y
            and #$FC
            sta (L0082),Y
L8611:      rts
            sei
            ldx #$00
            stx NMIEN
            stx DMACLT
            stx GRACTL
            stx IRQEN
            stx POKMSK
            dex
            txs
            lda #$53
            sta VVBLKD
            lda #$82
            sta VVBLKD+1
            lda #$08
            sta PMBASE
            lda #$C0
            sta NMIEN
            sta IRQEN
            sta POKMSK
            cli
            lda #$3F
            sta LOMEM+1
            lda #$00
            sta LOMEM
            lda #$00
            ldx #$01
            ldy #$00
L864D:      sta (LOMEM),Y
            dey
            bne L864D
            inc LOMEM+1
            dex
            bne L864D
            lda #$11
            sta GPRIOR
            sta ATRACT
            sta L3FFC
L8661:      lda #$01
            sta L3FF9
L8666:      jsr L889E
            lda #$00
            ldx #$80
L866D:      sta COUNTR+1,X
            dex
            bne L866D
            lda #$00
            ldx #$80
L8676:      sta L047F,X
            dex
            bne L8676
            lda #$05
            sta LOMEM+1
            lda #$00
            sta LOMEM
            lda #$00
            ldx #$3A
            ldy #$00
L868A:      sta (LOMEM),Y
            dey
            bne L868A
            inc LOMEM+1
            dex
            bne L868A
            lda #$00
            ldx #$F0
L8698:      sta L3EFF,X
            dex
            bne L8698
            lda #$20
            sta L00F1
            inc L00D7
            lda PAL
            and #$0E
            cmp #$0E
            beq L86B1
            lda #$01
            sta L00D6
L86B1:      jsr L987E
            jsr L8E97
            lda #$1C
            sta LOMEM
            lda #$BA
            sta LOMEM+1
            lda #$90
            sta L0082
            lda #$09
            sta L0083
            jsr L9B0D
            jsr LA72A
            lda #$05
            sta L00A3
            lda #$38
            sta L06D1
            lda #$68
            sta L06D2
            lda #$8C
            sta L06D3
            ldx #$09
L86E2:      txa
            sta L063E,X
            dex
            bpl L86E2
            ldx #$04
L86EB:      lda LB667,X
            sta L05FF,X
            dex
            bne L86EB
            jsr LB68C
            dec L0A40
            lda #$01
            sta L0679
            sta L0A4F
            sta L3F07
            sta L3F30
            lda #$60
            sta L0A47
            lda L3FFA
            beq L8736
            lda RANDOM
            and #$03
            jmp L8746
L871A:      and #$7F
            sta L3FFE
            pla
            sta L3F31
            pla
            sta L3F32
            pla
            sta L3F08
            pla
            sta L3F09
            pla
            sta L0A3C
            jmp L8759
L8736:      lda L3FFE
            bmi L871A
            cmp #$12
            bne L8746
            lda #$01
            sta L0A3C
            bne L8759
L8746:      sta L3F09
            sta L3F32
            cmp #$0F
            bmi L8753
            sec
            sbc #$04
L8753:      sta L3F08
            sta L3F31
L8759:      lda L3FFD
            sta L0A4D
            sta L0A4B
            lda #$03
            sta L3F03
            sta L3F2C
            lda #$E0
            sta CHBAS
            lda #$02
            sta SSKCTL
            lda #$03
            sta GRACTL
            lda #$0E
            ldx #$C7
L877D:      sta L0500,X
            dex
            bne L877D
            lda #$70
            sta L0500
            sta L0501
            sta L0502
            lda #$4E
            sta L0505
            sta L0585
            lda #$10
            sta L0507
            lda #$20
            sta L0587
            stx L0586
            stx L05C8
            stx L0503
            stx L0504
            lda #$40
            sta L0506
            lda #$80
            sta L05C6
            lda #$41
            sta L05C7
            lda #$05
            sta L05C9
            lda #$8E
            sta L0514
            sta L0524
            lda #$8C
            sta L05DB
            lda #$58
            sta L05D1
            jsr LB881
            jsr L9C3E
            jsr L8805
            lda #$03
            sta L0665
            jsr LA5DB
            lda L3FFA
            bne L87EE
            dec L3F03
            jmp L8802
L87EE:      ldx #$02
L87F0:      lda L3FF0,X
            sta L3F00,X
            lda L3FF3,X
            sta L3F29,X
            dex
            bpl L87F0
            jsr LB800
L8802:      jmp L8000
L8805:      lda #$00
            sta L00F4
            lda #$FF
            ldx #$40
L880D:      sta L141F,X
            dex
            bne L880D
            lda #$11
            sta LOMEM+1
            lda #$80
            sta LOMEM
            lda #$FF
            ldx #$04
            ldy #$00
L8821:      sta (LOMEM),Y
            dey
            bne L8821
            inc LOMEM+1
            dex
            bne L8821
            lda #$33
            ldx #$20
L882F:      sta L13FF,X
            dex
            bne L882F
            lda L0A65
            bne L8861
            lda L3F07
            beq L8861
            lda #$10
            sta LOMEM+1
            lda #$00
            sta LOMEM
            lda #$FF
            ldx #$01
            ldy #$00
L884D:      sta (LOMEM),Y
            dey
            bne L884D
            inc LOMEM+1
            dex
            bne L884D
            lda #$FF
            ldx #$80
L885B:      sta L10FF,X
            dex
            bne L885B
L8861:      ldx #$F0
L8863:      ldy #$00
            dex
            txa
            sta L0089
            and #$0F
            cmp #$0F
            beq L8875
            iny
            cmp #$00
            beq L8875
            iny
L8875:      lda L888C,Y
            sta L00E0
            lda L888F,Y
            sta L00E1
            jsr L88E2
            jsr L88AA
            cpx #$20
            bne L8863
            jmp L8931
L888C:      ldy LA4BC,X
L888F:      .byte $BB,$BB,$BB
L8892:      lda #$3D
            sta SDMCTL
            lda RTCLOK+2
L8899:      cmp RTCLOK+2
            beq L8899
L889D:      rts
L889E:      lda #$00
            sta SDMCTL
            lda RTCLOK+2
L88A5:      cmp RTCLOK+2
            beq L88A5
            rts
L88AA:      tya
            pha
            txa
            pha
            ldy #$00
            ldx #$0C
L88B2:      lda (L00E0),Y
            sta (L008A),Y
            iny
            lda (L00E0),Y
            sta (L008A),Y
            lda L008A
            clc
            adc #$1E
            sta L008A
            lda L008B
            adc #$00
            sta L008B
            iny
            dex
            bne L88B2
            pla
            tax
            pla
            tay
            rts
L88D1:      clc
            lda LOMEM
            adc LOMEM,X
            sta LOMEM,Y
            lda LOMEM+1
            adc LOMEM+1,X
            sta LOMEM+1,Y
            clc
            rts
L88E2:      tya
            pha
            txa
            pha
            lda L0089
            tax
            and #$0F
            asl
            cpx #$20
            bcc L88F2
            adc #$5F
L88F2:      sta L008A
            lda #$11
            adc #$00
            sta L008B
            txa
            and #$F0
            sta LOMEM
            lda #$00
            sta LOMEM+1
            ldy #$04
L8905:      asl LOMEM
            rol LOMEM+1
            dey
            bne L8905
            txa
            and #$F0
            sta L0086
            lda #$00
            sta L0087
            ldy #$03
L8917:      asl L0086
            rol L0087
            dey
            bne L8917
            ldx #$06
            ldy #$00
            jsr L88D1
            ldx #$0A
            ldy #$0A
            jsr L88D1
            pla
            tax
            pla
            tay
            rts
L8931:      jsr L895A
            jsr L8BE7
            ldx L3F09
            lda L8DD3,X
            cpx #$0F
            bcc L8951
            lda RANDOM
            and #$1F
            sta LOMEM
            lda RANDOM
            and #$1F
            adc LOMEM
            adc #$0F
L8951:      sta L3F16
            lda #$00
            sta L3F15
            rts
L895A:      ldx #$0B
            lda #$8F
            jsr L9584
            ldx #$0C
            lda #$90
            jsr L9584
            ldx L3FFD
            beq L8974
            ldx #$00
            lda #$9D
            jsr L9584
L8974:      ldx #$00
            lda #$88
            jsr L9584
            lda #$00
            sta L3F14
            lda L3F09
            pha
            cmp #$0F
            bcc L898F
L8988:      sec
            sbc #$04
            cmp #$0F
            bcs L8988
L898F:      sta L3F08
            cmp #$00
            beq L899B
            sta L3F09
            bne L89ED
L899B:      sta L008D
            tay
            tax
            lda #$06
            sta L008C
            jsr L8DF1
            ldy #$04
            lda #$00
            sta L008D
            lda #$0A
            sta L008C
            jsr L8DF1
            ldy #$08
            sty L008D
            lda #$0F
            sta L008C
            jsr L8DF1
            ldy #$0A
            sty L008D
            lda #$15
            sta L008C
            jsr L8DF1
            jmp L8A5B
L89CC:      .byte $86,$88,$B3,$B6,$3A,$3D,$32,$72
            .byte $AA,$EA,$87,$B4,$B5,$3B,$3C,$42
            .byte $52,$62,$BA,$CA,$DA,$74
L89E2:      .byte $BB
L89E3:      .byte $8C
L89E4:      .byte $BB,$EC,$BB,$04,$BC,$5C,$BB,$D4
            .byte $BB
L89ED:      lda #$00
            sta L008D
            lda L3F09
            sec
            sbc #$01
            asl
            asl
            clc
            adc L3F09
            sec
            sbc #$01
            sta L008C
            ldx #$00
            lda L008D
            jsr L8E2B
            lda #$00
            sta L1D6F
            sta L140E
            sta L144F
            sta L008D
            lda L3F09
            sec
            sbc #$01
            asl
            clc
            adc L3F09
            clc
            adc #$4A
            sta L008C
            ldx #$09
            lda L008D
            jsr L8E2B
            ldx #$77
L8A2F:      stx L0089
            lda #$D4
            sta L00E0
            lda #$BB
            sta L00E1
            jsr L88E2
            jsr L88AA
            txa
            sec
            sbc #$10
            tax
            cmp #$17
            bne L8A2F
            lda #$C0
            sta L1D6E
            sta L142E
            sta L144E
            lda #$03
            sta L140F
            sta L142F
L8A5B:      lda #$5C
            sta L00E0
            lda #$B9
            sta L00E1
            ldx #$FF
            lda #$00
            sta L008D
            lda L3F09
            asl
            asl
            clc
            adc L3F09
            sta L008C
            lda L008D
L8A76:      clc
            adc L008C
            tay
            inx
            lda L8B97,Y
            cmp #$FF
            beq L8A84
            lda #$00
L8A84:      sta L3F17,X
            lda L8B97,Y
            and #$0F
            asl
            asl
            asl
            clc
            sta L3F1C,X
            lda L8B97,Y
            and #$F0
            sec
            sbc #$20
            lsr
            sta LOMEM
            lsr
            clc
            adc LOMEM
            clc
            adc #$13
            sta L3F21,X
            lda L8B97,Y
            cmp #$FF
            beq L8AB7
            sta L0089
            jsr L88E2
            jsr L88AA
L8AB7:      inc L008D
            lda L008D
            cmp #$05
            bne L8A76
            pla
            sta L3F09
            lda #$FF
            ldx #$80
L8AC7:      sta L11FF,X
            dex
            bne L8AC7
            lda #$FF
            ldx #$00
L8AD1:      sta L12FF,X
            dex
            bne L8AD1
            lda #$1F
            sta L0084
            lda L3F09
            clc
            adc #$01
            sta L0085
L8AE3:      cmp #$0A
            bcc L8AFE
            lda #$44
            sta L00E0
            lda #$BB
            sta L00E1
            jsr L8B14
            dec L0084
            lda L0085
            sec
            sbc #$0A
            sta L0085
            jmp L8AE3
L8AFE:      cmp #$00
            beq L8B13
            lda #$2C
            sta L00E0
            lda #$BB
            sta L00E1
L8B0A:      jsr L8B14
            dec L0084
            dec L0085
            bne L8B0A
L8B13:      rts
L8B14:      lda L0084
            sta L0089
            jsr L88E2
            jsr L88AA
            rts
L8B1F:      .byte $87,$A8,$CC,$4C,$73,$3C,$63,$87
            .byte $DA,$FF,$45,$87,$B5,$D9,$FF,$43
            .byte $87,$A4,$BC,$FF,$45,$87,$9B,$A3
            .byte $C7,$4B,$87,$A4,$CA,$FF,$43,$5B
            .byte $87,$BB,$D6,$87,$6A,$A7,$C3,$CC
            .byte $87,$59,$B5,$CB,$FF,$55,$73,$87
            .byte $FF,$FF,$54,$87,$69,$BB,$C6,$4B
            .byte $B7,$87,$DC,$FF,$49,$87,$9B,$B5
            .byte $FF,$3C,$87,$7B,$83,$FF,$54,$69
            .byte $87,$BB,$C6,$B2,$FF,$FF,$58,$B6
            .byte $FF,$38,$9C,$FF,$56,$4A,$8B,$73
            .byte $FF,$FF,$46,$FF,$FF,$56,$A3,$FF
            .byte $55,$7D,$FF,$4C,$74,$8A,$6A,$8D
            .byte $B3,$6D,$FF,$FF,$8C,$74,$FF,$54
            .byte $6D,$FF,$56,$B6,$B8,$6D,$FF,$FF
L8B97:      .byte $45,$C4,$AB,$FF,$FF,$33,$49,$9D
            .byte $C5,$FF,$33,$7C,$A4,$CD,$FF,$3B
            .byte $6C,$CD,$53,$94,$39,$4D,$73,$B6
            .byte $CB,$38,$7B,$A7,$C3,$FF,$39,$62
            .byte $7D,$BC,$FF,$64,$7D,$A6,$C8,$FF
            .byte $38,$4C,$82,$8A,$C6,$44,$82,$9C
            .byte $C8,$FF,$43,$4B,$B6,$CC,$FF,$49
            .byte $8B,$92,$DA,$FF,$39,$42,$B3,$CA
            .byte $FF,$42,$5B,$93,$C9,$FF,$49,$62
            .byte $AA,$C4,$FF,$49,$8B,$92,$DA,$FF
L8BE7:      lda L3F09
            lsr
            lsr
L8BEC:      sec
            sbc #$03
            bcs L8BEC
            adc #$03
            asl
            asl
            tax
            lda L0480,X
            ldy #$00
L8BFB:      sta L3E40,Y
            iny
            cpy #$33
            bne L8BFB
            lda L0481,X
L8C06:      sta L3E40,Y
            iny
            cpy #$4B
            bne L8C06
            lda L0482,X
L8C11:      sta L3E40,Y
            iny
            cpy #$5D
            bne L8C11
            lda L0483,X
L8C1C:      sta L3E40,Y
            iny
            cpy #$73
            bne L8C1C
            rts
L8C25:      lda #$0B
            sta LOMEM+1
            lda #$00
            sta LOMEM
            lda #$00
            ldx #$05
            ldy #$00
L8C33:      sta (LOMEM),Y
            dey
            bne L8C33
            inc LOMEM+1
            dex
            bne L8C33
            lda L3F28
            bpl L8C45
            jsr L9CAC
L8C45:      jsr LB5C6
            jsr L8BE7
            lda #$7F
            sta L0A44
            ldx #$FF
            stx L3F28
            ldy #$00
            ldx #$0A
L8C59:      jmp L7FDC
            sta LOMEM
            lda L05D5,X
            sta LOMEM+1
            lda L0FEF,X
            sta (LOMEM),Y
            dex
            bne L8C59
            txa
L8C6C:      ldx L3F14
            cpx #$02
            bne L8C76
            inc L3F14
L8C76:      ldx #$07
L8C78:      sta L0670,X
            sta L0694,X
            sta L06A6,X
            sta L0090,X
            sta L0684,X
            sta L3FE0,X
            dex
            bpl L8C78
            ldx L3F09
            cpx #$0F
            bpl L8C9C
            lda L8DE2,X
            sta L0A2B
            jmp L8CAD
L8C9C:      lda RANDOM
            and #$07
            sta LOMEM
            lda RANDOM
            and #$07
            adc LOMEM
            sta L0A2B
L8CAD:      lda L3F08
            asl
            asl
            asl
            tay
            ldx #$00
L8CB6:      lda L3F0A,X
            bne L8CCE
            jsr L8D1E
            lda #$08
            sta L0666,X
            lda #$05
            sta L0A8A,X
            lda L04A0
            sta L0A94,X
L8CCE:      inx
            iny
            lda L3F0A,X
            bne L8CE8
            jsr L8D1E
            lda #$04
            sta L0666,X
            lda #$02
            sta L0A8A,X
            lda L049F
            sta L0A94,X
L8CE8:      iny
            inx
            cpx #$08
            bne L8CB6
            ldx #$00
            stx L3F90
            stx L3F91
            stx L3F92
            ldy #$07
L8CFB:      lda L0090,Y
            beq L8D17
            sta L008B
            lda L0A80,Y
            sta L008A
L8D07:      jsr L95A5
            bcc L8D13
            inx
            txa
            and #$03
            tax
            bcs L8D07
L8D13:      txa
            sta L065C,Y
L8D17:      dey
            bpl L8CFB
            jsr LA5DB
            rts
L8D1E:      lda L8D5B,Y
            beq L8D39
            inc L3F28
            sec
            sbc #$20
            and #$F0
            sta LOMEM
            lsr
            lsr
            sta LOMEM+1
            lda LOMEM
            sec
            sbc LOMEM+1
            clc
            adc #$13
L8D39:      sta L0090,X
            lda L8D5B,Y
            and #$0F
            asl
            asl
            asl
            sta L0A80,X
L8D46:      rts
            .byte $FF,$2F,$98,$38,$2A,$F4,$DA,$39
            .byte $37,$ED,$00,$0A,$00,$0A,$0A,$0F
            .byte $00,$0A,$0A,$00
L8D5B:      .byte $B4,$3B,$00,$52,$00,$CA,$00,$00
            .byte $CC,$73
L8D65:      .byte $4C,$A8,$00,$B2,$00,$00,$3C,$63
            .byte $DA,$B6,$00,$58,$00,$00,$B5,$45
            .byte $9C,$D9,$00,$38,$00,$00,$A4,$43
            .byte $BC,$56,$8B,$4A,$00,$00,$A3,$46
            .byte $C7,$45,$9B,$00,$73,$00,$A5,$A4
            .byte $CA,$4C,$4B,$46,$00,$56,$43,$5B
            .byte $BB,$D6,$A3,$66,$00,$56,$C4,$6B
            .byte $C3,$6A,$A7,$55,$CC,$7D,$B5,$CB
            .byte $5A,$59,$74,$4C,$8A,$5C
L8DAB:      .byte $56,$74,$B3,$73,$6A,$55,$8D,$7A
            .byte $55,$54,$C6,$69,$BC,$6A,$BB,$6D
            .byte $B8,$4C,$B7,$4B,$DD,$74,$DC,$8C
            .byte $B6,$4A,$B5,$49,$9B,$64,$54,$6D
            .byte $84,$7B,$83,$3C,$B6,$66,$B8,$56
L8DD3:      .byte $FB,$FB,$FB,$4F
            txs
            ror L6048
            bvc L8D65
            rts
            bvc L8E58
            pha
            sec
L8DE2:      clc
            .byte $14,$14,$14,$13,$13,$13,$12,$12
            .byte $12
            ora (BRKKEY),Y
            bpl L8E00
            bpl L8DAB
            sbc (L0089,X)
            sta L00E0
            lda L89E2,Y
            sta L00E1
            lda L89CC,X
            sta L0089
L8E00:      jsr L88E2
            jsr L88AA
            inx
            lda L008D
            beq L8E10
            cpx L008C
            bne L8DF1
            rts
L8E10:      lda L89E3,Y
            sta L00E0
            lda L89E4,Y
            sta L00E1
            lda L89CC,X
            sta L0089
            jsr L88E2
            jsr L88AA
            inx
            cpx L008C
            bne L8DF1
            rts
L8E2B:      clc
            adc L008C
            tay
            lda L8B1F,Y
            cmp #$FF
            beq L8E78
            sta L0089
            lda L8E85,X
            sta L00E0
            lda L8E86,X
            sta L00E1
            jsr L88E2
            jsr L88AA
            lda L0089
            sec
            sbc L8E87,X
            sta L0089
            lda L8E88,X
            sta L00E0
            lda L8E89,X
L8E58:      sta L00E1
            jsr L88E2
            jsr L88AA
            lda L0089
            clc
            adc L8E8A,X
            sta L0089
            lda L8E8B,X
            sta L00E0
            lda L8E8C,X
            sta L00E1
            jsr L88E2
            jsr L88AA
L8E78:      lda L008D
            clc
            adc #$01
            sta L008D
            cmp L8E8D,X
            bne L8E2B
            rts
L8E85:      .byte $5C
L8E86:      .byte $BB
L8E87:      .byte $01
L8E88:      .byte $74
L8E89:      .byte $BB
L8E8A:      .byte $02
L8E8B:      .byte $8C
L8E8C:      .byte $BB
L8E8D:      .byte $05,$D4,$BB,$10,$EC,$BB,$20,$04
            .byte $BC,$03
L8E97:      ldy L00D6
            ldx L8EA9,Y
            ldy #$27
L8E9E:      lda L8EAB,X
            sta L0480,Y
            dex
            dey
            bpl L8E9E
            rts
L8EA9:      .byte $27,$4F
L8EAB:      plp
            rol LTEMP
            .byte $34
            ora #$F8
            rol
            rol BOOT,X
            dex
            ldx L00A4,Y
            sec
            asl LD80A
            cld
            .byte $54,$54
            cld
            cld
            .byte $44,$44
            asl L460E
            lsr COUNTR
            ror L282C,X
            sec
            cld
            stx L8E0A
            lsr
            pha
            eor ICBALZ
            sbc L26F6,Y
            bit WARMST
            .byte $FA,$FC
            plp
            php
            cmp #$C7
            ror L00F8
            .byte $6F
            ora #$B5
            lda CRITIC,X
            .byte $42
            lda L00B5,X
            .byte $22,$22
            asl L360E
            rol L008E,X
            stx LF42C
            plp
            ldx L008E,Y
            asl L368E
            .byte $34,$34,$F4
L8EFB:      lda L00D6
            beq L8F08
            lda L00D7
            cmp #$02
            bne L8F08
            jsr L8F08
L8F08:      ldx L0A37
            beq L8F0E
            rts
L8F0E:      stx L008F
            lda L3F17,X
            beq L8F24
            bpl L8F21
L8F17:      inx
            cpx #$05
            bne L8F0E
            lda #$00
            sta L00F4
            rts
L8F21:      jmp L8FB2
L8F24:      lda L00F4
            bne L8F17
            lda L3F1C,X
            sta L0084
            lda L3F21,X
            clc
            adc #$0E
            sta L0086
            jsr L81EB
            ldy #$00
            lda (L0082),Y
            and #$03
            bne L8F87
            iny
            lda (L0082),Y
            and #$C0
            bne L8F87
            ldy L00F9
            lda L0A6E
            bne L8F54
            sty L0A63
            inc L0A6E
L8F54:      tya
            beq L8F7A
            cmp L0A63
            bne L8F8A
            cmp #$01
            beq L8F7A
L8F60:      cmp #$02
            bne L8F6E
            lda L3F1C,X
            cmp L0A89
            bcc L8F8A
            bcs L8F87
L8F6E:      cmp #$04
            bne L8F8A
            lda L0A89
            cmp L3F1C,X
            bcc L8F8A
L8F7A:      ldy L0A89
            cpy #$38
            bne L8F87
            ldy L0099
            cpy #$5B
            beq L8F60
L8F87:      jmp L9152
L8F8A:      inc L3F17,X
            jsr LB580
            lda #$00
            sta L0A5D
            sta L00DB
            lda L3F1C,X
            sta L00F4
            sta L0084
            lda L3F21,X
            sta L00F5
            sta L0086
            inc L0086
            jsr L81EB
            lda L0082
            sta L00E2
            lda L0083
            sta L00E3
L8FB2:      ldy L3F17,X
            lda L9369,Y
            sta LOMEM
            lda L9373,Y
            sta LOMEM+1
            jmp (LOMEM)
            ldx #$00
            lda #$10
            sta LOMEM
L8FC8:      ldy #$00
L8FCA:      lda LB946,X
            sta (L00E2),Y
            inx
L8FD0:      iny
            lda LB946,X
            sta (L00E2),Y
            tya
            clc
            adc #$1F
            tay
            inx
            cpx LOMEM
            bcc L8FCA
            bne L8FE6
            inc L00E3
            bne L8FCA
L8FE6:      dec L00E3
            ldx L008F
            lda #$0D
L8FEC:      sta LOMEM
            ldy L0A5D
            iny
            cpy LOMEM
            bne L8FFB
            inc L3F17,X
            ldy #$00
L8FFB:      sty L0A5D
            rts
L8FFF:      ldx #$18
            lda #$28
            sta LOMEM
            jmp L8FC8
            lda #$18
            sta L0A60
            lda #$00
            sta L0A61
            beq L8FFF
            jsr L92D0
            inc L0A61
            inc L0A61
            ldy L0A60
            dey
            dey
            sty L0A60
            cpy #$02
            bne L9035
            ldx #$03
            lda #$0B
            jsr L9778
            ldx L008F
            jmp L9152
L9035:      jsr L9302
L9038:      txa
            sta LOMEM
            clc
            adc L0A61
            tax
            lda LBBA4,X
            ldx LOMEM
            and LB98C,X
            ora LB9A4,X
            sta (L00E2),Y
            inx
            iny
            txa
            sta LOMEM
            clc
            adc L0A61
            tax
            lda LBBA4,X
            ldx LOMEM
            and LB98C,X
            ora LB9A4,X
            sta (L00E2),Y
            tya
            clc
            adc #$1F
            tay
            inx
            cpx L0A60
            beq L9075
            cpx #$10
            bne L9038
            beq L907F
L9075:      cpx #$10
            bcc L90BC
            inc L00E3
            ldy #$00
            beq L90C7
L907F:      ldy #$00
            inc L00E3
L9083:      lda LBBA4,X
            and LB98C,X
            ora LB9A4,X
            sta (L00E2),Y
            inx
            iny
            lda LBBA4,X
            and LB98C,X
            ora LB9A4,X
            sta (L00E2),Y
            tya
            clc
            adc #$1F
            tay
            inx
            cpx #$14
            beq L9109
            cpx L0A60
            bne L9083
            beq L90C7
            lda L3F21,X
            cmp #$A3
            bne L90B6
            jmp L9152
L90B6:      jsr L92D0
            jsr L9302
L90BC:      lda #$10
            sta LOMEM
            jsr L9349
            ldy #$00
            inc L00E3
L90C7:      lda (L00E2),Y
            and LB974,X
            ora LB9A4,X
            sta LOMEM
            txa
            sta LOMEM+1
            clc
            adc L0A5E
            tax
            lda LOMEM
            and L92B6,X
            sta (L00E2),Y
            ldx LOMEM+1
            inx
            iny
            lda (L00E2),Y
            and LB974,X
            ora LB9A4,X
            sta LOMEM
            txa
            sta LOMEM+1
            clc
            adc L0A5E
            tax
            lda LOMEM
            and L92B6,X
            sta (L00E2),Y
            tya
            clc
            adc #$1F
            tay
            ldx LOMEM+1
            inx
            cpx #$14
            bne L90C7
L9109:      dec L00E3
            lda L00E2
            clc
            adc #$20
            sta L00E2
            bcc L9116
            inc L00E3
L9116:      ldx L008F
            jmp L9429
            lda L0A5D
            bne L9129
            ldx #$03
            lda #$1B
            jsr L9778
            ldx L008F
L9129:      lda L00E2
            sta L0A66
            lda L00E3
            sta L0A67
            ldx #$00
            ldy #$00
            lda #$10
            sta LOMEM
            jsr L9349
            ldy #$00
            lda #$14
            sta LOMEM
            inc L00E3
            jsr L9349
            dec L00E3
            ldx L008F
            lda #$06
            jmp L8FEC
L9152:      lda L3F17,X
            bne L915A
            jmp L8F17
L915A:      inc L3F17,X
            jmp L8FB2
            lda #$08
            sta L00DB
            ldx #$00
            ldy #$00
L9168:      lda (L00E2),Y
            and #$C0
            ora LB9D4,X
            sta (L00E2),Y
            inx
            iny
            lda (L00E2),Y
            and #$03
            ora LB9D4,X
            sta (L00E2),Y
            tya
            clc
            adc #$1F
            tay
            inx
            cpx #$10
            bcc L9168
            bne L918C
            inc L00E3
            bne L9168
L918C:      cpx #$14
            bne L9168
            dec L00E3
            ldx L008F
            lda #$0C
            jmp L8FEC
            ldx #$00
            ldy #$00
L919D:      lda (L00E2),Y
            and LB9EC,X
            ora LBA04,X
            sta (L00E2),Y
            inx
            iny
            lda (L00E2),Y
            and LB9EC,X
            ora LBA04,X
            sta (L00E2),Y
            tya
            clc
            adc #$1F
            tay
            inx
            cpx #$10
            bcc L919D
            bne L91C3
            inc L00E3
            bne L919D
L91C3:      cpx #$14
            bne L919D
            dec L00E3
            ldx L008F
            lda #$08
            jmp L8FEC
            ldx #$00
            stx L00DB
            stx L00F4
            stx L0A6E
            inc L3F14
            ldy #$00
L91DE:      lda (L00E2),Y
            and #$C0
            sta (L00E2),Y
            inx
            iny
            lda (L00E2),Y
            and #$03
            sta (L00E2),Y
            tya
            clc
            adc #$1F
            tay
            inx
            cpx #$10
            bcc L91DE
            bne L91FC
            inc L00E3
            bne L91DE
L91FC:      cpx #$14
            bne L91DE
            dec L00E3
            ldx L008F
            lda #$FF
            sta L3F17,X
            lda L0A50
            bne L9212
            lda L00FE
            beq L9217
L9212:      lda L0A4E
            beq L9218
L9217:      rts
L9218:      lda #$FF
            sta LOMEM
            ldx #$07
L921E:      lda L3FE0,X
            beq L923E
            inc LOMEM
            stx L0A31
            lda L0090,X
            sta LOMEM+1
            lda #$00
            sta L0090,X
            sta L3FE0,X
            sta L0694,X
            lda #$01
            sta L3F0A,X
            dec L3F28
L923E:      dex
            bpl L921E
            ldy LOMEM
            bmi L926E
            ldx L0A31
            lda LB90F,Y
            sta L0A8A,X
            lda L04A3
            sta L0A94,X
            lda LOMEM+1
            cmp #$A3
            bcc L925C
            lda #$A1
L925C:      sta L0090,X
            lda #$02
            sta L3FE0,X
            lda #$40
            sta L0A30
            ldx LB917,Y
            jsr L96E2
L926E:      lda L0A50
            beq L9287
            lda LOMEM
            bmi L9284
            lda #$01
            sta L0A93
            lda #$A3
            cmp L0099
            bcs L9284
            sta L0099
L9284:      jmp L9294
L9287:      lda #$00
            sta L00FE
            lda L3F28
            bpl L9293
            jmp LB49E
L9293:      rts
L9294:      lda #$00
            sta L3FE9
            sta L00FE
            ldy #$02
            sta (L00DE),Y
            ldy #$04
            sta (L00DE),Y
L92A3:      lda #$01
            sta L0679
            jsr LB4C8
            jsr L9B4F
            lda #$00
            sta L0679
            jmp L8008
L92B6:      .byte $FF,$FF,$FF,$FC,$FF,$FF,$3F,$FF
            .byte $FF,$FF,$FF,$FC,$FF,$FF,$3F,$FF
            .byte $FF,$FF,$FF,$FC,$FF,$FF,$3F,$FF
            .byte $FF,$FF
L92D0:      lda L00E2
            clc
            adc #$20
            sta LOMEM
            lda L00E3
            adc #$01
            sta LOMEM+1
            ldy #$00
L92DF:      lda (LOMEM),Y
            and #$0F
            beq L92F9
            iny
            lda (LOMEM),Y
            and #$F0
            beq L92F9
            dey
            tya
            clc
            adc #$20
            tay
            cmp #$A0
            bne L92DF
            jmp L9152
L92F9:      inc L3F21,X
            lda L3F21,X
            sta L00F5
            rts
L9302:      lda #$00
            sta L0A5E
            sta L0A5F
            lda L00E2
L930C:      sta L0082
            and #$60
            beq L9330
            cmp #$40
            beq L9322
            inc L0A5F
            lda L0082
            clc
            adc #$20
            and #$60
            beq L9330
L9322:      lda L0A5F
            beq L932A
            dec L0A5E
L932A:      inc L0A5E
            jmp L9341
L9330:      lda L0A5F
            beq L9338
            dec L0A5E
L9338:      lda L0A5E
            clc
            adc #$03
            sta L0A5E
L9341:      asl L0A5E
            ldx #$00
            ldy #$00
            rts
L9349:      lda (L00E2),Y
            and LB974,X
            ora LB9A4,X
            sta (L00E2),Y
            inx
            iny
            lda (L00E2),Y
            and LB974,X
            ora LB9A4,X
            sta (L00E2),Y
            tya
            clc
            adc #$1F
            tay
            inx
            cpx LOMEM
            bne L9349
L9369:      rts
            .byte $C2,$FF,$C2
            php
            .byte $14
            ldy L601B
            sta L8FD0,Y
            .byte $8F,$8F
            bcc L9309
            bcc L930C
            sta (L0091),Y
            sta (L008A),Y
            pha
            tya
            pha
            ldy #$00
            lda #$0C
            sta L008E
L9388:      ldx #$01
L938A:      lda (L0082),Y
            and (L0084),Y
            ora (L0086),Y
            sta (L0082),Y
            iny
            dex
            bpl L938A
            lda L0082
            clc
            adc #$1E
            sta L0082
            bcc L93A1
            inc L0083
L93A1:      dec L008E
            bne L9388
            pla
            tax
            pla
            tay
            rts
L93AA:      tya
            pha
            ldy #$00
            lda #$0C
            sta L008E
L93B2:      lda (L0082),Y
            sta (L0086),Y
            iny
            lda (L0082),Y
            sta (L0086),Y
            lda L0082
            clc
            adc #$1E
            sta L0082
            bcc L93C6
            inc L0083
L93C6:      iny
            dec L008E
            bne L93B2
            pla
            tay
            rts
            lda L3F1C,X
            sta L0084
            lda L3F21,X
            sta L0086
            stx L008F
            jsr L81EB
            ldx L008F
            rts
            lda L00E2
            clc
            adc #$3F
            sta L0082
            lda L00E3
            adc #$01
            sta L0083
            ldy #$20
            lda (L0082),Y
            and #$C0
            bne L9408
            ldy #$01
            lda (L0082),Y
            and #$3F
            sta (L0082),Y
            ldy #$20
            lda (L0082),Y
            and #$FC
            sta (L0082),Y
            jmp L9418
L9408:      ldy #$03
            lda (L0082),Y
            and #$C0
            bne L9428
            ldy #$23
            lda (L0082),Y
            and #$30
            bne L9428
L9418:      ldy #$03
            lda (L0082),Y
            and #$3F
            sta (L0082),Y
            ldy #$22
            lda (L0082),Y
            and #$FC
            sta (L0082),Y
L9428:      rts
L9429:      tya
            pha
            txa
            pha
            lda L00F5
            clc
            adc #$05
            sta LOMEM
            clc
            adc #$07
            sta L0083
            lda L00FE
            beq L9440
            jmp L94DA
L9440:      lda L00F4
            sec
            sbc #$05
            sta LOMEM+1
            clc
            adc #$0A
            sta L0082
            ldx #$09
L944E:      cpx #$08
            bpl L9457
            lda L3F0A,X
            bne L9461
L9457:      lda L0090,X
            cmp LOMEM
            bcc L9461
            cmp L0083
            bcc L9469
L9461:      dex
            bpl L944E
            pla
            tax
            pla
            tay
            rts
L9469:      lda L0A80,X
            cmp LOMEM+1
            bcc L9461
            cmp L0082
            bcs L9461
            lda L065C,X
            bpl L9480
            lda L3FE0,X
            bne L9480
            dec L00FF
L9480:      lda #$01
            sta L3FE0,X
            sta L0670,X
            lda L00F4
            sta L0A80,X
            cpx #$09
            beq L94A4
            lda L0666,X
            lsr
            lsr
            lsr
            tay
            lda L94F8,Y
            sta L0A8A,X
            lda L049F,Y
            sta L0A94,X
L94A4:      lda L00FE
            bne L94B3
            txa
            pha
            ldx #$03
            lda #$09
            jsr L9778
            pla
            tax
L94B3:      lda L00FC
            beq L94BE
            cpx L00FD
            bne L94BE
            jsr LB580
L94BE:      lda #$01
            sta L00FE
            cpx #$09
            bne L9461
            lda #$01
            sta L0A50
            lda #$16
            sta L0A93
            lda #$00
            sta L00ED
            sta L00EF
            sta L00E7
            beq L9461
L94DA:      pla
            pha
            tax
            ldy L0083
            dey
            dey
            ldx #$09
L94E3:      lda L3FE0,X
            beq L94F2
            sty L0090,X
            cpy #$A9
            bcc L94F2
            lda #$A8
            sta L0090,X
L94F2:      dex
            bpl L94E3
            jmp L9440
L94F8:      plp
            and #$A2
            .byte $02
            lda #$00
            sta L0088
            sta L008C
            sta L008D
            lda L0A65
            bne L950D
            ldy #$02
            bne L950F
L950D:      ldy #$97
L950F:      lda L3F00,X
            sta L008E
            stx L008F
            lda L008D
            and #$01
            tax
            lda L9582,X
            and L008E
            sta L0082
            bne L952E
            lda L008C
            bne L9532
            lda #$0A
            sta L0082
            bne L9532
L952E:      lda #$01
            sta L008C
L9532:      lda L0082
            cmp #$10
            bcc L953C
            lsr
            lsr
            lsr
            lsr
L953C:      tax
            tya
            jsr L9584
            iny
            ldx L008F
            inc L008D
            lda L008D
            lsr
            bcs L950F
            dex
            bpl L950F
            ldx #$00
            lda L0A65
L9553:      bne L9559
            ldy #$0D
            bne L955B
L9559:      ldy #$91
L955B:      lda L3F03,X
            tax
            tya
            jsr L9584
            lda L3F07
            beq L9581
            lda L0A4B
            beq L9581
            lda L0A65
            clc
            adc L0088
            bne L9581
            inc L0088
            ldx #$29
            lda L0A65
            eor #$01
            jmp L9553
L9581:      rts
L9582:      beq L9593
L9584:      ora #$80
            sta LOMEM
            tya
            pha
            ldy #$00
            lda #$10
            sta LOMEM+1
            txa
            asl
            asl
L9593:      asl
            tax
L9595:      lda LBAC4,X
            sta (LOMEM),Y
            inx
            tya
            clc
            adc #$20
            tay
            bne L9595
            pla
            tay
            rts
L95A5:      tya
            pha
            txa
            pha
            ldy L008A
            sty L0084
            lda L008B
            sta L0086
            cmp #$10
            bcs L95E1
            cmp #$05
            bcs L95DD
            cpx #$00
            beq L95F2
            cpx #$02
            bne L95CD
            cpy #$08
            bcc L95F2
            cpy #$78
            bcs L95F2
            inc L008B
            bcc L95E1
L95CD:      cpx #$03
            bne L95D7
            cpy #$00
            beq L95F2
            bne L95F5
L95D7:      cpy #$78
            beq L95F2
            bne L95F5
L95DD:      cpx #$00
            beq L95F5
L95E1:      cmp #$A3
            bne L95E9
            cpx #$02
            beq L95F2
L95E9:      ldy #$00
            txa
            lsr
            bcs L95F8
            jmp L967B
L95F2:      jmp L9670
L95F5:      jmp L9673
L95F8:      lsr
            bcs L9601
            lda L008A
            adc #$07
            sta L0084
L9601:      lda L008B
            clc
            adc #$02
            sec
            sbc L3F91
            sta L0086
            jsr L81EB
            ldx L00F8
            lda L96DA,X
            and (L0082),Y
            beq L963D
            lda L0082
            clc
            adc L3F90
            sta L0082
            lda L0083
            adc L3F91
            sta L0083
            lda L96DA,X
            and (L0082),Y
            bne L9670
            lda L0082
            sec
            sbc L3F90
            sta L0082
            lda L0083
            sbc L3F91
            sta L0083
L963D:      lda L0082
            clc
            adc #$20
            sta L0082
            lda L0083
            adc #$00
            sta L0083
            lda L96DA,X
            and (L0082),Y
            beq L9656
            cmp L96DE,X
            bne L9670
L9656:      lda L0082
            clc
            adc L3F92
            sta L0082
            lda L0083
            adc #$00
            sta L0083
            lda L96DA,X
            and (L0082),Y
            beq L9673
            cmp L96DE,X
            beq L9673
L9670:      sec
            bcs L9674
L9673:      clc
L9674:      stx L00F8
            pla
            tax
            pla
            tay
            rts
L967B:      lsr
            bcc L9684
            lda L008B
            adc #$0A
            sta L0086
L9684:      lda L008A
            clc
            adc #$01
            sta L0084
            jsr L81EB
            ldx L00F8
            lda L96DA,X
            and (L0082),Y
            beq L96AE
            inx
            cpx #$04
            bne L969E
            ldx #$00
L969E:      inc L0082
            lda L96DA,X
            and (L0082),Y
            bne L9670
            dex
            bpl L96AC
            ldx #$03
L96AC:      dec L0082
L96AE:      inx
            cmp #$04
            bne L96B7
            ldx #$00
            inc L0082
L96B7:      lda L96DA,X
            and (L0082),Y
            beq L96C3
            cmp L96DE,X
            bne L9670
L96C3:      dex
            bpl L96CA
            ldx #$03
            dec L0082
L96CA:      inc L0082
            lda L96DA,X
            and (L0082),Y
            beq L9673
            cmp L96DE,X
            bne L9670
            beq L9673
L96DA:      cpy #$30
            .byte $0C,$03
L96DE:      .byte $80
            jsr VKEYBD
L96E2:      txa
            pha
            tya
            pha
            lda L3FFA
            bne L9749
            lda L974F,X
            sta LOMEM
            lda L975B,X
            sta LOMEM+1
            sed
            lda LOMEM
            clc
            adc L3F00
            sta L3F00
            lda LOMEM+1
            adc L3F01
            sta L3F01
            lda #$00
            adc L3F02
            sta L3F02
            lda LOMEM
            clc
            adc L3F05
            sta L3F05
            lda LOMEM+1
            adc L3F06
            sta L3F06
            cmp #$40
            bcc L9730
            inc L3F03
            lda L3F06
            sec
            sbc #$40
            sta L3F06
L9730:      lda L3F01
            cmp #$10
            bcc L9749
            lda L3F04
            bne L9749
            inc L3F03
            inc L3F04
            ldx #$03
            lda #$04
            jsr L9778
L9749:      pla
            tay
            pla
            tax
            cld
            rts
L974F:      .byte $01,$20,$30,$40,$50,$60,$80,$00
            .byte $00,$50,$00,$00
L975B:      .byte $00,$00,$00,$00,$00,$00,$00,$01
            .byte $02,$02,$03,$04,$05,$06,$07,$08
            .byte $10,$12,$15
L976E:      .byte $AD,$74,$3F,$0D,$75,$3F,$0D,$76
            .byte $3F,$60
L9778:      pha
            lda L3FFA
            beq L9780
            pla
            rts
L9780:      pla
            sta L3F74,X
            tay
            dey
            lda #$00
            sta AUDCTL
            lda L98D4,Y
            sta L3F7C,X
            lda L98F1,Y
            sta L3F84,X
L9797:      lda L98B7,Y
            sta L3F8C,X
            tay
L979E:      lda L3F74,X
            cmp #$0F
            bcs L97BA
            lda L9949,Y
            bpl L97AD
            inc L3F88,X
L97AD:      pha
            and #$1F
            tay
            lda L990E,Y
            sta L3F78,X
            jmp L97CC
L97BA:      lda L9A14,Y
            bpl L97C2
            inc L3F88,X
L97C2:      pha
            and #$1F
            tay
            lda L992A,Y
            sta L3F78,X
L97CC:      pla
L97CD:      lsr
            lsr
            lsr
            lsr
            lsr
            and #$03
            tay
            lda #$00
            clc
L97D8:      adc L3F84,X
            dey
            bpl L97D8
            sta L3F80,X
            rts
L97E2:      ldx #$03
            lda L00D7
            bne L97ED
            jsr L97ED
            ldx #$03
L97ED:      lda L3F74,X
            bne L97F5
            jmp L9877
L97F5:      txa
            asl
            tay
            lda L3F78,X
            sta AUDF1,Y
            php
            lda L3F7C,X
            plp
            bne L9807
            and #$F0
L9807:      sta AUDC1,Y
            dec L3F80,X
            bne L9877
            lda L3F88,X
            beq L9838
            lda #$00
            sta L3F78,X
            sta L3F88,X
            ldy L3F74,X
            cpy #$0F
            bcs L982C
            ldy L3F8C,X
            lda L9949,Y
            jmp L9832
L982C:      ldy L3F8C,X
            lda L9A14,Y
L9832:      jsr L97CD
            jmp L9877
L9838:      inc L3F8C,X
            ldy L3F74,X
            cpy #$0F
            bcs L984B
            ldy L3F8C,X
            lda L9949,Y
            jmp L9851
L984B:      ldy L3F8C,X
            lda L9A14,Y
L9851:      beq L9867
            cmp #$FF
            bne L9861
            ldy L3F74,X
            dey
            jsr L9797
            jmp L9877
L9861:      jsr L979E
            jmp L9877
L9867:      lda #$00
            sta L3F74,X
            txa
            asl
            tay
            lda #$00
            sta AUDF1,Y
            sta AUDC1,Y
L9877:      dex
            bmi L987D
            jmp L97ED
L987D:      rts
L987E:      lda #$00
            sta L3F77
            sta L3F8B
            sta AUDC4
L9889:      lda #$00
            sta L3F76
            sta L3F8A
            sta AUDC3
            lda #$00
            sta L3F75
            sta L3F89
            sta AUDC2
            lda #$00
            sta L0A6A
            sta L0A6C
            sta L0A6B
            sta L0A6D
            sta L3F74
            sta L3F88
            sta AUDC1
            rts
L98B7:      .byte $00,$26,$41,$51,$59,$68,$74,$7D
            .byte $8B,$98,$A2,$B5,$BB,$C1,$00,$24
            .byte $3F,$60,$75,$82,$91,$A0,$A6,$AC
            .byte $B5,$C6,$CD,$DB,$EC
L98D4:      .byte $A4,$A2,$A8,$A8,$A6,$A8,$A4,$A5
            .byte $A8,$A8,$A8,$A8,$A8,$A6,$A6,$A2
            .byte $A2,$A8,$A6,$A6,$A6,$A6,$A6,$A5
            .byte $A8,$A8,$A8,$A6,$A6
L98F1:      .byte $04,$04,$06,$02,$04,$06,$04,$04
            .byte $02,$01,$01,$02,$02,$03,$04,$04
            .byte $04,$01,$06,$04,$04,$04,$04,$06
            .byte $04,$04,$02,$04,$04
L990E:      .byte $00,$15,$1A,$1B,$1C,$1D,$1E,$1F
            .byte $21,$23,$25,$28,$2A,$2D,$2F,$32
            .byte $35,$39
L9920:      .byte $3C,$40,$44,$48,$5B,$60,$66,$B6
            .byte $BA,$C1
L992A:      .byte $00,$1A,$1D,$1E,$32,$35,$39,$3C
            .byte $40,$44,$48,$4C,$51,$53,$55,$57
            .byte $5B,$60,$66,$69,$6C,$6F,$72,$80
            .byte $88,$90,$99,$A2,$AD,$B6,$BA
L9949:      .byte $2E,$8D,$8D,$8D,$37,$96,$96,$96
            .byte $3B,$99,$99,$99,$20,$8D,$8D,$8D
            .byte $AD,$B0,$8D,$70,$8D,$8B,$90,$90
            .byte $70,$32,$B4,$B3,$B6,$93,$76,$73
            .byte $92,$92,$72,$32,$32,$00,$8D,$8D
            .byte $AD,$8D,$8D,$8D,$8D,$8D,$8D,$AD
            .byte $8D,$8D,$8D,$90,$AF,$AF,$8F,$90
            .byte $8F,$8D,$AF,$AF,$8F,$90,$8F,$8E
            .byte $FF,$10,$0F,$0E,$8D,$10,$8F,$12
            .byte $90,$14,$92,$15,$14,$94,$88,$74
            .byte $00,$94
L999B:      .byte $92,$90
L999D:      .byte $94,$B6,$AB,$6D,$00,$0F,$10,$11
            .byte $10,$11,$12,$11,$12,$13,$12,$13
            .byte $14,$33,$2B,$00,$0F,$0E,$0D,$2C
            .byte $0B,$2A,$49,$0D,$48,$88,$28,$00
            .byte $0E,$0F,$0E,$0F,$17,$18,$17,$18
            .byte $FF,$8D,$0D,$40,$90,$8F,$8D,$8B
            .byte $89,$88,$85,$82,$82,$E0,$00,$11
            .byte $10,$0F,$0E,$0D,$0C,$0B,$0A,$09
            .byte $08,$07,$24,$00,$13,$12,$11,$10
            .byte $0F,$28,$29,$27,$68,$00,$19,$1A
            .byte $19,$1A,$02,$03,$02,$05,$06,$05
            .byte $06,$03,$04,$03,$04,$02,$03,$22
            .byte $00,$2A,$29,$28,$27,$28,$00,$81
            .byte $81,$81,$81,$A1,$00
L9A0A:      .byte $12,$0D,$09,$12,$0D,$09,$12,$0D
            .byte $09,$00
L9A14:      cpx #$E0
            cpx #$20
            sta L999B,X
            tya
            sta L9D98,X
            tya
            sta L9D98,X
            tya
            sta L9D98,X
            tya
            sta L9D98,X
            txs
            sta L9D9D,X
            txs
            sta L9D9A,X
            sta L999D,Y
            sta L8500,X
            jsr L2085
            sta L00C0
            sta ICHIDZ
            sta ICHIDZ
            sta L00C0
            .byte $87
            jsr L2087
            .byte $87
            cpy #$87
            jsr L2087
            .byte $87
            jsr L2087
            .byte $FF
            tya
            jsr L2098
            sta L9920,Y
            jsr L209A
            txs
            jsr L209B
            .byte $9B
            jsr L209C
            .byte $9C
            jsr L209C
            .byte $9C
            jsr L209D
            sta L9B20,X
            jsr L2099
            .byte $FF
            stx L0095,Y
            sty L0093,X
            .byte $92
            bcc L9A0A
            sta L0B8C
            .byte $0C
            asl L1110
            .byte $12,$13
            ora BUFADR+1,X
            .byte $17
            clc
            .byte $00
            rti
            ora L1C20,X
            jsr L201B
            ora L3820,Y
            rti
            sei
            .byte $00
            php
            ora #$0A
            ora #$0A
            .byte $0B
            asl
            .byte $0B,$0C,$0B,$0C
            asl L242C
            .byte $00,$0C
            asl L1E10
            bpl L9ABC
            bpl L9ABE
            .byte $12
            ora (RTCLOK),Y
            .byte $14,$32
            plp
            .byte $00
            ora WARMST
            .byte $0B,$0C
            and $00
            .byte $0B
            bpl L9AD1
            .byte $17
L9ABE:      .byte $2B,$00
            eor #$4A
            .byte $4B
            jmp L8E0E
            bmi L9B00
            .byte $00
            tya
            ora L9D40,X
            tya
            ora L9D40,X
L9AD1:      tya
            ora L1D40,X
            rti
            sta L9D9D,X
            .byte $00
            ora #$08
            .byte $07
            asl RAMLO
            rol $00
            ora L1D1E,X
            asl L1E1D,X
            clc
            ora L1918,Y
            clc
            ora DSKFMS,Y
            bcc L9A85
            .byte $92
            sty L008E,X
            sty L0092,X
            sty L008C,X
            sty L0092,X
            sty ICHIDZ,X
            bcc L9A8E
            bcc L9B00
L9B00:      jsr L9898
            tya
            jsr L9898
            tya
            jsr L9898
            tya
            .byte $00
L9B0D:      ldy #$8F
L9B0F:      ldx #$00
            lda (LOMEM),Y
            sta L0084
            and #$03
            beq L9B1B
            ldx #$08
L9B1B:      lda L0084
            and #$0C
            beq L9B25
            inx
            inx
            inx
            inx
L9B25:      lda L0084
            and #$30
            beq L9B2D
            inx
            inx
L9B2D:      lda L0084
            and #$C0
            beq L9B34
            inx
L9B34:      lda L9B3F,X
            sta (L0082),Y
            dey
            cpy #$FF
            bne L9B0F
            rts
L9B3F:      .byte $FF,$3F,$CF,$0F,$F3,$33,$C3,$03
            .byte $FC,$3C,$CC,$0C,$F0,$30,$C0,$00
L9B4F:      jsr L889E
            jsr L987E
            lda L3FFA
            beq L9B6B
            lda #$08
            sta L3FFC
            ldx #$01
            stx L3FF9
            dex
            stx L3FFA
            jmp LB887
L9B6B:      jsr LA845
            ldx #$13
L9B70:      lda L9D43,X
            sta L3F51,X
            dex
            bne L9B70
            lda L3F03
            bne L9BBD
            tax
            lda #$06
            jsr L9778
            inx
            lda #$18
            jsr L9778
            lda L3FFD
            beq L9B92
            jsr L9C68
L9B92:      ldx #$0A
L9B94:      lda L9D6A,X
            sta L3ED2,X
            dex
            bne L9B94
            jsr LB8DB
            jsr L8892
            lda L0A4B
            pha
            bne L9BAC
            inc L0A3B
L9BAC:      jsr L9C49
            pla
            bne L9BBD
	    jmp hiscore
            ;; jmp L9C88
L9BB5:      ldx #$20
            jsr L9C4B
            jmp L9BF7
L9BBD:      lda L3FFD
            beq L9BB5
            lda L3F03
            bne L9BCD
            sta L0A4B
            jmp L9BD2
L9BCD:      lda L0A4B
            beq L9BD5
L9BD2:      jsr L9D25
L9BD5:      jsr LB8DB
            jsr L889E
            lda L3FFD
            beq L9BF7
            jsr L9C68
            ldx #$0A
L9BE5:      lda L9D60,X
            sta L3ED2,X
            dex
            bne L9BE5
            jsr L8892
            jsr L9C49
            jsr L889E
L9BF7:      ldx #$01
            stx L0679
            stx L0665
            lda #$5B
            sta L0099
            lda #$38
            sta L0A89
            lda #$0D
            sta L0A93
            dec L3F03
            jsr L94FA
            jsr L9C3E
            lda L3F07
            beq L9C35
            jsr L8805
            jsr L8931
            ldx #$04
L9C23:      lda LB667,X
            sta L05FF,X
            dex
            bne L9C23
            jsr LB68C
            jsr L8892
            jmp L806F
L9C35:      jsr L8C25
            jsr L8892
            jmp L800B
L9C3E:      lda #$05
            sta SDLSTH
            lda #$00
            sta SDLSTL
            rts
L9C49:      ldx #$A0
L9C4B:      stx LOMEM
L9C4D:      lda RTCLOK+2
L9C4F:      cmp RTCLOK+2
            beq L9C4F
            jsr LB6DA
            lda L0A3A
            bne L9C4D
            dec LOMEM
            beq L9C67
            lda L00D7
            bne L9C4D
            dec LOMEM
            bne L9C4D
L9C67:      rts
L9C68:      ldx #$0A
L9C6A:      lda L9D56,X
            sta L3EC2,X
            dex
            bne L9C6A
            lda L0A65
            beq L9C87
            lda #$34
            sta L3ECA
            lda #$37
            sta L3ECB
            lda #$2F
            sta L3ECC
L9C87:      rts
L9C88:      lda #$04
            sta L3FFC
            lda L0A65
            beq L9C95
            jsr L9D25
L9C95:      ldx #$02
L9C97:      lda L3F00,X
            sta L3FF0,X
            lda L3F29,X
            sta L3FF3,X
            dex
            bpl L9C97
L9CA6:      jsr LA19B
            jmp L9CA6
L9CAC:      jsr L889E
            inc L3F09
            jsr L8805
            lda #$5B
            sta L0099
            lda #$38
            sta L0A89
            ldx #$01
            sta L0679
            stx L0665
            ldx #$07
            lda #$00
            sta L0A32
            sta L3F28
L9CD0:      sta L3F0A,X
            dex
            bpl L9CD0
            jsr L8C25
            jsr L8892
            rts
L9CDD:      lda #$80
            sta LOMEM
            lda #$11
            sta LOMEM+1
            lda #$E0
            sta L0082
            lda #$27
            sta L0083
            ldy #$1F
L9CEF:      lda (LOMEM),Y
            tax
            lda (L0082),Y
            sta (LOMEM),Y
            txa
            sta (L0082),Y
            dey
            bpl L9CEF
            ldy #$1F
            lda LOMEM
            clc
            adc #$20
            sta LOMEM
            lda LOMEM+1
            adc #$00
            sta LOMEM+1
            lda L0082
            clc
            adc #$20
            sta L0082
            lda L0083
            adc #$00
            sta L0083
            lda LOMEM+1
            cmp #$27
            bne L9CEF
            lda LOMEM
            cmp #$E0
            bne L9CEF
            rts
L9D25:      jsr L9CDD
L9D28:      lda L0A65
            eor #$01
            sta L0A65
            ldx #$29
L9D32:      lda L3EFF,X
            pha
            lda L3F28,X
            sta L3EFF,X
            pla
            sta L3F28,X
L9D40:      dex
            bne L9D32
L9D43:      rts
            .byte $70,$70,$70,$70,$70,$70,$70,$70
            .byte $70,$70,$70,$47,$C0,$3E,$70,$07
            .byte $41,$52
L9D56:      .byte $3F,$30,$2C,$21,$39,$25,$32,$00
            .byte $2F,$2E
L9D60:      .byte $25,$00,$00,$32,$25,$21,$24,$39
            .byte $00,$00
L9D6A:      .byte $00,$27,$21,$2D,$25,$00,$00,$2F
            .byte $36,$25,$32
L9D75:      bit L00E7
            bmi L9DBE
            bvc L9D7F
            lda L00F3
            bne L9DBE
L9D7F:      lda L3FFA
            beq L9DC5
            lda L0A89
            and #$07
            bne L9DBE
            lda L0099
            jsr LB485
            bcs L9DBE
            dec L06AF
            bpl L9DBE
            lda L0679
L9D9A:      beq L9DA6
            lda RANDOM
            and #$03
            adc #$02
            jmp L9DB0
L9DA6:      lda #$03
            sta L06AF
            lda RANDOM
            and #$03
L9DB0:      tax
            lda L0665
            clc
            adc L9DBF,X
            and #$03
            adc #$01
            sta L00F9
L9DBE:      rts
L9DBF:      .byte $00,$00
            ora (CASINI+1,X)
            .byte $02,$02
L9DC5:      sta L00D8
            ldx L0A65
            ldy STICK0,X
            lda L9DE1,Y
            sta L00F9
            lda L0A50
            beq L9DDB
            lda #$03
            sta L00F9
L9DDB:      lda L00F9
            sta L0A36
            rts
L9DE1:      .byte $00,$00,$00,$00,$00,$02,$02,$02
            .byte $00,$04,$04,$04,$00,$03,$01,$00
L9DF1:      lda L00FC
            and #$0F
            cmp #$04
            bne L9E05
            lda L00FC
            lsr
            lsr
            lsr
            lsr
            ora L00FC
            and #$F3
            sta L00FC
L9E05:      jmp L9E80
L9E08:      lda L3F07
            bne L9E14
            lda L00F4
            beq L9E15
            jmp L9F6C
L9E14:      rts
L9E15:      lda L00FC
            and #$0F
            bne L9E80
            bit L0A35
            bmi L9E80
            lda RANDOM
            and #$3F
            bne L9E80
            ldx #$07
L9E29:      lda L0666,X
            cmp #$08
            bne L9E3B
            lda L3F0A,X
            ora L3FE0,X
            ora L0694,X
            beq L9E40
L9E3B:      dex
            bpl L9E29
            bmi L9E80
L9E40:      lda L0090,X
            sta L0A5C
            lda L0A80,X
            sta L0A5B
            lda #$08
L9E4D:      cmp L0A5B
            beq L9E5B
            clc
            adc #$08
            cmp #$78
            beq L9E3B
            bne L9E4D
L9E5B:      lda L065C,X
            bmi L9E3B
            ror
            bcc L9E3B
            rol
            and #$02
            eor #$02
            asl
            asl
            asl
            asl
            asl
            ora #$80
            tay
            lda L00FC
            and #$0F
            sty L00FC
            ora L00FC
            sta L00FC
            inc L0670,X
            txa
            sta L00FD
L9E80:      lda L00FC
            bpl L9E8C
            and #$0F
            beq L9E90
            cmp #$06
            bcc L9E8D
L9E8C:      rts
L9E8D:      jmp L9F6C
L9E90:      tay
            sty L0A4A
            sty L0A3E
            lda L00FC
            ror
            ror
            ror
            ror
            and #$04
            sec
            sbc #$02
            sta L0088
            lda L0A5C
            sta L0086
            lda L0A5B
            sta L0084
            jsr L81EB
            lda #$CF
            and L00FC
            sta L00FC
            ldx #$00
            stx LOMEM
            stx L008F
L9EBD:      lda L0082
            clc
            adc L0088
            sta L0A52,X
            sta L0082
            lda L0083
            sta L0A53,X
            lda L008F
            bne L9EEB
            ldy #$A0
            lda (L0082),Y
            and #$15
            bne L9EE0
            ldy #$C1
            lda (L0082),Y
            and #$54
            beq L9EE4
L9EE0:      inc L008F
            bne L9EEB
L9EE4:      lda LOMEM
            clc
            adc #$10
            sta LOMEM
L9EEB:      inx
            inx
            cpx #$06
            bne L9EBD
            lda LOMEM
            bne L9F17
            lda L0A5C
            cmp #$04
            bne L9F0D
            lda L0A5B
            cmp #$18
            bcc L9F0D
            cmp #$61
            bcs L9F0D
            lda #$30
            sta LOMEM
            bne L9F17
L9F0D:      ldx L00FD
            lda #$00
            sta L00FC
            sta L0670,X
            rts
L9F17:      lda #$CF
            and L00FC
            ora LOMEM
            sta L00FC
            and #$30
            cmp #$30
            bne L9F2D
            ldx #$04
            jsr LA098
            jmp L9F31
L9F2D:      cmp #$20
            bne L9F39
L9F31:      ldx #$02
            jsr LA098
            jmp L9F3D
L9F39:      cmp #$10
            bne L9F0D
L9F3D:      ldx #$00
            jsr LA098
            lda L00FC
            and #$F0
            ora #$01
            sta L00FC
            ldx #$30
            stx L0A51
            and #$40
            lsr
            lsr
            sta LOMEM
            lsr
            clc
            adc LOMEM
            sta L0A70
            jsr L9889
            ldx #$00
            lda #$0C
            jsr L9778
            inx
            lda #$0D
            jsr L9778
L9F6C:      lda L00EF
            ora L0A3E
            bne L9F8D
            sta L008F
            lda L0099
            cmp #$04
            bne L9F7D
            dec L008F
L9F7D:      ldy #$47
            lda #$04
            sta LOMEM+1
            lda #$B0
            sta LOMEM
            jsr LAC43
            inc L0A3E
L9F8D:      lda L00FC
            and #$0F
            cmp #$01
            bne L9FB3
            lda L0A52
            sta L0082
            lda L0A53
            sta L0083
            ldx #$00
            jsr LA074
            lda #$01
            sta L0A4A
            lda L00FC
            and #$30
            cmp #$10
            beq L9FE2
            bne L9FDF
L9FB3:      cmp #$02
            beq L9FB9
            bne L9FEB
L9FB9:      ldx #$00
            jsr LA058
            ldx #$04
            jsr LA074
            lda L0A54
            sta L0082
            lda L0A55
            sta L0083
            ldx #$08
            jsr LA074
            lda #$02
            sta L0A4A
            lda L00FC
            and #$30
            cmp #$20
            beq L9FE2
L9FDF:      inc L00FC
            rts
L9FE2:      lda L00FC
            and #$F0
            ora #$04
            sta L00FC
            rts
L9FEB:      cmp #$03
            bne LA021
            ldx #$00
            jsr LA058
            ldx #$0C
            jsr LA074
            ldx #$02
            jsr LA058
            ldx #$10
            jsr LA074
            lda L0A56
            sta L0082
            lda L0A57
            sta L0083
            ldx #$14
            jsr LA074
            lda #$03
            sta L0A4A
            lda L00FC
            and #$30
            cmp #$30
            beq L9FE2
            bne L9FDF
LA021:      cmp #$04
            bne LA02B
            dec L0A51
            beq L9FDF
LA02A:      rts
LA02B:      lda L00FC
            beq LA02A
            and #$30
            cmp #$30
            bne LA03D
            ldx #$04
            jsr LA058
            jmp LA041
LA03D:      cmp #$20
            bne LA046
LA041:      ldx #$02
            jsr LA058
LA046:      ldx #$00
            jsr LA058
            lda #$00
            sta L0A4A
            sta L00FC
            ldx L00FD
            sta L0670,X
            rts
LA058:      lda LA0C8,X
            sta L00E0
            lda LA0C9,X
            sta L00E1
            lda L0A52,X
            sta L008A
            sta L0082
            lda L0A53,X
            sta L008B
            sta L0083
            jsr L88AA
            rts
LA074:      lda LA0B0,X
            clc
            adc L0A70
            sta L0084
            lda LA0B1,X
            adc #$00
            sta L0085
            lda LA0B2,X
            clc
            adc L0A70
            sta L0086
            lda LA0B3,X
            adc #$00
            sta L0087
            jsr L937E
            rts
LA098:      lda L0A52,X
            sta L0082
            lda L0A53,X
            sta L0083
            lda LA0C8,X
            sta L0086
            lda LA0C9,X
            sta L0087
            jsr L93AA
            rts
LA0B0:      beq LA0BB
LA0B2:      .byte $7C
LA0B3:      tsx
            cpy #$09
            jmp L90BA
            ora #$1C
LA0BB:      tsx
            beq LA0C7
            .byte $7C
            tsx
            cpy #$09
            jmp L90BA
            ora #$1C
LA0C7:      tsx
LA0C8:      bcs LA0CE
            iny
            .byte $04
            cpx #$04
LA0CE:      jsr LA42D
            ldx L0665
            clc
            lda L0A89
            ldy L00EF
            bne LA0E2
            adc LA197,X
            jmp LA0E5
LA0E2:      adc LA194,X
LA0E5:      adc #$40
            ldx #$03
LA0E9:      sta HPOSM0,X
            adc #$02
            dex
            bpl LA0E9
            jsr LA1B9
            jsr LA1EA
            jsr LA266
            ldy #$00
LA0FC:      ldx L00C7,Y
            beq LA10B
            lda L0513,X
            and #$7F
            sta L0513,X
            iny
            bne LA0FC
LA10B:      lda #$00
            sta L009F
            lda #$00
            sta LOMEM+1
            tax
LA114:      ldy LA320,X
            lda L06B1,Y
            beq LA152
            iny
LA11D:      lda L06B1,Y
            beq LA152
            lsr
            sta LOMEM
            and #$03
            ldx LOMEM+1
            clc
            adc LA14E,X
            tax
            lda LOMEM
            sec
            sbc LA325,X
            bcc LA14A
            tax
            lda L088C,X
            tax
            lda L0513,X
            ora #$80
            sta L0513,X
            txa
            ldx L009F
            sta L00C7,X
            inc L009F
LA14A:      iny
            jmp LA11D
LA14E:      .byte $00,$04
            php
            .byte $0C
LA152:      inc LOMEM+1
            ldx LOMEM+1
            cpx #$04
            bne LA114
            ldy #$00
LA15C:      lda L06D1,Y
            beq LA18A
            lsr
            tax
            lda L088C,X
            tax
            lda L0513,X
            bpl LA17A
            tya
            tax
            lda L00A0,X
            tax
            lda L00A3,X
            ora #$80
            sta L00A3,X
            jmp LA186
LA17A:      ora #$80
            sta L0513,X
            txa
            ldx L009F
            sta L00C7,X
            inc L009F
LA186:      iny
            jmp LA15C
LA18A:      ldx L009F
            lda #$00
            sta L00C7,X
            jsr LA339
            rts
LA194:      ora (CMCMD,X)
            ora ($00,X)
            .byte $04,$00,$00
LA19B:      jsr LB6DA
            lda SDLSTH
            cmp #$05
            bne LA1B2
            lda #$00
            sta L00DD
            sta L00DC
LA1AB:      lda L00DC
            beq LA1AB
            inc L00DD
            rts
LA1B2:      lda RTCLOK+2
LA1B4:      cmp RTCLOK+2
            beq LA1B4
            rts
LA1B9:      lda L00D5
            and #$03
            clc
            adc #$06
            tay
            sty LOMEM
            ldx #$05
LA1C5:      lda L063E,X
            bpl LA1D8
            pha
            lda L063E,Y
            sta L063E,X
            pla
            and #$7F
            sta L063E,Y
            dey
LA1D8:      dex
            bpl LA1C5
            ldx #$09
LA1DD:      ldy L063E,X
            lda L0090,Y
            sta L0A9E,X
            dex
            bpl LA1DD
            rts
LA1EA:      lda #$00
            sta L0A46
            ldy #$09
LA1F1:      lda L0A9E,Y
            beq LA257
            sta LOMEM
            lda L0A46
            and #$03
            tax
            lda LA320,X
            tax
            lda #$03
            sta L0A45
LA207:      lda L06B1,X
            beq LA232
            sec
            sbc LOMEM
            bcs LA215
            eor #$FF
            adc #$01
LA215:      cmp #$16
            bcc LA21D
            inx
            jmp LA207
LA21D:      dec L0A45
            bmi LA25B
            inc L0A46
            lda L0A46
            and #$03
            tax
            lda LA320,X
            tax
            jmp LA207
LA232:      sta L06B2,X
            lda L05E0,X
            sta L05E1,X
            lda L06B0,X
            cmp LOMEM
            bcc LA249
            dex
            lda L06B1,X
            jmp LA232
LA249:      lda LOMEM
            sta L06B1,X
            lda L063E,Y
            sta L05E0,X
            inc L0A46
LA257:      dey
            bpl LA1F1
            rts
LA25B:      lda L063E,Y
            ora #$80
            sta L063E,Y
            jmp LA257
LA266:      lda #$00
            ldx #$08
LA26A:      sta L009A,X
            dex
            bpl LA26A
            ldx #$03
LA271:      ldy LA320,X
            lda L06B1,Y
            beq LA28E
            lda L05E0,Y
            tay
            lda L0A80,Y
            clc
            adc #$40
            sta L0A26,X
            lda L0A94,Y
            sta L0A22,X
            inc L009A,X
LA28E:      dex
            bpl LA271
LA291:      lda #$FF
            sta LOMEM
            ldy L009A
            lda L06B1,Y
            beq LA2A0
            sta LOMEM
            ldx #$00
LA2A0:      ldy L009B
            lda L06B9,Y
            beq LA2AF
            cmp LOMEM
            bcs LA2AF
            sta LOMEM
            ldx #$01
LA2AF:      ldy L009C
            lda L06C1,Y
            beq LA2BE
            cmp LOMEM
            bcs LA2BE
            sta LOMEM
            ldx #$02
LA2BE:      ldy L009D
            lda L06C9,Y
            beq LA2CD
            cmp LOMEM
            bcs LA2CD
            sta LOMEM
            ldx #$03
LA2CD:      ldy L009E
            lda L06D1,Y
            beq LA2DC
            cmp LOMEM
            bcs LA2DC
            sta LOMEM
            ldx #$04
LA2DC:      lda LOMEM
            cmp #$FF
            beq LA319
            cpx #$04
            beq LA30B
            ldy L009A,X
            inc L009A,X
            tya
            clc
            adc LA320,X
            tay
            lda L05E0,Y
            tay
            txa
            ldx L009F
            sta L00A3,X
            lda L0A94,Y
            sta L00B1,X
            lda L0A80,Y
            clc
            adc #$40
            sta L00BC,X
LA306:      inc L009F
            jmp LA291
LA30B:      txa
            ldx L009F
            sta L00A3,X
            ldy L009E
            stx L00A0,Y
            inc L009E
            jmp LA306
LA319:      lda #$05
            ldx L009F
            sta L00A3,X
            rts
LA320:      .byte $00
LA321:      .byte $08,$10,$18,$20
LA325:      .byte $00,$01,$02,$03,$03,$00,$01,$02
            .byte $02,$03,$00,$01,$01,$02,$03,$00
LA335:      .byte $00,$05,$0A,$0F
LA339:      lda L0A50
            bne LA36D
            lda L00ED
            beq LA36D
            ldx L0665
            ldy LA335,X
            ldx L00EB
            lda LBFE6,Y
            sta L0B32,X
            lda LBFE7,Y
            sta L0B33,X
            lda LBFE8,Y
            sta L0B34,X
            lda LBFE9,Y
            sta L0B35,X
            lda LBFEA,Y
            sta L0B36,X
            stx L00EA
            jmp LA373
LA36D:      lda #$00
            sta L00EA
            sta L00ED
LA373:      ldy #$00
LA375:      ldx L06B1,Y
            beq LA3DB
            sty L0082
            lda L05E0,Y
            jsr LA41B
            lda (LOMEM),Y
            sta L0C30,X
            iny
            lda (LOMEM),Y
            sta L0C31,X
            iny
            lda (LOMEM),Y
            sta L0C32,X
            iny
            lda (LOMEM),Y
            sta L0C33,X
            iny
            lda (LOMEM),Y
            sta L0C34,X
            iny
            lda (LOMEM),Y
            sta L0C35,X
            iny
            lda (LOMEM),Y
            sta L0C36,X
            iny
            lda (LOMEM),Y
            sta L0C37,X
            iny
            lda (LOMEM),Y
            sta L0C38,X
            iny
            lda (LOMEM),Y
            sta L0C39,X
            iny
            lda (LOMEM),Y
            sta L0C3A,X
            iny
            lda (LOMEM),Y
            sta L0C3B,X
            iny
            lda (LOMEM),Y
            sta L0C3C,X
            iny
            lda (LOMEM),Y
            sta L0C3D,X
            ldy L0082
            iny
            jmp LA375
LA3DB:      ldy #$00
LA3DD:      ldx L06B9,Y
            beq LA3F0
            sty L0082
            lda L05E8,Y
            jsr LA41B
            jsr L0701
            jmp LA3DD
LA3F0:      ldy #$00
LA3F2:      ldx L06C1,Y
            beq LA405
            sty L0082
            lda L05F0,Y
            jsr LA41B
            jsr L0759
            jmp LA3F2
LA405:      ldy #$00
LA407:      ldx L06C9,Y
            beq LA41A
            sty L0082
            lda L05F8,Y
            jsr LA41B
            jsr L07B1
            jmp LA407
LA41A:      rts
LA41B:      tay
            lda L0A8A,Y
            tay
            lda L0147,Y
            sta LOMEM+1
            lda L0100,Y
            sta LOMEM
            ldy #$00
            rts
LA42D:      lda #$00
            ldy L00EA
            beq LA444
            sta L0B32,Y
            sta L0B33,Y
            sta L0B34,Y
            sta L0B35,Y
            sta L0B36,Y
            sta L00EA
LA444:      ldy #$00
LA446:      ldx L06B1,Y
            beq LA479
            sta L0C30,X
            sta L0C31,X
            sta L0C32,X
            sta L0C33,X
            sta L0C34,X
            sta L0C35,X
            sta L0C36,X
            sta L0C37,X
            sta L0C38,X
            sta L0C39,X
            sta L0C3A,X
            sta L0C3B,X
            sta L0C3C,X
            sta L0C3D,X
            iny
            jmp LA446
LA479:      stx L06B1
            ldy #$00
LA47E:      ldx L06B9,Y
            beq LA489
            jsr L0808
            jmp LA47E
LA489:      stx L06B9
            ldy #$00
LA48E:      ldx L06C1,Y
            beq LA499
            jsr L0834
            jmp LA48E
LA499:      stx L06C1
            ldy #$00
LA49E:      ldx L06C9,Y
            beq LA4A9
            jsr L0860
            jmp LA49E
LA4A9:      stx L06C9
            ldx #$78
            rts
            pha
            txa
            pha
            tya
            pha
            lda SDMCTL
            beq LA4D3
            lda L04A3
LA4BC:      sta COLPF0
            ldx #$03
LA4C1:      lda L0A22,X
            sta PCOLR0,X
            sta COLPM0,X
            lda L0A26,X
            sta HPOSP0,X
            dex
            bpl LA4C1
LA4D3:      lda #$E3
            sta VDSLST
            lda #$A4
            sta VDSLST+1
            pla
            tay
LA4DF:      pla
            tax
            pla
            rti
            pha
            txa
            pha
            ldx VCOUNT
            lda L3E40,X
            ldx L00D3
            sta WSYNC
            sta COLPF2
            lda L04A7
            sta COLPF0
LA4FA:      lda L00A3,X
            bpl LA504
            inc L00D3
            inx
            jmp LA4FA
LA504:      asl
            tax
            lda LA5CF,X
            sta VDSLST
            lda LA5D0,X
            sta VDSLST+1
            jmp LA4DF
            pha
            lda #$00
            sta CRITIC
            lda L0A47
            sta L0757
            lda L00DD
            bne LA528
            lda #$01
            sta L00DC
LA528:      pla
            rti
            pha
            txa
            pha
            ldx VCOUNT
            lda L3E40,X
            ldx L00D3
            sta WSYNC
            sta COLPF2
            lda L00BC,X
            sta HPOSP0
            lda L00B1,X
            sta COLPM0
LA545:      lda L00A4,X
            bpl LA54E
            inc L00D3
            inx
            bne LA545
LA54E:      asl
            tax
            lda LA5CF,X
            sta VDSLST
            lda LA5D0,X
            sta VDSLST+1
            inc L00D3
            jmp LA4DF
            pha
            txa
            pha
            ldx VCOUNT
            lda L3E40,X
            ldx L00D3
            sta WSYNC
            sta COLPF2
            lda L00BC,X
            sta HPOSP1
            lda L00B1,X
            sta COLPM1
            jmp LA545
            pha
            txa
            pha
            ldx VCOUNT
            lda L3E40,X
            ldx L00D3
            sta WSYNC
            sta COLPF2
            lda L00BC,X
            sta HPOSP2
            lda L00B1,X
            sta COLPM2
            jmp LA545
            pha
            txa
            pha
            ldx VCOUNT
            lda L3E40,X
            ldx L00D3
            sta WSYNC
            sta COLPF2
            lda L00BC,X
            sta HPOSP3
            lda L00B1,X
            sta COLPM3
            jmp LA545
            pha
            txa
            pha
            ldx VCOUNT
            lda L3E40,X
            ldx L00D3
            sta WSYNC
            sta COLPF2
            jmp LA545
LA5CF:      rol
LA5D0:      lda FKDEF+1
            lda COUNTR+1
            lda L009D
            lda L00BB
            lda BUFADR
            lda L00CE
            .byte $43
            asl
            bpl LA5E5
            lda #$12
            sta L0A43
LA5E5:      lda L0099
            cmp #$04
            bne LA5F0
            lda #$00
            jmp LA602
LA5F0:      lda L0679
            beq LA604
            jsr L847E
            ldx L0665
            jsr L95A5
            bcc LA604
            lda #$08
LA602:      sta L00ED
LA604:      lda L00ED
            beq LA60A
            dec L00ED
LA60A:      ldx L0665
            lda L0099
            clc
            adc LA71E,X
            sta L00EB
            lda L0A50
            beq LA61D
            jmp LA661
LA61D:      lda L04A1
            sta L0A9D
            lda L0A36
            beq LA62C
            lda L00E7
            beq LA633
LA62C:      lda #$00
            sta L0683
            beq LA650
LA633:      lda L0665
            cmp L00E8
            beq LA640
            lda #$00
            sta L00ED
            beq LA650
LA640:      lda L00D5
            and #$03
            bne LA661
            dec L0683
            bpl LA650
            lda #$02
            sta L0683
LA650:      ldy L0665
            sty L00E8
            lda LA71A,Y
            clc
            adc L0683
            adc #$0A
            sta L0A93
LA661:      bit L0A35
            bmi LA66F
            ldx #$07
LA668:      lda L0090,X
            bne LA670
LA66C:      dex
            bpl LA668
LA66F:      rts
LA670:      lda L0666,X
            cmp #$08
            beq LA6C3
            lda L0A43
            bne LA684
            lda L067A,X
            eor #$01
            sta L067A,X
LA684:      lda L3FE0,X
            bne LA6AD
            lda L065C,X
            bpl LA696
            clc
            lda #$24
            adc L067A,X
            bne LA6AA
LA696:      lda L0694,X
            beq LA6B5
            cmp #$48
            bpl LA6AD
            lsr
            lsr
            lsr
            lsr
            tay
            dey
            bmi LA6AD
            lda LA6B0,Y
LA6AA:      sta L0A8A,X
LA6AD:      jmp LA66C
LA6B0:      .byte $1C
            ora L1F1E,X
            .byte $1B
LA6B5:      lda L065C,X
            and #$02
            ora L067A,X
            clc
            adc #$02
            jmp LA6AA
LA6C3:      lda L3FE0,X
            bne LA6AD
            lda L065C,X
            bpl LA6D7
            lda L067A,X
            and #$01
            clc
            adc #$26
            bne LA701
LA6D7:      lda L0694,X
            beq LA6F6
            cmp #$48
            bpl LA6EE
            lsr
            lsr
            lsr
            lsr
            tay
            dey
            bmi LA6EE
            lda LA6F1,Y
            sta L0A8A,X
LA6EE:      jmp LA66C
LA6F1:      jsr L2221
            .byte $23,$1B
LA6F6:      lda L065C,X
            and #$02
            clc
            adc #$06
            adc L067A,X
LA701:      sta L0A8A,X
            lda L00D4
            and #$1F
            bne LA717
            lda L0670,X
            bne LA717
            lda L067A,X
            eor #$01
            sta L067A,X
LA717:      jmp LA66C
LA71A:      .byte $00,$03
            asl BOOT
LA71E:      inc L0604,X
            .byte $04
LA722:      .byte $4B
            sta (L00A4,X)
            .byte $A3
LA726:      .byte $2B,$57
LA728:      .byte $02
            ora L00A2
            ora (L00A9,X)
            .byte $00
            sta L0084
            lda #$07
            sta L0085
LA734:      lda LA722,X
            sta L0082
            lda LA724,X
            sta L0083
            lda #$02
            sta L0086
LA742:      ldy #$00
            lda LA726,X
            sta LOMEM
            lda LA728,X
            sta LOMEM+1
LA74E:      lda (L0082),Y
            dec LOMEM+1
            bpl LA75E
            pha
            lda LA728,X
            sta LOMEM+1
            pla
            clc
            adc #$01
LA75E:      sta (L0084),Y
            iny
            dec LOMEM
            bne LA74E
            lda #$60
            sta (L0084),Y
            iny
            lda L0084
            sta L0082
            lda L0085
            sta L0083
            tya
            clc
            adc L0084
            sta L0084
            bcc LA77C
            inc L0085
LA77C:      dec L0086
            bmi LA783
            jmp LA742
LA783:      dex
            bpl LA734
            lda #$00
            tay
LA789:      sta L088C,Y
LA78C:      clc
            adc #$02
            cmp #$74
            beq LA78C
            iny
            cmp #$C0
            bne LA789
            ldy #$00
            ldx #$BC
            lda #$00
LA79E:      sta L0100,Y
            pha
            txa
            sta L0147,Y
            pla
            clc
            adc #$0E
            bcc LA7AD
            inx
LA7AD:      iny
            cpy #$47
            bne LA79E
            lda #$0F
            sta L0148
            lda #$F0
            sta L0101
            ldy #$24
            lda #$00
LA7C0:      sta L018E,Y
            sec
            sbc #$01
            bpl LA7CA
            lda #$02
LA7CA:      dey
            bpl LA7C0
            ldx #$14
LA7CF:      lda L8D46,X
            sta L05CB,X
            dex
            bne LA7CF
            rts
            jsr LA528
            sbc L070D
            .byte $3F
            bne LA7F9
            tay
            ldx L0A65
            lda TRIG0,X
            bne LA7F5
            lda L00F3
            bne LA7F9
            inc L00F3
            inc L00D8
            bne LA7F9
LA7F5:      sty L00F3
            sty L00E4
LA7F9:      lda L00D8
            beq LA825
            lda L00E7
            ora L00EF
            ora L0A50
            ora L00E5
            bne LA825
            ldx #$03
            lda #$0E
            jsr L9778
            lda L0665
            sta L00E6
            lda #$80
            sta L00E7
            lda #$00
            sta L00D8
            sta L0A21
            sta L0A3D
            sta L0A3F
LA825:      jsr LAC6D
            bit L00E7
            bmi LA8A4
            bvs LA831
            jmp LAA89
LA831:      lda L0665
            cmp L00E6
            beq LA84C
LA838:      lda #$00
            jsr LA845
            lda #$FF
            sta L0A40
            jmp LAA89
LA845:      sta L00E7
            sta L00EF
            sta L00D8
            rts
LA84C:      lda L00F3
            bne LA856
            lda L0679
            beq LA838
            rts
LA856:      ldx L0A40
            lda L0694,X
            and #$F0
            sta L008F
            lda L00E4
            bne LA867
            jmp LA8E9
LA867:      lda L069E,X
            clc
            adc L061C
            sta L069E,X
            lda L0694,X
            adc #$00
            sta L0694,X
            cmp #$40
            bmi LA897
            ldy #$00
            sty L00E7
            sty L00EF
            dey
            sty L0A40
            inc L3F0A,X
            ldx #$03
            lda #$0A
            jsr L9778
            inc L0A2F
            jmp LAA89
LA897:      lda L0694,X
            and #$F0
            cmp L008F
            beq LA8A3
            jsr LAC98
LA8A3:      rts
LA8A4:      lda L00EF
            bne LA8AB
            jmp LA927
LA8AB:      ldx #$07
LA8AD:      lda L3F0A,X
            bne LA8DF
            lda L0090,X
            beq LA8DF
            sec
            sbc L0A48
            bcs LA8C0
            eor #$FF
            adc #$01
LA8C0:      cmp #$06
            bcs LA8DF
            lda L0A80,X
            sec
            sbc L00F0
            bcs LA8D0
            eor #$FF
            adc #$01
LA8D0:      cmp #$05
            bcs LA8DF
            jsr LAC98
            lda L065C,X
            bpl LA8E5
            jmp LAA3B
LA8DF:      dex
            bpl LA8AD
            jmp LA927
LA8E5:      lda #$40
            sta L00E7
LA8E9:      lda #$01
            sta L00E4
            sta L0670,X
            lda L0694,X
            cmp #$20
            bpl LA904
            lda #$24
            sta L0694,X
            lda #$00
            sta L069E,X
            jmp LA916
LA904:      adc #$05
            ldy L0A36
            beq LA90D
            adc #$09
LA90D:      cmp #$3F
            bmi LA913
            lda #$3F
LA913:      sta L0694,X
LA916:      stx L0A40
            lda L00FC
            beq LA924
            cpx L00FD
            bne LA924
            jsr LB580
LA924:      jmp LA897
LA927:      lda L00E6
            lsr
            bcs LA94A
            ldy L0A89
            sty L008A
            cmp #$00
            bne LA940
            lda L0099
            clc
            adc #$02
            clc
            sbc L00EF
            jmp LA945
LA940:      lda L0099
            sec
            adc L00EF
LA945:      sta L008B
            jmp LA968
LA94A:      ldy L0099
            sty L008B
            cmp #$00
            bne LA95E
            lda L0A89
            clc
            adc L00EF
            sec
            sbc #$02
            jmp LA966
LA95E:      lda L0A89
            clc
            sbc L00EF
            adc #$01
LA966:      sta L008A
LA968:      lda L008A
            sta L008E
            lda L008B
            sta L008F
            lda L0A3F
            bne LA9EA
            ldx L00E6
            jsr L95A5
            bcs LA991
            lda L008A
            clc
            adc LA9E6,X
            sta L008A
            lda L008B
            clc
            adc LA9E5,X
            sta L008B
            jsr L95A5
            bcc LA9EA
LA991:      lda L00E6
            lsr
            bcc LA9BA
            lda L00DB
            beq LA9BA
            lda L00F5
            sbc L0099
            bcs LA9A4
            eor #$FF
            adc #$01
LA9A4:      cmp #$05
            bpl LA9BA
            sec
            lda L00F4
            sbc #$01
            sbc L008E
            bpl LA9BA
            eor #$FF
            cmp #$0A
            bpl LA9BA
            jmp LA9EA
LA9BA:      lda L00EF
            cmp #$05
            bpl LAA17
            lda L008A
            clc
            adc LA9E1,X
            sta L008A
            lda L008B
            clc
            adc LA9E0,X
            sta L008B
            jsr L95A5
            bcs LA9DD
            lda #$05
            sta L0A3F
            jmp LA9EA
LA9DD:      jmp LAA17
LA9E0:      .byte $FD
LA9E1:      .byte $00,$03,$00,$FD
LA9E5:      .byte $FF
LA9E6:      .byte $00,$01,$00,$FF
LA9EA:      ldx L00E6
            lda L008E
            clc
            adc LAA33,X
            sta L00F0
            lda L008F
            clc
            adc LAA37,X
            sta L0A48
            lda L00E6
            asl
            and #$02
            tax
            clc
            lda L00EE
            adc L0616,X
            sta L00EE
            lda L00EF
            adc L0617,X
            sta L00EF
            cmp LAA2F,X
            bmi LAA22
LAA17:      lda #$00
            sta L00EF
            sta L00EE
            sta L00E7
LAA1F:      jmp LAA89
LAA22:      lda L0A3F
            beq LAA1F
            dec L0A3F
            bne LAA1F
            jmp LAA17
LAA2F:      .byte $23,$23,$17,$17
LAA33:      .byte $00,$04,$00,$FE
LAA37:      .byte $FB,$00,$05,$00
LAA3B:      dec L00FF
            lda L049F
            sta L0A94,X
            lda L0666,X
            cmp #$04
            beq LAA50
            lda L04A0
            sta L0A94,X
LAA50:      lda L00E6
            lsr
            bcs LAA6D
            lda L0A89
            sta L0A80,X
            lda L0099
            sec
            sbc L0090,X
            rol
            and #$01
            tay
            lda LAA85,Y
            sta L065C,X
            jmp LA8E5
LAA6D:      lda L0099
            sta L0090,X
            lda L0A89
            sec
            sbc L0A80,X
            rol
            and #$01
            tay
            lda LAA87,Y
            sta L065C,X
            jmp LA8E5
LAA85:      .byte $00,$02
LAA87:      ora (CASINI+1,X)
LAA89:      ldy L00EF
            bne LAA91
            ldy L00E5
            bne LAA94
LAA91:      jmp LAAEE
LAA94:      lda L00E6
            lsr
            bcs LAAAB
            ldy L00E5
            lda #$00
            ldx #$24
LAA9F:      sta L0B2F,Y
            iny
            dex
            bpl LAA9F
            sta L00E5
            jmp LAAEE
LAAAB:      ldy L00E5
            lda L3FC8,Y
            sta L0082
            lda L3FB0,Y
            sta L0083
            lda L06D5,Y
            sta LOMEM+1
            ldx L0626,Y
            ldy #$00
            lda (L0082),Y
            and L853F,X
            ora LOMEM+1
            sta (L0082),Y
            dec L00E5
            bne LAAAB
            jsr LAC6D
            lda L00FC
            beq LAAE4
            ldx L00FD
            lda L0090,X
            cmp L0099
            bne LAAE4
            lda L00FC
            beq LAAE4
            jsr L9DF1
LAAE4:      jmp LAAEE
            .byte $3F,$0F,$03,$00,$C0,$F0,$FC
LAAEE:      bit L00E7
            bpl LAB0B
            lda L00EF
            sec
            sbc L0A21
            cmp #$02
            bne LAB03
            dec L00EF
            jsr LAB0C
            inc L00EF
LAB03:      jsr LAB0C
            lda L00EF
            sta L0A21
LAB0B:      rts
LAB0C:      lda L00E6
            lsr
            bcs LAB3E
            bne LAB27
            lda L0099
            clc
            adc #$02
            sec
            sbc L00EF
            bne LAB1F
            lda #$01
LAB1F:      tay
            sty L00E5
            lda L00EF
            jmp LAB33
LAB27:      lda L0099
            clc
            adc #$0A
            sta L00E5
            adc L00EF
            tay
            lda L00EF
LAB33:      lsr
            and #$03
            tax
            lda LBFE2,X
            sta L0B30,Y
            rts
LAB3E:      bne LAB4B
            clc
            lda L0A89
            adc #$05
            adc L00EF
            jmp LAB54
LAB4B:      sec
            lda L0A89
            sbc L00EF
            clc
            adc #$00
LAB54:      sta L0084
            lda L00EF
            lsr
            tax
            clc
            lda L0099
            adc LAB92,X
            adc #$04
            sta L0086
            jsr L81EB
            ldx L00F8
            ldy #$00
            lda (L0082),Y
            pha
            and L853F,X
            ora L8543,X
            sta (L0082),Y
            ldy L00EF
            pla
            and LAC65,X
            sta L06D5,Y
            lda L0082
            sta L3FC8,Y
            lda L0083
            sta L3FB0,Y
            txa
            sta L0626,Y
            sty L00E5
            rts
            .byte $04,$03
LAB92:      .byte $02,$01,$00,$01,$02,$03,$02,$01
            .byte $00,$01,$02,$03
LAB9E:      lda L0A30
            beq LABB2
            dec L0A30
            bne LABB2
            ldx L0A31
            lda #$00
            sta L0090,X
            sta L3FE0,X
LABB2:      lda L0A33
            bne LABED
            lda L0098
            cmp L0099
            bne LABED
            lda L0A88
            cmp L0A89
            bne LABED
            ldx #$03
            lda #$1A
            jsr L9778
            ldy L0A34
            lda LB932,Y
            clc
            adc #$29
            sta L0A92
LABD8:      lda L04A3
            sta L0A9C
            lda #$10
            sta L0A32
            sta L0A33
            ldx LB932,Y
            jsr L96E2
LABEC:      rts
LABED:      lda L00D4
            and #$03
            bne LAC07
            lda L0A32
            bne LAC0C
            lda L3F14
            cmp #$02
            bne LABEC
            inc L3F14
            lda #$B0
            sta L0A32
LAC07:      rts
            bcs LABD8
            ldy #$BD
LAC0C:      lda L0A32
            cmp #$A0
            bne LAC39
            ldy L3F09
            cpy #$12
            bmi LAC1C
            ldy #$11
LAC1C:      lda LB91F,Y
            sta L0A92
            lda #$5B
            sta L0098
            lda #$38
            sta L0A88
            lda L048C,Y
            sta L0A9C
            lda #$00
            sta L0A33
            sty L0A34
LAC39:      dec L0A32
            bne LAC07
            lda #$00
            sta L0098
            rts
LAC43:      ldx #$03
LAC45:      lda (LOMEM),Y
            and LAC65,X
            cmp LAC69,X
            bne LAC5E
            bit L008F
            bpl LAC5A
            lda (LOMEM),Y
            ora LAC65,X
            bne LAC5C
LAC5A:      eor (LOMEM),Y
LAC5C:      sta (LOMEM),Y
LAC5E:      dex
            bpl LAC45
            dey
            bpl LAC43
            rts
LAC65:      .byte $C0,$30,$0C,$03
LAC69:      .byte $80,$20,$08,$02
LAC6D:      lda L00FC
            bne LAC97
            lda L0A3D
            bne LAC97
            sta L008F
            ldx L00FD
            lda L0090,X
            cmp #$04
            bne LAC82
            dec L008F
LAC82:      lda L00E6
            lsr
            bcc LAC97
            lda #$06
            sta LOMEM+1
            lda #$D5
            sta LOMEM
            ldy #$17
            jsr LAC43
            inc L0A3D
LAC97:      rts
LAC98:      txa
            pha
            ldx #$03
            lda #$12
            jsr L9778
            pla
            tax
            rts
LACA4:      lda L0A50
            beq LACAA
            rts
LACAA:      lda #$08
            sta LOMEM
            lda #$07
            sta L0082
            lda L0A4A
            beq LACE8
            lda L0A5C
            sta LOMEM+1
            ldy L0A4A
            dey
            lda L00FC
            and #$40
            tax
LACC5:      cpx #$00
            beq LACDA
            lda L0A5B
            clc
            adc LA321,Y
            sta L0083
LACD2:      jsr LB66C
            bcs LACE5
            jmp L92A3
LACDA:      lda L0A5B
            sec
            sbc LA321,Y
            sta L0083
            bne LACD2
LACE5:      dey
            bpl LACC5
LACE8:      ldx #$07
            lda #$06
            sta L0082
LACEE:      lda #$08
            sta LOMEM
            lda L065C,X
            bpl LACF9
            dec LOMEM
LACF9:      lda L0666,X
            cmp #$08
            beq LAD02
            dec LOMEM
LAD02:      lda L0694,X
            ora L3F0A,X
            bne LAD1C
            lda L0090,X
            beq LAD1C
            sta LOMEM+1
            lda L0A80,X
            sta L0083
            jsr LB66C
            bcs LAD1C
            bcc LAD20
LAD1C:      dex
            bpl LACEE
            rts
LAD20:      jsr L9889
            ldx #$00
            lda #$16
            jsr L9778
            inx
            lda #$17
            jsr L9778
            jmp L92A3
LAD33:      lda L3F28
            ora L0A39
            ora L3F07
            bne LAD54
            jsr L9889
            ldx #$00
            lda #$08
            jsr L9778
            inx
            lda #$19
            jsr L9778
            jsr LB5C6
            inc L0A39
LAD54:      lda L0A2B
            beq LAD6D
            lda L0A2A
            sec
            sbc L0624
            sta L0A2A
            lda L0A2B
            sbc L0625
            sta L0A2B
            rts
LAD6D:      lda L00D5
            lsr
            bcc LAD7E
            dec L0A2C
            bne LAD7E
            inc L0A2C
            lda #$FF
            bne LAD9E
LAD7E:      dec L0A44
            beq LAD8C
            lda L00D7
            bne LADA1
            dec L0A44
            bne LADA1
LAD8C:      ldx L3F28
            lda LADA2,X
            ldx L3F08
            adc LADAA,X
            ldx L0A38
            adc LA320,X
LAD9E:      sta L0A44
LADA1:      rts
LADA2:      .byte $C0,$90,$88,$85,$84,$83,$82,$82
LADAA:      .byte $00,$00,$00,$04,$05,$06,$08,$08
            .byte $0A,$0C,$0C,$0E,$12,$14,$14
LADB9:      ldx #$80
            lda L0551,X
            cmp #$58
            bne LADC9
            lda L055B,X
            cmp #$8C
            beq LADCE
LADC9:      lda #$40
            sta L0A47
LADCE:      lda #$00
            sta L3F90
            sta L3F91
            sta L3F92
            lda L3F16
            beq LAE10
            lda L3F15
            sec
            sbc L0624
            sta L3F15
            lda L3F16
            sbc L0625
            sta L3F16
            bne LAE10
            lda L0A38
            bne LAE10
            lda L3F28
            beq LAE10
            jsr LB5EC
            jsr L9889
            ldx #$00
            lda #$1C
            jsr L9778
            inx
            lda #$1D
            jsr L9778
LAE10:      lda L00D5
            and #$01
            tax
            ldy LAE2F,X
LAE18:      lda L0090,Y
            beq LAE2A
            lda L3FE0,Y
            bne LAE2A
            lda L0670,Y
            ora L0694,Y
            beq LAE31
LAE2A:      dey
            dey
            bpl LAE18
            rts
LAE2F:      asl CMCMD
LAE31:      lda #$00
            sta L0A2D
            lda L0090,Y
            sta L008B
            lda L0A80,Y
            sta L008A
            lda L0099
            sta L00FB
            lda L0A89
            sta L00FA
            ldx L065C,Y
            bpl LAE51
            jmp LB183
LAE51:      ldx L065C,Y
            jsr L95A5
            rol
            and #$01
            sta L00E9
            lda L0684,Y
            cmp #$02
            beq LAEBC
            lda L00F4
            beq LAECD
            cmp L0A80,Y
            bne LAECD
            lda L00F5
            cmp L0090,Y
            bcs LAECD
            lda L065C,Y
            lsr
            bcc LAE98
            lda L06A6,Y
            bne LAECD
            lda #$01
            sta L06A6,Y
            stx LOMEM
            inx
            inx
            txa
            and #$03
            tax
            jsr L95A5
            ldx LOMEM
            bcc LAE95
            jmp LB146
LAE95:      jmp LB16A
LAE98:      ldx #$02
            lda L0A80,Y
            sta L008A
            lda L0090,Y
            sta L008B
            jsr L95A5
            bcc LAEAC
            jmp LB013
LAEAC:      txa
            sta L065C,Y
            lda #$01
            sta L068C,Y
            lda #$02
            sta L0684,Y
            bne LAECD
LAEBC:      lda L00F4
            beq LAEC5
            cmp L0A80,Y
            beq LAECD
LAEC5:      lda #$00
            sta L0684,Y
            sta L068C,Y
LAECD:      lda L0A80,Y
            and #$07
            bne LAEDC
            lda L0090,Y
            jsr LB485
            bcc LAF17
LAEDC:      lda #$00
            sta L06A6,Y
            lda L3F28
            bne LAF10
            lda #$03
            cmp L0684,Y
            beq LAEF5
            sta L0684,Y
            lda #$FF
            sta L0A44
LAEF5:      lda L0A50
            beq LAEFF
            sta L0670,Y
            bne LAF10
LAEFF:      lda L0090,Y
            cmp #$04
            bne LAF10
            lda L0A80,Y
            cmp #$03
            bpl LAF10
            jmp LB49E
LAF10:      lda L00E9
            beq LAF1C
            jmp LB0A0
LAF17:      lda L06A6,Y
            beq LAF1F
LAF1C:      jmp LAE2A
LAF1F:      lda #$01
            sta L06A6,Y
            ldx L065C,Y
            lda L0099
            sta L00FB
            lda L0A89
            sta L00FA
            lda L0684,Y
            cmp #$03
            beq LAF46
            lda L0090,Y
            cmp L0099
            beq LAFA3
            lda L0A80,Y
            cmp L0A89
            beq LAF8D
LAF46:      jmp LB013
LAF49:      lda L0684,Y
            cmp #$03
            bne LAF53
            jmp LB011
LAF53:      ldx L065C,Y
            lda L0090,Y
            sec
            sbc L00FB
            bcs LAF67
            cpx #$00
            beq LAFB6
            ldx #$02
            jmp LAFD6
LAF67:      cpx #$02
            beq LAFB6
            ldx #$00
            jmp LAFD6
LAF70:      ldx L065C,Y
            lda L0A80,Y
            sec
            sbc L00FA
            bcs LAF84
            cpx #$03
            beq LAFB6
            ldx #$01
            jmp LAFD6
LAF84:      cpx #$01
            beq LAFB6
            ldx #$03
            jmp LAFD6
LAF8D:      jsr LAF49
            bcc LAFB3
            bmi LAF97
            jmp LB013
LAF97:      lda L00E9
            beq LB013
            jsr LAFD0
            bcs LB013
            jmp LAE2A
LAFA3:      jsr LAF70
            bcc LAFB3
            bpl LB013
            lda L00E9
            beq LB013
            jsr LAFD0
            bcs LB013
LAFB3:      jmp LAE2A
LAFB6:      lda L0684,Y
            cmp #$03
            beq LAFD0
            lda L00E9
            beq LAFC8
            lda RANDOM
            and #$07
            beq LAFD0
LAFC8:      lda #$FF
            sta L0A2D
            jmp LB011
LAFD0:      inx
            inx
            txa
            and #$03
            tax
LAFD6:      lda L0090,Y
            sta L008B
            lda L0A80,Y
            sta L008A
            jsr L95A5
            bcs LB011
            lda L0684,Y
            cmp #$02
            bne LB006
            lda L06A6,Y
            beq LB006
            lda L008A
            clc
            adc LB00D,X
            sta L008A
            lda L008B
            clc
            adc LB00C,X
            sta L008B
            jsr L95A5
            bcs LB011
LB006:      clc
            txa
            sta L065C,Y
            rts
LB00C:      .byte $00
LB00D:      .byte $00,$03,$00,$FD
LB011:      .byte $38,$60
LB013:      ldx L0684,Y
            beq LB05F
            dex
            beq LB024
            dex
            beq LB03D
            dex
            beq LB055
            jmp LAE2A
LB024:      ldx L3F28
            dex
            bpl LB032
            lda #$00
            sta L0684,Y
            jmp LB05F
LB032:      lda #$04
            sta L00FB
            lda #$7F
            sta L00FA
            jmp LB062
LB03D:      lda L065C,Y
            bne LB062
            lda L0A89
            sec
            sbc L0A80,Y
            eor #$FF
            clc
            adc #$01
            adc L0A80,Y
            sta L00FA
            bne LB062
LB055:      lda #$04
            sta L00FB
            lda #$01
            sta L00FA
            bne LB062
LB05F:      jmp LB062
LB062:      lda L06A6,Y
            beq LB0A0
            lda L0684,Y
            bne LB073
            lda L0090,Y
            cmp #$04
            beq LB087
LB073:      lda RANDOM
            and #$0F
            bne LB085
            lda L068C,Y
            eor #$01
            sta L068C,Y
            lda L068C,Y
LB085:      bne LB093
LB087:      jsr LAF49
            bcc LB09D
            jsr LAF70
            bcs LB0A0
            bcc LB09D
LB093:      jsr LAF70
            bcc LB09D
            jsr LAF49
            bcs LB0A0
LB09D:      jmp LAE2A
LB0A0:      lda L00E9
            beq LB09D
            ldx L0684,Y
            cpx #$02
            bne LB0C7
            lda L065C,Y
            lsr
            bcc LB0B5
            lda #$02
            bne LB0BD
LB0B5:      lda L065C,Y
            clc
            adc #$02
            and #$03
LB0BD:      sta L065C,Y
            lda #$00
            sta L00E9
            jmp LB03D
LB0C7:      dex
            beq LB0FC
            lda L0684,Y
            cmp #$03
            beq LB0E7
            lda L0A44
            bpl LB0FC
            lda L0090,Y
            cmp #$06
            bcc LB0FC
            ldx L3F08
            lda L00FF
            cmp LB12D,X
            bpl LB0FC
LB0E7:      lda #$40
            sta L0A44
            lda L04A2
            sta L0A94,Y
            inc L00FF
            lda #$14
            sta L06A6,Y
            jmp LB25B
LB0FC:      ldx L0684,Y
            dex
            bne LB112
            lda L0090,Y
            cmp #$04
            beq LB13C
            lda RANDOM
            and #$03
            bne LB112
            beq LB13C
LB112:      lda L06A6,Y
            bne LB146
            lda RANDOM
            and #$01
            sta L068C,Y
            lda RANDOM
            and #$0F
            bne LB146
            lda #$01
            sta L0684,Y
            bne LB146
LB12D:      .byte $01,$01,$01,$01,$02,$02,$02,$02
            .byte $02,$03,$03,$03,$03,$04,$04
LB13C:      lda #$00
            sta L0684,Y
            sta L068C,Y
            beq LB175
LB146:      lda L3F28
            cmp #$06
            bpl LB16A
            lda L06A6,Y
            beq LB16A
            lda RANDOM
            and #$02
            sec
            adc L065C,Y
            and #$03
            tax
            jsr L95A5
            bcs LB16A
            txa
            sta L065C,Y
            jmp LAE2A
LB16A:      lda RANDOM
            and #$01
            eor L068C,Y
            sta L068C,Y
LB175:      lda L065C,Y
            clc
            adc #$02
            and #$03
            sta L065C,Y
            jmp LAE2A
LB183:      lda #$00
            sta L0A2C
            ldx L06A6,Y
            beq LB195
            dex
            txa
            sta L06A6,Y
            jmp LB1C0
LB195:      stx L0A2D
            lda L0A80,Y
            and #$07
            beq LB1A4
            lda #$80
            sta L0A2D
LB1A4:      lda L0090,Y
            cmp #$A4
            bcs LB1C0
            cmp #$04
            bcc LB1C0
            jsr LB485
            bcc LB1C3
            lda #$40
            ora L0A2D
            sta L0A2D
            cmp #$C0
            bne LB1C3
LB1C0:      jmp LB251
LB1C3:      lda L065C,Y
            and #$7F
            sta L0A2E
            lsr
            tax
            lda LB21F,X
            bit L0A2D
            bne LB1DA
            jsr LB1F7
            bcc LB223
LB1DA:      lda L0A2E
            lsr
            bcc LB251
            rol
            clc
            adc #$01
            lsr
            and #$03
            tax
            lda LB21F,X
            bit L0A2D
            bne LB251
            jsr LB1F7
            bcs LB251
            bcc LB223
LB1F7:      lda L0A80,Y
            sta L008A
            lda L0090,Y
            sta L008B
            jsr L95A5
            bcs LB219
            lda L008A
            clc
            adc LB21B,X
            sta L008A
            lda L008B
            clc
            adc LB21A,X
            sta L008B
            jsr L95A5
LB219:      rts
LB21A:      .byte $04
LB21B:      .byte $00,$FC,$00,$04
LB21F:      .byte $80,$40,$80,$40
LB223:      txa
            sta L065C,Y
            lda L0666,Y
            cmp #$04
            bne LB233
            lda L049F
            bne LB236
LB233:      lda L04A0
LB236:      sta L0A94,Y
            dec L00FF
            lda L0684,Y
            cmp #$03
            bne LB24E
            lda L0090,Y
            cmp #$04
            bne LB24E
            lda #$03
            sta L065C,Y
LB24E:      jmp LAE2A
LB251:      sty LOMEM
            lda L00D5
            and #$07
            cmp LOMEM
            bne LB24E
LB25B:      lda L3F28
            bne LB26B
            lda #$03
            sta L0684,Y
            sta L00FB
            lda #$08
            sta L00FA
LB26B:      jsr LB29C
            bcs LB285
            stx LOMEM
            jsr LB2AE
            bcs LB28D
            txa
            asl
            ora LOMEM
            tax
            lda LB298,X
LB27F:      sta L065C,Y
            jmp LAE2A
LB285:      jsr LB2AE
            lda LB294,X
            bne LB27F
LB28D:      ldx LOMEM
            lda LB296,X
            bne LB27F
LB294:      .byte $82,$86
LB296:      .byte $80,$84
LB298:      .byte $81,$83,$87,$85
LB29C:      .byte $B9,$90,$00
            sec
            sbc L00FB
            beq LB2C0
            bcs LB2AA
            ldx #$01
            bne LB2BE
LB2AA:      ldx #$00
            beq LB2BE
LB2AE:      lda L0A80,Y
            sec
            sbc L00FA
            beq LB2C0
            bcs LB2BC
            ldx #$00
            beq LB2BE
LB2BC:      ldx #$01
LB2BE:      clc
            rts
LB2C0:      sec
            rts
            jmp LAE2A
LB2C5:      lda L00D5
            lsr
            bcc LB2F4
            lda L0A35
            bne LB2F4
            ldx #$09
            lda L00E7
            ora L0679
            bne LB2F4
            lda L3F07
            bne LB2F1
            lda L00ED
            beq LB2F1
            ldy #$20
            lda L0665
            lsr
            bcc LB2EB
            iny
            iny
LB2EB:      jsr LB3E4
            jmp LB2F4
LB2F1:      jsr LB3D2
LB2F4:      lda L00D5
            and #$01
            tay
            ldx LAE2F,Y
LB2FC:      lda L0694,X
            bne LB315
            lda L0670,X
            ora L3F0A,X
            bne LB310
            lda L0090,X
            beq LB310
            jsr LB3D2
LB310:      dex
            dex
            bpl LB2FC
            rts
LB315:      cmp #$40
            bpl LB34B
            bit L0A35
            bmi LB348
            lda L3F0A,X
            ora L3FE0,X
            bne LB348
            cpx L0A40
            bne LB332
            lda L00F3
            beq LB332
            jmp LB310
LB332:      lda L069E,X
            sec
            sbc L061E
            sta L069E,X
            lda L0694,X
            sbc #$00
            sta L0694,X
            cmp #$10
            bmi LB3BE
LB348:      jmp LB310
LB34B:      lda L069E,X
            clc
            adc L061C
            sta L069E,X
            lda L0694,X
            adc #$00
            sta L0694,X
            cmp #$48
            bmi LB310
            ldy L3F0A,X
            cpy #$01
            bne LB3A5
            inc L3F0A,X
            lda L0090,X
            jsr LB8F0
            lda L0666,X
            cmp #$04
            beq LB385
            lda L00E6
            lsr
            bcc LB385
            lda LB90B,Y
            pha
            lda LB907,Y
            bne LB38C
LB385:      lda LB903,Y
            pha
            lda LB8FF,Y
LB38C:      sta L0A8A,X
            lda L04A3
            sta L0A94,X
            pla
            tax
            jsr L96E2
            bit L00E7
            bvc LB3A2
            lda #$00
            sta L00EF
LB3A2:      jmp LB310
LB3A5:      cmp #$50
            bmi LB348
            lda #$00
            sta L0090,X
            sta L0694,X
            dec L0A2F
            dec L3F28
            bpl LB348
            jmp LB49E
            jmp LB310
LB3BE:      lda #$00
            sta L069E,X
            sta L0694,X
            sta L0670,X
            cpx L0A40
            bne LB3D1
            jsr LA845
LB3D1:      rts
LB3D2:      bit L0A35
            bmi LB3D1
            lda L065C,X
            bmi LB400
            and #$01
            asl
            clc
            adc L0666,X
            tay
LB3E4:      lda L065C,X
LB3E7:      lsr
            bcc LB3F5
            lsr
            bcs LB3F1
            jsr LB439
            rts
LB3F1:      jsr LB44D
            rts
LB3F5:      lsr
            bcs LB3FC
            jsr LB461
            rts
LB3FC:      jsr LB473
            rts
LB400:      lda L065C,X
            and #$7F
            lsr
            bcs LB416
            sta LOMEM
            and #$01
            asl
            clc
            adc #$0C
            tay
            lda LOMEM
            jmp LB3E7
LB416:      sta LOMEM
            ldy #$12
            cmp #$02
            bpl LB424
            jsr LB439
            jmp LB427
LB424:      jsr LB44D
LB427:      ldy #$10
            lda LOMEM
            beq LB435
            cmp #$03
            beq LB435
            jsr LB473
            rts
LB435:      jsr LB461
            rts
LB439:      clc
            lda L0648,X
            adc L0600,Y
            sta L0648,X
            lda L0A80,X
            adc L0601,Y
            sta L0A80,X
            rts
LB44D:      sec
            lda L0648,X
            sbc L0600,Y
            sta L0648,X
            lda L0A80,X
            sbc L0601,Y
            sta L0A80,X
            rts
LB461:      sec
            lda L0652,X
            sbc L0600,Y
            sta L0652,X
            lda L0090,X
            sbc L0601,Y
            sta L0090,X
            rts
LB473:      clc
            lda L0652,X
            adc L0600,Y
            sta L0652,X
            lda L0090,X
            adc L0601,Y
            sta L0090,X
            rts
LB485:      cmp #$04
            beq LB49A
            sec
            sbc #$13
            bcc LB49C
            lsr
            bcs LB49C
            lsr
            bcs LB49C
            tax
            lda L018E,X
            bne LB49C
LB49A:      clc
            rts
LB49C:      sec
            rts
LB49E:      inc L0A37
            lda #$00
            sta L00F4
            jsr LB590
            lda #$00
            sta L0A37
            jsr L9889
            ldx #$00
            lda #$03
            jsr L9778
            inx
            lda #$13
            jsr L9778
            ldx #$80
            jsr L9C4B
            jsr L9CAC
            jmp L800B
LB4C8:      jsr LB590
            lda L3F09
            cmp #$03
            bcs LB4D6
            lda #$FB
            bne LB4DD
LB4D6:      lda L3F16
            bne LB4E2
            lda #$02
LB4DD:      sta L3F16
            bne LB4F9
LB4E2:      cmp #$12
            bcc LB4F9
            lda RANDOM
            and #$1F
            sta LOMEM
            lda RANDOM
            and #$1F
            adc LOMEM
            adc #$0A
            sta L3F16
LB4F9:      lda L0A93
            cmp #$16
            bne LB50A
            lda L0099
            cmp #$A3
            bcc LB50A
            lda #$A3
            sta L0099
LB50A:      lda #$70
            sta L00DA
            lda #$00
            sta L00D9
            sta L00ED
            sta L0A50
            sta L0A33
            sta L0A32
LB51D:      jsr LA19B
            jsr LA0CE
            lda L0A3A
            bne LB51D
            lda L00D9
            sec
            sbc L061A
            sta L00D9
            lda L00DA
            sbc L061B
            sta L00DA
            bmi LB58A
            cmp #$60
            bpl LB51D
            pha
            ldx #$08
            lda #$00
LB542:      sta L0090,X
            dex
            bpl LB542
            pla
            cmp #$48
            bne LB56A
            dec L00DA
            jsr L9889
            ldx #$00
            lda #$05
            jsr L9778
            inx
            lda #$14
            jsr L9778
            inx
            lda #$15
            jsr L9778
            jsr LB580
            jsr L9E08
LB56A:      lda L00DA
            cmp #$4F
            bpl LB51D
            lda L00DA
            lsr
            lsr
            lsr
            lsr
            tax
            lda LB58B,X
            sta L0A93
            jmp LB51D
LB580:      lda L00FC
            beq LB58A
            and #$F0
            ora #$85
            sta L00FC
LB58A:      rts
LB58B:      ora (DSKUTL,X)
            ora L1718,Y
LB590:      lda #$C0
            sta L0A35
            lda #$00
            sta L00EF
            sta L00E7
            jsr LAA89
LB59E:      jsr LA19B
            jsr LA0CE
            lda L0A3A
            bne LB59E
            ora L0A30
            ora L00F4
            ora L0A2F
            beq LB5C2
            jsr LB2C5
            jsr LAB9E
            jsr L8EFB
            jsr L94FA
            jmp LB59E
LB5C2:      sta L0A35
            rts
LB5C6:      ldx #$26
LB5C8:      lda LB639,X
            sta L05FF,X
            dex
            bne LB5C8
            jsr LB68C
            lda L0A3C
            beq LB5DE
            ldx #$0E
            jsr LB626
LB5DE:      lda L3F09
            cmp #$13
            bmi LB5EB
            lda L061C
            sta L061E
LB5EB:      rts
LB5EC:      ldx #$26
LB5EE:      lda LB639,X
            sta L05FF,X
            dex
            bne LB5EE
            ldx #$08
LB5F9:      lda LB65F,X
            sta L0603,X
            dex
            bne LB5F9
            lda L00D6
            beq LB60E
            lda #$E0
            sta L0608
            sta L0604
LB60E:      jsr LB68C
            lda #$01
            sta L0A38
            lda L0A3C
            beq LB620
            ldx #$0E
            jsr LB626
LB620:      lda #$00
            sta L0A2B
            rts
LB626:      lda L0604,X
            pha
            lsr
            lsr
            sta LOMEM
            pla
            sec
            sbc LOMEM
            sta L0604,X
            dex
            dex
            bpl LB626
LB639:      rts
            .byte $CC,$00,$84,$00,$BA,$00,$78,$00
            .byte $BA,$00,$78,$00,$90,$00,$60,$00
            .byte $5C,$00,$3C,$00,$00,$01,$AE,$01
            .byte $40,$01,$B0,$00,$68,$00,$48,$00
            .byte $A8,$00,$6E,$00,$10
LB65F:      .byte $00,$EC,$00,$A2,$00,$EC,$00,$A2
LB667:      .byte $00,$E0,$00,$C0,$00
LB66C:      lda LOMEM+1
            sec
            sbc L0099
            bcs LB677
            eor #$FF
            adc #$01
LB677:      cmp LOMEM
            bcs LB68B
            lda L0083
            sec
            sbc L0A89
            bcs LB687
            eor #$FF
            adc #$01
LB687:      cmp L0082
            bcs LB68B
LB68B:      rts
LB68C:      ldx L00D6
            beq LB68B
            dex
LB691:      lda L0601,X
            sta LOMEM
            lda L0600,X
            sta LOMEM+1
            lsr LOMEM
            ror LOMEM+1
            lsr LOMEM
            ror LOMEM+1
            lsr LOMEM
            ror LOMEM+1
            clc
            lda L0600,X
            adc LOMEM+1
            sta L0600,X
            lda L0601,X
            adc LOMEM
            sta L0601,X
            inx
            inx
            cpx #$26
            bcc LB691
            lda L0600
            cmp #$FC
            beq LB6D9
            lda #$D4
            sta L0600
            lda #$AD
            sta L0620
            lda #$7A
            sta L0602
            lda #$64
            sta L0622
LB6D9:      rts
LB6DA:      lda CONSOL
            and #$07
            tay
            lda LB7CD,Y
            bne LB6F3
            lda CH
            ldx #$00
            stx CH
            cmp #$21
            bne LB705
            lda #$01
LB6F3:      ldx L00F1
            bne LB6FD
            sta L00F2
            ldx #$20
            stx L00F1
LB6FD:      cmp #$01
            bne LB705
            ldx #$0A
            stx L00F1
LB705:      ldy L3FFA
            bne LB723
            ldy L3FF9
            bne LB75D
            lda L0A3B
            bne LB717
            jmp LB791
LB717:      lda TRIG0
            bne LB723
            lda #$01
            sta L00F3
            jmp LB7DB
LB723:      lda L00F2
            cmp #$FF
            beq LB74B
            cmp #$06
            bne LB734
            lda #$00
            sta L3FFA
            beq LB74B
LB734:      cmp #$05
            beq LB743
            cmp #$03
            beq LB743
            cmp #$01
            beq LB743
            jmp LB7C1
LB743:      lda #$00
            sta L3FFA
            jmp LB7D5
LB74B:      jsr LB8E6
            jmp L7FC4
            sbc L8D3F,Y
            .byte $FC,$3F
            txa
            sta L8825,X
            jmp L8666
LB75D:      lda L00F2
            cmp #$06
            beq LB74B
            cmp #$05
            beq LB786
            cmp #$03
            beq LB76E
            jmp LB7C1
LB76E:      ldx L3FFE
            lda LB91F,X
LB774:      inx
            cmp LB91F,X
            beq LB774
            cpx #$13
            bmi LB780
            ldx #$00
LB780:      stx L3FFE
            jmp LB7C1
LB786:      lda L3FFD
            eor #$01
            sta L3FFD
            jmp LB7C1
LB791:      lda L00F2
            cmp #$06
            bne LB79A
            jmp LB74B
LB79A:      cmp #$05
            bne LB7A1
LB79E:      jmp LB743
LB7A1:      cmp #$03
            beq LB79E
            lda L00F2
            cmp #$01
            beq LB7AE
            jmp LB7C1
LB7AE:      lda L0A3A
            eor #$01
            sta L0A3A
            lda #$03
            sta L3FFB
            jsr L987E
            jmp LB7C1
LB7C1:      lda #$00
            ldy L00F2
            beq LB7CA
            sta L3FFC
LB7CA:      sta L00F2
            rts
LB7CD:      .byte $00,$00,$00,$03,$00,$05,$06,$00
LB7D5:      jsr LB8E6
            jmp L8661
LB7DB:      jsr L987E
            lda L0A3C
            pha
            lda L3F09
            pha
            lda L3F08
            pha
            lda L3F32
            pha
            lda L3F31
            pha
            lda L3FFE
            ora #$80
            sta L3FFE
            sta L3FFC
            jmp L8666
;
            org $02E0
;
            .word $7D00
;
         
