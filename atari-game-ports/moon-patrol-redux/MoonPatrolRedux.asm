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
L00BB       = $00BB
L00BD       = $00BD
L00BE       = $00BE
L00C0       = $00C0
L00C1       = $00C1
L00C5       = $00C5
L00C8       = $00C8
L00CC       = $00CC
L00D0       = $00D0
L00D3       = $00D3
L00D5       = $00D5
L00D9       = $00D9
L00DC       = $00DC
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
L00F7       = $00F7
L00FE       = $00FE
L00FF       = $00FF
L025A       = $025A
L025B       = $025B
L025C       = $025C
L025D       = $025D
L025E       = $025E
L0400       = $0400
L0409       = $0409
L0422       = $0422
L04AF       = $04AF
L04B0       = $04B0
L04D8       = $04D8
L05AF       = $05AF
L05FF       = $05FF
L0600       = $0600
L06AF       = $06AF
L07AF       = $07AF
L07BB       = $07BB
L0840       = $0840
L0880       = $0880
L08C0       = $08C0
L0900       = $0900
L092F       = $092F
L0A40       = $0A40
L0A80       = $0A80
L0AC0       = $0AC0
L0B00       = $0B00
L0B2F       = $0B2F
L0BD0       = $0BD0
L0F5D       = $0F5D
L1400       = $1400
L1409       = $1409
L1500       = $1500
L1501       = $1501
L150D       = $150D
L1514       = $1514
L151D       = $151D
L152B       = $152B
L152E       = $152E
L152F       = $152F
L1580       = $1580
L15A9       = $15A9
L2080       = $2080
L20C0       = $20C0
L212F       = $212F
L24B9       = $24B9
L2900       = $2900
L2C4E       = $2C4E
L3B2A       = $3B2A
L3E00       = $3E00
L3E01       = $3E01
L3E05       = $3E05
L3E14       = $3E14
L3E1A       = $3E1A
L3E1F       = $3E1F
L3E20       = $3E20
L3E21       = $3E21
L3E28       = $3E28
L3E3C       = $3E3C
L3E55       = $3E55
L3E58       = $3E58
L3E64       = $3E64
L3E83       = $3E83
L3E8D       = $3E8D
L3F00       = $3F00
L3F01       = $3F01
L3F02       = $3F02
L3F03       = $3F03
L3F0F       = $3F0F
L3F15       = $3F15
L3F29       = $3F29
L3F2A       = $3F2A
L3F2B       = $3F2B
L3F37       = $3F37
L3F3C       = $3F3C
L3F3D       = $3F3D
L3F3E       = $3F3E
L3F46       = $3F46
L3F5B       = $3F5B
L3F5C       = $3F5C
L3F60       = $3F60
L3F65       = $3F65
L3F6A       = $3F6A
L3F6F       = $3F6F
L3F74       = $3F74
L3F75       = $3F75
L3F76       = $3F76
L3F79       = $3F79
L3F7A       = $3F7A
L3F7B       = $3F7B
L3F83       = $3F83
L3F88       = $3F88
L3F8D       = $3F8D
L3F92       = $3F92
L3F97       = $3F97
L3F9C       = $3F9C
L3F9E       = $3F9E
L4A14       = $4A14
L4A1A       = $4A1A
L4A54       = $4A54
L4A6F       = $4A6F
L5838       = $5838
L6C00       = $6C00
L6D00       = $6D00
L6D0F       = $6D0F
L6E00       = $6E00
L6F00       = $6F00
L708C       = $708C
L8AC0       = $8AC0
L91DD       = $91DD
L9B0C       = $9B0C
L9C32       = $9C32
L9C40       = $9C40
L9DDB       = $9DDB
L9E82       = $9E82
L9F01       = $9F01
LA2C9       = $A2C9
LAB39       = $AB39
LB188       = $B188
LB9B9       = $B9B9
LD0D6       = $D0D6
LDED5       = $DED5
LE2A5       = $E2A5
LF020       = $F020
;
; Start of code
;
            org $7000
;
L7000:      lda PORTB
            ora #$02
            sta PORTB
            lda #$00
            sta SDMCTL
            sta DMACLT
            rts
;
            org $02E2
;
            .word L7000
;
            org $8000
;
            pha
            lda #$40
            bit IRQST
            bne L8010
            lda #$BF
            jsr L8018
            jmp (VPRCED)
L8010:      lda #$40
            jsr L8018
            jmp L8025
L8018:      sta IRQEN
            lda $00
            sta IRQEN
            rts
L8021:      pla
            tay
            pla
            tax
L8025:      pla
            rti
            inc CASINI
            bne L802F
            inc RAMLO
            inc NGFLAG
L802F:      lda CASINI+1
            bne L8021
            lda TRAMSZ
            sta DLISTH
            lda RAMLO+1
            sta DLISTL
            lda CMCMD
            sta DMACLT
            ldy RAMLO
            bpl L804A
            ldy #$80
            sty RAMLO
L804A:      ldx #$08
L804C:      lda WARMST,X
L804E:      cpy #$80
            bcc L8056
            eor NGFLAG
            and #$F6
L8056:      sta COLPM0,X
            dex
            bpl L804C
            jmp (VVBLKD)
            txa
            pha
            tya
            pha
            lda KBCODE
            jmp (VINTER)
L8069:      .byte $26,$80,$5F,$80,$21,$80
L806F:      .byte $00,$80
L8071:      .byte $27,$80,$21,$80
L8075:      lda WARMST
            beq L8080
            cli
            sta NMIRES
            jmp L80D0
L8080:      ldx #$08
L8082:      lda L8069,X
            sta VDSLST,X
            lda L806F,X
            sta VIMIRQ,X
            lda L8071,X
            sta VVBLKI,X
            dex
            bpl L8082
            lda #$00
            jsr L70C0
            tax
L809D:      sta AUDF1,X
            sta HPOSP0,X
            sta DMACLT,X
            sta $00,X
            inx
            bne L809D
            lda #$E0
            sta CHBASE
            lda #$04
            sta PACTL
            lda #$03
            sta SKCTL
            cli
            jsr L82AF
            ldx #$31
L80C0:      lda LA732,X
            sta DSKTIM,X
            dex
            bpl L80C0
            lda #$00
            sta ICBLHZ
            sta L1409
L80D0:      jmp L4937
            .byte $52
L80D4:      jsr L8421
            jsr L840B
            lda #$86
            sta L008C
            lda #$84
            sta L008D
            lda #$00
            sta L008E
            lda #$10
            sta L008F
            ldx #$02
            jsr L89F7
            jsr LB134
L80F2:      lda #$00
            sta ICAX5Z
            sta STATUS
            sta CHKSUM
L80FA:      jsr LBBBA
            lda FMSZPG+2
            beq L810D
            lda ICAX4Z
            bne L8109
            lda ICAX5Z
            bne L810D
L8109:      ldx #$03
            bne L811D
L810D:      lda #$00
            ldy ICAX6Z
            beq L8115
            lda #$80
L8115:      sta ICBLHZ
            lda #$27
            sta ICBLLZ
            ldx #$07
L811D:      lda #$00
L811F:      sta ICHIDZ,X
            dex
            bpl L811F
            lda #$04
            sta ICSTAZ
            lda ICAX5Z
            bne L80FA
L812C:      inc BFENHI
L812E:      jsr L840B
            jsr LAB39
            lda #$00
            sta BFENLO
            sta BITMSK
            ldx BFENHI
            beq L8142
            sta BFENHI
            dec ICSTAZ
L8142:      lda ICPTHZ
            sta BUFRLO
            lda ICBLLZ
            sta BUFRHI
            jsr L8311
            lda #$00
            sta COUNTR
            lda #$15
            sta COUNTR+1
            inc INSDAT
            jsr L9483
            jsr L8418
            lda ICSTAZ
            cmp #$03
            bne L8175
            lda ICHIDZ
            ora ICDNOZ
            ora ICCOMZ
            bne L8175
            ldy #$00
            tya
            jsr LBCA8
L8171:      lda L0088
            bne L8171
L8175:      inc LMARGN
            ldy #$01
            tya
            jsr LBCA8
L817D:      lda #$02
            sta HOLDCH
            lda LTEMP
            cmp #$02
            bcs L81A8
            jsr LA5B7
            jsr LA66C
            jsr LA70B
            jsr LA3D0
            jsr LA4C5
            jsr L9CE7
            jsr L91DD
            jsr LA36C
            jsr LA430
            jsr LA54F
            jmp L81AE
L81A8:      jsr LA2E7
            jsr LA26C
L81AE:      jsr LBB82
            jsr L9A97
            jsr L9BFE
            jsr L9483
            jsr L9B1A
L81BD:      lda HOLDCH
            bne L81BD
            lda BFENHI
            bne L81FB
            lda BITMSK
            beq L817D
            ldx #$00
            stx LMARGN
            ldx L009B
            bne L81E9
            cmp #$01
            bne L81D8
            jmp L812E
L81D8:      jsr LAE52
            lda #$00
            sta ICBALZ
            sta ICBAHZ
            ldx #$F0
            jsr L8411
            jmp L812E
L81E9:      jsr L8421
            jsr L840B
            ldx #$18
            stx L009C
            ldx #$3C
            jsr L8411
            jmp L80F2
L81FB:      jsr L8421
            lda ICSTAZ
            bne L8277
            ldx ICAX5Z
            inc STATUS,X
            ldx #$00
L8208:      lda ICHIDZ,X
            cmp ICAX1Z,X
            bcc L8220
            beq L8212
            bcs L8217
L8212:      inx
            cpx #$03
            bcc L8208
L8217:      ldx #$02
L8219:      lda ICHIDZ,X
            sta ICAX1Z,X
            dex
            bpl L8219
L8220:      jsr L840B
            ldx #$03
L8225:      lda L82AB,X
            sta L150D,X
            dex
            bpl L8225
            ldx #$27
            lda #$00
L8232:      sta L3E00,X
            dex
            bpl L8232
            ldx #$08
L823A:      lda L82A2,X
            sta L3E05,X
            dex
            bpl L823A
            lda ICAX4Z
            beq L825B
            ldx #$05
L8249:      lda L83F8,X
            sta L3E1A,X
            dex
            bpl L8249
            ldx ICAX5Z
            inx
            txa
            ora #$90
            sta L3E21
L825B:      lda #$08
            sta LTEMP
            jsr L8418
            ldy #$04
            tya
            jsr LBCA8
L8268:      lda L0088
            bne L8268
            ldx #$78
            jsr L8411
            lda ICAX4Z
            bne L8280
            beq L8296
L8277:      ldx #$78
            jsr L8411
            lda ICAX4Z
            beq L829F
L8280:      lda ICAX5Z
            eor #$01
            tax
            lda STATUS,X
            beq L8299
            ldx ICAX5Z
            lda STATUS,X
            beq L829F
            cpx #$01
            bne L8296
            jsr LBBBA
L8296:      jmp L80D0
L8299:      jsr L840B
            jsr LBBBA
L829F:      jmp L812C
L82A2:      .byte $A7,$A1,$AD,$A5,$00,$AF,$B6,$A5
            .byte $B2
L82AB:      .byte $46,$00,$3E,$06
L82AF:      lda #$00
            sta CMCMD
            lda #$B8
            sta VVBLKD
            lda #$B5
            sta VVBLKD+1
            lda #$0F
            sta VDSLST
            lda #$B3
            sta VDSLST+1
            lda #$6F
            sta VINTER
            lda #$BB
            sta VINTER+1
            lda #$FF
            sta L009A
            ldx #$03
            stx GRACTL
            stx SKCTL
            lda #$C0
            sta NMIEN
            lda #$40
            sta $00
            sta IRQEN
            lda #$11
            sta PRIOR
            cli
            rts
L82F0:      lda #$00
            sta L00B3
            lda #$03
            sta L00B4
            ldy #$00
            tya
L82FB:      sta (L00B3),Y
            iny
            bne L82FB
            inc L00B4
            ldx L00B4
            cpx #$0C
            bcc L82FB
            ldx #$07
L830A:      sta HPOSP0,X
            dex
            bpl L830A
            rts
L8311:      ldx #$00
            txa
L8314:      sta L3F00,X
            dex
            bne L8314
            ldx #$03
L831C:      lda L83E8,X
            sta L3F37,X
            dex
            bpl L831C
            ldx #$04
L8327:      lda L83EC,X
            sta L3F0F,X
            dex
            bpl L8327
            lda ICBLHZ
            and #$7F
            beq L8338
            ora #$20
L8338:      sta L3F15
            jsr LB83D
            lda #$11
            sta L3F01
            lda #$30
            sta L3F02
            lda #$0D
            sta L3F03
            sta L3F7B
            ldx #$28
            stx L3F79
            inx
            stx L3F7A
            ldy #$7C
            lda ICAX1Z
            jsr LB11F
            lda ICAX2Z
            jsr LB11F
            lda ICAX3Z
            jsr LB11F
            lda #$8C
            sta L3F5B
            lda #$91
            ldx #$18
L8373:      sta L3F5C,X
            dex
            bpl L8373
            lda #$8C
            sta L3F60
            sta L3F65
            sta L3F6A
            sta L3F6F
            lda #$96
            sta L3F74
            jsr LBBD3
            lda #$21
            sta L3F83
            lda #$25
            sta L3F88
            lda #$2A
            sta L3F8D
            lda #$2F
            sta L3F92
            lda #$34
            sta L3F97
            lda #$3A
            sta L3F9C
            ldx #$97
            stx L3F75
            inx
            stx L3F76
            ldx #$0C
L83B8:      lda L83FE,X
            sta L0422,X
            dex
            bpl L83B8
            lda ICAX4Z
            beq L83DD
            lda #$12
            sta L3F29
            lda #$30
            sta L3F2A
            lda #$0D
            sta L3F2B
            jsr LBBBA
            jsr LB0D9
            jsr LBBBA
L83DD:      jsr LB0D9
L83E0:      lda ICSTAZ
            ora #$10
            sta L3F9E
            rts
L83E8:      .byte $34,$29,$2D,$25
L83EC:      .byte $30,$2F,$29,$2E,$34
L83F1:      .byte $23,$21,$35,$34,$29,$2F,$2E
L83F8:      .byte $B0,$AC,$A1,$B9,$A5,$B2
L83FE:      .byte $E0,$E0,$E0,$00,$00,$E0,$E0,$E0
            .byte $00,$00,$E0,$E0,$E0
L840B:      .byte $A9,$00
L840D:      sta CMCMD
            ldx #$01
L8411:      stx HOLDCH
L8413:      lda HOLDCH
            bne L8413
            rts
L8418:      ldx #$01
            jsr L8411
            lda #$3E
            bne L840D
L8421:      lda #$00
            sta L0088
            sta L008A
            sta L0083
            sta L0087
L842B:      lda #$00
            ldx #$07
L842F:      sta AUDF1,X
            dex
            bpl L842F
            rts
L8436:      ldx #$38
L8438:      lda L8442,X
            sta L1500,X
            dex
            bpl L8438
            rts
L8442:      .byte $60,$60,$60,$80,$10,$42,$00,$3F
            .byte $02,$04,$02,$70,$70,$50,$00,$00
            .byte $70,$70,$70,$54,$00,$1D,$54,$00
            .byte $1E,$D4,$00,$1F,$54,$80,$1D,$54
            .byte $80,$1E,$54,$80,$1F,$D4,$80,$20
            .byte $70,$70,$54,$00,$22,$D4,$00,$29
            .byte $54,$00,$30,$D4,$00,$37,$41,$00
            .byte $15
L847B:      .byte $14,$17,$1A
L847E:      .byte $1D,$20,$23,$26
L8482:      .byte $2B,$2E,$31,$34,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$AA,$AA,$AA,$AA
            .byte $AA,$AA,$AA,$AA,$55,$55,$55,$55
            .byte $55,$55,$55,$55,$AA,$AA,$AA,$AA
            .byte $AA,$AA,$AA,$AA,$00,$AA,$AA,$AA
            .byte $AA,$AA,$AA,$AA,$00,$00,$AA,$AA
            .byte $AA,$AA,$AA,$AA,$00,$00,$00,$AA
            .byte $AA,$AA,$AA,$AA,$00,$00,$00,$00
            .byte $AA,$AA,$AA,$AA,$00,$00,$00,$00
            .byte $00,$AA,$AA,$AA,$00,$00,$00,$00
            .byte $00,$00,$AA,$AA,$00,$00,$00,$00
            .byte $00,$00,$00,$AA,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$C0,$EA,$EA
            .byte $EA,$EA,$C0,$00,$00,$C0,$EA,$EA
            .byte $EA,$EA,$C0,$00,$00,$C0,$FA,$FA
            .byte $FA,$FA,$C0,$00,$00,$C0,$FE,$FE
            .byte $FE,$FE,$C0,$00,$00,$C0,$FF,$FF
            .byte $FF,$FF,$C0,$00,$00,$00,$AA,$AA
            .byte $AA,$AA,$00,$00,$00,$00,$EA,$EA
            .byte $EA,$EA,$00,$00,$00,$00,$FA,$FA
            .byte $FA,$FA,$00,$00,$00,$00,$FE,$FE
            .byte $FE,$FE,$00,$00,$00,$00,$FF,$FF
            .byte $FF,$FF,$00,$00,$00,$C0,$C0,$C0
            .byte $C0,$C0,$C0,$00,$11,$05,$14,$3F
            .byte $1D,$55,$44,$11,$40,$10,$00,$FD
            .byte $DC,$54,$44,$10,$00,$00,$00,$80
            .byte $B0,$B0,$AC,$AB,$00,$00,$00,$02
            .byte $0F,$0E,$3E,$EB,$C0,$C0,$CC,$BC
            .byte $BC,$EF,$AB,$AB,$03,$03,$03,$0E
            .byte $0E,$0E,$CE,$FB,$C0,$C0,$C0,$B0
            .byte $B0,$B0,$BC,$EF,$03,$03,$0E,$0E
            .byte $CE,$FA,$FA,$AE,$00,$00,$04,$01
            .byte $00,$00,$03,$0F,$00,$10,$10,$04
            .byte $44,$44,$C4,$F3,$00,$10,$10,$41
            .byte $44,$44,$4F,$3F,$00,$00,$40,$00
            .byte $00,$00,$00,$C0,$00,$00,$00,$00
            .byte $00,$08,$20,$21,$00,$00,$00,$00
            .byte $00,$01,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$01,$00,$00,$00,$00
            .byte $00,$80,$20,$20,$00,$00,$00,$02
            .byte $02,$02,$02,$02,$00,$00,$00,$00
            .byte $00,$00,$40,$40,$00,$00,$00,$00
            .byte $00,$01,$04,$04,$2B,$2A,$A2,$8A
            .byte $0A,$28,$20,$00,$FF,$FF,$AF,$AA
            .byte $2A,$AA,$A2,$8A,$FF,$FE,$EA,$AA
            .byte $A2,$A8,$28,$88,$A0,$A0,$28,$8A
            .byte $82,$A2,$22,$02,$29,$0B,$0B,$82
            .byte $8A,$2A,$22,$00,$04,$40,$F4,$FD
            .byte $AF,$AB,$2A,$AA,$41,$07,$7F,$FE
            .byte $EA,$AA,$A2,$A8,$A0,$80,$80,$0A
            .byte $8A,$A2,$22,$02,$00,$00,$00,$00
            .byte $02,$02,$02,$02,$08,$2B,$AD,$AF
            .byte $AD,$AF,$AD,$AB,$80,$A0,$E8,$E8
            .byte $EA,$EA,$EA,$AA,$08,$2B,$AA,$82
            .byte $0A,$0A,$28,$22,$44,$C4,$F7,$FF
            .byte $AF,$AA,$8A,$0A,$44,$4F,$7E,$FE
            .byte $EA,$AA,$88,$82,$80,$A0,$A8,$0A
            .byte $82,$82,$A2,$22,$00,$00,$00,$80
            .byte $80,$E0,$AF,$BB,$8A,$3A,$3E,$0F
            .byte $0F,$3F,$FF,$FF,$88,$B0,$F0,$C0
            .byte $C0,$F0,$FF,$FF,$02,$02,$02,$0A
            .byte $0A,$2E,$EA,$BA,$08,$02,$00,$80
            .byte $80,$B3,$AF,$EA,$AA,$8A,$3A,$FE
            .byte $3F,$FF,$FF,$FF,$A8,$8A,$B0,$FC
            .byte $F0,$FF,$FF,$FE,$82,$02,$02,$0A
            .byte $0A,$3A,$EA,$AE,$00,$00,$C0,$F0
            .byte $BF,$AF,$AF,$AA,$AA,$2A,$2A,$EA
            .byte $FA,$FE,$FF,$FF,$A8,$A0,$A0,$AC
            .byte $BF,$FF,$FF,$FE,$02,$02,$0E,$3E
            .byte $FA,$EA,$EA,$AA,$02,$02,$00,$80
            .byte $B3,$BF,$EF,$AA,$2A,$2A,$FA,$FF
            .byte $FF,$FF,$FF,$FF,$A2,$A2,$BC,$FC
            .byte $FF,$FF,$FF,$FE,$02,$02,$02,$0A
            .byte $3A,$FA,$EE,$AA,$00,$01,$3F,$B7
            .byte $B5,$AF,$AA,$AA,$00,$40,$FC,$DE
            .byte $5E,$FA,$AA,$AA,$00,$00,$FF,$FF
            .byte $01,$00,$0F,$35,$15,$55,$5D,$D5
            .byte $55,$AA,$3C,$D7,$00,$40,$C0,$50
            .byte $50,$00,$F0,$5C,$DF,$FF,$EF,$BA
            .byte $AF,$AA,$AA,$AA,$7D,$FF,$BE,$EB
            .byte $BE,$AA,$AA,$AA,$F7,$FF,$FB,$AC
            .byte $FA,$AA,$AA,$AA,$00,$00,$00,$00
            .byte $00,$08,$38,$3C,$0F,$3F,$3F,$3E
            .byte $3F,$3F,$3F,$FF,$00,$20,$A8,$E8
            .byte $E8,$F8,$F8,$FA,$00,$0E,$0E,$3E
            .byte $3F,$3F,$3E,$FE,$00,$00,$00,$80
            .byte $80,$80,$A0,$E8,$38,$FE,$FE,$FE
            .byte $FF,$BB,$AA,$AA,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$BE,$AA,$FA,$EA,$EE,$BE
            .byte $FF,$FF,$FE,$AA,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$BF,$E8,$EA,$BE,$FE
            .byte $FF,$FF,$FF,$BE,$00,$01,$02,$03
            .byte $04,$00,$00,$05,$06,$00,$00,$00
            .byte $00,$00,$07,$08,$09,$0A,$00,$0B
            .byte $0C,$0D,$0E,$0F,$10,$00,$00,$11
            .byte $12,$13,$14,$00,$00,$00,$00,$15
            .byte $16,$17,$00,$00,$00,$01,$02,$03
            .byte $04,$00,$00,$05,$06,$00,$00,$00
            .byte $00,$00,$07,$08,$09,$0A,$00,$0B
            .byte $0C,$0D,$0E,$0F,$10,$00,$00,$11
            .byte $12,$13,$14,$00,$00,$00,$00,$15
            .byte $16,$17,$00,$00,$00,$18,$19,$1A
            .byte $1B,$00,$1C,$1D,$1E,$1F,$20,$00
            .byte $00,$21,$22,$23,$24,$25,$26,$27
            .byte $28,$29,$2A,$2B,$2C,$00,$2D,$2E
            .byte $2F,$30,$31,$00,$00,$00,$00,$32
            .byte $33,$34,$00,$00,$00,$18,$19,$1A
            .byte $1B,$00,$1C,$1D,$1E,$1F,$20,$00
            .byte $00,$21,$22,$23,$24,$25,$26,$27
            .byte $28,$29,$2A,$2B,$2C,$00,$2D,$2E
            .byte $2F,$30,$31,$00,$00,$00,$00,$32
            .byte $33,$34,$00,$00,$00,$35,$36,$37
            .byte $38,$00,$39,$3A,$3B,$3C,$3D,$00
            .byte $00,$3E,$3F,$40,$41,$42,$43,$00
            .byte $44,$45,$46,$47,$00,$00,$48,$49
            .byte $4A,$4B,$4C,$00,$00,$00,$4D,$4E
            .byte $4F,$50,$08,$00,$00,$35,$36,$51
            .byte $38,$00,$39,$3A,$3B,$3C,$3D,$00
            .byte $00,$3E,$3F,$40,$41,$42,$43,$00
            .byte $44,$45,$46,$47,$00,$00,$48,$49
            .byte $4A,$4B,$4C,$00,$00,$00,$4D,$4E
            .byte $4F,$50,$08,$00,$52,$53,$54,$55
            .byte $56,$00,$57,$58,$59,$5A,$00,$5B
            .byte $5C,$5D,$5E,$5F,$60,$61,$62,$00
            .byte $63,$58,$64,$65,$00,$66,$67,$68
            .byte $69,$6A,$6B,$6C,$10,$6D,$6E,$6E
            .byte $6E,$6F,$70,$71,$52,$53,$54,$55
            .byte $56,$00,$57,$58,$59,$5A,$00,$5B
            .byte $5C,$5D,$5E,$5F,$60,$61,$62,$00
            .byte $63,$58,$64,$65,$00,$66,$67,$68
            .byte $69,$6A,$6B,$6C,$10,$6D,$6E,$6E
            .byte $6E,$6F,$70,$71
L889E:      .byte $04,$05,$06,$05,$06,$07,$06,$07
            .byte $06,$05,$06,$05,$04,$05,$04,$05
            .byte $04,$04,$05,$06,$07,$06,$05,$04
            .byte $05,$06,$05,$06,$07,$06,$07,$06
            .byte $05,$06,$05,$04,$05,$06,$05,$05
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$0A,$0A,$09
            .byte $09,$08,$08,$07,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$0A,$0A,$09,$09,$08,$08,$07
            .byte $07,$06,$06,$05,$05,$04,$04,$03
            .byte $03,$03,$03,$03,$03,$03,$03,$03
            .byte $00,$00,$00,$00,$00,$0A,$0A,$09
            .byte $09,$08,$08,$07,$07,$06,$06,$05
            .byte $05,$04,$04,$03,$03,$03,$03,$03
            .byte $03,$03,$03,$03,$03,$03,$03,$03
            .byte $03,$03,$03,$03,$03,$03,$03,$03
            .byte $03,$03,$03,$03
L894A:      lda #$48
            sta L008C
            lda #$8C
            sta L008D
            lda #$00
            sta L008E
            lda #$0C
            sta L008F
            ldx #$03
            jsr L89F7
            lda #$00
            sta L008C
            lda #$1D
            sta L008D
            lda #$E0
            sta L008E
            lda #$8A
            sta L008F
            lda #$28
            sta L0097
            ldx #$02
            jsr L8A08
            ldx #$00
            stx L009D
            inx
            stx L009E
            lda #$80
            sta L008C
            lda #$1D
            sta L008D
            lda #$58
            sta L008E
            lda #$8B
            sta L008F
            lda #$3C
            sta L0097
            lda LTEMP
            and #$01
            beq L89A5
            lda #$5E
            sta L008E
            lda #$87
            sta L008F
            lda #$50
            sta L0097
L89A5:      ldx #$03
            jsr L8A08
            lda #$D8
            sta L008C
            lda #$1C
            sta L008D
            lda #$00
            sta L008E
            lda #$1D
            sta L008F
            ldx #$02
            lda #$28
            sta L0097
            jsr L8A23
            lda #$44
            sta L008C
            lda #$1D
            sta L008D
            lda #$80
            sta L008E
            lda #$1D
            sta L008F
            ldx #$03
            lda #$3C
            sta L0097
            lda LTEMP
            and #$01
            beq L89F3
            lda #$50
            sta L0097
            lda #$30
            sta L008C
            lda #$1D
            sta L008D
            lda #$80
            sta L008E
            lda #$1D
            sta L008F
L89F3:      jsr L8A23
            rts
L89F7:      ldy #$00
L89F9:      lda (L008C),Y
            sta (L008E),Y
            iny
            bne L89F9
            inc L008D
            inc L008F
            dex
            bpl L89F9
            rts
L8A08:      ldy L0097
            dey
L8A0B:      lda (L008E),Y
            sta (L008C),Y
            dey
            bpl L8A0B
            inc L008D
            lda L0097
            clc
            adc L008E
            sta L008E
            bcc L8A1F
            inc L008F
L8A1F:      dex
            bpl L8A08
            rts
L8A23:      ldy L0097
L8A25:      lda (L008C),Y
            sta (L008E),Y
            iny
            cpy #$80
            bne L8A25
            inc L008D
            inc L008F
            dex
            bpl L8A23
            rts
L8A36:      .byte $22
            and #$30
            .byte $37
L8A3A:      lda #$63
            sta FMSZPG+3
            lda #$56
            sta L00A0
            lda #$00
            sta COLRSH
            lda #$29
            sta TEMP
            lda #$00
            sta L009F
            lda #$00
            sta L008E
            lda #$22
            sta L008F
            lda #$00
            jsr L8AD8
            lda #$30
            sta L008F
            lda #$03
            jsr L8AD8
            ldx #$37
            stx L008F
            jsr L8AD8
            lda LTEMP
            and #$02
            bne L8AAB
            ldx #$27
L8A73:      lda L889E,X
            sta L2900,X
            dex
            bpl L8A73
            lda #$03
            sta L0097
L8A80:      lda L0097
            tay
            lda #$00
            sta L008E
            lda L8A36,Y
            sta L008F
            sta L008D
            lda #$D8
            sta L008C
            dec L008D
            ldy #$28
            ldx #$06
L8A98:      lda (L008C),Y
            sta (L008E),Y
            iny
            bne L8A98
            inc L008D
            inc L008F
            dex
            bpl L8A98
            dec L0097
            bpl L8A80
            rts
