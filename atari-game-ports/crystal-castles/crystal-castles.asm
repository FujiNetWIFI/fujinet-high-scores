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
L0094       = $0094
L0096       = $0096
L0097       = $0097
L0098       = $0098
L0099       = $0099
L009A       = $009A
L009B       = $009B
L009C       = $009C
L009D       = $009D
L009F       = $009F
L00A0       = $00A0
L00A1       = $00A1
L00A2       = $00A2
L00A3       = $00A3
L00A4       = $00A4
L00A5       = $00A5
L00A6       = $00A6
L00A8       = $00A8
L00A9       = $00A9
L00AA       = $00AA
L00AB       = $00AB
L00AC       = $00AC
L00B0       = $00B0
L00B4       = $00B4
L00B8       = $00B8
L00B9       = $00B9
L00BC       = $00BC
L00BD       = $00BD
L00C0       = $00C0
L00C2       = $00C2
L00C4       = $00C4
L00C8       = $00C8
L00C9       = $00C9
L00CA       = $00CA
L00CC       = $00CC
L00CE       = $00CE
L00D0       = $00D0
L00D1       = $00D1
L00D2       = $00D2
L00D4       = $00D4
L00D6       = $00D6
L00D8       = $00D8
L00D9       = $00D9
L00DC       = $00DC
L00DD       = $00DD
L00E2       = $00E2
L00E3       = $00E3
L00E4       = $00E4
L00E5       = $00E5
L00E6       = $00E6
L00E7       = $00E7
L00EA       = $00EA
L00EB       = $00EB
L00EC       = $00EC
L00ED       = $00ED
L00EE       = $00EE
L00F0       = $00F0
L00F3       = $00F3
L00F4       = $00F4
L00F6       = $00F6
L00F7       = $00F7
L00F8       = $00F8
L00F9       = $00F9
L00FA       = $00FA
L00FB       = $00FB
L00FF       = $00FF
L0400       = $0400
L04EF       = $04EF
L04F0       = $04F0
L04F1       = $04F1
L04FF       = $04FF
L0500       = $0500
L0501       = $0501
L05FF       = $05FF
L0600       = $0600
L06FF       = $06FF
L0700       = $0700
L07FF       = $07FF
L0800       = $0800
L08FF       = $08FF
L0900       = $0900
L09EF       = $09EF
L09FF       = $09FF
L0A00       = $0A00
L0AF0       = $0AF0
L0B00       = $0B00
L0BF1       = $0BF1
L0C00       = $0C00
L0D00       = $0D00
L0DF0       = $0DF0
L0DFF       = $0DFF
L0E00       = $0E00
L0E01       = $0E01
L0E10       = $0E10
L0F00       = $0F00
L0F47       = $0F47
L1000       = $1000
L1100       = $1100
L11B2       = $11B2
L1200       = $1200
L1300       = $1300
L1400       = $1400
L1500       = $1500
L1600       = $1600
L1700       = $1700
L1800       = $1800
L1900       = $1900
L1901       = $1901
L1910       = $1910
L1911       = $1911
L19FF       = $19FF
L1A00       = $1A00
L1A01       = $1A01
L1A02       = $1A02
L1A03       = $1A03
L1A07       = $1A07
L1A08       = $1A08
L1A09       = $1A09
L1A0B       = $1A0B
L1A0C       = $1A0C
L1A0F       = $1A0F
L1A10       = $1A10
L1A18       = $1A18
L1A1C       = $1A1C
L1A20       = $1A20
L1A28       = $1A28
L1A30       = $1A30
L1A31       = $1A31
L1A34       = $1A34
L1A36       = $1A36
L1A37       = $1A37
L1A38       = $1A38
L1A40       = $1A40
L1A47       = $1A47
L1A48       = $1A48
L1A4B       = $1A4B
L1A4F       = $1A4F
L1A50       = $1A50
L1A51       = $1A51
L1A52       = $1A52
L1A53       = $1A53
L1A54       = $1A54
L1A58       = $1A58
L1A60       = $1A60
L1A64       = $1A64
L1A68       = $1A68
L1A6C       = $1A6C
L1A70       = $1A70
L1A74       = $1A74
L1A78       = $1A78
L1A80       = $1A80
L1A88       = $1A88
L1A90       = $1A90
L1A98       = $1A98
L1AA0       = $1AA0
L1AA8       = $1AA8
L1AB0       = $1AB0
L1AB8       = $1AB8
L1BB8       = $1BB8
L1BB9       = $1BB9
L1BBA       = $1BBA
L1BBB       = $1BBB
L1BBC       = $1BBC
L1BBD       = $1BBD
L1BBE       = $1BBE
L1BBF       = $1BBF
L1BC0       = $1BC0
L1BC1       = $1BC1
L1BC2       = $1BC2
L1BC3       = $1BC3
L1BC4       = $1BC4
L1BD4       = $1BD4
L1C35       = $1C35
L1C36       = $1C36
L1C37       = $1C37
L1C38       = $1C38
L1C3F       = $1C3F
L1C40       = $1C40
L1C41       = $1C41
L1C42       = $1C42
L1C43       = $1C43
L1C73       = $1C73
L1CA3       = $1CA3
L1CD3       = $1CD3
L1D03       = $1D03
L1D06       = $1D06
L1D33       = $1D33
L1D34       = $1D34
L1D35       = $1D35
L1D37       = $1D37
L1D38       = $1D38
L1D3A       = $1D3A
L1D3B       = $1D3B
L1D3C       = $1D3C
L1D3F       = $1D3F
L1D42       = $1D42
L1D43       = $1D43
L1D49       = $1D49
L1D4A       = $1D4A
L1D4B       = $1D4B
L1D4C       = $1D4C
L1D53       = $1D53
L1D54       = $1D54
L1D5B       = $1D5B
L1D5C       = $1D5C
L1D5D       = $1D5D
L1D5E       = $1D5E
L1D5F       = $1D5F
L1D60       = $1D60
L1D61       = $1D61
L1D62       = $1D62
L1D68       = $1D68
L1E68       = $1E68
L1E70       = $1E70
L1F40       = $1F40
L1F70       = $1F70
L1F71       = $1F71
L1F72       = $1F72
L1F73       = $1F73
L1F90       = $1F90
L1F91       = $1F91
L1F92       = $1F92
L1F93       = $1F93
L1FB0       = $1FB0
L2300       = $2300
L2400       = $2400
L2500       = $2500
L2600       = $2600
L2700       = $2700
L2A0E       = $2A0E
L2E20       = $2E20
L3800       = $3800
L6040       = $6040
L8873       = $8873
L9F04       = $9F04
LA4CA       = $A4CA
LABD6       = $ABD6
LABD8       = $ABD8
LB1B0       = $B1B0
LD1FF       = $D1FF
LF025       = $F025
;
; Start of code
;
            ORG $8000
;
L8000:      ldx #$00
            txs
            jsr LABD6
            jsr LABFB
            jsr LAC06
            lda #$84
            sta VKEYBD+1
            lda #$7D
            sta VKEYBD
            ldx #$82
            ldy #$8D
            lda #$07
            jsr SETVBV
            lda #$00
            sta AUDCTL
            lda #$03
            sta L1C42
            sta SSKCTL
            sta SKCTL
            lda #$40
            sta POKMSK
            sta IRQEN
            sta L1D3A
            lda #$00
            sta SDMCTL
            sta NMIEN
            sta COLOR4
            jsr L8427
            jsr L8456
            lda #$3D
            sta SDMCTL
            lda #$C0
            sta NMIEN
            lda #$00
            sta L00FF
            sta L1D3A
            sta L00F3
            lda #$55
            sta L1C42
            sta L1D3B
            sta L1A48
            jsr LB15F
            lda #$01
            sta L00E5
            lda #$0E
            sta L1A10
            lda #$FF
            sta SIZEM
            jsr L868E
            jsr L866C
            jsr L86D2
            jsr L86B0
            lda #$00
            sta L0094
            jsr LA1D8
            jsr LA085
            jsr L83E4
            lda RANDOM
            and #$1F
            sta L0094
            jsr LA1D8
            jsr LA1A7
            jsr LA4CA
            jsr L8705
            jsr L854F
            jsr L88AC
            lda #$10
            sta L1D5B
            jsr LB2C3
            jsr LB27B
            lda L1C3F
            jsr L83A6
            lda L1C40
            jsr L837F
            jsr LB3C8
            lda L1C41
            bpl L80CD
            jsr LB3CF
L80CD:      jmp L80CD
L80D0:      ldy L1D62
            dey
            sty L1D5D
            lda #$00
            sta L1D62
            ldy #$05
            sty L1BB8
            sty L1BBB
            ldy #$FF
            sty L0094
            jsr LB280
            jsr LA653
            lda L00ED
            beq L80F9
            lda #$03
            sta L00EE
            jsr LB1B0
L80F9:      lda #$00
            sta L00EE
            jsr LB1B0
L8100:      lda L1C42
            bne L8114
            jsr L83CE
            beq L8114
            ldy L1D5D
            iny
            sty L1D62
            jmp L8000
L8114:      sta L1C42
            jsr L83CE
            bne L8121
            lda #$00
            sta L1C42
L8121:      lda L1D3C
            bmi L8100
            lda L00FF
            cmp #$02
            bne L812F
            jmp L8211
L812F:      and #$01
            beq L8100
            lda L00FF
            cmp #$07
            bne L81A1
            jsr LB1B0
            jsr LAC60
            jsr L84AA
            jsr LA584
            ldy #$09
            jsr LB82A
            ldy #$09
            jsr L8474
            jsr LAD11
            jsr LA0A5
            jsr L8447
            ldx L00EE
            dec L1BB8,X
            beq L8172
            lda L00ED
            beq L816F
L8163:      lda L00EE
            eor #$03
            sta L00EE
            jsr L83E4
            jmp L8219
L816F:      jmp L826B
L8172:      jsr LB531
            ldy #$05
            jsr LB82A
            ldy #$05
L817C:      jsr L8474
            ldy L0094
            cpy #$1D
            bcc L8187
            ldy #$1D
L8187:      dey
            tya
            and #$FC
            cmp L1D62
            bcc L8193
            sta L1D62
L8193:      lda L00ED
            beq L819E
            lda #$00
            sta L00ED
            jmp L8163
L819E:      jmp L8000
L81A1:      ldy #$04
            lda #$FF
L81A5:      sta L1A88,Y
            dey
            bpl L81A5
            ldy #$07
            lda #$00
L81AF:      sta L1A30,Y
            dey
            bpl L81AF
            lda #$00
            sta L1A18
            lda #$FD
            sta L1A08
            lda #$10
            sta L1A50
            jsr L8447
            lda L00FF
            cmp #$01
            beq L8201
            cmp #$05
            beq L81DE
            jsr LB47C
            ldy #$07
            jsr LB82A
            ldy #$07
            jmp L820E
L81DE:      ldx L00EE
            lda #$05
            sta L1BB8,X
            jsr LB4BC
            ldx L0094
            inx
            txa
            lsr
            lsr
            sta L1D5F
            jsr LB1B0
            jsr LB1B0
            ldy #$0E
            jsr LB82A
            ldy #$0E
            jmp L820E
L8201:      jsr LB434
            jsr LB1B0
            ldy #$06
            jsr LB82A
            ldy #$06
L820E:      jsr L8474
L8211:      inc L0094
            jsr LA1D8
            jsr LA085
L8219:      lda #$02
            sta L00FF
            ldy L0094
            cpy #$25
            bne L8242
            ldx L00EE
            lda L1BB8,X
            adc #$01
            asl
            asl
            asl
            asl
            asl
            sta L1D3F
            jsr LB1B0
            jsr LB522
            ldy #$06
            jsr LB82A
            ldy #$06
            jmp L817C
L8242:      jsr LB4E9
            jsr LA1A7
            jsr LA4CA
            jsr L8705
            jsr LAB30
            jsr L854F
            jsr LB2C3
            jsr LA21A
            lda L0094
            bne L8268
            lda L1D5D
            bmi L8268
            lda #$80
            sta L0F47
L8268:      jsr L88AC
L826B:      jsr LAE21
            jsr LAD59
            jsr LA0A5
            jsr LADD9
            lda #$01
            sta L0087
            lda #$F0
            sta L009F
            lda #$0D
            sta L00A0
            jsr LB4BC
            lda #$04
            sta L00FF
            jmp L8100
            lda L00FF
            cmp #$00
            bne L82A9
            jsr L835F
            jsr LB878
            jmp XITVBV
L829C:      lda #$00
            ldy #$07
L82A0:      sta AUDF1,Y
            dey
            bpl L82A0
            jmp XITVBV
L82A9:      lda L1D3C
            bmi L829C
            lda L00FF
            and #$03
            bne L82F2
            lda L0086
            eor #$01
            sta L0086
            bne L82F8
            jsr LAE21
            jsr LAD59
            jsr LB0F0
            jsr LADD9
            jsr LAC9F
            lda L00FF
            cmp #$04
            bne L82DA
            lda #$00
            sta L1A50
            lda #$80
            sta L00FF
L82DA:      lda L00FF
            cmp #$80
            bne L82E3
            jsr LAFE6
L82E3:      lda L00FF
            and #$80
            beq L82EC
            jsr LB1B0
L82EC:      jsr LAC60
            jsr L84AA
L82F2:      jsr LB878
            jmp XITVBV
L82F8:      jsr L834D
            jsr LA584
            jsr LB878
            lda L00FF
            and #$80
            beq L832D
            lda L0087
            eor #$01
            sta L0087
            jsr L9F04
            jsr L8356
            jsr L9F04
            jsr L834D
            lda L00FF
            and #$40
            beq L832D
            lda #$00
            sta L00EC
            jsr L97F6
            lda #$FF
            sta L00EC
            jsr L97F6
L832D:      lda L00FF
            cmp #$02
            beq L834A
            cmp #$07
            beq L834A
            jsr L9CF5
            jsr L9E28
L833D:      lda VCOUNT
            cmp #$66
            bcc L833D
            jsr LAD11
            jsr L9E65
L834A:      jmp XITVBV
L834D:      asl L00E5
            bcc L8355
            lda #$01
            sta L00E5
L8355:      rts
L8356:      lsr L00E5
            bcc L8355
            lda #$80
            sta L00E5
            rts
L835F:      lda L1C42
            bne L83C3
            jsr L83CE
            beq L83C3
            sta ATRACT
            sta L1C42
            cmp #$05
            beq L8395
            bcs L83B9
            lda #$80
            eor L1C40
            jsr L837F
            jmp L83C3
L837F:      and L1C3F
            sta L1C40
            bne L838E
            lda #$00
            sta L00F0
            jmp LB40E
L838E:      lda #$01
            sta L00F0
            jmp LB41B
L8395:      lda #$80
            sta L1D06
            eor L1C3F
            sta L1C3F
            jsr L83A6
            jmp L83C3
L83A6:      bne L83B2
            sta L00ED
            sta L00F0
            jsr LB3E8
            jmp LB40E
L83B2:      lda #$01
            sta L00ED
            jmp LB3F5
L83B9:      lda #$02
            sta L00FF
            jsr L8427
            jmp L80D0
L83C3:      jsr L83CE
            bne L83CD
            lda #$00
            sta L1C42
L83CD:      rts
L83CE:      lda #$08
            sta CONSOL
            lda #$07
            ldy L00FF
            bne L83DE
            lda STRIG0
            ora #$06
L83DE:      and CONSOL
            cmp #$07
            rts
L83E4:      ldy #$00
L83E6:      ldx L1000,Y
            lda L1AB8,Y
            sta L1000,Y
            txa
            sta L1AB8,Y
            dey
            bne L83E6
            ldy #$07
L83F8:      ldx L1AB0,Y
            lda L1A30,Y
            sta L1AB0,Y
            txa
            sta L1A30,Y
            dey
            bne L83F8
            lda L1BBC
            ldx L00A3
            sta L00A3
            stx L1BBC
            lda L1BB9
            ldx L00A2
            sta L00A2
            stx L1BB9
            lda L1BBA
            ldx L0094
            sta L0094
            stx L1BBA
            rts
L8427:      lda #$00
            ldx #$06
L842B:      sta L1C35,X
            dex
            bne L842B
L8431:      sta L1D3A
            sta L2300,X
            sta L2400,X
            sta L2500,X
            sta L2600,X
            sta L2700,X
            dex
            bne L8431
            rts
L8447:      jsr L97F6
            jsr LB0F0
            jsr LAC60
            jsr L84AA
            jsr LA584
L8456:      lda #$00
            sta L1D61
            ldx #$2F
L845D:      sta L1D03,X
            sta L1CD3,X
            dex
            bpl L845D
            lda #$FF
            ldx #$2F
L846A:      sta L1C43,X
            dex
            bpl L846A
            sta L1D61
            rts
L8474:      ldx LB858,Y
            lda L1D03,X
            bne L8474
            rts
            lda KBCODE
            cmp #$21
            bne L8494
            lda L00FF
            beq L8496
            lda #$80
            eor L1D3C
            sta L1D3C
            bne L8494
            sta ATRACT
L8494:      pla
            rti
L8496:      lda #$80
            eor L1C41
            sta L1C41
            bmi L84A5
            jsr LB3C8
            pla
            rti
L84A5:      jsr LB3CF
            pla
            rti
L84AA:      ldx #$03
L84AC:      lda L00C0,X
            sta L00A8,X
            dex
            bpl L84AC
            ldy #$03
L84B5:      sty L00A4
            ldx L1A00,Y
            lda L1A08,Y
            sta L00AC,X
            lda L1A30,Y
            and #$80
            ora L1A10,Y
            sta L00B0,X
            lda L1A18,Y
            sta L00B4,X
            lda L1A20,Y
            sta L00C4,X
            lda L1A50,Y
            sta L00C0,X
            lda L1A58,Y
            sta L00B8,X
            ldy L00AC,X
            lda L1800,Y
            ldy L00A4
            and L1A28,Y
            ldy L00B0,X
            bpl L84ED
            and #$F0
L84ED:      sta PCOLR0,X
            ldy L00A4
            dey
            bpl L84B5
            ldx #$03
L84F7:      stx L00A4
            ldy L00AC,X
            lda L00B0,X
            bpl L8509
            eor #$80
            sta L00A5
            lda L1600,Y
            jmp L850E
L8509:      sta L00A5
            lda L1200,Y
L850E:      clc
            adc L00C0,X
            ldx L00A5
            adc LA4AD,X
            ldx L00A4
            sta L00C0,X
            lda L1100,Y
            clc
            ldx L00A5
            adc LA490,X
            ldx L00A4
            sta L00BC,X
            clc
            adc L00B8,X
            sta L00B8,X
            ldy L00B4,X
            tya
            asl
            tay
            txa
            asl
            tax
            lda LA696,Y
            sta L00C8,X
            lda LA697,Y
            sta L00C9,X
            lda LA6F4,Y
            sta L00D0,X
            lda LA6F5,Y
            sta L00D1,X
            txa
            lsr
            tax
            dex
            bpl L84F7
            rts
L854F:      jsr L857D
            jsr L85B2
            lda #$00
            sta L008E
L8559:      jsr L865F
            ldy #$00
            ldx #$00
            lda #$09
            sta LOMEM
            lda (L008C),Y
L8566:      jsr L85F4
            dec LOMEM
            bne L8566
            inc L008E
            beq L8574
            jmp L8559
L8574:      lda L3800
            and #$3F
            sta L3800
            rts
L857D:      lda #$10
            sta LOMEM
            sta L008E
L8583:      dec L008E
            jsr L865F
            ldy #$01
            ldx #$43
            clc
            lda #$60
            adc L008C
            sta L008C
            lda #$FF
            adc L008D
            sta L008D
L8599:      lda #$00
            sta (L008C),Y
            clc
            lda #$E0
            adc L008C
            sta L008C
            lda #$FF
            adc L008D
            sta L008D
            dex
            bne L8599
            dec LOMEM
            bne L8583
            rts
L85B2:      lda #$10
            sta LOMEM
            lda #$00
            sta L008E
L85BA:      lda L008E
            clc
            adc #$F0
            sta L008E
            jsr L865F
            ldy #$00
            ldx #$43
            clc
            lda #$60
            adc L008C
            sta L008C
            lda #$FF
            adc L008D
            sta L008D
