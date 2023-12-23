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
L0095       = $0095
L0096       = $0096
L0097       = $0097
L0098       = $0098
L0099       = $0099
L009A       = $009A
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
L00FF       = $00FF
L04E0       = $04E0
L04E7       = $04E7
L04EE       = $04EE
L04F0       = $04F0
L07C0       = $07C0
L07D0       = $07D0
L0800       = $0800
L0810       = $0810
L0820       = $0820
L0830       = $0830
L0840       = $0840
L0850       = $0850
L0860       = $0860
L0870       = $0870
L0880       = $0880
L0890       = $0890
L08A0       = $08A0
L08B0       = $08B0
L08C0       = $08C0
L08D0       = $08D0
L08E0       = $08E0
L08F0       = $08F0
L0910       = $0910
L0920       = $0920
L0930       = $0930
L0940       = $0940
L0950       = $0950
L0960       = $0960
L0A00       = $0A00
L0A50       = $0A50
L0A60       = $0A60
L0A61       = $0A61
L0A62       = $0A62
L0A70       = $0A70
L0B00       = $0B00
L0B07       = $0B07
L0B0E       = $0B0E
L0B15       = $0B15
L0B1C       = $0B1C
L0B23       = $0B23
L0B2A       = $0B2A
L0B31       = $0B31
L0B38       = $0B38
L0B3F       = $0B3F
L0B46       = $0B46
L0B4D       = $0B4D
L0B54       = $0B54
L0D00       = $0D00
L0E00       = $0E00
L0E01       = $0E01
L0E02       = $0E02
L0F00       = $0F00
L0F01       = $0F01
L0F02       = $0F02
L0F03       = $0F03
L0F04       = $0F04
L0F05       = $0F05
L0F06       = $0F06
L0FFF       = $0FFF
L1000       = $1000
L1005       = $1005
L1042       = $1042
L1067       = $1067
L106D       = $106D
L10B5       = $10B5
L1400       = $1400
L1804       = $1804
L1805       = $1805
L1806       = $1806
L1807       = $1807
L1808       = $1808
L1809       = $1809
L180D       = $180D
L180E       = $180E
L180F       = $180F
L1814       = $1814
L1815       = $1815
L1816       = $1816
L1818       = $1818
L181A       = $181A
L181B       = $181B
L181C       = $181C
L181D       = $181D
L181E       = $181E
L1830       = $1830
L1831       = $1831
L1832       = $1832
L1833       = $1833
L1834       = $1834
L1839       = $1839
L183A       = $183A
L183B       = $183B
L183C       = $183C
L183D       = $183D
L183E       = $183E
L184E       = $184E
L184F       = $184F
L1852       = $1852
L1853       = $1853
L1856       = $1856
L1857       = $1857
L1858       = $1858
L1859       = $1859
L185A       = $185A
L185B       = $185B
L185C       = $185C
L185D       = $185D
L185E       = $185E
L185F       = $185F
L1860       = $1860
L1864       = $1864
L1865       = $1865
L1868       = $1868
L186D       = $186D
L2EAF       = $2EAF
L3C58       = $3C58
L3C80       = $3C80
L7E64       = $7E64
L7EC3       = $7EC3
LA0BC       = $A0BC
LCFFF       = $CFFF
LE472       = $E472
LE473       = $E473
LF0E3       = $F0E3
;
; Start of code
;
            org $7EA5
;
L7EA5:      lda #$00
            sta AUDCTL
            lda #$03
            sta SKCTL
            sei
            lda #$00
            sta WARMST
            lda #$FF
            sta COLDST
            jmp L8000
L7EBC:      sta AUDF1,X
            inx
            bne L7EBC
            jmp L8000
            bne L7E64
            .byte $00,$D4
            sta AUDF1,X
            sta PORTA,X
            inx
            bne L7EC3
            lda #$00
            ldy #$08
            sta RAMLO
            sta RAMLO+1
L7EDA:      sta (RAMLO),Y
            iny
            cpy #$00
            bne L7EDA
            inc RAMLO+1
            ldx RAMLO+1
            cpx TRAMSZ
            bne L7EDA
            lda LE472
            sta DOSVEC
            lda LE473
            sta DOSVEC+1
            lda #$FF
            sta COLDST
            lda #$02
            sta LMARGN
            lda #$27
            sta RMARGN
            ldx #$25
            jmp L8000
            nop
            nop
            nop
            nop
            nop
            nop
            dec BRKKEY
            lda #$54
            sta BRKKY
            lda #$E7
            sta BRKKY+1
            lda TRAMSZ
            sta RAMSIZ
            sta MEMTOP+1
            lda #$00
            sta MEMTOP
            sta MEMLO
            lda #$07
            sta MEMLO+1
            lda #$FF
            sta CH
            lda MEMTOP+1
            and #$F0
            sta RAMTOP
            lda #$40
            sta SHFLOC
            lda #$1E
            sta ABUFPT
            lda #$CC
            sta CBAUDL
            lda #$05
            sta CBAUDH
            ldx #$00
L7F4D:      lda #$FF
            sta IOCB0,X
            lda #$C0
            sta IOCB0+ICPTL,X
            lda #$E4
            sta IOCB0+ICPTH,X
            txa
            clc
            adc #$10
            tax
            cmp #$80
            bcc L7F4D
            lda #$3C
            sta PACTL
            sta PBCTL
            lda #$03
            sta SSKCTL
            sta SOUNDR
            sta SKCTL
            lda #$40
            sta NMIEN
            lda #$38
            sta PACTL
            sta PBCTL
            lda #$00
            sta PORTA
            sta PORTB
            lda #$3C
            sta PACTL
            sta PBCTL
            lda CONSOL
            and #$01
            bne L7F9D
            inc ZCHAIN
L7F9D:      cli
            ldx #$0E
L7FA0:      lda LF0E3,X
            sta HATABS,X
            dex
            bpl L7FA0
            ldx #$00
            stx TRAMSZ
            stx CMCMD
            inc TRAMSZ
            lda #$03
            ldx #$00
            sta IOCB0+ICCOM,X
            lda #$18
            sta IOCB0+ICBAL,X
            lda #$F1
            sta IOCB0+ICBAH,X
            lda #$0C
            sta IOCB0+ICAX1,X
            jsr CIOV
            bpl L7FCF
            jmp L2EAF
L7FCF:      inx
            bne L7FCF
            iny
            bpl L7FCF
            lda #$38
            sta PACTL
            sta PBCTL
            lda #$00
            sta PORTA
            sta PORTB
            lda #$3C
            sta PACTL
            sta PBCTL
            jmp (LBFFA)
L7FF0:      lda L04EE,X
            cmp #$80
            bcc L7FFD
            cmp #$C0
            bcs L7FFD
            lda #$FF
L7FFD:      jmp L8259
L8000:      jsr L8393
            lda #$00
            sta AUDCTL
            lda #$02
            sta SSKCTL
            jsr L869C
            jsr L997D
            lda L1816
            sta L0A60
            lda L181B
            sta L0A61
            lda L181C
            sta L0A62
            lda #$82
            sta L04F0
            jsr L8553
L802D:      lda #$01
            sta L1830
            jsr L99C0
            jsr L84A3
            jsr LA1D1
            ldx #$00
            stx ATRACT
            stx L00EC
            stx L00ED
            stx L184F
            stx L00C3
            stx LOMEM
            stx L00B7
            stx L00B8
            stx L183D
            stx L1833
            stx L184E
            stx L00F7
            stx L00C9
            dex
            stx L1805
            lda #$01
            sta LOMEM+1
            sta L1858
            jsr L9EEB
            jmp L806F
L806C:      jsr L84CF
L806F:      lda L0083
            bne L806F
            beq L80CB
L8075:      lda #$00
            sta L0084
            lda LOMEM+1
            bne L8089
            jsr L80E4
            lda L1833
            bne L809F
            lda L00C3
            beq L80B3
L8089:      jsr L8520
            jsr L9F98
            lda LOMEM
            beq L80BC
            bmi L802D
            cmp #$02
            beq L80CB
            cmp #$03
            beq L806F
            bne L806C
L809F:      jsr L99C0
            lda L1830
            sta L1834
            jsr L819D
            lda L184E
            beq L806F
            jmp L802D
L80B3:      jsr L82FD
            jsr LA18D
            jsr L968A
L80BC:      jsr L9000
            jsr L8ECC
            jsr L9389
            jsr L8902
            jsr L9879
L80CB:      lda L0084
            beq L80CB
            jsr L86D5
            jsr L8FCB
            jsr L9299
            jsr L8716
            jsr L983E
            jsr L88D5
            jmp L8075
L80E4:      ldx L00D8
            bne L8100
            inx
            lda L1830
            bne L80F5
            stx L1830
            lda #$5B
            sta L00EE
L80F5:      dec L00EE
            bne L8100
            stx L1833
            stx L1834
            rts
L8100:      ldy #$03
            ldx L00C9
            beq L8108
            ldy #$00
L8108:      lda L00BE,X
            cmp #$01
            bcs L811B
            lda L185A,Y
            and #$F0
            cmp #$50
            bcc L8133
            lda #$01
            bcs L8128
L811B:      cmp #$02
            bcs L8133
            lda L185B,Y
            and #$0F
            beq L8133
            lda #$02
L8128:      sta L00BE,X
            inc L00BC,X
            jsr L971B
            lda #$01
            sta L0090
L8133:      lda L1830
            bne L8162
            lda L00D8
            cmp #$02
            bcs L8162
            ldy #$00
            lda L00D1
            cmp #$C2
            bcs L815A
            ldy #$02
            cmp #$20
            bcc L815A
            ldy #$01
            lda L00D0
            cmp #$C9
            bcs L815A
            ldy #$03
            cmp #$33
            bcs L8162
L815A:      sty L00AF
            lda #$01
            sta L1833
            rts
L8162:      lda L00D7
            bne L8171
            lda L0D00
            bne L8178
            jsr L9762
            jmp L8178
L8171:      clc
            adc #$03
            adc L00CF
            sta L00CE
L8178:      ldx L00B8
            bne L8187
            dec L00CB
            bne L8196
            dec L00CA
            bpl L8196
            inx
            stx L00B8
L8187:      lda L00B7
            bne L818E
            jsr L97FE
L818E:      lda L00D7
            clc
            adc #$04
            lsr
            sta L00B2
L8196:      lda L00F7
            beq L819C
            dec L00F7
L819C:      rts
L819D:      lda L1830
            beq L81F3
            lda L1858
            bne L81B7
            jsr L97EA
            lda L00C2
            beq L81B7
            lda L00C9
            eor #$01
            tax
            dec L00BC,X
            bpl L81C9
L81B7:      ldx L00C9
            dec L00BC,X
            bpl L81C9
            lda #$01
            sta L184E
            lda #$00
            sta L00C9
            jmp L82FA
L81C9:      stx L00C9
            ldy L00C9
            beq L81D3
            ldy #$09
            ldx #$00
L81D3:      lda LB000,Y
            sta L00D0,X
            inx
            iny
            cpx #$07
            bcc L81D3
            lda PAL
            cmp #$0F
            beq L81E6
            iny
L81E6:      lda LB000,Y
            sta PCOLR0
            lda #$80
            sta L183D
            bne L824D
L81F3:      lda L00AF
            clc
            adc #$1E
            sta L183D
            ldy L00AF
            bne L8211
            lda #$2D
            sta L00D1
            lda #$0D
            sta L00D3
            lda #$14
            sta L00D5
            lda #$06
            sta L00D6
            bne L824D
L8211:      cpy #$01
            bne L8227
            lda #$3B
            sta L00D0
            lda #$07
            sta L00D2
            lda #$0D
            sta L00D4
            lda #$02
            sta L00D6
            bne L824D
L8227:      cpy #$02
            bne L823D
            lda #$B5
            sta L00D1
            lda #$95
            sta L00D3
            lda #$9C
            sta L00D5
            lda #$0A
            sta L00D6
            bne L824D
L823D:      lda #$BE
            sta L00D0
            lda #$8A
            sta L00D2
            lda #$90
            sta L00D4
            lda #$0E
            sta L00D6
L824D:      ldx #$06
            ldy #$00
L8251:      lda L04E7,X
            sta L00A0
            jmp L7FF0
L8259:      sta L00A1
            lda L04E0,X
            sta (L00A0),Y
            dex
            bpl L8251
            ldx L00C9
            jsr L8349
            jsr L87B4
L826B:      jsr L9991
            lda L1804
            and #$7F
            cmp #$6F
            bcs L826B
            cmp L00C0
            beq L826B
            sta L00C0
            jsr L9B17
            jsr L9AD3
            jsr L87FA
            jsr L8DF6
            jsr L8541
            jsr L85CC
            lda #$01
            sta L00D8
            sta L00E4
            sta L00E5
            lsr
            sta L00C6
            sta L00C8
            sta L00E1
            sta L00E7
            jsr L9000
            jsr L8FCB
            lda L00C1
            asl
            tay
            lda LA5AE,Y
            sta L00CB
            lda LA5AD,Y
            sta L00CA
            ldx #$04
L82B6:      lda L00CF,X
            sta L00B2,X
            dex
            bne L82B6
            stx L00B7
            stx L00B8
            lda L1834
            beq L82F7
            jsr L971B
            jsr L968A
            ldy #$04
            lda PCOLR0
            sta L009C
L82D3:      lda #$00
            sta PCOLR0
            lda #$0F
            adc RTCLOK+2
L82DC:      cmp RTCLOK+2
            bne L82DC
            lda L009C
            sta PCOLR0
            lda #$0F
            adc RTCLOK+2
L82E9:      cmp RTCLOK+2
            bne L82E9
            sty L009E
            jsr L82FD
            ldy L009E
            dey
            bpl L82D3
L82F7:      jsr L8902
L82FA:      jmp L97EA
L82FD:      stx L00F0
            sty L00F3
            lda CH
            ldx #$00
            stx CH
            cmp #$21
            bne L8340
            ldy L00ED
            sty L00F1
            ldy L00EC
            sty L00F2
            jsr LA1D1
            lda #$01
            sta L0099
L831C:      jsr L86D5
            lda CH
            ldx #$00
            stx CH
            cmp #$21
            beq L8340
            cpy L00EC
            beq L831C
            iny
            cpy L00EC
            beq L831C
            lda L00F1
            sta L00ED
            lda L00F2
            sta L00EC
            lda #$00
            sta L0099
L8340:      ldx L00F0
            ldy L00F3
            lda #$00
            sta ATRACT
            rts
L8349:      ldy #$00
            txa
            bne L8350
            ldy #$03
L8350:      ldx #$01
            sed
            clc
            lda L185A,Y
            adc L1856
            sta L00AB
            lda L185B,Y
            adc L1857
            sta L00AC
            cld
L8365:      lda L00AC
            cmp LA594,X
            beq L8370
            bcc L837E
            bcs L8379
L8370:      lda L00AB
            cmp LABEF,X
            beq L837F
            bcc L837E
L8379:      inx
            cpx #$0D
            bcc L8365
L837E:      dex
L837F:      cpx #$0C
            bcc L838F
            lda RANDOM
            and #$01
            sta L00AC
            txa
            sec
            sbc L00AC
            tax
L838F:      stx L1831
            rts
L8393:      jsr L847D
            sei
            lda #$00
            sta NMIEN
            sta DMACLT
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta L009D
            sta L009E
            lda #$11
            sta GPRIOR
            lda #$00
            sta SIZEM
            lda #$00
            sta SIZEP0
            sta SIZEP1
            sta SIZEP2
            sta SIZEP3
            lda #$10
            sta PMBASE
            lda PAL
            cmp #$0F
            beq L83E1
            ldx #$15
L83D5:      lda LA32A,X
            sta L1815,X
            dex
            bne L83D5
            jmp L83EC
L83E1:      ldx #$15
L83E3:      lda LA33F,X
            sta L1815,X
            dex
            bne L83E3
L83EC:      lda #$C0
            sta POKMSK
            sta IRQEN
            sta NMIEN
            lda #$E1
            sta VDSLST
            lda #$85
            sta VDSLST+1
            lda #$C2
            sta VVBLKD
            lda #$86
            sta VVBLKD+1
            lda #$00
            sta SDLSTL
            lda #$10
            sta SDLSTH
            lda L181A
            sta COLOR4
            cli
            lda #$01
            sta L1814
            sta L183E
            sta L1832
            lda #$04
            sta L009C
            lda #$07
            sta L009F
L842E:      ldx #$00
            ldy L009E
L8432:      lda LAAA4,X
            sta L0A70,Y
            iny
            inx
            cpx #$1B
            bcc L8432
            sty L009E
            ldy L009D
            ldx L009F
            lda LA0B2,Y
            sta L0A70,X
            inx
            iny
            lda LA0B2,Y
            sta L0A70,X
            iny
            sty L009D
            txa
            clc
            adc #$1A
            sta L009F
            dec L009C
            bpl L842E
            ldy #$00
            sty L0960
            clc
L8465:      ldx #$00
L8467:      lda L0960,Y
            adc LA8C8,X
            iny
            sta L0960,Y
            inx
            cpx #$08
            bcc L8467
            cpy #$49
            bcc L8465
            jmp L856C
L847D:      lda #$00
            ldx #$E7
L8481:      sta DSKFMS,X
            dex
            bne L8481
            lda #$10
            sta L009D
            lda #$00
            sta L009C
            lda #$00
            ldx #$30
            ldy #$00
L8494:      sta (L009C),Y
            dey
            bne L8494
            inc L009D
            dex
            bne L8494
            lda #$AC
            sta CHBAS
L84A3:      ldx #$06
L84A5:      lda LA5A0,X
            sta L0FFF,X
            dex
            bne L84A5
            lda #$0E
            ldx #$B0
L84B2:      sta L1005,X
            dex
            bne L84B2
            ldx #$03
L84BA:      lda LABFB,X
            sta L1067,X
            dex
            bne L84BA
            ldx #$08
L84C5:      lda LA5A6,X
            sta L10B5,X
            dex
            bne L84C5
            rts
L84CF:      lda #$00
            sta L184F
            sta L1832
            sta L00C3
            jsr L966E
            jsr LA1D1
L84DF:      ldx #$FF
            stx L00F4
            stx L00F5
            stx L1805
            inx
            stx L00C9
            stx L0099
            stx L184E
            stx L00BE
            stx L00BF
            stx L1852
            stx L1853
            stx L0D00
            stx LOMEM+1
            inx
            stx L1834
            stx L1830
            stx L1858
            lda #$03
            sta L00BC
            sta L00BD
            lda #$0E
            sta L1042
            sta L106D
            jsr L99C0
            jsr L84A3
            jmp L819D
L8520:      lda L00C3
            beq L8540
            jsr L9991
            lda L1804
            and #$0F
            bne L8540
L852E:      jsr L9991
            lda L1804
            and #$0F
            cmp #$09
            bcs L852E
            sta L00C6
            lda #$01
            sta L00C8
L8540:      rts
L8541:      ldx #$06
L8543:      lda #$00
            sta L0B00,X
            sta L0B1C,X
            dex
            bpl L8543
            sta L00E1
            sta L00F8
            rts
L8553:      ldx #$01
            stx L0083
            stx HITCLR
            dex
            stx L0084
            stx L00EC
            stx L00ED
            lda #$3E
            sta SDMCTL
            lda #$03
            sta GRACTL
            rts
L856C:      lda #$02
            sta L009C
            lda #$D0
            sta L008B
            lda #$10
            sta L008C
            ldy #$00
            clc
            lda LAE98
            adc #$01
            sta (L008B),Y
            iny
            lda LAE99
            sta (L008B),Y
            dey
L8589:      clc
            lda (L008B),Y
            adc #$28
            iny
            iny
            sta (L008B),Y
            dey
            lda (L008B),Y
            iny
            iny
            adc #$00
            sta (L008B),Y
            lda L009C
            cmp #$64
            bne L85C1
            dey
            clc
            lda LABBA
            adc #$01
            sta (L008B),Y
            iny
            lda LABBB
            sta (L008B),Y
            clc
            dey
            tya
            adc L008B
            sta L008B
            lda L008C
            adc #$00
            sta L008C
            ldy #$01
            lda L009C