L8AAB:      lda #$C6
            sta L008E
            lda #$88
            sta L008F
            ldx #$00
L8AB5:      lda #$00
            sta L008C
            lda L8A36,X
            sta L008D
            jmp L4BD6
            stx L8C91
            dey
            bpl L8AC0
L8AC7:      lda L008E
            clc
            adc #$2C
            sta L008E
            bcc L8AD2
            inc L008F
L8AD2:      inx
            cpx #$03
            bcc L8AB5
            rts
L8AD8:      ldy #$00
L8ADA:      sta (L008E),Y
            dey
            bne L8ADA
            rts
            .byte $00,$01,$02,$03,$04,$00,$00,$05
            .byte $06,$00,$00,$00,$00,$00,$00,$07
            .byte $08,$00,$00,$09,$0A,$00,$00,$00
            .byte $00,$00,$00,$0B,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$0C,$0D,$0E,$0F
            .byte $10,$11,$12,$13,$14,$15,$16,$17
            .byte $18,$19,$1A,$1B,$1C,$1D,$1E,$1F
            .byte $20,$21,$22,$23,$24,$25,$26,$27
            .byte $28,$00,$29,$2A,$2B,$00,$00,$2C
            .byte $08,$00,$00,$2D,$2E,$2F,$30,$31
            .byte $32,$32,$32,$32,$32,$32,$32,$33
            .byte $32,$34,$32,$35,$36,$37,$38,$39
            .byte $3A,$3B,$32,$3C,$3A,$33,$3D,$3E
            .byte $3F,$40,$41,$42,$43,$44,$45,$46
            .byte $47,$48,$49,$4A,$4B,$4C,$4D,$32
            .byte $00,$00,$00,$00,$01,$02,$03,$04
            .byte $05,$06,$07,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$08,$09,$0A,$00,$00,$00
            .byte $00,$00,$01,$02,$03,$04,$05,$06
            .byte $07,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $08,$09,$0A,$00,$0B,$0C,$0D,$0E
            .byte $0F,$10,$0F,$11,$12,$13,$14,$15
            .byte $16,$17,$18,$19,$1A,$1B,$1C,$00
            .byte $1D,$02,$1E,$1F,$20,$21,$22,$23
            .byte $24,$25,$0B,$0C,$0D,$0E,$0F,$10
            .byte $0F,$11,$12,$13,$14,$15,$16,$17
            .byte $18,$19,$1A,$1B,$1C,$00,$1D,$02
            .byte $1E,$1F,$20,$21,$22,$23,$24,$25
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$26,$27,$28,$29
            .byte $2A,$2B,$2C,$2D,$2E,$2F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$26,$27,$28,$29,$2A,$2B
            .byte $2C,$2D,$2E,$2F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
L8C48:      .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$02
            .byte $02,$02,$0A,$0A,$0A,$2B,$AB,$AA
            .byte $00,$00,$8F,$CF,$FF,$EB,$FE,$FE
            .byte $00,$00,$00,$C0,$C0,$E0,$A0,$A0
            .byte $00,$00,$00,$00,$00,$00,$3C,$3E
            .byte $00,$00,$00,$00,$00,$00,$A0,$A0
            .byte $00,$00,$00,$00,$00,$0C,$0F,$3F
            .byte $00,$00,$00,$00,$00,$00,$00,$80
            .byte $0C
L8C91:      .byte $3F,$2F,$2B,$2F,$2F,$2F,$BF,$00
            .byte $00,$80,$A3,$AF,$AF,$AF,$EF,$00
            .byte $00,$00,$00,$00,$00,$00,$30,$00
            .byte $00,$00,$00,$00,$00,$3C,$2F,$03
            .byte $0F,$0B,$0F,$2F,$2F,$EF,$EB,$80
            .byte $A8,$E8,$EC,$FC,$F8,$FA,$FA,$00
            .byte $00,$00,$00,$00,$00,$80,$80,$00
            .byte $00,$02,$2A,$BF,$FF,$FE,$FB,$02
            .byte $AA,$AA,$AB,$EB,$AF,$BF,$FF,$AA
            .byte $EE,$BF,$EF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$BF,$FF,$FF,$FF,$FF,$FF,$A8
            .byte $E8,$E8,$FE,$FA,$EB,$FF,$FF,$00
            .byte $00,$00,$00,$FF,$FA,$FB,$FF,$00
            .byte $00,$F3,$FF,$BF,$BF,$BF,$BF,$3A
            .byte $FE,$FA,$FE,$EA,$FA,$EA,$EF,$A8
            .byte $A8,$A8,$B8,$EA,$AA,$AA,$EF,$00
            .byte $00,$00,$00,$80,$80,$A0,$E3,$00
            .byte $00,$03,$0F,$0F,$CF,$FF,$FE,$C0
            .byte $F0,$E8,$E8,$A8,$E8,$BE,$FB,$00
            .byte $00,$00,$00,$80,$A0,$A0,$F8,$00
            .byte $00,$00,$00,$00,$00,$03,$03,$00
            .byte $00,$08,$2A,$3F,$3F,$FF,$FA,$3F
            .byte $AF,$AF,$BF,$FF,$FF,$FF,$FF
L8D48:      .byte $A0,$A0,$AA,$FE,$FF,$FF,$FF,$BE
            .byte $00,$00,$80,$80,$80,$E0,$BC,$AC
            .byte $00,$00,$00,$00,$02,$3E,$3E,$FF
            .byte $AF,$BF,$AF,$AF,$BF,$FF,$FF,$FF
            .byte $FF,$BE,$BA,$FB,$FF,$FF,$FF,$FA
            .byte $00,$00,$00,$FC,$FC,$FF,$AB,$AA
            .byte $00,$00,$00,$00,$00,$C0,$C0,$F0
            .byte $00,$00,$00,$00,$00,$00,$03,$0B
            .byte $00,$00,$00,$00,$C0,$FE,$FF,$FF
            .byte $00,$00,$00,$00,$03,$03,$0F,$0F
            .byte $33,$3F,$FB,$FE,$FF,$FF,$FF,$FF
            .byte $00,$30,$E0,$F0,$F0,$F0,$F8,$FC
            .byte $00,$00,$00,$00,$00,$3C,$3E,$3E
            .byte $00,$00,$00,$00,$00,$0F,$0F,$0F
            .byte $2F,$2F,$2B,$EF,$EF,$BF,$BF,$BF
            .byte $FF,$EF,$FF,$BF,$BF,$FF,$FF,$FB
            .byte $FA,$FA,$EA,$AA,$EA,$AE,$FF,$FF
            .byte $80,$80,$80,$A8,$BA,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $BF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FB,$FE,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FB,$FF,$FF,$FF,$FF
            .byte $BA,$FE,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $0F,$2F,$AE,$BF,$FF,$FF,$FF,$FF
            .byte $EA,$EA,$AF,$FF,$FF,$FF,$FF,$FF
            .byte $AF,$FF,$FF,$EF,$FF,$FF,$FF,$FF
            .byte $FE,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FC,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $EB,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $F0,$FC,$FE,$FF,$FF,$FF,$FF,$FF
            .byte $2B,$BB,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FE,$FA,$FF,$FB,$FE,$FB,$FF,$FF
L8E48:      .byte $00,$00,$A0,$AB,$AA,$BA,$FB,$FF
            .byte $3F,$BF,$BF,$BF,$BE,$FE,$FA,$FA
            .byte $FF,$FB,$BF,$BF,$BF,$FF,$BF,$AF
            .byte $FC,$FE,$FE,$FA,$FF,$FF,$FF,$FF
            .byte $00,$80,$C0,$FC,$FF,$FE,$FF,$FF
            .byte $0A,$2B,$2E,$AE,$FF,$FF,$FF,$FF
            .byte $FB,$FF,$EF,$FF,$FF,$FF,$FF,$FF
            .byte $A0,$E8,$E8,$FA,$BF,$FF,$FF,$FF
            .byte $00,$00,$03,$0B,$FE,$EF,$FF,$FF
            .byte $00,$02,$CB,$FF,$FF,$FF,$FF,$FF
            .byte $EF,$EE,$EE,$AF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$BF,$FF,$FF,$FF,$FF
            .byte $EF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $AF,$EB,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
L8F48:      .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
L9020:      .byte $4E,$4E,$4E,$4E,$4E,$4F,$4F,$4F
            .byte $4F,$4F,$4F,$4F,$4F,$50,$50,$50
L9030:      .byte $6E,$8D,$AC,$CB,$EA,$09,$28,$47
            .byte $66,$85,$A4,$C3,$E2,$01,$20,$3F
L9040:      .byte $1D,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $28,$2C,$14,$2A,$2A,$54,$5C,$38
            .byte $7C,$7E,$3E,$3C,$1C,$08,$2E,$1D
            .byte $00,$00,$00,$00,$10,$10,$42,$52
            .byte $10,$04,$04,$2A,$3E,$1C,$58,$7C
            .byte $3E,$7E,$7F,$FF,$FE,$3C,$7E,$7E
            .byte $3C,$18,$3C,$18,$08,$33,$1D,$00
            .byte $00,$08,$08,$00,$14,$28,$29,$15
            .byte $4A,$4A,$20,$15,$1D,$BA,$BE,$7C
            .byte $7C,$3A,$7B,$1F,$DE,$7E,$3E,$7E
            .byte $3E,$3C,$1C,$08,$2E,$1D,$00,$00
            .byte $00,$04,$08,$1C,$3E,$3E,$1A,$14
            .byte $08,$18,$18,$3C,$3C,$6E,$76,$34
            .byte $00,$48,$7C,$7C,$FE,$DE,$58,$78
            .byte $3C,$3C,$18,$2E,$1D,$00,$00,$14
            .byte $1E,$3E,$1C,$08,$00,$00,$10,$38
            .byte $5C,$6C,$3E,$2E,$04,$10,$78,$FC
            .byte $DE,$6E,$3C,$18,$00,$00,$00,$00
            .byte $00,$00,$2E,$1D,$00,$10,$38,$70
            .byte $20,$00,$00,$10,$38,$7C,$3C,$28
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$2E,$1D,$20,$70,$20,$00,$00
            .byte $08,$1C,$38,$10,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
L9118:      .byte $2E
L9119:      .byte $4C,$4D,$4D,$4D,$4D,$4D,$4D
L9120:      .byte $4D
L9121:      .byte $F0,$02,$14,$26,$38,$4A,$5C,$6E
            .byte $10,$00,$08,$00,$2A,$1C,$5D,$3E
            .byte $FF,$7E,$3C,$5E,$1D,$28,$02,$08
            .byte $00,$66,$10,$00,$00,$00,$00,$08
            .byte $1C,$1C,$3E,$1C,$3C,$1E,$14,$00
            .byte $00,$00,$00,$F6,$10,$00,$08,$1C
            .byte $3E,$5C,$7C,$3E,$FF,$7E,$3C,$7E
            .byte $3C,$7E,$3A,$08,$00,$46,$10,$00
            .byte $00,$10,$44,$12,$B8,$1C,$38,$7D
            .byte $38,$90,$22,$08,$10,$00,$00,$96
            .byte $10,$00,$00,$01,$50,$18,$24,$C4
            .byte $42,$44,$24,$B8,$01,$10,$00,$00
            .byte $00,$C6,$10,$00,$81,$08,$00,$02
            .byte $00,$80,$01,$00,$40,$00,$04,$A1
            .byte $00,$10,$00,$74
L9195:      .byte $32,$00,$04,$00,$FE,$70,$1E,$00
            .byte $02,$00,$FE,$70,$00,$00,$00,$00
            .byte $00,$00,$20,$00,$02,$00,$FE,$70
L91AD:      .byte $B3,$C1,$CF
L91B0:      .byte $91,$91,$91,$0C,$00,$10,$38,$FE
            .byte $38,$10,$00,$00,$00,$00,$00,$00
            .byte $56,$0C,$00,$10,$70,$58,$EC,$3C
            .byte $1C,$02,$00,$00,$00,$00,$5A,$0C
            .byte $00,$00,$54,$38,$28,$28,$38,$38
            .byte $10,$10,$00,$00
            lsr LE2A5,X
            bpl L9255
            bit L9C2B
            bne L91FB
            and #$3F
            lsr
            tay
            cpy #$08
            bcs L9244
            lda L9121,Y
            sta L008C
            lda L9119,Y
            sta L008D
            jmp L9213
L91FB:      and #$1F
            tay
            cpy #$10
            bcs L9244
            lda L9030,Y
            sta L008C
            lda L9020,Y
            sta L008D
            lda L00A4
            clc
            adc L00E0
            sta L00E0
L9213:      inc L00E2
            lda L00E1
            sta L0094
            sta L0095
            ldx #$03
            ldy L00E0
            jsr LBA80
            ldy #$00
            lda (L008C),Y
            tax
            ldy L00E1
            lda #$01
            jsr L940F
            ldy #$00
            lda (L008C),Y
            tay
            iny
            lda (L008C),Y
            sta L092F
            lda L00E0
            sta L0B2F
            lda #$01
            sta L212F
            rts
L9244:      ldy L00E1
            lda L9040
            sta L0097
            ldx #$03
            jsr LBB21
            lda #$00
            sta L00E2
            rts
L9255:      bit L9C2B
            beq L925D
            jmp L92FA
L925D:      cmp #$00
            beq L9264
            dec L00E2
            rts
L9264:      lda LMARGN
            beq L927F
            lda #$FF
            sta COLAC+1
            ldx #$06
L926E:      lda L00C5,X
            and #$38
            cmp #$08
            beq L92D4
L9276:      dex
            bpl L926E
            lda #$40
            ldx COLAC+1
            bpl L9286
L927F:      rts
L9280:      lda #$FF
            sta COLAC+1
            lda #$60
L9286:      sta L00E2
            lda #$04
            clc
            adc L00BE,X
            sta L00E1
            lda #$04
            clc
            adc L00B7,X
            sta L00E0
            ldy COLAC+1
            bpl L929E
            ldy #$05
            bne L92BC
L929E:      sec
            sbc FMSZPG+3
            bcs L92B1
            eor #$FF
            clc
            adc #$01
            cmp #$10
            bcc L92BA
            ldy #$17
            jmp L92BC
L92B1:      cmp #$20
            bcc L92BA
            ldy #$0B
            jmp L92BC
L92BA:      ldy #$11
L92BC:      ldx #$05
L92BE:      lda L9195,Y
            sta L00E6,X
            dey
            dex
            bpl L92BE
            lda #$02
            sta L00E3
            lda #$00
            sta L00E4
            lda #$00
            sta L00E5
            rts
L92D4:      lda L00C8
            bne L92DE
            lda L00C1
            cmp L00BE,X
            bcs L9276
L92DE:      lda L00C5,X
            and #$C0
            cmp #$C0
            bne L92F1
            lda L00B7,X
            sec
            sbc #$14
            cmp FMSZPG+3
            bcs L9280
            bcc L9276
L92F1:      ldy COLAC+1
            bpl L92F7
            stx COLAC+1
L92F7:      jmp L9276
L92FA:      lda L00E6
            clc
            adc L00E7
            sta L00E7
            bcc L9320
            lda L00E8
            sta L00B3
            lda L00EB
            clc
            adc L00E9
            sta L00E9
            lda L00EA
            adc L00E8
            sta L00E8
            eor L00B3
            bpl L9320
            lda #$00
            sta L00EA
            sta L00EB
            sta L00E8
L9320:      lda #$20
            clc
            adc L00E5
            sta L00E5
            bcc L9336
            lda #$80
            clc
            adc L00E4
            sta L00E4
            lda L00E3
            adc #$01
            sta L00E3
L9336:      lda L00E1
            sta L0094
            lda L00E3
            clc
            adc L00E1
            sta L00E1
            sta L0095
            cmp #$C3
            bcs L938F
            lda L00E8
            clc
            adc L00E0
            sta L00E0
            lda L00E2
            and #$1F
            lsr
            lsr
            tay
            lda L91AD,Y
            sta L008C
            lda L91B0,Y
            sta L008D
            iny
            cpy #$03
            bcs L9366
            inc L00E2
L9366:      ldy L00E0
            ldx #$03
            jsr LBA80
            ldy #$00
            lda (L008C),Y
            tax
            ldy L00E1
            lda #$00
            jsr L940F
            ldy #$00
            lda (L008C),Y
            tay
            iny
            lda (L008C),Y
            sta L092F
            lda L00E0
            sta L0B2F
            lda #$02
            sta L212F
            rts
L938F:      lda L00E2
            bit L9C2C
            bne L93A2
L9396:      lda L00E0
            sec
            sbc #$04
            sta L00E0
            lda #$C0
            sta L00E2
            rts
L93A2:      lda L00E0
            sec
            sbc #$44
            sec
            sbc L009F
            lsr
            lsr
            pha
            tay
            ldx #$11
L93B0:      lda (COLRSH),Y
            cmp #$0B
            bcs L93E4
            iny
            dex
            bpl L93B0
            lda #$D2
            sta L008C
            lda #$AA
            sta L008D
            lda COLRSH
            adc #$08
            sta ROWAC+1
            lda TEMP
            adc #$00
            sta COLAC
            pla
            clc
            adc ROWAC+1
            sta ROWAC+1
            bcc L93D8
            inc COLAC
L93D8:      jsr LAC49
            lda #$0C
            clc
            adc L00E1
            sta L00E1
            bne L9396
L93E4:      cpx #$08
            bcc L940B
            cpx #$0A
            bcs L940B
            cmp #$57
            beq L93FC
            cmp #$59
            beq L93FC
            cmp #$56
            beq L93FC
            cmp #$51
            bne L940B
L93FC:      tya
            clc
            adc COLRSH
            sta ROWAC+1
            lda TEMP
            adc #$00
            sta COLAC
            jsr LA63C
L940B:      pla
            jmp L9396
L940F:      cpy #$40
            bcc L941A
            sta L20C0,Y
            dey
            dex
            bpl L940F
L941A:      rts
L941B:      lda L00C8
            beq L9430
            ldy L00C1
            ldx #$0E
            lda #$00
L9425:      cpy #$40
            bcc L9430
            sta L20C0,Y
            dey
            dex
            bpl L9425
L9430:      rts
            .byte $0F,$00,$00,$00,$00,$60,$60,$A0
            .byte $80,$A0,$60,$60,$00,$00,$00,$00
            .byte $0F,$00,$00,$00,$40,$E0,$E0,$A0
            .byte $00,$A0,$E0,$E0,$40,$00,$00,$00
            .byte $14,$1C,$1C,$0A,$02,$0A,$1C,$1C
            .byte $14,$08,$1E,$1E,$0A,$00,$0A,$1E
            .byte $1E,$08
L9463:      .byte $31,$41
L9465:      .byte $94,$94
L9467:      .byte $51,$5A
L9469:      .byte $94,$94,$0C,$00,$00,$00,$00,$00
            .byte $64,$FE,$FE,$7E,$7C,$00,$00,$09
            .byte $40,$18,$74,$22,$60,$67,$9B,$01
            .byte $00
L9482:      .byte $80
L9483:      lda FMSZPG+6
            bpl L948A
            jmp L962C
L948A:      lda RMARGN
            eor #$01
            sta RMARGN
            lda FMSZPG+5
            sta ZCHAIN
            lda COLCRS
            bit L9482
            beq L949E
            jmp L959B
L949E:      lda LTEMP
            and #$02
            beq L94A7
            jmp L957F
L94A7:      lda FMSZPG+3
            sec
            sbc #$1A
            sec
            sbc L009F
            lsr
            lsr
            tay
            lda (COLRSH),Y
            beq L94BA
            cmp #$0A
            bcc L94BD
L94BA:      jmp L95DD
L94BD:      adc #$C0
            sta L00B5
            iny
            lda (COLRSH),Y
            cmp #$0A
            bcs L94BA
            iny
            lda (COLRSH),Y
            beq L94BA
            cmp #$0A
            bcs L94BA
            adc #$BD
            sta L00B6
            iny
            lda (COLRSH),Y
            beq L94BA
            cmp #$0A
            bcs L94BA
            iny
            lda (COLRSH),Y
            cmp #$4B
            bcs L94BA
L94E5:      lda L00B6
            sec
            sbc L00B5
            clc
            adc #$03
            lsr
            cmp #$20
            bcc L94F4
            ora #$80
L94F4:      sec
            sbc #$08
            clc
            adc L00B5
            sta FMSZPG+5
L94FC:      lda #$6B
            sta L008C
            lda #$94
            sta L008D
            ldx #$01
            lda ZCHAIN
            ldy FMSZPG+5
            jsr LB9FC
            ldx RMARGN
            lda L9463,X
            sta L008C
            lda L9465,X
            sta L008D
            ldx #$00
            lda ROWCRS
            bne L9521
            lda L00B5
L9521:      ldy L00B5
            sty ROWCRS
            jsr LB9FC
            ldx RMARGN
            lda L9467,X
            sta L00B3
            lda L9469,X
            sta L00B4
            ldy #$08
            ldx L00B6
L9538:      lda (L00B3),Y
            ora L0400,X
            sta L0400,X
            dex
            dey
            bpl L9538
            lda #$78
            sta L008C
            lda #$94
            sta L008D
            lda FMSZPG+5
            sec
            sbc #$04
            tay
            lda ZCHAIN
            bne L9559
            tya
            bne L955C
L9559:      sec
            sbc #$04
L955C:      ldx #$00
            jsr LB9FC
            lda FMSZPG+3
            clc
            adc #$06
            sta FMSZPG+4
            lda #$01
            sta ATRACT
            lda #$01
            sta DRKMSK
            lda #$00
            sta DSTAT
            ldx L00B0
            lda ICBLHZ
            bpl L957C
            ldx L00B1
L957C:      stx ZCHAIN+1
            rts
L957F:      lda FMSZPG+3
            sec
            sbc #$1B
            clc
            sbc L009F
            lsr
            lsr
            lsr
            eor #$FF
            clc
            adc #$01
            adc #$D4
            sta L00B5
            sec
            sbc #$04
            sta L00B6
            jmp L94E5
L959B:      lda #$48
            clc
            adc SAVMSC
            sta SAVMSC
            bcc L95B1
            lda #$80
            clc
            adc DINDEX
            sta DINDEX
            lda COLCRS+1
            adc #$01
            sta COLCRS+1
L95B1:      lda COLCRS+1
            clc
            adc FMSZPG+5
            sta FMSZPG+5
            ldx LTEMP
            cpx #$02
            bcs L95EF
            clc
            adc #$06
            cmp #$C7
            bcs L95CF
L95C5:      sta L00B5
            sec
            sbc #$03
            sta L00B6
            jmp L94FC
L95CF:      ldx COLCRS+1
            bmi L95C5
            lda COLCRS
            eor L9482
            sta COLCRS
            jmp L949E
L95DD:      clc
            adc #$03
            cmp #$49
            bcs L95EB
            lda #$0C
            clc
            adc FMSZPG+5
            sta FMSZPG+5
L95EB:      jsr L9623
            rts
L95EF:      lda FMSZPG+3
            sec
            sbc #$1B
            clc
            sbc L009F
            lsr
            lsr
            lsr
            eor #$FF
            clc
            adc #$01
            clc
            adc #$D0
            cmp FMSZPG+5
            bcs L9614
            ldx COLCRS+1
            bmi L9614
            lda COLCRS
            eor L9482
            sta COLCRS
            jmp L957F
L9614:      lda FMSZPG+5
            clc
            adc #$06
            sta L00B5
            sec
            sbc #$03
            sta L00B6
            jmp L94FC
L9623:      lda FMSZPG+6
            bmi L962B
            lda #$80
            sta FMSZPG+6
L962B:      rts
L962C:      and #$7F
            bne L964D
            pha
            lda #$03
            clc
            adc FMSZPG+5
            sta FMSZPG+5
            jsr L8421
            ldy #$05
            tya
            jsr LBCA8
            ldx #$00
            ldy #$D8
            lda #$40
            sta L0097
            jsr LBA44
            pla
L964D:      lsr
            tay
            cmp #$0E
L9651:      bcc L965C
            lda #$00
            sta FMSZPG+3
            sta FMSZPG+4
            inc BFENHI
            rts
L965C:      jmp L4A8A
            sta L008C
            lda L96BE,Y
            sta L008D
L9666:      ldy #$21
            lda (L008C),Y
            sta ZCHAIN+1
            lda FMSZPG+5
            tay
            ldx #$00
            stx LMARGN
            jsr LB9FC
            lda FMSZPG+6
            and #$7F
            lsr
            tay
            inc FMSZPG+6
            cpy #$06
            bcc L9692
            lda FMSZPG+3
            clc
            adc #$16
            sta FMSZPG+4
            lda #$01
            sta ATRACT
            sta DRKMSK
            jmp L96A1
L9692:      lda FMSZPG+3
            clc
            adc #$0E
            sta FMSZPG+4
            lda #$03
            sta ATRACT
            lda #$01
            sta DRKMSK
L96A1:      jmp L4ABD
            sta L008C
            lda L9960,Y
            sta L008D
L96AB:      ldy #$00
            lda (L008C),Y
            tay
            iny
            lda (L008C),Y
            sta DSTAT
            lda FMSZPG+5
            tay
            ldx #$01
            jsr LB9FC
            rts
L96BE:      .byte $97,$96,$97,$96,$96,$97,$97,$97
            .byte $97,$98,$98,$98,$98,$99,$1E,$DA
            .byte $1E,$DA,$FC,$1E,$62,$A6,$EA,$2E
            .byte $72,$B6,$FA,$3E,$20,$00,$00,$00
            .byte $00,$00,$00,$00,$10,$10,$14,$04
            .byte $13,$02,$10,$03,$2B,$47,$47,$13
            .byte $10,$55,$45,$05,$00,$5D,$57,$45
            .byte $24,$4B,$52,$04,$00,$00,$20,$00
            .byte $10,$14,$10,$04,$14,$03,$12,$40
            .byte $00,$03,$13,$12,$54,$40,$00,$00
            .byte $01,$19,$13,$34,$08,$07,$42,$1C
            .byte $10,$14,$34,$4B,$52,$15,$11,$00
            .byte $20,$00,$00,$00,$00,$00,$00,$00
            .byte $08,$08,$00,$0A,$0A,$14,$5C,$48
            .byte $24,$3E,$1B,$0B,$0E,$5C,$3C,$3E
            .byte $1D,$0B,$1E,$16,$3C,$3E,$2A,$49
            .byte $49,$5F,$20,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$04,$00
            .byte $12,$0E,$0D,$07,$03,$05,$03,$01
            .byte $06,$02,$03,$01,$00,$01,$03,$06
            .byte $03,$05,$0A,$5F,$20,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$80,$00,$80
            .byte $C0,$A0,$42,$E4,$EC,$F0,$F8,$F8
            .byte $F0,$F0,$E0,$C0,$64,$F8,$F8,$F0
            .byte $D0,$E0,$60,$D0,$90,$5F,$20,$00
            .byte $00,$41,$61,$62,$73,$39,$3B,$1E
            .byte $1E,$0D,$57,$3F,$3E,$1F,$1E,$0E
            .byte $0D,$15,$03,$2B,$3B,$1B,$1F,$3D
            .byte $7E,$7E,$3F,$3F,$1F,$0E,$04,$5F
            .byte $20,$00,$40,$42,$22,$34,$2C,$98
            .byte $7C,$E5,$DB,$9E,$7C,$7E,$FE,$FC
            .byte $FC,$FC,$F8,$F8,$FC,$FA,$D8,$D6
            .byte $ED,$FE,$FF,$FE,$7C,$FE,$FC,$EC
            .byte $48,$5F,$20,$00,$08,$1C,$3C,$3E
            .byte $1E,$1E,$0F,$0B,$17,$0B,$05,$00
            .byte $16,$07,$0F,$0F,$05,$05,$03,$0C
            .byte $1E,$3E,$13,$17,$0F,$1F,$3F,$1F
            .byte $0F,$0F,$06,$5F,$20,$00,$03,$06
            .byte $0E,$1C,$34,$68,$7C,$3C,$D8,$F8
            .byte $F8,$D0,$EC,$2E,$B7,$DB,$FB,$FE
            .byte $FC,$FF,$FE,$EE,$5C,$58,$A8,$F4
            .byte $FE,$7C,$F4,$38,$10,$5F,$20,$00
            .byte $00,$00,$00,$00,$0D,$1F,$35,$3B
            .byte $1B,$0D,$0D,$06,$03,$03,$01,$00
            .byte $05,$05,$12,$0A,$1D,$3B,$1D,$77
            .byte $2F,$6F,$37,$3B,$1F,$0E,$06,$5F
            .byte $20,$00,$00,$00,$00,$00,$88,$DC
            .byte $FE,$FF,$FF,$FE,$FC,$F8,$D8,$B0
            .byte $A0,$E8,$D0,$D0,$E0,$E8,$DC,$6E
            .byte $DE,$FC,$FA,$FE,$FF,$FF,$FE,$7C
            .byte $30,$5F,$20,$00,$00,$00,$00,$00
            .byte $0D,$1F,$3F,$3F,$73,$67,$33,$75
            .byte $3E,$1A,$39,$37,$1B,$13,$01,$00
            .byte $01,$03,$02,$06,$0E,$1F,$07,$03
            .byte $01,$01,$00,$5F,$20,$00,$00,$00
            .byte $00,$00,$88,$DC,$FC,$FE,$FE,$FF
            .byte $EA,$F7,$F3,$F7,$EE,$DE,$B2,$A4
            .byte $E0,$C0,$E0,$70,$F0,$F8,$F8,$FE
            .byte $7C,$F8,$F0,$E0,$E0,$5F,$20,$00
            .byte $00,$00,$00,$00,$08,$1C,$3E,$76
            .byte $27,$5B,$59,$6C,$24,$14,$3C,$19
            .byte $00,$01,$00,$00,$01,$00,$00,$00
            .byte $02,$00,$01,$00,$00,$00,$00,$5F
            .byte $20,$00,$00,$00,$00,$08,$1C,$3C
            .byte $66,$6A,$5E,$DA,$D2,$9C,$88,$C0
            .byte $60,$E0,$C0,$60,$C0,$80,$40,$00
            .byte $80,$C0,$40,$80,$20,$00,$00,$00
            .byte $00,$5F,$20,$20,$70,$E8,$34,$74
            .byte $28,$0A,$00,$04,$00,$01,$00,$00
            .byte $01,$00,$01,$02,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$5F,$20,$08,$1C,$38
            .byte $24,$5C,$50,$28,$00,$00,$40,$00
            .byte $00,$80,$00,$C0,$40,$A0,$00,$80
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$5F,$20,$30
            .byte $68,$B0,$60,$00,$00,$02,$01,$01
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$5F
            .byte $20,$30,$58,$30,$00,$00,$00,$40
            .byte $00,$80,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$5F