L85D5:      lda #$00
            sta (L008C),Y
            clc
            lda #$E0
            adc L008C
            sta L008C
            lda #$FF
            adc L008D
            sta L008D
            dex
            bne L85D5
            dec LOMEM
            bne L85BA
            rts
L85EE:      sta (L008C),Y
            iny
            lda (L008C),Y
            rts
L85F4:      ora L86EA,X
            jsr L85EE
            inx
            ora L86EA,X
            jsr L85EE
            inx
            ora L86EA,X
            inx
L8606:      sta (L008C),Y
            clc
            lda #$E0
            adc L008C
            sta L008C
            lda #$FF
            adc L008D
            sta L008D
            ldy #$00
            lda (L008C),Y
            rts
L861A:      lda L008E
            and #$0F
            sta L008F
            lda L008E
            lsr
            lsr
            lsr
            lsr
            sta L0090
            lda #$EF
            sta L008C
            lda #$30
            sta L008D
            ldy L008F
            tya
            asl
            tay
            lda L1F70,Y
            clc
            adc L008C
            sta L008C
            lda L1F71,Y
            adc L008D
            sta L008D
            tya
            lsr
            tay
            ldy L0090
            tya
            asl
            tay
            lda L1F90,Y
            clc
            adc L008C
            sta L008C
            lda L1F91,Y
            adc L008D
            sta L008D
            tya
            lsr
            tay
            rts
L865F:      ldy L008E
            lda L1400,Y
            sta L008C
            lda L1500,Y
            sta L008D
            rts
L866C:      ldy #$00
            lda #$7D
L8670:      sta L1100,Y
            iny
            beq L868D
            sta LOMEM
            tya
            and #$0F
            beq L8685
            lda LOMEM
            clc
            adc #$04
            jmp L8670
L8685:      lda LOMEM
            clc
            adc #$C0
            jmp L8670
L868D:      rts
L868E:      ldy #$00
            lda #$64
L8692:      sta L1600,Y
            iny
            beq L86AF
            sta LOMEM
            tya
            and #$0F
            beq L86A7
            lda LOMEM
            clc
            adc #$04
            jmp L8692
L86A7:      lda LOMEM
            clc
            adc #$C8
            jmp L8692
L86AF:      rts
L86B0:      ldy #$00
            lda #$39
L86B4:      sta L1700,Y
            iny
            beq L86D1
            sta LOMEM
            tya
            and #$0F
            beq L86C9
            lda LOMEM
            clc
            adc #$04
            jmp L86B4
L86C9:      lda LOMEM
            clc
            adc #$C8
            jmp L86B4
L86D1:      rts
L86D2:      lda #$00
            sta L008E
L86D6:      jsr L861A
            ldy L008E
            lda L008C
            sta L1400,Y
            lda L008D
            sta L1500,Y
            inc L008E
            bne L86D6
            rts
L86EA:      .byte $00,$C0,$00,$03,$F0,$00,$0F,$FC
            .byte $00,$3F,$FF,$00,$FF,$FF,$C0,$3F
            .byte $FF,$00,$0F,$FC,$00,$03,$F0,$00
            .byte $00,$C0,$00
L8705:      ldy L0094
            tya
            asl
            tay
            lda L8BB4,Y
            sta L0088
            lda L8BB5,Y
            sta L0089
            tya
            lsr
            tay
            ldx #$00
            ldy #$00
L871B:      lda (L0088),Y
            sta LOMEM
L871F:      lda LOMEM
            clc
            rol
            sta LOMEM
            bcs L872F
            lda #$00
            sta L0500,X
            jsr L889F
L872F:      inx
            txa
            and #$07
            bne L871F
            iny
            cpy #$20
            bne L871B
            ldy #$01
L873C:      lda L04FF,Y
            sta L0D00,Y
            iny
            bne L873C
            ldy #$00
L8747:      lda #$00
            sta L0D00,Y
            tya
            clc
            adc #$10
            tay
            bne L8747
            ldy #$00
L8755:      lda L0501,Y
            sta L0900,Y
            iny
            bne L8755
            ldy #$10
L8760:      lda #$00
            sta L08FF,Y
            tya
            clc
            adc #$10
            tay
            bne L8760
            ldy #$10
L876E:      lda L04F1,Y
            sta L0800,Y
            iny
            bne L876E
            ldy #$10
L8779:      lda #$00
            sta L07FF,Y
            dey
            bne L8779
            ldy #$1F
L8783:      lda #$00
            sta L0800,Y
            tya
            clc
            adc #$10
            tay
            cmp #$0F
            bne L8783
            ldy #$11
L8793:      lda L0500,Y
            sta L09EF,Y
            iny
            bne L8793
            ldy #$F0
L879E:      lda #$00
            sta L0A00,Y
            iny
            bne L879E
            ldy #$10
L87A8:      lda #$00
            sta L09FF,Y
            tya
            clc
            adc #$10
            tay
            bne L87A8
            ldy #$10
L87B6:      lda L04F0,Y
            sta L0700,Y
            iny
            bne L87B6
            ldy #$10
L87C1:      lda #$00
            sta L06FF,Y
            dey
            bne L87C1
            ldy #$10
L87CB:      lda L0500,Y
            sta L0AF0,Y
            iny
            bne L87CB
            ldy #$F0
L87D6:      lda #$00
            sta L0B00,Y
            iny
            bne L87D6
            ldy #$11
L87E0:      lda L04EF,Y
            sta L0600,Y
            iny
            bne L87E0
            ldy #$10
L87EB:      lda #$00
            sta L0600,Y
            tya
            clc
            adc #$10
            tay
            bne L87EB
            ldy #$10
L87F9:      lda #$00
            sta L05FF,Y
            dey
            bne L87F9
            ldy #$0F
L8803:      lda L0500,Y
            sta L0BF1,Y
            iny
            bne L8803
            ldy #$00
L880E:      lda #$00
            sta L0C00,Y
            tya
            clc
            adc #$10
            tay
            bne L880E
            ldy #$F0
L881C:      lda #$00
            sta L0C00,Y
            iny
            bne L881C
            ldy #$00
            lda #$00
L8828:      sta L0E00,Y
            iny
            bne L8828
            ldx #$04
L8830:      jsr L8873
            dex
            bne L8830
            ldy #$00
            lda #$64
L883A:      sta L1200,Y
            iny
            beq L8857
            sta LOMEM
            tya
            and #$0F
            beq L884F
            lda LOMEM
            clc
            adc #$04
            jmp L883A
L884F:      lda LOMEM
            clc
            adc #$C8
            jmp L883A
L8857:      ldy #$00
L8859:      sec
            lda L1200,Y
            sbc L0500,Y
            sta L1200,Y
            iny
            bne L8859
            rts
            .byte $00,$00,$00
L886A:      .byte $00,$07,$09,$0B
L886E:      .byte $0D,$40,$10,$04
            ora (L00BD,X)
            ror L0088
            sta L0088
            lda L886A,X
            sta L0089
            lda L886E,X
            sta LOMEM
            ldy #$00
L8884:      lda L0500,Y
            beq L889B
            sec
            sbc (L0088),Y
            clc
            adc #$03
            cmp #$07
            bcs L889B
            lda L0E00,Y
            ora LOMEM
            sta L0E00,Y
L889B:      iny
            bne L8884
            rts
L889F:      lda L1000,X
            beq L88AB
            lda #$00
            sta L1000,X
            dec L00A2
L88AB:      rts
L88AC:      lda #$00
            sta L008E
L88B0:      jsr L865F
            ldy L008E
            lda L0500,Y
            cmp #$04
            bcs L88BF
            jmp L8AE6
L88BF:      sta LOMEM
            lda L0800,Y
            sta L0082
            lda L0D00,Y
            sta L0083
            lda L0700,Y
            sta L0084
            lda L0600,Y
            sta LOMEM+1
            lda L0F00,Y
            sta L0092
            lda L1000,Y
            sta L0093
            lda #$00
            sta L0091
            ldy #$00
            lda (L008C),Y
            jsr L85EE
            and #$3F
            jsr L8AEE
            and #$FC
            jsr L85EE
            and #$0F
            ora #$10
            jsr L8AEE
            and #$F0
            ora #$02
            jsr L85EE
            and #$03
            ora #$14
            jsr L8AEE
            and #$C0
            ora #$0A
            jsr L85EE
            and #$00
            ora #$15
            jsr L8AEE
            and #$00
            ora #$2A
            jsr L85EE
            and #$00
            ora #$15
            jmp L89F3
L8925:      lda LOMEM
            cmp L0091
            bne L892E
            jmp L8A0A
L892E:      inc L0091
            ldy #$00
            lda (L008C),Y
            and #$00
            ldx L0092
            beq L8977
            ldx L0091
            cpx #$18
            bcs L8977
            cpx #$17
            beq L8955
            cpx #$15
            beq L8966
            jsr L85EE
            and #$00
            jsr L85EE
            and #$3F
            jmp L899F
L8955:      ora #$2A
            jsr L85EE
            and #$00
            ora #$15
            jsr L85EE
            and #$3F
            jmp L899F
L8966:      ora #$02
            jsr L85EE
            and #$00
            ora #$10
            jsr L85EE
            and #$3F
            jmp L899F
L8977:      ldx L0091
            cpx L0083
            bcc L8985
            cpx LOMEM
            beq L8985
            ora #$2A
            bne L8987
L8985:      ora #$AA
L8987:      jsr L85EE
            and #$00
            ora #$15
            jsr L85EE
            and #$3F
            ldx L0091
            cpx L0082
            bcc L899F
            cpx L0084
            bcs L899F
            ora #$40
L899F:      jsr L8606
            lda LOMEM
            cmp L0091
            beq L8A0A
            inc L0091
            ldy #$00
            lda (L008C),Y
            and #$00
            ldx L0092
            beq L89DC
            ldx L0091
            cpx #$18
            bcs L89DC
            cpx #$16
            beq L89CB
            jsr L85EE
            and #$00
            jsr L85EE
            and #$3F
            jmp L8A04
L89CB:      ora #$0A
            jsr L85EE
            and #$00
            ora #$14
            jsr L85EE
            and #$3F
            jmp L8A04
L89DC:      ldx L0091
            cpx L0083
            bcc L89EA
            cpx LOMEM
            beq L89EA
            ora #$2A
            bne L89EC
L89EA:      ora #$AA
L89EC:      jsr L85EE
            and #$00
            ora #$15
L89F3:      jsr L85EE
            and #$3F
            ldx L0091
            cpx L0082
            bcc L8A04
            cpx L0084
            bcs L8A04
            ora #$40
L8A04:      jsr L8606
            jmp L8925
L8A0A:      ldy #$00
            clc
            lda #$80
            adc L008C
            sta L008C
            lda #$00
            adc L008D
            sta L008D
            lda (L008C),Y
            and #$FC
            jsr L85EE
            and #$0F
            ora #$C0
            jsr L8AEE
            and #$F0
            ora #$03
            jsr L85EE
            and #$03
            ora #$F0
            jsr L8AEE
            and #$C0
            ora #$0F
            jsr L85EE
            and #$00
            ora #$FC
            jsr L8AEE
            and #$00
            ora #$3F
            jsr L85EE
            and #$00
            ora #$FF
            jsr L85EE
            and #$3F
            ldx LOMEM
            jsr L8606
            and #$C0
            cpx L0083
            bne L8A60
            ora #$3F
L8A60:      ora #$0F
            jsr L85EE
            and #$00
            cpx L0084
            bne L8A6D
            ora #$FF
L8A6D:      ora #$FC
            jsr L8AEE
            and #$F0
            cpx L0083
            bne L8A7A
            ora #$0F
L8A7A:      ora #$03
            jsr L85EE
            and #$03
            cpx L0084
            bne L8A87
            ora #$FC
L8A87:      ora #$F0
            jsr L8AEE
            and #$FC
            cpx L0083
            bne L8A94
            ora #$03
L8A94:      jsr L85EE
            and #$0F
            cpx L0084
            bne L8A9F
            ora #$F0
L8A9F:      ora #$C0
            jsr L8AEE
            jsr L85EE
            and #$3F
            cpx LOMEM+1
            bne L8AB7
            cpx L0084
            bne L8AB7
            cpx L0083
            bne L8AB7
            ora #$C0
L8AB7:      jsr L85EE
            ldx L0093
            beq L8AE6
            ldy #$01
            clc
            lda #$A0
            adc L008C
            sta L008C
            lda #$00
            adc L008D
            sta L008D
            lda (L008C),Y
            eor #$80
            jsr L8606
            eor #$02
            jsr L85EE
            eor #$A0
            jsr L8606
            jsr L85EE
            eor #$80
            jsr L85EE
L8AE6:      inc L008E
            beq L8AED
            jmp L88B0
L8AED:      rts
L8AEE:      jsr L85EE
            jmp L8606
L8AF4:      .byte $B0
L8AF5:      .byte $8C,$D8,$8C,$22,$8D,$85,$8D,$18
            .byte $8E,$7C,$8E,$EC,$8E,$7A,$8F,$49
            .byte $91,$B8,$91,$1A,$92,$82,$92,$16
            .byte $93,$9E,$93,$F8,$93,$3A,$94
L8B14:      .byte $90
L8B15:      .byte $94,$90,$94,$90,$94,$4C,$94,$90
            .byte $94,$90,$94,$5C,$94,$90,$94,$90
            .byte $94,$66,$94,$90,$94,$90,$94,$90
            .byte $94,$4A,$94,$83,$94,$90,$94
L8B34:      .byte $29
L8B35:      .byte $95,$29,$95,$65,$8D,$F8,$8D,$5C
            .byte $8E,$29,$95,$5A,$8F,$A1,$8F,$98
            .byte $91,$FA,$91,$29,$95,$F6,$92,$7E
            .byte $93,$D8,$93,$1A,$94,$C9,$94
L8B54:      .byte $C4
L8B55:      .byte $94,$91,$94,$96,$94,$9B,$94,$C4
            .byte $94,$A0,$94,$A5,$94,$AA,$94,$AF
            .byte $94,$C3,$94,$B4,$94,$B9,$94,$BE
            .byte $94,$C4,$94,$C4,$94,$C4,$94
L8B74:      .byte $FE
L8B75:      .byte $8B,$04,$8C,$0A,$8C,$04,$8C,$10
            .byte $8C,$16,$8C,$1C,$8C,$04,$8C,$34
            .byte $8C,$22,$8C,$04,$8C,$28,$8C,$04
            .byte $8C,$2E,$8C,$34,$8C,$3A,$8C
L8B94:      .byte $40
L8B95:      .byte $8C,$47,$8C,$4E,$8C,$55,$8C,$5C
            .byte $8C,$63,$8C,$6A,$8C,$71,$8C,$78
            .byte $8C,$7F,$8C,$86,$8C,$8D,$8C,$94
            .byte $8C,$9B,$8C,$A2,$8C,$A9,$8C