L85C1:      inc L009C
            cmp #$B0
            beq L85CB
            dey
            jmp L8589
L85CB:      rts
L85CC:      lda L181B
            sta COLOR0
            lda #$00
            sta L0086
            sta L1839
            lda L00C1
            sta L00D7
            asl
            sta L0085
            rts
            pha
            txa
            pha
            tya
            pha
            ldx LOMEM+1
            lda L85FE,X
            sta VDSLST
            lda L8600,X
            sta VDSLST+1
            lda #$00
            sta L0083
            sta HITCLR
            jmp LA1DE
L85FE:      pla
            .byte $02
L8600:      stx L0086
            pha
            txa
            pha
            tya
            pha
            ldy #$02
L8609:      lda #$00
            ldx ATRACT
            bpl L8611
            lda RTCLOK+1
L8611:      eor COLOR0,Y
            sta L0A50,Y
            lda L0A60,Y
            sta COLPF0,Y
            dey
            bpl L8609
            lda #$2C
            sta VDSLST
            lda #$86
            sta VDSLST+1
            bne L8662
            pha
            txa
            pha
            tya
            pha
            ldy #$02
L8633:      lda L0A50,Y
            sta COLPF0,Y
            dey
            bpl L8633
            lda L00EC
            and #$03
            bne L8658
            ldy #$02
            lda L0A60,Y
            pha
            ldx #$01
L864A:      lda L0A60,X
            sta L0A60,Y
            dex
            dey
            bne L864A
            pla
            sta L0A60,Y
L8658:      lda #$68
            sta VDSLST
            lda #$86
            sta VDSLST+1
L8662:      pla
            tay
L8664:      pla
            tax
            pla
            rti
            pha
            txa
            pha
            tya
            pha
            lda #$A8
            sta VDSLST
            lda #$86
            sta VDSLST+1
            lda #$00
            ldx ATRACT
            bpl L867F
            lda RTCLOK+1
L867F:      sta L0098
            lda L181D
            eor L0098
            sta COLPF2
            lda L1818
            eor L0098
            sta COLPF3
            lda L181C
            eor L0098
            sta COLPF0
            jmp LA1DE
L869C:      ldx #$14
L869E:      lda L8701,X
            sta L04E0,X
            dex
            bpl L869E
            rts
            pha
            txa
            pha
            lda #$01
            sta L0084
            sta L0083
            ldx #$10
L86B3:      lda LCFFF,X
            sta L185F,X
            dex
            bne L86B3
            inx
            stx HITCLR
            bne L8664
            lda #$E1
            sta VDSLST
            lda #$85
            sta VDSLST+1
            inc L00EC
            bne L8662
            inc L00ED
            jmp L8662
L86D5:      lda LOMEM+1
            bne L86FA
            lda CONSOL
            cmp #$06
            bne L86F2
L86E0:      lda #$01
            sta L1830
            jsr L99C0
            lda #$00
            sta L0099
            ldx #$FF
            txs
            jmp L806C
L86F2:      cmp #$05
            beq L86FB
            cmp #$03
            beq L86FB
L86FA:      rts
L86FB:      ldx #$FF
            txs
            jmp L802D
L8701:      .byte $00,$00,$7F,$00,$00,$00,$1E,$BA
            .byte $BB,$4E,$33,$30,$58,$F7,$00,$00
            .byte $00,$18,$18,$18,$00
L8716:      lda L183A
            beq L872A
            sta L008F
            ldx #$01
            stx L0086
            dex
            clc
L8723:      jsr L872F
            dec L008F
            bne L8723
L872A:      lda #$00
            sta L0086
            rts
L872F:      lda L0F00,X
            sta L009C
            lda L0F01,X
            sta L009D
            lda L0F02,X
            sta L009E
            lda L0F03,X
            sta L009F
            lda L0F04,X
            sta L008B
            lda L0F05,X
            sta L008C
            lda L0F06,X
            sta L00A0
            asl
            sta L00A2
            txa
            clc
            adc #$07
            sta L00FF
            lda #$09
            sbc L00A2
            sta L00A3
            ldy #$00
L8763:      lda (L008B),Y
            sta L008D
            iny
            lda (L008B),Y
            sta L008E
            sty L00A1
            ldy L009C
            dey
            sty L00A5
            sty L00A6
L8775:      ldy L00A5
            lda (L009E),Y
            sta L00A4
            ldx L00A2
            beq L8794
            ldx L00A3
L8781:      asl
            dex
            bne L8781
            ldy L00A6
            iny
            eor (L008D),Y
            sta (L008D),Y
            lda L00A4
            ldx L00A2
L8790:      lsr
            dex
            bne L8790
L8794:      ldy L00A6
            eor (L008D),Y
            sta (L008D),Y
            dec L00A6
            dec L00A5
            bpl L8775
            dec L009D
            beq L87B1
            clc
            lda L009C
            adc L009E
            sta L009E
            ldy L00A1
            iny
            jmp L8763
L87B1:      ldx L00FF
            rts
L87B4:      ldx L00C9
            ldy L1831
            lda L00F4,X
            cmp L1831
            bne L87C6
            inc L1852,X
            jmp L87CD
L87C6:      lda #$00
            sta L1852,X
            sty L00F4,X
L87CD:      lda L181E,Y
            sta COLOR1
            sta COLOR2
            sta COLOR3
            sta PCOLR1
            sta PCOLR2
            sta PCOLR3
            lda LA8DC,Y
            sta L00F9
            lda LA8E9,Y
            sta L00F6
            lda LA58F,Y
            sec
            sbc L1852,X
            bpl L87F7
            lda #$00
L87F7:      sta L00CF
            rts
L87FA:      ldx #$0A
            lda #$E0
            sta L009C
            lda #$04
            sta L009D
L8804:      lda #$00
            sta L08B0,X
            sta L0950,X
            sta L08D0,X
            lda L009C
            clc
            adc #$20
            sta L0870,X
            sta L009C
            lda #$00
            adc L009D
            sta L0880,X
            sta L009D
            lda L009C
            clc
            adc #$20
            sta L0890,X
            sta L009C
            lda #$00
            adc L009D
            sta L08A0,X
            sta L009D
            txa
            sta L0800,X
            dex
            bpl L8804
            rts
L883D:      lda L00A2
            sta L0F00,Y
            lda L00A1
            sta L0F01,Y
            lda L009F
            sta L0F02,Y
            lda L00A0
            sta L0F03,Y
            lda L0870,X
            sta L0F04,Y
            lda L0880,X
            sta L0F05,Y
            lda L009E
            sta L0F06,Y
            tya
            clc
            adc #$07
            tay
            rts
L8868:      lda L08E0,X
            sta L0F00,Y
            lda L08F0,X
            sta L0F01,Y
            lda L0930,X
            sta L0F02,Y
            lda L0940,X
            sta L0F03,Y
            lda L0890,X
            sta L0F04,Y
            lda L08A0,X
            sta L0F05,Y
            lda L08C0,X
            sta L0F06,Y
            tya
            clc
            adc #$07
            tay
            rts
L8898:      lda L00A6
            asl
            bcs L88A7
            adc #$D0
            sta L008D
            lda #$10
            adc #$00
            bne L88AF
L88A7:      adc #$CF
            sta L008D
            lda #$10
            adc #$01
L88AF:      sta L008E
            ldy #$00
            clc
            lda (L008D),Y
            adc L00A8
            sta (L008B),Y
            iny
            lda (L008D),Y
            adc #$00
            sta (L008B),Y
            clc
            lda L008B
            adc #$02
            sta L008B
            lda L008C
            adc #$00
            sta L008C
            inc L00A6
            dec L00A7
            bne L8898
            rts
L88D5:      ldy L1839
            beq L8901
            dey
L88DB:      ldx L07C0,Y
            lda L0890,X
            sta L009C
            lda L08A0,X
            sta L009D
            lda L0870,X
            sta L0890,X
            lda L0880,X
            sta L08A0,X
            lda L009C
            sta L0870,X
            lda L009D
            sta L0880,X
            dey
            bpl L88DB
L8901:      rts
L8902:      ldx #$00
            stx L00CC
            stx L00CD
            stx L1839
            stx L183A
L890E:      lda L0950,X
            cmp #$02
            bne L891D
            jsr L8950
            lda #$FF
            sta L0950,X
L891D:      inx
            cpx L00C1
            bcc L890E
            ldx #$00
L8924:      lda L0950,X
            cmp #$01
            bne L8933
            jsr L8950
            lda #$FF
            sta L0950,X
L8933:      inx
            cpx L00C1
            bcc L8924
            ldx #$00
L893A:      lda L0950,X
            bmi L8945
            jsr L8950
            jmp L894A
L8945:      lda #$00
            sta L0950,X
L894A:      inx
            cpx L00C1
            bcc L893A
            rts
L8950:      jsr L89A2
            lda L009D
            beq L895E
            ldy L00CD
            jsr L8868
            sty L00CD
L895E:      lda L009C
            beq L89A1
            lda L0870,X
            sta L008B
            lda L0880,X
            sta L008C
            lda L0860,X
            sta L00A6
            lda L00A1
            sta L00A7
            jsr L8898
            lda L009F
            sta L0930,X
            lda L00A0
            sta L0940,X
            lda L00A2
            sta L08E0,X
            lda L00A1
            sta L08F0,X
            lda L009E
            sta L08C0,X
            ldy L00CD
            jsr L883D
            sty L00CD
            ldy L00CC
            txa
            sta L07C0,Y
            iny
            sty L00CC
L89A1:      rts
L89A2:      lda L08B0,X
            beq L8A0D
            lda L08D0,X
            beq L89AF
            dec L08D0,X
L89AF:      dec L0800,X
            bmi L89B6
            bne L8A0D
L89B6:      lda L183A
            cmp #$02
            bcc L89C4
            lda #$01
            sta L0950,X
            bne L8A0D
L89C4:      lda L08B0,X
            cmp #$01
            bne L89F4
            lda #$09
            sta L0830,X
            lda #$11
            sta L0810,X
            lda #$00
            sta L0840,X
            lda #$FF
            sta L0820,X
            lda #$02
            sta L08B0,X
            dec L00D7
            stx L00AF
            jsr L8F75
            ldx L00AF
            lda #$01
            sta L0091
            jmp L8A35
L89F4:      cmp #$02
            bne L8A14
            lda L0840,X
            bne L8A35
            lda #$00
            sta L08B0,X
            lda #$00
            sta L009C
L8A06:      inc L183A
            lda #$01
            bne L8A11
L8A0D:      lda #$00
            sta L009C
L8A11:      sta L009D
            rts
L8A14:      jsr L8AD1
            lda L00A6
            cmp L0830,X
            beq L8A26
            sta L0830,X
            lda #$00
            sta L0840,X
L8A26:      lda L00A7
            cmp L0810,X
            beq L8A35
            sta L0810,X
            lda #$00
            sta L0820,X
L8A35:      lda L0830,X
            sta L009C
            lda L0840,X
            sta L009D
            stx L00A6
            jsr L91AD
            ldx L00A6
            lda L009D
            sta L0840,X
            lda L0850,X
            bne L8A58
            lda L00AD
            bpl L8A58
            lda #$00
            sta L00AD
L8A58:      clc
            lda L0850,X
            adc L00AD
            sta L0850,X
            lda L0860,X
            bne L8A6E
            lda L00AE
            bpl L8A6E
            lda #$00
            sta L00AE
L8A6E:      clc
            lda L0860,X
            adc L00AE
            sta L0860,X
            lda L0810,X
            sta L009C
            lda L0820,X
            sta L009D
            lda L0850,X
            and #$03
            sta L009E
            lda L0850,X
            lsr
            lsr
            sta L00A8
            stx L00A6
            jsr L915C
            ldx L00A6
            lda L009D
            sta L0820,X
            clc
            lda L0860,X
            adc L00A1
            sec
            sbc #$01
            sta L0920,X
            clc
            lda L0850,X
            adc L00A5
            sta L0910,X
            lda L00CE
            sta L0800,X
            inc L1839
            inc L183A
            lda #$01
            sta L009C
            lda L08B0,X
            bmi L8AC7
            jmp L8A06
L8AC7:      lda #$03
            sta L08B0,X
            lda #$00
            jmp L8A11
L8AD1:      sec
            lda L00D4
            sbc L0910,X
            sta L009E
            lda #$00
            rol
            sta L009F
            lda L0860,X
            adc #$05
            sta L009C
            sec
            lda L00D5
            sbc L009C
            sta L00A0
            lda #$00
            rol
            sta L00A1
            jsr L8C62
            lda L009C
            beq L8AFB
            jmp L8C61
L8AFB:      lda LOMEM+1
            beq L8B0C
            lda L0830,X
            sta L00A6
            lda L0810,X
            sta L00A7
            jmp L8C61
L8B0C:      sec
            lda L0850,X
            sbc #$03
            sta L00A2
            sta L00A6
            sec
            lda L0860,X
            sbc #$03
            sta L00A3
            sta L00A7
            clc
            lda L0910,X
            adc #$05
            sta L00A4
            clc
            lda L0920,X
            adc #$04
            sta L00A5
            jsr L9640
            sta L00A9
            lda L00A4
            sta L00A6
            lda L00A5
            sta L00A7
            jsr L9640
            sta L00AA
            bpl L8B48
            lda L00A9
            sta L00AA
L8B48:      lda L00A9
            bpl L8B50
            lda L00AA
            sta L00A9
L8B50:      lda L009E
            beq L8B66
            lda L009F
            beq L8B5F
            lda #$01
            sta L009F
            jmp L8B6A
L8B5F:      lda #$FF
            sta L009F
            jmp L8B6A
L8B66:      lda #$00
            sta L009F
L8B6A:      lda L00A0
            beq L8B80
            lda L00A1
            beq L8B79
            lda #$01
            sta L00A1
            jmp L8B84
L8B79:      lda #$FF
            sta L00A1
            jmp L8B84
L8B80:      lda #$00
            sta L00A1
L8B84:      lda L00D6
            cmp L00A9
            bne L8B8D
            jmp L8C49
L8B8D:      cmp L00AA
            bne L8B94
            jmp L8C49
L8B94:      lda L00A1
            beq L8BBC
            bmi L8BAE
            lda L00A9
            asl
            asl
            clc
            adc #$01
            tay
            lda L0A00,Y
            beq L8BBC
            lda #$00
            sta L00A1
            jmp L8BBC
L8BAE:      lda L00AA
            asl
            asl
            tay
            lda L0A00,Y
            beq L8BBC
            lda #$00
            sta L00A1
L8BBC:      lda L009F
            beq L8BE7
            bmi L8BD6
            lda L00A9
            asl
            asl
            clc
            adc #$02
            tay
            lda L0A00,Y
            beq L8BE7
            lda #$00
            sta L009F
            jmp L8BE7
L8BD6:      lda L00AA
            asl
            asl
            clc
            adc #$03
            tay
            lda L0A00,Y
            beq L8BE7
            lda #$00
            sta L009F
L8BE7:      lda L00A9
            cmp L00AA
            beq L8C49
            clc
            adc L00AA
            ror
            bcc L8C1E
            lda L00A1
            beq L8C49
            bmi L8C0D
            lda L00AA
            asl
            asl
            clc
            adc #$01
            tay
            lda L0A00,Y
            beq L8C49
            lda #$00
            sta L00A1
            jmp L8C49
L8C0D:      lda L00A9
            asl
            asl
            tay
            lda L0A00,Y
            beq L8C49
            lda #$00
            sta L00A1
            jmp L8C49
L8C1E:      lda L009F
            beq L8C49
            bmi L8C38
            lda L00AA
            asl
            asl
            clc
            adc #$02
            tay
            lda L0A00,Y
            beq L8C49
            lda #$00
            sta L009F
            jmp L8C49
L8C38:      lda L00A9
            asl
            asl
            clc
            adc #$03
            tay
            lda L0A00,Y
            beq L8C49
            lda #$00
            sta L009F
L8C49:      inc L009F
            inc L00A1
            lda L00A1
            asl
            clc
            adc L00A1
            clc
            adc L009F
            tay
            lda LA856,Y
            sta L00A7
            lda LA85F,Y
            sta L00A6
L8C61:      rts
L8C62:      lda L00F7
            beq L8C69
            jmp L8D8B
L8C69:      lda L00A1
            bne L8C6F
            inc L009E
L8C6F:      lda L00F8
            cmp L00F9
            bcc L8C78
            jmp L8D8B
L8C78:      lda L08D0,X
            beq L8C80
            jmp L8D8B
L8C80:      lda L009E
            bmi L8C9A
            cmp #$03
            bcs L8C9A
            lda L00A1
            beq L8C93
            lda #$06
            sta L009C
            jmp L8D31
L8C93:      lda #$03
            sta L009C
            jmp L8D31
L8C9A:      lda LOMEM+1
            bne L8CA9
            lda L00A0
            clc
            adc #$02
            bmi L8CBB
            cmp #$05
            bcs L8CBB
L8CA9:      lda L009F
            beq L8CB4
            lda #$01
            sta L009C
            jmp L8D31
L8CB4:      lda #$02
            sta L009C
            jmp L8D31
L8CBB:      lda L009F
            bne L8CCB
            lda L009E
            eor #$FF
            sec
            sbc #$01
            sta L0087
            jmp L8CD2
L8CCB:      lda L009E
            sec
            sbc #$04
            sta L0087
L8CD2:      lda L00A1
            bne L8CDF
            lda L00A0
            eor #$FF
            clc
            adc #$01
            sta L00A0
L8CDF:      lda L00A0
            cmp #$A0
            bcc L8CE8
            jmp L8D8B
L8CE8:      lda L00A0
            bmi L8CF0
            cmp #$28
            bcc L8CFB
L8CF0:      lsr
            lsr
            tay
            lda L0960,Y
            asl
            asl
            jmp L8CFF
L8CFB:      tay
            lda L0960,Y
L8CFF:      sec
            sbc L0087
            clc
            adc #$01
            cmp #$03
            bcc L8D0C
            jmp L8D8B
L8D0C:      lda L009F
            bne L8D22
            lda L00A1
            bne L8D1B
            lda #$05
            sta L009C
            jmp L8D31
L8D1B:      lda #$08
            sta L009C
            jmp L8D31
L8D22:      lda L00A1
            bne L8D2D
            lda #$04
            sta L009C
            jmp L8D31
L8D2D:      lda #$07
            sta L009C
L8D31:      stx L00AF
            ldx #$04
L8D35:      lda L0B00,X
            beq L8D40
            dex
            bpl L8D35
            jmp L8D8B
L8D40:      ldy L009C
            lda LA895,Y
            sta L0B15,X
            lda LA89E,Y
            sta L0B1C,X
            lda #$02
            sta L0B00,X
            inc L00F8
            ldy L00AF
            lda #$18
            sta L08D0,Y
            tya
            sta L0B54,X
            lda L0850,Y
            sta L00A9
            lda L0860,Y
            sta L00A8
            lda #$02
            sta L0B00,X
            ldy L009C
            jsr L8D90
            lda #$0C
            sta L00A7
            lda #$00
            sta L00A6
            lda LOMEM+1
            bne L8D84
            lda #$01
            sta L0094
L8D84:      ldx L00AF
            lda #$01
            jmp L8D8D
L8D8B:      lda #$00
L8D8D:      sta L009C
            rts
L8D90:      lda LA87A,Y
            sta L0B31,X
            lda #$00
            sta L0B38,X
            lda LA8A7,Y
            sta L0B46,X
            sta L008B
            lda LA8B0,Y
            sta L0B4D,X
            sta L008C
            lda #$01
            sta L0B3F,X
            lda L00A9
            clc
            adc L0B15,X
            sta L0B15,X
            clc
            adc #$34
            sta L0B07,X
            clc
            lda L00A8
            adc L0B1C,X
            sta L0B1C,X
            clc
            adc #$20
            sta L0B0E,X
            sta L009C
            sta L00A1
            ldy #$01
            lda (L008B),Y
            clc
            adc L0B15,X
            sta L0B23,X
            dey
            lda (L008B),Y
            sec
            sbc #$01
            clc
            adc L0B1C,X
            sta L0B2A,X
            txa
            tay
            lda #$00
            sta L00AD
            sta L00AE
            jsr L9305
            rts