L9960:      .byte $99,$99,$99,$99,$99,$99,$97,$97
            .byte $97,$98,$98,$98,$98,$99,$7C,$9E
            .byte $7C,$9E,$C0,$E2,$40,$84,$C8,$0C
            .byte $50,$94,$D8,$1C,$20,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$98,$20,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$18,$1C,$3C,$48,$0A,$2A
            .byte $78,$6A,$56,$1E,$38,$30,$14,$18
            .byte $18,$00,$00,$00,$00,$00,$00,$98
            .byte $20,$00,$00,$00,$00,$00,$00,$2A
            .byte $28,$40,$0A,$2A,$60,$43,$31,$CB
            .byte $7E,$FA,$BE,$20,$08,$04,$14,$10
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$98,$20,$89,$89,$20,$25,$08
            .byte $08,$10,$14,$44,$E2,$A2,$40,$40
            .byte $10,$10,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$98
L9A04:      jmp L4B56
            .byte $02
            bne L9A2E
            lda DELTAR
            bne L9A2E
            ldx #$03
L9A10:      lda OLDCHR,X
            beq L9A19
            dex
            bpl L9A10
            bmi L9A2E
L9A19:      lda FMSZPG+3
            clc
            adc #$08
            sta SAVMSC+1,X
            lda FMSZPG+5
            sec
            sbc #$0E
            sta OLDCHR,X
            ldy #$07
            lda #$B0
            jsr LAFE8
L9A2E:      lda ADRESS+1
            bne L9A76
            inc ADRESS+1
            lda #$0E
            sta MLTTMP
            lda FMSZPG+3
            clc
            adc #$12
            sta PALNTS
            adc #$28
            sta ADRESS
            lda PALNTS
            sec
            sbc #$20
            sec
            sbc L009F
            lsr
            lsr
            clc
            adc COLRSH
            sta MLTTMP+1
            lda FMSZPG+5
            sec
            sbc #$02
            sta LOGCOL
            tax
            lda LTEMP
            and #$02
            bne L9A6E
            lda DELTAR
            bne L9A6E
            lda #$03
            sta L0600,X
            sta L05FF,X
            bne L9A76
L9A6E:      lda #$03
            sta DDEVIC,X
            sta SSFLAG,X
L9A76:      rts
L9A77:      lda COLCRS
            bit L9482
            bne L9A96
            ora L9482
            sta COLCRS
            lda #$FD
            sta COLCRS+1
            lda #$00
            sta DINDEX
            lda #$00
            sta SAVMSC
            ldy #$1B
            lda #$B0
            jsr LAFE8
L9A96:      rts
L9A97:      lda SOUNDR
            beq L9AC3
            cmp FMSZPG+3
            bcs L9AC3
            lda ICBLHZ
            and #$E0
            ora FEOF
            cmp ICBLHZ
            beq L9AC3
            sta ICBLHZ
            ora #$A0
            sta L3F15
            lda BUFRLO
            sta ICPTHZ
            lda BUFRHI
            sta ICBLLZ
            lda FREQ
            sta BITMSK
            ldy #$75
            lda #$B0
            jsr LAFE8
L9AC3:      lda LTEMP
            and #$02
            bne L9AF0
            lda FMSZPG+3
            sec
            sbc #$28
            sec
            sbc L009F
            lsr
            lsr
            sta L0097
            clc
            adc COLRSH
            pha
            sec
            sbc HOLD1
            sta L0098
            beq L9AED
L9AE0:      ldy L0097
            lda (COLRSH),Y
            jsr LB9B6
            dec L0097
            dec L0098
            bne L9AE0
L9AED:      pla
            sta HOLD1
L9AF0:      lda LMARGN
            beq L9B19
            lda SAVADR
            beq L9B07
            ldx RAMTOP
            lda #$00
            sta SAVADR
            sta RAMTOP
            cpx #$03
            bcc L9B07
            jsr L9A04
L9B07:      jmp L4B63
            .byte $82
            sty L00D0,X
            .byte $07
            lda SAVADR+1
            beq L9B19
            jsr L9A77
            lda #$00
            sta SAVADR+1
L9B19:      rts
L9B1A:      lda #$80
            sta FKDEF+1
            ldy #$03
L9B20:      ldx OLDCHR,Y
            beq L9B44
            cpx #$42
            bcc L9B4D
            lda SAVMSC+1,Y
            beq L9B4D
            jmp L4AFB
            .byte $00,$03
            sta SSFLAG,X
            lda FKDEF+1
            sta ATACHR,X
            sta CHAR,X
L9B3D:      txa
            sec
            sbc #$05
            sta OLDCHR,Y
L9B44:      lsr FKDEF+1
            lsr FKDEF+1
            dey
            bpl L9B20
            bmi L9B5D
L9B4D:      jmp L4B1A
            .byte $00,$03
            sta SSFLAG,X
L9B55:      sta OLDCHR,Y
            sta SAVMSC+1,Y
            beq L9B44
L9B5D:      lda ADRESS+1
            beq L9B85
            cmp #$02
            bcs L9B86
            ldy PALNTS
            tya
            clc
            adc #$05
            cmp ADRESS
            bcs L9BEB
            sta PALNTS
            lda LTEMP
            and #$02
            beq L9B85
            dec LOGCOL
            ldx LOGCOL
            lda #$00
            sta DUNIT,X
            lda #$03
            sta SSFLAG,X
L9B85:      rts
L9B86:      bne L9B8F
            ldy #$53
            lda #$B0
            jsr LAFE8
L9B8F:      lda ADRESS+1
            cmp #$09
            bcs L9BC5
            tax
            lda L00A4
            clc
            adc PALNTS
            sta PALNTS
            inc ADRESS+1
            lda L9118,X
            sta L008D
            lda L9120,X
            sta L008C
            ldy #$11
            lda (L008C),Y
            sta MLTTMP
            ldy LOGCOL
            lda LTEMP
            and #$02
            bne L9BBF
L9BB7:      lda DELTAR
            bne L9BBF
            ldx #$02
            bne L9BC1
L9BBF:      ldx #$04
L9BC1:      jsr LB9FC
            rts
L9BC5:      lda #$00
            sta ADRESS+1
            sta PALNTS
            lda #$10
            sta L0097
            ldy LOGCOL
            lda LTEMP
            and #$02
            bne L9BDB
            lda DELTAR
            beq L9BDF
L9BDB:      ldx #$04
            bne L9BE1
L9BDF:      ldx #$02
L9BE1:      jsr LBA44
            rts
L9BE5:      lda LOGCOL
            cmp #$B4
            bcc L9BF5
L9BEB:      inc ADRESS+1
            lda #$08
            clc
            adc LOGCOL
            sta LOGCOL
            rts
L9BF5:      lda #$00
            rts
L9BF8:      .byte $53,$63,$73
L9BFB:      sec
            lsr COLAC,X
L9BFE:      lda LMARGN
            beq L9C2A
            ldx L00B2
            lda L00A0
            cmp L9BFB,X
            beq L9C19
            bcs L9C11
            adc #$01
            bne L9C13
L9C11:      sbc #$01
L9C13:      sta L00A0
            and #$01
            bne L9C2A
L9C19:      lda FMSZPG+3
            cmp L9BF8,X
            beq L9C2A
            bcs L9C26
            adc #$01
            bne L9C28
L9C26:      sbc #$01
L9C28:      sta FMSZPG+3
L9C2A:      rts
L9C2B:      rti
L9C2C:      .byte $20
L9C2D:      .byte $10
L9C2E:      .byte $08
L9C2F:      .byte $04
L9C30:      .byte $02
L9C31:      ora (FREQ,X)
            bvc L9C95
            bvs L9BB7
            ldy #$B0
L9C39:      bmi L9C6B
            bmi L9C6D
            bmi L9C6F
            bmi L9CB9
            sei
            sei
            bvc L9C95
            bvc L9C97
L9C47:      .byte $00,$01,$01,$01,$00,$00,$FF
L9C4E:      .byte $9C,$9C,$9C,$54,$65,$76,$0F,$00
            .byte $00,$08,$1C,$14,$14,$00,$36,$3E
            .byte $77,$55,$22,$22,$00,$00,$38,$0F
            .byte $00,$00,$08,$1C,$18
L9C6B:      .byte $18,$00
L9C6D:      .byte $3E,$3E
L9C6F:      .byte $77,$55,$22,$00,$00,$00,$38,$0F
            .byte $00,$00,$08,$1C,$0C,$0C,$00,$3E
            .byte $3E,$77,$55,$00,$00,$00,$00,$38
L9C87:      .byte $9C,$9C,$9C,$8D,$9A,$A7,$0B,$00
            .byte $18,$3C,$3C,$3E,$5E,$4E
L9C95:      .byte $2C,$3C
L9C97:      .byte $18,$00,$1C,$0B,$00,$18,$3C,$3C
            .byte $7E,$7E,$66,$24,$3C,$18,$00,$1C
            .byte $0B,$00,$18,$3C,$3C,$7C,$7A,$72
            .byte $34,$3C,$18,$00,$1C
L9CB4:      .byte $9C,$9C,$9C,$BA,$C9
L9CB9:      .byte $D8
L9CBA:      .byte $0D,$06,$0F,$0F,$0B,$6B,$F6,$F0
            .byte $B6,$BF,$6B,$0B,$06,$00,$6C,$0D
            .byte $66,$E7
L9CCC:      .byte $EF,$AB,$AB,$66,$18,$3C,$3C,$2C
            .byte $2C,$18,$00
            ldy L600D,X
            beq L9CCC
            bne L9CB4
            ror L6D0F
            sbc LD0D6,X
            rts
            .byte $00,$78
L9CE7:      ldx #$06
            stx COLAC+1
L9CEB:      ldx COLAC+1
            lda L00C5,X
            bne L9CF9
L9CF1:      dec COLAC+1
            bpl L9CEB
            jsr L941B
            rts
L9CF9:      bit L9C2D
            beq L9D01
            jmp L9E82
L9D01:      ldy L0083
            bne L9D14
            ldy LMARGN
            beq L9D14
            ldy #$C3
            lda #$B0
            jsr LAFEC
            ldx COLAC+1
            lda L00C5,X
L9D14:      cmp #$80
            bcc L9D49
            bit L9C2B
            bne L9D30
            and #$07
            jmp L49FB
            .byte $9C
            sta L008C
            lda L9C87,Y
            sta L008D
L9D2A:      iny
            cpy #$03
            jmp L9D5F
L9D30:      and #$07
            jmp L4A6F
            .byte $9C
            sta L008C
            lda L9CB4,Y
            sta L008D
L9D3D:      lda L00D3,X
            and #$01
            bne L9D6B
            iny
            cpy #$03
            jmp L9D5F
L9D49:      and #$07
            jmp L4A1A
            .byte $9C
            sta L008C
            lda L9C4E,Y
            sta L008D
L9D56:      lda L00D3,X
            and #$01
            beq L9D6B
            iny
            cpy #$03
L9D5F:      bne L9D69
            lda L00C5,X
            and #$F8
            sta L00C5,X
            bne L9D6B
L9D69:      inc L00C5,X
L9D6B:      lda L00C5,X
            bit L9C2C
            bne L9D75
            jmp L9F1C
L9D75:      inc L00D3,X
            bit L9C2E
            bne L9DA4
            lda L00BE,X
            sta L0094
            clc
            adc #$02
            sta L0095
            sta L00BE,X
            lda L9C47,X
            clc
            adc L00B7,X
            sta L00B7,X
            tay
            lda L00BE,X
            cmp L9C40,X
            bne L9D9A
            jmp L9F11
L9D9A:      txa
            and #$03
            tax
            jsr LBA80
            jmp L9CF1
L9DA4:      lda L00BE,X
            sta L0094
            cmp #$41
            bcc L9DB8
            sec
            sbc #$02
            sta L00BE,X
            sta L0095
            ldy L00B7,X
            jmp L9D9A
L9DB8:      lda #$00
            sta L00C5,X
            lda L9CBA
            sta L0097
            ldy L00BE,X
            txa
            and #$03
            tax
            jsr LBB21
            jmp L9CF1
L9DCD:      eor L4D4D
            eor L4D4D
            eor L4E4D
            lsr L4E4E
            lsr L804E
            sta (L00A2),Y
            .byte $B3
            cpy L00D5
            inc L00F7
            php
            ora L3B2A,Y
            jmp L0F5D
            .byte $00,$00,$00,$00,$00,$28,$08,$10
            .byte $10,$20,$10,$00,$00,$00,$00,$FA
            .byte $0F,$00,$00,$0C,$38,$76,$5C,$3E
            .byte $1B,$3E,$7E,$2C,$14,$00,$00,$00
            .byte $75,$0F,$00,$02,$00,$44,$28,$1C
            .byte $1E,$3C,$28,$54,$0A,$00,$00,$00
            .byte $00,$FA,$0F,$00,$91,$8A,$66,$3C
            .byte $48,$3A,$B5,$D6,$4C,$3A,$54,$80
            .byte $11,$00,$FA,$0F,$00,$00,$04,$0C
            .byte $1E,$3E,$0F,$1C,$3E,$3F,$7E,$1E
            .byte $0C,$00,$00,$34,$0F,$00,$00,$00
            .byte $08,$50,$20,$38,$4C,$24,$58,$28
            .byte $30,$10,$00,$00,$FA,$0F,$00,$00
            .byte $42,$02,$00,$00,$00,$00,$10,$42
            .byte $11,$01,$00,$00,$00,$75,$0F,$00
            .byte $08,$20,$00,$00,$00,$04,$24,$00
            .byte $00,$00,$40,$48,$00,$00,$34,$0F
            .byte $00,$00,$20,$00,$00,$00,$40,$02
            .byte $00,$00,$00,$00,$10,$02,$00
            adc L00B5,X
            cpy LA84A
            cpy #$0E
            bcc L9E9E
            lda #$00
            sta L00C5,X
            lda #$10
            sta L0097
            ldy L00BE,X
            txa
            and #$03
            tax
            jsr LBB21
            jmp L9CF1
L9E9E:      lda L9DDB,Y
            sta L008C
            lda L9DCD,Y
            sta L008D
            inc L00CC,X
            lda L00BE,X
            sta L0094
            sta L0095
            ldy L00B7,X
            txa
            and #$03
            tax
            jsr LBA80
            ldx COLAC+1
            lda L00CC,X
            cmp #$01
            bne L9EEE
            sta BUFSTR
            lda L00C5,X
            lsr
            lsr
            lsr
            lsr
            lsr
            lsr
            tax
            inc L00DC,X
            lda L00DC,X
            cmp L00D9,X
            bne L9EE4
            cmp #$03
            bcc L9EE4
            beq L9EE0
            lda #$08
            sta BUFSTR
            bne L9EE4
L9EE0:      lda #$05
            sta BUFSTR
L9EE4:      jsr LB0D9
            ldy #$93
            lda #$B0
            jsr LAFE8
L9EEE:      jmp L9CF1
L9EF1:      .byte $44,$44
            lsr L2C4E
            sec
            bit L5838
            ror MLTTMP+1,X
            sta SAVMSC
            ror MLTTMP+1,X
            sta L009F
            .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F,$9F
            .byte $9F,$9F,$9F,$9F,$9F,$9F,$9F
L9F11:      lda L00C5,X
            and #$C7
            ora #$08
            sta L00C5,X
            jmp L9FBB
L9F1C:      lda L00BE,X
            sta L0094
            sta L0095
            ldy L00CC,X
            lda L9F01,Y
            pha
            lda L9EF1,Y
            pha
            rts
            lda L00BE,X
            sec
            sbc #$02
            sta L00BE,X
            sta L0095
            jmp L9F95
            lda #$02
            clc
            adc L00BE,X
            sta L00BE,X
            sta L0095
            jmp L9F95
L9F45:      lda L00B7,X
            sec
            sbc #$02
            sta L00B7,X
            jmp L9F95
L9F4F:      lda #$02
            clc
            adc L00B7,X
            sta L00B7,X
            jmp L9F95
            lda L00B7,X
            and #$03
            bne L9F65
            dec L00BE,X
            lda L00BE,X
            sta L0095
L9F65:      jmp L9F45
            lda L00B7,X
            and #$03
            bne L9F74
            dec L00BE,X
            lda L00BE,X
            sta L0095
L9F74:      jmp L9F4F
            lda L00B7,X
            and #$03
            bne L9F83
            inc L00BE,X
            lda L00BE,X
            sta L0095
L9F83:      jmp L9F45
            lda L00B7,X
            and #$03
            bne L9F92
            inc L00BE,X
            lda L00BE,X
            sta L0095
L9F92:      jmp L9F4F
L9F95:      jsr LA072
            beq L9F9D
            jmp LA036
L9F9D:      dec L00D3,X
            beq L9FAF
            bmi L9FAF
L9FA3:      ldy L00B7,X
            txa
            and #$03
            tax
            jsr LBA80
            jmp L9CF1
L9FAF:      lda L00CC,X
            bit L9C2E
            bne LA00E
            bit L9C2F
            beq LA00E
L9FBB:      lda L00B7,X
            cmp #$3D
            bcc L9FF6
            cmp #$AB
            bcs LA000
            lda RANDOM
            and #$0F
L9FCA:      sta L00CC,X
            bit L9C2E
            beq L9FED
            lda L00BE,X
            cmp #$58
            bcs L9FE0
            lda L00CC,X
            ora #$01
            sta L00CC,X
            jmp LA008
L9FE0:      cmp #$68
            bcc LA008
            lda L00CC,X
            and #$0E
            sta L00CC,X
            jmp LA008
L9FED:      lda L00CC,X
            and #$02
            sta L00CC,X
            jmp LA008
L9FF6:      lda RANDOM
            and #$09
            ora #$02
            jmp L9FCA
LA000:      lda RANDOM
            and #$09
            jmp L9FCA
LA008:      jsr LA0C8
            jmp L9FA3
LA00E:      lda RANDOM
            and #$01
            ora #$04
            sta L00CC,X
            lda L00BE,X
            cpx #$03
            bcs LA023
            cmp #$64
            bcc LA027
            bcs LA02B
LA023:      cmp #$54
            bcs LA02B
LA027:      lda #$05
            bne LA031
LA02B:      cmp #$70
            bcc LA008
            lda #$04
LA031:      sta L00CC,X
            jmp LA008
LA036:      tay
            lda RANDOM
            and #$0E
            cpy #$02
            beq LA04A
            ora #$01
            ldy L00BE,X
            cpy #$70
            bcs LA05A
            bcc LA05C
LA04A:      ldy L00BE,X
            cpx #$03
            bcs LA056
            cpy #$64
            bcc LA05A
            bcs LA05C
LA056:      cpy #$54
            bcs LA05C
LA05A:      and #$02
LA05C:      ldy L00B7,X
            cpy #$AB
            bcc LA067
            and #$0D
            jmp LA06D
LA067:      cpy #$3D
            bcs LA06D
            ora #$02
LA06D:      sta L00CC,X
            jmp LA008
LA072:      cpx #$03
            beq LA09F
            txa
            eor #$04
            tay
            lda L00C5,Y
            beq LA0B2
            lda L00BE,Y
            sec
            sbc L00BE,X
            bcs LA08C
            eor #$FF
            clc
            adc #$01
LA08C:      cmp #$0E
            bcs LA096
            cpx #$03
            bcc LA099
            bcs LA09C
LA096:      lda #$00
            rts
LA099:      lda #$01
            rts
LA09C:      lda #$02
            rts
LA09F:      lda L00C1
            cmp #$6D
            bcs LA09C
            lda L00E2
            beq LA0B2
            lda L00E1
            sec
            sbc L00C1
            cmp #$0B
            bcc LA09C
LA0B2:      lda L00BE,X
            cpx #$03
            bcs LA0BE
            cmp #$60
            bcc LA099
            bcs LA0C2
LA0BE:      cmp #$50
            bcc LA099
LA0C2:      cmp #$74
            bcs LA09C
            bcc LA096
LA0C8:      lda L00CC,X
            bit L9C2E
            bne LA0D7
            bit L9C2F
            beq LA0D7
            jmp LA181
LA0D7:      bit L9C30
            beq LA132
LA0DC:      lda FMSZPG+3
            sec
            sbc L00B7,X
            bcc LA10A
            cmp #$19
            bcc LA0FA
            ldy RANDOM
            bpl LA0FA
            ldy L00C5,X
            cpy #$C0
            bcs LA0FA
            sec
            sbc #$10
            sta L00D3,X
            jmp LA1DA
LA0FA:      clc
            adc #$1C
            sta L00D3,X
            lda RANDOM
            and #$3F
            clc
            adc L00D3,X
            jmp LA118
LA10A:      tay
            eor #$FF
            clc
            adc #$01
            cmp #$40
            bcs LA12C
            tya
            sec
            adc #$50
LA118:      sta L00D3,X
            lda #$AF
            sec
            sbc L00B7,X
            bcc LA12C
            beq LA12C
            cmp L00D3,X
            bcs LA129
            sta L00D3,X
LA129:      jmp LA1DA
LA12C:      lda L00CC,X
            eor #$02
            sta L00CC,X
LA132:      lda L00B7,X
            sec
            sbc FMSZPG+3
            bcc LA168
            cmp #$20
            bcc LA148
            ldy RANDOM
            bpl LA148
            sec
            sbc ABUFPT+2
            jmp LA154
LA148:      lda #$20
            sta L00D3,X
            lda RANDOM
            and #$1F
            clc
            adc L00D3,X
LA154:      sta L00D3,X
            lda L00B7,X
            sec
            sbc #$39
            bcc LA178
            beq LA178
            cmp L00D3,X
            bcs LA165
            sta L00D3,X
LA165:      jmp LA1DA
LA168:      tay
            eor #$FF
            clc
            adc #$01
            cmp #$30
            bcs LA178
            tya
            sec
            adc #$30
            bne LA154
LA178:      lda L00CC,X
            eor #$02
            sta L00CC,X
            jmp LA0DC
LA181:      bit L9C31
            beq LA1A8
LA186:      lda RANDOM
            and #$0F
            clc
            adc #$04
            sta L00D3,X
            lda #$74
            sec
            sbc L00BE,X
            bcc LA1A2
            beq LA1A2
            cmp L00D3,X
            bcs LA19F
            sta L00D3,X
LA19F:      jmp LA1D7
LA1A2:      lda L00CC,X
            eor #$01
            sta L00CC,X
LA1A8:      lda L00BE,X
            cpx #$03
            bcc LA1B4
            sec
            sbc #$50
            jmp LA1B7
LA1B4:      sec
            sbc #$60
LA1B7:      bcc LA1CE
            beq LA1CE
            sta L00D3,X
            lda RANDOM
            and #$0F
            clc
            adc #$04
            cmp L00D3,X
            bcs LA1CB
            sta L00D3,X
LA1CB:      jmp LA1D7
LA1CE:      lda L00CC,X
            eor #$01
            lda L00CC,X
            jmp LA186
LA1D7:      lsr L00D3,X
            rts
LA1DA:      lda L00CC,X
            bit L9C2E
            beq LA1D7
            lda L00D3,X
            clc
            adc #$07
            lsr
            lsr
            lsr
            sta L00B3
            lda L00CC,X
            bit L9C31
            beq LA201
            lda #$74
            sec
            sbc L00BE,X
            bcc LA218
            beq LA218
            cmp L00B3
            bcs LA1D7
            bcc LA218
LA201:      lda L00BE,X
            cpx #$03
            bcc LA20D
            sec
            sbc #$50
            jmp LA210
LA20D:      sec
            sbc #$60
LA210:      bcc LA218
            beq LA218
            cmp L00B3
            bcs LA1D7
LA218:      lda L00CC,X
            and #$03
            sta L00CC,X
            jmp LA1D7
            .byte $27,$33,$3F,$A2,$A2,$A2,$0B,$00
            .byte $3C,$7E,$DE,$FF,$7F,$FF,$FF,$FE
            .byte $7E,$3C,$0B,$00,$18,$7C,$FE,$7E
            .byte $DF,$FF,$FF,$6F,$7E,$38,$0B,$18
            .byte $3C,$7E,$7F,$FF,$FE,$FF,$7F,$7F
            .byte $36,$0C,$51,$5A,$63,$A2,$A2,$A2
            .byte $08,$38,$78,$BC,$FC,$F8,$FC,$78
            .byte $70,$08,$10,$7C,$FC,$78,$5C,$FC
            .byte $78,$10,$08,$30,$78,$F8,$FC,$FC
            .byte $7C,$68,$38
LA26C:      ldx #$01
            stx COLAC+1
LA270:      ldx COLAC+1
            lda L00B7,X
            beq LA2E2
            cmp #$14
            bcc LA2D3
            clc
            adc L00A4
            sec
            sbc #$01
            sta L00B7,X
            ldy L00B9,X
            sty L0094
            sec
            sbc #$20
            sec
            sbc L009F
            lsr
            lsr
            lsr
            eor #$FF
            clc
            adc #$01
            adc #$D1
            sta L0095
            sta L00B9,X
            inc L00BB,X
            lda L00BB,X
            and #$3F
            lsr
            cmp #$03
            bcc LA2AD
            lda L00BB,X
            and #$F0
            sta L00BB,X
            lda #$00
LA2AD:      ldy L00BB,X
            bmi LA2BE
            jmp L4A54
            ldx #$85
            sty L4EB9
            ldx #$85
            sta L0BD0
LA2BE:      jmp L4A39
            ldx #$85
            sty L24B9
            ldx #$85
            sta LB7B4
            inx
            inx
            jsr LBA00
            jmp LA2E2
LA2D3:      lda #$00
            sta L00B7,X
            ldy L00B9,X
            inx
            inx
            lda #$0F
            sta L0097
            jsr LBA44
LA2E2:      dec COLAC+1
            bpl LA270
            rts
LA2E7:      ldx #$01
            stx COLAC+1
LA2EB:      ldx COLAC+1
            lda L00B7,X
            beq LA364
            ldy ADRESS+1
            beq LA32C
            cpy #$02
            bcs LA32C
            sec
            sbc #$04
            cmp PALNTS
            bcs LA32C
            clc
            adc #$0D
            cmp PALNTS
            bcc LA32C
            lda LOGCOL
            clc
            adc #$0C
            cmp L00B9,X
            bcc LA32C
            jsr L9BEB
LA313:      lda #$00
            sta L00B7,X
            ldy L00B9,X
            inx
            inx
            lda #$0F
            sta L0097
            jsr LBA44
            lda #$50
            sta BUFSTR+1
            jsr LB0D9
            jmp LA364
LA32C:      lda L00B7,X
            sec
            sbc #$06
            sec
            sbc FMSZPG+3
            bcs LA33B
            eor #$FF
            clc
            adc #$01
LA33B:      cmp #$09
            bcs LA34E
            lda L00B9,X
            sec
            sbc #$0A
            cmp FMSZPG+5
            bcs LA364
            jsr L9623
            jmp LA313
LA34E:      lda L00BD,X
            bne LA364
            lda L00B7,X
            clc
            adc #$08
            cmp FMSZPG+3
            bcs LA364
            inc L00BD,X
            lda #$50
            sta BUFSTR+1
            jsr LB0D9
LA364:      dec COLAC+1
            bmi LA36B
            jmp LA2EB
LA36B:      rts
LA36C:      lda ENDPT
            bne LA3AF
            lda ENDPT+1
            beq LA377
            dec ENDPT+1
            rts
LA377:      lda #$3C
            clc
            adc FMSZPG+3
            sec
            sbc L009F
            lsr
            lsr
            tay
            ldx #$03
LA384:      lda (COLRSH),Y
            cmp #$4B
            bcc LA38E
            cmp #$54
            bcc LA393
LA38E:      iny
            dex
            bpl LA384
            rts
LA393:      tya
            asl
            asl
            clc
            adc L009F
            clc
            adc #$18
            sta ENDPT
            sta L0B2F
            lda #$00
            sta L092F
            sta L212F
            lda #$03
            sta L07BB
            rts
LA3AF:      clc
            adc L00A4
            sec
            sbc #$01
            sta ENDPT
            cmp FMSZPG+3
            bcc LA3C6
            lda #$00
            sta L092F
            lda ENDPT
            sta L0B2F
            rts
LA3C6:      lda #$00
            sta L07BB
            sta ENDPT
            sta ENDPT+1
            rts
LA3D0:      lda ENDPT
            bne LA3D5
            rts
LA3D5:      lda ADRESS+1
            beq LA3F9
            cmp #$02
            bcs LA3F9
            lda PALNTS
            clc
            adc #$05
            cmp ENDPT
            beq LA3E8
            bcc LA3F9
LA3E8:      jsr L9BE5
            beq LA3F9
LA3ED:      lda #$00
            sta L07BB
            sta ENDPT
            lda #$08
            sta ENDPT+1
