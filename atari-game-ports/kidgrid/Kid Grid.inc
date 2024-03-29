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
CASINI      equ $0002
RAMLO       equ $0004
TRAMSZ      equ $0006
DOSVEC      equ $000A
BRKKEY      equ $0011
RTCLOK      equ $0012
BUFADR      equ $0015
ICCOMT      equ $0017
DSKFMS      equ $0018
DSKUTL      equ $001A
ICHIDZ      equ $0020
ICSTAZ      equ $0023
ICBAHZ      equ $0025
ICPTLZ      equ $0026
ICAX6Z      equ $002F
BUFRLO      equ $0032
BFENLO      equ $0034
LTEMP       equ $0036
BUFRFL      equ $0038
NOCKSM      equ $003C
SOUNDR      equ $0041
FMSZPG      equ $0043
ATRACT      equ $004D
HOLD1       equ $0051
LMARGN      equ $0052
SAVMSC      equ $0058
OLDROW      equ $005A
OLDCOL      equ $005B
FKDEF       equ $0060
ADRESS      equ $0064
MLTTMP      equ $0066
SAVADR      equ $0068
BUFSTR      equ $006C
BITMSK      equ $006E
COLAC       equ $0072
HOLDCH      equ $007C
LOMEM       equ $0080
VPRCED      equ $0202
VVBLKD      equ $0224
SDMCTL      equ $022F
SDLSTL      equ $0230
SDLSTH      equ $0231
COLDST      equ $0244
GPRIOR      equ $026F
STICK0      equ $0278
STRIG0      equ $0284
PCOLR0      equ $02C0
PCOLR1      equ $02C1
PCOLR2      equ $02C2
PCOLR3      equ $02C3
COLOR1      equ $02C5
COLOR2      equ $02C6
COLOR3      equ $02C7
COLOR4      equ $02C8
CH          equ $02FC
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
RANDOM      equ $D20A
SKSTAT      equ $D20F
SKCTL       equ $D20F
PACTL       equ $D302
PMBASE      equ $D407
NMIEN       equ $D40E
;
; Code equates
;
L0000       equ $0000
L0082       equ $0082
L0084       equ $0084
L0087       equ $0087
L0098       equ $0098
L009B       equ $009B
L009E       equ $009E
L00A5       equ $00A5
L00B0       equ $00B0
L00B1       equ $00B1
L00B2       equ $00B2
L00B3       equ $00B3
L00C0       equ $00C0
L00C8       equ $00C8
L00DA       equ $00DA
L00DC       equ $00DC
L00E5       equ $00E5
L0400       equ $0400
L0401       equ $0401
L0402       equ $0402
L0403       equ $0403
L0405       equ $0405
L0406       equ $0406
L0407       equ $0407
L040A       equ $040A
L040B       equ $040B
L040C       equ $040C
L040D       equ $040D
L040E       equ $040E
L0410       equ $0410
L0411       equ $0411
L0412       equ $0412
L0413       equ $0413
L0415       equ $0415
L041A       equ $041A
L041B       equ $041B
L041C       equ $041C
L0420       equ $0420
L0421       equ $0421
L0422       equ $0422
L0425       equ $0425
L042D       equ $042D
L042E       equ $042E
L042F       equ $042F
L0430       equ $0430
L0431       equ $0431
L0432       equ $0432
L0435       equ $0435
L043D       equ $043D
L043E       equ $043E
L043F       equ $043F
L0440       equ $0440
L044F       equ $044F
L0450       equ $0450
L0451       equ $0451
L0452       equ $0452
L0455       equ $0455
L0456       equ $0456
L0457       equ $0457
L045B       equ $045B
L045F       equ $045F
L0460       equ $0460
L0461       equ $0461
L046F       equ $046F
L0470       equ $0470
L0471       equ $0471
L0473       equ $0473
L047F       equ $047F
L0480       equ $0480
L0486       equ $0486
L0487       equ $0487
L0488       equ $0488
L0489       equ $0489
L04A0       equ $04A0
L04A1       equ $04A1
L04A2       equ $04A2
L04A3       equ $04A3
L04A4       equ $04A4
L04A5       equ $04A5
L04A6       equ $04A6
L04AA       equ $04AA
L04AB       equ $04AB
L04AC       equ $04AC
L04B0       equ $04B0
L04B1       equ $04B1
L04C0       equ $04C0
L04C1       equ $04C1
L04C2       equ $04C2
L04C3       equ $04C3
L04CF       equ $04CF
L04DF       equ $04DF
L04E0       equ $04E0
L04E1       equ $04E1
L04E2       equ $04E2
L04E3       equ $04E3
L04E4       equ $04E4
L04E5       equ $04E5
L04E6       equ $04E6
L04E7       equ $04E7
L04F0       equ $04F0
L04F1       equ $04F1
L0500       equ $0500
L0501       equ $0501
L0503       equ $0503
L0D0D       equ $0D0D
L0E0E       equ $0E0E
L1000       equ $1000
L1060       equ $1060
L111D       equ $111D
L1919       equ $1919
L1D1D       equ $1D1D
L1E1E       equ $1E1E
L2020       equ $2020
L2050       equ $2050
L2180       equ $2180
L2190       equ $2190
L2286       equ $2286
L23CB       equ $23CB
L241E       equ $241E
L2471       equ $2471
L248F       equ $248F
L24A1       equ $24A1
L24D8       equ $24D8
L24DF       equ $24DF
L24E2       equ $24E2
L2523       equ $2523
L2533       equ $2533
L2569       equ $2569
L2589       equ $2589
L25EA       equ $25EA
L25F3       equ $25F3
L261B       equ $261B
L262F       equ $262F
L2643       equ $2643
L2649       equ $2649
L264A       equ $264A
L264C       equ $264C
L2650       equ $2650
L2651       equ $2651
L2653       equ $2653
L271F       equ $271F
L2730       equ $2730
L2782       equ $2782
L27B5       equ $27B5
L27D1       equ $27D1
L27DF       equ $27DF
L27F1       equ $27F1
L2803       equ $2803
L2827       equ $2827
L287C       equ $287C
L288F       equ $288F
L28FF       equ $28FF
L2910       equ $2910
L2921       equ $2921
L2970       equ $2970
L29C5       equ $29C5
L2A1E       equ $2A1E
L2A3C       equ $2A3C
L2AB7       equ $2AB7
L2ADB       equ $2ADB
L2B00       equ $2B00
L2B35       equ $2B35
L2BBA       equ $2BBA
L2BDD       equ $2BDD
L2BE8       equ $2BE8
L2C00       equ $2C00
L2D00       equ $2D00
L2E00       equ $2E00
L2F00       equ $2F00
L2F46       equ $2F46
L2F47       equ $2F47
L2F48       equ $2F48
L2F49       equ $2F49
L2F4A       equ $2F4A
L2F4B       equ $2F4B
L2F4C       equ $2F4C
L2F4D       equ $2F4D
L2F4E       equ $2F4E
L2F4F       equ $2F4F
L2F50       equ $2F50
L2F51       equ $2F51
L2F52       equ $2F52
L2F53       equ $2F53
L2FBE       equ $2FBE
L2FC7       equ $2FC7
L2FD3       equ $2FD3
L5A5A       equ $5A5A
L704C       equ $704C
L7290       equ $7290
L7473       equ $7473
L7CFE       equ $7CFE
L7E42       equ $7E42
L9079       equ $9079
L99B6       equ $99B6
LAAAA       equ $AAAA
LBAFE       equ $BAFE
LD6D6       equ $D6D6
LFEC6       equ $FEC6