L8DF6:      jsr L9991
            lda L1804
            and #$1F
            cmp #$17
            bcs L8DF6
            cmp #$06
            bcc L8DF6
            sta L00C1
            lda L00D2
            sec
            sbc #$1A
            bpl L8E11
            lda #$00
L8E11:      sta L00AA
            clc
            lda L00D2
            adc #$22
            sta L00AB
            lda L00D3
            sec
            sbc #$1F
            bpl L8E23
            lda #$00
L8E23:      sta L00AC
            clc
            lda L00D3
            adc #$2D
            sta L00AD
            ldx #$00
            sta L009C
L8E30:      jsr L9991
            lda L1804
            clc
            adc #$04
            bcs L8E30
            cmp #$8C
            bcs L8E30
            sta L0850,X
            sta L00A6
L8E44:      jsr L9991
            lda L1804
            clc
            adc #$06
            bcs L8E44
            cmp #$9E
            bcs L8E44
            sta L0860,X
            sta L00A8
            clc
            adc #$0B
            sta L0920,X
            sta L00A9
            clc
            lda L00A6
            adc #$07
            sta L0910,X
            sta L00A7
            stx L009E
            jsr L95E8
            ldx L009E
            lda L00AE
            beq L8E78
            jmp L8EBA
L8E78:      ldy L009E
L8E7A:      dey
            bmi L8E87
            jsr L9617
            lda L00AE
            beq L8E7A
            jmp L8EBA
L8E87:      jsr L95C7
            lda L00AE
            bne L8EBA
            lda #$0C
            sta L0810,X
            lda #$00
            sta L0820,X
            sta L0830,X
            sta L0840,X
            lda #$01
            sta L0800,X
            sta L08F0,X
            sta L08E0,X
            lda #$80
            sta L08B0,X
            inx
            cpx #$0B
            bcs L8EC9
            cpx L00C1
            bcs L8EC9
            jmp L8E30
L8EBA:      lda L00C1
            beq L8EC3
            dec L00C1
            jmp L8E30
L8EC3:      txa
            bne L8EC9
            jmp L8E30
L8EC9:      stx L00C1
            rts
L8ECC:      lda L1839
            beq L8F3D
            ldy #$00
L8ED3:      ldx L07C0,Y
            sty L009C
            lda L08B0,X
            cmp #$03
            bne L8F35
            ldy #$00
L8EE1:      sty L009D
            cpx L009D
            beq L8F07
            lda L08B0,Y
            beq L8F07
            cmp #$01
            beq L8F07
            jsr L9617
            beq L8F07
            jsr L8F3E
            beq L8F07
            lda #$01
            sta L08B0,X
            lda #$02
            sta L0950,X
            jmp L8F35
L8F07:      iny
            cpy L00C1
            bcc L8EE1
            lda L0850,X
            sta L00A6
            lda L0860,X
            sta L00A8
            lda L0910,X
            sta L00A7
            lda L0920,X
            sta L00A9
            stx L009D
            jsr L95E8
            ldx L009D
            lda L00AE
            beq L8F35
            lda #$01
            sta L08B0,X
            lda #$02
            sta L0950,X
L8F35:      ldy L009C
            iny
            cpy L1839
            bcc L8ED3
L8F3D:      rts
L8F3E:      lda L0910,X
            sec
            sbc L0850,Y
            cmp #$08
            bcc L8F50
            sec
            lda L0910,Y
            sbc L0850,X
L8F50:      sta L00A6
            lda L0920,Y
            sec
            sbc L0860,X
            cmp #$0D
            bcc L8F64
            sec
            lda L0920,X
            sbc L0860,Y
L8F64:      clc
            adc L00A6
            cmp #$04
            bcs L8F70
            lda #$00
            jmp L8F72
L8F70:      lda #$01
L8F72:      sta L00AE
            rts
L8F75:      lda LOMEM+1
            bne L8FB2
            lda L00C9
            bne L8F84
            ldx #$03
            ldy #$02
            jmp L8F88
L8F84:      ldx #$00
            ldy #$00
L8F88:      sed
            clc
            lda L1859,X
            adc #$50
            sta L1859,X
            inx
            lda #$00
            adc L1859,X
            sta L1859,X
            inx
            lda #$00
            adc L1859,X
            sta L1859,X
            clc
            lda L00BA
            adc #$10
            sta L00BA
            lda #$00
            adc L00BB
            sta L00BB
            cld
L8FB2:      rts
L8FB3:      lda #$01
            sta L00D8
            sta L00E4
            sta L00E5
            lsr
            sta L00C6
            sta L00C8
            sta L00E1
            sta L00E7
            jsr L9000
            jsr L8FCB
            rts
L8FCB:      lda L00E6
            beq L8FFF
            lda #$00
            sta L00E6
            lda L00D0
            sta HPOSP0
            lda #$14
            sta L009D
            lda L00E2
            sta L009C
            ldy L00E3
            dey
            lda #$00
L8FE5:      sta (L009C),Y
            dey
            bpl L8FE5
            lda L00D1
            sta L00E2
            clc
            adc #$00
            sta L009C
            ldy L00E0
            sty L00E3
            dey
L8FF8:      lda (L00DE),Y
            sta (L009C),Y
            dey
            bpl L8FF8
L8FFF:      rts
L9000:      lda L00D8
            beq L902D
            cmp #$02
            bcc L9013
            bne L9010
            jsr L91E1
            jmp L90C1
L9010:      jmp L921C
L9013:      lda L00E7
            beq L9019
            dec L00E7
L9019:      lda L00C6
            cmp L00E4
            bne L904E
            lda L00C8
            cmp L00E5
            bne L904E
            cmp #$00
            bne L9047
            lda L00C6
            bne L902E
L902D:      rts
L902E:      dec L00D9
            bne L902D
            lda L00DC
            sta L009C
            lda L00DD
            sta L009D
            jsr L91AD
            lda L009D
            sta L00DD
            ldy L00DA
            lda L00DB
            bpl L90AB
L9047:      lda L00C6
            beq L90C5
            jmp L90C6
L904E:      lda L00C8
            sta L00E5
            beq L908A
            ldx L00C6
L9056:      stx L00E4
            lda #$00
            sta L00DC
            sta L00DD
            lda LA832,X
            bne L906C
            lda L00C8
            beq L906C
            lda L00DA
            jmp L906E
L906C:      sta L00DA
L906E:      sta L009C
            lda #$00
            sta L00DB
            sta L009D
            lda #$80
            sta L009E
            jsr L916B
            jsr L9139
            lda L00C6
            beq L90C1
            jsr L90C6
            jmp L90C1
L908A:      ldx L00C6
            beq L9056
            stx L00E4
            lda LA844,X
            sta L00DC
            sta L009C
            lda #$00
            sta L009D
            jsr L91AD
            lda L009D
            sta L00DD
            ldx L00C6
            ldy LA83B,X
            sty L00DA
            lda #$FF
L90AB:      sta L009D
            sty L009C
            lda #$80
            sta L009E
            jsr L915C
            lda L009D
            sta L00DB
            jsr L9106
            lda #$04
            sta L00D9
L90C1:      lda #$01
            sta L00E6
L90C5:      rts
L90C6:      lda L00E7
            bne L9105
            lda L00E1
            cmp #$02
            beq L9105
            ldx #$06
            lda L0B00,X
            beq L90D8
            dex
L90D8:      lda #$15
            sta L00E7
            inc L00E1
            ldy L00C6
            lda LA883,Y
            sta L0B15,X
            lda LA88C,Y
            sta L0B1C,X
            lda #$01
            sta L0B00,X
            lda #$FF
            sta L0B54,X
            lda L00D2
            sta L00A9
            lda L00D3
            sta L00A8
            jsr L8D90
            lda #$01
            sta L0093
L9105:      rts
L9106:      clc
            lda L00D0
            adc L00AD
            sta L00D0
            clc
            lda L00D2
            adc L00AD
            sta L00D2
            clc
            lda L00D1
            adc L00AE
            sta L00D1
            clc
            lda L00D3
            adc L00AE
            sta L00D3
            clc
            lda L00D4
            adc L00AD
            sta L00D4
            sta L00A6
            clc
            lda L00D5
            adc L00AE
            sta L00D5
            sta L00A7
            jsr L9640
            sta L00D6
L9139:      lda L00A1
            sta L00E0
            lda L009F
            sta L00DE
            lda L00A0
            sta L00DF
            clc
            lda L00D2
            adc L00A4
            sta L00E8
            clc
            adc L00A5
            sta L00EA
            clc
            lda L00D3
            sta L00E9
            clc
            adc L00A3
            sta L00EB
            rts
L915C:      ldx L009C
            inc L009D
            lda L009D
            cmp LA868,X
            bcc L916B
            lda #$00
            sta L009D
L916B:      lda L009C
            asl
            tax
            lda LB069,X
            sta L008B
            inx
            lda LB069,X
            sta L008C
            lda L009D
            asl
            tay
            lda (L008B),Y
            sta L008D
            iny
            lda (L008B),Y
            sta L008E
            ldy #$00
            lda (L008D),Y
            sta L00A1
            iny
            lda (L008D),Y
            sta L00A2
            iny
            lda (L008D),Y
            sta L00A3
            iny
            lda (L008D),Y
            sta L00A4
            iny
            lda (L008D),Y
            sta L00A5
            iny
            clc
            tya
            adc L008D
            sta L009F
            lda L008E
            sta L00A0
            rts
L91AD:      ldx L009C
            lda LA7C6,X
            clc
            adc L009D
            tax
            lda LA7D8,X
            sta L00AD
            lda LA9A2,X
            sta L00AE
            inc L009D
            ldx L009C
            lda L009D
            cmp LA7B4,X
            bcc L91CF
            lda #$00
            sta L009D
L91CF:      rts
L91D0:      lda L00D8
            beq L91E0
            cmp #$01
            bne L91E0
            lda #$02
            sta L00D8
            lda #$01
            sta L0092
L91E0:      rts
L91E1:      dec L00D1
            dec L00D3
            lda #$03
            sta L00D8
            lda #$30
            sta L00DC
            lda #$02
            sta L00D9
            ldx #$FF
            stx L009D
            inx
            stx L00DD
            lda #$0B
            sta L00DA
            sta L009C
            lda #$80
            sta L009E
            jsr L915C
            lda L009D
            sta L00DB
            lda L00A1
            sta L00E0
            lda L009F
            sta L00DE
            lda L00A0
            sta L00DF
            lda LA8B9
            sta PCOLR0
            rts
L921C:      dec L00DC
            beq L9259
            dec L00D9
            bne L9298
            lda L00DA
            sta L009C
            lda L00DB
            sta L009D
            jsr L915C
            lda L009D
            sta L00DB
            lda L00A1
            sta L00E0
            lda L009F
            sta L00DE
            lda L00A0
            sta L00DF
            lda #$02
            sta L00D9
            ldx L00DD
            inx
            cpx #$08
            bcc L924C
            ldx #$00
L924C:      lda LA8B9,X
            sta PCOLR0
            stx L00DD
            lda #$01
            sta L00E6
            rts
L9259:      lda #$00
            sta L00D8
            lda #$14
            sta L008C
            lda L00E2
            sta L008B
            ldy L00E3
            dey
            lda #$00
L926A:      sta (L008B),Y
            dey
            bpl L926A
            lda #$00
            sta L00E6
            lda #$01
            sta L1805
            jsr LA15E
            jsr LBEAE
            jsr LA15E
            lda L0082
            beq L9290
            lda #$07
            sta L1805
            lda #$00
            sta L0082
            beq L9295
L9290:      lda #$00
            sta L1805
L9295:      jsr LBEAE
L9298:      rts
L9299:      ldy #$06
L929B:      lda L0B00,Y
            beq L92C4
            cmp #$03
            beq L92C4
            lda L0B3F,Y
            sec
            sbc #$01
            sta L0B3F,Y
            bne L92C4
            lda L0B31,Y
            sta L009C
            lda L0B38,Y
            sta L009D
            jsr L91AD
            lda L009D
            sta L0B38,Y
            jsr L92C8
L92C4:      dey
            bpl L929B
            rts
L92C8:      lda L0B0E,Y
            sta L009C
            clc
            lda L00AD
            adc L0B07,Y
            sta L0B07,Y
            clc
            lda L00AD
            adc L0B15,Y
            sta L0B15,Y
            clc
            lda L00AD
            adc L0B23,Y
            sta L0B23,Y
            clc
            lda L00AE
            adc L0B0E,Y
            sta L0B0E,Y
            sta L00A1
            clc
            lda L00AE
            adc L0B1C,Y
            sta L0B1C,Y
            clc
            lda L00AE
            adc L0B2A,Y
            sta L0B2A,Y
L9305:      lda LA8C1,Y
            sta L009E
            lda L0B00,Y
            sta L00A2
            cmp #$02
            beq L931A
            bcs L931F
            lda #$01
            jmp L9325
L931A:      lda L00F6
            jmp L9325
L931F:      lda #$FF
            sta L009E
            lda L00B2
L9325:      sta L0B3F,Y
            lda L0B46,Y
            sta L008B
            lda L0B4D,Y
            sta L008C
            sty L009D
            lda L009C
            sta L008D
            lda L0B07,Y
            sta HPOSP1,Y
            cpy #$03
            bcs L934A
            lda #$15
            clc
            adc L009D
            jmp L934C
L934A:      lda #$13
L934C:      sta L008E
            ldy #$00
            lda (L008B),Y
            sta L009F
            tay
            dey
            lda L00A2
            cmp #$03
            bne L935E
            ldy #$0A
L935E:      lda L009E
            eor #$FF
            sta L00A0
L9364:      lda (L008D),Y
            and L00A0
            sta (L008D),Y
            dey
            bpl L9364
            lda L00A1
            sta L008D
            clc
            lda L008B
            adc #$02
            sta L008B
            ldy L009F
            dey
L937B:      lda (L008B),Y
            and L009E
            ora (L008D),Y
            sta (L008D),Y
            dey
            bpl L937B
            ldy L009D
            rts
L9389:      ldx #$03
L938B:      lda L1860,X
            beq L93B6
            cmp #$02
            bcc L93A9
            txa
            clc
            adc #$03
            tay
            lda L0B00,Y
            beq L93B6
            jsr L9529
            beq L93B6
            jsr L9582
            jmp L93B6
L93A9:      txa
            clc
            adc #$03
            tay
            lda L0B00,Y
            beq L93B6
            jsr L9582
L93B6:      dex
            bpl L938B
            ldx #$02
L93BB:      lda L1865,X
            beq L93E0
            cmp #$02
            bcc L93D6
            txa
            tay
            lda L0B00,Y
            beq L93E0
            jsr L9529
            beq L93E0
            jsr L9582
            jmp L93E0
L93D6:      txa
            tay
            lda L0B00,Y
            beq L93E0
            jsr L9582
L93E0:      dex
            bpl L93BB
            ldx #$02
L93E5:      lda L186D,X
            beq L9403
            txa
            tay
            lda L0B00,Y
            beq L9403
            lda L186D,X
            cmp #$01
            bne L9400
            lda L0B54,Y
            bmi L9403
            jsr L91D0
L9400:      jsr L9582
L9403:      dex
            bpl L93E5
            ldx #$03
L9408:      lda L1868,X
            beq L944A
            cmp #$01
            beq L9435
            txa
            clc
            adc #$03
            tay
            lda L0B00,Y
            beq L944A
            jsr L9582
            lda L1868,X
            ldy #$00
            lsr
L9424:      lsr
            bcs L942F
            iny
            cmp #$04
            bcc L9424
            jmp L944A
L942F:      jsr L9582
            jmp L944A
L9435:      txa
            clc
            adc #$03
            tay
            lda L0B00,Y
            beq L944A
            lda L0B54,Y
            bmi L944A
            jsr L9582
            jsr L91D0
L944A:      dex
            bpl L9408
            lda L1864
            beq L945C
            cmp #$02
            bcc L9459
            jsr L94E1
L9459:      jsr L91D0
L945C:      ldx #$06
L945E:      lda L0B00,X
            beq L94AF
            txa
            tay
            dey
L9466:      lda L0B00,Y
            beq L94AA
            lda L0B15,X
            cmp L0B15,Y
            beq L9485
            cmp L0B23,Y
            beq L9485
            lda L0B23,X
            cmp L0B15,Y
            beq L9485
            cmp L0B23,Y
            bne L94AA
L9485:      lda L0B1C,X
            cmp L0B1C,Y
            beq L949F
            cmp L0B2A,Y
            beq L949F
            lda L0B2A,X
            cmp L0B1C,Y
            beq L949F
            cmp L0B2A,Y
            bne L94AA
L949F:      jsr L9582
            txa
            tay
            jsr L9582
            jmp L94AF
L94AA:      dey
            cpy #$03
            bcs L9466
L94AF:      dex
            cpx #$04
            bcs L945E
            ldx #$06
L94B6:      lda L0B00,X
            beq L94DD
            lda L0B07,X
            cmp #$34
            beq L94D8
            bcc L94D8
            cmp #$CC
            bcs L94D8
            lda L0B0E,X
            cmp #$20
            beq L94D8
            bcc L94D8
            cmp #$CE
            bcs L94D8
            jmp L94DD
L94D8:      txa
            tay
            jsr L9582
L94DD:      dex
            bpl L94B6
            rts
L94E1:      lda L00E8
            sta L00A6
            lda L00EA
            sta L00A7
            lda L00E9
            sta L00A8
            lda L00EB
            sta L00A9
            ldx #$0A
L94F3:      lda L08B0,X
            beq L950D
            cmp #$03
            bne L9510
            jsr L9511
            beq L950D
            lda #$01
            sta L08B0,X
            lda #$01
            sta L0950,X
            bne L9510
L950D:      dex
            bpl L94F3
L9510:      rts
L9511:      lda L0850,X
            sta L00AA
            lda L0910,X
            sta L00AB
            lda L0860,X
            sta L00AC
            lda L0920,X
            sta L00AD
            jsr L95C7
            rts
L9529:      lda L0B15,Y
            sta L00A6
            lda L0B23,Y
            sta L00A7
            lda L0B1C,Y
            sta L00A8
            lda L0B2A,Y
            sta L00A9
            stx L009C
            lda #$00
            sta L009D
            ldx #$0A
L9545:      lda L08B0,X
            beq L956C
            jsr L9511
            beq L956C
            txa
            cmp L0B54,Y
            beq L956C
            lda #$01
            sta L009D
            lda L08B0,X
            cmp #$03
            bne L956F
            lda #$01
            sta L08B0,X
            lda #$02
            sta L0950,X
            bne L956F
L956C:      dex
            bpl L9545
L956F:      ldx L009C
            lda L009D
            rts
L9574:      ldy #$06
L9576:      lda L0B00,Y
            beq L957E
            jsr L9582
L957E:      dey
            bpl L9576
            rts
L9582:      lda L0B00,Y
            cmp #$02
            beq L9590
            bcs L95C6
            dec L00E1
            jmp L9592
L9590:      dec L00F8
L9592:      lda #$00
            sta L0B00,Y
            lda L0B0E,Y
            sta L008D
            lda LA8C1,Y
            sta L009E
            sty L009D
            cpy #$03
            bcs L95AF
            lda #$15
            clc
            adc L009D
            jmp L95B1
L95AF:      lda #$13
L95B1:      sta L008E
            lda L009E
            eor #$FF
            sta L00A0
            ldy #$03
L95BB:      lda (L008D),Y
            and L00A0
            sta (L008D),Y
            dey
            bpl L95BB
            ldy L009D
L95C6:      rts
L95C7:      lda L00A7
            cmp L00AA
            bcc L95E3
            lda L00AB
            cmp L00A6
            bcc L95E3
            lda L00A9
            cmp L00AC
            bcc L95E3
            lda L00AD
            cmp L00A8
            bcc L95E3
            lda #$01
            bne L95E5