LA3F8:      rts
LA3F9:      lda ENDPT
            cmp FMSZPG+3
            bcc LA3F8
            sec
            sbc #$14
            cmp FMSZPG+3
            bcs LA3F8
            lda FMSZPG+5
            cmp #$BC
            bcc LA3F8
            jsr L9623
            bne LA3ED
            asl ROWAC
            .byte $3C,$3A,$1F,$72,$3C
LA418:      .byte $5E,$66,$6E,$76
LA41C:      .byte $54,$54,$54,$54,$03,$00,$38,$00
            .byte $03,$00,$1C,$00,$03,$40,$FC,$40
            .byte $03,$38,$3C,$38
LA430:      lda DELTAR
            beq LA48A
            lda DELTAC
            bpl LA48B
            cmp #$C0
            bcc LA449
            lda #$01
            clc
            adc DELTAR
            sta DELTAR
            cmp #$42
            bcs LA454
            bcc LA45A
LA449:      lda DELTAR
            sec
            sbc #$01
            sta DELTAR
            cmp #$32
            bcs LA45A
LA454:      lda DELTAC
            eor #$40
            sta DELTAC
LA45A:      lda DELTAC
            lsr
            and #$01
LA45F:      tay
            lda LA418,Y
            sta L008C
            lda LA41C,Y
            sta L008D
            ldy #$C0
            tya
            ldx #$02
            jsr LB9FC
            lda #$56
            sta L008C
            lda #$54
            sta L008D
            ldy #$BF
            tya
            ldx #$03
            jsr LB9FC
            inc DELTAC
            lda DELTAC
            and #$E7
            sta DELTAC
LA48A:      rts
LA48B:      lda #$03
            clc
            adc DELTAR
            sta DELTAR
            cmp #$C0
            bcs LA49C
            lda DELTAC
            lsr
            jmp LA45F
LA49C:      ldy #$C1
            lda #$08
            sta L0097
            ldx #$02
            jsr LBA44
            ldy #$C0
            ldx #$03
            jsr LBA44
            lda #$00
            sta DELTAR
            ldy #$C4
            ldx #$04
            lda #$20
            sta L0097
            jsr LBA44
            ldy #$C4
            ldx #$02
            jsr LBA44
            rts
LA4C5:      lda DELTAR
            beq LA50E
            sec
            sbc #$02
            sec
            sbc FMSZPG+3
            cmp #$0E
            bcc LA4D7
            cmp #$F1
            bcc LA4E4
LA4D7:      lda FMSZPG+5
            cmp #$B7
            bcc LA4E4
            jsr L9623
            jsr LA49C
            rts
LA4E4:      lda ADRESS+1
            beq LA50E
            cmp #$02
            bcs LA50E
            lda DELTAR
            clc
            adc #$08
            sec
            sbc PALNTS
            bcs LA4FB
            eor #$FF
            clc
            adc #$01
LA4FB:      cmp #$08
            bcs LA50E
            jsr L9BE5
            beq LA50E
            jsr LA49C
            lda #$05
            sta BUFSTR
            jsr LB0D9
LA50E:      rts
            .byte $33,$41,$17,$25,$A5,$A5,$A5,$A5
            .byte $03,$02,$1F,$20,$21,$22,$2A,$2B
            .byte $2C,$2D,$39,$3A,$3B,$3C,$03,$02
            .byte $23,$00,$25,$26,$2E,$2F,$30,$31
            .byte $3D,$3E,$3F,$40,$03,$02,$00,$00
            .byte $00,$00,$32,$33,$34,$27,$41,$42
            .byte $43,$44,$03,$02,$24,$28,$29,$00
            .byte $35,$36,$37,$38,$45,$46,$47,$48
LA54F:      .byte $A5,$4F,$38,$E9,$04,$85,$B3,$A5
            .byte $50,$E9,$00,$85,$B4,$A0,$00,$B1
            .byte $B3,$C9,$0B,$90,$03,$C8,$D0,$F7
            .byte $B1,$B3,$C9,$1F,$90,$04,$C9,$36
            .byte $90,$0E,$C8,$C0,$30,$90,$F1,$E6
            .byte $78,$A5,$78,$29,$0F,$85,$78,$60
            .byte $98,$48,$18,$65,$B3,$85,$71,$A5
            .byte $B4,$69,$00,$85,$72,$A5,$72,$38
            .byte $E9,$07,$85,$72,$A5,$78,$4A,$4A
            .byte $A8,$B9,$0F,$A5,$85,$8C,$B9,$13
            .byte $A5,$85,$8D,$20,$49,$AC,$A5,$83
            .byte $D0,$07,$A0,$45,$A9,$B0,$20,$EC
            .byte $AF,$68,$18,$69,$03,$A8,$D0,$BA
LA5B7:      .byte $A2,$06,$B5,$C5,$29,$38,$F0,$41
            .byte $C9,$10,$F0,$3D,$A0,$03,$B9,$59
            .byte $00,$F0,$33,$B5,$B7,$18,$69,$03
            .byte $38,$F9,$59,$00,$C9,$04,$90,$04
            .byte $C9,$FD,$90,$22,$B5,$BE,$38,$E9
            .byte $06,$38,$F9,$5D,$00,$C9,$06,$90
            .byte $04,$C9,$F9,$90,$11,$A9,$00,$99
            .byte $59,$00,$95,$CC,$B5,$C5,$29,$C7
            .byte $09,$10,$95,$C5,$D0,$03,$88,$10
            .byte $C5,$CA,$10,$B6,$A5,$E2,$30,$34
            .byte $2C,$2B,$9C,$F0,$2F,$A2,$03,$A5
            .byte $E0,$18,$69,$03,$18,$F5,$59,$C9
            .byte $04,$90,$04,$C9,$FD,$90,$1A,$A5
            .byte $E1,$38,$E9,$05,$38,$F5,$5D,$C9
            .byte $05,$90,$04,$C9,$FC,$90,$0A,$A9
            .byte $00,$95,$59,$A9,$80,$85,$E2,$D0
            .byte $03,$CA,$10,$D3,$60
LA63C:      .byte $A0,$00,$A2,$06,$E0,$06,$D0,$04
            .byte $A2,$05,$D0,$02,$A2,$06,$8A,$91
            .byte $71,$A5,$72,$38,$E9,$07,$85,$72
            .byte $A9,$00,$91,$71,$A9,$07,$18,$65
            .byte $72,$85,$72,$C8,$B1,$71,$C9,$59
            .byte $F0,$05,$38,$C9,$4B,$B0,$D5,$60
LA66C:      .byte $A5,$65,$F0,$36,$C9,$02,$B0,$32
            .byte $A5,$62,$38,$E9,$1A,$38,$E5,$9F
            .byte $4A,$4A,$85,$97,$18,$65,$4F,$48
            .byte $38,$E5,$67,$85,$98,$F0,$18,$A5
            .byte $97,$38,$E5,$98,$A8,$C8,$B1,$4F
            .byte $C9,$2A,$F0,$0F,$C9,$4B,$B0,$35
            .byte $C8,$C4,$97,$F0,$F1,$90,$EF,$68
            .byte $85,$67,$60,$20,$E5,$9B,$F0,$F0
            .byte $A9,$41,$85,$8C,$A9,$A5,$85,$8D
            .byte $98,$18,$65,$4F,$85,$71,$A5,$50
            .byte $69,$00,$85,$72,$A5,$72,$38,$E9
            .byte $07,$85,$72,$20,$49,$AC,$A9,$01
            .byte $85,$6C,$4C,$05,$A7,$A2,$01,$C9
            .byte $57,$F0,$0D,$C9,$59,$F0,$09,$C9
            .byte $56,$F0,$05,$CA,$C9,$4E,$D0,$B8
            .byte $20,$E5,$9B,$F0,$B3,$98,$18,$65
            .byte $4F,$85,$71,$A5,$50,$69,$00,$85
            .byte $72,$A9,$50,$85,$6D,$E0,$00,$D0
            .byte $05,$86,$6D,$E8,$86,$6C,$20,$3C
            .byte $A6,$20,$D9,$B0,$4C,$A3,$A6
LA70B:      .byte $A5,$E2,$30,$22,$2C,$2B,$9C,$F0
            .byte $1D,$A5,$48,$38,$E9,$08,$C5,$E1
            .byte $B0,$14,$4C,$BE,$4B,$E0,$B0,$0E
            .byte $18,$69,$18,$C5,$E0,$90,$07,$20
            .byte $23,$96,$A9,$C0,$85,$E2,$60
LA732:      .byte $00
LA733:      .byte $80,$00,$80,$01,$00,$01,$00,$01
            .byte $00,$00,$80,$00,$80,$01,$00,$01
            .byte $20,$01,$20
LA746:      .byte $7A,$83,$8F,$98,$A3,$B2,$C0,$CF
            .byte $DC,$E6,$F6,$04,$15,$26,$31,$3E
            .byte $48,$63,$6D,$7A,$83,$90,$A2,$B3
            .byte $BC,$C5
LA760:      .byte $A7,$A7,$A7,$A7,$A7,$A7,$A7,$A7
            .byte $A7,$A7,$A7,$A8,$A8,$A8,$A8,$A8
            .byte $A8,$A8,$A8,$A8,$A8,$A8,$A8,$A8
            .byte $A8,$A8,$01,$50,$BA,$8A,$BA,$8A
            .byte $0F,$32,$01,$06,$14,$01,$05,$61
            .byte $01,$FF,$03,$61,$0F,$32,$02,$8D
            .byte $03,$50,$BA,$88,$8A,$0F,$32,$03
            .byte $BA,$05,$05,$02,$01,$44,$03,$7F
            .byte $0F,$32,$04,$07,$0A,$01,$06,$65
            .byte $01,$FF,$03,$7F,$B5,$10,$32,$05
            .byte $00,$10,$07,$0A,$01,$FF,$06,$74
            .byte $01,$FF,$03,$7F,$85,$0F,$32,$06
            .byte $BD,$A5,$04,$14,$88,$C8,$85,$04
            .byte $14,$B5,$88,$88,$0F,$32,$07,$AD
            .byte $85,$A5,$06,$14,$02,$F3,$03,$7F
            .byte $85,$0F,$32,$08,$07,$0A,$01,$06
            .byte $39,$01,$FF,$0F,$78,$09,$07,$0A
            .byte $01,$03,$50,$A5,$C4,$04,$0F,$C4
            .byte $A5,$10,$32,$0A,$02,$10,$9F,$91
            .byte $95,$94,$0E,$14,$95,$95,$0E,$14
            .byte $95,$0F,$32,$0B,$9F,$95,$0E,$14
            .byte $95,$95,$94,$94,$94,$0E,$1E,$95
            .byte $94,$94,$0F,$32,$0C,$0E,$28,$0E
            .byte $1E,$0E,$1E,$94,$0E,$0F,$0E,$1E
            .byte $95,$95,$95,$0F,$3F,$0D,$06,$0A
            .byte $03,$FD,$05,$7F,$02,$FD,$0F,$78
            .byte $0E,$07,$0A,$03,$FB,$05,$7F,$02
            .byte $FD,$10,$78,$0F,$04,$10,$07,$0A
            .byte $03,$06,$64,$02,$FF,$12,$78,$10
            .byte $0C,$28
LA84A:      .byte $0B,$14,$0B,$28,$0B,$0A,$0C,$28
            .byte $0B,$28,$0B,$0A,$0B,$28,$0B,$28
            .byte $0B,$0A,$0C,$28,$0B,$14,$12,$4C
            .byte $11,$05,$0A,$03,$02,$7F,$A8,$C8
            .byte $0F,$50,$12,$05,$0A,$01,$06,$50
            .byte $01,$06,$6F,$02,$FF,$0F,$78,$13
            .byte $07,$0A,$01,$FF,$10,$78,$14,$06
            .byte $10,$02,$4A,$A8,$B8,$88,$A8,$B8
            .byte $C8,$A3,$B5,$0F,$32,$15,$8D,$82
            .byte $A2,$D5,$D7,$D7,$B5,$D5,$D8,$D8
            .byte $D8,$A5,$A5,$A5,$A5,$12,$32,$16
            .byte $0B,$28,$0C,$1E,$0C,$0A,$0B,$1E
            .byte $0C,$1E,$0C,$1E,$0C,$0A,$12,$32
            .byte $17,$06,$0A,$03,$05,$28,$02,$0F
            .byte $7C,$18,$06,$0A,$03,$07,$28,$02
            .byte $0F,$7C,$19,$07,$0A,$02,$05,$50
            .byte $02,$8A,$A3,$A5,$C5,$10,$32,$1A
            .byte $08,$50
LA8D4:      .byte $08,$12,$1A,$25,$30,$43,$4D,$5C
            .byte $6A,$79,$8D,$AA,$B4,$C4,$D4,$E2
            .byte $F2,$00,$11,$22,$35,$41,$57,$64
            .byte $76,$84
LA8EE:      .byte $A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
            .byte $A9,$A9,$A9,$A9,$A9,$A9,$A9,$A9
            .byte $A9,$AA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $AA,$AA,$06,$0A,$02,$05,$7F,$02
            .byte $FF,$0F,$78,$01,$0A,$0A,$11,$78
            .byte $FF,$0F,$78,$02,$09,$50,$85,$85
            .byte $C5,$B5,$D1,$A6,$0F,$32,$03,$DA
            .byte $D7,$D8,$D8,$A2,$85,$85,$D5,$0F
            .byte $32,$04,$06,$0A,$03,$FF,$01,$7F
            .byte $A5,$B6,$85,$86,$B5,$85,$B5,$85
            .byte $10,$58,$05,$0A,$10,$07,$0A,$02
            .byte $07,$7F,$02,$FE,$0F,$78,$06,$CD
            .byte $A5,$84,$A5,$84,$B4,$B5,$85,$A2
            .byte $B5,$04,$14,$0F,$32,$07,$07,$0A
            .byte $03,$06,$62,$02,$00,$78,$E9,$84
            .byte $E2,$0F,$32,$08,$05,$0A,$02,$06
            .byte $62,$02,$00,$4E,$B4,$85,$A2,$B5
            .byte $0F,$32,$09,$06,$0A,$03,$01,$67
            .byte $A5,$85,$A5,$85,$82,$E3,$E5,$E5
            .byte $E5,$84,$10,$32,$0A,$0C,$10,$0B
            .byte $32,$0C,$14,$0C,$14,$0B,$28,$0B
            .byte $0A,$0C,$28,$0B,$14,$0C,$14,$0C
            .byte $28,$0B,$0A,$0B,$28,$0C,$0A,$8A
            .byte $8A,$12,$32,$0B,$06,$0A,$03,$05
            .byte $5C,$02,$FF,$0F,$78,$0C,$9A,$94
            .byte $91,$94,$94,$94,$95,$91,$94,$94
            .byte $94,$94,$94,$0F,$32,$0D,$9D,$92
            .byte $95,$94,$95,$93,$94,$93,$94,$93
            .byte $94,$93,$94,$0F,$32,$0E,$07,$14
            .byte $03,$00,$52,$06,$14,$02,$FF,$10
            .byte $72,$0F,$0E,$10,$06,$0A,$02,$05
            .byte $50,$03,$02,$78,$A5,$85,$A2,$82
            .byte $86,$0F,$32,$10,$8A,$A4,$86,$B5
            .byte $0A,$0A,$B5,$A5,$AA,$11,$14,$0F
            .byte $78,$11,$CA,$82,$A1,$82,$C2,$A3
            .byte $9A,$94,$91,$95,$95,$94,$91,$94
            .byte $0F,$32,$12,$DA,$A2,$C5,$B2,$83
            .byte $81,$D4,$A4,$84,$E2,$E5,$C4,$E2
            .byte $E5,$0F,$32,$13,$8A,$C3,$A2,$C3
            .byte $07,$05,$03,$05,$54,$02,$03,$50
            .byte $8A,$8A,$10,$32,$14,$10,$10,$CA
            .byte $0A,$14,$A5,$B5,$A5,$11,$14,$AF
            .byte $0F,$32,$15,$9A,$95,$91,$95,$91
            .byte $95,$91,$95,$C3,$95,$93,$93,$85
            .byte $93,$91,$95,$91,$95,$95,$0F,$32
            .byte $16,$07,$28,$03,$06,$14,$01,$C5
            .byte $00,$78,$8A,$0F,$32,$17,$ED,$82
            .byte $E5,$E5,$83,$84,$C1,$83,$83,$E3
            .byte $82,$E3,$83,$A3,$C3,$0F,$32,$18
            .byte $07,$0A,$03,$06,$14,$02,$84,$C4
            .byte $03,$50,$C5,$0F,$32,$19,$8A,$C2
            .byte $A2,$83,$D3,$B3,$84,$B2,$E5,$C4
            .byte $E2,$10,$32,$1A,$12,$00,$8A,$BA
            .byte $85,$B5,$05,$14,$01,$06,$14,$01
            .byte $07,$14,$01,$12,$78,$01
LAAA4:      .byte $00,$00,$01,$11,$11,$00,$00,$01
            .byte $31,$11,$00,$20,$00,$00,$00,$01
            .byte $11,$11,$20,$00,$01,$11,$11,$00
            .byte $00,$00,$05,$02,$19,$00,$00,$00
            .byte $00,$1A,$03,$1B,$00,$00,$1C,$03
            .byte $03,$03,$1D,$1E,$03,$03,$03,$01
            .byte $19,$00,$00,$1A,$03,$1D,$1E,$03
            .byte $03,$01,$52,$53,$54,$55,$57,$58
            .byte $59,$5A,$01,$01,$52,$53,$57,$58
            .byte $00,$01,$51,$56,$01,$00,$49,$4A
            .byte $04,$00,$49,$4A,$05,$49,$4A,$02
            .byte $01,$4B,$4C,$4D,$4E,$4F,$50
LAB03:      .byte $AB,$AB,$AB,$AB,$AB,$AC,$AC,$AC
            .byte $AC,$AC,$AC,$AD,$AD,$AC,$AC,$AD
            .byte $AD,$AD,$AD
LAB16:      .byte $E3,$E9,$EF,$F5,$FB,$BB,$DD,$E4
            .byte $01,$13,$FD,$0D,$15,$07,$0D,$52
            .byte $73,$05,$6B
LAB29:      .byte $AB,$AC,$AB,$AB,$AB,$AC,$AC,$AB
LAB31:      .byte $F5,$07,$E3,$E9,$EF,$13,$01
            cmp LF020,X
            .byte $82
            ldx #$41
            lda #$00
LAB40:      sta LTEMP+1,X
            dex
            bpl LAB40
            ldx #$48
LAB47:      sta L00B7,X
            dex
            bpl LAB47
            sta ROWAC+1
            lda #$29
            sta COLAC
            lda L009B
            beq LAB64
            lda #$94
            sta SHFAMT
            lda #$AA
            sta ROWAC
            lda #$00
            sta LTEMP
            beq LABAF
LAB64:      lda ICBLHZ
            and #$1F
            cmp #$1A
            bcs LAB7F
            tax
            lda ICBLHZ
            bmi LAB8B
            lda LA746,X
            sta SHFAMT
            lda LA760,X
            sta ROWAC
            txa
            jmp LAB99
LAB7F:      ldx #$00
            stx ICPTHZ
            lda #$27
            sta ICBLLZ
            lda #$80
            sta ICBLHZ
LAB8B:      lda LA8D4,X
            sta SHFAMT
            lda LA8EE,X
            sta ROWAC
            txa
            clc
            adc #$1A
LAB99:      pha
            and #$01
            tay
            pla
            lsr
            tax
            lda LAAA4,X
            cpy #$01
            beq LABAB
            lsr
            lsr
            lsr
            lsr
LABAB:      and #$0F
            sta LTEMP
LABAF:      jsr L8436
            jsr L8A3A
            jsr L894A
LABB8:      ldy #$00
            lda (SHFAMT),Y
            bmi LABCE
            tax
            lda LAB03,X
            pha
            lda LAB16,X
            pha
            inc SHFAMT
            bne LABCD
            inc ROWAC
LABCD:      rts
LABCE:      and #$70
            lsr
            lsr
            lsr
            lsr
            tax
            lda LAB29,X
            pha
            lda LAB31,X
            pha
            rts
            jsr LAC82
            jmp LAD8D
            ldy #$BE
            ldx #$AA
            bne LAC2C
            ldy #$D2
            ldx #$AA
            bne LAC2C
            ldy #$DC
            ldx #$AA
            bne LAC18
            ldy #$E6
            ldx #$AA
            bne LAC18
            ldy #$EC
            ldx #$AA
            bne LAC18
            ldy #$17
            ldx #$A5
            bne LAC18
            ldy #$F0
            ldx #$AA
            bne LAC2C
            ldy #$F4
            ldx #$AA
            bne LAC2C
            ldy #$FB
            ldx #$AA
LAC18:      lda COLAC
            sec
            sbc #$07
            sta COLAC
            jsr LAC32
            lda #$07
            clc
            adc COLAC
            sta COLAC
            jmp LAD8D
LAC2C:      jsr LAC32
            jmp LAD8D
LAC32:      sty L008C
            stx L008D
            jsr LAC82
            jsr LAC49
            lda COLAC
            sec
            ldx #$06
LAC41:      sbc L0097
            dex
            bpl LAC41
            sta COLAC
LAC48:      rts
LAC49:      ldy #$00
            lda (L008C),Y
            sta L0098
            iny
            lda (L008C),Y
            sta L0097
            lda L008C
            clc
            adc #$02
            sta L008C
            bcc LAC5F
            inc L008D
LAC5F:      ldx L0097
LAC61:      ldy L0098
LAC63:      lda (L008C),Y
            sta (ROWAC+1),Y
            dey
            bpl LAC63
            lda L0098
            sec
            adc L008C
            sta L008C
            bcc LAC75
            inc L008D
LAC75:      dex
            bmi LAC81
            lda #$07
            clc
            adc COLAC
            sta COLAC
            bne LAC61
LAC81:      rts
LAC82:      ldy #$00
            lda (SHFAMT),Y
            bpl LAC8C
            and #$0F
            asl
            asl
LAC8C:      jsr LAD96
            clc
            adc ROWAC+1
            sta ROWAC+1
            bcc LAC98
            inc COLAC
LAC98:      rts
LAC99:      ldy #$00
            lda (SHFAMT),Y
            pha
            clc
            adc ROWAC+1
            sta ROWAC+1
            bcc LACA7
            inc COLAC
LACA7:      pla
            clc
            adc BUFRFL
            ror
            ldx LTEMP+1
            sta L025A,X
            rts
LACB2:      jsr LAC99
            iny
            lda (SHFAMT),Y
            asl
            asl
            asl
            rts
            jsr LACB2
            ora #$A0
LACC1:      ora FTYPE
            sta L025B,X
            lda (SHFAMT),Y
            sec
            adc FTYPE
            sta FTYPE
            inc SHFAMT
            bne LACD3
            inc ROWAC
LACD3:      inc LTEMP+1
            inc LTEMP+1
            lda #$00
            sta BUFRFL
            jmp LAD8D
            jsr LACB2
            ora #$C0
            bne LACC1
            jsr LACB2
            ora #$E0
            jmp LACC1
LACED:      pha
            jsr LAC99
            pla
            sta L025B,X
            inc LTEMP+1
            inc LTEMP+1
            lda #$00
            sta BUFRFL
            rts
            lda #$03
            jsr LACED
            jmp LAD8D
            lda #$04
            jsr LACED
            jmp LAD8D
            lda #$01
            jsr LACED
            jmp LAD8D
            lda #$02
            jsr LACED
            jmp LAD8D
LAD1E:      pha
            lda #$00
            sta FTYPE
            ldy #$00
            lda (SHFAMT),Y
            pha
            clc
            adc ROWAC+1
            sta ROWAC+1
            bcc LAD31
            inc COLAC
LAD31:      pla
            sec
            sbc #$28
            clc
            adc BUFRFL
            ror
            ldx LTEMP+1
            sta L025A,X
            pla
            sta L025B,X
            iny
            lda (SHFAMT),Y
            sta L025C,X
            lda #$14
            sta L025D,X
            lda #$00
            sta L025E,X
            rts
            lda #$05
            jsr LAD1E
            lda #$05
            clc
            adc LTEMP+1
            sta LTEMP+1
            lda #$00
            sta BUFRFL
            inc SHFAMT
            bne LAD69
            inc ROWAC
LAD69:      jmp LAD8D
            lda #$08
            jsr LAD1E
            jmp LAD83
            lda #$06
            jsr LAD1E
            iny
            lda (SHFAMT),Y
            sta NOCKSM
            iny
            lda (SHFAMT),Y
            sta RECVDN
LAD83:      lda L025A
            sta BPTR
            lda #$00
            sta LTEMP+1
            rts
LAD8D:      inc SHFAMT
            bne LAD93
            inc ROWAC
LAD93:      jmp LABB8
LAD96:      pha
            clc
            adc BUFRFL
            sta BUFRFL
            bcc LADAE
            ldx LTEMP+1
            lda #$80
            sta L025A,X
            lda #$00
            sta L025B,X
            inc LTEMP+1
            inc LTEMP+1
LADAE:      pla
            rts
LADB0:      .byte $60,$60,$60,$80,$10,$42,$00,$3F
            .byte $02,$04,$02,$70,$70,$70,$70,$42
            .byte $00,$3E,$70,$02,$02,$02,$70,$02
            .byte $70,$02,$41,$80,$15,$34,$29,$2D
            .byte $25,$00,$34,$2F,$00,$32,$25,$21
            .byte $23,$28,$00,$30,$2F,$29,$2E,$34
            .byte $FF,$39,$2F,$35,$32,$00,$34,$29
            .byte $2D,$25,$FF,$34,$28,$25,$00,$21
            .byte $36,$25,$32,$21,$27,$25,$00,$34
            .byte $29,$2D,$25,$FF,$34,$2F,$30,$00
            .byte $32,$25,$23,$2F,$32,$24,$FF,$27
            .byte $2F,$2F,$24,$00,$22,$2F,$2E,$35
            .byte $33,$00,$30,$2F,$29,$2E,$34,$33
            .byte $FF,$33,$30,$25,$23,$29,$21,$2C
            .byte $00,$22,$2F,$2E,$35,$33,$FF,$33
            .byte $2F,$32,$32,$39,$00,$00,$2E,$2F
            .byte $00,$22,$2F,$2E,$35,$33,$FF,$39
            .byte $2F,$35,$00,$28,$21,$36,$25,$00
            .byte $33,$25,$34,$00,$21,$00,$2E,$25
            .byte $37,$00,$32,$25,$23,$2F,$32,$24
            .byte $01,$FF
LAE52:      jsr LBC16
            ldy #$02
            lda RECVDN
            cmp #$30
            bcc LAE5F
            ldy #$03
LAE5F:      tya
            jsr LBCA8
LAE63:      lda L0088
            bne LAE63
            ldx #$3C
            jsr L8411
            jsr L840B
            lda #$05
            sta LTEMP
            ldx #$1C
LAE75:      lda LADB0,X
            sta L1580,X
            dex
            bpl LAE75
            lda #$00
            tax
LAE81:      sta L3E00,X
            inx
            bne LAE81
            lda #$80
            sta COUNTR
            lda #$15
            sta COUNTR+1
            inc INSDAT
            jsr L8418
            ldx #$05
            ldy #$CD
            lda #$AD
            jsr LAFA5
            lda FEOF
            ora #$20
            sta L3E20
            lda #$02
            sta L3E21
            sta L3E1F
            ldx #$2D
            ldy #$E1
            lda #$AD
            jsr LAFA5
            ldx #$46
            lda ICBALZ
            jsr LAFCB
            lda ICBAHZ
            jsr LAFDC
            ldx #$55
            ldy #$EB
            lda #$AD
            jsr LAFA5
            ldy NOCKSM
            ldx #$6E
            lda LA732,Y
            sta XMTDON
            jsr LAFCB
            lda LA733,Y
            sta CHKSNT
            jsr LAFDC
            ldx #$7D
            ldy #$FC
            lda #$AD
            jsr LAFA5
            ldx #$96
            ldy NOCKSM
            lda DSKTIM,Y
            jsr LAFCB
            iny
            lda DSKTIM,Y
            jsr LAFDC
            lda ICBALZ
            cmp XMTDON
            beq LAF02
            bcs LAF0A
            bcc LAF16
LAF02:      lda ICBAHZ
            cmp CHKSNT
            bcc LAF16
            beq LAF16
LAF0A:      ldx #$A6
            ldy #$27
            lda #$AE
            jsr LAFA5
            jmp LAFA4
LAF16:      ldy #$07
            lda #$AE
            ldx RECVDN
            cpx #$50
            bcc LAF24
            ldy #$19
            lda #$AE
LAF24:      ldx #$A6
            jsr LAFA5
            ldx #$BE
            lda RECVDN
            jsr LAFDC
            lda #$00
            jsr LAFDC
            ldy XMTDON
            lda CHKSNT
LAF39:      cpy ICBALZ
            bne LAF41
            cmp ICBAHZ
            beq LAF76
LAF41:      sed
            sec
            sbc #$01
            bcs LAF48
            dey
LAF48:      cld
            pha
            tya
            ldx #$6E
            jsr LAFCB
            pla
            pha
            jsr LAFDC
            lda RECVDN
            sed
            clc
            adc #$01
            sta RECVDN
            cld
            ldx #$BE
            jsr LAFDC
            tya
            pha
            ldy #$75
            lda #$B0
            jsr LAFEC
LAF6C:      lda L0083
            bne LAF6C
            pla
            tay
            pla
            jmp LAF39
LAF76:      ldx NOCKSM
            lda ICBALZ
            cmp DSKTIM,X
            beq LAF83
            bcc LAF8A
            bcs LAF9D
LAF83:      lda ICBAHZ
            cmp PDVMSK,X
            bcs LAF9D
LAF8A:      lda ICBALZ
            sta DSKTIM,X
            lda ICBAHZ
            sta PDVMSK,X
            ldx #$CD
            ldy #$37
            lda #$AE
            jsr LAFA5
