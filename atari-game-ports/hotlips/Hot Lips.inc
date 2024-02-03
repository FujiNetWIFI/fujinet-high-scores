;
; System equates
;
ICHID       equ $0000
ICDNO       equ $0001
ICCOM       equ $0002
ICSTA       equ $0003
ICBAL       equ $0004
ICBAH       equ $0005
ICPTL       equ $0006
ICPTH       equ $0007
ICBLL       equ $0008
ICBLH       equ $0009
ICAX1       equ $000A
ICAX2       equ $000B
ICAX3       equ $000C
ICAX4       equ $000D
ICAX5       equ $000E
ICAX6       equ $000F
ADLI        equ $0080
AVB         equ $0040
ALMS        equ $0040
AVSCR       equ $0020
AHSCR       equ $0010
AJMP        equ $0001
AEMPTY1     equ $0000
AEMPTY2     equ $0010
AEMPTY3     equ $0020
AEMPTY4     equ $0030
AEMPTY5     equ $0040
AEMPTY6     equ $0050
AEMPTY7     equ $0060
AEMPTY8     equ $0070
NGFLAG      equ $0001
CASINI      equ $0002
RAMLO       equ $0004
TRAMSZ      equ $0006
DOSVEC      equ $000A
APPMHI      equ $000E
POKMSK      equ $0010
BRKKEY      equ $0011
RTCLOK      equ $0012
BUFADR      equ $0015
DSKFMS      equ $0018
ICHIDZ      equ $0020
ICDNOZ      equ $0021
ICBLLZ      equ $0028
ICAX1Z      equ $002A
ICAX5Z      equ $002E
ICAX6Z      equ $002F
BFENHI      equ $0035
RECVDN      equ $0039
NOCKSM      equ $003C
FTYPE       equ $003E
FMSZPG      equ $0043
ATRACT      equ $004D
TEMP        equ $0050
HOLD1       equ $0051
ROWCRS      equ $0054
COLCRS      equ $0055
SAVMSC      equ $0058
FKDEF       equ $0060
PALNTS      equ $0062
LOGCOL      equ $0063
ADRESS      equ $0064
MLTTMP      equ $0066
BITMSK      equ $006E
COLAC       equ $0072
ENDPT       equ $0074
DELTAR      equ $0076
DELTAC      equ $0077
COUNTR      equ $007E
LOMEM       equ $0080
VDSLST      equ $0200
CDTMA2      equ $0228
SDMCTL      equ $022F
SDLSTL      equ $0230
SDLSTH      equ $0231
SSKCTL      equ $0232
COLDST      equ $0244
GPRIOR      equ $026F
STICK0      equ $0278
TABMAP      equ $02A3
PCOLR0      equ $02C0
COLOR0      equ $02C4
COLOR1      equ $02C5
COLOR2      equ $02C6
COLOR3      equ $02C7
COLOR4      equ $02C8
MEMLO       equ $02E7
CHBAS       equ $02F4
CH          equ $02FC
DBUFLO      equ $0304
DBUFHI      equ $0305
DAUX1       equ $030A
DAUX2       equ $030B
HATABS      equ $031A
IOCB0       equ $0340
M0PF        equ $D000
HPOSP0      equ $D000
M1PF        equ $D001
HPOSP1      equ $D001
M2PF        equ $D002
HPOSP2      equ $D002
M3PF        equ $D003
HPOSP3      equ $D003
P0PF        equ $D004
HPOSM0      equ $D004
P1PF        equ $D005
HPOSM1      equ $D005
P2PF        equ $D006
HPOSM2      equ $D006
P3PF        equ $D007
HPOSM3      equ $D007
M0PL        equ $D008
M1PL        equ $D009
M2PL        equ $D00A
M3PL        equ $D00B
P0PL        equ $D00C
TRIG0       equ $D010
GRACTL      equ $D01D
HITCLR      equ $D01E
CONSOL      equ $D01F
POT0        equ $D200
AUDF1       equ $D200
POT1        equ $D201
AUDC1       equ $D201
POT2        equ $D202
AUDF2       equ $D202
POT3        equ $D203
AUDC2       equ $D203
POT5        equ $D205
AUDC3       equ $D205
POT6        equ $D206
AUDF4       equ $D206
POT7        equ $D207
AUDC4       equ $D207
ALLPOT      equ $D208
AUDCTL      equ $D208
RANDOM      equ $D20A
SKSTAT      equ $D20F
SKCTL       equ $D20F
DLISTL      equ $D402
PMBASE      equ $D407
VCOUNT      equ $D40B
NMIEN       equ $D40E
CIOV        equ $E456
SETVBV      equ $E45C
XITVBV      equ $E462
;
; Code equates
;
L0000       equ $0000
L0082       equ $0082
L0083       equ $0083
L0084       equ $0084
L0085       equ $0085
L0086       equ $0086
L008C       equ $008C
L0092       equ $0092
L0094       equ $0094
L0096       equ $0096
L0097       equ $0097
L009B       equ $009B
L00A0       equ $00A0
L00A2       equ $00A2
L00A3       equ $00A3
L00A7       equ $00A7
L00AA       equ $00AA
L00AC       equ $00AC
L00AF       equ $00AF
L00B0       equ $00B0
L00B1       equ $00B1
L00B2       equ $00B2
L00B3       equ $00B3
L00B4       equ $00B4
L00B5       equ $00B5
L00B6       equ $00B6
L00B7       equ $00B7
L00B8       equ $00B8
L00B9       equ $00B9
L00BA       equ $00BA
L00BB       equ $00BB
L00BC       equ $00BC
L00BD       equ $00BD
L00C0       equ $00C0
L00C1       equ $00C1
L00C2       equ $00C2
L00C3       equ $00C3
L00C4       equ $00C4
L00C5       equ $00C5
L00C6       equ $00C6
L00C7       equ $00C7
L00C8       equ $00C8
L00C9       equ $00C9
L00CA       equ $00CA
L00CB       equ $00CB
L00CC       equ $00CC
L00CD       equ $00CD
L00CE       equ $00CE
L00CF       equ $00CF
L00D0       equ $00D0
L00D1       equ $00D1
L00D2       equ $00D2
L00D3       equ $00D3
L00EE       equ $00EE
L00EF       equ $00EF
L00F3       equ $00F3
L00FF       equ $00FF
L01C8       equ $01C8
L0666       equ $0666
L081C       equ $081C
L100E       equ $100E
L1020       equ $1020
L1120       equ $1120
L1121       equ $1121
L1211       equ $1211
L121A       equ $121A
L1300       equ $1300
L1400       equ $1400
L1438       equ $1438
L1500       equ $1500
L1600       equ $1600
L1612       equ $1612
L1700       equ $1700
L180C       equ $180C
L1818       equ $1818
L181A       equ $181A
L181C       equ $181C
L183C       equ $183C
L1900       equ $1900
L1919       equ $1919
L1920       equ $1920
L1939       equ $1939
L1A20       equ $1A20
L1E18       equ $1E18
L1E1E       equ $1E1E
L4008       equ $4008
L4328       equ $4328
L4603       equ $4603
L4605       equ $4605
L4804       equ $4804
L4808       equ $4808
L4819       equ $4819
L494C       equ $494C
L4F48       equ $4F48
L5003       equ $5003
L5005       equ $5005
L5038       equ $5038
L5104       equ $5104
L5438       equ $5438
L5A03       equ $5A03
L5A05       equ $5A05
L6120       equ $6120
L616D       equ $616D
L629B       equ $629B
L6403       equ $6403
L6405       equ $6405
L6478       equ $6478
L665A       equ $665A
L6666       equ $6666
L6838       equ $6838
L6E03       equ $6E03
L6E05       equ $6E05
L6E6E       equ $6E6E
L6E6F       equ $6E6F
L6F79       equ $6F79
L7320       equ $7320
L773E       equ $773E
L7803       equ $7803
L7805       equ $7805
L7C78       equ $7C78
L7E5A       equ $7E5A
L8201       equ $8201
L8203       equ $8203
L8205       equ $8205
L8A2E       equ $8A2E
L8C03       equ $8C03
L8C05       equ $8C05
L9101       equ $9101
L9603       equ $9603
L9605       equ $9605
L9801       equ $9801
L9E01       equ $9E01
LA001       equ $A001
LA003       equ $A003
LA005       equ $A005
LA401       equ $A401
LAA01       equ $AA01
LAA03       equ $AA03
LAA05       equ $AA05
LAAAA       equ $AAAA
LB001       equ $B001
LB403       equ $B403
LB405       equ $B405
LB601       equ $B601
LBC01       equ $BC01
LBE03       equ $BE03
LC201       equ $C201
LC302       equ $C302
LC402       equ $C402
LC502       equ $C502
LC602       equ $C602
LC702       equ $C702
LC802       equ $C802
LCA02       equ $CA02
LCC02       equ $CC02
LCE02       equ $CE02
LD602       equ $D602
LD802       equ $D802
LE463       equ $E463
LE464       equ $E464
LE820       equ $E820
LEB2E       equ $EB2E
LFF0A       equ $FF0A
LFF10       equ $FF10
LFF12       equ $FF12
LFFFF       equ $FFFF