L95E3:      lda #$00
L95E5:      sta L00AE
            rts
L95E8:      ldx L183C
            dex
L95EC:      ldy L07D0,X
            lda L00A7
            cmp LA5D8,Y
            bcc L960F
            lda LA5FA,Y
            cmp L00A6
            bcc L960F
            lda L00A9
            cmp LA61C,Y
            bcc L960F
            lda LA63E,Y
            cmp L00A8
            bcc L960F
            lda #$01
            bne L9614
L960F:      dex
            bpl L95EC
            lda #$00
L9614:      sta L00AE
            rts
L9617:      lda L0910,X
            cmp L0850,Y
            bcc L963B
            lda L0910,Y
            cmp L0850,X
            bcc L963B
            lda L0920,X
            cmp L0860,Y
            bcc L963B
            lda L0920,Y
            cmp L0860,X
            bcc L963B
            lda #$01
            bne L963D
L963B:      lda #$00
L963D:      sta L00AE
            rts
L9640:      ldy #$00
L9642:      lda L00A6
            cmp LA770,Y
            bcc L9664
            lda LA781,Y
            cmp L00A6
            bcc L9664
            lda L00A7
            cmp LA792,Y
            bcc L9664
            lda LA7A3,Y
            cmp L00A7
            bcc L9664
            tya
            sta L00A8
            jmp L966D
L9664:      iny
            cpy #$11
            bcc L9642
            lda #$FF
            sta L00A8
L966D:      rts
L966E:      ldx #$05
            lda #$00
L9672:      sta L1859,X
            dex
            bpl L9672
L9678:      ldx #$27
            lda #$00
L967C:      sta L3C80,X
            sta L3C58,X
            dex
            bpl L967C
            sta L00BA
            sta L00BB
            rts
L968A:      lda L00C3
            bne L96B0
            ldx #$01
            ldy #$05
            lda #$02
            sta L009C
            lda #$00
            sta L009D
            jsr L96B1
            lda L00C2
            beq L96B0
            ldx #$1A
            ldy #$02
            lda #$FF
            sta L009C
            lda #$80
            sta L009D
            jsr L96B1
L96B0:      rts
L96B1:      lda #$00
            sta L009E
L96B5:      lda L1859,Y
            sta L009F
            lsr
            lsr
            lsr
            lsr
            sta L00A0
            bne L96CE
            lda L009E
            bne L96CE
            sta L3C58,X
            sta L3C80,X
            beq L96E2
L96CE:      lda L00A0
            clc
            adc #$01
            ora L009D
            sta L3C58,X
            clc
            adc #$0A
            sta L3C80,X
            lda #$01
            sta L009E
L96E2:      inx
            dey
            cpy L009C
            bne L96EC
            lda #$01
            sta L009E
L96EC:      lda L009F
            and #$0F
            sta L00A0
            bne L9701
            lda L009E
            bne L9701
            sta L3C58,X
            sta L3C80,X
            jmp L9715
L9701:      lda L00A0
            clc
            adc #$01
            ora L009D
            sta L3C58,X
            clc
            adc #$0A
            sta L3C80,X
            lda #$01
            sta L009E
L9715:      inx
            cpy L009C
            bne L96B5
            rts
L971B:      lda L00C3
            bne L9761
            stx L009E
            ldx L00C2
L9723:      txa
            stx L009F
            clc
            ror
            ror
            sta L009D
            ldy L00BC,X
            bpl L9731
            ldy #$00
L9731:      tya
            ldy #$08
            cpx #$00
            beq L973A
            ldy #$21
L973A:      asl
            asl
            asl
            tax
            lda #$05
            sta L009C
L9742:      lda LB2D2,X
            ora L009D
            sta L3C58,Y
            lda LABC7,X
            ora L009D
            sta L3C80,Y
            inx
            iny
            dec L009C
            lda L009C
            bpl L9742
            ldx L009F
            dex
            bpl L9723
            ldx L009E
L9761:      rts
L9762:      lda L00C3
            beq L9769
            jmp L97E9
L9769:      lda #$01
            sta L0D00
            ldy #$03
            ldx L00C9
            beq L9776
            ldy #$00
L9776:      sed
            clc
            lda L00BA
            adc L1859,Y
            sta L1859,Y
            lda L00BB
            adc L185A,Y
            sta L185A,Y
            lda #$00
            adc L185B,Y
            sta L185B,Y
            cld
            ldx #$14
            ldy #$05
L9795:      lda LA8D0,Y
            sta L3C58,X
            lda LA8D6,Y
            sta L3C80,X
            dex
            dey
            bpl L9795
            ldx #$15
            lda L00BB
            and #$0F
            bne L97B9
            lda #$00
            sta L3C58,X
            sta L3C80,X
            inx
            jmp L97C6
L97B9:      clc
            adc #$15
            sta L3C58,X
            clc
            adc #$0A
            sta L3C80,X
            inx
L97C6:      lda L00BA
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$15
            sta L3C58,X
            clc
            adc #$0A
            sta L3C80,X
            inx
            lda L00BA
            and #$0F
            clc
            adc #$15
            sta L3C58,X
            clc
            adc #$0A
            sta L3C80,X
L97E9:      rts
L97EA:      ldx #$17
            ldy #$08
            lda #$00
            sta L0D00
L97F3:      sta L3C58,X
            sta L3C80,X
            dex
            dey
            bpl L97F3
            rts
L97FE:      lda L00F9
            cmp #$05
            bcc L9806
            dec L00F9
L9806:      ldy #$02
L9808:      lda L0B00,Y
            beq L9811
            dey
            bpl L9808
            rts
L9811:      lda #$03
            sta L0B00,Y
            lda #$01
            sta L0B3F,Y
            sta L009A
            lda #$20
            sta L0B54,Y
            lda #$18
            sta L00B0
            lda #$FC
            sta L00B1
            iny
            sty L00B7
            lda #$02
            sta L1805
            jsr LA15E
            jsr LBEAE
            lda #$01
            sta L184F
            rts
L983E:      ldx L00B7
            beq L9856
            dex
            dec L0B3F,X
            bne L9856
            lda L0B0E,X
            sta L00A1
            lda L00B9
            sta L009C
            txa
            tay
            jsr L9305
L9856:      rts
L9857:      ldy L00B7
            beq L9878
            dey
            sty L009C
            lda #$00
            sta L0B00,Y
            lda L0B0E,Y
            sta L008D
            lda #$15
            clc
            adc L009C
            sta L008E
            ldy #$0A
            lda #$00
L9873:      sta (L008D),Y
            dey
            bpl L9873
L9878:      rts
L9879:      ldy L00B7
            beq L9885
            dey
            lda L0B3F,Y
            cmp #$01
            beq L9886
L9885:      rts
L9886:      lda L009A
            eor #$01
            sta L009A
            beq L9896
            lda #$00
            sta L00AD
            sta L00AE
            beq L98FC
L9896:      sec
            lda L00D2
            sbc L00B5
            sta L009E
            lda #$00
            rol
            sta L009F
            sec
            lda L00D3
            sbc L00B6
            sta L00A0
            lda #$00
            rol
            sta L00A1
            ldx L009E
            beq L98BD
            ldx L009F
            beq L98BC
            lda #$02
            sta L009F
            bne L98C0
L98BC:      dex
L98BD:      inx
            stx L009F
L98C0:      ldx L00A0
            beq L98CF
            ldx L00A1
            beq L98CE
            ldx #$02
            stx L00A1
            bne L98D2
L98CE:      dex
L98CF:      inx
            stx L00A1
L98D2:      txa
            asl
            clc
            adc L00A1
            adc L009F
            tax
            lda LA85F,X
            cmp L0B31,Y
            beq L98EA
            sta L0B31,Y
            lda #$00
            sta L0B38,Y
L98EA:      lda L0B31,Y
            sta L009C
            lda L0B38,Y
            sta L009D
            jsr L91AD
            lda L009D
            sta L0B38,Y
L98FC:      lda L00B0
            sta L009D
            cmp #$18
            bcc L9912
            lda #$A5
            sta L0B4D,Y
            lda #$C5
            sta L0B46,Y
            lda #$05
            bne L991E
L9912:      lda #$A5
            sta L0B4D,Y
            lda #$CD
            sta L0B46,Y
            lda #$08
L991E:      sta L009C
            clc
            lda L00B0
            adc L00B1
            sta L00B0
            bmi L993C
            cmp #$19
            bcc L9942
            lda #$16
            sta L00B0
            lda #$FC
            sta L00B1
            lda #$01
            sta L184F
            bne L9942
L993C:      lda #$04
            sta L00B0
            sta L00B1
L9942:      lda L0B0E,Y
            sta L00B9
            lda L00AD
            clc
            adc L00B5
            sta L00B5
            sta L0B15,Y
            clc
            adc #$34
            sta L0B07,Y
            lda L00AE
            clc
            adc L00B6
            sta L00B6
            clc
            adc L009D
            sta L0B1C,Y
            clc
            adc #$20
            sta L0B0E,Y
            clc
            lda L0B15,Y
            adc #$06
            sta L0B23,Y
            clc
            lda L0B1C,Y
            adc L009C
            sta L0B2A,Y
            rts
L997D:      lda #$36
            sta L0E00
            ldy #$17
            sty L0E01
L9987:      lda RANDOM
            sta L0E02,Y
            dey
            bpl L9987
            rts
L9991:      stx L0087
            sty L0088
            ldx L0E00
            ldy L0E01
            clc
            lda L0E02,X
            adc L0E02,Y
            eor RANDOM
            sta L0E02,X
            sta L1804
            dex
            bpl L99B0
            ldx #$36
L99B0:      dey
            bpl L99B5
            ldy #$36
L99B5:      stx L0E00
            sty L0E01
            ldx L0087
            ldy L0088
            rts
L99C0:      lda L1830
            beq L99CB
            jsr L9BBF
            jmp L9A28
L99CB:      ldx #$07
L99CD:      lda PCOLR0,X
            sta L0A50,X
            lda L181B
            sta PCOLR0,X
            dex
            bpl L99CD
            lda #$03
            sta L1805
            lda #$00
            sta L0082
            jsr LA15E
            lda L00D7
            beq L99F3
            lda #$01
            sta L0082
            jsr L9A2E
L99F3:      jsr LBEAE
            lda #$00
            sta L0084
            lda L00AF
            cmp #$01
            bne L9A06
            jsr L9CE7
            jmp L9A1D
L9A06:      cmp #$03
            bne L9A10
            jsr L9CF9
            jmp L9A1D
L9A10:      cmp #$02
            bne L9A1A
            jsr L9DDE
            jmp L9A1D
L9A1A:      jsr L9D0B
L9A1D:      ldx #$07
L9A1F:      lda L0A50,X
            sta PCOLR0,X
            dex
            bpl L9A1F
L9A28:      jsr L9574
            jmp L9857
L9A2E:      lda #$04
            sta L1805
            jsr LA15E
            jsr LBEAE
            dec L180D
            dec L180D
            dec L180D
            lda #$05
            sta L1805
            jsr LBEAE
            inc L180D
            inc L180D
            inc L180D
            lda #$06
            sta L1805
            rts
L9A59:      lda L00A3
            sta L009C
L9A5D:      clc
            lda L009C
            asl
            bcs L9A6E
            adc #$D0
            sta L009E
            lda #$10
            adc #$00
            jmp L9A77
L9A6E:      clc
            adc #$D0
            sta L009E
            lda #$10
            adc #$01
L9A77:      sta L009F
            ldy #$00
            clc
            lda (L009E),Y
            adc L00A0
            sta L008B,Y
            iny
            lda (L009E),Y
            adc #$00
            sta L008B,Y
            ldy L00A1
            lda L00A5
            dey
            ora (L008B),Y
            sta (L008B),Y
            dey
            bmi L9AA6
            beq L9AA0
            lda L00A4
L9A9B:      sta (L008B),Y
            dey
            bne L9A9B
L9AA0:      lda L00A6
            ora (L008B),Y
            sta (L008B),Y
L9AA6:      lda L009C
            clc
            adc #$01
            sta L009C
            cmp L00A2
            bcc L9A5D
            beq L9A5D
            rts
L9AB4:      lda LA61C,Y
            sta L00A3
            lda LA63E,Y
            sta L00A2
            lda LA660,Y
            sta L00A1
            lda LA682,Y
            sta L00A0
            lda LA6A4,Y
            sta L00A5
            lda LA6C6,Y
            sta L00A6
            rts
L9AD3:      ldx L183B
            dex
            lda #$55
            sta L00A4
L9ADB:      ldy L07D0,X
            jsr L9AB4
            jsr L9B9A
            jsr L9A59
            dex
            bpl L9ADB
            lda L183D
            bmi L9B00
            ldx L183C
            dex
            ldy L07D0,X
            lda #$AA
            sta L00A4
            jsr L9AB4
            jsr L9A59
L9B00:      ldy #$0B
            lda #$01
            sta L0A00,Y
            ldy #$18
            sta L0A00,Y
            ldy #$29
            sta L0A00,Y
            ldy #$3A
            sta L0A00,Y
            rts
L9B17:      jsr L9B8F
            ldx #$07
L9B1C:      txa
            sta L07D0,X
            dex
            bpl L9B1C
            lda L00C0
            cmp #$55
            bcc L9B39
            sec
            sbc #$55
            sta L00A1
            lda #$9A
            sta L008B
            lda #$AE
            sta L008C
            jmp L9B43
L9B39:      sta L00A1
            lda #$00
            sta L008B
            lda #$AF
            sta L008C
L9B43:      lda #$08
            sta L009C
            sta L009D
            clc
            lda L00A1
            asl
            adc L00A1
            sta L00A0
            ldx #$03
L9B53:      ldy L00A0
            lda (L008B),Y
            ldy #$08
L9B59:      clc
            asl
            bcc L9B6E
            sty L009E
            sta L009F
            lda L009D
            ldy L009C
            sta L07D0,Y
            inc L009C
            ldy L009E
            lda L009F
L9B6E:      inc L009D
            dey
            bne L9B59
            inc L00A0
            dex
            bne L9B53
            lda L009C
            sta L183B
            lda L183D
            bmi L9B89
            ldy L009C
            sta L07D0,Y
            inc L009C
L9B89:      lda L009C
            sta L183C
            rts
L9B8F:      ldx #$43
            lda #$00
L9B93:      sta L0A00,X
            dex
            bpl L9B93
            rts
L9B9A:      lda LA6E8,Y
            stx L009C
            asl
            asl
            clc
            adc LA72C,Y
            tax
            lda #$01
            sta L0A00,X
            lda LA70A,Y
            bmi L9BBC
            asl
            asl
            clc
            adc LA74E,Y
            tax
            lda #$01
            sta L0A00,X
L9BBC:      ldx L009C
            rts
L9BBF:      lda LAE98
            sta L008B
            lda LAE99
            sta L008C
L9BC9:      ldy #$27
            lda #$00
L9BCD:      sta (L008B),Y
            dey
            bpl L9BCD
            clc
            lda L008B
            adc #$28
            sta L008B
            lda L008C
            adc #$00
            sta L008C
            cmp LABBD
            bcc L9BC9
            lda L008B
            cmp LABBC
            bcc L9BC9
            sec
            lda LABBE
            sbc L008B
            tay
            lda #$00
L9BF4:      sta (L008B),Y
            dey
            bpl L9BF4
            ldy #$00
            lda #$00
L9BFD:      sta L1400,Y
            iny
            cpy #$FF
            bcc L9BFD
            rts
L9C06:      jsr L82FD
            sty L009E
            lda L00D0
            beq L9C24
            cmp #$32
            bcc L9C17
            cmp #$CB
            bcc L9C1C
L9C17:      lda #$00
            jmp L9C1F
L9C1C:      clc
            adc L00A6
L9C1F:      sta HPOSP0
            sta L00D0
L9C24:      ldy #$06
L9C26:      lda L0B00,Y
            beq L9C46
            lda L0B07,Y
            beq L9C46
            cmp #$36
            bcc L9C38
            cmp #$C9
            bcc L9C3D
L9C38:      lda #$00
            jmp L9C40
L9C3D:      clc
            adc L00A6
L9C40:      sta L0B07,Y
            sta HPOSP1,Y
L9C46:      dey
            bpl L9C26
            ldy L009E
            rts
L9C4C:      lda #$29
            sta L00A7
            lda #$01
            sec
            sbc L009C
            sta L00A8
L9C57:      lda #$00
            sta L009D
            jsr L9C06
            dec L00A7
            beq L9CD7
            tya
            clc
            adc L009F
            tay
L9C67:      lda L0084
            beq L9C67
            lda LAE98
            clc
            adc L00A8
            sta L008D
            lda LAE99
            sta L008E
L9C78:      lda #$00
            sta (L008D),Y
            lda L009D
            cmp #$63
            bne L9C94
            clc
            lda LABBA
            adc L00A8
            sta L008D
            lda LABBB
            sta L008E
            inc L009D
            jmp L9C78
L9C94:      clc
            lda L008D
            adc #$28
            sta L008D
            lda L008E
            adc #$00
            sta L008E
            inc L009D
            lda L009D
            cmp #$B0
            bcc L9C78
            ldx #$04
            lda L1000,X
            clc
            adc L009F
            sta L1000,X
            ldx #$69
            sta L1000,X
            lda #$00
            sta L0084
            lda L009C
            beq L9CCC
            lda #$03
            adc RTCLOK+2
L9CC5:      cmp RTCLOK+2
            bne L9CC5
            jmp L9C57
L9CCC:      lda #$04
            adc RTCLOK+2
L9CD0:      cmp RTCLOK+2
            bne L9CD0
            jmp L9C57
L9CD7:      jsr L9BBF
            ldx #$04
            lda #$28
            sta L1000,X
            ldx #$69
            sta L1000,X
            rts
L9CE7:      lda #$00
            sta L009C
            lda #$FC
            sta L00A6
            ldy #$FF
            lda #$01
            sta L009F
            jsr L9C4C
            rts
L9CF9:      lda #$01
            sta L009C
            lda #$04
            sta L00A6
            ldy #$28
            lda #$FF
            sta L009F
            jsr L9C4C
            rts
L9D0B:      lda #$04
            sta L00A7
            lda #$68
            sta L00A8
            lda #$B5
            sta L00A9
            lda #$80
            sta L00AC
            lda #$FF
            sta L00A6
L9D1F:      lda L0084
            beq L9D1F
            lda L00A9
            cmp #$06
            bcs L9D2C
            jmp L9DCF
L9D2C:      jsr L9E9F
            lda L00A7
            clc
            adc #$02
            cmp L00A8
            bne L9D8B
            ldy L00A7
            dey
            ldx #$00
L9D3D:      lda LABFC,X
            sta L1000,Y
            iny
            inx
            cpx #$03
            bcc L9D3D
            lda #$0E
L9D4B:      sta L1000,Y
            iny
            inx
            cpx #$06
            bcc L9D4B
            ldy L00A9
            lda #$00
            ldx #$02
L9D5A:      sta L1000,Y
            dey
            dex
            bpl L9D5A
            lda L00A9
            sec
            sbc #$02
            sta L00A9
            ldy L00A7
            dey
            lda #$CE
            sta L1000,Y
            ldy #$BB
            ldx #$07
L9D74:      lda LA5A7,X
            sta L1000,Y
            dey
            dex
            bpl L9D74
            lda #$80
            iny
            sta L1000,Y
            lda #$00
            sta L00A8
            jmp L9DB9
L9D8B:      ldy L00A7
            lda L1000,Y
            clc
            adc #$28
            sta L1000,Y
            iny
            lda L1000,Y
            adc #$00
            sta L1000,Y
            ldy L00A8
            beq L9DB9
            dey
            sty L00A8
            ldx #$00
L9DA8:      lda LABFC,X
            sta L1000,Y
            iny
            inx
            cpx #$03
            bcc L9DA8
            lda #$0E
            sta L1000,Y
L9DB9:      ldy L00A9
            lda L00AC
            beq L9DC3
            lda #$00
            sta L00AC