LAF9D:      lda RECVDN
            sta BUFSTR
            jsr LB0D9
LAFA4:      rts
LAFA5:      sty L008C
            sta L008D
            ldy #$00
LAFAB:      lda (L008C),Y
            cmp #$FF
            beq LAFCA
            sta L3E00,X
            lda #$00
            sta L008E
            sta L008F
LAFBA:      inc L008E
            bne LAFBA
            inc L008F
            lda L008F
            cmp #$24
            bcc LAFBA
            inx
            iny
            bne LAFAB
LAFCA:      rts
LAFCB:      pha
            lda #$1A
            sta L3E00,X
LAFD1:      pla
            and #$0F
            ora #$10
            sta L3E01,X
            inx
            inx
            rts
LAFDC:      pha
            lsr
            lsr
            lsr
            lsr
            ora #$10
            sta L3E00,X
            bne LAFD1
LAFE8:      ldx #$04
            bne LAFEE
LAFEC:      ldx #$00
LAFEE:      sty L0082,X
            sty L008C
            sta L0083,X
            sta L008D
            ldy #$00
            lda (L008C),Y
            sta LOMEM+1,X
            lda #$01
            sta LOMEM,X
            inc L0082,X
            bne LB006
            inc L0083,X
LB006:      rts
            .byte $01,$A9,$1E,$A9,$1E,$A9,$1F,$A9
            .byte $1F,$A9,$1E,$A9,$1D,$A9,$1C,$A9
            .byte $1B,$A9,$1A,$00,$02,$A8,$3C,$A8
            .byte $3C,$A7,$3C,$A7,$3C,$A8,$3D,$A8
            .byte $3D,$A7,$3D,$A7,$3D,$A8,$3E,$A8
            .byte $3E,$A7,$3E,$A8,$3F,$A8,$3F,$A8
            .byte $40,$A8,$40,$A8,$41,$A8,$42,$A8
            .byte $43,$A8,$44,$A8,$45,$00,$04,$A6
            .byte $F3,$A6,$E6,$A6,$D9,$A6,$F3,$A6
            .byte $E6,$A6,$D9,$00,$01,$2F,$84,$2E
            .byte $84,$2C,$84,$2B,$84,$2A,$84,$29
            .byte $84,$28,$84,$27,$84,$26,$84,$25
            .byte $84,$24,$84,$23,$84,$22,$84,$22
            .byte $84,$22,$84,$21,$84,$00,$01,$AD
            .byte $2A,$AC,$2A,$AB,$2A,$AA,$2A,$A9
            .byte $2A,$A8,$2A,$A7,$2A,$A6,$2A,$A5
            .byte $2A,$A4,$2A,$A3,$2A,$A2,$2A,$A1
            .byte $2A,$A1,$2A,$00,$02,$A8,$39,$A8
            .byte $3C,$A8,$40,$A8,$39,$A8,$3C,$A8
            .byte $40,$A8,$40,$A8,$40,$A7,$40,$A6
            .byte $40,$A7,$40,$A6,$40,$A5,$40,$A6
            .byte $40,$A7,$40,$A5,$40,$A6,$40,$A7
            .byte $40,$A6,$40,$A4,$40,$A3,$40,$A2
            .byte $40,$A2,$40,$00,$05,$A8,$3C,$A8
            .byte $3D,$A8,$3E,$A8,$3F,$A8,$40,$A8
            .byte $41,$A8,$40,$A8,$3F,$A8,$3E,$A8
            .byte $3D,$00
LB0D9:      lda FMSZPG+6
            bmi LB0FF
            sed
            ldy ICHIDZ
            clc
            ldx #$02
LB0E3:      lda BUFCNT,X
            adc ICHIDZ,X
            sta ICHIDZ,X
            dex
            bpl LB0E3
            cld
            cmp #$06
            bcs LB0FF
            and #$01
            beq LB0FF
            tya
            and #$01
            bne LB0FF
            inc ICSTAZ
            jsr L83E0
LB0FF:      ldx #$00
            stx BUFCNT
            stx BUFSTR
            stx BUFSTR+1
            lda BFENLO
            bmi LB133
            ldy #$04
            lda ICAX5Z
            beq LB113
            ldy #$2C
LB113:      lda ICHIDZ
            jsr LB11F
            lda ICDNOZ
            jsr LB11F
            lda ICCOMZ
LB11F:      pha
            lsr
            lsr
            lsr
            lsr
            ora #$90
            sta L3F00,Y
            iny
            pla
            and #$0F
            ora #$90
            sta L3F00,Y
            iny
LB133:      rts
LB134:      jsr L82F0
            ldx #$20
LB139:      lda LB1DF,X
            sta L1580,X
            dex
            bpl LB139
            jsr LB200
            ldx #$04
            stx LTEMP
LB149:      lda LB82B,X
            sta DOSINI,X
            dex
            bpl LB149
            jmp L490F
            ror L15A9,X
            sta COUNTR+1
LB159:      inc INSDAT
LB15B:      lda INSDAT
            bne LB15B
            lda ICAX4Z
            sta KEYDEF
            lda ICAX6Z
            sta KEYDEF+1
            lda #$00
            sta L009B
            sta RAMLO
            jsr LB28A
            jsr LB2B1
            jsr LB2C4
            jsr LB2E9
            jsr L8418
LB17C:      lda L009A
            bmi LB195
            ldx #$FF
            stx L009A
            jmp L49E0
            ora #$E6
            .byte $9B
            lda #$00
            sta ICAX4Z
            jmp L80F2
            cmp #$1E
            beq LB1B6
LB195:      lda CONSOL
            and #$07
            cmp #$07
            beq LB17C
            ldx #$08
            stx CONSOL
            ldx L0099
            ldy #$00
            sty L0099
            cpx #$04
            bcc LB17C
            sty RAMLO
            lsr
            bcs LB1C1
            lda #$00
            sta FMSZPG+2
LB1B6:      lda KEYDEF+1
            sta ICAX6Z
            lda KEYDEF
            sta ICAX4Z
            jmp L80F2
LB1C1:      lsr
            bcs LB1D0
            lda KEYDEF
            eor #$01
            sta KEYDEF
            jsr LB2B1
            jmp LB17C
LB1D0:      lsr
            bcs LB17C
            lda KEYDEF+1
            eor #$01
            sta KEYDEF+1
            jsr LB28A
            jmp LB17C
LB1DF:      rts
            .byte $60,$60,$80,$10,$42,$00,$3F,$02
            .byte $04,$02,$70,$70,$47,$00,$3E,$70
            .byte $70,$02,$70,$70,$70,$70,$06,$50
            .byte $06,$50,$06,$50,$02,$41,$80,$15
LB200:      .byte $A2,$00,$8A
LB203:      sta L3F00,X
            sta L3E00,X
            dex
            bne LB203
            ldx #$13
LB20E:      lda LB23A,X
            sta L3E00,X
            lda LB24E,X
            sta L3E14,X
            lda LB262,X
            sta L3E28,X
            lda LB276,X
            sta L3E3C,X
            dex
            bpl LB20E
            lda #$03
            sta L3E55
            lda ICAX1Z
            ora ICAX2Z
            ora ICAX3Z
            beq LB239
            jsr L8311
LB239:      rts
LB23A:      .byte $00,$00,$00,$00,$ED,$EF,$EF,$EE
            .byte $00,$F0,$E1,$F4,$F2,$EF,$EC,$00
            .byte $00,$00,$00,$00
LB24E:      .byte $23,$2F,$30,$39,$32,$29,$27,$28
            .byte $34,$00,$37,$29,$2C,$2C,$29,$21
            .byte $2D,$33,$00,$25
LB262:      .byte $2C,$25,$23,$34,$32,$2F,$2E,$29
            .byte $23,$33,$00,$29,$2E,$23,$0E,$00
            .byte $11,$19,$18,$12
LB276:      .byte $00,$00,$00,$00,$00,$0A,$00,$00
            .byte $51,$00,$70,$6C,$61,$79,$65,$72
            .byte $00,$00,$00,$00
LB28A:      .byte $4C,$CE,$46,$07
            lda KEYDEF+1
            beq LB294
            ldx #$0F
LB294:      ldy #$07
LB296:      lda LB2A1,X
            sta L3E58,Y
            dex
            dey
            bpl LB296
            rts
LB2A1:      .byte $62,$65,$67,$69,$6E,$6E,$65,$72
            .byte $63,$68,$61,$6D,$70,$69,$6F,$6E
LB2B1:      .byte $A6,$79,$BD,$C0,$B2,$8D,$44,$3E
            .byte $BD,$C2,$B2,$4C,$C5,$46,$60,$51
            .byte $52,$00,$73
LB2C4:      lda ICBLHZ
            ora L1409
            beq LB2DD
            ldx #$05
            ldy #$0A
LB2CF:      lda LB2D9,X
            sta L3E64,X
            inx
            dey
            bpl LB2CF
LB2D9:      lda #$3C
            sta FMSZPG+2
LB2DD:      rts
            .byte $52,$00,$00,$63,$6F,$6E,$74,$69
            .byte $6E,$75,$65
LB2E9:      ldx #$09
LB2EB:      lda LB24E,X
            sta L3E83,X
            lda LB2FB,X
            sta L3E8D,X
            dex
            bpl LB2EB
            rts
LB2FB:      and (BFENLO,X)
            and (BUFRLO,X)
            and #$00
            ora (DSKFMS+1),Y
            clc
            .byte $13
            lda (L00B4,X)
            lda (L00B2,X)
            lda #$00
            sta (L0099),Y
            tya
            .byte $93
            cld
            pha
            txa
            pha
            tya
            pha
            sta WSYNC
            lda #$68
            sta CHBASE
            lda #$00
            sta SIZEP0
            lda CRITIC
            sta COLPM0
            lda #$8F
            sta HPOSP0
            sta WSYNC
            sta WSYNC
            sta WSYNC
            ldx #$03
LB337:      lda SAVMSC+1,X
            sta HPOSM0,X
            dex
            bpl LB337
            sta WSYNC
            sta WSYNC
            sta WSYNC
            lda FMSZPG
            sta COLPM0
            ldx #$04
LB34F:      sta WSYNC
            dex
            bpl LB34F
            lda L00AF
            sta COLPM0
            ldx #$05
LB35C:      sta WSYNC
            dex
            bpl LB35C
            lda #$10
            sta CHBASE
            ldx #$07
LB369:      sta WSYNC
            dex
            bpl LB369
            lda #$68
            sta CHBASE
            ldx #$04
LB376:      sta WSYNC
            dex
            bpl LB376
            lda LTEMP
            cmp #$04
            bcc LB3C9
            sta WSYNC
            sta WSYNC
            ldx #$07
LB38A:      lda #$00
            sta HPOSP0,X
            dex
            bpl LB38A
            lda LTEMP
            cmp #$08
            bcs LB3A5
            lda L00A5
            sta COLPF0
            lda L00A6
            sta COLPF3
            jmp LB5A0
LB3A5:      lda L00AF
            sta COLBK
            lda #$3E
            sta COLPF2
            ldx #$1F
LB3B1:      sta WSYNC
            dex
            bpl LB3B1
            lda L00A7
            sta COLPF0
            lda L00AB
            sta COLPF3
            ldx #$0C
            stx CHBASE
            jmp LB464
LB3C9:      lda L0840
            sta COLPM0
            lda L0A40
            sta HPOSP0
            lda L0880
            sta COLPM1
            lda L0A80
            sta HPOSP1
            sta WSYNC
            lda L08C0
            sta COLPM2
            lda L0AC0
            sta HPOSP2
            lda L0900
            sta COLPM3
            lda L0B00
            sta HPOSP3
            lda #$00
            sta SIZEP0
            sta SIZEP1
            sta WSYNC
            sta SIZEP2
            sta SIZEP3
            lda L00A7
            sta COLPF0
            lda L00AB
            sta COLPF3
            lda L00AF
            ldx #$0C
            sta WSYNC
            sta COLBK
            stx CHBASE
            ldx #$01
LB426:      lda L0840,X
            sta COLPM0
            lda L0A40,X
            sta HPOSP0
            lda L0880,X
            sta COLPM1
            lda L0A80,X
            sta HPOSP1
            lda L08C0,X
            sta COLPM2
            lda L0AC0,X
            sta HPOSP2
            lda L0900,X
            sta COLPM3
            lda L0B00,X
            sta HPOSP3
            jmp LB45C
            sta SIZEP3
LB45C:      sta WSYNC
            inx
            cpx #$30
            bcc LB426
LB464:      lda L00A8
            sta COLPF1
            lda L00A9
            sta COLPF2
            lda L009D
            sta WSYNC
            sta HSCROL
            lda #$80
            sta VDSLST
            lda #$70
            sta VDSLST+1
            jmp L70A0
            pha
            txa
            pha
            lda L009E
            sta WSYNC
            sta HSCROL
            lda L00AA
            sta COLPF1
LB493:      lda ATRACT
            sta SIZEP1
            lda ZCHAIN+1
            sta COLPM1
            jmp L4AF0
            ora (L00D0,X)
LB4A2:      lda FMSZPG+4
            sta HPOSP0
            lda DRKMSK
            sta SIZEP0
            lda DSTAT
            sta COLPM0
            lda LTEMP
            cmp #$02
            bcs LB4CB
            lda DELTAR
            bne LB4CB
            sta SIZEP2
            lda MLTTMP
            sta COLPM2
            lda PALNTS
            sta HPOSP2
            jmp LB4E9
LB4CB:      lda #$00
            sta SIZEM
            lda MLTTMP
            sta COLPF3
            ldx PALNTS
            stx HPOSM3
            inx
            inx
            stx HPOSM2
            inx
            inx
            stx HPOSM1
            inx
            inx
            stx HPOSM0
LB4E9:      lda LTEMP
            cmp #$02
            bcc LB50B
            lda L00B7
            sta HPOSP2
            lda L00B8
            sta HPOSP3
            lda #$22
            sta COLPM2
            sta COLPM3
            lda #$00
            sta SIZEP2
            sta SIZEP3
            beq LB528
LB50B:      lda DELTAR
            beq LB528
            jmp L4B98
            sta HPOSP2
            lda #$1E
            sta COLPM2
            lda #$00
            sta COLPM3
            ldx #$00
            stx SIZEP2
            inx
            stx SIZEP3
LB528:      lda #$35
            sta VDSLST
            lda #$B5
            sta VDSLST+1
            jmp LB5B4
            pha
            txa
            pha
            lda L00A7
            sta COLBK
            ldx #$10
            lda L009F
            sta WSYNC
            stx CHBASE
            sta HSCROL
            ldx #$02
LB54C:      lda L00AC,X
            sta COLPF0,X
            dex
            bpl LB54C
            lda #$60
            sta VDSLST
            lda #$B5
            sta VDSLST+1
            bne LB5B4
            pha
            txa
            pha
            lda L00AF
            sta COLPF3
            ldx #$09
LB56A:      sta WSYNC
            dex
            bpl LB56A
            lda SOUNDR
            sta HPOSP0
            lda CASINI
            sta COLPM0
            lda #$00
            sta SIZEP0
            lda #$8B
            sta VDSLST
            lda #$B5
            sta VDSLST+1
            bne LB5B4
            pha
            lda L00AD
            sta WSYNC
            sta COLBK
            lda #$0F
            sta VDSLST
            lda #$B3
            sta VDSLST+1
            bne LB5B6
LB5A0:      lda POKMSK
            ldy RAMLO
            cpy #$80
            bcc LB5AC
            eor NGFLAG
            and #$F6
LB5AC:      sta WSYNC
            sta COLBK
LB5B2:      pla
            tay
LB5B4:      pla
            tax
LB5B6:      pla
            rti
            cld
            lda #$0F
            jmp L44AF
            lda #$B3
            sta VDSLST+1
LB5C3:      lda INSDAT
            beq LB5D1
            lda COUNTR
            sta RAMLO+1
            lda COUNTR+1
            sta TRAMSZ
            dec INSDAT
LB5D1:      lda SWPFLG
            beq LB5D8
LB5D5:      jmp LB6CD
LB5D8:      lda LMARGN
            beq LB5D5
            lda HOLDCH
            cmp #$02
            bcc LB5E5
            jmp LB65C
LB5E5:      lda L00A1
            clc
            adc L00A0
            tax
            and #$1F
            sta L00A1
            txa
            lsr
            lsr
            lsr
            lsr
            lsr
            tax
            clc
            adc L00A2
            sta L00A2
            clc
            txa
            adc L00A3
            sta L00A3
            txa
            eor #$FF
            clc
            adc #$01
            tax
            sta L00A4
            ldy SOUNDR
            beq LB617
            clc
            adc SOUNDR
            bcs LB615
            lda #$00
LB615:      sta SOUNDR
LB617:      txa
            clc
            adc L009F
            and #$07
            sta L009F
            bcc LB624
            jmp LB6CD
LB624:      lda LTEMP
            cmp #$02
            bcs LB64C
            ldy #$03
            lda L152B
            adc #$02
            beq LB63E
LB633:      ldx L8482,Y
            sta L1500,X
            dey
            bpl LB633
            bmi LB64C
LB63E:      ldx L8482,Y
            sta L1500,X
            inc L1501,X
            dey
            bpl LB63E
            bmi LB64C
LB64C:      lda L152E
            sta COLRSH
            lda L152F
            sta TEMP
            jsr LB86F
            jmp LB6CD
LB65C:      lda L00A2
            tax
            and #$01
            sta L00A2
            txa
            lsr
            beq LB69B
            eor #$FF
            clc
            adc #$01
            clc
            adc L009E
            and #$07
            sta L009E
            bcs LB69B
            lda L151D
            clc
            adc #$02
            ldy #$03
            pha
            lda LTEMP
            and #$01
            bne LB68B
            pla
            cmp #$BC
            bcc LB692
            bcs LB690
LB68B:      pla
            cmp #$D0
            bcc LB692
LB690:      lda #$80
LB692:      ldx L847E,Y
            sta L1500,X
            dey
            bpl LB692
LB69B:      lda L00A3
            tax
            and #$03
            sta L00A3
            txa
            lsr
            lsr
            beq LB6CD
            eor #$FF
            clc
            adc #$01
            adc L009D
            and #$07
            sta L009D
            bcs LB6CD
            lda L1514
            clc
            adc #$02
            ldy #$02
            cmp #$50
            bcc LB6C2
            lda #$00
LB6C2:      ldx L847B,Y
            sta L1500,X
            dey
            bpl LB6C2
            bmi LB6CD
LB6CD:      lda SWPFLG
            beq LB6D7
            jsr L842B
            jmp LB805
LB6D7:      ldy L0083
            beq LB6FF
            ldy #$00
            dec LOMEM
            bne LB6FF
            lda LOMEM+1
            sta LOMEM
            lda (L0082),Y
            sta AUDC1
            bne LB6EE
            sta L0083
LB6EE:      inc L0082
            bne LB6F4
            inc L0083
LB6F4:      lda (L0082),Y
            sta AUDF1
            inc L0082
            bne LB6FF
            inc L0083
LB6FF:      ldx L0087
            beq LB725
            dec L0084
            bne LB725
            lda L0085
            sta L0084
            lda (L0086),Y
            sta AUDC2
            bne LB714
            sta L0087
LB714:      inc L0086
            bne LB71A
            inc L0087
LB71A:      lda (L0086),Y
            sta AUDF2
            inc L0086
            bne LB725
            inc L0087
LB725:      jsr L46F3
            lda LMARGN
            bne LB72F
            jmp LB7C8
LB72F:      inc ICPTLZ
            lda ICPTLZ
            cmp #$3C
            bne LB742
            lda #$00
            sta ICPTLZ
            lda BFENHI
            bne LB742
            jsr LB85B
LB742:      jsr LB83D
            lda L009B
            bne LB789
            jsr L4990
            ldx ICAX5Z
            beq LB754
            lsr
            lsr
            lsr
            lsr
LB754:      pha
            lsr
            bcs LB760
            lda #$01
            sta SAVADR+1
            lda #$00
            sta RAMLO
LB760:      pla
            and #$0C
            cmp #$0C
            beq LB76F
            cmp #$04
            beq LB773
            lda #$00
            beq LB775
LB76F:      lda #$01
            bne LB775
LB773:      lda #$02
LB775:      sta L00B2
            ldx ICAX5Z
            lda TRIG0,X
            bne LB786
            lda #$01
            sta SAVADR
            lda #$00
            sta RAMLO
LB786:      jmp LB7B2
LB789:      lda #$01
            sta L00B2
            sta RAMLO
            lda #$5A
            sec
            sbc L009F
            lsr
            lsr
            tay
            lda (COLRSH),Y
            cmp #$0B
            bcs LB7A4
            iny
            lda (COLRSH),Y
            cmp #$0B
            bcc LB7A6
LB7A4:      inc SAVADR+1
LB7A6:      lda L009C
            bne LB7B0
            lda #$18
            sta L009C
            sta SAVADR
LB7B0:      dec L009C
LB7B2:      lda FMSZPG+1
LB7B4:      beq LB7C8
            dec FMSZPG+1
            bne LB7C8
            lda #$00
            sta CRITIC
            sta FMSZPG
            ldx #$06
LB7C2:      sta L3F46,X
            dex
            bpl LB7C2
LB7C8:      lda L3F01
            beq LB7FF
            lda LMARGN
            beq LB7F8
            inc BFENLO
            lda BFENLO
            and #$7F
            cmp #$1E
            bcc LB7FF
            lda BFENLO
            bmi LB7F8
            ldy #$04
            lda ICAX5Z
            beq LB7E7
            ldy #$2C
LB7E7:      ldx #$05
            lda #$00
LB7EB:      sta L3F00,Y
            iny
            dex
            bpl LB7EB
            lda #$80
            sta BFENLO
            bne LB7FF
LB7F8:      lda #$00
            sta BFENLO
            jsr LB0FF
LB7FF:      lda HOLDCH
            beq LB805
            dec HOLDCH
LB805:      lda L0099
            bmi LB80B
            inc L0099
LB80B:      lda RAMTOP
            bmi LB811
            inc RAMTOP
LB811:      ldx #$0C
            ldy RAMLO
LB815:      jsr L7040
            cpy #$80
            bcc LB820
            eor NGFLAG
            and #$F6
LB820:      sta L00A5,X
            dex
            bpl LB815
LB825:      pla
            tay
            pla
            tax
            pla
            rti
LB82B:      .byte $00,$DC,$84,$28,$84
LB830:      .byte $1E,$18,$C8,$94,$A6,$C4,$0E,$FE
            .byte $FA,$F4,$00,$48,$34
LB83D:      lda ICBALZ
            and #$0F
            ora #$10
            sta L3F3C
            lda ICBAHZ
            lsr
            lsr
            lsr
            lsr
            ora #$10
            sta L3F3D
            lda ICBAHZ
            and #$0F
            ora #$10
            sta L3F3E
            rts
LB85B:      lda ICBALZ
            cmp #$09
            bcs LB86D
            sed
            lda ICBAHZ
            clc
            adc #$01
            sta ICBAHZ
            bcc LB86D
            inc ICBALZ
LB86D:      cld
            rts
LB86F:      dec BUFRHI
            bne LB898
            lda #$27
            sta BUFRHI
            lda #$64
            ldx #$04
LB87B:      cmp BUFRLO
            beq LB898
            clc
            adc #$05
            dex
            bpl LB87B
            lda BUFRLO
            cmp #$80
            bcs LB88F
            adc #$20
            bne LB893
LB88F:      and #$1F
            adc #$20
LB893:      sta BUFRLO
            jsr LBBD3
LB898:      lda BPTR
            beq LB903
            dec BPTR
            bne LB903
            ldx LTEMP+1
            lda L025B,X
            bpl LB904
            pha
            asl
            cmp #$C0
            bcs LB8B3
            jsr LB9DD
            jmp LB8B6
LB8B3:      jsr LB9E3
LB8B6:      pla
            tay
            and #$07
            tax
            tya
            pha
            lsr
            lsr
            lsr
            and #$03
            tay
            pla
            asl
            and #$C0
            ora #$20
LB8C9:      sta L00C5,X
            pha
            lda L9C32,X
            sta L00B7,X
            lda L9C39,X
            sta L00BE,X
            lda #$00
            sta L00CC,X
            pla
            inx
            dey
            bpl LB8C9
            ldx LTEMP+1
            lda L025B,X
            pha
            lsr
            lsr
            lsr
            lsr
            lsr
            and #$03
            tax
            pla
            and #$03
            sta L00D9,X
            inc L00D9,X
            lda #$00
            sta L00DC,X
            inc LTEMP+1
            inc LTEMP+1
            ldx LTEMP+1
            lda L025A,X
            sta BPTR
LB903:      rts
LB904:      tay
            lda LB90E,Y
            pha
            lda LB917,Y
            pha
            rts
LB90E:      lda LB9B9,Y
            lda LB9B9,Y
            lda LB9B9,Y
LB917:      .byte $1F,$2B,$34,$4A,$60,$69,$75,$AB
            .byte $6F
LB920:      inc LTEMP+1
            inc LTEMP+1
            ldx LTEMP+1
            lda L025A,X
            sta BPTR
            rts
            jsr LB9AC
            lda #$80
            sta L00BB,X
            bne LB93C
            jsr LB9AC
            lda #$00
            sta L00BB,X
LB93C:      lda #$00
            sta L00BD,X
            lda #$D0
            sta L00B7,X
            lda #$BD
            sta L00B9,X
            jmp LB920
            lda #$C0
            sta DELTAC
            lda #$10
            sta DELTAR
            ldx #$02
            lda #$20
            sta L0097
            ldy #$C4
            jsr LBA44
            jmp LB920
            lda DELTAC
            and #$3F
            sta DELTAC
            jmp LB920
            lda #$00
            sta FREQ
            beq LB97A
            lda #$01
            sta FREQ
            bne LB97A
            lda #$02
            sta FREQ
LB97A:      lda #$CF
            sta SOUNDR
            lda L025C,X
            sta FEOF
            asl
            asl
            asl
            tay
            ldx #$07
LB989:      lda L6907,Y
            sta L04D8,X
            dey
            dex
            bpl LB989
            inc LTEMP+1
            ldx #$06
LB997:      lda L00C5,X
            beq LB9A6
            bit L9C2D
            bne LB9A6
            and #$C7
            ora #$28
            sta L00C5,X
LB9A6:      dex
            bpl LB997
            jmp LB920
LB9AC:      ldx #$01
LB9AE:      lda L00B7,X
            beq LB9B5
            dex
            bpl LB9AE
LB9B5:      rts
LB9B6:      cmp #$1A
            beq LB9CF
            cmp #$5A
            beq LB9D7
            cmp #$58
            beq LB9D7
            cmp #$56
            beq LB9CF
            cmp #$49
            beq LB9CF
            cmp #$50
            beq LB9D7
            rts
LB9CF:      lda #$50
            sta BUFSTR+1
LB9D3:      jsr LB0D9
            rts
LB9D7:      lda #$01
            sta BUFSTR
            bne LB9D3
LB9DD:      lda #$28
            sta FMSZPG
            bne LB9E7
LB9E3:      lda #$34
            sta CRITIC
LB9E7:      lda #$B4
            sta FMSZPG+1
            ldx #$06
LB9ED:      lda L83F1,X
            sta L3F46,X
            dex
            bpl LB9ED
            rts
LB9F7:      .byte $04,$05,$06,$07,$03
LB9FC:      sta L0094
            sty L0095
LBA00:      ldy LB9F7,X
            sty L008F
            ldy #$00
            sty L008E
            lda L0094
            cmp L0095
            beq LBA30
            bcc LBA20
            tay
            sec
            sbc L0095
            tax
LBA16:      lda #$00
LBA18:      sta (L008E),Y
            dey
            dex
            bne LBA18
            beq LBA30
LBA20:      lda L0095
            sec
            sbc L0094
            tax
            ldy #$00
            lda L0095
            sec
            sbc (L008C),Y
            tay
            bne LBA16
LBA30:      lda L0095
            ldy #$00
            sec
            sbc (L008C),Y
            sta L008E
            lda (L008C),Y
            tay
LBA3C:      lda (L008C),Y
            sta (L008E),Y
            dey
            bne LBA3C
            rts
LBA44:      sty L0095
            tya
            sec
            sbc L0097
            sta L008E
            lda LB9F7,X
            sta L008F
            tya
            sec
            sbc #$40
            bcc LBA6B
            beq LBA6B
            cmp L0097
            bcc LBA5F
            lda L0097
LBA5F:      tax
            lda L0097
            tay
            lda #$00
LBA65:      sta (L008E),Y
            dey
            dex
            bne LBA65
LBA6B:      rts
LBA6C:      .byte $08,$08,$08,$08,$07
LBA71:      .byte $00,$40,$80,$C0,$C0
LBA76:      .byte $0A,$0A,$0A,$0A,$09
LBA7B:      .byte $00,$40,$80,$C0,$C0
LBA80:      sty L0096
            ldy LB9F7,X
            sty L008F
            ldy #$00
            sty L008E
            ldy LBA76,X
            sty L0091
            ldy LBA7B,X
            sty L0090
            ldy LBA6C,X
            sty L0093
            ldy LBA71,X
            sty L0092
            txa
            pha
            lda L0094
            cmp L0095
            beq LBAD0
            bcc LBAC0
            tay
            sec
            sbc L0095
            tax
LBAAE:      lda #$00
LBAB0:      cpy #$40
            bcc LBAD0
            sta (L0092),Y
            sta (L0090),Y
            sta (L008E),Y
            dey
            dex
            bne LBAB0
            beq LBAD0
LBAC0:      lda L0095
            sec
            sbc L0094
            tax
            ldy #$00
            lda L0095
            sec
            sbc (L008C),Y
            tay
            bne LBAAE
LBAD0:      pla
            tax
            lda L0095
            ldy #$00
            sec
            sbc (L008C),Y
            clc
            adc LBA71,X
            sta L0092
            bcc LBAE3
            inc L0093