L8BB4:      .byte $49
L8BB5:      .byte $95,$B8,$8C,$29,$95,$C9,$90,$21
            .byte $90,$E9,$95,$C1,$8F,$09,$95,$41
            .byte $90,$89,$95,$89,$96,$A9,$90,$69
            .byte $96,$09,$91,$41,$90,$E9,$96,$09
            .byte $96,$A9,$95,$E1,$8F,$C9,$90,$E9
            .byte $90,$B8,$8C,$B8,$8C,$C9,$96,$29
            .byte $96,$69,$96,$A9,$96,$89,$90,$49
            .byte $96,$29,$91,$41,$90,$E9,$94,$01
            .byte $90,$C9,$95,$A9,$96,$A9,$90,$61
            .byte $90,$0A,$0A,$0A,$00,$00,$06,$0B
            .byte $0B,$0A,$04,$00,$06,$0B,$0A,$09
            .byte $00,$04,$06,$09,$0A,$09,$00,$07
            .byte $06,$0B,$0B,$08,$04,$04,$06,$0B
            .byte $0B,$08,$00,$04,$06,$0B,$0B,$0D
            .byte $04,$00,$00,$0B,$0B,$0B,$04,$00
            .byte $00,$0B,$09,$0C,$04,$07,$06,$08
            .byte $0A,$0B,$00,$04,$06,$09,$09,$09
            .byte $00,$00,$00,$04,$08,$0C,$FF,$FF
            .byte $00,$01,$2F,$4F,$0F,$3F,$FF,$8F
            .byte $7F,$2F,$3F,$0F,$FF,$1F,$18,$28
            .byte $CF,$BF,$8F,$9F,$FF,$99,$88,$FF
            .byte $10,$4F,$FF,$88,$00,$01,$6F,$5F
            .byte $01,$00,$4F,$0A,$09,$DF,$EF,$0F
            .byte $FF,$5F,$B0,$C0,$4F,$3F,$5F,$00
            .byte $FF,$11,$22,$0C,$CF,$BF,$FF,$DF
            .byte $79,$89,$1F,$2F,$AA,$0F,$FF,$FF
            .byte $BB,$1F,$3F,$2F,$0F,$FF,$E4,$E5
            .byte $F0,$7F,$8F,$F4,$FF,$FF,$8F,$4F
            .byte $5F,$3F,$2F,$FF,$00,$01,$0F,$F1
            .byte $11,$92,$85,$80,$81,$00,$06,$22
            .byte $FF,$FF,$70,$80,$0F,$1F,$2F,$FF
            .byte $FF,$FF,$07,$04,$04,$04,$04,$04
            .byte $04,$04,$04,$FF,$FF,$84,$21,$84
            .byte $21,$FF,$FF,$81,$81,$81,$81,$81
            .byte $81,$FF,$FF,$90,$09,$90,$09,$90
            .byte $09,$FF,$FF,$81,$81,$81,$81,$81
            .byte $81,$FF,$FF,$A2,$D5,$01,$A2,$D5
            .byte $46,$9E,$3A,$D1,$9A,$08,$08,$08
            .byte $11,$36,$21,$7A,$A1,$32,$21,$62
            .byte $0C,$0C,$11,$7A,$7A,$36,$2A,$2E
            .byte $11,$5E,$2A,$D1,$5A,$08,$08,$11
            .byte $26,$51,$42,$71,$22,$51,$32,$0C
            .byte $0C,$42,$26,$1E,$51,$2A,$1A,$D1
            .byte $22,$22,$27,$A1,$22,$22,$37,$91
            .byte $1E,$11,$17,$12,$91,$1A,$21,$17
            .byte $91,$16,$31,$12,$91,$52,$69,$8A
            .byte $6B,$4A,$51,$92,$3A,$4B,$01,$4A
            .byte $42,$51,$9A,$42,$14,$42,$3A,$51
            .byte $A2,$4A,$14,$3A,$32,$51,$AA,$52
            .byte $14,$32,$2A,$51,$B2,$5A,$14,$2A
            .byte $22,$51,$BA,$62,$14,$22,$1A,$9A
            .byte $41,$C2,$6A,$14,$1A,$12,$9A,$21
            .byte $DA,$1B,$72,$80,$9A,$21,$3B,$80
            .byte $9A,$21,$2B,$1E,$80,$E1,$10,$10
            .byte $FF,$FF,$81,$F9,$81,$FD,$01,$FD
            .byte $01,$FD,$01,$FD,$01,$C1,$61,$C1
            .byte $67,$C1,$7F,$FF,$7F,$7F,$40,$FF
            .byte $40,$C1,$40,$C1,$40,$C1,$7F,$FF
            .byte $24,$77,$7A,$21,$12,$A2,$91,$7A
            .byte $21,$12,$A2,$01,$32,$89,$21,$12
            .byte $9E,$9E,$3A,$30,$4B,$11,$1E,$12
            .byte $9A,$9A,$42,$30,$18,$72,$18,$96
            .byte $96,$4A,$30,$18,$6A,$18,$92,$92
            .byte $52,$24,$1E,$18,$62,$18,$8E,$8E
            .byte $5A,$9A,$18,$16,$11,$5A,$18,$8A
            .byte $8A,$62,$92,$21,$1A,$29,$52,$18
            .byte $86,$86,$6A,$8A,$31,$2A,$19,$4A
            .byte $01,$32,$2A,$12,$82,$82,$72,$82
            .byte $41,$3A,$19,$01,$3A,$22,$12,$7A
            .byte $21,$5B,$21,$42,$1A,$12,$7A,$21
            .byte $20,$4A,$11,$1E,$1C,$7A,$21,$20
            .byte $32,$19,$18,$7A,$11,$1E,$20,$2A
            .byte $2B,$21,$F1,$FF,$FF,$E0,$1F,$C0
            .byte $1F,$9F,$FD,$9F,$1F,$9F,$1F,$9D
            .byte $17,$9E,$13,$90,$11,$90,$0B,$90
            .byte $0B,$FF,$8B,$FC,$77,$FE,$0F,$EF
            .byte $7F,$FF,$FF,$A6,$67,$4A,$67,$A2
            .byte $67,$4E,$67,$9E,$67,$52,$67,$9A
            .byte $67,$56,$67,$96,$67,$5A,$67,$92
            .byte $67,$5E,$67,$8E,$67,$62,$67,$8A
            .byte $57,$6A,$6A,$62,$57,$4A,$55,$6A
            .byte $6A,$72,$55,$46,$65,$76,$65,$42
            .byte $65,$7A,$65,$3E,$65,$7E,$65,$3A
            .byte $65,$82,$65,$36,$65,$86,$65,$32
            .byte $65,$8A,$65,$2E,$65,$8E,$65,$FF
            .byte $FF,$99,$00,$99,$00,$FF,$00,$FF
            .byte $00,$99,$00,$99,$00,$FF,$00,$80
            .byte $7F,$80,$99,$80,$99,$80,$FF,$80
            .byte $FF,$80,$99,$80,$99,$80,$FF,$A2
            .byte $61,$8A,$61,$24,$9A,$21,$A2,$8A
            .byte $61,$A2,$61,$8A,$41,$1F,$A2,$9A
            .byte $30,$9A,$A2,$8A,$21,$72,$21,$A2
            .byte $61,$8A,$27,$72,$4E,$01,$12,$24
            .byte $9A,$01,$A2,$41,$7E,$72,$52,$4A
            .byte $12,$A2,$51,$7E,$72,$25,$72,$56
            .byte $46,$12,$72,$B1,$5A,$42,$12,$72
            .byte $01,$6A,$5E,$45,$47,$3E,$12,$5E
            .byte $31,$37,$35,$5E,$3A,$12,$5A,$21
            .byte $3E,$35,$47,$3A,$12,$52,$21,$42
            .byte $36,$51,$2F,$12,$4A,$42,$42,$4A
            .byte $4A,$2A,$29,$3B,$1E,$1C,$3A,$3A
            .byte $4A,$1E,$1E,$25,$27,$20,$32,$2A
            .byte $1C,$29,$2B,$51,$22,$1B,$A1,$28
            .byte $2C,$28,$3A,$42,$11,$12,$E2,$11
            .byte $2C,$E2,$11,$32,$42,$11,$12,$28
            .byte $2C,$28,$2A,$42,$42,$1E,$12,$24
            .byte $C2,$D2,$C2,$D2,$C2,$24,$22,$22
            .byte $3E,$3C,$24,$D2,$31,$24,$1A,$1A
            .byte $3A,$3C,$24,$C2,$31,$24,$3C,$36
            .byte $32,$12,$24,$D2,$31,$24,$1C,$32
            .byte $12,$24,$C2,$D2,$C2,$D2,$C2,$24
            .byte $1C,$32,$12,$28,$2C,$FA,$11,$1C
            .byte $32,$12,$E2,$11,$2C,$FA,$11,$1C
            .byte $32,$12,$28,$2C,$FA,$FA,$1E,$1C
            .byte $32,$12,$82,$82,$12,$A1,$32,$12
            .byte $82,$1E,$12,$A1,$32,$12,$12,$39
            .byte $81,$1E,$12,$F1,$F1,$00,$1F,$00
            .byte $0B,$00,$0D,$00,$17,$00,$15,$00
            .byte $17,$00,$0B,$00,$1B,$00,$D3,$00
            .byte $D3,$00,$13,$FC,$33,$80,$03,$FF
            .byte $FF,$80,$FF,$FF,$FF,$42,$81,$5B
            .byte $42,$CA,$11,$42,$51,$20,$42,$CA
            .byte $11,$42,$51,$20,$42,$CA,$CA,$4E
            .byte $42,$51,$20,$34,$34,$34,$34,$34
            .byte $34,$3A,$38,$32,$38,$2A,$38,$22
            .byte $38,$1A,$38,$F1,$0F,$FF,$7F,$FF
            .byte $7F,$FF,$6F,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $80,$07,$FF,$F5,$00,$15,$FF,$FD
            .byte $80,$7F,$FF,$D5,$00,$D5,$FF,$D5
            .byte $87,$FF,$FD,$55,$F9,$55,$F9,$55
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $80,$07,$FF,$F5,$00,$15,$FF,$FD
            .byte $80,$7F,$FF,$D1,$00,$D1,$FF,$D1
            .byte $87,$FF,$FD,$11,$F9,$11,$F9,$11
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$81,$FF
            .byte $81,$FF,$81,$FF,$81,$FF,$81,$FF
            .byte $81,$C1,$E1,$C1,$E7,$C1,$FF,$FF
            .byte $FF,$FF,$C0,$FF,$C0,$C1,$C0,$C1
            .byte $C0,$C1,$FF,$FF,$FF,$FE,$E0,$1F
            .byte $FF,$FF,$BF,$FF,$BF,$1F,$BF,$1F
            .byte $BF,$17,$BF,$93,$B1,$D3,$B0,$FF
            .byte $B0,$7F,$FF,$FF,$FC,$7F,$FE,$7F
            .byte $FF,$FF,$7F,$FF,$FF,$FF,$E0,$1F
            .byte $FF,$FF,$BF,$FF,$BF,$0F,$BF,$0F
            .byte $BF,$07,$BF,$83,$B1,$C3,$B0,$FF
            .byte $B0,$7F,$F0,$7F,$FC,$7F,$FE,$7F
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$99,$99
            .byte $99,$99,$FF,$FF,$FF,$FF,$99,$99
            .byte $99,$99,$FF,$FF,$FF,$FF,$99,$99
            .byte $99,$99,$FF,$FF,$FF,$FF,$99,$99
            .byte $99,$99,$FF,$FF,$FF,$FF,$99,$99
            .byte $99,$99,$FF,$FF,$FF,$FF,$99,$83
            .byte $BD,$FF,$E7,$8F,$BD,$FF,$99,$1F
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $9F,$FF,$9C,$1F,$DF,$FF,$5F,$FF
            .byte $7F,$FF,$3F,$FF,$FF,$FF,$99,$83
            .byte $BD,$FF,$E7,$8F,$BD,$FF,$99,$1F
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $9F,$FF,$9C,$1F,$DC,$1F,$5F,$FF
            .byte $7F,$FF,$3F,$FF,$FF,$FF,$FF,$FB
            .byte $FF,$FF,$FF,$F7,$F1,$FF,$F1,$EF
            .byte $F1,$FB,$FF,$F3,$FF,$F3,$FF,$F3
            .byte $FF,$F3,$FC,$33,$E0,$03,$FF,$FF
            .byte $80,$FF,$FF,$FF,$FF,$FF,$FD,$C1
            .byte $F8,$81,$FD,$C1,$FF,$C1,$DD,$C1
            .byte $88,$81,$DD,$C1,$FF,$C1,$DD,$C1
            .byte $88,$89,$DD,$DD,$FF,$FD,$DD,$DD
            .byte $C0,$01,$FF,$FF,$FF,$FF,$FD,$DF
            .byte $F8,$89,$FD,$DD,$FF,$FD,$DD,$DD
            .byte $88,$89,$DD,$DD,$FF,$FD,$DD,$DD
            .byte $88,$89,$DD,$DD,$FF,$FD,$DD,$DD
            .byte $C0,$01,$FF,$FF,$FF,$FF,$FD,$DF
            .byte $F8,$89,$FD,$DD,$FF,$FD,$DD,$DD
            .byte $88,$89,$DD,$DD,$FF,$FD,$DD,$DD
            .byte $80,$09,$80,$1D,$80,$3D,$80,$1D
            .byte $80,$01,$FF,$FF,$B2,$31,$72,$21
            .byte $40,$B2,$31,$72,$21,$40,$92,$21
            .byte $B2,$92,$92,$72,$72,$40,$21,$28
            .byte $72,$11,$40,$B2,$11,$E2,$11,$B2
            .byte $11,$52,$24,$1C,$72,$72,$92,$28
            .byte $92,$72,$01,$52,$24,$1C,$72,$72
            .byte $92,$92,$B2,$92,$92,$72,$72,$52
            .byte $24,$1C,$72,$21,$B2,$72,$21,$40
            .byte $72,$21,$B2,$72,$21,$40,$81,$40
            .byte $81,$40,$81,$52,$11,$1E,$1C,$F1
            .byte $F1,$F1,$F1,$00,$0F,$00,$07,$00
            .byte $07,$00,$07,$00,$07,$00,$07,$00
            .byte $07,$00,$7F,$00,$7F,$FE,$7F,$FE
            .byte $7F,$FF,$7F,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$12,$F1,$02,$C1,$12
            .byte $44,$1F,$02,$11,$12,$48,$BE,$92
            .byte $72,$02,$02,$12,$4C,$DE,$C2,$92
            .byte $5A,$02,$12,$50,$EE,$DE,$BE,$8A
            .byte $62,$12,$54,$58,$58,$54,$50,$52
            .byte $31,$12,$4C,$52,$31,$12,$48,$52
            .byte $52,$02,$52,$52,$12,$44,$52,$31
            .byte $3C,$02,$21,$62,$72,$7A,$7A,$72
            .byte $52,$21,$1E,$12,$F1,$00,$1F,$00
            .byte $01,$00,$01,$00,$01,$00,$01,$00
            .byte $01,$00,$01,$00,$01,$00,$01,$00
            .byte $01,$00,$3F,$80,$3F,$80,$37,$80
            .byte $3F,$80,$3D,$FF,$FF,$CA,$11,$47
            .byte $6A,$11,$1B,$1F,$12,$CA,$C6,$C6
            .byte $47,$5C,$CA,$C6,$BE,$11,$B2,$B2
            ror OLDCOL+1,X
            dec ICCOMT
            ldx L11B2,Y
            .byte $6A,$5C,$C2,$BE,$BE,$B2,$11,$6A
            .byte $41,$46,$32,$3C,$BE,$BA,$B2,$11
            .byte $6A,$51,$3A,$2A,$3C,$BA,$17,$B2
            .byte $6A,$31,$1E,$3C,$32,$22,$3C,$B6
            .byte $B2,$76,$6A,$41,$1C,$2A,$1A,$3C
            .byte $6A,$71,$1C,$22,$1C,$6A,$41,$1E
            .byte $20,$1A,$1C,$6A,$41,$14,$12,$1C
            .byte $62,$52,$11,$12,$A1,$5A,$52,$11
            .byte $1F,$4B,$41,$4E,$3A,$11,$4B,$61
            .byte $42,$3A,$11,$12,$A1,$F1,$CA,$CA
            .byte $6B,$57,$12,$CA,$31,$92,$21,$57
            .byte $12,$C2,$68,$29,$12,$BA,$68,$21
            .byte $12,$B2,$CA,$11,$9E,$92,$11,$6E
            .byte $62,$31,$1E,$12,$AA,$92,$31,$62
            .byte $11,$5E,$41,$12,$A2,$92,$21,$62
            .byte $21,$5A,$11,$2A,$2B,$9A,$92,$21
            .byte $62,$21,$56,$11,$32,$1C,$92,$21
            .byte $6E,$62,$21,$52,$11,$3A,$1C,$8E
            .byte $8E,$62,$11,$77,$1C,$8A,$8A,$62
            .byte $51,$4A,$11,$3A,$11,$12,$86,$86
            .byte $62,$51,$46,$11,$32,$11,$12,$82
            .byte $82,$6A,$62,$11,$2A,$29,$5B,$7E
            .byte $7E,$72,$62,$11,$22,$20,$22,$1C
            .byte $7A,$11,$62,$1E,$1E,$1A,$20,$1A
            .byte $1C,$F1,$E7,$FF,$FF,$FF,$FF,$FF
            .byte $7F,$FF,$7F,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$D2,$D2,$E2,$31,$D2,$D2
            .byte $AA,$51,$D2,$D2,$E2,$EA,$11,$E2
            .byte $D2,$B6,$AA,$41,$1E,$D2,$39,$1B
            .byte $D2,$AA,$8E,$82,$82,$18,$D2,$29
            .byte $11,$E2,$D2,$D2,$82,$14,$D2,$19
            .byte $31,$D2,$80,$D2,$61,$80,$D2,$6B
            .byte $21,$92,$18,$4A,$69,$21,$8A,$18
            .byte $52,$CA,$21,$52,$49,$1E,$18,$5A
            .byte $C2,$C2,$CA,$CA,$4A,$12,$81,$62
            .byte $BA,$19,$CA,$42,$5B,$31,$6A,$B2
            .byte $1D,$CA,$12,$91,$72,$AA,$AA,$CA
            .byte $CA,$12,$91,$7A,$A2,$A2,$CA,$1E
            .byte $12,$91,$82,$9A,$12,$C1,$8A,$92
            .byte $12,$C1,$81,$FF,$81,$7E,$81,$BE
            .byte $81,$48,$81,$08,$FF,$08,$FF,$FF
            .byte $07,$FF,$7F,$EF,$5C,$11,$5F,$F1
            .byte $5F,$FF,$5C,$91,$54,$91,$48,$91
            .byte $4F,$FF,$D2,$11,$9B,$7E,$76,$6A
            .byte $60,$5E,$60,$56,$60,$4E,$60,$4A
            .byte $D2,$52,$85,$4E,$21,$46,$D2,$4E
            .byte $67,$7A,$4E,$31,$3A,$D2,$12,$65
            .byte $82,$4E,$31,$36,$D2,$CA,$7B,$4E
            .byte $31,$32,$D2,$12,$1D,$32,$91,$2E
            .byte $64,$2A,$64,$22,$64,$1A,$64,$12
            .byte $D2,$38,$D2,$38,$FF,$FF,$F2,$5F
            .byte $DB,$CD,$D9,$8D,$F1,$8D,$80,$13
            .byte $80,$13,$80,$1F,$80,$0D,$80,$01
            .byte $EB,$DF,$F9,$93,$D9,$9F,$CB,$D3
            .byte $FF,$FF,$FF,$FF,$6C,$BA,$5B,$6C
            .byte $52,$59,$6C,$4A,$5B,$6C,$70,$6C
            .byte $70,$6C,$70,$6C,$70,$7E,$4D,$21
            .byte $70,$72,$4B,$12,$81,$59,$12,$81
            .byte $F1,$F1,$F1,$F1,$F1,$F1,$07,$FF
            .byte $07,$FF,$07,$FF,$07,$FF,$07,$C7
            .byte $07,$C1,$07,$C7,$FF,$C1,$FF,$F1
            .byte $FF,$E3,$FF,$F1,$C4,$41,$C5,$EF
            .byte $C5,$EF,$DC,$41,$FF,$FF,$74,$74
            .byte $74,$74,$74,$78,$78,$78,$78,$78
            .byte $7C,$7C,$7C,$7C,$7C,$F1,$81,$FF
            .byte $E1,$D1,$C1,$C2,$C3,$1C,$1D,$1E
            .byte $2C,$3C,$44,$45,$46,$54,$64,$FF
            .byte $A5,$95,$85,$75,$76,$77,$78,$79
            .byte $7A,$FF,$77,$78,$79,$7A,$7B,$7C
            .byte $7D,$7E,$87,$88,$89,$8A,$8B,$8C
            .byte $8D,$8E,$97,$98,$A7,$A8,$B7,$B8
            .byte $C7,$C8,$D7,$D8,$E7,$E8,$FF,$35
            .byte $36,$37,$38,$46,$47,$56,$57,$66
            .byte $67,$76,$77,$FF,$FF,$1F,$5B,$98
            .byte $00,$00,$A8,$00,$00,$00,$00,$3E
            .byte $66,$CC,$E3,$00,$67,$D4,$00,$00
            .byte $00,$2E
L94A6:      .byte $AA,$C1,$DE,$00,$33,$00,$00,$00
            .byte $00,$BC,$00,$00,$00,$00,$27,$72
            .byte $96,$69,$00,$44,$48,$84,$4E,$E4
            .byte $18,$1F,$29,$8B,$D4,$EE,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$07,$FF,$07
            .byte $FF,$07,$FF,$07,$FF,$07,$FF,$07
            .byte $FF,$07,$FF,$07,$FF,$07,$FF,$07
            .byte $FF,$07,$FF,$0F,$FF,$0F,$FD,$0F
            .byte $FD,$1F,$FD,$FF,$FF,$FF,$FF,$FF
            .byte $FD,$FF,$FD,$FF,$FD,$FF,$FF,$FF
            .byte $FF,$FF,$FD,$FF,$FD,$FF,$FD,$FF
            .byte $FD,$FF,$FF,$0F,$FF,$0F,$FD,$0F
            .byte $FD,$1F,$FD,$FF,$FD,$FF,$FD,$FF
            .byte $FD,$FF,$FD,$FF,$FD,$FF,$FF,$E3
            .byte $FF,$E3,$FD,$E3,$FD,$E3,$FD,$E3
            .byte $FD,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FC
            .byte $25,$FC,$25,$FC,$3D,$FC,$21,$FF
            .byte $FF,$FC,$A1,$FC,$A1,$FF,$A1,$FC
            .byte $21,$FF,$FF,$00,$00,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$E7,$FF
            .byte $E7,$FF,$A7,$FF,$27,$FF,$E7,$FE
            .byte $E7,$FC,$E7,$F7,$E7,$E7,$E7,$FF
            .byte $E7,$80,$1F,$80,$1F,$FF,$F9,$FF
            .byte $F9,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$BF,$FF,$2F,$FF,$EF,$FE
            .byte $EF,$FC,$EF,$F7,$EF,$E7,$EF,$FF
            .byte $FF,$F0,$3F,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$BF,$FF,$2F,$FF,$EF,$FE
            .byte $EF,$FC,$EF,$F7,$EF,$E7,$EF,$FF
            .byte $FF,$F0,$3F,$FF,$FF,$FF,$F9,$FF
            .byte $F9,$FF,$FF,$FF,$FF,$FF,$FF,$CC
            .byte $FF,$DC,$FF,$FF,$FF,$FF,$C1,$CE
            .byte $4F,$CC,$4F,$FC,$4F,$FF,$FF,$F8
            .byte $49,$F8,$49,$FB,$FF,$FB,$CF,$FB
            .byte $CF,$FF,$FF,$FF,$FF,$FF,$FF,$CC
            .byte $FF,$DC,$FF,$FF,$FF,$FF,$C1,$CE
            .byte $4F,$CC,$4F,$FC,$4F,$FF,$FF,$F8
            .byte $41,$F8,$41,$FB,$FF,$FB,$C7,$FB
            .byte $C7,$FF,$FF,$FF,$9F,$FF,$9F,$CC
            .byte $FF,$DC,$FF,$FF,$FF,$FF,$C1,$CE
            .byte $4F,$CC,$4F,$FC,$4F,$3F,$FF,$38
            .byte $49,$F8,$49,$FB,$C9,$FB,$CF,$FB
            .byte $CF,$FF,$FF,$FF,$9F,$FF,$9F,$CC
            .byte $FF,$DC,$FF,$FF,$FF,$FF,$C1,$CE
            .byte $4F,$CC,$4F,$FC,$4F,$3F,$FF,$38
            .byte $41,$F8,$41,$FB,$FF,$FB,$C7,$FB
            .byte $C7,$FF,$FF,$FF,$FF,$FF,$FF,$BF
            .byte $FF,$BF,$49,$BF,$09,$FF,$09,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$DC,$11,$DF
            .byte $F1,$DF,$FF,$DC,$91,$DC,$91,$C8
            .byte $91,$CF,$FF,$FF,$FF,$F2,$5F,$DB
            .byte $CD,$D9,$8D,$F1,$8D,$FF,$D3,$FF
            .byte $D3,$FF,$DF,$FF,$CD,$FF,$FF,$EB
            .byte $DF,$F9,$93,$D9,$9F,$CB,$D3,$FF
            .byte $FF,$FF,$FF,$7F,$FF,$72,$5F,$5B
            .byte $CD,$59,$8D,$71,$8D,$7F,$C1,$7F
            .byte $C1,$7F,$C1,$FF,$C1,$FF,$FF,$EB
            .byte $DF,$F9,$93,$D9,$9F,$CB,$D3,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $80,$FF,$FF,$FF,$C7,$FF,$D1,$FF
            .byte $D7,$FF,$C1,$FF,$F1,$FF,$EB,$FF
            .byte $F1,$C4,$41,$D5,$EF,$C5,$EF,$DC
            .byte $41,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$C7,$FF,$D1,$FF
            .byte $D7,$FF,$C1,$FF,$F1,$FF,$EB,$FF
            .byte $F1,$C0,$41,$C0,$6F,$C0,$6F,$C0
            .byte $41,$FF,$FF,$8A,$EB,$8A,$EB,$00
            .byte $11,$0B,$00,$11,$09,$00,$F1,$F1
            .byte $00,$12,$51,$12,$12,$12,$12,$12
            .byte $12,$12,$12,$00,$A2,$A2,$A2,$11
            .byte $00,$FA,$E2,$FA,$00,$42,$81,$12
            .byte $41,$00,$52,$21,$12,$11,$00,$12
            .byte $02,$11,$5A,$8A,$1D,$A2,$96,$00
            .byte $12,$02,$02,$72,$A2,$BE,$CA,$D2
            .byte $D2,$CA,$00,$12,$02,$5A,$92,$C2
            .byte $DA,$EA,$F2,$F2,$EA,$00,$12,$62
            .byte $8A,$BE,$DE,$EE,$FA,$FE,$FE,$FA
            .byte $00,$12,$72,$9A,$CA,$EA,$FA,$FE
            .byte $02,$02,$FE,$FA,$EA,$CA,$9A,$72
            .byte $12,$00,$12,$7A,$A2,$D2,$F2,$FE
            .byte $02,$21,$FE,$F2,$D2,$A2,$7A,$12
            .byte $00,$6A,$11,$52,$52,$3A,$3A,$12
            .byte $00,$D2,$C2,$31,$92,$31,$66,$21
            .byte $00,$D2,$36,$C1,$00,$CA,$21,$92
            .byte $21,$62,$11,$00,$12,$31,$BA,$21
            .byte $00,$CE,$31,$8A,$31,$46,$31,$12
            .byte $00,$8A,$31,$12,$91,$00,$46,$31
            .byte $12,$91,$00
