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
DOSINI      equ $000C
APPMHI      equ $000E
POKMSK      equ $0010
BRKKEY      equ $0011
RTCLOK      equ $0012
ICCOMT      equ $0017
DSKFMS      equ $0018
DSKUTL      equ $001A
ABUFPT      equ $001C
ICHIDZ      equ $0020
ICDNOZ      equ $0021
ICSTAZ      equ $0023
ICBAHZ      equ $0025
ICBLLZ      equ $0028
ICAX1Z      equ $002A
ICAX4Z      equ $002D
ICAX6Z      equ $002F
BUFRLO      equ $0032
RECVDN      equ $0039
NOCKSM      equ $003C
FREQ        equ $0040
FMSZPG      equ $0043
ATRACT      equ $004D
ROWCRS      equ $0054
COLCRS      equ $0055
OLDCOL      equ $005B
FKDEF       equ $0060
LOGCOL      equ $0063
MLTTMP      equ $0066
SAVADR      equ $0068
RAMTOP      equ $006A
BUFSTR      equ $006C
BITMSK      equ $006E
SHFAMT      equ $006F
COLAC       equ $0072
COUNTR      equ $007E
LOMEM       equ $0080
VDSLST      equ $0200
VKEYBD      equ $0208
SDMCTL      equ $022F
SDLSTL      equ $0230
SDLSTH      equ $0231
COLDST      equ $0244
COLOR0      equ $02C4
COLOR1      equ $02C5
COLOR2      equ $02C6
COLOR4      equ $02C8
TRIG0       equ $D010
TRIG1       equ $D011
PRIOR       equ $D01B
GRACTL      equ $D01D
CONSOL      equ $D01F
POT0        equ $D200
AUDF1       equ $D200
POT1        equ $D201
AUDC1       equ $D201
POT2        equ $D202
AUDF2       equ $D202
POT3        equ $D203
AUDC2       equ $D203
POT4        equ $D204
AUDF3       equ $D204
POT5        equ $D205
AUDC3       equ $D205
POT6        equ $D206
AUDF4       equ $D206
POT7        equ $D207
AUDC4       equ $D207
ALLPOT      equ $D208
AUDCTL      equ $D208
KBCODE      equ $D209
RANDOM      equ $D20A
IRQST       equ $D20E
IRQEN       equ $D20E
SKSTAT      equ $D20F
SKCTL       equ $D20F
PORTA       equ $D300
PACTL       equ $D302
DMACLT      equ $D400
VCOUNT      equ $D40B
NMIEN       equ $D40E
;
; Code equates
;
L0000       equ $0000
L0082       equ $0082
L0083       equ $0083
L0084       equ $0084
L0085       equ $0085
L0086       equ $0086
L0087       equ $0087
L0088       equ $0088
L0089       equ $0089
L008A       equ $008A
L008B       equ $008B
L008C       equ $008C
L008D       equ $008D
L008E       equ $008E
L008F       equ $008F
L0090       equ $0090
L0091       equ $0091
L0092       equ $0092
L0093       equ $0093
L0094       equ $0094
L0095       equ $0095
L0098       equ $0098
L0099       equ $0099
L009A       equ $009A
L009B       equ $009B
L009C       equ $009C
L009D       equ $009D
L009E       equ $009E
L009F       equ $009F
L00A0       equ $00A0
L00A1       equ $00A1
L00A2       equ $00A2
L00A3       equ $00A3
L00A4       equ $00A4
L00A5       equ $00A5
L00A6       equ $00A6
L00A7       equ $00A7
L00A8       equ $00A8
L00A9       equ $00A9
L00AA       equ $00AA
L00AB       equ $00AB
L00AC       equ $00AC
L00AD       equ $00AD
L00AE       equ $00AE
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
L00BE       equ $00BE
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
L00D4       equ $00D4
L00D5       equ $00D5
L00D7       equ $00D7
L00D8       equ $00D8
L00D9       equ $00D9
L00DA       equ $00DA
L00DB       equ $00DB
L00DC       equ $00DC
L00DD       equ $00DD
L00DE       equ $00DE
L00DF       equ $00DF
L00E0       equ $00E0
L00E1       equ $00E1
L00E2       equ $00E2
L00E3       equ $00E3
L00E4       equ $00E4
L00E5       equ $00E5
L00E6       equ $00E6
L00E7       equ $00E7
L00E8       equ $00E8
L00E9       equ $00E9
L00EA       equ $00EA
L00EB       equ $00EB
L00EC       equ $00EC
L00ED       equ $00ED
L00EE       equ $00EE
L00EF       equ $00EF
L00F0       equ $00F0
L00F1       equ $00F1
L00F2       equ $00F2
L00F3       equ $00F3
L00F4       equ $00F4
L00F6       equ $00F6
L00F7       equ $00F7
L00F8       equ $00F8
L00F9       equ $00F9
L00FC       equ $00FC
L00FD       equ $00FD
L00FE       equ $00FE
L00FF       equ $00FF
L01AF       equ $01AF
L0400       equ $0400
L0401       equ $0401
L0408       equ $0408
L0467       equ $0467
L0500       equ $0500
L0501       equ $0501
L0503       equ $0503
L0504       equ $0504
L0505       equ $0505
L0506       equ $0506
L0507       equ $0507
L0508       equ $0508
L0509       equ $0509
L050C       equ $050C
L050D       equ $050D
L050E       equ $050E
L050F       equ $050F
L0510       equ $0510
L0512       equ $0512
L0513       equ $0513
L0514       equ $0514
L0515       equ $0515
L0516       equ $0516
L0517       equ $0517
L0518       equ $0518
L0519       equ $0519
L051A       equ $051A
L051B       equ $051B
L051C       equ $051C
L051D       equ $051D
L052B       equ $052B
L052C       equ $052C
L052D       equ $052D
L052E       equ $052E
L05AB       equ $05AB
L06AB       equ $06AB
L072B       equ $072B
L082B       equ $082B
L091D       equ $091D
L092B       equ $092B
L09AB       equ $09AB
L0A6F       equ $0A6F
L0AEB       equ $0AEB
L0AEC       equ $0AEC
L0AED       equ $0AED
L0AEE       equ $0AEE
L0B6B       equ $0B6B
L0B6C       equ $0B6C
L0B6D       equ $0B6D
L0C0C       equ $0C0C
L0C2B       equ $0C2B
L0C2C       equ $0C2C
L0C4B       equ $0C4B
L0C4C       equ $0C4C
L0C6B       equ $0C6B
L0C6C       equ $0C6C
L0C6D       equ $0C6D
L0C6E       equ $0C6E
L0C6F       equ $0C6F
L0CA2       equ $0CA2
L0CAF       equ $0CAF
L0CFC       equ $0CFC
L0D2B       equ $0D2B
L0D2C       equ $0D2C
L0D2D       equ $0D2D
L0D2E       equ $0D2E
L0D2F       equ $0D2F
L0D6F       equ $0D6F
L0D8F       equ $0D8F
L0DA7       equ $0DA7
L0DAB       equ $0DAB
L0DAF       equ $0DAF
L0DEF       equ $0DEF
L0E19       equ $0E19
L0E2F       equ $0E2F
L0E6F       equ $0E6F
L0EAB       equ $0EAB
L0EAF       equ $0EAF
L0ECF       equ $0ECF
L0EEF       equ $0EEF
L0F2F       equ $0F2F
L0F6F       equ $0F6F
L0FAB       equ $0FAB
L0FAF       equ $0FAF
L0FEF       equ $0FEF
L102F       equ $102F
L106F       equ $106F
L10AF       equ $10AF
L10EF       equ $10EF
L112F       equ $112F
L116F       equ $116F
L11AF       equ $11AF
L11EF       equ $11EF
L122F       equ $122F
L126F       equ $126F
L12AF       equ $12AF
L12EF       equ $12EF
L132F       equ $132F
L136F       equ $136F
L13AF       equ $13AF
L13EF       equ $13EF
L142F       equ $142F
L1430       equ $1430
L1431       equ $1431
L1432       equ $1432
L1433       equ $1433
L1435       equ $1435
L1437       equ $1437
L1439       equ $1439
L143A       equ $143A
L1600       equ $1600
L1680       equ $1680
L168F       equ $168F
L1700       equ $1700
L17C0       equ $17C0
L17C1       equ $17C1
L17C2       equ $17C2
L17C3       equ $17C3
L17C4       equ $17C4
L17C5       equ $17C5
L17C6       equ $17C6
L17C7       equ $17C7
L17C8       equ $17C8
L17C9       equ $17C9
L1800       equ $1800
L1880       equ $1880
L1900       equ $1900
L1919       equ $1919
L198F       equ $198F
L19C0       equ $19C0
L19C1       equ $19C1
L19C2       equ $19C2
L19C3       equ $19C3
L19C4       equ $19C4
L19C5       equ $19C5
L19C6       equ $19C6
L19C7       equ $19C7
L19C8       equ $19C8
L19C9       equ $19C9
L1A00       equ $1A00
L1A6A       equ $1A6A
L1A8C       equ $1A8C
L1A8F       equ $1A8F
L1AAF       equ $1AAF
L1ACA       equ $1ACA
L1AFF       equ $1AFF
L1B00       equ $1B00
L1B01       equ $1B01
L1B04       equ $1B04
L1BFF       equ $1BFF
L1C00       equ $1C00
L1C01       equ $1C01
L1CFF       equ $1CFF
L1D00       equ $1D00
L1D01       equ $1D01
L1D02       equ $1D02
L1D8C       equ $1D8C
L1D8F       equ $1D8F
L1DFF       equ $1DFF
L1E00       equ $1E00
L1E01       equ $1E01
L1E02       equ $1E02
L1E66       equ $1E66
L1E81       equ $1E81
L1E87       equ $1E87
L1E8C       equ $1E8C
L1E8F       equ $1E8F
L1EC6       equ $1EC6
L1F00       equ $1F00
L1F43       equ $1F43
L1F44       equ $1F44
L1F4D       equ $1F4D
L1F4E       equ $1F4E
L1F80       equ $1F80
L1F86       equ $1F86
L1FBD       equ $1FBD
L1FBE       equ $1FBE
L1FC7       equ $1FC7
L1FC8       equ $1FC8
L2000       equ $2000
L2001       equ $2001
L2002       equ $2002
L2003       equ $2003
L2004       equ $2004
L2005       equ $2005
L2006       equ $2006
L2007       equ $2007
L2008       equ $2008
L2009       equ $2009
L200A       equ $200A
L200B       equ $200B
L208F       equ $208F
L2218       equ $2218
L2318       equ $2318
L2418       equ $2418
L2518       equ $2518
L2618       equ $2618
L2718       equ $2718
L2800       equ $2800
L2818       equ $2818
L2918       equ $2918
L2A18       equ $2A18
L2A80       equ $2A80
L2B18       equ $2B18
L2C18       equ $2C18
L2D18       equ $2D18
L2E18       equ $2E18
L2F18       equ $2F18
L300C       equ $300C
L3018       equ $3018
L3080       equ $3080
L30CC       equ $30CC
L3118       equ $3118
L3218       equ $3218
L3318       equ $3318
L3418       equ $3418
L3518       equ $3518
L358E       equ $358E
L3618       equ $3618
L3718       equ $3718
L3818       equ $3818
L3918       equ $3918
L3A18       equ $3A18
L3B18       equ $3B18
L3C18       equ $3C18
L3D18       equ $3D18
L3E18       equ $3E18
L3F18       equ $3F18
L4800       equ $4800
L4820       equ $4820
L4C61       equ $4C61
L5160       equ $5160
L5345       equ $5345
L6139       equ $6139
L6220       equ $6220
L6A00       equ $6A00
L6B07       equ $6B07
L6B18       equ $6B18
L6C6F       equ $6C6F
L6C8D       equ $6C8D
L6D39       equ $6D39
L7665       equ $7665
L7986       equ $7986
L7988       equ $7988
L798A       equ $798A
L7F56       equ $7F56
L7F83       equ $7F83
LBCF6       equ $BCF6
LC030       equ $C030
LC1A0       equ $C1A0
LC3CC       equ $C3CC
LC4A0       equ $C4A0
LCB18       equ $CB18
LCCCC       equ $CCCC
LCCFC       equ $CCFC
LCE80       equ $CE80
LCFA0       equ $CFA0
LCFCC       equ $CFCC
LE280       equ $E280
LEF00       equ $EF00
LF00C       equ $F00C
LF4B0       equ $F4B0
LFDFD       equ $FDFD
LFDFE       equ $FDFE
LFE80       equ $FE80
LFFFE       equ $FFFE