L9DC3:      sta L1000,Y
            dec L00A9
            lda #$00
            sta L0084
            jmp L9D1F
L9DCF:      jsr L9BBF
            lda #$00
            sta L0084
L9DD6:      lda L0084
            beq L9DD6
            jsr L84A3
            rts
L9DDE:      lda #$03
            sta L00A7
            lda #$68
            sta L00A8
            lda #$B6
            sta L00A9
            lda #$00
            sta L00AC
            lda #$01
            sta L00A6
L9DF2:      lda L0084
            beq L9DF2
            jsr L9E9F
            lda L00A8
            clc
            adc #$03
            cmp L00A9
            bcc L9E28
            lda L00A9
            sec
            sbc #$03
            sta L00A9
            tay
            lda #$0E
            sta L1000,Y
            iny
            lda #$8E
            sta L1000,Y
            iny
            ldx #$01
L9E18:      lda LA5A7,X
            sta L1000,Y
            iny
            inx
            cpx #$08
            bcc L9E18
            lda #$00
            sta L00A8
L9E28:      lda L00A7
            clc
            adc #$02
            tay
            ldx #$02
L9E30:      lda L1000,Y
            iny
            sta L1000,Y
            dey
            dey
            dex
            bpl L9E30
            lda L00AC
            bne L9E52
            ldy L00A7
            lda #$80
            sta L1000,Y
            iny
            lda #$4E
            sta L1000,Y
            sta L00AC
            jmp L9E59
L9E52:      ldy L00A7
            lda #$00
            sta L1000,Y
L9E59:      inc L00A7
            lda L00A8
            beq L9E7C
            lda L00A8
            clc
            adc #$02
            tay
            ldx #$02
L9E67:      lda L1000,Y
            iny
            sta L1000,Y
            dey
            dey
            dex
            bpl L9E67
            ldy L00A8
            lda #$0E
            sta L1000,Y
            inc L00A8
L9E7C:      lda #$00
            sta L0084
            lda L00A7
            clc
            adc #$03
            cmp L00A9
            beq L9E94
            lda #$01
            adc RTCLOK+2
L9E8D:      cmp RTCLOK+2
            bne L9E8D
            jmp L9DF2
L9E94:      jsr L9BBF
L9E97:      lda L0084
            beq L9E97
            jsr L84A3
            rts
L9E9F:      jsr L82FD
            lda L00D1
            beq L9EC1
            sta L00E2
            cmp #$1E
            bcc L9EB0
            cmp #$C4
            bcc L9EB5
L9EB0:      lda #$00
            jmp L9EB8
L9EB5:      clc
            adc L00A6
L9EB8:      sta L00D1
            lda #$01
            sta L00E6
            jsr L8FCB
L9EC1:      ldy #$06
L9EC3:      lda L0B00,Y
            beq L9EE7
            lda L0B0E,Y
            beq L9EE7
            sta L009C
            cmp #$20
            bcc L9ED7
            cmp #$C5
            bcc L9EDC
L9ED7:      lda #$00
            jmp L9EDF
L9EDC:      clc
            adc L00A6
L9EDF:      sta L00A1
            sta L0B0E,Y
            jsr L9305
L9EE7:      dey
            bpl L9EC3
            rts
L9EEB:      ldy #$40
            lda #$8E
            sta L1000,Y
            ldy #$67
            sta L1000,Y
            lda #$0F
            sta L00D2
            sta L00D4
            lda #$43
            sta L00D0
            lda #$6D
            sta L00D3
            sta L00D5
            lda #$8D
            sta L00D1
            lda L181D
            sta PCOLR0
            jsr L8FB3
            lda #$6E
            sta L00C0
            jsr LA0FE
            jsr L9B17
            jsr L9AD3
            lda #$00
            sta L00C9
            jsr L8541
            ldx #$FF
            jsr LA16F
            lda L1832
            beq L9F54
            jsr L9678
            jsr L8349
            jsr LA16F
            lda #$03
            sta L00BC
            sta L00BD
            jsr L971B
            jsr L968A
            lda L183E
            beq L9F54
            lda #$00
            sta L183E
            sta L1832
L9F54:      jsr L87FA
            ldx #$00
            lda #$0C
            sta L0810,X
            lda #$00
            sta L0820,X
            sta L0830,X
            sta L0840,X
            lda #$01
            sta L0800,X
            sta L08F0,X
            sta L08E0,X
            lda #$80
            sta L08B0,X
            lda #$01
            sta L00C1
            lda #$6A
            sta L0860,X
            lda #$89
            sta L0850,X
            jsr L8349
            jsr L87B4
            lda #$04
            sta L00CE
            jsr L85CC
            jsr L8902
            rts
L9F98:      lda CONSOL
            ldx #$00
            stx LOMEM
            cmp #$06
            bne L9FA6
            jmp L86E0
L9FA6:      ldx L00C3
            beq L9FAD
            jmp L86D5
L9FAD:      cmp #$03
            bne L9FEA
            lda L1814
            eor #$01
            sta L009D
            beq L9FC1
            jsr LA15E
            lda #$03
            bne L9FCD
L9FC1:      lda #$00
            sta L009D
            lda #$01
            sta L1814
            jsr L9A2E
L9FCD:      sta L1805
            lda #$01
            sta L1814
            jsr LBEAE
            lda L009D
            sta L1814
            ldx #$10
L9FDF:      dex
            bpl L9FDF
            lda #$00
            sta L00ED
            sta CH
            rts
L9FEA:      cmp #$05
            bne LA00D
            ldx L1815
            beq L9FF8
            dec L1815
            bne LA012
L9FF8:      lda #$30
            sta L1815
            lda L00C2
            eor #$01
            sta L00C2
            lda #$01
            sta L0087
            ldx L1831
            jmp LA040
LA00D:      lda #$00
            sta L1815
LA012:      lda L00EE
            bne LA06A
            jsr LA18D
            lda #$00
            sta L00C6
            lda L00C8
            beq LA06A
            lda #$00
            sta L00C8
            sta L0087
            ldx L1831
            inx
            cpx #$0B
            bcc LA031
            ldx #$00
LA031:      stx L1831
            lda LA594,X
            sta L1857
            lda LABEF,X
            sta L1856
LA040:      jsr LA16F
            jsr L9678
            lda #$03
            sta L00BC
            sta L00BD
            jsr L971B
            jsr L968A
            lda #$00
            sta L00ED
            lda L0087
            bne LA093
            lda #$01
            sta L00C8
            sta L00C6
            sta L1833
            lda #$78
            sta L00EE
            jmp LA093
LA06A:      lda L1833
            beq LA093
            lda L00EE
            beq LA084
            dec L00EE
            lda L00EE
            cmp #$64
            bcs LA093
            lda #$00
            sta L00C8
            sta L00C6
            jmp LA093
LA084:      lda #$00
            sta L1833
            jsr L9574
            jsr L9F54
            lda #$02
            sta LOMEM
LA093:      lda L1832
            bne LA0A9
            lda L00ED
            cmp #$0F
            bcc LA0A9
            lda #$01
            sta L00C3
            jsr L84DF
            lda #$03
            sta LOMEM
LA0A9:      rts
LA0AA:      .byte $C0
LA0AB:      .byte $30
LA0AC:      .byte $0C
LA0AD:      .byte $03
LA0AE:      .byte $AA,$FF,$55,$AA
LA0B2:      plp
            ldy #$22
            ldy #$0A
            ldy #$2A
            .byte $80
            rol
            jsr L00A2
            lda L009D
            cmp #$4F
            bcc LA0CF
            inx
            cmp #$51
            bcc LA0CF
            inx
            cmp #$56
            bcc LA0CF
            inx
LA0CF:      lda LA0AE,X
            sta L00A4
            lda L009D
            asl
            bcs LA0E3
            adc #$D0
            sta L008D
            lda #$10
            adc #$00
            bne LA0EC
LA0E3:      clc
            adc #$D0
            sta L008D
            lda #$10
            adc #$01
LA0EC:      sta L008E
            ldy #$00
            lda (L008D),Y
            adc #$0B
            sta L008B
            iny
            lda (L008D),Y
            adc #$00
            sta L008C
            rts
LA0FE:      lda #$8D
            sta L00A0
            lda #$B0
            sta L00A1
            lda #$44
            sta L009D
LA10A:      jsr LA0BC
            ldy #$FF
LA10F:      iny
            tya
            asl
            sta L00A2
            ldx #$01
            lda (L00A0),Y
            sta L00A3
LA11A:      lda #$00
            asl L00A3
            bcc LA123
            ora LA0AA
LA123:      asl L00A3
            bcc LA12A
            ora LA0AB
LA12A:      asl L00A3
            bcc LA131
            ora LA0AC
LA131:      asl L00A3
            bcc LA138
            ora LA0AD
LA138:      ldy L00A2
            and L00A4
            sta (L008B),Y
            inc L00A2
            dex
            beq LA11A
            tya
            lsr
            tay
            cmp #$08
            bne LA10F
            lda L00A0
            clc
            adc #$09
            sta L00A0
            bcc LA155
            inc L00A1
LA155:      inc L009D
            lda L009D
            cmp #$6B
            bne LA10A
            rts
LA15E:      lda RANDOM
            and #$1F
            cmp #$08
            bcc LA15E
            cmp #$1E
            bcs LA15E
            sta L180D
            rts
LA16F:      inx
            txa
            cmp #$0A
            bcc LA178
            clc
            adc #$06
LA178:      sta L1859
            sta L185C
            lda #$00
            sta L185D
            sta L185E
            sta L185A
            sta L185B
            rts
LA18D:      lda L04F0
            cmp #$82
            beq LA199
            ldx RANDOM
            txs
            rts
LA199:      lda L00C6
            cmp L00C7
            beq LA1A5
            sta L00C7
            lda #$00
            sta ATRACT
LA1A5:      lda #$00
            sta L00C8
            ldx L00C9
            lda STRIG0,X
            bne LA1B8
            lda #$00
            sta ATRACT
            lda #$01
            sta L00C8
LA1B8:      ldy STICK0,X
            lda LA1C1,Y
            sta L00C6
            rts
LA1C1:      .byte $00,$00,$00,$00,$00,$07,$04,$01
            .byte $00,$08,$05,$02,$00,$06,$03,$00
LA1D1:      lda #$00
            ldx #$07
LA1D5:      sta AUDF1,X
            sta L0090,X
            dex
            bpl LA1D5
            rts
LA1DE:      lda L00C3
            beq LA1E5
            jmp LA31C
LA1E5:      lda L0097
            eor #$01
            sta L0097
            ldx L0090
            beq LA21B
            cpx #$08
            bne LA20D
            ldx #$01
            stx L0090
            inc L0095
            lda L0095
            cmp #$10
            bne LA20D
            lda #$00
            sta L0095
            sta L0090
            sta AUDF3
            sta AUDC3
            beq LA21B
LA20D:      txa
            clc
            adc #$19
            sta AUDF3
            lda #$AC
            sta AUDC3
            inc L0090
LA21B:      ldx L0092
            beq LA267
            ldy L0096
            cpx #$09
            bne LA243
            ldx #$01
            iny
            sty L0096
            cpy #$10
            bne LA243
            lda #$00
            sta L0096
            sta L0092
            sta AUDC1
            sta AUDC2
            sta AUDF1
            sta AUDF2
            jmp LA267
LA243:      lda LB2BD,X
            sta AUDF1
            tya
            lsr
            tay
            lda LB2C4,Y
            sta AUDC1
            sec
            sbc #$01
            sta AUDC2
            lda LB2CB,X
            sta AUDF2
            inx
            stx L0092
            lda #$00
            sta L0091
            beq LA29F
LA267:      ldx L0091
            beq LA29F
            lda L0097
            beq LA29F
            cpx #$27
            bne LA285
            lda #$00
            sta L0091
            sta AUDC1
            sta AUDC2
            sta AUDF1
            sta AUDF2
            beq LA2C9
LA285:      lda LB221,X
            sta AUDF1
            lda LB249,X
            sta AUDC1
            lda LB26F,X
            sta AUDF2
            lda LB297,X
            sta AUDC2
            inc L0091
LA29F:      ldx L0093
            beq LA2C9
            lda L0097
            beq LA2C9
            inc L0093
            cpx #$1C
            bne LA2BB
            lda #$00
            sta L0093
            lda #$00
            sta AUDC4
            sta AUDF4
            beq LA2C9
LA2BB:      lda LB1EB,X
            sta AUDF4
            lda LB206,X
            ora #$C0
            sta AUDC4
LA2C9:      lda L0090
            bne LA2F5
            lda L0097
            beq LA2F5
            ldx L0094
            beq LA2F5
            inc L0094
            cpx #$1C
            bne LA2E7
            lda #$00
            sta L0094
            sta AUDC3
            sta AUDF3
            beq LA31C
LA2E7:      lda LB1EB,X
            sta AUDF3
            lda LB206,X
            ora #$20
            sta AUDC3
LA2F5:      lda L0097
            beq LA31C
            ldx L184F
            beq LA31C
            lda LA322,X
            sta AUDF3
            lda #$A8
            sta AUDC3
            inx
            stx L184F
            cpx #$0A
            bne LA31C
            lda #$00
            sta AUDF3
            sta AUDC3
            sta L184F
LA31C:      pla
            tay
            pla
            tax
            pla
            rti
LA322:      .byte $F3,$E6,$D9,$CC,$C1,$B6,$AD,$A2
LA32A:      .byte $99,$36,$42,$66,$1A,$00,$84,$0C
            .byte $D8,$1A,$36,$0C,$D8,$66,$1A,$0C
            .byte $0C,$66,$0C,$1A,$1A
LA33F:      .byte $66,$26,$26,$47,$EA,$00,$74,$0C
            .byte $CA,$EA,$26,$0C,$CA,$47,$EA,$0C
            .byte $0C,$47,$0C,$EA,$EA,$47,$0A,$20
            .byte $88,$F6,$7C,$98,$48,$56,$34,$43
            .byte $44,$64,$67,$77,$67,$66,$55,$66
            .byte $07,$20,$A9,$C6,$8F,$89,$58,$46
            .byte $64,$44,$95,$66,$87,$56,$55,$55
            .byte $55,$66,$09,$20,$7B,$C8,$89,$66
            .byte $75,$45,$66,$56,$78,$68,$65,$56
            .byte $54,$55,$55,$66,$09,$20,$77,$A8
            .byte $CB,$CD,$BA,$8A,$78,$56,$45,$33
            .byte $44,$44,$54,$55,$55,$66,$05,$20
            .byte $76,$98,$BA,$DC,$DD,$BB,$9A,$78
            .byte $56,$44,$33,$33,$44,$55,$55,$66
            .byte $45,$20,$66,$66,$76,$77,$77,$77
            .byte $67,$66,$56,$55,$55,$55,$55,$55
            .byte $55,$55,$88,$26,$82,$4F,$02,$50
            .byte $66,$53,$47,$65,$67,$63,$47,$65
            .byte $45,$75,$44,$66,$45,$67,$55,$65
            .byte $55,$57,$65,$46,$66,$65,$65,$45
            .byte $47,$75,$65,$55,$57,$65,$56,$65
            .byte $56,$65,$55,$56,$55,$65,$55,$56
            .byte $82,$36,$43,$20,$97,$99,$CA,$DE
            .byte $DC,$DE,$8B,$67,$14,$00,$00,$10
            .byte $32,$44,$55,$55,$08,$20,$68,$A6
            .byte $DC,$A9,$9C,$79,$46,$43,$22,$32
            .byte $44,$55,$55,$55,$55,$66,$0A,$20
            .byte $F9,$CB,$6B,$78,$37,$41,$33,$32
            .byte $55,$67,$45,$65,$55,$65,$66,$66
            .byte $12,$20,$B7,$FB,$DB,$79,$58,$25
            .byte $33,$52,$64,$65,$57,$45,$55,$55
            .byte $66,$66,$07,$20,$B9,$AB,$AA,$A8
            .byte $57,$45,$25,$43,$53,$54,$55,$55
            .byte $55,$65,$66,$66,$43,$20,$96,$77
            .byte $9B,$D8,$7E,$B8,$58,$66,$32,$35
            .byte $42,$34,$54,$54,$55,$55,$44,$20
            .byte $76,$A8,$AA,$BB,$CB,$9B,$89,$56
            .byte $44,$34,$23,$31,$33,$55,$55,$55
            .byte $08,$20,$B6,$AA,$B9,$99,$5B,$55
            .byte $35,$42,$43,$55,$55,$45,$55,$55
            .byte $66,$66,$07,$20,$8A,$D6,$FF,$AD
            .byte $47,$35,$01,$42,$64,$98,$89,$57
            .byte $55,$55,$55,$66,$07,$20,$FF,$AB
            .byte $CA,$37,$02,$42,$45,$E5,$CE,$69
            .byte $56,$45,$44,$55,$65,$66,$0F,$20
            .byte $F8,$8F,$A9,$5B,$23,$31,$63,$54
            .byte $DC,$7C,$66,$55,$44,$54,$55,$66
            .byte $11,$20,$FD,$9B,$BA,$38,$12,$22
            .byte $54,$95,$CA,$79,$56,$45,$55,$55
            .byte $66,$66,$06,$20,$DE,$88,$BA,$36
            .byte $43,$44,$55,$76,$99,$66,$66,$55
            .byte $55,$55,$65,$66,$48,$20,$65,$87
            .byte $99,$99,$89,$66,$66,$55,$55,$45
            .byte $44,$44,$54,$55,$55,$55,$FF,$07
            .byte $23,$11,$43,$98,$55,$54,$76,$35
            .byte $63,$A8,$58,$44,$65,$67,$65,$66
            .byte $66,$66,$06,$05,$23,$03,$30,$A7
            .byte $8F,$34,$32,$54,$54,$98,$8A,$23
            .byte $43,$86,$67,$66,$66,$66,$06,$0B
            .byte $23,$00,$41,$FB,$7A,$33,$43,$35
            .byte $64,$C9,$6A,$33,$54,$77,$66,$66
            .byte $66,$66,$06,$0D,$23,$00,$42,$FB
            .byte $79,$44,$44,$24,$64,$BA,$69,$33
            .byte $64,$67,$66,$66,$66,$66,$06,$0C
            .byte $23,$01,$31,$D7,$78,$55,$45,$24
            .byte $53,$B8,$79,$44,$55,$66,$66,$66
            .byte $66,$66,$06,$08,$23,$10,$53,$9B
            .byte $67,$66,$45,$22,$74,$9A,$57,$54
            .byte $65,$66,$66,$66,$66,$66,$06,$05
            .byte $23,$35,$32,$75,$79,$45,$44,$44
            .byte $54,$97,$67,$55,$65,$66,$66,$66
            .byte $66,$66,$06,$46,$23,$45,$44,$33
            .byte $33,$54,$55,$44,$54,$66,$77,$77
            .byte $66,$66,$66,$66,$55,$55,$05,$FF
LA58F:      .byte $0A,$06,$00,$00,$00
LA594:      .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $01,$01,$01,$01
LA5A0:      .byte $01,$70,$70,$70,$CE,$28
LA5A6:      .byte $20
LA5A7:      .byte $8E,$44,$58,$3C,$84,$41
LA5AD:      .byte $00
LA5AE:      .byte $10,$01,$68,$01,$68,$01,$68,$01
            .byte $E0,$02,$58,$02,$D0,$03,$48,$03
            .byte $C0,$04,$38,$04,$B0,$05,$28,$06
            .byte $06,$7C,$5C,$D6,$FE,$82,$7C,$09
            .byte $06,$38,$7C,$D6,$D6,$FE,$BA,$C6
            .byte $7C,$38
LA5D8:      .byte $00,$00,$96,$96,$00,$5A,$00,$5A
            .byte $1E,$3C,$5A,$78,$00,$1E,$3C,$5A
            .byte $78,$1E,$3C,$5A,$78,$00,$1E,$3C
            .byte $5A,$78,$1E,$3C,$5A,$78,$3F,$00
            .byte $3F,$97