L97B1:      .byte $00
L97B2:      .byte $00,$09,$97,$0E,$97,$11,$97,$14
            .byte $97,$1B,$97,$1D,$97,$1E,$97,$1C
            .byte $97,$24,$97,$27,$97,$22,$97,$23
            .byte $97,$2B,$97,$17,$97,$1F,$97,$30
            .byte $97,$35,$97,$3E,$97,$49,$97,$54
            .byte $97,$5F,$97,$70,$97,$7F,$97,$87
            .byte $97,$8F,$97,$93,$97,$9A,$97,$1A
            .byte $97,$9F,$97,$A7,$97,$AC,$97,$19
            .byte $97
L97F3:      jmp (L009C)
L97F6:      ldx #$07
            stx L00A6
L97FA:      jsr L9802
            dec L00A6
            bne L97FA
            rts
L9802:      ldx L00A6
            jsr L98E6
            jsr L98D2
            ldx L00A6
            jsr L97F3
            cpy #$FF
            bne L9814
            rts
L9814:      lda #$03
            sta L009B
L9818:      ldx L00A6
            sty L009A
            lda LA44E,Y
            clc
            adc L1A10,X
            sta L0098
            tay
            lda LA473,Y
            beq L9870
            cmp #$FF
            beq L986B
            tay
            and #$1F
            sta L0098
            tya
            lsr
            lsr
            lsr
            lsr
            lsr
            tay
            lda LA463,Y
            sta L0099
            lda L1A30,X
            and #$80
            beq L984A
            jmp L98EF
L984A:      lda LA46B,Y
            and L0097
            bne L9874
            ldy L1A08,X
            lda L0500,Y
            sec
            sbc #$04
            cmp #$03
            bcs L9861
            jmp L992F
L9861:      jsr LB09E
            lda L009B
            beq L986B
            jmp L9818
L986B:      lda L1A10,X
            sta L0098
L9870:      lda #$00
            sta L0099
L9874:      ldx L00A6
            lda L1A08,X
            sta L009A
            clc
            adc L0099
            tay
            lda L0099
            beq L98A1
            lda L1300,Y
            bne L9903
            lda L1A30,X
            sta L1300,Y
            tya
            sta L1A08,X
            cmp L1A08
            bne L989A
            jsr LA279
L989A:      ldy L009A
            lda #$00
            sta L1300,Y
L98A1:      lda L0098
            sta L1A10,X
            jsr LB0B7
            lda L0093
            beq L98D1
            lda L1A30,X
            cmp #$0B
            bne L98C4
            lda #$05
            sta L1A30,X
            ldy L1A08,X
            sta L1300,Y
            lda #$10
            sta L1A18,X
L98C4:      ldy #$0C
            jsr LB82A
            lda L00A2
            bne L98D1
            lda #$03
            sta L00FF
L98D1:      rts
L98D2:      ldy L1A30,X
            tya
            asl
            tay
            lda L999F,Y
            sta L009C
            lda L99A0,Y
            sta L009D
            tya
            lsr
            tay
            rts
L98E6:      ldy L1A08,X
            lda L0E00,Y
            sta L0097
            rts
L98EF:      lda L1A08,X
            clc
            adc L0099
            tay
            lda L0500,Y
            sec
            sbc #$04
            cmp #$03
            bcs L9904
            jmp L996F
L9903:      rts
L9904:      lda L0F00,Y
            and #$80
            bne L990E
            jmp L9861
L990E:      lda L0F00,Y
            and #$0F
            beq L9917
            bne L9903
L9917:      cpy L1A08
            bne L9926
            lda L1A30
            and #$80
            beq L9926
            jsr LA279
L9926:      lda L1A30,X
            sta L0F00,Y
            jmp L998A
L992F:      lda L1A08,X
            clc
            adc L0099
            tay
            lda L0F00,Y
            and #$80
            bne L9940
            jmp L9861
L9940:      lda L0F00,Y
            and #$0F
            beq L994A
            jmp L9903
L994A:      lda L1A30,X
            ora #$80
            sta L1A30,X
            sta L0F00,Y
            cpy L1A08
            bne L9964
            lda L1A30
            and #$80
            beq L9964
            jsr LA279
L9964:      lda L1A08,X
            tax
            lda #$00
            sta L1300,X
            beq L9993
L996F:      lda L1300,Y
            beq L9977
            jmp L9903
L9977:      cpy L1A08
            bne L997F
            jsr LA279
L997F:      lda L1A30,X
            eor #$80
            sta L1A30,X
            sta L1300,Y
L998A:      lda L1A08,X
            tax
            lda #$80
            sta L0F00,X
L9993:      ldx L00A6
            tya
            sta L1A08,X
            lda L0098
            sta L1A10,X
            rts
L999F:      .byte $E6
L99A0:      .byte $99,$BF,$99,$BF,$99,$1A,$9B,$20
            .byte $9B,$A4,$9B,$1A,$9B,$1A,$9B,$81
            .byte $9B,$52,$9B,$36,$9B,$71,$9C,$55
            .byte $9C,$25,$9C,$7A,$9A,$D1,$9B
            dec L1A40,X
            bne L99F3
            lda #$2E
            sta L1A18,X
            ldy L1A08,X
            lda L1A30,X
            and #$80
            beq L99DB
            lda #$80
            sta L0F00,Y
            jmp L99E0
L99DB:      lda #$00
            sta L1300,Y
L99E0:      sta L1A30,X
            jmp L99F3
            cpx #$07
            beq L99F6
            cpx #$04
            bcs L99F3
            lda #$2E
            sta L1A18,X
L99F3:      ldy #$FF
            rts
L99F6:      lda L1C41
            bmi L99F3
            lda L1A48,X
            and L00E5
            beq L99F3
            dec L1A40,X
            bne L99F3
            lda L1D38
            cmp #$70
            beq L9A15
            lda L1D38
            cmp #$70
            bne L9A29
L9A15:      lda L1A30
            and #$80
            beq L9A20
            lda #$FF
            bne L9A23
L9A20:      lda L1A08
L9A23:      sta L1A08,X
            jmp L9A3D
L9A29:      lda L1A36
            cmp #$06
            beq L9A3D
            lda L1D38
            clc
            adc #$10
            sta L1D38
            cmp #$40
            bcc L99F3
L9A3D:      lda L1D38
            lsr
            lsr
            lsr
            lsr
            tay
            lda LAB89,Y
            sta L1A48,X
            lda #$C0
            sta L1A40,X
            ldy L1A08,X
            lda L1300,Y
            bne L9A6F
            lda #$0E
            sta L1A30,X
            lda L1700,Y
            sec
            sbc L0500,Y
            sta L1A50,X
            ldy #$0B
            jsr LB82A
            ldy #$FF
            rts
L9A6F:      inc L1A40,X
            lda #$FF
            sta L1A08,X
            ldy #$FF
            rts
            lda L00EC
            beq L9A81
            dec L1A40,X
L9A81:      jsr L9B00
            stx L00A4
            lda L1A50,X
            beq L9A92
            clc
            adc #$FC
            bcs L9A92
            lda #$00
L9A92:      sta L1A50,X
            lda L1A40,X
            bne L9AD6
            ldy L1A08,X
            lda L1A30,X
            and #$80
            beq L9AAC
            lda #$80
            sta L0F00,Y
            jmp L9AB1
L9AAC:      lda #$00
            sta L1300,Y
L9AB1:      sta L1A30,X
            lda #$80
            sec
            sbc L1D38
            cmp #$10
            beq L9ACA
            lda L1D38
            clc
            adc #$10
            sta L1D38
            ldy #$FF
            rts
L9ACA:      lsr
            sta L1A40,X
            lda #$01
            sta L1A48,X
L9AD3:      ldy #$FF
            rts
L9AD6:      lda L1A40,X
            cmp #$50
            bcc L9AE2
            ldy #$0B
            jsr LB82A
L9AE2:      ldx L00A4
            lda L1A50,X
            beq L9AF5
            cmp #$09
            bcs L9AD3
            ldy L1A08,X
            lda #$0E
            sta L1300,Y
L9AF5:      lda L1A48,X
            and L00E5
            beq L9AD3
            jsr L9CBC
            rts
L9B00:      lda L1A48,X
            and L00E5
            beq L9B19
            lda L00EC
            beq L9B19
            ldy L1A18,X
            iny
            cpy #$04
            bcc L9B15
            ldy #$00
L9B15:      tya
            sta L1A18,X
L9B19:      rts
            jsr L9B00
L9B1D:      ldy #$FF
            rts
            jsr L9B00
            lda L1A48,X
            and L00E5
            beq L9B1D
            lda RANDOM
            and #$07
            sta L1A50,X
            ora #$01
            tay
            rts
            lda L1A48,X
            and L00E5
            beq L9B1D
            lda L00EC
            beq L9B4F
            ldy L1A18,X
            iny
            cpy #$0C
            bcc L9B4B
            ldy #$08
L9B4B:      tya
            sta L1A18,X
L9B4F:      jmp L9CBC
            lda L1A48,X
            and L00E5
            beq L9B1D
            lda L00EC
            beq L9B6B
            ldy L1A18,X
            iny
            cpy #$1C
            bcc L9B67
            ldy #$18
L9B67:      tya
            sta L1A18,X
L9B6B:      dec L1A40,X
            beq L9B76
            bmi L9B76
            ldy L1A38,X
            rts
L9B76:      lda L1A48,X
            and #$0F
            sta L1A40,X
            jmp L9CBC
            lda L1A48,X
            and L00E5
            beq L9B1D
            inc L1A40,X
            lda L1A40,X
            and #$3F
            lsr
            lsr
            lsr
            lsr
            tay
            clc
            adc #$28
            sta L1A18,X
            lda L9BA0,Y
            tay
            rts
L9BA0:      .byte $03
            ora CMCMD
            ora (L00BD,X)
            pha
            .byte $1A
            and L00E5
            beq L9BCE
            lda L00EC
            beq L9BCE
            ldy L1A18,X
            iny
            cpy #$14
            bcc L9BCA
            jsr LA269
            sta L1A48,X
            ldy L1A08,X
            lda #$0B
            sta L1A30,X
            sta L1300,Y
            ldy #$0C
L9BCA:      tya
            sta L1A18,X
L9BCE:      jmp L9B1D
            lda L1A48,X
            and L00E5
            beq L9BCE
            lda L1A40,X
            bne L9BEF
            lda #$11
            sta L1A40,X
            lda #$00
            sta L1A20,X
            sta L1A58,X
            lda #$08
            sta L1A18,X
L9BEF:      dec L1A40,X
            lda L1A40,X
            and #$03
            bne L9BCE
            ldy L1A18,X
            iny
            cpy #$0C
            bcc L9BCA
            ldy L1A08,X
            lda L1A30,X
            and #$FA
            sta L1A30,X
            bpl L9C13
            sta L0F00,Y
            bmi L9C16
L9C13:      sta L1300,Y
L9C16:      lda #$01
            sta L1A20,X
            lda #$FC
            sta L1A58,X
            ldy #$08
            jmp L9BCA
            lda L1A48,X
            and L00E5
            beq L9C52
            lda L00EC
            beq L9C3E
            ldy L1A18,X
            iny
            cpy #$20
            bcc L9C3A
            ldy #$1C
L9C3A:      tya
            sta L1A18,X
L9C3E:      lda RANDOM
            and #$07
            ora #$01
            tay
            eor L1A38,X
            cmp #$04
            beq L9C52
            tya
            sta L1A38,X
            rts
L9C52:      ldy #$FF
            rts
            lda L1A48,X
            and L00E5
            beq L9C52
            lda L00EC
            beq L9C6E
            ldy L1A18,X
            iny
            cpy #$18
            bcc L9C6A
            ldy #$14
L9C6A:      tya
            sta L1A18,X
L9C6E:      jmp L9CB4
            lda L1A48,X
            and L00E5
            beq L9C52
            lda L1A40,X
            cmp #$10
            bcc L9C85
            dec L1A40,X
            jmp L9C52
L9C85:      lda L00EC
            beq L9C97
            ldy L1A18,X
            iny
            cpy #$10
            bcc L9C93
            ldy #$0C
L9C93:      tya
            sta L1A18,X
L9C97:      dec L1A40,X
            beq L9CA2
            bmi L9CA2
            ldy L1A38,X
            rts
L9CA2:      lda L1A48,X
            and #$0F
            sta L1A40,X
            jsr LA269
            iny
            lda LAB89,Y
            sta L1A48,X
L9CB4:      lda RANDOM
            and #$07
            jmp L9CE6
L9CBC:      ldy L1A08,X
            tya
            and #$0F
            sta L00A1
            tya
            ldy #$00
            and #$F0
            cmp L009F
            bcc L9CD3
            beq L9CD5
            iny
            jmp L9CD5
L9CD3:      iny
            iny
L9CD5:      lda L00A1
            cmp L00A0
            bcc L9CE3
            beq L9CE0
            iny
            iny
            iny
L9CE0:      iny
            iny
            iny
L9CE3:      lda L9CEB,Y
L9CE6:      sta L1A38,X
            tay
            rts
L9CEB:      .byte $03,$02,$04,$FF,$01,$05,$07,$00
            .byte $06
L9CF4:      .byte $60
L9CF5:      dec L00E6
            bpl L9CFD
            lda #$04
            sta L00E6
L9CFD:      ldy L00E6
            lda L1A78,Y
            beq L9CF4
            lda L1AA8,Y
            and L00E5
            beq L9D20
            lda L1AA0,Y
            clc
            adc #$FF
            bmi L9D20
            sta L1AA0,Y
            bne L9CF4
            lda L1A88,Y
            eor #$01
            sta L1A88,Y
L9D20:      lda L1A88,Y
            beq L9D54
            bmi L9CF4
            ldy L00E6
            lda L1AA8,Y
            and L00E5
            beq L9CF4
            lda L1A80,Y
            sec
            sbc #$02
            sta L1A80,Y
            ldx L1A78,Y
            sta L0500,X
            lda L1200,X
            clc
            adc #$02
            sta L1200,X
            lda L1A80,Y
            cmp L1A90,Y
            beq L9D80
            jmp L9D87
L9D53:      rts
L9D54:      ldy L00E6
            lda L1AA8,Y
            and L00E5
            beq L9D53
            lda L1A80,Y
            clc
            adc #$02
            sta L1A80,Y
            ldx L1A78,Y
            sta L0500,X
            lda L1200,X
            sec
            sbc #$02
            sta L1200,X
            lda L1A80,Y
            cmp L1A98,Y
            beq L9D80
            jmp L9D87
L9D80:      ldy L00E6
            lda #$07
            sta L1AA0,Y
L9D87:      ldx L00E6
            ldy L1A78,X
            lda #$00
            sta L0E00,Y
            lda #$00
            sta L0088
            lda #$07
            sta L0089
            lda #$40
            jsr L9ECF
            lda #$00
            sta L0088
            lda #$09
            sta L0089
            lda #$10
            jsr L9ECF
            lda #$00
            sta L0088
            lda #$0B
            sta L0089
            lda #$04
            jsr L9ECF
            lda #$00
            sta L0088
            lda #$0D
            sta L0089
            lda #$01
            jsr L9ECF
            ldx L00E6
            ldy L1A78,X
            lda L0E00,Y
            sta L00A4
            and #$40
            beq L9DDB
            lda L0DF0,Y
            ora #$04
            jmp L9DE0
L9DDB:      lda L0DF0,Y
            and #$FB
L9DE0:      sta L0DF0,Y
            lda L00A4
            and #$01
            beq L9DF1
            lda L0DFF,Y
            ora #$10
            jmp L9DF6
L9DF1:      lda L0DFF,Y
            and #$EF
L9DF6:      sta L0DFF,Y
            lda L00A4
            and #$10
            beq L9E07
            lda L0E01,Y
            ora #$01
            jmp L9E0C
L9E07:      lda L0E01,Y
            and #$FE
L9E0C:      sta L0E01,Y
            lda L00A4
            lda L00A4
            and #$04
            beq L9E1F
            lda L0E10,Y
            ora #$40
            jmp L9E24
L9E1F:      lda L0E10,Y
            and #$BF
L9E24:      sta L0E10,Y
            rts
L9E28:      ldy L00E6
            lda L1A78,Y
            tay
            lda L1400,Y
            sta L00EA
            lda L1500,Y
            sta L00EB
            ldy L00E6
            lda L1A88,Y
            bmi L9E64
            beq L9E46
            lda #$01
            jmp L9E48
L9E46:      lda #$FF
L9E48:      clc
            adc L1A80,Y
            tay
            and #$07
            tax
            tya
            lsr
            lsr
            lsr
            tay
            lda L00EA
            sec
            sbc LB1A8,X
            sta L00EA
            lda L00EB
            sbc L1FB0,Y
            sta L00EB
L9E64:      rts
L9E65:      ldy L00E6
            lda L1A88,Y
            bmi L9ECE
            lda L1AA0,Y
            cmp #$07
            beq L9E78
            lda L1AA0,Y
            bne L9ECE
L9E78:      ldy #$11
            sty L00E7
            ldy L00E6
            lda L1A88,Y
            beq L9EA9
L9E83:      ldy L00E7
            lda L9EEE,Y
            ldy #$01
            sta (L00EA),Y
            dec L00E7
            ldy L00E7
            lda L9EEE,Y
            ldy #$00
            sta (L00EA),Y
            clc
            lda #$E0
            adc L00EA
            sta L00EA
            lda #$FF
            adc L00EB
            sta L00EB
            dec L00E7
            bpl L9E83
            rts
L9EA9:      ldy L00E7
            lda L9EF2,Y
            ldy #$01
            sta (L00EA),Y
            dec L00E7
            ldy L00E7
            lda L9EF2,Y
            ldy #$00
            sta (L00EA),Y
            clc
            lda #$E0
            adc L00EA
            sta L00EA
            lda #$FF
            adc L00EB
            sta L00EB
            dec L00E7
            bpl L9EA9
L9ECE:      rts
L9ECF:      sta L00A4
            ldx L00E6
            ldy L1A78,X
            lda L0500,Y
            beq L9EED
            sec
            sbc (L0088),Y
            clc
            adc #$03
            cmp #$07
            bcs L9EED
            lda L0E00,Y
            ora L00A4
            sta L0E00,Y