LBAE3:      lda L0095
            sec
            sbc (L008C),Y
            clc
            adc LBA7B,X
            sta L0090
            bcc LBAF2
            inc L0091
LBAF2:      lda L0095
            sec
            sbc (L008C),Y
            sta L008E
            lda L0095
            sec
            sbc #$40
            bcc LBB20
            beq LBB20
            cmp (L008C),Y
            bcc LBB08
            lda (L008C),Y
LBB08:      tax
            lda (L008C),Y
            tay
            iny
            lda (L008C),Y
            dey
LBB10:      sta (L0092),Y
            pha
            lda L0096
            sta (L0090),Y
            lda (L008C),Y
            sta (L008E),Y
            pla
            dey
            dex
            bne LBB10
LBB20:      rts
LBB21:      sty L0095
            tya
            sec
            sbc L0097
            clc
            adc LBA71,X
            sta L0092
            lda LBA6C,X
            adc #$00
            sta L0093
            tya
            sec
            sbc L0097
            clc
            adc LBA7B,X
            sta L0090
            lda LBA76,X
            adc #$00
            sta L0091
            tya
            sec
            sbc L0097
            sta L008E
            lda LB9F7,X
            sta L008F
            tya
            sec
            sbc #$40
            bcc LBB6E
            beq LBB6E
            cmp L0097
            bcc LBB5E
            lda L0097
LBB5E:      tax
            lda L0097
            tay
            lda #$00
LBB64:      sta (L0092),Y
            sta (L0090),Y
            sta (L008E),Y
            dey
            dex
            bne LBB64
LBB6E:      rts
            ldx L0099
            ldy #$00
            sty L0099
            cpx #$04
            bcc LBB7F
            sta L009A
            lda #$00
            sta RAMLO
LBB7F:      jmp LB825
LBB82:      ldx #$FF
            cpx L009A
            beq LBBA7
            lda L009A
            stx L009A
            ldx L009B
            beq LBB95
LBB90:      dec L009B
            jmp L80D0
LBB95:      cmp #$21
            bne LBBA7
            inc SWPFLG
LBB9B:      lda L009A
            bmi LBB9B
            dec SWPFLG
            stx L009A
            cmp #$21
            bne LBB95
LBBA7:      lda CONSOL
            and #$07
            cmp #$07
            beq LBBB9
            lda #$08
            sta CONSOL
            ldx L009B
            bne LBB90
LBBB9:      rts
LBBBA:      ldx #$09
LBBBC:      lda ICHIDZ,X
            ldy L1400,X
            sta L1400,X
            tya
            sta ICHIDZ,X
            dex
            bpl LBBBC
            lda ICAX5Z
            eor #$01
            sta ICAX5Z
            rts
            .byte $04,$05
LBBD3:      ldy #$00
            lda BUFRLO
            and #$1F
            beq LBBFC
            sta L0097
LBBDD:      lda #$90
            sta L3F5B,Y
            iny
            dec L0097
            beq LBC08
            ldx #$03
LBBE9:      lda #$95
            sta L3F5B,Y
            iny
            dec L0097
            beq LBBF8
            dex
            bpl LBBE9
            bmi LBBDD
LBBF8:      cpx #$00
            bne LBC08
LBBFC:      lda BUFRLO
            lsr
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$8C
            bne LBC12
LBC08:      lda BUFRLO
            lsr
            lsr
            lsr
            lsr
            lsr
            clc
            adc #$91
LBC12:      sta L3F5B,Y
            rts
LBC16:      lda BUFRLO
            and #$1F
            ldx #$04
LBC1C:      cmp LBC38,X
            beq LBC27
            bcc LBC27
            dex
            bpl LBC1C
            inx
LBC27:      lda LBC38,X
            ora #$80
            sta BUFRLO
            sta ICPTHZ
            lda #$27
            sta ICBLLZ
            jsr LBBD3
            rts
LBC38:      clc
            .byte $13
            asl L0409
LBC3D:      ldx #$02
LBC3F:      jsr LBC47
            dex
            dex
            bpl LBC3F
            rts
LBC47:      ldy L0088,X
            beq LBC8C
            inc L0089,X
            lda LBCC4,Y
            cpx #$02
            bcc LBC57
            lda LBDAB,Y
LBC57:      cmp L0089,X
            bcs LBC5E
            jsr LBC67
LBC5E:      ldy L0089,X
            lda LBF8F,Y
            sta AUDC3,X
            rts
LBC67:      inc L0088,X
            ldy L0088,X
            cpx #$02
            bcs LBC75
            lda LBCC4,Y
            jmp LBC78
LBC75:      lda LBDAB,Y
LBC78:      beq LBC8C
            and #$E0
            sta L0089,X
            lda LBE29,Y
            cpx #$02
            bcc LBC88
            lda LBF10,Y
LBC88:      sta AUDF3,X
            rts
LBC8C:      lda LMARGN
            beq LBC98
            ldy #$01
            cpx #$02
            beq LBCAE
            bne LBCA0
LBC98:      lda #$00
            sta L0088,X
            sta AUDC3,X
            rts
LBCA0:      ldx #$00
            lda LBCB9,Y
            jmp LBCB3
LBCA8:      pha
            jsr LBCA0
            pla
            tay
LBCAE:      ldx #$02
            lda LBCBF,Y
LBCB3:      sta L0088,X
            jsr LBC67
            rts
LBCB9:      .byte $00,$1C,$90,$A7,$D4,$E2
LBCBF:      .byte $00,$24,$27,$3E,$6B
LBCC4:      .byte $79,$0F,$0F,$0F,$07,$07,$0F,$07
            .byte $07,$07,$07,$07,$07,$0F,$0F,$0F
            .byte $07,$07,$0F,$07,$07,$07,$07,$07
            .byte $07,$0F,$0F,$1F,$00,$0F,$0F,$0F
            .byte $07,$0F,$07,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$07,$0F,$07,$0F,$07,$07,$0F
            .byte $0F,$0F,$0F,$07,$0F,$07,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$07,$0F,$07,$0F
            .byte $07,$07,$0F,$0F,$0F,$0F,$07,$0F
            .byte $07,$0F,$0F,$0F,$0F,$0F,$0F,$07
            .byte $0F,$07,$0F,$07,$07,$0F,$0F,$0F
            .byte $0F,$07,$0F,$07,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$07,$0F,$07,$0F,$07,$07
            .byte $0F,$0F,$0F,$0F,$07,$0F,$07,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$07,$0F,$07
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$07,$0F
            .byte $07,$0F,$0F,$0F,$07,$0F,$07,$07
            .byte $0F,$07,$07,$0F,$07,$07,$0F,$07
            .byte $00,$08,$08,$08,$08,$08,$08,$08
            .byte $08,$08,$08,$08,$08,$08,$08,$08
            .byte $08,$08,$08,$08,$08,$08,$1A,$00
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$09,$09,$09,$09,$1D,$09,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$09,$09,$1D,$00,$09,$09,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$1D,$00,$28,$27,$27,$3F
LBDAB:      .byte $00,$67,$67,$67,$67,$07,$67,$67
            .byte $07,$67,$67,$67,$67,$07,$67,$67
            .byte $67,$67,$67,$67,$67,$07,$67,$67
            .byte $07,$67,$67,$67,$67,$07,$67,$67
            .byte $67,$0F,$0F,$1F,$00,$67,$67,$00
            .byte $08,$08,$08,$08,$08,$08,$08,$08
            .byte $08,$08,$08,$08,$08,$08,$08,$08
            .byte $08,$08,$08,$08,$08,$1A,$00,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$09,$09,$09,$1D,$09,$09,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $09,$09,$1D,$00,$09,$09,$09,$09
            .byte $09,$09,$09,$09,$09,$09,$09,$09
            .byte $1D,$00,$48,$47,$47,$5F
LBE29:      .byte $00,$79,$79,$44,$00,$51,$00,$88
            .byte $44,$80,$40,$79,$3C,$79,$79,$44
            .byte $00,$51,$00,$88,$44,$80,$44,$79
            .byte $4D,$3C,$00,$00,$00,$F3,$F3,$79
            .byte $79,$88,$88,$A2,$88,$79,$F3,$F3
            .byte $79,$79,$88,$88,$A2,$B6,$AD,$A2
            .byte $F3,$F3,$79,$79,$88,$88,$A2,$88
            .byte $79,$F3,$F3,$79,$79,$88,$88,$A2
            .byte $B6,$AD,$A2,$B6,$B6,$5B,$5B,$66
            .byte $66,$79,$66,$5B,$B6,$B6,$5B,$5B
            .byte $66,$66,$79,$88,$80,$79,$F3,$F3
            .byte $79,$79,$88,$88,$A2,$88,$79,$F3
            .byte $F3,$79,$79,$88,$88,$A2,$B6,$AD
            .byte $A2,$A2,$A2,$51,$51,$5B,$5B,$6C
            .byte $5B,$51,$B6,$B6,$5B,$5B,$66,$66
            .byte $79,$66,$5B,$F3,$F3,$79,$79,$88
            .byte $88,$A2,$88,$79,$F3,$F3,$F3,$C1
            .byte $C1,$C1,$B6,$B6,$B6,$A2,$A2,$A2
            .byte $00,$88,$5B,$44,$66,$51,$44,$5B
            .byte $48,$3C,$44,$5B,$6C,$88,$5B,$44
            .byte $66,$51,$44,$5B,$48,$3C,$88,$00
            .byte $5B,$3C,$2D,$23,$2D,$3C,$21,$2D
            .byte $35,$1D,$28,$2F,$5B,$3C,$2D,$23
            .byte $2D,$3C,$2D,$2F,$35,$3C,$5B,$3C
            .byte $2D,$23,$2D,$3C,$21,$2D,$35,$1D
            .byte $28,$2F,$5B,$3C,$2D,$23,$2D,$3C
            .byte $79,$6C,$60,$5B,$00,$88,$6C,$5B
            .byte $4C,$00,$4C,$51,$5B,$99,$4C,$90
            .byte $48,$88,$00,$00,$0D,$0D,$0D
LBF10:      .byte $00,$04,$02,$04,$02,$F3,$02,$04
            .byte $F3,$04,$02,$04,$02,$F3,$02,$04
            .byte $02,$04,$02,$04,$02,$F3,$02,$04
            .byte $F3,$04,$02,$04,$02,$F3,$02,$04
            .byte $02,$F3,$00,$00,$00,$04,$02,$00
            .byte $44,$2D,$21,$32,$28,$21,$2D,$23
            .byte $1D,$21,$2D,$35,$44,$2D,$21,$32
            .byte $28,$21,$2D,$23,$1D,$44,$00,$B6
            .byte $79,$5B,$48,$5B,$79,$44,$5B,$6C
            .byte $3C,$51,$60,$B6,$79,$5B,$48,$5B
            .byte $79,$5B,$60,$6C,$79,$B6,$79,$5B
            .byte $48,$5B,$79,$44,$5B,$6C,$3C,$51
            .byte $60,$B6,$79,$5B,$48,$5B,$79,$F3
            .byte $D9,$C1,$B6,$00,$44,$35,$2D,$25
            .byte $00,$25,$28,$2D,$4C,$25,$48,$23
            .byte $44,$00,$01,$01,$01,$02,$00
LBF8F:      .byte $A5,$A6,$A7,$A7,$A8,$A8,$A9,$A8
            .byte $A8,$A8,$A8,$A7,$A6,$A5,$A4,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $0F,$0E,$0D,$0B,$0A,$08,$07,$07
            .byte $06,$05,$04,$03,$02,$01,$02,$02
            .byte $03,$03,$04,$04,$03,$03,$02,$02
            .byte $01,$01,$01,$01,$01,$01,$01,$01
            .byte $0F,$0E,$0D,$0B,$0A,$08,$07,$07
            .byte $06,$05,$05,$04,$04,$03,$03,$02
            .byte $02,$01,$01,$01,$01,$02,$03,$04
            .byte $04,$03,$02,$02,$02,$02,$01,$01
            .byte $82,$02,$83,$02,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$80,$75
            .byte $80
;
            org $7040
;
L7040:      cpx #$05
            beq L7048
            lda LB830,X
            rts
L7048:      lda L2080
            cmp #$0F
            beq L7057
            lda #$7C
            sta L708C
            lda #$1C
            rts
L7057:      lda #$78
            sta L708C
            lda LB830,X
            rts
;
            org $7080
;
            pha
            txa
            pha
            lda L009E
            sta WSYNC
            sta HSCROL
            lda #$0C
            sta CHBASE
            lda L00AA
            sta COLPF1
            jmp LB493
;
            org $70A0
;
L70A0:      lda #$3F
            sta DMACLT
            jmp LB5B2
;
            org $70C0
;
L70C0:      lda #$FF
            sta COLDST
            lda #$00
            rts
;
            org $4000
;
            .byte $0F,$49,$AF,$44,$B2,$48,$D1,$03
            .byte $C5,$46,$CE,$46,$F3,$46,$37,$49
            .byte $90,$49,$E0,$49,$FB,$49,$1A,$4A
            .byte $39,$4A,$54,$4A,$E8,$0B,$36,$0C
            .byte $9C,$0C,$CC,$0C,$F0,$4C,$80,$4D
            .byte $6E,$4E,$6F,$4A,$5E,$50,$8A,$4A
            .byte $9E,$50,$BD,$4A,$7A,$52,$F0,$4A
            .byte $FB,$4A,$1A,$4B,$56,$4B,$63,$4B
            .byte $56,$54,$5E,$54,$98,$4B,$B6,$4B
            .byte $BE,$4B,$D6,$4B,$F0,$70,$70,$4E
            .byte $00,$60,$0E,$0E,$0E,$0E,$0E,$0E
            .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
            .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
            .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
            .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
            .byte $0E,$0E,$0E,$0E,$0E,$0E,$0E,$0E
            .byte $0E,$B0,$70,$52
L4084:      .byte $9F
L4085:      .byte $40,$70,$80,$20,$44,$81,$42,$04
            .byte $84,$04,$04,$04,$84,$70,$04,$04
            .byte $84,$30,$42,$F1,$41,$02,$02,$41
            .byte $4C,$40,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$30,$32,$2F,$27,$32,$21
            .byte $2D,$2D,$29,$2E,$27,$1A,$00,$33
            .byte $23,$2F,$34,$34,$00,$24,$0E,$00
            .byte $33,$2D,$29,$34,$28,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$27,$32,$21
            .byte $30,$28,$29,$23,$33,$1A,$00,$23
            .byte $2F,$35,$32,$34,$2E,$25,$39,$00
            .byte $27,$32,$21,$2E,$2E,$25,$32,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$21
            .byte $35,$24,$29,$2F,$1A,$00,$32,$2F
            .byte $22,$25,$32,$34,$00,$36,$29,$25
            .byte $29,$32,$21,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$35,$30,$24,$21,$34
            .byte $25,$33,$1A,$00,$34,$29,$38,$00
            .byte $21,$2E,$24,$00,$30,$2C,$21,$39
            .byte $33,$2F,$26,$34,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$33,$34
            .byte $21,$32,$34,$1A,$2E,$25,$37,$00
            .byte $27,$21,$2D,$25,$00,$00,$00,$00
            .byte $2A,$1A
L420F:      .byte $2A,$2F,$39,$33,$34,$29,$23,$2B
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$33,$25,$2C,$25,$23
            .byte $34,$1A
L4231:      .byte $11,$00,$30,$2C,$21,$39,$25,$32
            .byte $00,$00,$00,$00,$23,$1A,$23,$2F
            .byte $2E,$34,$29,$2E,$35,$25,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$2F,$30,$34,$29,$2F,$2E,$1A
L4261:      .byte $22,$25,$27,$29,$2E,$2E,$25,$32
            .byte $00,$00,$00,$00,$24,$1A,$24,$25
            .byte $2D,$2F,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$01,$02,$03,$04,$00,$00,$05
            .byte $06,$00,$00,$00,$00,$00,$00,$07
            .byte $08,$00,$00,$09,$0A,$00,$00,$00
            .byte $00,$00,$00,$0B,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$0C,$0D,$0E,$0F
            .byte $00,$01,$02,$03,$04,$00,$00,$05
            .byte $10,$11,$12,$13,$14,$15,$16,$17
            .byte $18,$19,$1A,$1B,$1C,$1D,$1E,$1F
            .byte $20,$21,$22,$23,$24,$25,$26,$27
            .byte $28,$00,$29,$2A,$2B,$00,$00,$2C
            .byte $08,$00,$00,$2D,$2E,$2F,$30,$31
            .byte $10,$11,$12,$13,$14,$15,$16,$17
            .byte $32,$32,$32,$32,$32,$32,$32,$33
            .byte $32,$34,$32,$35,$36,$37,$38,$39
            .byte $3A,$3B,$32,$3C,$3A,$33,$3D,$3E
            .byte $3F,$40,$41,$42,$43,$44,$45,$46
            .byte $47,$48,$49,$4A,$4B,$4C,$4D,$32
            .byte $32,$32,$32,$32,$32,$32,$32,$33
            .byte $00,$00,$00,$00,$01,$02,$03,$04
            .byte $05,$06,$07,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$08,$09,$0A,$00,$00,$00
            .byte $00,$00,$01,$02,$03,$04,$05,$06
            .byte $07,$00,$00,$00,$00,$00,$00,$00
            .byte $0B,$0C,$0D,$0E,$0F,$10,$0F,$11
            .byte $12,$13,$14,$15,$16,$17,$18,$19
            .byte $1A,$1B,$1C,$00,$1D,$02,$1E,$1F
            .byte $20,$21,$22,$23,$24,$25,$0B,$0C
            .byte $0D,$0E,$0F,$10,$0F,$11,$12,$13
            .byte $14,$15,$16,$17,$18,$19,$1A,$1B
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$26,$27,$28,$29
            .byte $2A,$2B,$2C,$2D,$2E,$2F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$26,$27,$28,$29,$2A,$2B
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
            .byte $00,$00,$00,$00,$00,$00,$00,$01
            .byte $02,$03,$04,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $05,$06,$05,$07,$08,$07,$09,$0A
            .byte $0B,$0C,$0D,$0E,$0F,$0F,$0F,$0F
            .byte $10,$11,$12,$12,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $13,$13,$13,$13,$13,$13,$13,$13
            .byte $14,$15,$16,$17,$18,$19,$1A,$1B
            .byte $1C,$1D,$1E,$1F,$20,$21,$22,$23
            .byte $24,$25,$26,$26,$26,$27,$26,$28
            .byte $26,$28,$28,$26,$28,$26,$27,$26
            .byte $27,$27,$26,$27,$26,$28,$26,$28
L4461:      .byte $00
L4462:      .byte $20,$07,$3C,$18,$78,$87,$00,$36
            .byte $7F,$FF,$DB,$DB,$7F,$36
L4470:      .byte $00,$00,$00,$C0,$20,$F8,$B8,$08
            .byte $C0,$E0,$E0,$60,$60,$E0,$C0
L447F:      .byte $00,$00,$00,$00,$00,$00,$78,$FF
            .byte $C9,$00,$00,$00,$00,$00,$00
L448E:      .byte $00,$00,$00,$00,$00,$00,$40,$F0
            .byte $30,$00,$00,$00,$00,$00,$00
L449D:      .byte $01
L449E:      .byte $08
L449F:      .byte $04
L44A0:      .byte $00
L44A1:      .byte $00
L44A2:      .byte $00
L44A3:      .byte $00
L44A4:      .byte $00
L44A5:      .byte $00
L44A6:      .byte $00
L44A7:      .byte $00
L44A8:      .byte $00
L44A9:      .byte $00
L44AA:      .byte $00
L44AB:      .byte $00,$00
L44AD:      .byte $00
L44AE:      .byte $00
L44AF:      lda COUNTR
            cmp #$4C
            bne L44DE
            lda COUNTR+1
            cmp #$40
            bne L44DE
            lda #$38
            sta VDSLST
            lda #$45
            sta VDSLST+1
            lda #$00
            sta POKMSK
            sta L44A1
            sta L44A2
            sta L44A3
            sta L44A4
            sta L44A5
            sta L44A6
            jmp LB5C3
L44DE:      lda POT0
            sta L44A1
            lda POT1
            sta L44A2
            lda POT2
            sta L44A3
            lda POT3
            sta L44A4
            sta POTGO
            inc L44A8
            lda L44A8
            cmp L449E
            bcc L4527
            lda #$00
            sta L44A8
            lda L44A9
            clc
            adc #$01
            cmp #$06
            bcc L4515
            lda #$00
L4515:      sta L44A9
            lda L44AA
            clc
            adc #$01
            cmp #$04
            bcc L4524
            lda #$00
L4524:      sta L44AA
L4527:      lda #$0F
            sta VDSLST
            lda #$B3
            sta VDSLST+1
            lda #$84
            sta POKMSK
            jmp LB5C3
            pha
            txa
            pha
            lda #$34
            sta COLPF0
            lda #$1C
            sta COLPF1
            lda #$0E
            sta COLPF2
            lda #$00
            sta COLPM0
            sta COLPM1
            lda #$48
            sta COLPM2
            sta COLPM3
            lda #$00
            sta HPOSP0
            sta HPOSP1
            sta HPOSP2
            sta HPOSP3
            sta HPOSM0
            sta HPOSM1
            sta HPOSM2
            sta HPOSM3
            sta SIZEP0
            sta SIZEP1
            sta SIZEP2
            sta SIZEP3
            lda L04B0
            cmp L4462
            beq L45A5
            ldx #$0E
L458A:      lda L4461,X
            sta L04AF,X
            lda L4470,X
            sta L05AF,X
            lda L447F,X
            sta L06AF,X
            lda L448E,X
            sta L07AF,X
            dex
            bpl L458A
L45A5:      lda #$B3
            sta VDSLST
            lda #$45
            sta VDSLST+1
            pla
            tax
            pla
            rti
            pha
            txa
            pha
            lda #$3F
            sta WSYNC
            sta DMACLT
            lda #$68
            sta CHBASE
            ldx RAMLO
            lda POKMSK
            cpx #$80
            bcc L45CF
            eor NGFLAG
            and #$F6
L45CF:      sta COLPF2
            lda #$0E
            sta COLPF1
            lda #$E5
            sta VDSLST
            lda #$45
            sta VDSLST+1
            pla
            tax
            pla
            rti
            pha
            lda #$6C
            sta WSYNC
            sta CHBASE
            lda #$C8
            sta COLPF0
            lda #$94
            sta COLPF1
            lda #$A6
            sta COLPF2
            lda #$09
            sta VDSLST
            lda #$46
            sta VDSLST+1
            pla
            rti
            pha
            lda #$78
            sta WSYNC
            sta CHBASE
            lda #$C4
            sta COLPF1
            lda #$52
            sta HPOSP0
            sta HPOSP2
            lda #$5A
            sta HPOSP1
            sta HPOSP3
            lda #$33
            sta VDSLST
            lda #$46
            sta VDSLST+1
            pla
            rti
            pha
            lda #$C8
            sta WSYNC
            sta COLBK
            lda #$74
            sta CHBASE
            lda #$FE
            sta COLPF0
            lda #$FA
            sta COLPF1
            lda #$34
            sta COLPF2
            lda #$5C
            sta VDSLST
            lda #$46
            sta VDSLST+1
            pla
            rti
            pha
            txa
            pha
            lda #$FA
            ldx #$68
            sta WSYNC
            sta COLBK
            sta COLPF2
            stx CHBASE
            lda #$02
            sta COLPF1
            lda L44A0
            beq L4686
            sec
            sbc #$01
            sta L44A0
            sta HSCROL
            pla
            tax
            pla
            rti
L4686:      lda #$03
            sta L44A0
            sta HSCROL
            inc L4084
            bne L4696
            inc L4085
L4696:      lda L4084
            cmp #$C1
            bne L46C1
            lda L4085
            cmp #$41
            bne L46C1
            lda #$9F
            sta L4084
            lda #$40
            sta L4085
            inc L44AE
            lda L44AE
            cmp #$02
            bcc L46C1
            lda #$01
            sta L44AB
            lda #$3A
            sta L009A
L46C1:      pla
            tax
            pla
            rti
            lda L46CC,X
            sta L4231
            rts
L46CC:      ora (RTCLOK),Y
            ldy #$07
            ldx #$07
            lda KEYDEF+1
            beq L46D8
            ldx #$0F
L46D8:      lda L46E3,X
            sta L4261,Y
            dex
            dey
            bpl L46D8
            rts
L46E3:      .byte $22,$25,$27,$29,$2E,$2E,$25,$32
            .byte $23,$28,$21,$2D,$30,$29,$2F,$2E
L46F3:      lda L44AB
            beq L4711
            inc L44AD
            bne L4711
            inc L44AE
            lda L44AE
            cmp #$15
            bcc L4711
            lda #$00
            sta L009A
            sta L44AE
            sta L44AB
L4711:      lda L449D
            beq L4719
            jmp LBC3D
L4719:      dec L449F
            bmi L4721
            jmp LBC3D
L4721:      lda L0088
            beq L472D
            lda L0089
            cmp #$FF
            beq L472D
            inc L0089
L472D:      lda L008A
            beq L4739
            lda L008B
            cmp #$FF
            beq L4739
            inc L008B
L4739:      lda #$04
            sta L449F
            jmp LBC3D
L4741:      ldy #$00
            ldx #$A8
L4745:      lda L4761,X
            sta L00FE
            lda L4809,X
            sta L00FF
            lda (L00FE),Y
            sec
            sbc #$10
            bcc L475E
            cmp #$10
            bcs L475C
            ora #$D0
L475C:      sta (L00FE),Y
L475E:      dex
            bne L4745
L4761:      rts
            .byte $32,$3C,$41,$53,$EF,$F4,$F9,$13
            .byte $35,$42,$47,$4C,$60,$55,$5E,$9C
            .byte $7D,$BB,$DA,$F9,$18,$3A,$5E,$70
            .byte $82,$94,$C0,$DC,$3F,$61,$83,$A5
            .byte $C7,$E9,$0B,$2D,$4F,$71,$93,$B5
            .byte $D7,$F9,$1B,$3D,$5F,$9D,$BF,$E1
            .byte $03,$64,$75,$86,$99,$A6,$B3,$C8
            .byte $D7,$E6,$F9,$0A,$1B,$2C,$3D,$4E
            .byte $5F,$70,$81,$AB,$FA,$16,$2C,$2D
            .byte $2E,$2F,$30,$31,$32,$33,$34,$35
            .byte $36,$37,$38,$39,$3B,$3C,$F4,$01
            .byte $0E,$1B,$28,$35,$46,$57,$68,$79
            .byte $8A,$9B,$01,$13,$25,$37,$49,$5B
            .byte $6D,$7F,$90,$A1,$B2,$C3,$D4,$E5
            .byte $F6,$07,$18,$29,$3A,$4B,$5C,$6D
            .byte $8C,$AB,$CA,$E9,$08,$27,$46,$65
            .byte $84,$A3,$C2,$E1,$00,$1F,$3E,$5D
            .byte $6D,$7D,$8D,$9D,$BF,$E1,$03,$25
            .byte $47,$69,$8B,$AD,$CF,$F1,$13,$35
            .byte $57,$79,$9B,$BD,$DF,$01,$23,$45
            .byte $67,$89,$AB,$CD,$EF,$11,$33
L4809:      .byte $55,$45,$45,$45,$45,$45,$45,$45
            .byte $46,$46,$46,$46,$46,$46,$70,$90
            .byte $90,$90,$90,$90,$90,$91,$91,$91
            .byte $91,$91,$91,$91,$91,$97,$97,$97
            .byte $97,$97,$97,$98,$98,$98,$98,$98
            .byte $98,$98,$98,$99,$99,$99,$99,$99
            .byte $99,$9A,$9C,$9C,$9C,$9C,$9C,$9C
            .byte $9C,$9C,$9C,$9D,$9E,$9E,$9E,$9E
            .byte $9E,$9E,$9E,$9E,$B3,$B4,$B5,$B8
            .byte $B8,$B8,$B8,$B8,$B8,$B8,$B8,$B8
            .byte $B8,$B8,$B8,$B8,$B8,$B8,$B8,$4B
            .byte $4C,$4C,$4C,$4C,$4C,$4C,$4C,$4C
            .byte $4C,$4C,$4C,$4D,$4D,$4D,$4D,$4D
            .byte $4D,$4D,$4D,$4D,$4D,$4D,$4D,$4D
            .byte $4D,$4D,$4E,$4E,$4E,$4E,$4E,$4E
            .byte $4E,$4E,$4E,$4E,$4E,$4F,$4F,$4F
            .byte $4F,$4F,$4F,$4F,$4F,$50,$50,$50
            .byte $50,$50,$50,$50,$50,$50,$50,$51
            .byte $51,$51,$51,$51,$51,$51,$51,$52
            .byte $52,$52,$52,$52,$52,$52,$53,$53
            .byte $53,$53,$53,$53,$53,$53,$54,$54
            .byte $54
L48B2:      sei
            lda #$00
            sta DMACLT
            sta NMIEN
            sta IRQEN
            sta WARMST
            ldx #$00
L48C2:      lda L8C48,X
            sta L6C00,X
            lda L8D48,X
            sta L6D00,X
            lda L8E48,X
            sta L6E00,X
            lda L8F48,X
            sta L6F00,X
            inx
            bne L48C2
            lda PAL
            and #$0E
            sta L449D
            bne L48F2
            jsr L4741
            lda #$07
            sta L449E
            jmp L48F7
L48F2:      lda #$08
            sta L449E
L48F7:      lda #$9F
            sta L4084
            lda #$40
            sta L4085
            lda #$00
            sta L44A0
            sta HSCROL
            sta POTGO
            jmp L8075