LA5FA:      .byte $02,$02,$98,$98,$3E,$98,$3E,$98
            .byte $20,$3E,$5C,$7A,$20,$3E,$5C,$7A
            .byte $98,$20,$3E,$5C,$7A,$20,$3E,$5C
            .byte $7A,$98,$20,$3E,$5C,$7A,$5A,$01
            .byte $5A,$98
LA61C:      .byte $00,$72,$00,$72,$00,$00,$AB,$AB
            .byte $04,$04,$04,$04,$39,$39,$39,$39
            .byte $39,$39,$39,$39,$39,$72,$72,$72
            .byte $72,$72,$72,$72,$72,$72,$00,$3D
            .byte $AC,$3D
LA63E:      .byte $3C,$AE,$3C,$AE,$03,$03,$AE,$AE
            .byte $3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C
            .byte $3C,$75,$75,$75,$75,$75,$75,$75
            .byte $75,$75,$AA,$AA,$AA,$AA,$02,$71
            .byte $AE,$71
LA660:      .byte $01,$01,$02,$02,$10,$11,$10,$11
            .byte $02,$01,$02,$01,$09,$09,$09,$09
            .byte $09,$02,$01,$02,$01,$09,$09,$09
            .byte $09,$09,$02,$01,$02,$01,$08,$01
            .byte $08,$02
LA682:      .byte $00,$00,$25,$25,$00,$16,$00,$16
            .byte $07,$0F,$16,$1E,$00,$07,$0F,$16
            .byte $1E,$07,$0F,$16,$1E,$00,$07,$0F
            .byte $16,$1E,$07,$0F,$16,$1E,$0F,$00
            .byte $0F,$25
LA6A4:      .byte $54,$54,$40,$40,$54,$40,$54,$40
            .byte $40,$54,$40,$54,$40,$54,$40,$54
            .byte $40,$40,$54,$40,$54,$40,$54,$40
            .byte $54,$40,$40,$54,$40,$54,$A0,$A0
            .byte $A0,$80
LA6C6:      .byte $00,$00,$05,$05,$55,$05,$55,$05
            .byte $05,$00,$05,$00,$55,$05,$55,$05
            .byte $55,$05,$00,$05,$00,$55,$05,$55
            .byte $05,$55,$05,$00,$05,$00,$02,$00
            .byte $02,$02
LA6E8:      .byte $00,$04,$0C,$10,$00,$07,$04,$0B
            .byte $00,$01,$06,$07,$00,$01,$06,$07
            .byte $0C,$02,$03,$08,$09,$02,$03,$08
            .byte $09,$0E,$04,$05,$0A,$0B,$06,$02
            .byte $0A,$0E
LA70A:      .byte $80,$80,$80,$80,$01,$0C,$05,$10
            .byte $01,$06,$07,$0C,$02,$03,$08,$09
            .byte $0E,$03,$08,$09,$0E,$04,$05,$0A
            .byte $0B,$10,$05,$0A,$0B,$10,$80,$80
            .byte $80,$80
LA72C:      .byte $03,$03,$02,$02,$00,$00,$01,$01
            .byte $02,$02,$02,$02,$01,$01,$01,$01
            .byte $01,$02,$02,$02,$02,$01,$01,$01
            .byte $01,$01,$02,$02,$02,$02,$00,$03
            .byte $01,$02
LA74E:      .byte $80,$80,$80,$80,$00,$00,$01,$01
            .byte $03,$03,$03,$03,$00,$00,$00,$00
            .byte $00,$03,$03,$03,$03,$00,$00,$00
            .byte $00,$00,$03,$03,$03,$03,$80,$80
            .byte $80,$80
LA770:      .byte $01,$1F,$01,$1F,$01,$1F,$3D,$5B
            .byte $3D,$5B,$3D,$5B,$79,$C8,$79,$C8
            .byte $79
LA781:      .byte $1F,$3D,$1F,$3D,$1F,$3D,$5B,$79
            .byte $5B,$79,$5B,$79,$97,$C8,$97,$C8
            .byte $97
LA792:      .byte $02,$02,$3B,$3B,$74,$74,$02,$02
            .byte $3B,$3B,$74,$74,$02,$C8,$3B,$C8
            .byte $74
LA7A3:      .byte $3B,$3B,$74,$74,$AD,$AD,$3B,$3B
            .byte $74,$74,$AD,$AD,$3B,$C8,$74,$C8
            .byte $AD
LA7B4:      .byte $01,$01,$01,$05,$05,$05,$05,$05
            .byte $05,$03,$02,$02,$05,$05,$0A,$0A
            .byte $0A,$0A
LA7C6:      .byte $00,$01,$02,$03,$08,$0D,$12,$17
            .byte $1C,$21,$24,$26,$28,$2D,$32,$3C
            .byte $46,$50
LA7D8:      .byte $00,$01,$FF,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$01,$01,$01
            .byte $01,$01,$01,$01,$01,$01,$01,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FE,$00,$FF,$01,$02,$FF,$FE
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$01,$02,$01,$02,$01,$02
            .byte $01,$02,$01,$02,$01,$02,$01,$02
            .byte $01,$02,$01,$02,$01,$02,$FF,$FE
            .byte $FF,$FE,$FF,$FE,$FF,$FE,$FF,$FE
            .byte $FF,$FE,$FF,$FE,$FF,$FE,$FF,$FE
            .byte $FF,$FE
LA832:      .byte $00,$06,$05,$04,$0A,$09,$03,$08
            .byte $07
LA83B:      .byte $00,$02,$01,$02,$02,$01,$02,$02
            .byte $01
LA844:      .byte $00,$01,$02,$03,$05,$07,$04,$06
            .byte $08,$05,$03,$04,$02,$00,$01,$08
            .byte $06,$07
LA856:      .byte $0D,$0F,$0E,$0D,$0C,$0E,$0D,$10
            .byte $0E
LA85F:      .byte $07,$03,$05,$02,$00,$01,$08,$04
            .byte $06
LA868:      .byte $01,$04,$04,$01,$01,$01,$01,$01
            .byte $01,$01,$01,$04,$06,$02,$02,$04
            .byte $04,$03
LA87A:      .byte $00,$0A,$0B,$0C,$0E,$10,$0D,$0F
            .byte $11
LA883:      .byte $00,$07,$FF,$06,$07,$FF,$06,$07
            .byte $FF
LA88C:      .byte $00,$03,$03,$FF,$00,$00,$07,$06
            .byte $06
LA895:      .byte $00,$07,$FE,$06,$07,$FE,$06,$07
            .byte $FE
LA89E:      .byte $00,$05,$05,$00,$03,$03,$07,$06
            .byte $06
LA8A7:      .byte $00,$8B,$8B,$92,$8E,$9F,$92,$9F
            .byte $8E
LA8B0:      .byte $00,$AE,$AE,$AE,$AE,$AA,$AE,$AA
            .byte $AE
LA8B9:      .byte $74,$36,$1A,$66,$1A,$8C,$66,$D8
LA8C1:      .byte $C0,$C0,$C0,$03,$0C,$30,$C0
LA8C8:      .byte $01,$00,$01,$00,$01,$01,$00,$01
LA8D0:      .byte $29,$2A,$2B,$2C,$2D,$00
LA8D6:      .byte $2E,$2F,$30,$31,$32,$00
LA8DC:      .byte $00,$01,$02,$03,$04,$05,$01,$02
            .byte $03,$04,$05,$05,$05
LA8E9:      .byte $02,$02,$02,$02,$02,$02,$01,$01
            .byte $01,$01,$01,$01,$01,$21,$9D,$30
            .byte $CD,$FF,$D1,$D8,$21,$B3,$30,$0E
            .byte $01,$0E,$01,$05,$18,$18,$00,$3C
            .byte $5C,$5C,$3E,$18,$18,$1C,$14,$74
            .byte $44,$06,$0E,$01,$0E,$00,$07,$00
            .byte $18,$18,$00,$3C,$5A,$99,$1A,$18
            .byte $28,$47,$41,$40,$C0,$0E,$01,$0E
            .byte $00,$07,$00,$18,$18,$00,$3C,$5A
            .byte $99,$58,$18,$14,$E2,$82,$02,$03
            .byte $0E,$01,$0E,$02,$04,$18,$18,$00
            .byte $3C,$3A,$3A,$3A,$18,$18,$18,$18
            .byte $18,$18,$1C,$0E,$01,$0E,$02,$04
            .byte $18,$1A,$02,$3C,$38,$38,$38,$18
            .byte $18,$18,$18,$18,$18,$38,$0E,$01
            .byte $0E,$01,$03,$18,$18,$00,$78,$18
            .byte $18,$18,$18,$18,$18,$18,$18,$18
            .byte $38,$0E,$01,$0E,$03,$03,$18,$18
            .byte $00,$1E,$18,$18,$18,$18,$18,$18
            .byte $18,$18,$18,$1C,$0C,$02,$18,$00
            .byte $06,$0A,$80,$2A,$A0,$AA,$A8,$8A
            .byte $88,$8A,$88,$8A,$88,$0A,$80,$08
            .byte $80,$08,$80,$28,$80,$00,$80,$00
            .byte $A0
LA9A2:      .byte $00,$00,$00,$FF,$FE,$FE,$FF,$FE
            .byte $01,$02,$02,$01,$02,$FF,$FE,$FE
            .byte $FF,$FE,$01,$02,$02,$01,$02,$FF
            .byte $FE,$FE,$FF,$FE,$01,$02,$02,$01
            .byte $02,$00,$FF,$FE,$00,$00,$00,$00
            .byte $FE,$FD,$FE,$FE,$FD,$02,$03,$02
            .byte $02,$03,$FE,$FD,$FE,$FD,$FE,$FD
            .byte $FE,$FD,$FE,$FE,$02,$03,$02,$03
            .byte $02,$03,$02,$03,$02,$02,$FE,$FD
            .byte $FE,$FD,$FE,$FD,$FE,$FD,$FE,$FE
            .byte $02,$03,$02,$03,$02,$03,$02,$03
            .byte $02,$02,$2D,$2A,$4B,$30,$0E,$01
            .byte $0E,$03,$03,$18,$18,$00,$18,$1C
            .byte $1A,$18,$18,$18,$18,$18,$18,$18
            .byte $1C,$0E,$01,$0E,$03,$03,$18,$18
            .byte $02,$1C,$18,$18,$18,$18,$18,$18
            .byte $18,$18,$18,$1C,$0E,$01,$0E,$01
            .byte $03,$18,$18,$40,$38,$18,$18,$18
            .byte $18,$18,$18,$18,$18,$18,$38,$0E
            .byte $01,$0E,$01,$04,$18,$18,$00,$3C
            .byte $3C,$5C,$1C,$18,$18,$18,$18,$18
            .byte $18,$38,$10,$01,$10,$00,$07,$3C
            .byte $3C,$3C,$7E,$FF,$FF,$FF,$FF,$FF
            .byte $7E,$3C,$3C,$3C,$3C,$7E,$7E,$10
            .byte $01,$10,$00,$07,$3C,$24,$24,$66
            .byte $C3,$81,$81,$81,$C3,$66,$24,$24
            .byte $24,$24,$42,$7E,$0F,$01,$0F,$01
            .byte $05,$00,$18,$18,$00,$3C,$5A,$5A
            .byte $5A,$18,$18,$18,$18,$18,$18,$3C
            .byte $10,$01,$10,$00,$07,$3C,$24,$24
            .byte $7E,$C3,$A5,$A5,$A5,$E7,$66,$24
            .byte $24,$24,$24,$42,$7E,$02,$01,$AA
            .byte $55,$11
LAAA4:      .byte $0B,$02,$16,$00,$06,$0A,$80,$2A
            .byte $A0,$AA,$A8,$8A,$88,$8A,$88,$8A
            .byte $88,$0A,$80,$08,$80,$08,$80,$08
            .byte $80,$28,$A0,$A0,$2F,$C7,$2F,$0E
            .byte $01,$0E,$01,$06,$18,$18,$00,$1C
            .byte $1E,$38,$18,$18,$38,$7C,$0C,$08
            .byte $08,$18,$0E,$01,$0E,$01,$06,$18
            .byte $18,$00,$38,$78,$1C,$18,$18,$1C
            .byte $3E,$30,$10,$10,$18,$0E,$01,$0E
            .byte $01,$05,$18,$18,$00,$3C,$3A,$3A
            .byte $7C,$18,$18,$38,$28,$2E,$22,$60
            .byte $2A,$FC,$2E,$11,$0B,$02,$16,$00
            .byte $06,$0A,$80,$2A,$00,$AA,$A8,$8A
            .byte $88,$8A,$88,$8A,$88,$0A,$80,$02
            .byte $00,$02,$00,$02,$00,$02,$80,$44
            .byte $0F,$03,$2D,$00,$0B,$00,$20,$00
            .byte $00,$02,$00,$08,$00,$20,$00,$28
            .byte $00,$00,$00,$88,$82,$00,$02,$00
            .byte $00,$00,$22,$00,$02,$00,$80,$80
            .byte $20,$2A,$00,$20,$00,$08,$08,$00
            .byte $02,$00,$00,$00,$82,$00,$20,$02
            .byte $80,$28,$0C,$02,$18,$00,$06,$0A
            .byte $80,$2A,$A0,$AA,$A8,$8A,$88,$8A
            .byte $88,$8A,$88,$0A,$80,$08,$80,$08
            .byte $80,$08,$A0,$08,$00,$28,$00,$0C
            .byte $03,$24,$00,$0A,$00,$A8,$00,$02
            .byte $8A,$00,$20,$88,$20,$08,$00,$80
            .byte $20,$88,$20,$82,$88,$08,$00,$82
            .byte $00,$00,$A8,$00,$00,$88,$00,$02
            .byte $02,$00,$00,$88,$00,$02,$8A,$00
            .byte $0B,$03,$21,$00,$0A,$00,$A8,$00
            .byte $02,$AA,$00,$0A,$AA,$80,$20,$A8
            .byte $20,$80,$A0,$08,$00,$88,$00,$00
            .byte $A8,$00,$00,$88,$00,$00,$88,$00
            .byte $00,$88,$00,$02,$8A,$00
LABBA:      .byte $28
LABBB:      .byte $30
LABBC:      .byte $08
LABBD:      .byte $3C
LABBE:      .byte $2F,$3C,$58,$3C,$60,$2E,$C0,$F0
            .byte $FC
LABC7:      .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $39,$3A,$00,$00,$00,$00,$00,$00
            .byte $39,$3B,$3C,$00,$00,$00,$00,$00
            .byte $39,$3B,$3C,$39,$3A,$00,$00,$00
            .byte $39,$3B,$3C,$39,$3D,$3E,$00,$00
LABEF:      .byte $00,$03,$15,$30,$45,$60,$75,$90
            .byte $05,$20,$35,$50
LABFB:      .byte $65
LABFC:      .byte $4E,$28,$30,$AF,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$0C,$33,$00,$00,$00,$00
            .byte $00,$00,$0C,$3C,$00,$00,$00,$00
            .byte $00,$00,$3C,$03,$00,$00,$00,$00
            .byte $00,$00,$3C,$03,$00,$00,$00,$00
            .byte $00,$00,$30,$30,$00,$00,$00,$00
            .byte $00,$00,$3F,$30,$00,$00,$00,$00
            .byte $00,$00,$0F,$30,$00,$00,$00,$00
            .byte $00,$00,$3F,$03,$00,$00,$00,$00
            .byte $00,$00,$0C,$33,$00,$00,$00,$00
            .byte $00,$00,$0C,$33,$33,$33,$33,$33
            .byte $33,$33,$33,$0C,$0C,$0C,$0C,$0C
            .byte $0C,$0C,$0C,$3F,$03,$03,$0C,$30
            .byte $30,$30,$30,$3F,$03,$03,$3C,$03
            .byte $03,$03,$03,$3C,$33,$33,$3F,$03
            .byte $03,$03,$03,$03,$30,$30,$3C,$03
            .byte $03,$03,$03,$3C,$30,$30,$3C,$33
            .byte $33,$33,$33,$0C,$03,$03,$03,$03
            .byte $03,$03,$03,$03,$33,$33,$0C,$33
            .byte $33,$33,$33,$0C,$33,$33,$0F,$03
            .byte $03,$03,$03,$3C,$00,$00,$00,$00
            .byte $00,$00,$04,$11,$00,$00,$00,$00
            .byte $00,$00,$04,$14,$00,$00,$00,$00
            .byte $00,$00,$14,$01,$00,$00,$00,$00
            .byte $00,$00,$14,$01,$00,$00,$00,$00
            .byte $00,$00,$10,$10,$00,$00,$00,$00
            .byte $00,$00,$15,$10,$00,$00,$00,$00
            .byte $00,$00,$05,$10,$00,$00,$00,$00
            .byte $00,$00,$15,$01,$00,$00,$00,$00
            .byte $00,$00,$04,$11,$00,$00,$00,$00
            .byte $00,$00,$04,$11,$11,$11,$11,$11
            .byte $11,$11,$11,$04,$04,$04,$04,$04
            .byte $04,$04,$04,$15,$01,$01,$04,$10
            .byte $10,$10,$10,$15,$01,$01,$14,$01
            .byte $01,$01,$01,$14,$11,$11,$15,$01
            .byte $01,$01,$01,$01,$10,$10,$14,$01
            .byte $01,$01,$01,$14,$10,$10,$14,$11
            .byte $11,$11,$11,$04,$01,$01,$01,$01
            .byte $01,$01,$01,$01,$11,$11,$04,$11
            .byte $11,$11,$11,$04,$11,$11,$05,$01
            .byte $01,$01,$01,$14,$00,$00,$00,$00
            .byte $00,$00,$50,$44,$00,$00,$00,$00
            .byte $00,$00,$10,$44,$00,$00,$00,$00
            .byte $00,$00,$41,$51,$00,$00,$00,$00
            .byte $00,$00,$11,$11,$00,$00,$00,$00
            .byte $00,$00,$04,$11,$44,$44,$50,$44
            .byte $44,$44,$44,$50,$44,$44,$44,$44
            .byte $44,$44,$44,$10,$51,$45,$45,$41
            .byte $41,$41,$41,$41,$11,$11,$11,$11
            .byte $11,$11,$11,$04,$10,$10,$04,$01
            .byte $01,$01,$11,$04,$00,$00,$00,$00
            .byte $00,$00,$0C,$0C,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$C0,$C0,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$40,$40,$00,$3F,$CC,$0C
            .byte $0C,$0C,$33,$C0,$00,$00,$C0,$00
            .byte $00,$00,$00,$C0,$00,$03,$CC,$00
            .byte $00,$00,$03,$CC,$00,$F0,$CC,$C0
            .byte $C0,$C0,$30,$0C,$00,$01,$C4,$00
            .byte $00,$00,$01,$C4,$00,$50,$44,$40
            .byte $40,$40,$10,$04,$74,$65,$20,$20
            .byte $00,$20,$20,$74,$0C,$02,$18,$00
            .byte $06,$0A,$80,$28,$A0,$AA,$A8,$8A
            .byte $88,$8A,$88,$8A,$88,$0A,$80,$08
            .byte $80,$08,$80,$28,$80,$00,$80,$00
            .byte $A0,$0B,$02,$16,$00,$06,$0A,$80
            .byte $02,$A0,$AA,$A8,$8A,$88,$8A,$88
            .byte $8A,$88,$0A,$80,$02,$00,$02,$00
            .byte $02,$00,$0A,$00,$0B,$02,$16,$00
            .byte $06,$0A,$80,$02,$A0,$AA,$A8,$8A
            .byte $88,$8A,$88,$8A,$88,$0A,$80,$08
            .byte $80,$08,$80,$08,$80,$22,$80,$0B
            .byte $02,$16,$00,$06,$0A,$80,$2A,$00
            .byte $AA,$A8,$8A,$88,$8A,$88,$8A,$88
            .byte $0A,$80,$08,$80,$08,$80,$08,$80
            .byte $0A,$20,$0C,$02,$18,$00,$06,$0A
            .byte $80,$28,$A0,$AA,$A8,$8A,$88,$8A
            .byte $88,$8A,$88,$0A,$80,$08,$80,$08
            .byte $80,$08,$A0,$08,$00,$28,$00,$01
            .byte $01,$FF,$02,$01,$55,$AA,$04,$00
            .byte $AA,$AA,$AA,$AA