L9EED:      rts
L9EEE:      .byte $15,$2A,$15,$2A
L9EF2:      .byte $14,$CA,$13,$F2,$0F,$FC,$3F,$FF
            .byte $0F,$FC,$23
            sbc (ICBLLZ),Y
            cmp ICAX1Z
            ora ICAX1Z,X
            ora L00A5,X
            inc LF025
            tax
            lda STICK0,X
            sta L0096
            lda TRIG0,X
            sta L00F4
            lda L1BBD
            beq L9F37
            ldy #$03
            ldx LB858,Y
            lda L1D03,X
            bne L9F37
            lda #$00
            sta L1BBD
            lda L1A30
            and #$EF
            sta L1A30
            lda L1A18
            and #$DF
            sta L1A18
L9F37:      jsr LAFB4
            lda L1A40
            bne L9F93
            lda L00F6
            beq L9F93
            lda L00F4
            bne L9F93
            sta L00F6
            lda #$28
            sta L1A40
            ldy #$04
            jsr LB82A
            jsr LAFB4
            lda #$00
            sta ATRACT
            ldy L1A08
            lda L0094
            bne L9F72
            cpy #$F0
            bne L9F69
            lda #$07
            bne L9F8D
L9F69:      cpy #$47
            bne L9F93
            lda L1D5D
            bne L9F8D
L9F72:      cmp #$08
            bne L9F83
            cpy #$22
            bne L9F93
            lda L1BBD
            beq L9F93
            lda #$0F
            bne L9F8D
L9F83:      cmp #$12
            bne L9F93
            cpy #$00
            bne L9F93
            lda #$17
L9F8D:      sta L0094
            lda #$05
            sta L00FF
L9F93:      lda L00F4
            beq L9F99
            sta L00F6
L9F99:      lda L1A48
            and L00E5
            beq L9FD6
            ldy L1A08
            lda L0E00,Y
            sta L0097
            lda L1A40
            beq L9FBF
            ldy L1A38
            cpy #$FF
            beq L9FD6
            lda #$01
            sta L009B
            lda #$00
            sta ATRACT
            jmp L9FE5
L9FBF:      lda L0096
            eor #$0F
            bne L9FD7
            jsr LB149
            lda #$FF
            sta L1A38
            lda #$00
            sta L00F3
            lda #$55
            sta L1A48
L9FD6:      rts
L9FD7:      sta L0096
            tax
            ldy LA43E,X
            lda #$03
            sta L009B
            lda #$00
            sta ATRACT
L9FE5:      sty L009A
            sty L1A38
            lda LA44E,Y
            clc
            adc L1A10
            sta L0098
            tay
            lda LA473,Y
            bne L9FFC
            jmp LA071
L9FFC:      cmp #$FF
            beq LA063
            tax
            and #$1F
            sta L0098
            txa
            lsr
            lsr
            lsr
            lsr
            lsr
            tay
            lda LA463,Y
            sta L0099
            lda L1A30
            and #$80
            beq LA02C
            lda L1A08
            clc
            adc L0099
            tay
            lda L0500,Y
            sec
            sbc #$04
            cmp #$03
            bcs LA047
            jmp LB032
LA02C:      lda LA46B,Y
            and L0097
            bne LA075
            ldy L1A08
            lda L0500,Y
            sec
            sbc #$04
            cmp #$03
            bcs LA059
            lda L1A08
            clc
            adc L0099
            tay
LA047:      lda L0F00,Y
            and #$80
            beq LA059
            lda L1A30
            ora #$80
            sta L1A30
            jmp LB05B
LA059:      jsr LB09E
            lda L009B
            beq LA063
            jmp L9FE5
LA063:      lda #$00
            sta L00F3
            lda #$55
            sta L1A48
            lda L1A10
            sta L0098
LA071:      lda #$00
            sta L0099
LA075:      inc L00F3
            lda L00F3
            cmp #$05
            bcc LA082
            lda #$77
            sta L1A48
LA082:      jmp LB02B
LA085:      ldx L0094
            ldy LAB91,X
            tya
            asl
            tay
            lda L8B74,Y
            sta L0088
            lda L8B75,Y
            sta L0089
            tya
            lsr
            tay
            ldy #$05
LA09C:      lda (L0088),Y
            sta L1A31,Y
            dey
            bpl LA09C
            rts
LA0A5:      ldy #$07
LA0A7:      lda L1A30,Y
            and #$0F
            cmp #$03
            bcc LA0C0
            cmp #$0E
            beq LA0C0
            cmp #$0A
            beq LA0C4
            cmp #$05
            bne LA0C6
            lda #$0B
            bne LA0C6
LA0C0:      lda #$00
            beq LA0C6
LA0C4:      lda #$0F
LA0C6:      sta L1A30,Y
            dey
            bne LA0A7
            lda #$00
            sta L1A30
            sta L1A37
            lda #$10
            sta L1D38
            ldx L0094
            ldy LAB91,X
            tya
            asl
            tay
            lda L8B94,Y
            sta L0088
            lda L8B95,Y
            sta L0089
            tya
            lsr
            tay
            ldy #$06
LA0F0:      lda (L0088),Y
            sta L1A09,Y
            dey
            bpl LA0F0
            lda #$FD
            sta L1A08
            jsr LA269
            ldx #$03
LA102:      sta L1A48,X
            dex
            bne LA102
            lda #$01
            ldx #$04
LA10C:      sta L1A4B,X
            dex
            bne LA10C
            lda #$00
            sta L1A18
            lda #$00
            sta L1A20
            lda #$24
            sta L1A28
            ldx #$01
LA123:      ldy L1A30,X
            lda LABB6,Y
            sta L1A18,X
            lda LABC6,Y
            sta L1A28,X
            lda #$00
            cpy #$0A
            bne LA144
            lda #$FC
            sta L1A58,X
            lda #$01
            sta L1A20,X
            bne LA14A
LA144:      sta L1A58,X
            sta L1A20,X
LA14A:      inx
            cpx #$08
            bcc LA123
            ldy #$07
LA151:      lda #$0E
            sta L1A10,Y
            lda #$00
            sta L1A38,Y
            sta L1A40,Y
            dey
            bpl LA151
            lda #$40
            sta L1A47
            ldy #$00
LA168:      lda #$00
            sta L1300,Y
            lda L0F00,Y
            and #$80
            sta L0F00,Y
            iny
            bne LA168
            ldx #$07
LA17A:      lda L1A30,X
            ldy L1A08,X
            sta L1300,Y
            dex
            bne LA17A
            ldx #$04
LA188:      lda #$00
            ldy L1A07,X
            sec
            sbc L1200,Y
            adc #$04
            sta L1A4F,X
            ldy L1A0B,X
            lda L1700,Y
            sec
            sbc L0500,Y
            sta L1A53,X
            dex
            bne LA188
            rts
LA1A7:      ldy #$00
            lda #$00
LA1AB:      sta L0F00,Y
            iny
            bne LA1AB
            ldx L0094
            ldy LAB91,X
            tya
            asl
            tay
            lda L8B14,Y
            sta L0088
            lda L8B15,Y
            sta L0089
            tya
            lsr
            tay
            ldy #$00
LA1C8:      lda (L0088),Y
            cmp #$FF
            beq LA1D7
            tax
            lda #$80
            sta L0F00,X
            iny
            bne LA1C8
LA1D7:      rts
LA1D8:      ldy #$00
            sty L00A2
            sty L00A3
            ldx L0094
            ldy LAB91,X
            tya
            asl
            tay
            lda L8B34,Y
            sta L0088
            lda L8B35,Y
            sta L0089
            tya
            lsr
            tay
            ldx #$00
            ldy #$00
LA1F7:      lda (L0088),Y
            sta LOMEM
LA1FB:      lda LOMEM
            clc
            rol
            sta LOMEM
            bcc LA209
            inc L00A2
            lda #$FF
            bne LA20B
LA209:      lda #$00
LA20B:      sta L1000,X
            inx
            txa
            and #$07
            bne LA1FB
            iny
            cpy #$20
            bne LA1F7
            rts
LA21A:      ldx L0094
            ldy LAB91,X
            tya
            asl
            tay
            lda L8B54,Y
            sta L0088
            lda L8B55,Y
            sta L0089
            tya
            lsr
            tay
            ldy #$04
LA231:      lda #$00
            sta L1AA0,Y
            lda #$FF
            sta L1AA8,Y
            lda (L0088),Y
            sta L1A78,Y
            bne LA246
            lda #$FF
            bne LA248
LA246:      lda #$00
LA248:      sta L1A88,Y
            ldx L1A78,Y
            beq LA253
            jsr L889F
LA253:      lda L0500,X
            sta L1A80,Y
            sta L1A90,Y
            lda L0D00,X
            sec
            sbc #$03
            sta L1A98,Y
            dey
            bpl LA231
            rts
LA269:      lda L0094
            cmp #$1F
            bcc LA271
            lda #$1F
LA271:      lsr
            lsr
            lsr
            tay
            lda LAB89,Y
            rts
LA279:      stx L00A5
            sty L00A4
            stx L00E4
            ldy L00A5
            lda L1A30,Y
            bmi LA28D
            lda L1A30
            bmi LA2E0
            bpl LA292
LA28D:      lda L1A30
            bpl LA2E0
LA292:      lda L1A30,Y
            jmp LA2C0
LA298:      lda L00FF
            cmp #$C0
            beq LA29F
            rts
LA29F:      stx L00A5
            sty L00A4
            ldy #$07
LA2A5:      lda L1A08,Y
            cmp L00A4
            bne LA2B8
            lda L1A30,Y
            cmp L00A5
            bne LA2B8
            sty L00E4
            jmp LA2BE
LA2B8:      dey
            bne LA2A5
            jmp LA2E0
LA2BE:      lda L00A5
LA2C0:      and #$0F
            clc
            adc L1A30
            and #$3F
            tay
            lda LA2E8,Y
            tay
            tya
            asl
            tay
            lda LA328,Y
            sta L00E2
            lda LA329,Y
            sta L00E3
            tya
            lsr
            tay
            jsr LA2E5
LA2E0:      ldx L00A5
            ldy L00A4
            rts
LA2E5:      jmp (L00E2)
LA2E8:      .byte $01,$01,$01,$01,$02,$04,$05,$07
            .byte $07,$07,$07,$07,$07,$07,$07,$07
            .byte $01,$01,$01,$01,$01,$01,$05,$01
            .byte $06,$01,$01,$01,$01,$01,$01,$01
            .byte $01,$01,$01,$01,$02,$01,$05,$01
            .byte $01,$01,$03,$00,$01,$01,$01,$01
            .byte $01,$01,$01,$01,$01,$01,$05,$01
            .byte $06,$01,$01,$01,$01,$01,$01,$01
LA328:      .byte $38
LA329:      .byte $A3,$40,$A3,$41,$A3,$A8,$A3,$CA
            .byte $A3,$87,$A3,$00,$A4,$39,$A4,$A4
            .byte $E4,$A9,$50,$99,$40,$1A,$60,$60
            ldy L00E4
            lda #$60
            sta L1A40,Y
            lda #$00
            sta L1A18,Y
            lda #$32
            sta L1BBD
            lda L1A30
            ora #$10
            sta L1A30
            and #$80
            bne LA37B
            ldy L00A4
            lda #$01
            sta L1300,Y
LA365:      ldy L00E4
            sta L1A30,Y
            lda L1A18
            clc
            adc #$20
            sta L1A18
            inc L1D3F
            ldy #$03
            jmp LB82A
LA37B:      lda #$01
            ora #$80
            ldy L00A4
            sta L0F00,Y
            jmp LA365
            ldy L00E4
            lda #$60
            sta L1A40,Y
            lda #$01
            sta L1A18,Y
            lda #$01
            sta L1A30,Y
            ldy L00A4
            sta L1300,Y
            inc L1D3F
            inc L1D3F
            ldy #$08
            jmp LB82A
            ldy L00E4
            lda #$00
            sta L1A40,Y
            lda L1A30,Y
            ora #$0F
            sta L1A30,Y
            tay
            and #$80
            bne LA3C3
            tya
            ldy L00A4
            sta L1300,Y
            rts
LA3C3:      tya
            ldy L00A4
            sta L0F00,Y
            rts
            inc L1D3F
            ldy #$0A
            jsr LB82A
            lda #$2D
LA3D4:      ldx L00E4
            ldy L1A08,X
            sta L1A18,X
            lda #$60
            sta L1A40,X
            lda #$42
            sta L1A28,X
            lda L1A30,X
            and #$80
            beq LA3F7
            lda #$02
            ora #$80
            sta L0F00,Y
            jmp LA3FC
LA3F7:      lda #$02
            sta L1300,Y
LA3FC:      sta L1A30,X
            rts
            inc L1D3F
            inc L1D3F
            inc L1D3F
            inc L1D3F
            inc L1D3F
            inc L1D3F
            lda #$2C
            jmp LA3D4
            ldy L00E4
            lda L1A30,Y
            and #$80
            bne LA42A
            ldy L00A4
            lda #$00
            sta L1300,Y
            jmp LA431
LA42A:      ldy L00A4
            lda #$00
            sta L0F00,Y
LA431:      ldy L00E4
            lda #$00
            sta L1A30,Y
            rts
            lda #$07
            sta L00FF
            rts
LA43E:      .byte $00,$00,$04,$00,$06,$07,$05,$00
            .byte $02,$01,$03,$00,$00,$00,$00,$00
LA44E:      .byte $F9,$FB,$FD,$02,$07,$05,$03,$FE
LA456:      .byte $02,$03,$04,$05,$06
LA45B:      .byte $07,$00,$01,$02,$03,$04,$05,$06
LA463:      .byte $EF,$F0,$F1,$01,$11,$10,$0F,$FF
LA46B:      .byte $80,$40,$20,$10,$08,$04,$02,$01
LA473:      .byte $15,$FF,$31,$FF,$33,$EB,$35,$00
            .byte $51,$00,$F0,$00,$00,$67,$00,$F5
            .byte $00,$00,$6C,$00,$CB,$00,$A7,$71
            .byte $A9,$FF,$AB,$FF,$87
LA490:      .byte $00,$00,$FE,$00,$FF,$02,$00,$00
            .byte $FE,$01,$01,$02,$FF,$00,$00,$00
            .byte $01,$FE,$FF,$FF,$02,$00,$00,$FE
            .byte $01,$00,$02,$00,$00
LA4AD:      .byte $02,$00,$00,$00,$01,$00,$02,$FE
            .byte $00,$FF,$01,$00,$FF,$FE,$00,$02
            .byte $01,$00,$FF,$01,$00,$02,$FE,$00
            .byte $FF,$00,$00,$00
            inc L94A6,X
            ldy LAB91,X
            sty L1D5B
            tya
            asl
            tay
            lda L8AF4,Y
            sta L0088
            lda L8AF5,Y
            sta L0089
            tya
            lsr
            tay
            jsr LA57A
            lda #$00
            sta LOMEM+1
            sta L0082
            sta LOMEM
            sta L0083
            sta L0085
            jmp LA4FB
LA4F4:      inc L0083
            lda L0085
            bne LA4FB
            rts
LA4FB:      ldy L0083
            lda (L0088),Y
            lsr
            bcc LA534
            lsr
            bcc LA52C
            tax
            and #$03
            eor #$FF
            sta L0082
            inc L0082
LA50E:      txa
            lsr
            lsr
            sta LOMEM+1
            inc LOMEM+1
            lda LOMEM
LA517:      clc
            adc L0082
            ldy L0085
            sta L0500,Y
            inc L0085
            beq LA4F4
            dec LOMEM+1
            bne LA517
            sta LOMEM
            jmp LA4F4
LA52C:      tax
            and #$03
            sta L0082
            jmp LA50E
LA534:      lsr
            bcc LA543
            ldy L0085
            sta L0500,Y
            sta LOMEM
            inc L0085
            jmp LA4F4
LA543:      cmp #$00
            beq LA56B
            tax
            lda L0083
            sta L0084
            lda #$00
            sta L0083
            lda L0088
            sta L008A
            lda L0089
            sta L008B
            txa
            asl
            tax
            lda L97B1,X
            sta L0088
            lda L97B2,X
            sta L0089
            txa
            lsr
            tax
            jmp LA4FB
LA56B:      lda L008A
            sta L0088
            lda L008B
            sta L0089
            lda L0084
            sta L0083
            jmp LA4F4
LA57A:      lda #$00
            tay
LA57D:      sta L0500,Y
            iny
            bne LA57D
            rts
LA584:      ldy L00AB
            ldx #$13
LA588:      lda #$00
            sta L2700,Y
            lda #$3F
            and L2300,Y
            sta L2300,Y
            dey
            dex
            bpl LA588
            ldy L00AA
            ldx #$13
LA59D:      lda #$00
            sta L2600,Y
            lda #$CF
            and L2300,Y
            sta L2300,Y
            dey
            dex
            bpl LA59D
            ldy L00A9
            ldx #$13
LA5B2:      lda #$00
            sta L2500,Y
            lda #$F3
            and L2300,Y
            sta L2300,Y
            dey
            dex
            bpl LA5B2
            ldy L00A8
            ldx #$13
LA5C7:      lda #$00
            sta L2400,Y
            lda #$FC
            and L2300,Y
            sta L2300,Y
            dey
            dex
            bpl LA5C7
            ldx #$03
            jsr LA63D
LA5DD:      lda (L00CE),Y
            sta L2700,X
            lda (L00D6),Y
            asl
            asl
            asl
            asl
            asl
            asl
            ora L2300,X
            sta L2300,X
            dex
            dey
            bpl LA5DD
            ldx #$02
            jsr LA63D
LA5F9:      lda (L00CC),Y
            sta L2600,X
            lda (L00D4),Y
            asl
            asl
            asl
            asl
            ora L2300,X
            sta L2300,X
            dex
            dey
            bpl LA5F9
            ldx #$01
            jsr LA63D
LA613:      lda (L00CA),Y
            sta L2500,X
            lda (L00D2),Y
            asl
            asl
            ora L2300,X
            sta L2300,X
            dex
            dey
            bpl LA613
            ldx #$00
            jsr LA63D
LA62B:      lda (L00C8),Y
            sta L2400,X
            lda (L00D0),Y
            ora L2300,X
            sta L2300,X
            dex
            dey
            bpl LA62B
            rts
LA63D:      lda L00B8,X
            sta HPOSP0,X
            lda L00BC,X
            sta HPOSM0,X
            lda L00C4,X
            sta SIZEP0,X
            txa
            tay
            ldx L00C0,Y
            ldy #$13
            rts
LA653:      ldy #$00
            tya
            tax
LA657:      sta L1D68,X
            sta L1E68,X
            sta L1E70,X
            dex
            bne LA657
            lda #$68
            sta L00F8
            lda #$1D
            sta L00F9
LA66B:      lda LAAAE,X
            sta L1D49
LA671:      lda L1D49
            jsr LA68D
            jsr LA68D
            sta L1D49
            iny
            bne LA682
            inc L00F9
LA682:      tya
            and #$03
            bne LA671
            inx
            cpx #$82
            bne LA66B
            rts
LA68D:      asl
            pha
            lda (L00F8),Y
            rol
            sta (L00F8),Y
            pla
            rts
LA696:      .byte $1A
LA697:      .byte $A8,$2E,$A8,$6A,$A8,$7E,$A8,$92
            .byte $A8,$A6,$A8,$42,$A8,$56,$A8,$5A
            .byte $A9,$6E,$A9,$5A,$A9,$6E,$A9,$D2
            .byte $A9,$FA,$A9,$E6,$A9,$FA,$A9,$0E
            .byte $AA,$22,$AA,$36,$AA,$4A,$AA,$82
            .byte $A9,$96,$A9,$AA,$A9,$BE,$A9,$CA
            .byte $A7,$DE,$A7,$F2,$A7,$06,$A8,$5E
            .byte $AA,$72,$AA,$86,$AA,$9A,$AA,$BA
            .byte $A8,$CE,$A8,$0A,$A9,$1E,$A9,$32
            .byte $A9,$46,$A9,$E2,$A8,$F6,$A8,$A2
            .byte $A7,$7A,$A7,$B6,$A7,$8E,$A7,$66
            .byte $A7,$52,$A7,$5C,$1F