L490F:      lda #$9F
            sta L4084
            lda #$40
            sta L4085
            lda #$00
            sta L44A0
            sta HSCROL
            lda #$4C
            sta COUNTR
            lda #$40
            sta COUNTR+1
            lda #$00
            sta L44AB
            sta L44AD
            sta L44AE
            jmp LB159
L4937:      ldx #$FF
            txs
            lda #$00
            sta LMARGN
            jmp L80D4
L4941:      lda ICAX5Z
            bne L495E
            lda L44A1
            cmp #$C4
            bcc L4955
            lda PORTA
            and #$FE
            sta POTGO
            rts
L4955:      lda PORTA
            ora #$01
            sta POTGO
            rts
L495E:      lda L44A3
            cmp #$C4
            bcc L496E
            lda PORTA
            and #$EF
            sta POTGO
            rts
L496E:      lda PORTA
            ora #$10
            sta POTGO
            rts
L4977:      lda L44A2
            cmp #$C4
            bcc L4987
            lda PORTA
            and #$FE
            sta POTGO
            rts
L4987:      lda PORTA
            ora #$01
            sta POTGO
            rts
L4990:      lda L44A7
            cmp #$01
            beq L499F
            cmp #$02
            beq L49A2
            lda PORTA
            rts
L499F:      jmp L4941
L49A2:      jmp L4977
L49A5:      lda L44A7
            clc
            adc #$01
            cmp #$03
            bcc L49B1
            lda #$00
L49B1:      sta L44A7
            asl
            asl
            asl
            clc
            adc #$07
            tay
            ldx #$07
L49BD:      lda L49C8,Y
            sta L420F,X
            dey
            dex
            bpl L49BD
            rts
L49C8:      .byte $2A,$2F,$39,$33,$34,$29,$23,$2B
            .byte $33,$25,$27,$21,$00,$00,$00,$00
            .byte $2A,$2F,$39,$00,$12,$22,$0B,$00
L49E0:      cmp #$3A
            bne L49E7
            jmp LB188
L49E7:      cmp #$12
            bne L49EE
            jmp LB1B6
L49EE:      cmp #$01
            beq L49F5
            jmp LB195
L49F5:      jsr L49A5
            jmp LB195
L49FB:      pha
            ldy L44A9
            lda L4A0E,Y
            sta L008C
            lda L4A14,Y
            sta L008D
            pla
            tay
            jmp L9D2A
L4A0E:      inx
            sbc CASINI,X
            .byte $0F,$1C
            and #$4B
            .byte $4B
            jmp L4C4C
            jmp LAC48
            lda #$44
            lda L4A2D,Y
            sta L008C
            lda L4A33,Y
            sta L008D
            pla
            tay
            jmp L9D56
L4A2D:      rol FMSZPG+4,X
            cli
            adc #$7A
            .byte $8B
L4A33:      jmp L4C4C
            jmp L4C4C
L4A39:      pha
            ldy L44AA
            lda L4A4C,Y
            sta L008C
            lda L4A50,Y
            sta L008D
            pla
            tay
            jmp LA2C9
L4A4C:      .byte $9C
            tay
            ldy L00C0,X
L4A50:      jmp L4C4C
            jmp LAC48
            tax
            .byte $44
            lda L4A67,Y
            sta L008C
            lda L4A6B,Y
            sta L008D
            pla
            tay
            jmp LA2C9
L4A67:      cpy LDED5
            .byte $E7
L4A6B:      jmp L4C4C
            jmp LAC48
            tax
            .byte $44
            lda L4A82,Y
            sta L008C
            lda L4A86,Y
            sta L008D
            pla
            tay
            jmp L9D3D
L4A82:      .byte $5E,$6E,$7E,$8E
L4A86:      .byte $50,$50,$50,$50
L4A8A:      lda FMSZPG+5
            cmp #$BA
            bcc L4A94
            lda #$C5
            sta FMSZPG+5
L4A94:      lda L4AA1,Y
            sta L008C
            lda L4AAF,Y
            sta L008D
            jmp L9666
L4AA1:      .byte $9E,$C0,$E2,$04,$26,$48,$6A,$8C
            .byte $AE,$D0,$F2,$14,$36,$58
L4AAF:      .byte $50,$50,$50,$51,$51,$51,$51,$51
            .byte $51,$51,$51,$52,$52,$52
L4ABD:      lda FMSZPG+5
            cmp #$BA
            bcc L4AC7
            lda #$C5
            sta FMSZPG+5
L4AC7:      lda L4AD4,Y
            sta L008C
            lda L4AE2,Y
            sta L008D
            jmp L96AB
L4AD4:      .byte $7A,$9C,$BE,$E0,$02,$24,$46,$68
            .byte $8A,$AC,$CE,$F0,$12,$34
L4AE2:      .byte $52,$52,$52,$52,$53,$53,$53,$53
            .byte $53,$53,$53,$53,$54,$54
L4AF0:      lda FMSZPG+3
            clc
            adc #$06
            sta HPOSP1
            jmp LB4A2
L4AFB:      lda #$00
            sta DCOMND,X
            sta DUNIT,X
            sta DDEVIC,X
            sta SSFLAG,X
            lda FKDEF+1
            sta FILDAT,X
            sta CH,X
            sta ATACHR,X
            sta CHAR,X
            jmp L9B3D
L4B1A:      lda #$00
            sta DCOMND,X
            sta DUNIT,X
            sta DDEVIC,X
            sta SSFLAG,X
            jmp L9B55
L4B2B:      lda LTEMP
            and #$02
            bne L4B55
            lda DELTAR
            bne L4B55
            ldx #$03
L4B37:      lda OLDCHR,X
            beq L4B40
            dex
            bpl L4B37
            bmi L4B55
L4B40:      lda FMSZPG+3
            clc
            adc #$08
            sta SAVMSC+1,X
            lda FMSZPG+5
            sec
            sbc #$0E
            sta OLDCHR,X
            ldy #$07
            lda #$B0
            jsr LAFE8
L4B55:      rts
L4B56:      lda L44A7
            cmp #$02
            bcs L4B60
            jsr L4B2B
L4B60:      jmp L9A2E
L4B63:      lda L44A7
            cmp #$02
            bcc L4B90
            lda L44A5
            sta L44A6
            lda L44A1
            cmp #$C4
            lda #$00
            adc #$00
            sta L44A5
            beq L4B90
            lda L44A6
            bne L4B90
            lda LTEMP
            and #$02
            bne L4B90
            lda DELTAR
            bne L4B90
            jsr L4B2B
L4B90:      lda COLCRS
            bit L9482
            jmp L9B0C
L4B98:      sta HPOSP3
            sec
            sbc #$04
            sta HPOSP2
            lda #$1E
            sta COLPM2
            lda #$00
            sta COLPM3
            lda #$01
            sta SIZEP2
            sta SIZEP3
            jmp LB528
            lsr
            lsr
            tay
            cmp #$0E
            jmp L9651
            lda FMSZPG+3
            clc
            adc #$02
            cmp L00E0
            bcs L4BD5
            clc
            adc #$10
            cmp L00E0
            bcc L4BD5
            jsr L9623
            lda #$C0
            sta L00E2
L4BD5:      rts
L4BD6:      ldy #$2B
            lda (L008E),Y
            iny
            sta (L008C),Y
            dey
L4BDE:      lda (L008E),Y
            sta (L008C),Y
            dey
            bpl L4BDE
            jmp L8AC7
            .byte $0B,$00,$00,$18,$3C,$7E,$FF,$9F
            .byte $6E,$3C,$00,$00,$1C,$0B,$00,$00
            .byte $18,$3C,$7E,$FF,$DF,$66,$3C,$00
            .byte $00,$1C,$0B,$00,$00,$18,$3C,$7E
            .byte $FF,$FF,$66,$3C,$00,$00,$1C,$0B
            .byte $00,$00,$18,$3C,$7E,$FF,$FB,$66
            .byte $3C,$00,$00,$1C,$0B,$00,$00,$18
            .byte $3C,$7E,$FF,$F9,$76,$3C,$00,$00
            .byte $1C,$0B,$00,$00,$18,$3C,$7E,$FF
            .byte $FF,$7E,$3C,$00,$00,$1C,$0F,$00
            .byte $00,$00,$18,$3C,$34,$3C,$42,$FF
            .byte $E7,$00,$00,$00,$00,$00,$38,$0F
            .byte $00,$00,$00,$18
L4C4C:      .byte $3C,$18,$3C,$42,$FF,$E7,$00,$00
            .byte $00,$00,$00,$38,$0F,$00,$00,$00
            .byte $18,$3C,$2C,$3C,$42,$FF,$E7,$00
            .byte $00,$00,$00,$00,$38,$0F,$00,$00
            .byte $00,$18,$3C,$34,$3C,$42,$FF,$A5
            .byte $42,$00,$00,$00,$00,$38,$0F,$00
            .byte $00,$00,$18,$3C,$18,$3C,$42,$FF
            .byte $A5,$42,$00,$00,$00,$00,$38,$0F
            .byte $00,$00,$00,$18,$3C,$2C,$3C,$42
            .byte $FF,$A5,$42,$00,$00,$00,$00,$38
            .byte $0B,$3C,$7E,$7E,$FF,$BF,$BF,$FF
            .byte $DF,$EE,$7E,$3C,$0B,$3C,$7E,$7E
            .byte $FF,$FD,$FD,$FF,$FB,$77,$7E,$3C
            .byte $0B,$3C,$7E,$77,$FB,$FF,$FD,$FD
            .byte $FF,$7E,$7E,$3C,$0B,$3C,$7E,$EE
            .byte $DF,$FF,$BF,$BF,$FF,$7E,$7E,$3C
            .byte $08,$30,$78,$FC,$FC,$F4,$FC,$68
            .byte $30,$08,$30,$68,$F4,$FC,$FC,$FC
            .byte $78,$30,$08,$30,$58,$BC,$FC,$FC
            .byte $FC,$78,$30,$08,$30,$78,$FC,$FC
            .byte $BC,$FC,$58,$30,$10,$00,$00,$00
            .byte $00,$00,$00,$18,$18,$18,$18,$00
            .byte $00,$00,$00,$00,$00,$EE,$10,$00
            .byte $00,$00,$00,$00,$18,$3C,$3C,$3C
            .byte $3C,$18,$00,$00,$00,$00,$00,$34
            .byte $10,$00,$00,$3C,$7E,$7E,$E7,$C3
            .byte $C3,$C3,$C3,$E7,$7E,$7E,$3C,$00
            .byte $00,$EC,$10,$00,$00,$3C,$7E,$7E
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$7E,$7E
            .byte $3C,$00,$00,$34,$10,$00,$00,$00
            .byte $18,$3C,$3C,$7E,$7E,$7E,$7E,$3C
            .byte $3C,$18,$00,$00,$00,$EE,$10,$00
            .byte $00
L4D4D:      .byte $18,$42,$00,$81,$81,$00,$00,$81
            .byte $81,$00,$42,$18,$00,$00,$1A,$10
            .byte $00,$00,$00,$18,$24,$00,$42,$00
            .byte $00,$42,$00,$24,$18,$00,$00,$00
            .byte $9C,$10,$00,$00,$00,$00,$18,$00
            .byte $24,$24,$00,$18,$00,$00,$00,$00
            .byte $00,$00,$0E,$0F,$00,$00,$00,$00
            .byte $00,$00,$18,$18,$18,$00,$00,$00
            .byte $00,$00,$00,$0E,$0F,$00,$00,$00
            .byte $00,$00,$18,$3C,$3C,$3C,$18,$00
            .byte $00,$00,$00,$00,$EE,$0F,$00,$00
            .byte $18,$24,$24,$42,$5A,$5A,$42,$24
            .byte $24,$18,$00,$00,$00,$BE,$0F,$00
            .byte $18,$5A,$24,$81,$DB,$5A,$5A,$DB
            .byte $81,$24,$5A,$18,$00,$00,$1C,$0F
            .byte $18,$5A,$7E,$3C,$BD,$FF,$7E,$7E
            .byte $FF,$BD,$3C,$7E,$5A,$18,$00,$36
            .byte $0F,$99,$5A,$42,$00,$81,$81,$00
            .byte $00,$81,$81,$00,$42,$5A,$99,$00
            .byte $1C,$0F,$00,$18,$00,$42,$00,$00
            .byte $81,$81,$00,$00,$42,$00,$18,$00
            .byte $00,$D8,$0F,$00,$00,$00,$00,$00
            .byte $00,$18,$18,$18,$00,$00,$00,$00
            .byte $00,$00,$0E,$0F,$00,$00,$00,$00
            .byte $00,$18,$3C,$3C,$3C,$18,$00,$00
            .byte $00,$00,$00,$EE,$0F,$00,$00,$18
            .byte $24,$24,$42,$5A,$5A,$42,$24,$24
            .byte $18,$00,$00,$00,$BE,$0F,$00,$18
            .byte $5A,$24,$81,$DB,$5A,$5A,$DB,$81
            .byte $24,$5A,$18,$00,$00,$1C,$0F,$18
            .byte $5A,$7E,$3C,$BD,$FF,$7E,$7E,$FF
            .byte $BD,$3C,$7E,$5A,$18,$00,$36,$0F
L4E4D:      .byte $99
L4E4E:      .byte $5A,$42,$00,$81,$81,$00,$00,$81
            .byte $81,$00,$42,$5A,$99,$00,$1C,$0F
            .byte $00,$18,$00,$42,$00,$00,$81,$81
            .byte $00,$00,$42,$00,$18,$00,$00,$D8
            .byte $1D,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $28,$2C,$14,$2A,$2A,$54,$5C,$38
            .byte $7C,$7E,$3E,$3C,$1C,$08,$2E,$1D
            .byte $00,$00,$08,$08,$00,$14,$28,$29
            .byte $15,$4A,$4A,$20,$15,$1D,$BA,$BE
            .byte $7C,$7C,$3A,$7B,$1F,$DE,$7E,$3E
            .byte $7E,$3E,$3C,$1C,$08,$2E,$1D,$00
            .byte $00,$00,$00,$10,$10,$42,$52,$10
            .byte $04,$04,$2A
L4EB9:      .byte $3E,$1C,$58,$7C,$3E,$7E,$7F,$FF
            .byte $FE,$3C,$7E,$7E,$3C,$18,$3C,$18
            .byte $08,$32,$1D,$00,$00,$08,$08,$00
            .byte $14,$28,$29,$15,$4A,$4A,$20,$15
            .byte $1D,$BA,$BE,$7C,$7C,$3A,$7B,$1F
            .byte $DE,$7E,$3E,$7E,$3E,$3C,$1C,$08
            .byte $2E,$1D,$00,$00,$00,$00,$10,$10
            .byte $42,$52,$10,$04,$04,$2A,$3E,$1C
            .byte $58,$7C,$3E,$7E,$7F,$FF,$FE,$3C
            .byte $7E,$7E,$3C,$18,$3C,$18,$08,$32
            .byte $1D,$00,$00,$08,$08,$00,$14,$28
            .byte $29,$15,$4A,$4A,$20,$15,$1D,$BA
            .byte $BE,$7C,$7C,$3A,$7B,$1F,$DE,$7E
            .byte $3E,$7E,$3E,$3C,$1C,$08,$2E,$1D
            .byte $00,$00,$00,$00,$10,$10,$42,$52
            .byte $10,$04,$04,$2A,$3E,$1C,$58,$7C
            .byte $3E,$7E,$7F,$FF,$FE,$3C,$7E,$7E
            .byte $3C,$18,$3C,$18,$08,$32,$1D,$00
            .byte $00,$08,$08,$00,$14,$28,$29,$15
            .byte $4A,$4A,$20,$15,$1D,$BA,$BE,$7C
            .byte $7C,$3A,$7B,$1F,$DE,$7E,$3E,$7E
            .byte $3E,$3C,$1C,$08,$2E,$1D,$00,$00
            .byte $00,$04,$08,$1C,$3E,$3E,$1A,$14
            .byte $08,$18,$18,$3C,$3C,$6E,$76,$34
            .byte $00,$48,$7C,$7C,$FE,$DE,$58,$78
            .byte $3C,$3C,$18,$2E,$1D,$00,$00,$00
            .byte $04,$08,$1C,$3E,$3E,$1A,$14,$08
            .byte $18,$18,$3C,$3C,$6E,$76,$34,$00
            .byte $48,$7C,$7C,$FE,$DE,$58,$78,$3C
            .byte $3C,$18,$2E,$1D,$00,$00,$14,$1E
            .byte $3E,$1C,$08,$00,$00,$10,$38,$5C
            .byte $6C,$3E,$2E,$04,$10,$78,$FC,$DE
            .byte $6E,$3C,$18,$00,$00,$00,$00,$00
            .byte $00,$2E,$1D,$00,$00,$14,$1E,$3E
            .byte $1C,$08,$00,$00,$10,$38,$5C,$6C
            .byte $3E,$2E,$04,$10,$78,$FC,$DE,$6E
            .byte $3C,$18,$00,$00,$00,$00,$00,$00
            .byte $2E,$1D,$00,$10,$38,$70,$20,$00
            .byte $00,$10,$38,$7C,$3C,$28,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$2E
            .byte $1D,$00,$10,$38,$70,$20,$00,$00
            .byte $10,$38,$7C,$3C,$28,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$2E,$1D
            .byte $20,$70,$20,$00,$00,$08,$1C,$38
            .byte $10,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$2E,$1D,$20
            .byte $70,$20,$00,$00,$08,$1C,$38,$10
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$2E,$0E,$00,$10
            .byte $38,$38,$28,$10,$28,$44,$EE,$AE
            .byte $F6,$EE,$44,$00,$6C,$0E,$00,$04
            .byte $0E,$0E,$4A,$F4,$A4,$E4,$EE,$4E
            .byte $36,$0E,$04,$00,$BC,$0E,$00,$44
            .byte $EE,$F6,$AE,$EE,$44,$28,$10,$28
            .byte $38,$38,$10,$00,$78,$0E,$00,$40
            .byte $E0,$E0,$A4,$5E,$4A,$4E,$EE,$E4
            .byte $D8,$E0,$40,$00,$A6,$20,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$04,$0E,$2A,$7A,$5E
            .byte $5E,$74,$70,$20,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$36,$20
            .byte $00,$00,$00,$00,$04,$0E,$2A,$7A
            .byte $5E,$5E,$74,$70,$20,$00,$00,$00
            .byte $00,$00,$18,$18,$3C,$3C,$E7,$E7
            .byte $3C,$3C,$18,$18,$00,$00,$00,$00
            .byte $EE,$20,$00,$40,$E2,$A7,$A5,$E5
            .byte $47,$02,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$18,$3C,$3C,$66,$66,$42
            .byte $42,$42,$42,$42,$66,$66,$3C,$3C
            .byte $18,$00,$36,$20,$40,$E2,$A7,$A5
            .byte $E5,$47,$02,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$18,$5A,$7E,$3C,$BD
            .byte $FF,$7E,$7E,$7E,$7E,$7E,$FF,$BD
            .byte $3C,$7E,$5A,$18,$EE,$20,$00,$00
            .byte $40,$E2,$A7,$A5,$E5,$47,$02,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$24
            .byte $24,$00,$42,$42,$00,$00,$00,$42
            .byte $42,$00,$24,$24,$00,$00,$36,$20
            .byte $00,$00,$00,$00,$00,$00,$02,$47
            .byte $E5,$A5,$A7,$E2,$40,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $5E,$20,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$80,$00,$80,$C0,$A0,$42
            .byte $E4,$EC,$F0,$F8,$F8,$F0,$F0,$E0
            .byte $C0,$64,$F8,$F8,$F0,$D0,$E0,$60
            .byte $D0,$90,$5E,$20,$00,$40,$42,$22
            .byte $34,$2C,$98,$7C,$E5,$DB,$9E,$7C
            .byte $7E,$FE,$FC,$FC,$FC,$F8,$F8,$FC
            .byte $FA,$D8,$D6,$ED,$FE,$FF,$FE,$7C
            .byte $FE,$FC,$EC,$48,$5E,$20,$00,$03
            .byte $06,$0E,$1C,$34,$68,$7C,$3C,$D8
            .byte $F8,$F8,$D0,$EC,$2E,$B7,$DB,$FB
            .byte $FE,$FC,$FF,$FE,$EE,$5C,$58,$A8
            .byte $F4,$FE,$7C,$F4,$38,$10,$5E,$20
            .byte $00,$00,$00,$00,$00,$88,$DC,$FE
            .byte $FF,$FF,$FE,$FC,$F8,$D8,$B0,$A0
            .byte $E8,$D0,$D0,$E0,$E8,$DC,$6E,$DE
            .byte $FC,$FA,$FE,$FF,$FF,$FE,$7C,$30
            .byte $5E,$20,$00,$00,$00,$00,$00,$88
            .byte $DC,$FC,$FE,$FE,$FF,$EA,$F7,$F3
            .byte $F7,$EE,$DE,$B2,$A4,$E0,$C0,$E0
            .byte $70,$F0,$F8,$F8,$FE,$7C,$F8,$F0
            .byte $E0,$E0,$5E,$20,$00,$00,$00,$00
            .byte $08,$1C,$3C,$66,$6A,$5E,$DA,$D2
            .byte $9C,$88,$C0,$60,$E0,$C0,$60,$C0
            .byte $80,$40,$00,$80,$C0,$40,$80,$20
            .byte $00,$00,$00,$00,$5E,$20,$08,$1C
            .byte $38,$24,$5C,$50,$28,$00,$00,$40
            .byte $00,$00,$80,$00,$C0,$40,$A0,$00
            .byte $80,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$5E,$20
            .byte $30,$58,$30,$00,$00,$00,$40,$00
            .byte $80,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $5E,$20,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$18
            .byte $18,$3C,$3C,$66,$66,$42,$C3,$81
            .byte $81,$81,$C3,$42,$66,$66,$3C,$3C
            .byte $18,$18,$00,$20,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$18,$18,$3C,$3C,$3C
            .byte $7E,$7E,$7E,$7E,$7E,$7E,$3C,$3C
            .byte $3C,$18,$18,$00,$00,$20,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$18,$18,$18
            .byte $3C,$3C,$7E,$5A,$DB,$DB,$DB,$5A
            .byte $7E,$3C,$3C,$18,$18,$18,$00,$20
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$24,$3C,$3C,$3C,$7E,$7E
            .byte $7E,$3C,$3C,$3C,$24,$00,$00,$00
            .byte $00,$20,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$18
            .byte $3C,$66,$3C,$18,$00,$00,$00,$00
            .byte $00,$00,$00,$20,$89,$89,$20,$25
            .byte $08,$08,$10,$14,$44,$E2,$A2,$40
            .byte $40,$10,$10,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$20,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$04,$00,$12,$0E,$0D,$07,$03
            .byte $05,$03,$01,$06,$02,$03,$01,$00
            .byte $01,$03,$06,$03,$05,$0A,$5E,$20
            .byte $00,$00,$41,$61,$62,$73,$39,$3B
            .byte $1E,$1E,$0D,$57,$3F,$3E,$1F,$1E
            .byte $0E,$0D,$15,$03,$2B,$3B,$1B,$1F
            .byte $3D,$7E,$7E,$3F,$3F,$1F,$0E,$04
            .byte $5E,$20,$00,$08,$1C,$3C,$3E,$1E
            .byte $1E,$0F,$0B,$17,$0B,$05,$00,$16
            .byte $07,$0F,$0F,$05,$05,$03,$0C,$1E
            .byte $3E,$13,$17,$0F,$1F,$3F,$1F,$0F
            .byte $0F,$06,$5E,$20,$00,$00,$00,$00
            .byte $00,$0D,$1F,$35,$3B,$1B,$0D,$0D
            .byte $06,$03,$03,$01,$00,$05,$05,$12
            .byte $0A,$1D,$3B,$1D,$77,$2F,$6F,$37
            .byte $3B,$1F,$0E,$06,$5E,$20,$00,$00
            .byte $00,$00,$00,$0D,$1F,$3F,$3F,$73
            .byte $67,$33,$75,$3E,$1A,$39,$37,$1B
            .byte $13,$01,$00,$01,$03,$02,$06,$0E
            .byte $1F,$07,$03,$01,$01,$00,$5E,$20
            .byte $00,$00,$00,$00,$00,$08,$1C,$3E
            .byte $76,$27,$5B,$59,$6C,$24,$14,$3C
            .byte $19,$00,$01,$00,$00,$01,$00,$00
            .byte $00,$02,$00,$01,$00,$00,$00,$00
            .byte $5E,$20,$20,$70,$E8,$34,$74,$28
            .byte $0A,$00,$04,$00,$01,$00,$00,$01
            .byte $00,$01,$02,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$5E,$20,$30,$68,$B0,$60
            .byte $00,$00,$02,$01,$01,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$5E,$07,$00,$10
            .byte $20,$66,$FF,$7A,$FC,$07,$72,$37
            .byte $26,$00,$61,$00,$12,$07,$72,$37
            .byte $26,$00,$C1,$00,$12,$07,$72,$37
            .byte $26,$40,$E1,$40,$12,$07,$72,$37
            .byte $26,$80,$C1,$80,$12
;
            org $7400