LAE98:      .byte $28
LAE99:      .byte $20,$E1,$23,$80,$20,$68,$28,$07
            .byte $29,$A0,$05,$59,$04,$59,$05,$80
            .byte $01,$F1,$80,$04,$1D,$80,$54,$13
            .byte $48,$25,$21,$A0,$24,$49,$0C,$56
            .byte $13,$40,$91,$2B,$10,$0E,$D1,$04
            .byte $59,$06,$80,$F0,$0B,$10,$A2,$80
            .byte $78,$86,$49,$90,$D2,$04,$94,$D1
            .byte $01,$E0,$C1,$81,$A4,$80,$7A,$48
            .byte $92,$1F,$00,$60,$C2,$0C,$20,$7A
            .byte $A0,$83,$30,$A0,$92,$01,$24,$00
            .byte $00,$00,$0F,$01,$0F,$01,$05,$18
            .byte $18,$00,$3C,$5A,$5A,$5A,$18,$18
            .byte $18,$18,$18,$18,$1C,$10,$00,$05
            .byte $2D,$00,$50,$52,$80,$45,$70,$80
            .byte $04,$D7,$40,$56,$13,$40,$28,$2E
            .byte $88,$20,$69,$40,$60,$D9,$20,$05
            .byte $53,$80,$00,$7D,$04,$41,$C9,$28
            .byte $41,$C0,$98,$0D,$0A,$58,$16,$30
            .byte $24,$93,$01,$B0,$03,$69,$80,$03
            .byte $C5,$0C,$51,$43,$80,$70,$51,$60
            .byte $04,$3A,$88,$04,$D7,$40,$05,$70
            .byte $80,$E1,$22,$88,$B4,$25,$04,$49
            .byte $30,$A0,$82,$86,$80,$50,$50,$14
            .byte $07,$49,$04,$07,$02,$A4,$10,$7C
            .byte $90,$23,$42,$1C,$60,$49,$90,$16
            .byte $2C,$18,$65,$60,$80,$28,$AC,$08
            .byte $0E,$2B,$40,$E0,$94,$90,$10,$7C
            .byte $90,$07,$50,$50,$E1,$22,$80,$03
            .byte $E0,$A0,$92,$1F,$00,$14,$15,$C0
            .byte $04,$B9,$20,$78,$05,$88,$29,$2B
            .byte $00,$0A,$0A,$68,$5A,$52,$40,$09
            .byte $26,$84,$A0,$A0,$68,$82,$E9,$00
            .byte $C1,$2C,$48,$0A,$1B,$40,$1C,$52
            .byte $80,$A1,$36,$04,$00,$7D,$04,$2A
            .byte $0B,$C0,$1E,$01,$A8,$C2,$C3,$04
            .byte $83,$0E,$48,$95,$0B,$00,$81,$32
            .byte $A4,$07,$12,$50,$46,$80,$B0,$15
            .byte $71,$04,$05,$05,$40,$06,$0D,$08
            .byte $56,$03,$40,$86,$49,$90,$40,$5C
            .byte $50,$03,$4B,$10,$A2,$BC,$00,$E0
            .byte $2A,$84,$B0,$20,$A8,$82,$E9,$00
            .byte $C2,$2C,$48,$11,$72,$90,$70,$41
            .byte $14,$02,$E4,$98,$49,$C9,$00,$83
            .byte $0B,$48,$1D,$41,$80,$09,$AD,$08
            .byte $44,$1A,$90,$92,$70,$04,$00
LB000:      .byte $3B,$70,$07,$50,$0D,$57,$02,$D8
            .byte $CA,$BE,$70,$8A,$50,$90,$57,$0E
            .byte $66,$47,$3F,$0F,$03,$EB,$AE,$C3
            .byte $AA,$E9,$AA,$13,$A9,$E9,$AA,$D6
            .byte $AA,$00,$A9,$26,$A9,$00,$A9,$39
            .byte $A9,$4C,$A9,$5F,$A9,$72,$A9,$39
            .byte $AA,$00,$AA,$26,$AA,$13,$AA,$76
            .byte $AA,$8A,$AA,$4C,$AA,$61,$AA,$70
            .byte $0A,$8B,$0A,$A6,$0A,$A4,$AA,$C1
            .byte $0A,$DC,$0A,$1D,$AE,$38,$AE,$00
            .byte $AB,$53,$AE,$4E,$AB,$A4,$AA,$85
            .byte $A9,$A4,$AA,$6E,$AE,$70,$0A,$00
            .byte $AE,$70,$0A,$94,$AB,$6B,$AB,$1C
            .byte $AB
LB069:      .byte $15,$B0,$17,$B0,$1F,$B0,$27,$B0
            .byte $29,$B0,$2B,$B0,$2D,$B0,$2F,$B0
            .byte $31,$B0,$33,$B0,$35,$B0,$37,$B0
            .byte $3F,$B0,$4B,$B0,$4F,$B0,$53,$B0
            .byte $5B,$B0,$63,$B0,$03,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$F8,$00,$07,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FC,$00,$0C,$00
            .byte $00,$00,$00,$00,$00,$06,$00,$18
            .byte $00,$00,$00,$00,$00,$00,$03,$00
            .byte $30,$00,$00,$00,$00,$00,$00,$01
            .byte $80,$23,$FC,$FF,$F1,$FB,$FF,$C8
            .byte $78,$80,$67,$FE,$FF,$FB,$FB,$FF
            .byte $E8,$7C,$C0,$44,$02,$80,$08,$0A
            .byte $00,$28,$84,$40,$4C,$82,$81,$08
            .byte $12,$04,$28,$86,$60,$88,$84,$81
            .byte $10,$12,$04,$49,$03,$20,$98,$88
            .byte $81,$20,$22,$04,$89,$03,$20,$90
            .byte $90,$F9,$40,$23,$E5,$0A,$01,$20
            .byte $90,$90,$F1,$40,$43,$C5,$0A,$01
            .byte $20,$90,$88,$81,$40,$42,$05,$09
            .byte $01,$20,$90,$84,$81,$20,$82,$04
            .byte $89,$01,$20,$90,$82,$81,$20,$82
            .byte $04,$88,$81,$20,$90,$82,$81,$11
            .byte $02,$04,$48,$81,$20,$98,$82,$81
            .byte $11,$02,$04,$48,$43,$20,$88,$FE
            .byte $FD,$0A,$03,$F4,$28,$43,$20,$4C
            .byte $FC,$F9,$0E,$03,$E4,$28,$26,$60
            .byte $44,$00,$01,$04,$00,$00,$10,$04
            .byte $40,$67,$FF,$FF,$0F,$FF,$FF,$FF
            .byte $FC,$C0,$23,$FF,$FF,$1F,$FF,$FF
            .byte $FF,$F8,$80,$30,$00,$00,$03,$00
            .byte $00,$08,$01,$80,$18,$00,$00,$01
            .byte $00,$00,$04,$03,$00,$0C,$00,$00
            .byte $01,$80,$00,$06,$06,$00,$07,$FF
            .byte $FF,$FF,$C0,$00,$03,$FC,$00,$03
            .byte $FF,$FF,$FF,$E0,$00,$01,$F8,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$1E,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$33,$17,$77
            .byte $13,$91,$20,$00,$00,$00,$25,$15
            .byte $55,$39,$3B,$A0,$00,$00,$00,$29
            .byte $15,$51,$29,$2A,$A0,$00,$00,$00
            .byte $29,$17,$72,$29,$2A,$A0,$00,$00
            .byte $00,$25,$11,$51,$39,$3B,$20,$00
            .byte $00,$00,$33,$11,$55,$29,$2A,$A0
            .byte $00,$00,$00,$1E,$11,$77,$29,$2A
            .byte $A0,$00
LB1EB:      .byte $00,$03,$04,$05,$06,$07,$08,$09
            .byte $0A,$0B,$0C,$0D,$0E,$0F,$09,$0A
            .byte $0B,$0C,$0D,$0E,$0F,$09,$0A,$0B
            .byte $0C,$0D,$0E
LB206:      .byte $0F,$0B,$0B,$0B,$0B,$0A,$09,$08
            .byte $07,$06,$05,$05,$04,$04,$03,$03
            .byte $03,$03,$03,$03,$03,$02,$02,$02
            .byte $02,$02,$02
LB221:      .byte $02,$0F,$0F,$0F,$0F,$0F,$01,$02
            .byte $03,$04,$05,$06,$07,$08,$09,$0A
            .byte $0B,$0C,$0D,$0E,$0F,$10,$11,$12
            .byte $13,$14,$15,$16,$17,$17,$18,$18
            .byte $19,$19,$1A,$1B,$1C,$1D,$1E,$1F
LB249:      .byte $8F,$8F,$8F,$8F,$8F,$8D,$8D,$8D
            .byte $8D,$8D,$8D,$8D,$8D,$8C,$8C,$8C
            .byte $8B,$8B,$8A,$8A,$89,$89,$88,$87
            .byte $87,$86,$86,$85,$85,$84,$84,$83
            .byte $83,$82,$82,$82,$81,$81
LB26F:      .byte $81,$00,$00,$00,$00,$00,$04,$05
            .byte $06,$07,$08,$09,$0A,$0B,$0C,$0D
            .byte $0E,$0F,$10,$11,$12,$13,$14,$14
            .byte $15,$15,$16,$16,$17,$17,$18,$18
            .byte $19,$19,$1A,$1B,$1C,$1D,$1E,$1F
LB297:      .byte $87,$87,$87,$87,$87,$8F,$8F,$8F
            .byte $8F,$8F,$8F,$8F,$8F,$8E,$8E,$8E
            .byte $8D,$8D,$8D,$8C,$8B,$8B,$8A,$89
            .byte $89,$88,$87,$87,$86,$86,$85,$85
            .byte $84,$84,$83,$82,$82,$81