LA6F4:      .byte $A4
LA6F5:      .byte $1D,$B8,$1D,$F4,$1D,$08,$1E,$1C
            .byte $1E,$44,$1E,$CC,$1D,$E0,$1D,$48
            .byte $1F,$34,$1F,$48,$1F,$34,$1F,$D0
            .byte $1E,$E4,$1E,$D0,$1E,$E4,$1E,$E4
            .byte $1E,$F8,$1E,$0C,$1F,$20,$1F,$BC
            .byte $1E,$BC,$1E,$BC,$1E,$BC,$1E,$90
            .byte $1D,$90,$1D,$90,$1D,$90,$1D,$5C
            .byte $1F,$5C,$1F,$5C,$1F,$5C,$1F,$58
            .byte $1E,$30,$1E,$94,$1E,$80,$1E,$A8
            .byte $1E,$A8,$1E,$6C,$1E,$80,$1E,$68
            .byte $1D,$7C,$1D,$7C,$1D,$68,$1D,$5C
            .byte $1F,$5C,$1F,$5C,$1F,$7E,$60,$7E
            .byte $06,$66,$7E,$00,$7E,$66,$66,$66
            .byte $66,$7E,$00,$7E,$66,$66,$66,$66
            .byte $7E,$7E,$06,$7E,$06,$7E,$00,$7E
            .byte $66,$66,$7E,$00,$7E,$66,$66,$7E
            .byte $00,$7E,$66,$66,$7E,$38,$E8,$F8
            .byte $88,$18,$70,$80,$40,$20,$10,$08
            .byte $04,$02,$01,$11,$F1,$D1,$01,$0F
            .byte $0D,$0E,$17,$3D,$38,$3C,$3C,$01
            .byte $02,$04,$08,$10,$20,$40,$80,$0C
            .byte $08,$18,$A8,$4F,$AB,$1C,$17,$1F
            .byte $11,$18,$0E,$01,$02,$04,$08,$10
            .byte $20,$40,$80,$88,$8F,$8B,$80,$F0
            .byte $B0,$70,$E8,$BC,$1C,$3C,$3C,$80
            .byte $40,$20,$10,$08,$04,$02,$01,$30
            .byte $10,$18,$15,$F2,$D5,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$3C,$7E
            .byte $FF,$BD,$DB,$7E,$81,$81,$FF,$7E
            .byte $3C,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$3C,$7E,$FF,$DF,$BF,$EF
            .byte $1F,$1F,$FF,$7E,$3C,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$3C,$7E
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$7E
            .byte $3C,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$3C,$7E,$FF,$FB,$FD,$F7
            .byte $F8,$F8,$FF,$7E,$3C,$66,$EE,$FE
            .byte $FF,$7E,$7E,$3E,$7E,$F7,$E7,$E7
            .byte $F3,$F3,$FF,$7E,$00,$18,$38,$3C
            .byte $38,$66,$EE,$FE,$FF,$7E,$7E,$3E
            .byte $7E,$E7,$E4,$E0,$FF,$FF,$FF,$7E
            .byte $00,$03,$A7,$F6,$70,$76,$DB,$2B
            .byte $8F,$0F,$1F,$7C,$7E,$F7,$F3,$F9
            .byte $F9,$F3,$FF,$7E,$00,$C0,$E5,$6F
            .byte $0E,$76,$DB,$2B,$8F,$0F,$1F,$7C
            .byte $7E,$F7,$E7,$E7,$CF,$9F,$FF,$7E
            .byte $00,$18,$1C,$3C,$1C,$E6,$DB,$D4
            .byte $F1,$F0,$F8,$3E,$7E,$EF,$CF,$9F
            .byte $9F,$CF,$FF,$7E,$00,$03,$A7,$F6
            .byte $70,$E6,$DB,$D4,$F1,$F0,$F8,$3E
            .byte $7E,$EF,$E7,$E7,$F3,$F9,$FF,$7E
            .byte $00,$18,$38,$3C,$38,$6E,$3B,$47
            .byte $97,$07,$0E,$3C,$7E,$FF,$F9,$F9
            .byte $C1,$C3,$E7,$FF,$7E,$00,$0C,$7E
            .byte $3E,$6E,$3B,$47,$97,$07,$0E,$3C
            .byte $7E,$FF,$F9,$FC,$FE,$F8,$F9,$FF
            .byte $7E,$00,$77,$33,$77,$1C,$7E,$3C
            .byte $00,$00,$00,$00,$00,$FF,$FF,$00
            .byte $00,$F3,$FF,$7E,$00,$18,$38,$3C
            .byte $38,$1C,$7E,$3C,$00,$00,$00,$00
            .byte $00,$FF,$FF,$00,$00,$FF,$FF,$7E
            .byte $00,$03,$A7,$F6,$70,$1C,$7E,$3C
            .byte $00,$00,$00,$00,$00,$FF,$FF,$00
            .byte $00,$F3,$FF,$7E,$00,$C0,$E5,$6F
            .byte $0E,$1C,$7E,$3C,$00,$00,$00,$00
            .byte $00,$FF,$FF,$00,$00,$9F,$FF,$7E
            .byte $00,$18,$1C,$3C,$1C,$1C,$7E,$3C
            .byte $00,$00,$00,$00,$00,$FF,$FF,$00
            .byte $00,$CF,$FF,$7E,$00,$03,$A7,$F6
            .byte $70,$1C,$7E,$3C,$00,$00,$00,$00
            .byte $00,$FF,$FF,$00,$00,$F9,$FF,$7E
            .byte $00,$18,$38,$3C,$38,$1C,$7E,$3C
            .byte $00,$00,$00,$00,$00,$FF,$FF,$00
            .byte $00,$C3,$E7,$FF,$7E,$00,$0C,$7E
            .byte $3E,$1C,$7E,$3C,$00,$00,$00,$00
            .byte $00,$FF,$FF,$00,$00,$F8,$F9,$FF
            .byte $7E,$00,$77,$33,$77,$1C,$7E,$FF
            .byte $DF,$F7,$EF,$FF,$FB,$D7,$EF,$42
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$3C,$7E,$FF,$FF,$DF,$E7
            .byte $FF,$FF,$F3,$EF,$66,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$C3,$C3,$81
            .byte $81,$BD,$FF,$DB,$DB,$FF,$E7,$E7
            .byte $FF,$7E,$3C,$18,$18,$18,$30,$60
            .byte $40,$18,$18,$08,$08,$3C,$7E,$BF
            .byte $BF,$FF,$7F,$7F,$FF,$7E,$3C,$18
            .byte $18,$18,$30,$60,$40,$C3,$C3,$81
            .byte $81,$BD,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$7E,$3C,$18,$18,$18,$30,$60
            .byte $40,$18,$18,$10,$10,$3C,$7E,$FD
            .byte $FD,$FF,$FE,$FE,$FF,$7E,$3C,$18
            .byte $18,$18,$0C,$06,$02,$70,$FC,$F8
            .byte $78,$38,$7E,$FF,$7E,$38,$7E,$FF
            .byte $7E,$38,$7E,$FF,$7E,$38,$7E,$73
            .byte $E0,$0E,$3F,$1F,$1E,$1C,$7E,$FF
            .byte $7E,$1C,$7E,$FF,$7E,$1C,$7E,$FF
            .byte $7E,$3C,$7E,$CE,$07,$3C,$C3,$C3
            .byte $66,$18,$7E,$FF,$7E,$3C,$7E,$FF
            .byte $7E,$3C,$7E,$FF,$7E,$3C,$7E,$E7
            .byte $C3,$3C,$E7,$E7,$7E,$18,$7E,$FF
            .byte $7E,$3C,$7E,$FF,$7E,$3C,$7E,$FF
            .byte $7E,$3C,$7E,$E7,$C3,$3C,$E7,$E7
            .byte $7E,$18,$7E,$FF,$7E,$3C,$7E,$FF
            .byte $7E,$00,$00,$00,$00,$3C,$7E,$E7
            .byte $C3,$3C,$E7,$E7,$7E,$18,$7E,$FF
            .byte $7E,$00,$00,$00,$00,$3C,$7E,$FF
            .byte $7E,$3C,$7E,$E7,$C3,$3C,$E7,$E7
            .byte $7E,$00,$00,$00,$00,$3C,$7E,$FF
            .byte $7E,$3C,$7E,$FF,$7E,$3C,$7E,$E7
            .byte $C3,$30,$78,$58,$78,$30,$74,$5C
            .byte $96,$9A,$55,$59,$28,$28,$08,$14
            .byte $24,$46,$82,$42,$C3,$10,$38,$2C
            .byte $36,$5C,$30,$7C,$B2,$9B,$B1,$99
            .byte $93,$BA,$28,$28,$24,$24,$22,$42
            .byte $81,$0C,$1E,$1A,$1E,$0C,$2E,$3A
            .byte $69,$59,$AA,$9A,$14,$14,$10,$28
            .byte $24,$62,$41,$42,$C3,$08,$1C,$34
            .byte $6C,$3A,$0C,$3E,$4D,$D9,$8D,$99
            .byte $C9,$5D,$14,$14,$24,$24,$44,$42
            .byte $81
LAAAE:      .byte $A8,$0F,$FF,$F0,$00,$54,$0F,$FF
            .byte $F0,$00,$00,$00,$00,$FF,$C0,$00
            .byte $50,$FF,$C0,$00,$00,$50,$FF,$00
            .byte $00,$3E,$A0,$55,$40,$00,$3E,$A0
            .byte $FF,$C0,$00,$3D,$50,$AA,$80,$00
            .byte $3D,$50,$FF,$C0,$00,$1F,$E0,$3F
            .byte $F0,$00,$03,$FF,$0F,$F0,$00,$1F
            .byte $F0,$3F,$F0,$00,$03,$FF,$0F,$FC
            .byte $00,$03,$FF,$0F,$40,$00,$03,$FF
            .byte $0F,$C0,$00,$03,$FF,$0F,$80,$00
            .byte $03,$FF,$0F,$F0,$00,$00,$0F,$3C
            .byte $00,$00,$0F,$00,$00,$00,$00,$3C
            .byte $00,$00,$00,$00,$3C,$00,$00,$FF
            .byte $00,$3C,$00,$FF,$00,$00,$3C,$FF
            .byte $00,$00,$00,$00,$3F,$FF,$FF,$FF
            .byte $03,$FF,$FF,$FF,$FF,$00,$00,$00
            .byte $00,$00
LAB30:      ldx #$00
LAB32:      dex
            lda #$FF
            sta L1800,X
            lda L1200,X
            clc
            adc #$08
            sta L1900,X
            txa
            and #$0F
            cmp #$0F
            beq LAB55
            lda L1200,X
            cmp L1901,X
            bcc LAB55
            lda #$F0
            sta L1800,X
LAB55:      lda L1200,X
            cpx #$F0
            bcs LAB84
            cmp L1910,X
            bcc LAB66
            lda #$F0
            sta L1800,X
LAB66:      txa
            and #$0F
            cmp #$0F
            beq LAB84
            lda L1911,X
            cmp L1200,X
            bcs LAB7C
            pha
            lda #$F0
            sta L1800,X
            pla
LAB7C:      cmp L1900,X
            bcs LAB84
            sta L1900,X
LAB84:      cpx #$00
            bne LAB32
            rts
LAB89:      .byte $01,$11,$49,$55,$57,$77,$7F,$7F
LAB91:      .byte $0F,$00,$09,$06,$03,$0B,$01,$08
            .byte $03,$0A,$0D,$05,$0C,$07,$03,$0E
            .byte $0B,$0A,$01,$06,$07,$00,$00,$0E
            .byte $0B,$0C,$0D,$05,$0B,$07,$03,$08
            .byte $02,$0A,$0D,$05,$04
LABB6:      rol L2E20
            jsr L1000
            .byte $00,$00,$28,$18,$08,$0C,$14,$1C
            .byte $00,$08
LABC6:      bit ICBALZ
            bit ICBALZ
            .byte $C2,$C2
            bit $00
            ldx MLTTMP
            dec L00C2,X
            asl L2A0E
            dec L00A0,X
            ora L00B9
            inc L00AB,X
            sta COLOR0,Y
            dey
            bpl LABD8
            lda #$20
            sta PMBASE
            lda #$3D
            sta SDMCTL
            lda #$03
            sta GRACTL
            lda #$11
            sta GPRIOR
            rts
            .byte $44,$86,$0C,$42,$00
LABFB:      lda #$00
            sta SDLSTL
            lda #$04
            sta SDLSTH
            rts
LAC06:      ldy #$00
            lda #$70
            sta L0400,Y
            iny
            sta L0400,Y
            iny
            sta L0400,Y
            iny
            lda #$4E
            sta L0400,Y
            iny
            lda #$00
            sta L0400,Y
            iny
            lda #$28
            sta L0400,Y
            iny
            lda #$0E
LAC2A:      sta L0400,Y
            iny
            cpy #$45
            bne LAC2A
            lda #$4E
            sta L0400,Y
            iny
            lda #$00
            sta L0400,Y
            iny
            lda #$30
            sta L0400,Y
            iny
            lda #$0E
LAC46:      sta L0400,Y
            iny
            cpy #$C7
            bne LAC46
            lda #$41
            sta L0400,Y
            iny
            lda #$00
            sta L0400,Y
            iny
            lda #$04
            sta L0400,Y
            rts
LAC60:      lda #$03
            sta L1A00
            sta L1A01
            sta L1A02
            sta L1A03
            ldx #$03
LAC70:      txa
            tay
LAC72:      lda L1A08,X
            cmp L1A07,Y
            bcc LAC85
            bne LAC99
            beq LAC91
LAC7E:      dey
            bne LAC72
            dex
            bne LAC70
            rts
LAC85:      lda L19FF,Y
            sec
            sbc #$01
            sta L19FF,Y
            jmp LAC7E
LAC91:      lda L1A10,X
            cmp L1A0F,Y
            bcc LAC85
LAC99:      dec L1A00,X
            jmp LAC7E
LAC9F:      ldy #$03
            jsr LACB0
            ldy #$02
            jsr LACB0
            ldy #$01
            jsr LACB0
            ldy #$00
LACB0:      sty L1BC1
            lda L1A1C,Y
            sta L1BBF
            lda L1A6C,Y
            and #$0F
            tay
            lda LAE3F,Y
            cmp #$FF
            bne LACC7
            rts
LACC7:      clc
            adc L1BBF
            tay
            tya
            asl
            tay
            lda LAE54,Y
            sta L00D8
            lda LAE55,Y
            sta L00D9
            tya
            lsr
            tay
            ldy L1BC1
            lda L1A70,Y
            sta L00DC
            lda L1A74,Y
            sta L00DD
            ldy #$17
            sty L00A4
LACED:      ldy L00A4
            lda (L00D8),Y
            ldy #$01
            sta (L00DC),Y
            dec L00A4
            ldy L00A4
            lda (L00D8),Y
            ldy #$00
            sta (L00DC),Y
            clc
            lda #$E0
            adc L00DC
            sta L00DC
            lda #$FF
            adc L00DD
            sta L00DD
            dec L00A4
            bpl LACED
            rts
LAD11:      ldy #$03
            jsr LAD22
            ldy #$02
            jsr LAD22
            ldy #$01
            jsr LAD22
            ldy #$00
LAD22:      sty L1BC1
            ldx LAE50,Y
            lda LAE4F,Y
            sta L00A4
            lda L1A70,Y
            sta L00DC
            lda L1A74,Y
            sta L00DD
LAD37:      lda L1BD4,X
            ldy #$01
            sta (L00DC),Y
            dex
            lda L1BD4,X
            ldy #$00
            sta (L00DC),Y
            clc
            lda #$E0
            adc L00DC
            sta L00DC
            lda #$FF
            adc L00DD
            sta L00DD
            dex
            cpx L00A4
            bne LAD37
            rts
LAD59:      ldy #$03
            jsr LAD6A
            ldy #$02
            jsr LAD6A
            ldy #$01
            jsr LAD6A
            ldy #$00
LAD6A:      sty L1BC1
            lda L1A6C,Y
            and #$80
            bne LADBF
            lda L1A60,Y
            sta L1BBE
            lda L1A64,Y
            tay
            lda L1400,Y
            sta L1BC2
            lda L1500,Y
            sta L1BC3
            lda L0500,Y
LAD8D:      clc
            adc #$03
            adc L1BBE
            tay
            and #$07
            tax
            tya
            lsr
            lsr
            lsr
            tay
            lda L1BC2
            sec
            sbc LB1A8,X
            sta L1BC2
            lda L1BC3
            sbc L1FB0,Y
            sta L1BC3
            ldy L1BC1
            lda L1BC2
            sta L1A70,Y
            lda L1BC3
            sta L1A74,Y
            rts
LADBF:      lda #$00
            sta L1BBE
            lda L1A64,Y
            tay
            lda L1400,Y
            sta L1BC2
            lda L1500,Y
            sta L1BC3
            lda #$04
            jmp LAD8D
LADD9:      ldy #$03
            jsr LADEA
            ldy #$02
            jsr LADEA
            ldy #$01
            jsr LADEA
            ldy #$00
LADEA:      sty L1BC1
            ldx LAE50,Y
            lda LAE4F,Y
            sta L00A4
            lda L1A70,Y
            sta L00DC
            lda L1A74,Y
            sta L00DD
LADFF:      ldy #$01
            lda (L00DC),Y
            sta L1BD4,X
            ldy #$00
            lda (L00DC),Y
            dex
            sta L1BD4,X
            clc
            lda #$E0
            adc L00DC
            sta L00DC
            lda #$FF
            adc L00DD
            sta L00DD
            dex
            cpx L00A4
            bne LADFF
            rts
LAE21:      ldy #$03
LAE23:      lda L1A54,Y
            sta L1A60,Y
            lda L1A0C,Y
            sta L1A64,Y
            lda L00AC,Y
            sta L1A68,Y
            lda L1A34,Y
            sta L1A6C,Y
            dey
            bpl LAE23
            rts
LAE3F:      .byte $FF,$10,$FF,$FF,$00,$FF,$04,$08
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$0C,$FF
LAE4F:      .byte $FF
LAE50:      .byte $17,$2F,$47,$5F
LAE54:      .byte $DC
LAE55:      .byte $AE,$DC,$AE,$DC,$AE,$DC,$AE,$F4
            .byte $AE,$0C,$AF,$24,$AF,$3C,$AF,$54
            .byte $AF,$54,$AF,$6C,$AF,$6C,$AF,$7C
            .byte $AE,$94,$AE,$AC,$AE,$C4,$AE,$9C
            .byte $AF,$84,$AF,$84,$AF,$84,$AF,$44
            .byte $CD,$40,$3F,$47,$FD,$D4,$FD,$5D
            .byte $4F,$D5,$FD,$13,$34,$4F,$0D,$1F
            .byte $F4,$4C,$D1,$3C,$34,$7C,$31,$4C
            .byte $D4,$03,$F4,$7F,$D4,$4F,$DD,$D4
            .byte $F5,$5F,$DD,$33,$41,$F0,$D4,$FF
            .byte $41,$CD,$14,$C3,$43,$C3,$17,$CD
            .byte $44,$3F,$40,$47,$FD,$FD,$D4,$4F
            .byte $5D,$FD,$D5,$34,$13,$0D,$4F,$F4
            .byte $1F,$D1,$4C,$34,$3C,$31,$7C,$D4
            .byte $4C,$F4,$03,$D4,$7F,$DD,$4F,$F5
            .byte $D4,$DD,$5F,$41,$33,$D4,$F0,$41
            .byte $FF,$14,$CD,$43,$C3,$17,$C3,$02
            .byte $A0,$2A,$A8,$1A,$A4,$15,$54,$15
            .byte $54,$15,$54,$15,$54,$15,$54,$3F
            .byte $FC,$3F,$FC,$55,$55,$15,$54,$2F
            .byte $F8,$0A,$F0,$2A,$F8,$AA,$BE,$99
            .byte $AE,$95,$AA,$99,$AA,$2A,$A8,$0A
            .byte $A0,$03,$FF,$3F,$FC,$00,$00,$2F
            .byte $F8,$0A,$A0,$2A,$A8,$AA,$BE,$99
            .byte $BE,$95,$BE,$99,$BA,$2A,$A8,$0A
            .byte $A0,$03,$FF,$3F,$FC,$00,$00,$2F
            .byte $F8,$0A,$A0,$2A,$A8,$AA,$AA,$99
            .byte $AA,$95,$BE,$99,$BE,$2A,$B8,$0A
            .byte $B0,$03,$FF,$3F,$FC,$00,$00,$2F
            .byte $F8,$0A,$A0,$2A,$A8,$AA,$AA,$99
            .byte $AA,$95,$AA,$9B,$AB,$2A,$EC,$0A
            .byte $B0,$03,$FF,$3F,$FC,$00,$00,$00
            .byte $00,$25,$58,$0A,$A0,$20,$08,$80
            .byte $02,$80,$42,$81,$42,$8D,$F1,$17
            .byte $5C,$1D,$54,$05,$50,$00,$00,$00
            .byte $00,$25,$58,$0A,$A0,$20,$08,$80
            .byte $02,$80,$02,$8C,$06,$BD,$0D,$1F
            .byte $7F,$35,$FC,$0C,$CC,$00,$00,$00
            .byte $00,$10,$00,$10,$00,$10,$00,$05
            .byte $40,$04,$40,$05,$50,$01,$10,$01
            .byte $54,$00,$44,$00,$54,$00,$00,$00
            .byte $00,$15,$00,$10,$00,$14,$00,$01
            .byte $00,$15,$00,$01,$50,$01,$10,$01
            .byte $54,$00,$44,$00,$54,$00,$00