;
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $03,$03,$03,$03,$03,$03,$03,$03
            .byte $00,$00,$00,$00,$C0,$C0,$C5,$55
            .byte $00,$00,$00,$00,$00,$00,$5F,$57
            .byte $00,$00,$00,$00,$00,$00,$00,$F0
            .byte $00,$00,$00,$00,$00,$00,$A8,$AA
            .byte $00,$00,$00,$00,$00,$00,$02,$AA
            .byte $00,$00,$00,$00,$00,$00,$00,$A8
            .byte $00,$00,$00,$00,$00,$00,$00,$02
            .byte $00,$00,$00,$00,$00,$00,$00,$01
            .byte $01,$05,$05,$15,$1D,$55,$55,$6A
            .byte $55,$57,$5F,$55,$D5,$55,$55,$55
            .byte $57,$DD,$DD,$55,$55,$55,$55,$55
            .byte $FC,$EF,$EB,$FF,$7F,$7F,$7F,$5F
            .byte $00,$00,$00,$C0,$C0,$F0,$F0,$FF
            .byte $00,$00,$00,$00,$00,$00,$FF,$55
            .byte $00,$00,$00,$00,$00,$00,$FF,$5F
            .byte $00,$00,$00,$00,$00,$00,$C0,$FF
            .byte $00,$00,$00,$00,$00,$00,$00,$FF
            .byte $AA,$AA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $95,$AA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $69,$AA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $6A,$AA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $BD,$AA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $F5,$95,$A5,$AA,$AA,$AA,$AA,$AA
            .byte $F5,$55,$56,$AA,$AA,$AA,$AA,$AA
            .byte $F5,$55,$95,$A9,$AA,$AA,$AA,$AA
            .byte $F5,$55,$55,$56,$AA,$AA,$AA,$AA
            .byte $F7,$55,$57,$AA,$AA,$AA,$AA,$AA
            .byte $FD,$EA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $55,$55,$9A,$AA,$AA,$AA,$AA,$AA
            .byte $55,$55,$A9,$AA,$AA,$AA,$AA,$AA
            .byte $FF,$55,$56,$AA,$AA,$AA,$AA,$AA
            .byte $FF,$55,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $FF,$55,$A9,$AA,$AA,$AA,$AA,$AA
            .byte $00,$FF,$5A,$AA,$AA,$AA,$AA,$AA
            .byte $00,$FA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $00,$A0,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $00,$00,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $00,$AA,$AA,$AA,$AA,$AA,$AA,$AA
            .byte $00,$00,$00,$AA,$AA,$AA,$AA,$AA
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            
            org $77FF
            
            org $7800
            
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FD,$D5
            .byte $FF,$FF,$FF,$FF,$FD,$D5,$55,$55
            .byte $FF,$FF,$FD,$D5,$55,$55,$55,$55
            .byte $FF,$5F,$57,$5A,$65,$95,$55,$55
            .byte $FF,$EA,$96,$55,$55,$55,$55,$55
            .byte $FF,$FF,$BF,$AF,$AA,$AA,$6A,$AA
            .byte $FF,$FF,$FF,$FF,$FF,$BF,$AF,$AA
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FD,$F5
            .byte $FF,$FF,$FF,$FF,$7E,$59,$55,$95
            .byte $FF,$FF,$FF,$FF,$BF,$AF,$6F,$6B
            .byte $FF,$FF,$FF,$F5,$55,$55,$55,$55
            .byte $FF,$FF,$FF,$55,$55,$55,$55,$55
            .byte $FF,$FD,$55,$69,$55,$55,$55,$55
            .byte $F5,$55,$95,$55,$55,$55,$55,$55
            .byte $55,$55,$55,$55,$55,$55,$55,$55
            .byte $55,$55,$55,$55,$A5,$55,$55,$55
            .byte $55,$55,$5A,$65,$55,$55,$55,$55
            .byte $5A,$6A,$AA,$55,$55,$55,$55,$55
            .byte $AA,$A9,$A5,$55,$59,$55,$55,$55
            .byte $AA,$56,$5A,$A9,$55,$55,$55,$55
            .byte $AF,$AA,$AA,$69,$55,$55,$56,$55
            .byte $FF,$FF,$AF,$6A,$5A,$65,$95,$59
            .byte $FF,$FF,$FF,$B5,$55,$55,$55,$59
            .byte $FA,$D5,$55,$55,$55,$55,$95,$55
            .byte $EA,$A6,$95,$55,$56,$5A,$55,$55
            .byte $FF,$BF,$6F,$6A,$A6,$56,$5A,$6A
            .byte $FF,$FF,$FF,$FF,$BF,$AB,$AA,$AA
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$BF,$AF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FD
            .byte $FF,$FF,$FF,$5A,$55,$56,$5A,$55
            .byte $FF,$FF,$FF,$FF,$AF,$AB,$95,$59
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$B5,$55
            .byte $FF,$FF,$FF,$FD,$D5,$55,$95,$55
            .byte $D5,$D9,$65,$95,$55,$55,$55,$55
            .byte $56,$55,$55,$55,$55,$5A,$55,$55
            .byte $56,$5A,$66,$56,$59,$55,$55,$55
            .byte $BF,$BF,$AB,$AA,$55,$55,$55,$55
            .byte $5A,$59,$55,$55,$55,$55,$55,$55
            .byte $55,$65,$55,$55,$55,$55,$55,$55
            .byte $55,$55,$55,$56,$55,$55,$55,$55
            .byte $56,$5A,$6A,$55,$55,$55,$55,$55
            .byte $AA,$AA,$A5,$55,$55,$55,$55,$55
            .byte $AA,$6A,$55,$55,$55,$55,$56,$55
            .byte $AA,$AA,$5A,$55,$56,$95,$55,$55
            .byte $FD,$A5,$AA,$A6,$55,$55,$55,$55
            .byte $55,$55,$55,$A9,$55,$55,$55,$55
            .byte $55,$55,$55,$55,$95,$55,$55,$55
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            
            org $7BFF
            
            org $7C00
            
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$F7,$FF,$F7,$F7
            .byte $FF,$FF,$FD,$F4,$F5,$D5,$D1,$D5
            .byte $FF,$5B,$56,$44,$55,$55,$14,$55
            .byte $FF,$EF,$EF,$AF,$AF,$AB,$2B,$6B
            .byte $FF,$FF,$FF,$F7,$FD,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FE,$FB,$FF,$5F,$FF
            .byte $FF,$DF,$FF,$DF,$DF,$DF,$F6,$D5
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$BF
            .byte $FF,$FF,$7D,$75,$D5,$44,$55,$D5
            .byte $FF,$FE,$BE,$6E,$5B,$46,$56,$57
            .byte $FF,$FF,$FF,$FF,$FF,$FD,$FD,$FD
            .byte $FF,$FF,$FF,$FD,$55,$55,$11,$11
            .byte $FF,$F7,$D1,$55,$55,$55,$11,$11
            .byte $FF,$EF,$4B,$5A,$5A,$55,$11,$11
            .byte $FF,$FF,$FF,$BF,$AA,$AA,$12,$12
            .byte $FF,$FF,$FF,$FF,$FF,$BF,$BF,$BF
            .byte $FF,$FF,$FF,$FE,$FE,$FE,$FD,$F5
            .byte $FF,$BF,$BF,$BF,$BF,$BF,$BF,$6F
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FE
            .byte $FF,$FF,$FF,$FF,$FB,$FF,$FB,$FB
            .byte $FF,$FF,$FF,$FF,$F5,$D5,$D5,$55
            .byte $FF,$FF,$FF,$6B,$5A,$55,$55,$55
            .byte $FF,$FF,$FF,$FF,$BF,$AF,$6F,$6B
            .byte $F7,$F7,$F5,$FD,$F4,$D5,$D5,$D5
            .byte $F4,$F4,$55,$55,$45,$55,$15,$55
            .byte $41,$41,$55,$55,$15,$55,$55,$95
            .byte $2F,$2F,$6B,$6B,$6B,$AA,$6A,$52
            .byte $FF,$FF,$FF,$FD,$F5,$D6,$D5,$55
            .byte $D7,$D7,$FD,$55,$55,$44,$55,$55
            .byte $5D,$5D,$57,$05,$55,$09,$55,$55
            .byte $BF,$BF,$FF,$AB,$6A,$12,$5A,$56
            .byte $FF,$FF,$FF,$FF,$FF,$BF,$BF,$AF
            .byte $FF,$FF,$FF,$FF,$FD,$D5,$52,$42
            .byte $55,$51,$55,$D4,$55,$55,$44,$44
            .byte $AF,$6F,$6F,$7F,$6B,$59,$15,$25
            .byte $E1,$D5,$55,$55,$D1,$55,$55,$55
            .byte $1F,$5B,$56,$56,$47,$55,$55,$55
            .byte $FF,$FF,$FF,$FF,$FF,$AF,$6B,$6B
            .byte $D5,$D5,$50,$D5,$F5,$FD,$FF,$FF
            .byte $55,$55,$51,$55,$55,$54,$D4,$F5
            .byte $55,$55,$05,$55,$55,$49,$49,$55
            .byte $55,$55,$50,$55,$55,$49,$49,$55
            .byte $56,$55,$45,$56,$5A,$2A,$2B,$AF
            .byte $AB,$AB,$0A,$AB,$AF,$BF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FD,$F5,$F5
            .byte $D5,$D1,$55,$44,$55,$55,$55,$55
            .byte $6B,$5B,$5A,$2A,$56,$56,$5A,$55
            .byte $FF,$FE,$FE,$FE,$FF,$BD,$BD,$B4
            .byte $FB,$FB,$FB,$AF,$6B,$5B,$4A,$4A
            .byte $D1,$55,$FF,$55,$D0,$D5,$F5,$FF
            .byte $11,$56,$FF,$55,$41,$55,$56,$5B
            .byte $2B,$AB,$FF,$AB,$2F,$AF,$BF,$FF
            .byte $D4,$D5,$F5,$FD,$FF,$FD,$F5,$D5
            .byte $54,$55,$55,$56,$45,$55,$55,$55
            .byte $95,$A5,$95,$55,$11,$55,$55,$56
            .byte $5A,$5A,$5A,$6B,$2B,$AF,$BF,$BF
            .byte $55,$41,$51,$D5,$D5,$FD,$FF,$FF
            .byte $55,$64,$64,$55,$55,$55,$55,$44
            .byte $55,$59,$59,$55,$55,$6A,$55,$52
            .byte $56,$14,$14,$5A,$AA,$AB,$AF,$AF
            .byte $AF,$2F,$AF,$BF,$BF,$FF,$FF,$FF
            .byte $55,$55,$66,$55,$D5,$FD,$FF,$FF
            .byte $55,$55,$11,$55,$55,$54,$55,$55
            .byte $55,$54,$65,$55,$5A,$AA,$59,$55
            .byte $55,$89,$11,$55,$95,$A5,$55,$55
            .byte $14,$55,$55,$51,$55,$56,$6A,$6F
            .byte $6B,$6B,$6B,$2B,$AF,$FF,$FF,$FF
            .byte $F5,$F4,$F5,$FD,$F5,$F5,$D5,$D5
            .byte $55,$98,$55,$55,$55,$55,$55,$55
            .byte $56,$84,$56,$55,$55,$56,$55,$56
            .byte $AF,$AF,$AF,$BF,$AF,$AF,$AB,$AB
            .byte $F4,$F4,$F5,$F5,$FD,$FF,$FF,$FF
            .byte $44,$44,$55,$56,$55,$55,$D5,$D5
            .byte $44,$44,$55,$AA,$56,$69,$56,$56
            .byte $74,$55,$95,$51,$55,$55,$55,$AA
            .byte $56,$46,$5A,$1A,$5B,$AB,$AF,$AF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FD,$F5
            .byte $FF,$FF,$FF,$FF,$FF,$FD,$54,$55
            .byte $DF,$5B,$57,$5B,$57,$5A,$58,$01
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$AA,$5A
            .byte $A5,$95,$95,$55,$11,$55,$55,$56
            .byte $FF,$FD,$FD,$FD,$FD,$FD,$FD,$FD
            .byte $50,$55,$55,$44,$55,$55,$55,$55
            .byte $04,$55,$55,$11,$55,$55,$55,$55
            .byte $12,$56,$55,$45,$56,$55,$55,$56
            .byte $AB,$AA,$AA,$0A,$AA,$6A,$AA,$AA
            .byte $FF,$FD,$FD,$F5,$F5,$F5,$F5,$F5
            .byte $55,$55,$55,$55,$55,$55,$55,$55
            .byte $5A,$55,$55,$55,$55,$55,$55,$55
            .byte $AF,$AB,$AB,$6A,$6A,$AA,$6A,$AA
            .byte $FF,$FF,$FD,$FD,$D5,$D5,$D5,$D5
            .byte $FF,$55,$55,$55,$55,$55,$55,$55
            .byte $FD,$55,$55,$55,$55,$55,$55,$55
            .byte $45,$55,$55,$55,$55,$55,$55,$55
            .byte $40,$55,$55,$55,$55,$55,$55,$55
            .byte $6A,$55,$55,$55,$55,$55,$55,$55
            .byte $AF,$BF,$5A,$55,$55,$55,$55,$55
            .byte $FF,$FF,$BF,$AF,$6B,$6B,$6B,$5B
            .byte $D5,$D5,$D5,$55,$55,$55,$55,$55
            .byte $6A,$56,$55,$55,$56,$55,$56,$5A
            .byte $AB,$AB,$AB,$AA,$AA,$AA,$AA,$AA
            .byte $FF,$FF,$FD,$FD,$FF,$D5,$55,$55
            .byte $FF,$55,$55,$55,$54,$55,$55,$55
            .byte $D4,$54,$55,$55,$4A,$55,$55,$55
            .byte $51,$51,$55,$55,$AA,$55,$55,$55
            .byte $56,$AA,$55,$55,$AA,$55,$56,$55
            .byte $BF,$AA,$AA,$55,$AA,$55,$A9,$55
            .byte $FF,$FF,$BF,$AB,$AB,$6A,$6A,$6A
            .byte $FF,$FD,$FD,$F5,$D5,$D5,$D5,$D5
            .byte $55,$41,$55,$11,$55,$55,$55,$55
            .byte $56,$42,$5A,$22,$56,$55,$55,$55
            .byte $AB,$82,$AA,$22,$6A,$56,$5A,$5A
            .byte $FF,$FF,$FF,$BF,$AF,$AF,$AF,$AF
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
;
            org $6000
;
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00
L600D:      .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FC,$0F,$FF
            .byte $F0,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FC,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$03,$FF,$F0,$00
            .byte $00,$00,$00,$00,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FC,$0F,$FF
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FC,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$03,$FF,$F0,$00
            .byte $00,$00,$00,$03,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$0C,$30,$00
            .byte $0C,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$3C,$00,$00,$3F,$FF
            .byte $00,$00,$00,$00,$0C,$00,$C0,$00
            .byte $00,$00,$00,$03,$2A,$AA,$AA,$A9
            .byte $55,$55,$55,$55,$55,$4F,$31,$55
            .byte $4C,$AA,$AA,$AA,$AA,$AA,$AA,$A9
            .byte $55,$55,$55,$4C,$00,$00,$3F,$FF
            .byte $00,$00,$00,$00,$0C,$54,$C0,$00
            .byte $00,$00,$00,$03,$2A,$AA,$AA,$A5
            .byte $55,$55,$55,$55,$55,$4F,$C5,$A9
            .byte $4C,$AA,$AA,$AA,$AA,$AA,$AA,$A5
            .byte $55,$55,$55,$4C,$00,$00,$30,$03
            .byte $00,$00,$00,$00,$0C,$54,$C0,$00
            .byte $00,$00,$00,$03,$2A,$AA,$AA,$A5
            .byte $55,$55,$55,$55,$55,$4F,$C6,$55
            .byte $32,$AA,$AA,$AA,$AA,$AA,$AA,$A5
            .byte $55,$55,$55,$4C,$00,$00,$05,$57
            .byte $00,$00,$00,$00,$0C,$54,$00,$00
            .byte $00,$00,$00,$0C,$AA,$AA,$AA,$A5
            .byte $55,$55,$55,$55,$55,$53,$C9,$55
            .byte $32,$AA,$AA,$AA,$AA,$AA,$AA,$A5
            .byte $55,$50,$55,$4C,$00,$00,$C6,$93
            .byte $00,$00,$00,$00,$31,$94,$00,$00
            .byte $00,$00,$00,$0C,$AA,$AA,$AA,$95
            .byte $55,$55,$55,$55,$55,$53,$19,$55
            .byte $32,$AA,$AA,$AA,$AA,$AA,$AA,$95
            .byte $55,$53,$25,$4C,$00,$00,$C9,$53
            .byte $00,$00,$00,$00,$31,$93,$00,$00
            .byte $00,$00,$00,$0C,$55,$55,$55,$55
            .byte $55,$55,$55,$55,$59,$53,$19,$54
            .byte $C5,$55,$55,$55,$55,$55,$55,$55
            .byte $55,$53,$25,$3C,$3F,$00,$C9,$53
            .byte $00,$00,$00,$00,$31,$93,$00,$00
            .byte $00,$00,$00,$0C,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$06,$54,$25,$54
            .byte $C0,$00,$00,$00,$00,$00,$00,$00
            .byte $05,$53,$25,$33,$FF,$C0,$C9,$4F
            .byte $C0,$0F,$00,$00,$F1,$50,$00,$00
            .byte $00,$00,$00,$3F,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$C6,$54,$65,$54
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $05,$4F,$25,$3F,$C0,$F0,$19,$4F
            .byte $CF,$FF,$FF,$FC,$C6,$50,$00,$00
            .byte $00,$00,$00,$3F,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$FF,$FF,$C6,$54,$95,$53
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
            .byte $05,$4C,$95,$3C,$15,$33,$25,$50
            .byte $FF,$F0,$FF,$FF,$C6,$50,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$03,$C6,$54,$95,$53
            .byte $FF,$FF,$FF,$FF,$FF,$FF,$C0,$FF
            .byte $25,$4C,$95,$31,$55,$4F,$25,$54
            .byte $F0,$C4,$C0,$03,$C6,$4C,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$03,$C5,$55,$95,$53
            .byte $F0,$00,$FC,$00,$3C,$00,$C4,$FF
            .byte $25,$4C,$94,$C5,$A5,$4F,$25,$54
            .byte $C0,$18,$D5,$54,$C9,$4C,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$03,$19,$55,$55,$53
            .byte $C5,$55,$31,$55,$4C,$54,$19,$3F
            .byte $25,$3C,$94,$C6,$55,$4F,$25,$54
            .byte $15,$24,$1A,$A4,$C9,$4C,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$03,$19,$55,$55,$53
            .byte $C6,$95,$31,$A5,$4C,$54,$16,$3C
            .byte $95,$32,$54,$C9,$55,$4C,$65,$53
            .byte $19,$54,$25,$54,$19,$40,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$03,$19,$55,$55,$43
            .byte $C9,$55,$32,$55,$4C,$95,$56,$3C
            .byte $95,$32,$54,$C9,$55,$4C,$95,$03
            .byte $25,$54,$25,$13,$19,$30,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$03,$19,$55,$55,$43
            .byte $C9,$45,$32,$51,$4C,$95,$55,$3C
            .byte $95,$32,$54,$14,$55,$4C,$95,$3F
            .byte $25,$50,$64,$D3,$19,$30,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$03,$25,$55,$55,$4F
            .byte $C9,$35,$32,$4D,$41,$90,$55,$3C
            .byte $95,$42,$53,$13,$15,$4C,$95,$3C
            .byte $25,$4C,$94,$D3,$25,$30,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$0C,$65,$55,$55,$4F
            .byte $25,$34,$C9,$4D,$31,$90,$54,$FC
            .byte $95,$55,$53,$0C,$15,$4C,$95,$3C
            .byte $65,$3C,$94,$D3,$25,$30,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$0C,$65,$55,$55,$4F
            .byte $25,$34,$C9,$4D,$32,$53,$14,$F2
            .byte $55,$55,$53,$F1,$55,$41,$95,$3C
            .byte $95,$3C,$94,$D0,$65,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$0C,$65,$55,$55,$4F
            .byte $25,$34,$C9,$4D,$32,$53,$24,$F2
            .byte $55,$55,$53,$C5,$55,$32,$54,$FC
            .byte $95,$3C,$94,$4C,$64,$C0,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$0C,$95,$55,$55,$4F
            .byte $25,$04,$C9,$41,$02,$53,$24,$F2
            .byte $55,$00,$0F,$19,$45,$32,$54,$F0
            .byte $94,$FC,$90,$4C,$94,$C0,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$01,$95,$55,$55,$0C
            .byte $94,$14,$25,$05,$0A,$4F,$24,$F2
            .byte $55,$3F,$FC,$65,$09,$32,$54,$F2
            .byte $54,$F2,$53,$4C,$94,$C0,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$31,$91,$55,$55,$0C
            .byte $94,$D3,$25,$34,$C9,$4C,$93,$F2
            .byte $55,$3F,$F1,$94,$C9,$06,$54,$F2
            .byte $54,$F2,$53,$4C,$94,$FF,$FF,$FF
            .byte $FF,$FF,$FC,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$31,$92,$55,$55,$0C
            .byte $94,$D3,$25,$34,$C9,$4C,$93,$C9
            .byte $55,$30,$32,$97,$25,$46,$54,$F2
            .byte $54,$F2,$53,$41,$95,$3F,$FF,$FF
            .byte $FF,$FF,$FC,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$32,$52,$55,$55,$0C
            .byte $94,$D3,$25,$34,$C9,$4C,$93,$C9
            .byte $54,$C0,$32,$53,$25,$59,$53,$F2
            .byte $53,$F2,$51,$31,$95,$00,$00,$00
            .byte $00,$00,$30,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$32,$52,$55,$55,$32
            .byte $54,$D3,$15,$34,$19,$4C,$90,$09
            .byte $54,$C0,$09,$53,$25,$59,$50,$C9
            .byte $50,$32,$41,$31,$55,$55,$AA,$AA
            .byte $AA,$AA,$30,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$06,$42,$54,$95,$32
            .byte $50,$50,$94,$14,$25,$32,$51,$09
            .byte $54,$C0,$09,$53,$25,$55,$51,$09
            .byte $51,$09,$41,$31,$55,$55,$6A,$AA
            .byte $AA,$AA,$30,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$06,$42,$54,$95,$32
            .byte $50,$4C,$94,$13,$25,$32,$55,$09
            .byte $54,$00,$C9,$54,$55,$45,$51,$09
            .byte $51,$09,$45,$31,$55,$55,$6A,$AA
            .byte $AA,$AA,$30,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$C9,$41,$94,$95,$02
            .byte $50,$4C,$94,$13,$25,$32,$54,$C9
            .byte $53,$00,$C9,$55,$95,$45,$55,$05
            .byte $55,$09,$55,$31,$55,$55,$6A,$AA
            .byte $AA,$A8,$C0,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$C9,$4C,$90,$95,$56
            .byte $55,$4C,$95,$53,$25,$32,$54,$15
            .byte $53,$00,$C9,$55,$55,$15,$54,$05
            .byte $54,$C5,$54,$F1,$55,$55,$6A,$AA
            .byte $AA,$A8,$C0,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$C9,$4C,$93,$25,$56
            .byte $55,$4C,$95,$53,$15,$31,$53,$15
            .byte $53,$00,$C5,$55,$55,$15,$54,$C5
            .byte $54,$C5,$54,$FC,$55,$55,$5A,$AA
            .byte $AA,$A8,$C0,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$19,$4C,$93,$25,$45
            .byte $55,$4C,$55,$53,$15,$31,$53,$15
            .byte $50,$00,$F1,$55,$54,$C5,$53,$F5
            .byte $53,$C5,$54,$FC,$55,$55,$55,$55
            .byte $55,$54,$C0,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$15,$4C,$4F,$25,$40
            .byte $00,$3F,$00,$0F,$00,$F1,$4F,$00
            .byte $00,$00,$31,$50,$50,$C5,$4F,$F1
            .byte $4F,$F0,$00,$3F,$00,$00,$00,$00
            .byte $00,$03,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$03,$15,$3C,$4F,$19,$4F
            .byte $FF,$FF,$FF,$FF,$FF,$FC,$3F,$FF
            .byte $FC,$00,$30,$0F,$0F,$F0,$3C,$FC
            .byte $3C,$FF,$FF,$CF,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$03,$00,$FC,$0F,$C9,$3F
            .byte $FF,$F3,$FF,$F3,$FF,$FF,$F3,$FF
            .byte $FC,$00,$0F,$FF,$FC,$3F,$F0,$3F
            .byte $F0,$3F,$FF,$03,$FF,$FF,$FF,$FF
            .byte $FF,$FF,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$03,$FF,$0F,$F0,$C4,$F0
            .byte $00,$00,$00,$00,$00,$0F,$C0,$00
            .byte $00,$00,$0F,$F0,$F0,$0F,$C0,$0F
            .byte $C0,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$03,$FF,$03,$C0,$C4,$C0
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$F3,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$33,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$3C,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$0C,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $00,$00,$00
;
            org $6800
;
            .byte $00,$00,$00,$00,$00,$00,$00,$00
            .byte $0E,$1E,$1C,$30,$00,$C0,$C0,$00
            .byte $00,$00,$28,$28,$00,$00,$00,$00
            .byte $00,$66,$FF,$66,$66,$FF,$66,$00
            .byte $18,$3E,$60,$3C,$06,$7C,$18,$00
            .byte $00,$66,$6C,$18,$30,$66,$46,$00
            .byte $1C,$36,$1C,$38,$6F,$66,$3B,$00
            .byte $00,$18,$18,$10,$00,$00,$00,$00
            .byte $00,$0E,$1C,$18,$18,$1C,$0E,$00
            .byte $00,$70,$38,$18,$18,$38,$70,$00
            .byte $00,$66,$3C,$FF,$3C,$66,$00,$00
            .byte $00,$10,$10,$7C,$10,$10,$00,$00
            .byte $00,$00,$00,$00,$00,$18,$18,$30
            .byte $00,$00,$00,$00,$78,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$10,$00
            .byte $00,$06,$0C,$18,$30,$60,$40,$00
            .byte $00,$38,$4C,$C6,$C6,$64,$38,$00
            .byte $00,$18,$38,$18,$18,$18,$7E,$00
            .byte $00,$7C,$C6,$8C,$38,$70,$FE,$00
            .byte $00,$7E,$0C,$38,$0C,$C6,$7C,$00
            .byte $00,$1C,$3C,$6C,$CC,$FE,$0C,$00
            .byte $00,$FC,$C0,$FC,$06,$C6,$7C,$00
            .byte $00,$3C,$60,$FC,$C6,$C6,$7C,$00
            .byte $00,$FE,$C6,$0C,$18,$30,$30,$00
            .byte $00,$7C,$C6,$7C,$CE,$C6,$7C,$00
            .byte $00,$7C,$C6,$C6,$7E,$0C,$78,$00
            .byte $00,$00,$10,$00,$00,$10,$00,$00
            .byte $00,$00,$18,$18,$00,$18,$18,$30
            .byte $06,$0C,$18,$30,$18,$0C,$06,$00
            .byte $00,$00,$7E,$00,$00,$7E,$00,$00
            .byte $60,$30,$18,$0C,$18,$30,$60,$00
            .byte $00,$3C,$66,$0C,$18,$00,$18,$00
            .byte $00,$3C,$66,$6E,$6E,$60,$3E
L6907:      .byte $00,$00,$38,$6C,$C6,$FE,$C6,$C6
            .byte $00,$00,$FC,$C6,$FC,$C6,$C6,$FC
            .byte $00,$00,$3C,$66,$C0,$C0,$66,$3C
            .byte $00,$00,$F8,$CC,$C6,$C6,$CC,$F8
            .byte $00,$00,$FC,$C0,$F8,$C0,$C0,$FE
            .byte $00,$00,$FE,$C0,$FC,$C0,$C0,$C0
            .byte $00,$00,$3E,$60,$C0,$CE,$66,$3E
            .byte $00,$00,$C6,$C6,$FE,$C6,$C6,$C6
            .byte $00,$00,$FC,$30,$30,$30,$30,$FC
            .byte $00,$00,$06,$06,$06,$06,$C6,$7C
            .byte $00,$00,$C6,$CC,$F8,$F8,$CC,$C6
            .byte $00,$00,$C0,$C0,$C0,$C0,$C0,$FE
            .byte $00,$00,$C6,$EE,$FE,$FE,$D6,$C6
            .byte $00,$00,$C6,$E6,$FE,$FE,$CE,$C6
            .byte $00,$00,$7C,$C6,$C6,$C6,$C6,$7C
            .byte $00,$00,$FC,$C6,$C6,$FC,$C0,$C0
            .byte $00,$00,$7C,$C6,$C6,$DE,$CC,$7A
            .byte $00,$00,$FC,$C6,$CE,$F8,$CC,$C6
            .byte $00,$00,$7C,$C0,$7C,$06,$C6,$7C
            .byte $00,$00,$7E,$18,$18,$18,$18,$18
            .byte $00,$00,$C6,$C6,$C6,$C6,$C6,$7C
            .byte $00,$00,$C6,$C6,$C6,$6C,$38,$10
            .byte $00,$00,$C6,$D6,$FE,$FE,$EE,$C6
            .byte $00,$00,$C6,$EE,$38,$38,$EE,$C6
            .byte $00,$00,$66,$66,$66,$3C,$18,$18
            .byte $00,$00,$FE,$0E,$1C,$70,$E0,$FE
            .byte $00,$00,$1E,$18,$18,$18,$18,$1E
            .byte $00,$00,$40,$60,$30,$18,$0C,$06
            .byte $00,$00,$78,$18,$18,$18,$18,$78
            .byte $00,$00,$08,$1C,$36,$63,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$FF
            .byte $00,$00,$36,$7F,$7F,$3E,$1C,$08
            .byte $00,$18,$18,$18,$1F,$1F,$18,$18
            .byte $18,$03,$03,$03,$03,$03,$03,$03
            .byte $03,$18,$18,$18,$F8,$F8,$00,$00
            .byte $00,$18,$18,$18,$F8,$F8,$18,$18
            .byte $18,$00,$00,$00,$F8,$F8,$18,$18
            .byte $18,$03,$07,$0E,$1C,$38,$70,$E0
            .byte $C0,$C0,$E0,$70,$38,$1C,$0E,$07
            .byte $03,$01,$03,$07,$0F,$1F,$3F,$7F
            .byte $FF,$00,$00,$00,$00,$0F,$0F,$0F
            .byte $0F,$80,$C0,$E0,$F0,$F8,$FC,$FE
            .byte $FF,$0F,$0F,$0F,$0F,$00,$00,$00
            .byte $00,$F0,$F0,$F0,$F0,$00,$00,$00
            .byte $00,$FF,$FF,$00,$00,$00,$00,$00
            .byte $00,$00,$00,$00,$00,$00,$00,$FF
            .byte $FF,$00,$00,$00,$00,$F0,$F0,$F0
            .byte $F0,$00,$1C,$1C,$77,$77,$08,$1C
            .byte $00,$00,$00,$00,$1F,$1F,$18,$18
            .byte $18,$00,$00,$00,$FF,$FF,$00,$00
            .byte $00,$18,$18,$18,$FF,$FF,$18,$18
            .byte $18,$00,$00,$3C,$7E,$7E,$7E,$3C
            .byte $00,$00,$00,$00,$00,$FF,$FF,$FF
            .byte $FF,$C0,$C0,$C0,$C0,$C0,$C0,$C0
            .byte $C0,$00,$00,$00,$FF,$FF,$18,$18
            .byte $18,$18,$18,$18,$FF,$FF,$00,$00
            .byte $00,$F0,$F0,$F0,$F0,$F0,$F0,$F0
            .byte $F0,$18,$18,$18,$1F,$1F,$00,$00
            .byte $00,$78,$60,$78,$60,$7E,$18,$1E
            .byte $00,$00,$18,$3C,$7E,$18,$18,$18
            .byte $00,$00,$18,$18,$18,$7E,$3C,$18
            .byte $00,$00,$18,$30,$7E,$30,$18,$00
            .byte $00,$00,$18,$0C,$7E,$0C,$18,$00
            .byte $00,$00,$18,$3C,$7E,$7E,$3C,$18
            .byte $00,$00,$00,$3C,$06,$3E,$66,$3E
            .byte $00,$00,$60,$60,$7C,$66,$66,$7C
            .byte $00,$00,$00,$3C,$60,$60,$60,$3C
            .byte $00,$00,$06,$06,$3E,$66,$66,$3E
            .byte $00,$00,$00,$3C,$66,$7E,$60,$3C
            .byte $00,$00,$0E,$18,$3E,$18,$18,$18
            .byte $00,$00,$00,$3E,$66,$66,$3E,$06
            .byte $7C,$00,$60,$60,$7C,$66,$66,$66
            .byte $00,$00,$18,$00,$38,$18,$18,$3C
            .byte $00,$00,$06,$00,$06,$06,$06,$06
            .byte $3C,$00,$60,$60,$6C,$78,$6C,$66
            .byte $00,$00,$38,$18,$18,$18,$18,$3C
            .byte $00,$00,$00,$66,$7F,$7F,$6B,$63
            .byte $00,$00,$00,$7C,$66,$66,$66,$66
            .byte $00,$00,$00,$3C,$66,$66,$66,$3C
            .byte $00,$00,$00,$7C,$66,$66,$7C,$60
            .byte $60,$00,$00,$3E,$66,$66,$3E,$06
            .byte $06,$00,$00,$7C,$66,$60,$60,$60
            .byte $00,$00,$00,$3E,$60,$3C,$06,$7C
            .byte $00,$00,$18,$7E,$18,$18,$18,$0E
            .byte $00,$00,$00,$66,$66,$66,$66,$3E
            .byte $00,$00,$00,$66,$66,$66,$3C,$18
            .byte $00,$00,$00,$63,$6B,$7F,$3E,$36
            .byte $00,$00,$00,$66,$3C,$18,$3C,$66
            .byte $00,$00,$00,$66,$66,$66,$3E,$0C
            .byte $78,$00,$00,$7E,$0C,$18,$30,$7E
            .byte $00,$00,$18,$3C,$7E,$7E,$18,$3C
            .byte $00,$18,$18,$18,$18,$18,$18,$18
            .byte $18,$00,$7E,$78,$7C,$6E,$66,$06
            .byte $00,$08,$18,$38,$78,$38,$18,$08
            .byte $00,$10,$18,$1C,$1E,$1C,$18,$10
            .byte $00
;
            org $02E0
;
            .word L48B2
;
         