LB2BD:      .byte $81,$18,$1A,$1D,$1F,$22,$25
LB2C4:      .byte $AF,$AF,$AD,$AB,$AB,$A7,$A5
LB2CB:      .byte $A3,$2C,$30,$34,$38,$3C,$41
LB2D2:      .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $33,$34,$00,$00,$00,$00,$00,$00
            .byte $33,$35,$36,$00,$00,$00,$00,$00
            .byte $33,$35,$36,$33,$34,$00,$00,$00
            .byte $33,$35,$36,$33,$37,$38,$00,$00
            .byte $20,$41,$4E,$20,$53,$4D,$47,$20
            .byte $55,$66,$66,$66,$66,$66,$66,$66
            .byte $55,$55,$56,$55,$55,$55,$55,$55
            .byte $43,$20,$55,$55,$66,$66,$66,$67
            .byte $66,$66,$76,$67,$66,$66,$56,$55
            .byte $55,$55,$43,$20,$B6,$8A,$89,$A9
            .byte $AD,$77,$76,$76,$34,$55,$34,$44
            .byte $55,$55,$55,$55,$04,$20,$F8,$FF
            .byte $FF,$CD,$7A,$02,$11,$53,$46,$E8
            .byte $AA,$57,$44,$54,$55,$65,$05,$20
            .byte $FC,$DF,$48,$55,$37,$33,$A5,$EB
            .byte $98,$79,$47,$22,$54,$55,$55,$65
            .byte $07,$20,$FC,$FF,$38,$33,$23,$43
            .byte $F5,$EF,$59,$22,$33,$55,$66,$56
            .byte $55,$65,$0A,$20,$F9,$EF,$18,$21
            .byte $54,$67,$D6,$BE,$27,$10,$74,$78
            .byte $55,$55,$55,$66,$07,$20,$FC,$CF
            .byte $15,$32,$55,$67,$F9,$8B,$14,$42
            .byte $76,$67,$55,$55,$66,$66,$0C,$20
            .byte $F9,$CF,$17,$31,$65,$77,$D7,$9C
            .byte $15,$31,$76,$67,$55,$55,$65,$66
            .byte $0F,$20,$FB,$CF,$05,$31,$75,$79
            .byte $C8,$7A,$13,$41,$87,$67,$54,$55
            .byte $65,$66,$0B,$20,$FB,$BF,$04,$31
            .byte $76,$79,$A8,$69,$13,$52,$77,$57
            .byte $55,$55,$66,$66,$09,$20,$F9,$9B
            .byte $25,$42,$65,$87,$99,$58,$33,$64
            .byte $66,$55,$55,$65,$66,$66,$44,$20
            .byte $C9,$9C,$56,$96,$9A,$67,$66,$35
            .byte $43,$55,$24,$32,$54,$55,$55,$55
            .byte $45,$20,$65,$87,$88,$78,$77,$66
            .byte $77,$67,$45,$44,$44,$55,$55,$55
            .byte $55,$55,$FF,$02,$57,$55,$55,$56
            .byte $56,$55,$55,$66,$66,$56,$55,$66
            .byte $66,$55,$55,$55,$55,$65,$56,$55
            .byte $55,$56,$66,$65,$65,$66,$66,$56
            .byte $55,$55,$55,$55,$55,$55,$55,$55
            .byte $55,$55,$65,$56,$65,$56,$55,$65
            .byte $05,$83,$57,$04,$20,$00,$10,$74
            .byte $89,$67,$74,$77,$35,$12,$53,$99
            .byte $78,$66,$66,$66,$66,$06,$20,$00
            .byte $20,$A7,$AB,$68,$65,$33,$12,$43
            .byte $99,$8A,$45,$54,$66,$66,$66,$05
            .byte $20,$03,$11,$C4,$DE,$59,$11,$33
            .byte $66,$86,$98,$56,$33,$65,$67,$66
            .byte $66,$05,$20,$00,$73,$DF,$37,$21
            .byte $74,$55,$75,$8B,$36,$42,$86,$77
            .byte $66,$66,$66,$07,$20,$15,$40,$C7
            .byte $6B,$43,$45,$34,$94,$9A,$45,$54
            .byte $56,$66,$66,$66,$66,$07,$20,$01
            .byte $64,$75,$A8,$78,$23,$44,$34,$98
            .byte $88,$55,$55,$65,$66,$66,$66,$06
            .byte $20,$32,$37,$61,$68,$83,$58,$45
            .byte $45,$35,$85,$66,$76,$66,$66,$66
            .byte $66,$08,$20,$65,$10,$35,$52,$6A
            .byte $A5,$6A,$85,$45,$44,$45,$65,$66
            .byte $66,$66,$66,$4D,$20,$73,$25,$44
            .byte $12,$34,$42,$45,$85,$66,$77,$66
            .byte $67,$66,$56,$55,$55,$FF,$84,$50
            .byte $02,$6B,$65,$56,$74,$46,$56,$65
            .byte $64,$65,$56,$56,$57,$66,$73,$53
            .byte $46,$57,$65,$56,$65,$75,$97,$45
            .byte $38,$55,$65,$44,$64,$65,$56,$67
            .byte $55,$66,$55,$54,$66,$56,$67,$65
            .byte $64,$46,$55,$56,$66,$76,$55,$57
            .byte $67,$65,$65,$55,$56,$56,$55,$05
            .byte $FF,$84,$51,$02,$53,$55,$45,$74
            .byte $69,$22,$C7,$06,$72,$7A,$23,$86
            .byte $56,$43,$86,$46,$64,$37,$63,$6B
            .byte $32,$85,$48,$41,$78,$35,$75,$58
            .byte $43,$66,$57,$34,$75,$56,$65,$56
            .byte $54,$66,$55,$55,$56,$65,$05,$FF
            .byte $02,$60,$66,$67,$56,$65,$56,$75
            .byte $64,$65,$46,$57,$67,$75,$75,$65
            .byte $57,$57,$76,$65,$65,$66,$67,$85
            .byte $75,$56,$56,$57,$66,$75,$65,$55
            .byte $57,$57,$66,$65,$66,$75,$66,$56
            .byte $67,$66,$76,$75,$56,$76,$55,$66
            .byte $65,$65,$02,$52,$57,$67,$75,$65
            .byte $57,$75,$56,$77,$64,$57,$67,$57
            .byte $66,$74,$75,$56,$47,$77,$74,$56
            .byte $66,$75,$56,$74,$66,$66,$56,$56
            .byte $57,$67,$74,$57,$57,$76,$64,$76
            .byte $65,$55,$57,$75,$66,$FF,$41,$01
            .byte $70,$02,$20,$96,$78,$B8,$8C,$88
            .byte $78,$44,$44,$34,$44,$55,$65,$65
            .byte $55,$55,$66,$02,$20,$FD,$FF,$FF
            .byte $9E,$46,$24,$10,$41,$75,$89,$8A
            .byte $68,$55,$54,$55,$65,$02,$20,$C9
            .byte $FB,$CF,$59,$37,$33,$52,$84,$99
            .byte $9B,$7C,$34,$54,$54,$55,$66,$04
            .byte $20,$F9,$9F,$46,$66,$34,$42,$A7
            .byte $7E,$77,$AB,$23,$42,$66,$56,$55
            .byte $66,$05,$20,$FA,$BF,$06,$11,$55
            .byte $94,$E8,$9D,$16,$23,$64,$77,$65
            .byte $55,$55,$66,$09,$20,$FE,$9E,$02
            .byte $41,$99,$78,$96,$69,$01,$53,$99
            .byte $57,$44,$55,$55,$66,$09,$20,$F8
            .byte $AF,$04,$31,$C8,$8A,$65,$67,$24
            .byte $53,$98,$56,$54,$55,$65,$66,$0E
            .byte $20,$F7,$8F,$04,$51,$BB,$67,$64
            .byte $68,$23,$64,$99,$46,$54,$65,$55
            .byte $66,$09,$20,$FF,$37,$10,$B5,$79
            .byte $67,$87,$26,$42,$97,$58,$44,$55
            .byte $55,$55,$66,$08,$20,$F8,$8D,$25
            .byte $32,$66,$86,$99,$58,$32,$65,$66
            .byte $66,$56,$55,$65,$66,$FF,$02,$5A
            .byte $57,$55,$46,$56,$63,$56,$65,$72
            .byte $17,$79,$92,$36,$59,$73,$35,$57
            .byte $93,$43,$48,$64,$74,$55,$47,$67
            .byte $65,$84,$63,$36,$47,$37,$56,$84
            .byte $72,$28,$67,$65,$36,$77,$82,$36
            .byte $29,$57,$56,$A3,$90,$02,$4E,$65
            .byte $55,$47,$66,$64,$74,$54,$47,$55
            .byte $46,$66,$64,$46,$65,$64,$46,$57
            .byte $45,$76,$84,$65,$57,$47,$66,$44
            .byte $55,$53,$33,$35,$54,$46,$66,$86
            .byte $77,$98,$78,$89,$97,$68,$03,$20
            .byte $53,$23,$22,$23,$32,$43,$54,$77
            .byte $88,$88,$78,$77,$66,$66,$66,$66
            .byte $05,$20,$73,$26,$12,$23,$32,$63
            .byte $56,$97,$8B,$87,$77,$55,$66,$66
            .byte $66,$66,$05,$20,$63,$15,$10,$24
            .byte $32,$86,$88,$A8,$6A,$65,$56,$64
            .byte $66,$66,$66,$66,$05,$20,$46,$22
            .byte $34,$21,$54,$43,$88,$66,$AA,$67
            .byte $77,$66,$66,$66,$66,$66,$44,$20
            .byte $55,$55,$44,$44,$44,$54,$55,$55
            .byte $55,$65,$66,$66,$66,$55,$55,$55
            .byte $FF,$07,$20,$75,$23,$43,$11,$44
            .byte $33,$76,$76,$99,$78,$77,$66,$66
            .byte $66,$66,$66,$07,$20,$41,$01,$52
            .byte $25,$C8,$79,$76,$55,$22,$65,$55
            .byte $88,$67,$66,$66,$66,$0A,$20,$40
            .byte $17,$51,$6A,$75,$75,$34,$52,$47
            .byte $76,$69,$65,$66,$66,$66,$66,$12
            .byte $20,$20,$36,$53,$87,$66,$53,$45
            .byte $43,$68,$66,$77,$65,$66,$66,$66
            .byte $66,$09,$20,$21,$35,$43,$65,$67
            .byte $64,$56,$34,$55,$57,$77,$66,$66
            .byte $66,$66,$66,$13,$20,$45,$33,$23
            .byte $32,$33,$44,$54,$66,$76,$77,$77
            .byte $77,$77,$66,$66,$66,$0F,$20,$45
            .byte $33,$23,$32,$33,$44,$54,$76,$77
            .byte $77,$87,$77,$67,$66,$66,$66,$06
            .byte $20,$55,$34,$33,$33,$33,$33,$54
            .byte $65,$76,$88,$88,$78,$67,$66,$66
            .byte $66,$47,$20,$44,$34,$33,$33,$33
            .byte $33,$44,$65,$76,$77,$77,$77,$66
            .byte $66,$55,$55,$FF,$46,$20,$45,$44
            .byte $23,$33,$11,$12,$11,$12,$32,$44
            .byte $76,$77,$78,$67,$66,$55,$0D,$20
            .byte $32,$45,$02,$45,$31,$75,$55,$87
            .byte $69,$87,$67,$76,$67,$66,$66,$66
            .byte $06,$20,$66,$23,$22,$21,$24,$64
            .byte $67,$A7,$87,$78,$66,$56,$66,$66
            .byte $66,$66,$09,$20,$43,$22,$11,$21
            .byte $54,$76,$77,$97,$68,$56,$55,$66
            .byte $66,$66,$66,$66,$0E,$20,$45,$22
            .byte $12,$32,$22,$43,$54,$66,$76,$77
            .byte $98,$78,$77,$66,$66,$66,$06,$20
            .byte $12,$23,$32,$33,$74,$57,$35,$44
            .byte $66,$75,$87,$78,$67,$66,$66,$66
            .byte $06,$20,$10,$35,$24,$64,$87,$52
            .byte $63,$35,$55,$78,$68,$76,$66,$66
            .byte $66,$66,$07,$20,$22,$34,$33,$53
            .byte $66,$54,$65,$45,$65,$66,$77,$77
            .byte $67,$66,$66,$66,$0E,$20,$44,$23
            .byte $22,$21,$22,$43,$44,$65,$77,$88
            .byte $88,$88,$77,$66,$66,$66,$08,$20
            .byte $10,$23,$45,$54,$75,$55,$23,$54
            .byte $67,$66,$88,$77,$66,$66,$66,$66
            .byte $06,$20,$00,$41,$A9,$47,$33,$75
            .byte $35,$32,$A6,$9B,$56,$65,$77,$66
            .byte $66,$66,$09,$20,$02,$11,$84,$99
            .byte $45,$33,$44,$45,$65,$97,$88,$56
            .byte $66,$66,$66,$66,$0C,$20,$00,$21
            .byte $86,$7A,$45,$42,$44,$34,$65,$98
            .byte $78,$55,$65,$67,$66,$66,$09,$20
            .byte $00,$21,$C9,$59,$44,$74,$25,$32
            .byte $A7,$8E,$46,$65,$77,$66,$66,$66
            .byte $06,$20,$10,$43,$67,$66,$88,$43
            .byte $32,$74,$57,$88,$68,$56,$76,$66
            .byte $66,$66,$08,$20,$20,$26,$43,$77
            .byte $77,$64,$36,$42,$46,$76,$77,$67
            .byte $76,$66,$66,$66,$07,$20,$13,$35
            .byte $30,$66,$62,$7B,$57,$46,$26,$62
            .byte $56,$85,$67,$66,$66,$66,$06,$20
            .byte $21,$23,$31,$55,$66,$98,$78,$87
            .byte $45,$65,$55,$66,$66,$66,$66,$66
            .byte $07,$20,$37,$53,$23,$43,$43,$54
            .byte $76,$66,$79,$66,$67,$66,$66,$66
            .byte $66,$66,$4A,$20,$45,$34,$33,$33
            .byte $33,$33,$44,$54,$55,$66,$76,$77
            .byte $66,$66,$56,$55,$45,$20,$23,$22
            .byte $11,$21,$43,$64,$77,$77,$77,$66
            .byte $55,$55,$55,$55,$55,$55,$09,$20
            .byte $33,$36,$22,$32,$45,$74,$68,$86
            .byte $78,$66,$66,$55,$66,$66,$66,$66
            .byte $46,$20,$45,$44,$33,$33,$33,$33
            .byte $44,$54,$65,$66,$77,$66,$66,$66
            .byte $55,$55,$FF,$43,$20,$65,$77,$67
            .byte $45,$54,$65,$55,$65,$77,$56,$44
            .byte $55,$55,$55,$55,$55,$06,$20,$C9
            .byte $8A,$35,$43,$76,$68,$66,$76,$56
            .byte $34,$54,$77,$56,$55,$65,$66,$07
            .byte $20,$FA,$AE,$15,$32,$95,$7A,$66
            .byte $86,$68,$24,$43,$77,$67,$55,$55
            .byte $66,$05,$20,$FA,$BC,$47,$33,$54
            .byte $56,$66,$97,$89,$46,$33,$55,$66
            .byte $56,$55,$66,$0B,$20,$A7,$CB,$69
            .byte $45,$54,$66,$45,$54,$97,$99,$57
            .byte $54,$55,$55,$55,$66,$09,$20,$A8
            .byte $CD,$9A,$67,$66,$55,$24,$32,$64
            .byte $88,$78,$66,$66,$55,$55,$66,$4E
            .byte $20,$87,$88,$77,$98,$AA,$79,$45
            .byte $44,$54,$55,$44,$44,$55,$55,$55
            .byte $55,$04,$20,$FB,$EF,$7B,$33,$53
            .byte $44,$23,$74,$DC,$9B,$46,$43,$55
            .byte $55,$65,$66,$06,$20,$FA,$AC,$36
            .byte $43,$66,$46,$53,$B7,$9B,$46,$33
            .byte $65,$56,$55,$65,$66,$08,$20,$FB
            .byte $AB,$35,$54,$46,$35,$95,$BC,$58
            .byte $33,$55,$55,$55,$55,$65,$66,$09
            .byte $20,$FE,$6A,$44,$76,$26,$42,$C7
            .byte $8B,$45,$65,$45,$54,$65,$55,$65
            .byte $66,$09,$20,$FB,$69,$66,$56,$35
            .byte $42,$B8,$78,$67,$66,$45,$54,$55
            .byte $55,$65,$66,$0D,$20,$F7,$8E,$76
            .byte $59,$33,$33,$94,$69,$86,$7A,$45
            .byte $54,$55,$55,$55,$66,$09,$20,$98
            .byte $98,$CB,$79,$45,$33,$23,$53,$77
            .byte $87,$79,$67,$55,$55,$55,$66,$FF
            .byte $46,$20,$33,$22,$22,$33,$33,$54
            .byte $86,$88,$89,$78,$67,$66,$55,$55
            .byte $55,$55,$4C,$20,$02,$10,$21,$21
            .byte $11,$43,$97,$AA,$99,$88,$78,$56
            .byte $44,$55,$55,$55,$05,$20,$01,$00
            .byte $52,$A9,$69,$54,$74,$68,$24,$33
            .byte $86,$89,$67,$65,$66,$66,$06,$20
            .byte $12,$11,$B7,$CF,$27,$10,$62,$87
            .byte $68,$66,$56,$44,$65,$67,$66,$66
            .byte $0E,$20,$12,$31,$FA,$8B,$13,$52
            .byte $86,$55,$76,$79,$35,$53,$77,$67
            .byte $66,$66,$09,$20,$01,$64,$BC,$46
            .byte $54,$43,$43,$A8,$5A,$34,$55,$55
            .byte $76,$66,$66,$66,$04,$20,$40,$35
            .byte $75,$99,$58,$63,$33,$63,$77,$78
            .byte $67,$55,$65,$66,$66,$66,$07,$20
            .byte $61,$06,$74,$57,$86,$76,$44,$65
            .byte $33,$67,$66,$77,$66,$66,$66,$66
            .byte $08,$20,$84,$02,$45,$32,$67,$85
            .byte $88,$76,$57,$44,$45,$55,$66,$66
            .byte $66,$66,$47,$20,$73,$25,$53,$12
            .byte $45,$42,$57,$94,$57,$87,$65,$67
            .byte $65,$56,$55,$55,$FF,$44,$20,$33
            .byte $22,$33,$33,$33,$54,$76,$87,$88
            .byte $78,$77,$66,$55,$55,$55,$55,$07
            .byte $20,$34,$11,$21,$43,$55,$66,$97
            .byte $BB,$89,$56,$45,$44,$44,$55,$66
            .byte $66,$06,$20,$02,$10,$42,$65,$55
            .byte $87,$7A,$35,$32,$54,$55,$66,$77
            .byte $67,$66,$66,$0D,$20,$11,$31,$97
            .byte $7A,$66,$75,$66,$33,$33,$65,$88
            .byte $77,$66,$66,$66,$66,$0A,$20,$01
            .byte $31,$97,$79,$56,$75,$77,$35,$12
            .byte $53,$98,$78,$66,$66,$66,$66,$06
            .byte $20,$12,$21,$63,$87,$68,$66,$87
            .byte $78,$34,$32,$54,$77,$67,$66,$66
            .byte $66,$51,$20,$45,$44,$44,$44,$44
            .byte $44,$44,$55,$55,$65,$66,$66,$66
            .byte $66,$55,$55,$04,$20,$33,$33,$54
            .byte $55,$45,$76,$77,$56,$44,$54,$66
            .byte $66,$66,$66,$66,$66,$06,$20,$13
            .byte $22,$74,$88,$67,$65,$45,$34,$43
            .byte $87,$88,$56,$65,$66,$66,$66,$07
            .byte $20,$12,$22,$A6,$AA,$57,$43,$33
            .byte $44,$76,$8A,$57,$54,$66,$66,$66
            .byte $66,$11,$20,$03,$42,$FA,$59,$23
            .byte $63,$56,$55,$98,$57,$43,$75,$77
            .byte $66,$66,$66,$07,$20,$11,$74,$AC
            .byte $36,$43,$64,$54,$86,$78,$34,$54
            .byte $77,$66,$66,$66,$66,$0A,$20,$14
            .byte $52,$B8,$59,$53,$55,$44,$85,$7A
            .byte $35,$54,$66,$66,$66,$66,$66,$45
            .byte $20,$11,$55,$33,$65,$78,$55,$67
            .byte $34,$43,$55,$55,$66,$66,$55,$55
            .byte $55,$FF,$46,$20,$55,$44,$44,$34
            .byte $23,$22,$43,$44,$44,$65,$76,$67
            .byte $66,$66,$56,$55,$0C,$20,$55,$34
            .byte $23,$11,$22,$22,$22,$43,$65,$77
            .byte $77,$77,$77,$67,$66,$66,$05,$20
            .byte $11,$42,$89,$58,$43,$74,$56,$13
            .byte $43,$88,$68,$55,$65,$66,$66,$66
            .byte $12,$20,$00,$52,$CD,$47,$32,$65
            .byte $34,$44,$AB,$58,$43,$85,$77,$66
            .byte $66,$66,$07,$20,$00,$43,$AA,$57
            .byte $55,$44,$22,$84,$9A,$57,$65,$66
            .byte $66,$66,$66,$66,$06,$20,$00,$42
            .byte $66,$66,$88,$47,$22,$54,$66,$87
            .byte $78,$66,$66,$66,$66,$66,$47,$20
            .byte $14,$00,$10,$21,$43,$44,$55,$65
            .byte $77,$77,$77,$77,$77,$66,$56,$55
            .byte $45,$20,$45,$44,$44,$43,$44,$44
            .byte $54,$65,$65,$66,$66,$66,$66,$56
            .byte $55,$55,$FF,$08,$20,$55,$44,$33
            .byte $33,$33,$33,$44,$54,$65,$77,$77
            .byte $77,$77,$66,$66,$66,$09,$20,$44
            .byte $23,$22,$11,$21,$32,$33,$54,$66
            .byte $87,$88,$78,$77,$67,$66,$66,$07
            .byte $20,$34,$32,$12,$21,$22,$33,$43
            .byte $55,$76,$77,$88,$77,$77,$67,$66
            .byte $66,$07,$20,$00,$32,$57,$56,$76
            .byte $56,$22,$53,$77,$67,$88,$67,$66
            .byte $66,$66,$66,$20,$20,$00,$82,$BF
            .byte $27,$30,$76,$55,$63,$9A,$47,$54
            .byte $77,$67,$66,$66,$66,$09,$20,$02
            .byte $52,$EA,$48,$32,$64,$45,$65,$89
            .byte $35,$64,$77,$66,$66,$66,$66,$06
            .byte $20,$02,$64,$BA,$47,$54,$34,$43
            .byte $A7,$68,$45,$55,$55,$76,$66,$66
            .byte $66,$04,$20,$43,$44,$55,$76,$68
            .byte $56,$55,$45,$65,$66,$66,$65,$56
            .byte $66,$66,$66,$FF,$05,$20,$35,$52
            .byte $35,$55,$76,$67,$75,$56,$55,$45
            .byte $65,$66,$66,$66,$66,$66,$0B,$20
            .byte $01,$35,$21,$74,$97,$75,$8A,$25
            .byte $54,$46,$64,$78,$66,$66,$66,$66
            .byte $04,$20,$35,$32,$33,$33,$43,$55
            .byte $65,$66,$77,$87,$77,$67,$66,$66
            .byte $66,$66,$43,$20,$44,$44,$33,$33
            .byte $33,$33,$34,$44,$54,$65,$76,$77
            .byte $67,$66,$56,$55,$FF,$04,$20,$44
            .byte $24,$32,$33,$44,$54,$66,$77,$76
            .byte $67,$66,$66,$66,$66,$66,$66,$04
            .byte $20,$13,$33,$21,$65,$65,$78,$66
            .byte $56,$55,$65,$66,$76,$77,$66,$66
            .byte $66,$07,$20,$02,$55,$40,$88,$65
            .byte $89,$26,$53,$24,$85,$67,$77,$67
            .byte $66,$66,$66,$07,$20,$50,$06,$73
            .byte $57,$B6,$77,$44,$45,$33,$66,$75
            .byte $78,$66,$66,$66,$66,$07,$20,$41
            .byte $06,$72,$36,$C6,$77,$76,$46,$43
            .byte $35,$74,$66,$77,$66,$66,$66,$05
            .byte $20,$64,$01,$44,$32,$78,$85,$8A
            .byte $76,$56,$44,$55,$55,$66,$66,$66
            .byte $66,$49,$20,$39,$50,$04,$50,$24
            .byte $75,$57,$88,$78,$76,$56,$65,$66
            .byte $66,$55,$55,$43,$20,$77,$23,$45
            .byte $11,$34,$42,$56,$86,$86,$78,$66
            .byte $57,$66,$66,$56,$55,$45,$20,$34
            .byte $33,$22,$23,$42,$55,$75,$77,$78
            .byte $67,$67,$66,$66,$56,$55,$55,$8A
            .byte $4F,$01,$5E,$77,$77,$66,$66,$66
            .byte $65,$77,$77,$87,$88,$88,$77,$76
            .byte $67,$66,$76,$77,$77,$77,$77,$77
            .byte $77,$77,$77,$77,$77,$77,$66,$66
            .byte $66,$66,$66,$77,$77,$66,$76,$77
            .byte $77,$77,$77,$77,$77,$77,$66,$77
            .byte $66,$77,$FF,$88,$50,$FF,$90,$4F
            .byte $FF
LBE3B:      .byte $98
LBE3C:      .byte $B5,$D0,$B4,$00,$B3,$A6,$B7,$55
            .byte $A3,$45,$B9,$F4,$BB,$3A,$B5,$85
            .byte $BC,$16,$BD,$0B,$B5,$5F,$BD,$03
            .byte $B7,$FD,$B3,$42,$BA,$EE,$A4,$F7
            .byte $BA,$35,$BE,$38,$BE,$50,$B6
LBE63:      .byte $00,$02,$22,$04,$22,$08,$FF,$00
            .byte $02,$22,$04,$22,$06,$24,$FF,$08
            .byte $22,$0A,$02,$24,$08,$22,$0A,$02
            .byte $FF,$04,$22,$06,$22,$0C,$0E,$02
            .byte $22,$10,$02,$22,$12,$0E,$14,$16
            .byte $FF,$26,$14,$18,$24,$1A,$02,$22
            .byte $1C,$14,$22,$FF,$1E,$22,$FF,$20
            .byte $02,$FF,$00,$02,$22,$04,$22,$26
            .byte $14,$18,$FF
LBEA6:      .byte $00,$07,$0F,$19,$29,$34,$37,$3A
LBEAE:      lda L1814
            beq LBEEE
            lda L00C3
            bne LBEEE
            jsr LA1D1
            lda L180D
            sta L180E
            ldx L1805
            lda LBEA6,X
            tax
            stx L1809
LBECA:      ldx L1809
            lda LBE63,X
            bmi LBEE6
            inc L1809
            tax
            lda LBE3B,X
            sta L00C4
            lda LBE3C,X
            sta L00C5
            jsr LBF2E
            jmp LBECA
LBEE6:      lda #$16
            sta AUDC1
            sta AUDC2
LBEEE:      lda #$FF
            sta L1805
            rts
LBEF4:      bvs LBF3A
            and #$3F
            cmp #$3F
            beq LBF2D
            cmp #$7F
            bpl LBF03
            lsr
            adc #$00
LBF03:      sta L1806
            iny
            lda (L00C4),Y
            sta L1807
            tax
            lda #$16
            sta AUDC1
            sta AUDC2
LBF15:      sta WSYNC
            nop
            nop
            nop
            nop
            nop
            sta WSYNC
            dex
            bne LBF15
            dec L1806
            bmi LBF9B
            ldx L1807
            bne LBF15
LBF2D:      rts
LBF2E:      ldy #$00
            sty L180F
            lda (L00C4),Y
            bmi LBEF4
            sta L180F
LBF3A:      sta L1806
            bit L1806
            and #$3F
            cmp #$7F
            bpl LBF49
            lsr
            adc #$00
LBF49:      sta L1806
            bvc LBF53
            lda #$16
            sta AUDC2
LBF53:      iny
            lda (L00C4),Y
            sta L1807
LBF59:      dec L1806
            bmi LBF9B
            lda L1807
            sta L1808
            ldy #$02
LBF66:      lda (L00C4),Y
            tax
            ora #$10
            sta WSYNC
            sta AUDC1
            dec L1808
            sta WSYNC
            bvs LBF7C
            sta AUDC2
LBF7C:      beq LBFAA
            txa
            lsr
            lsr
            lsr
            lsr
            ora #$10
            sta WSYNC
            sta AUDC1
            dec L1808
            sta WSYNC
            bvs LBF96
            sta AUDC2
LBF96:      beq LBFAA
            iny
            bne LBF66
LBF9B:      iny
            tya
            clc
            adc L00C4
            sta L00C4
            lda L00C5
            adc #$00
            sta L00C5
            bne LBF2E
LBFAA:      lda L180F
            beq LBF59
LBFAF:      dec L180E
            bmi LBFC4
            lda #$16
            sta WSYNC
            nop
            nop
            sta WSYNC
            sta AUDC2
            jmp LBFAF
LBFC4:      lda L180D
            sta L180E
            jmp LBF59
            .byte $C5,$4F,$DB,$FF,$E6,$DF,$D3,$FF
            .byte $79,$C1,$C9,$32,$35,$F5,$3A,$34
            .byte $F5,$FE,$02,$3A,$35,$F5,$C8,$FE
            .byte $80,$38,$45,$FE,$A7,$28,$56,$FE
            .byte $B7,$28,$55,$FE,$B8,$28,$54,$FE
            .byte $E7,$28,$53,$FE,$60
LBFFA:      .byte $00,$80,$00,$04,$F9,$BF
;
            org $02E0
;
            .word L7EA5
;
         