LAFB4:      ldy L1A40
            bne LAFBA
            rts
LAFBA:      lda L1A30
            ora #$20
            dec L1A40
            beq LAFDB
            ldy L1A40
            cpy #$14
            bcc LAFD3
            dec L1A50
            dec L1A50
            bne LAFE2
LAFD3:      inc L1A50
            inc L1A50
            bne LAFE2
LAFDB:      ldy #$00
            sty L1A50
            eor #$20
LAFE2:      sta L1A30
            rts
LAFE6:      jsr LB016
            ldx #$03
LAFEB:      jsr LAFF2
            dex
            bne LAFEB
            rts
LAFF2:      lda L1A50,X
            beq LB005
            clc
            adc #$08
            bcs LB000
            sta L1A50,X
            rts
LB000:      lda #$00
            sta L1A50,X
LB005:      lda L1A51
            ora L1A52
            ora L1A53
            beq LB011
            rts
LB011:      lda #$C0
            sta L00FF
            rts
LB016:      ldx #$04
LB018:      lda L1A53,X
            beq LB027
            clc
            adc #$F8
            bcs LB024
            lda #$00
LB024:      sta L1A53,X
LB027:      dex
            bne LB018
            rts
LB02B:      lda L1A08
            clc
            adc L0099
            tay
LB032:      ldx #$00
            jsr LB0B7
            lda L0093
            beq LB05B
            sty L00A4
            ldy #$0D
            jsr LB82A
            ldy L00A4
            sed
            lda L00A3
            cmp #$99
            beq LB050
            clc
            adc #$01
            sta L00A3
LB050:      cld
            inc L00F7
            lda L00A2
            bne LB05B
            lda #$01
            sta L00FF
LB05B:      sty L1A08
            lda L1A30
            bpl LB070
            lda L0F00,Y
            bmi LB070
            lda L1A30
            eor #$80
            sta L1A30
LB070:      jsr LB149
            lda L0098
            sta L1A10
            lda L1A08
            and #$0F
            sta L00A0
            lda L1A08
            and #$F0
            sta L009F
            lda L1A30
            and #$10
            beq LB094
            lda L009A
            ora #$20
            jmp LB096
LB094:      lda L009A
LB096:      and #$FE
            ora L0087
            sta L1A18
            rts
LB09E:      dec L009B
            lda L009B
            cmp #$02
            beq LB0AB
            cmp #$01
            beq LB0B1
            rts
LB0AB:      ldx L009A
            ldy LA45B,X
            rts
LB0B1:      ldx L009A
            ldy LA456,X
            rts
LB0B7:      lda #$00
            sta L0093
            sty L00A4
            lda L1000,Y
            beq LB0ED
            lda L1A30,X
            bmi LB0D1
            tay
            and #$20
            bne LB0D1
            lda LB197,Y
            bne LB0D4
LB0D1:      ldy L00A4
            rts
LB0D4:      ldy L00A4
            lda #$00
            sta L1000,Y
            inc L1BC0
            tya
            ldy L1BC0
            sta L1BC4,Y
            lda #$FF
            sta L0093
            dec L00A2
            bne LB0ED
LB0ED:      ldy L00A4
            rts
LB0F0:      ldx L1BC0
            beq LB104
LB0F5:      ldy L1BC4,X
            jsr LB105
            ldx L1BC0
            dex
            stx L1BC0
            bne LB0F5
LB104:      rts
LB105:      lda L1400,Y
            sta L008C
            lda L1500,Y
            sta L008D
            lda L0500,Y
            clc
            adc #$03
            tay
            and #$07
            tax
            tya
            lsr
            lsr
            lsr
            tay
            lda L008C
            sec
            sbc LB1A8,X
            sta L008C
            lda L008D
            sbc L1FB0,Y
            sta L008D
            ldy #$01
            lda (L008C),Y
            ora #$80
            jsr L8606
            ora #$02
            jsr L85EE
            ora #$A0
            jsr L8606
            jsr L85EE
            ora #$80
            jsr L85EE
            rts
LB149:      lda L1A30
            bmi LB157
            ldx L1300,Y
            beq LB156
            jsr LA298
LB156:      rts
LB157:      ldx L0F00,Y
            beq LB156
            jmp LA298
LB15F:      ldx #$00
LB161:      lda L1F70,X
            clc
            adc #$81
            sta L1F72,X
            ldy L1F71,X
            bcc LB170
            iny
LB170:      tya
            sta L1F73,X
            lda L1F90,X
            clc
            adc #$7F
            sta L1F92,X
            ldy L1F91,X
            bcc LB183
            iny
LB183:      tya
            sta L1F93,X
            inx
            inx
            cpx #$1E
            bne LB161
            ldy #$1F
LB18F:      tya
            sta L1FB0,Y
            dey
            bpl LB18F
            rts
LB197:      .byte $FF,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$FF,$FF,$FF,$00,$00,$00,$00
            .byte $FF
LB1A8:      .byte $00
            jsr L6040
            .byte $80
            ldy #$C0
            cpx #$F8
            ldx L00EE
            lda L1C38,X
            pha
            lda L00F7
            beq LB1D6
            dec L00F7
            lda L00A3
            clc
            adc L1C36,X
            sta L1C36,X
            lda L1C37,X
            adc #$00
            sta L1C37,X
            lda L1C38,X
            adc #$00
            sta L1C38,X
LB1D6:      ldy L1D3F
            beq LB1E0
            lda #$05
            jsr LB24E
LB1E0:      sty L1D3F
            ldy L1D5E
            beq LB1ED
            lda #$01
            jsr LB24E
LB1ED:      sty L1D5E
            pla
            and #$0F
            beq LB20E
            cmp #$05
            beq LB20E
            lda L1C38,X
            and #$0F
            beq LB204
            cmp #$05
            bne LB20E
LB204:      inc L1BB8,X
            ldy #$0A
            jsr LB82A
            ldx L00EE
LB20E:      ldy L1D5F
            beq LB224
            lda #$00
            sta L1C36,X
            sta L1C37,X
            sta L1C38,X
            inx
            lda #$05
            jsr LB24E
LB224:      sty L1D5F
            cld
            ldy #$05
            inx
            inx
LB22C:      lda L1C36,X
            sta L1D42,Y
            lsr
            lsr
            lsr
            lsr
            sta L1D43,Y
            dex
            dey
            dey
            bpl LB22C
            ldx #$05
LB240:      lda L1D43,X
            bne LB248
            dex
            bne LB240
LB248:      jsr LB374
            jmp LB4BC
LB24E:      sta L1D60
LB251:      lda L1C37,X
            clc
            adc L1D60
            sta L1C37,X
            lda L1C38,X
            adc #$00
            sta L1C38,X
            dey
            bne LB251
            rts
LB267:      .byte $00
LB268:      .byte $15
LB269:      .byte $06
LB26A:      .byte $35
LB26B:      .byte $13,$55,$14,$00,$28,$07,$AA,$25
            .byte $11,$28,$0E,$00,$23,$32,$28,$0C
LB27B:      ldy #$00
            jmp LB290
LB280:      ldy #$05
            jsr LB290
LB285:      ldy #$0A
            jsr LB290
            ldy #$0F
            jsr LB290
            rts
LB290:      lda LB267,Y
            sta L1D4A
            ldx LB268,Y
            lda LB269,Y
            sta L00F8
            lda LB26A,Y
            sta L00F9
            lda LB26B,Y
            sta L1D49
LB2A9:      ldy L1D49
            lda L1D4A
LB2AF:      sta (L00F8),Y
            dey
            bpl LB2AF
            lda L00F8
            clc
            adc #$20
            sta L00F8
            bcc LB2BF
            inc L00F9
LB2BF:      dex
            bne LB2A9
            rts
LB2C3:      lda #$FF
            sta L1D5C
            jsr LB285
            lda L1D5B
            cmp #$10
            beq LB2DE
            ldx L0094
            bne LB2DE
            ldx L1D5D
            inx
            beq LB2DE
            lda #$11
LB2DE:      stx L1D4B
            asl
            tax
            lda LB556,X
            sta L00FA
            lda LB557,X
            sta L00FB
            lda #$51
            sta L00F8
            lda #$28
            sta L00F9
LB2F5:      ldy #$00
            lda (L00FA),Y
            bmi LB316
            pha
            jsr LB357
            pla
            sec
            adc L00FA
            sta L00FA
            bcc LB30A
            inc L00FB
            clc
LB30A:      lda L00F8
            adc #$E0
            sta L00F8
            bcc LB2F5
            inc L00F9
            bcs LB2F5
LB316:      jsr LB540
            lda L1D5B
            cmp #$10
            beq LB356
            ldx #$05
LB322:      lda LB6D7,X
            sta L1D4C,X
            dex
            bne LB322
            lda L1D4B
            and #$FC
            clc
            adc #$04
            sta L1D4C
            lsr
            lsr
            cmp #$0A
            beq LB344
            adc L1D4C
            sta L1D53
            bne LB34E
LB344:      lda #$05
            sta L1D53
            lda #$00
            sta L1D54
LB34E:      lda #$08
            sta L1D4C
            jsr LB357
LB356:      rts
LB357:      lda #$FF
            sta L1D5C
LB35C:      ldy #$00
            lda (L00FA),Y
            tax
LB361:      stx L1D4A
            iny
            lda (L00FA),Y
            tax
            lda #$05
            sta L1D49
            clc
            jsr LB3AC
            bne LB361
            rts
LB374:      lda #$FF
            sta L1D5C
            lda L00EE
            bne LB387
            lda #$81
            sta L00F8
            lda #$28
            sta L00F9
            bne LB38F
LB387:      lda #$61
            sta L00F8
            lda #$29
            sta L00F9
LB38F:      iny
            stx L1D4A
            lda L1D43,X
            and #$0F
            sta L1D49
            asl
            asl
            adc L1D49
            tax
            lda #$05
            sta L1D49
            jsr LB3AC
            bpl LB38F
            rts
LB3AC:      lda LB74E,X
            and L1D5C
            sta (L00F8),Y
            tya
            adc #$20
            tay
            inx
            dec L1D49
            bne LB3AC
            tya
            sbc #$9F
            clc
            tay
            ldx L1D4A
            dex
            rts
LB3C8:      lda #$FF
            sta L1D5C
            bne LB3D4
LB3CF:      lda #$AA
            sta L1D5C
LB3D4:      lda #$17
            sta L00FA
            lda #$B7
            sta L00FB
            lda #$E7
            sta L00F8
            lda #$36
            sta L00F9
            jsr LB35C
            rts
LB3E8:      lda #$DD
            sta L00FA
            lda #$B6
            sta L00FB
            lda #$FF
            jmp LB3FF
LB3F5:      lda #$E9
            sta L00FA
            lda #$B6
            sta L00FB
            lda #$AA
LB3FF:      sta L1D5C
            lda #$07
            sta L00F8
            lda #$36
            sta L00F9
            jsr LB35C
            rts
LB40E:      lda #$F5
            sta L00FA
            lda #$B6
            sta L00FB
            lda #$FF
            jmp LB425
LB41B:      lda #$06
            sta L00FA
            lda #$B7
            sta L00FB
            lda #$AA
LB425:      sta L1D5C
            lda #$27
            sta L00F8
            lda #$35
            sta L00F9
            jsr LB35C
            rts
LB434:      lda #$B7
            sta L00FB
            lda #$23
            sta L00FA
            jsr LB492
            jsr LB540
            ldx #$0B
            stx L1D4C
LB447:      lda LB742,X
            sta L1D4C,X
            dex
            bne LB447
            lda L0094
            clc
            adc #$0A
            sta L1D5E
LB458:      cmp #$0A
            bcc LB461
            inx
            sbc #$0A
            bvc LB458
LB461:      ldy #$09
            jsr LB46F
            ldy #$08
            txa
            jsr LB46F
            jmp LB357
LB46F:      sta L1D4C,Y
            asl
            asl
            clc
            adc L1D4C,Y
            sta L1D4C,Y
            rts
LB47C:      lda #$B7
            sta L00FB
            lda #$27
            sta L00FA
            jsr LB492
            lda #$3E
            sta L00FA
            lda #$B7
            sta L00FB
            jmp LB357
LB492:      jsr LB27B
            lda #$2D
            sta L00F8
            lda #$35
            sta L00F9
            jsr LB357
            lda #$07
            sta L00F8
            lda #$36
            sta L00F9
            lda #$2C
            sta L00FA
            lda #$B7
            sta L00FB
            jsr LB357
            lda #$EA
            sta L00F8
            lda #$36
            sta L00F9
            rts
LB4BC:      jsr LB540
            ldx L00EE
            ldy L1BB8,X
            dey
            tya
            cmp #$07
            bcc LB4CC
            lda #$07
LB4CC:      asl
            tay
            beq LB4DE
LB4D0:      lda #$D7
            sta L1D4C,Y
            dey
            lda #$D2
            sta L1D4C,Y
            dey
            bne LB4D0
LB4DE:      lda #$3F
            sta L00F8
            lda #$3F
            sta L00F9
            jmp LB357
LB4E9:      jsr LB4EE
            bne LB4DE
LB4EE:      jsr LB540
            ldy #$06
LB4F3:      lda LB6EE,Y
            sta L1D4C,Y
            dey
            bne LB4F3
            ldy #$0A
            lda L00EE
            bne LB504
            ldy #$05
LB504:      sty L1D54
            rts
LB508:      jsr LB27B
            jsr LB4EE
            lda #$49
            sta L00F8
            lda #$35
            sta L00F9
            jsr LB357
            lda #$29
            sta L00F8
            lda #$36
            sta L00F9
            rts
LB522:      jsr LB508
            lda #$7A
            sta L00FA
            lda #$B5
            sta L00FB
            jsr LB357
            rts
LB531:      jsr LB508
            lda #$83
            sta L00FA
            lda #$B5
            sta L00FB
            jsr LB357
            rts
LB540:      ldy #$0E
            sty L1D4C
            lda #$32
LB547:      sta L1D4C,Y
            dey
            bne LB547
            lda #$4C
            sta L00FA
            lda #$1D
            sta L00FB
            rts
LB556:      .byte $8E
LB557:      .byte $B5,$9A,$B5,$A6,$B5,$BD,$B5,$CB
            .byte $B5,$D5,$B5,$EA,$B5,$FD,$B5,$0A
            .byte $B6,$1F,$B6,$2C,$B6,$39,$B6,$52
            .byte $B6,$5C,$B6,$6B,$B6,$7E,$B6,$9B
            .byte $B6,$B9,$B6,$08,$AF,$7D,$9B,$32
            .byte $C8,$CD,$5F,$78,$0A,$55,$37,$73
            .byte $87,$4B,$32,$7D,$A0,$4B,$8C,$0A
            .byte $96,$8C,$4B,$4B,$32,$C8,$CD,$37
            .byte $A0,$4B,$80,$0A,$41,$8C,$7D,$91
            .byte $91,$8C,$7D,$37,$46,$91,$80,$0B
            .byte $5F,$73,$87,$82,$7D,$91,$91,$5F
            .byte $3C,$6E,$4B,$09,$91,$96,$37,$5F
            .byte $8C,$41,$37,$91,$4B,$80,$0C,$5A
            .byte $5F,$46,$46,$4B,$78,$32,$8C,$37
            .byte $73,$87,$82,$80,$08,$96,$5A,$4B
            .byte $32,$4B,$A5,$B9,$46,$80,$0A,$3C
            .byte $4B,$8C,$96,$5A,$5F,$6E,$46,$37
            .byte $91,$08,$46,$9B,$A5,$B9,$55,$4B
            .byte $7D,$78,$80,$0A,$3C,$4B,$8C,$96
            .byte $5A,$5F,$6E,$46,$37,$91,$06,$41
            .byte $37,$91,$96,$6E,$4B,$80,$0B,$41
            .byte $8C,$7D,$91,$91,$32,$73,$87,$37
            .byte $B4,$4B,$80,$0A,$3C,$4B,$8C,$96
            .byte $5A,$5F,$6E,$46,$37,$91,$08,$50
            .byte $7D,$8C,$96,$8C,$4B,$91,$91,$80
            .byte $0B,$46,$7D,$7D,$73,$87,$91,$46
            .byte $7D,$73,$87,$4B,$80,$0B,$A5,$B9
            .byte $37,$91,$96,$AF,$32,$96,$8C,$4B
            .byte $4B,$80,$0B,$4B,$AA,$96,$8C,$37
            .byte $32,$6E,$5F,$A0,$4B,$91,$0B,$4B
            .byte $A0,$4B,$8C,$AF,$32,$19,$00,$00
            .byte $00,$00,$80,$08,$82,$AF,$8C,$37
            .byte $73,$87,$5F,$46,$80,$0D,$5A,$5F
            .byte $46,$46,$4B,$78,$32,$91,$82,$5F
            .byte $8C,$37,$6E,$80,$0A,$3C,$4B,$8C
            .byte $96,$5A,$5F,$6E,$46,$37,$91,$06
            .byte $82,$37,$6E,$37,$41,$4B,$80,$0D
            .byte $55,$4B,$96,$32,$96,$5A,$4B,$32
            .byte $55,$4B,$73,$87,$91,$0D,$3C,$4B
            .byte $A5,$B9,$96,$6E,$4B,$AF,$32,$3C
            .byte $4B,$37,$8C,$80,$07,$41,$8C,$AF
            .byte $91,$96,$37,$6E,$07,$41,$37,$91
            .byte $96,$6E,$4B,$91,$0C,$BE,$C3,$37
            .byte $96,$37,$8C,$5F,$32,$05,$2D,$28
            .byte $14,$80,$08,$64,$9B,$73,$87,$82
            .byte $32,$5F,$78,$0B,$96,$9B,$A5,$B9
            .byte $A5,$B9,$4B,$6E,$32,$96,$7D,$08
            .byte $C8,$CD,$37,$8C,$82,$32,$96,$7D
LB6D7:      .byte $80,$6E,$4B,$A0,$4B,$6E,$0B,$7D
            .byte $A5,$B9,$4B,$32,$82,$6E,$37,$AF
            .byte $4B,$8C,$0B,$96,$C8,$CD,$7D
LB6EE:      .byte $32,$82,$6E,$37,$AF,$4B,$8C,$10
            .byte $7D,$A5,$B9,$4B,$32,$41,$7D,$A5
            .byte $B9,$96,$8C,$7D,$6E,$6E,$4B,$8C
            .byte $10,$96,$C8,$CD,$7D,$32,$41,$7D
            .byte $A5,$B9,$96,$8C,$7D,$6E,$6E,$4B
            .byte $8C,$0B,$82,$8C,$4B,$91,$91,$32
            .byte $91,$96,$37,$8C,$96,$03,$AF,$7D
            .byte $9B,$04,$96,$5A,$4B,$AF,$11,$55
            .byte $7D,$96,$32,$96,$5A,$4B,$32,$6E
            .byte $37,$91,$96,$32,$55,$4B,$73,$87
            .byte $0A,$A5,$B9,$7D
LB742:      .byte $32,$3C,$7D,$A5,$B9,$9B,$91,$32
            .byte $32,$32,$00,$00
LB74E:      .byte $FC,$CC,$CC,$CC,$FC,$30,$F0,$30
            .byte $30,$FC,$FC,$0C,$FC,$C0,$FC,$FC
            .byte $0C,$FC,$0C,$FC,$CC,$CC,$FC,$0C
            .byte $0C,$FC,$C0,$FC,$0C,$FC,$C0,$C0
            .byte $FC,$CC,$FC,$FC,$0C,$0C,$0C,$0C
            .byte $FC,$CC,$FC,$CC,$FC,$FC,$CC,$FC
            .byte $0C,$0C,$00,$00,$00,$00,$00,$30
            .byte $CC,$FC,$CC,$CC,$F0,$CC,$F0,$CC
            .byte $F0,$3C,$C0,$C0,$C0,$3C,$F0,$CC
            .byte $CC,$CC,$F0,$FC,$C0,$FC,$C0,$FC
            .byte $FC,$C0,$F0,$C0,$C0,$3C,$C0,$C0
            .byte $CC,$3C,$CC,$CC,$FC,$CC,$CC,$FC
            .byte $30,$30,$30,$FC,$0C,$0C,$0C,$CC
            .byte $30,$CC,$F0,$C0,$F0,$CC,$C0,$C0
            .byte $C0,$C0,$FC,$C0,$F0,$CC,$C3,$C0
            .byte $C3,$F3,$CF,$C3,$C3,$FC,$CC,$CC
            .byte $CC,$FC,$F0,$CC,$F0,$C0,$C0,$0C
            .byte $3C,$CC,$0C,$0C,$F0,$CC,$F0,$CC
            .byte $CC,$FC,$C0,$30,$0C,$FC,$FC,$30
            .byte $30,$30,$30,$CC,$CC,$CC,$CC,$FC
            .byte $CC,$CC,$CC,$CC,$30,$30,$3C,$33
            .byte $30,$30,$CC,$CC,$30,$CC,$CC,$CC
            .byte $CC,$FC,$30,$30,$FC,$0C,$30,$C0
            .byte $FC,$30,$30,$30,$F0,$30,$30,$CF
            .byte $CC,$CF,$30,$C0,$30,$30,$30,$C0
            .byte $30,$30,$33,$33,$0C,$30,$30,$30
            .byte $30,$C0,$C0,$3F,$CC,$FF,$3F,$C0
            .byte $00,$C0,$C0,$00
LB82A:      ldx LB858,Y
            lda LB868,Y
            bmi LB845
            cmp #$04
            beq LB851
            bcc LB84A
            sta L1D03,X
            dex
            lda #$FF
            sta L1D03,X
LB841:      dex
            sta L1D03,X
LB845:      dex
            sta L1D03,X
            rts
LB84A:      sta L1D03,X
            lda #$FF
            bmi LB845
LB851:      sta L1D03,X
            lda #$FF
            bmi LB841
LB858:      .byte $27,$24,$21,$1E,$1B,$19,$16,$12
            .byte $0F,$0D,$09,$06,$05,$04,$02,$01
LB868:      .byte $04,$04,$04,$06,$FF,$04,$06,$06
            .byte $FF,$06,$06,$FF,$FF,$FF,$02,$FF
LB878:      lda L1D61
            bne LB87E
            rts
LB87E:      lda #$08
            sta L1D35
            lda #$07
            sta L1D37
            ldx #$2F
LB88A:      stx L1D43
            ldy L1D03,X
            beq LB8F0
            bmi LB8A2
            cpy L1D35
            bcc LB8A2
            lda L1D37
            and LBF93,Y
            sta L1D37
LB8A2:      dec L1CD3,X
            bpl LB8BE
            inc L1C43,X
            lda L1C43,X
            cmp LBEF5,X
            bne LB8FB
            lda #$00
            sta L1D03,X
            lda #$FF
            sta L1C43,X
            bne LB8ED
LB8BE:      lda L1D37
            and LBF1D,X
            beq LB8ED
            lda L1CA3,X
            bmi LB8D5
            and #$07
            cmp L1CD3,X
            bcc LB8D5
            dec L1CA3,X
LB8D5:      and #$07
            ora #$A0
            ldy L1C73,X
            ldx L1D35
            beq LB8ED
LB8E1:      sta LD1FF,X
            dex
            tya
            sta LD1FF,X
            dex
            stx L1D35
LB8ED:      ldx L1D43
LB8F0:      dex
            bpl LB88A
            lda #$00
            ldx L1D35
            bne LB8E1
            rts
LB8FB:      adc LBEA5,X
            tay
            lda L1C43,X
            adc LBECD,X
            sta TEMP1
            lda LBF45,X
            sta L1D33
            lda LBF6D,X
            sta L1D34
            jmp (L1D33)
LB917:      sta L1CD3,X
            jmp LB8BE
            lda LB9CE,Y
            sta L1C73,X
            ldy TEMP1
            lda LBC6F,Y
            sta L1CA3,X
            and #$38
            tay
            lda LBF9C,Y
            bne LB917
            lda LBAB1,Y
            sta L1C73,X
            ldy TEMP1
            lda LBD5C,Y
            sta L1CA3,X
            and #$38
            tay
            lda LBF9D,Y
            bne LB917
            lda LBB59,Y
            sta L1C73,X
            ldy TEMP1
            lda LBC6F,Y
            sta L1CA3,X
            and #$38
            tay
            lda LBF9D,Y
            bne LB917
            lda LBBA8,Y
            sta L1C73,X
            ldy TEMP1
            lda LBE04,Y
            sta L1CA3,X
            and #$38
            tay
            lda LBF9E,Y
            bne LB917
            lda LBBFD,Y
            sta L1C73,X
            ldy TEMP1
            lda LBC82,Y
            sta L1CA3,X
            and #$38
            tay
            lda LBF9F,Y
            bne LB917
            cpx #$04
            beq LB9A5
            bcs LB9B2
            lda LBC1B,Y
            ldy L1A08
            sec
            sbc L0500,Y
            sta L1C73,X
            bne LB9BC
LB9A5:      lda RANDOM
            and #$3E
            adc LBC1B,Y
            sta L1C73,X
            bne LB9BC
LB9B2:      lda LBC1B,Y
            sec
            sbc L1D38
            sta L1C73,X
LB9BC:      ldy TEMP1
            lda LBE52,Y
            sta L1CA3,X
            and #$38
            tay
            lda LBFA0,Y
            jmp LB917
LB9CE:      .byte $48,$4C,$55,$60,$66,$72,$80,$90
            .byte $80,$90,$99,$AD,$C1,$80,$80,$80
            .byte $80,$80,$80,$80,$80,$99,$AD,$C1
            .byte $CC,$00,$90,$99,$AD,$C1,$CC,$80
            .byte $C1,$90,$80,$80,$C1,$80,$C1,$F3
            .byte $E6,$D9,$CC,$C1,$B6,$AD,$A2,$99
            .byte $90,$88,$80,$79,$72,$6C,$66,$60
            .byte $5B,$55,$51,$4C,$48,$44,$40,$3C
            .byte $39,$35,$32,$2F,$2D,$2A,$28,$90
            .byte $88,$80,$79,$72,$6C,$66,$60,$5B
            .byte $55,$51,$4C,$48,$44,$40,$3C,$39
            .byte $35,$32,$2F,$2D,$2A,$28,$25,$23
            .byte $21,$1F,$1D,$1B,$1A,$19,$17,$A2
            .byte $99,$90,$88,$80,$79,$72,$6C,$66
            .byte $60,$5B,$55,$51,$4C,$48,$44,$40
            .byte $3C,$39,$35,$32,$2F,$2D,$2A,$28
            .byte $25,$23,$21,$1F,$1D,$1B,$1A,$88
            .byte $80,$79,$72,$6C,$66,$60,$5B,$55
            .byte $51,$4C,$48,$44,$40,$3C,$39,$35
            .byte $32,$2F,$2D,$2A,$28,$25,$23,$21
            .byte $1F,$1D,$1B,$1A,$19,$17,$16,$F3
            .byte $C1,$A2,$C1,$99,$80,$99,$79,$66
            .byte $79,$60,$51,$60,$4C,$40,$4C,$3C
            .byte $32,$3C,$2F,$28,$2F,$25,$1F,$25
            .byte $1D,$19,$1D,$17,$14,$C1,$99,$79
            .byte $99,$79,$60,$79,$60,$4C,$60,$4C
            .byte $3C,$4C,$3C,$2F,$3C,$2F,$25,$2F
            .byte $25,$1D,$25,$1D,$17,$1D,$17,$13
            .byte $17,$13,$00
LBAB1:      .byte $6C,$35,$66,$32,$6C,$35,$66,$32
            .byte $5B,$2D,$55,$2D,$5B,$2D,$55,$2D
            .byte $48,$23,$40,$1F,$48,$23,$40,$1F
            .byte $35,$1A,$32,$19,$35,$1A,$32,$19
            .byte $00,$55,$2A,$55,$2A,$2A,$2A,$55
            .byte $2A,$55,$2A,$2A,$2A,$48,$23,$48
            .byte $23,$23,$23,$48,$23,$48,$23,$23
            .byte $23,$3C,$1D,$32,$19,$19,$19,$3C
            .byte $1D,$32,$19,$19,$19,$2A,$15,$2A
            .byte $15,$15,$15,$2A,$15,$2A,$15,$15
            .byte $00,$48,$23,$48,$23,$23,$48,$23
            .byte $48,$23,$23,$3C,$1D,$40,$1F,$1F
            .byte $3C,$1D,$40,$1F,$1F,$32,$19,$32
            .byte $19,$19,$32,$19,$32,$19,$19,$23
            .byte $12,$23,$12,$12,$23,$12,$23,$12
            .byte $00,$00,$3C,$1D,$40,$1F,$1F,$1F
            .byte $3C,$1D,$40,$1F,$1F,$1F,$2F,$17
            .byte $32,$19,$19,$19,$2F,$17,$32,$19
            .byte $19,$19,$28,$14,$2A,$15,$15,$15
            .byte $28,$14,$2A,$15,$15,$15,$1D,$1D
            .byte $1F,$1F,$1D,$1D,$1D,$1D,$1F,$1F
LBB59:      .byte $F3,$E6,$D9,$CC,$C1,$B6,$AD,$A2
            .byte $99,$90,$88,$80,$79,$72,$6C,$66
            .byte $60,$5B,$55,$51,$4C,$48,$44,$40
            .byte $3C,$39,$35,$32,$2F,$2D,$2A,$28
            .byte $25,$23,$21,$1F,$1D,$1B,$1A,$19
            .byte $AD,$A2,$99,$90,$88,$80,$79,$72
            .byte $6C,$66,$60,$5B,$55,$51,$4C,$48
            .byte $44,$40,$3C,$39,$35,$32,$2F,$2D
            .byte $2A,$28,$25,$23,$21,$1F,$1D,$1B
            .byte $1A,$19,$17,$16,$14,$13,$12
LBBA8:      .byte $F3,$F3,$79,$79,$3C,$1D,$15,$1D
            .byte $2A,$3C,$55,$79,$AD,$AD,$F3,$F3
            .byte $35,$35,$35,$35,$2F,$2F,$2A,$35
            .byte $2F,$40,$40,$40,$40,$40,$40,$40
            .byte $40,$40,$51,$51,$51,$51,$51,$51
            .byte $55,$51,$51,$00,$60,$60,$6C,$00
            .byte $60,$40,$40,$40,$40,$51,$60,$79
            .byte $48,$55,$66,$66,$66,$66,$60,$48
            .byte $51,$79,$55,$40,$40,$40,$40,$40
            .byte $51,$60,$79,$80,$55,$55,$55,$55
            .byte $60,$79,$90,$AD,$CC
LBBFD:      .byte $F3,$CC,$AD,$80,$79,$AD,$90,$79
            .byte $5B,$55,$79,$66,$55,$40,$3C,$55
            .byte $48,$3C,$2D,$2A,$3C,$32,$2A,$1F
            .byte $1D,$2A,$23,$1D,$16,$15
LBC1B:      .byte $F3,$00,$F3,$00,$F3,$00,$F3,$00
            .byte $F3,$00,$F3,$00,$F3,$00,$F3,$00
            .byte $F3,$00,$F3,$00,$F3,$00,$F3,$00
            .byte $F3,$00,$F3,$00,$F3,$00,$F3,$00
            .byte $F3,$00,$E6,$00,$E6,$00,$E6,$00
            .byte $E6,$00,$E6,$00,$E6,$00,$E6,$00
            .byte $E6,$00,$F3,$00,$F3,$00,$F3,$00
            .byte $F3,$00,$F3,$00,$F3,$00,$F3,$00
            .byte $F3,$00,$E6,$00,$E6,$00,$E6,$00
            .byte $E6,$00,$E6,$00,$E6,$00,$E6,$00
            .byte $E6,$00,$16,$48
LBC6F:      .byte $20,$1D,$1D,$1D,$1D,$1D,$1D,$1D
            .byte $1D,$1D,$1D,$1D,$1D,$1D,$25,$05
            .byte $05,$05,$05
LBC82:      .byte $05,$05,$05,$05,$05,$05,$05,$05
            .byte $05,$05,$05,$05,$05,$05,$05,$05
            .byte $05,$05,$05,$05,$05,$05,$05,$05
            .byte $05,$05,$05,$05,$05,$05,$05,$05
            .byte $00,$17,$17,$17,$17,$17,$17,$17
            .byte $17,$1D,$18,$1D,$10,$15,$1D,$18
            .byte $1D,$18,$1D,$9D,$2D,$1D,$10,$15
            .byte $1D,$10,$00,$05,$1D,$10,$15,$1D
            .byte $18,$1D,$18,$AD,$25,$1D,$18,$1D
            .byte $18,$1D,$18,$1D,$18,$1D,$18,$1D
            .byte $18,$1D,$18,$1D,$10,$15,$1D,$18
            .byte $1D,$18,$1D,$18,$1D,$18,$1D,$18
            .byte $1D,$10,$15,$1D,$32,$32,$3A,$32
            .byte $32,$3A,$32,$32,$3A,$32,$32,$3A
            .byte $32,$32,$3A,$32,$32,$3A,$32,$32
            .byte $3A,$32,$32,$3A,$32,$32,$3A,$32
            .byte $32,$3A,$32,$32,$3A,$32,$32,$3A
            .byte $32,$32,$3A,$32,$32,$3A,$32,$16
            .byte $16,$16,$16,$16,$16,$1E,$1E,$1E
            .byte $1E,$1E,$1E,$1E,$1E,$1E,$16,$16
            .byte $16,$16,$16,$16,$1E,$1E,$1E,$1E
            .byte $1E,$1E,$1E,$1E,$1E,$15,$15,$15
            .byte $15,$15,$15,$1D,$1D,$1D,$1D,$1D
            .byte $1D,$1D,$1D,$1D,$15,$15,$15,$15
            .byte $15,$15,$1D,$1D,$1D,$1D,$1D,$1D
            .byte $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D
            .byte $1D,$1D,$1D,$1D,$1D,$1D,$1D,$1D
            .byte $1D,$1D
LBD5C:      .byte $9D,$9D,$9D,$1D,$9D,$9D,$9D,$1D
            .byte $9D,$9D,$9D,$1D,$9D,$9D,$9D,$1D
            .byte $9D,$9D,$9D,$1D,$9D,$9D,$9D,$1D
            .byte $9D,$9D,$9D,$1D,$9D,$9D,$9D,$1D
            .byte $00,$1D,$1D,$1D,$95,$8D,$05,$1D
            .byte $1D,$1D,$95,$8D,$05,$1D,$1D,$1D
            .byte $95,$8D,$05,$1D,$1D,$1D,$95,$8D
            .byte $05,$1D,$1D,$1D,$95,$8D,$05,$1D
            .byte $1D,$1D,$95,$8D,$05,$1D,$1D,$1D
            .byte $95,$8D,$05,$1D,$1D,$1D,$95,$0D
            .byte $10,$1D,$1D,$1D,$95,$15,$1D,$1D
            .byte $1D,$95,$15,$1D,$1D,$1D,$95,$15
            .byte $1D,$1D,$1D,$95,$15,$1D,$1D,$1D
            .byte $95,$15,$1D,$1D,$1D,$95,$15,$1D
            .byte $1D,$1D,$95,$15,$1D,$1D,$1D,$95
            .byte $10,$00,$1D,$1D,$1D,$8D,$15,$05
            .byte $1D,$1D,$1D,$8D,$15,$05,$1D,$1D
            .byte $1D,$8D,$15,$05,$1D,$1D,$1D,$8D
            .byte $15,$05,$1D,$1D,$1D,$8D,$15,$05
            .byte $1D,$1D,$1D,$8D,$15,$05,$1D,$1D
            .byte $1D,$8D,$15,$05,$1D,$1D,$1D,$0D
LBE04:      .byte $1E,$1E,$26,$1E,$16,$16,$1E,$1E
            .byte $16,$16,$1E,$1E,$1E,$1E,$1E,$1E
            .byte $1E,$1E,$18,$1E,$1E,$1E,$1E,$1E
            .byte $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A
            .byte $1A,$1A,$1A,$1A,$1A,$1A,$1A,$1A
            .byte $1A,$18,$1A,$1A,$1A,$1A,$1A,$85
            .byte $85,$85,$85,$85,$85,$85,$85,$85
            .byte $85,$85,$85,$85,$85,$85,$05,$25
            .byte $35,$35,$3D,$25,$25,$25,$25,$2D
            .byte $28,$25,$25,$25,$20,$2D
LBE52:      .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$17,$00,$17,$00,$17,$00
            .byte $17,$00,$07
LBEA5:      .byte $E3,$C5,$A7,$53,$52,$00,$2B,$28
            .byte $04,$00,$87,$67,$47,$27,$00,$4C
            .byte $43,$3A,$31,$2B,$22,$19,$10,$19
            .byte $0D,$00,$00,$78,$50,$20,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
LBECD:      .byte $34,$0F,$16,$52,$52,$00,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$00,$3F
            .byte $3F,$3F,$3F,$48,$3F,$3F,$3F,$00
            .byte $01,$02,$2F,$78,$50,$20,$00,$77
            .byte $58,$3C,$AD,$C2,$8F,$18,$18,$00
LBEF5:      .byte $08,$1E,$1E,$01,$01,$52,$24,$24
            .byte $24,$24,$20,$20,$20,$20,$1E,$09
            .byte $09,$09,$09,$06,$09,$09,$09,$0E
            .byte $0C,$0D,$10,$30,$28,$30,$20,$2B
            .byte $1F,$1C,$1E,$18,$1E,$17,$17,$18
LBF1D:      .byte $07,$01,$01,$07,$07,$07,$04,$04
            .byte $04,$04,$04,$04,$04,$04,$07,$04
            .byte $04,$04,$04,$04,$04,$04,$04,$02
            .byte $02,$02,$07,$04,$04,$04,$04,$02
            .byte $02,$02,$02,$02,$02,$02,$02,$02
LBF45:      .byte $1D,$1D,$1D,$90,$90,$90,$4B,$4B
            .byte $4B,$4B,$1D,$1D,$1D,$1D,$79,$62
            .byte $62,$62,$62,$62,$62,$62,$62,$1D
            .byte $1D,$1D,$62,$34,$34,$34,$34,$4B
            .byte $4B,$4B,$79,$79,$79,$62,$62,$62
LBF6D:      .byte $B9,$B9,$B9,$B9,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B9,$B9,$B9,$B9,$B9,$B9
            .byte $B9,$B9,$B9,$B9,$B9,$B9
LBF93:      .byte $B9,$B9,$00,$00,$01,$00,$03,$AA
            .byte $02
LBF9C:      .byte $03
LBF9D:      .byte $02
LBF9E:      .byte $02
LBF9F:      .byte $01
LBFA0:      .byte $01,$00,$AA,$03,$03,$02,$01,$01
            .byte $00,$00,$AA,$06,$07,$05,$04,$03
            .byte $02,$01,$AA,$0D,$0F,$0B,$09,$07
            .byte $05,$03,$AA,$1B,$1F,$17,$13,$0F
            .byte $0B,$07,$AA,$37,$3F,$2F,$27,$1F
            .byte $17,$0F,$AA,$08,$0A,$07,$06,$04
            .byte $03,$02,$AA,$09,$09,$07,$05,$05
            .byte $03,$01,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$80,$00,$04,$00,$80
            .byte $11
;
            ORG $02E2
;
            .word L8000
;
         
