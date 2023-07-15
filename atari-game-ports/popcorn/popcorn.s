        *= $2000

	.include "sysequ.m65"
	
L2000   LDA #$01
        STA BOOT?
        LDA #$00
        STA DOSINI
        LDA #$20
        STA DOSINI+1
        LDA #$0e
        STA COLOR1
        LDA #$32
        STA COLOR2
        JSR L2C74
        LDA #$00
        STA SDMCTL
        STA MVTA+1
        STA ALLPOT
        STA POT1
        STA POT3
        LDX #$29
L202B   STA LOMEM,X
        DEX
        BPL L202b
        JSR L24B7
        JSR L23E0
        LDA #$d6
        STA LOMEM
        LDA #$0f
        STA LOMEM+1
        LDX #$05
        JSR L2DA5
        LDX #$00
L2045   LDA L27AD,X
        STA $1078,X
        INX
        BNE L2045
L204E   LDA L28AD,X
        STA $1178,X
        INX
        CPX #$18
        BNE L204e
        LDX #$00
L205B   LDA L28C5,X
        STA $12ff,X
        INX
        CPX #$1b
        BNE L205b
        LDX #$17
L2068   LDA L28DD+2,X
        STA $0fd7,X
        DEX
        BNE L2068
        JSR L2443
        LDA #$30
        STA CHBAS
        LDA #$fe
        STA VDSLST
        LDA #$29
        STA VDSLST+1
        LDA #$f7
        STA SDLSTL
        LDA #$28
        STA SDLSTH
        LDA #$c0
        STA NMIEN
        LDA #$3a
        STA SDMCTL
        JSR L22F9
        LDA #$01
        STA MVFA+1
        LDA #$02
        STA TSLNUM+1
        LDA #$11
        STA $0ff1
        LDA #$03
        STA MVLNG
        STA SKSTAT
        JSR L233D
L20B1   LDA CONSOL
        CMP #$06
        BEQ L20c8
        CMP #$05
        BNE L20c3
        STA MVFA+1
        LDA #$15
        STA $0ff1
L20C3   LDA STRIG0
        BNE L20b1
L20C8   LDA #$1e
        JSR L249D
L20CD   LDA CONSOL
        CMP #$06
        BEQ L20cd
        JSR L2410
        JSR L23ED
        LDA #$88
        STA CPC
        STA M2PL
        LDA #$40
        STA NMIEN
        LDA #$01
        STA GPRIOR
        STA M1PL
        LDA #$03
        STA GRACTL
        LDA #$00
        STA PMBASE
        JSR L2424
        JSR L2404
        LDA #$77
        STA MVTA+1
        STA HITCLR
        LDY MVFA+1
        LDA L2474,Y
        STA $93
        LDA #$04
        LDX #$12
        LDY #$09
        JSR L2CC2
        LDA #$06
        LDX #$14
        LDY #$09
        JSR L2CC2
L211E   LDA CONSOL
        CMP #$06
        BNE L212f
L2125   LDA CONSOL
        CMP #$06
        BEQ L2125
        JMP L2000
L212F   LDA CH
        BMI L2149
L2134   LDA #$ff
        STA CH
        LDA ECSIZE
        EOR NGFLAG
        STA ECSIZE
        BEQ L2149
L2141   LDA CH
        BMI L2141
        JMP L2134
L2149   JSR L2465
        JSR L2C7D
        LDA MVFA
        BNE L215c
        LDA RANDOM
        CMP #$14
        BCC L2175
        BCS L2160
L215C   DEC MVFA
        BNE L2172
L2160   LDA #$08
        LDY #$01
        LDX #$12
        JSR L2CC2
        LDA #$0a
        LDY #$01
        LDX #$14
        JSR L2CC2
L2172   JMP L21DE
L2175   LDA #$0c
        LDX #$12
        LDY #$01
        JSR L2CC2
        LDA #$0e
        LDX #$14
        LDY #$01
        JSR L2CC2
        LDA #$01
        STA VNTD
        LDA MVFA+1
        ASL A
        CLC
        ADC #$04
        STA MVFA
        LDX #$00
L2195   LDA $0600,X
        BEQ L21a3
        INX
        INX
        CPX #$0c
        BEQ L21de
        JMP L2195
L21A3   STX COX
        LDA MVFA+1
        ASL A
        STA POKADR+1
        LDX #$01
L21AC   LDA $0600,X
        BEQ L21b5
        CMP POKADR+1
        BCC L21de
L21B5   INX
        INX
        CPX #$0d
        BEQ L21ac
        LDX COX
L21BD   LDY #$0a
        LDA #$0e
        JSR L24AA
        CMP #$10
        BCC L21cc
        CMP #$16
        BCC L21bd
L21CC   STA $0600,X
        STA VNTD
        LDA #$0c
        LDY #$01
        JSR L24AA
        INX
        STA $0600,X
        STX MVLNG+1
L21DE   LDA P1PF
        BNE L21e6
        JMP L22CB
L21E6   STA VNTP
        JSR L2D5D
        LDY MVFA+1
        CPY #$06
        BCC L21f3
        LDY #$05
L21F3   JSR L2309
        STA HITCLR
        INC MVTA
        LDY MVFA+1
        LDA MVTA
        CPY #$05
        BCS L220a
        CMP #$19
        BCS L220e
L2207   JMP L22CB
L220A   CMP #$32
        BCC L2207
L220E   LDA #$08
        LDY #$01
        LDX #$12
        JSR L2CC2
        LDA #$0a
        LDY #$01
        LDX #$14
        JSR L2CC2
        LDA #$06
        STA COX
L2224   LDA #$28
        STA $93
        JSR L2465
        LDA #$af
        STA POKADR+1
        DEC COX
        LDA COX
        BEQ L2250
        LDY #$05
        JSR L2309
L223A   DEC POKADR+1
        LDA POKADR+1
        CMP #$a0
        BCC L2224
        STA POT1
        LDA #$0c
        STA POT0
        JSR L2488
        JMP L223A
L2250   LDA #$00
        STA MVTA
        STA POT1
        LDY MVFA+1
        CPY #$13
        BEQ L22c6
        INC MVFA+1
        LDY MVFA+1
        CPY #$04
        BEQ L2271
        CPY #$09
        BEQ L2271
        CPY #$0d
        BEQ L2271
        CPY #$11
        BNE L22ae
L2271   STY L2675+1
        JSR L24B7
        JSR L24CE
        LDA #$3a
        STA SDMCTL
        JSR L2410
        LDA #$04
        LDX #$12
        LDY #$09
        JSR L2CC2
        LDA #$06
        LDX #$14
        LDY #$09
        JSR L2CC2
        LDA #$08
        LDY #$01
        LDX #$12
        JSR L2CC2
        LDA #$0a
        LDY #$01
        LDX #$14
        JSR L2CC2
        LDA #$3c
        JSR L249D
        LDY L2675+1
L22AE   CPY #$13
        BEQ L22c3
        CPY #$0a
        BNE L22c3
        LDA #$10
        STA $0ff1
        LDA #$11
        STA $0ff0
        JMP L22C6
L22C3   INC $0ff1
L22C6   LDA L2474,Y
        STA $93
L22CB   LDA LLNGTH
        CMP #$03
        BCS L22d4
        JMP L211E
L22D4   JSR L2352
        LDA #$00
        STA LLNGTH
        DEC MVLNG
        LDA MVLNG
        BEQ L22ee
        JSR L233D
        LDA #$77
        STA MVTA+1
        JSR L249D
        JMP L211E
L22EE   LDA #$01
        STA L26D5+2
        JSR L24CE
        JMP L2000
L22F9   LDA #$10
        LDX #$00
L22FD   STA $0fdf,X
        INX
        CPX #$06
        BEQ L2308
        JMP L22FD
L2308   RTS
L2309   LDA $0fe0
        STA SVESA
L230E   LDX #$04
L2310   LDA $0fdf,X
        CMP #$19
        BNE L2320
        LDA #$10
        STA $0fdf,X
        DEX
        JMP L2310
L2320   INC $0fdf,X
        DEY
        BNE L230e
        LDA SVESA
        CMP $0fe0
        BEQ L233c
        LDA MVLNG
        CMP #$05
        BEQ L233c
        INC MVLNG
        JSR L233D
        LDA #$c0
        STA CPC
L233C   RTS
L233D   LDX #$05
        LDA #$00
L2341   STA $0ff5,X
        DEX
        BPL L2341
        LDX MVLNG
        LDA #$41
L234B   STA $0ff5,X
        DEX
        BNE L234b
        RTS
L2352   LDA #$a8
        STA CPC
        JSR L24B7
        LDA #$08
        LDY #$01
        LDX #$12
        JSR L2CC2
        LDA #$0a
        LDY #$01
        LDX #$14
        JSR L2CC2
        LDA #$14
        JSR L249D
        LDA #$9f
        STA SVESA
        LDA #$cf
        STA STMCUR+1
        LDX #$27
        LDY #$00
L237C   JSR L2488
        LDA L26DD+2,Y
        STA $1eb0,X
        DEC STMCUR+1
        LDA STMCUR+1
        STA M2PF
        LDA MVTA+1
        SEC
        SBC #$2a
        DEC SVESA
        CMP SVESA
        BCS L23a2
        INY
        CPY #$04
        BCC L237c
        LDY #$00
        DEX
        JMP L237C
L23A2   INC STMCUR+1
L23A4   LDA $1eb0,X
        BEQ L23c0
        LSR A
        LSR A
        STA $1eb0,X
        JSR L2488
        INC STMCUR+1
        LDA STMCUR+1
        STA M2PF
        SEC
        SBC #$06
        STA MVTA+1
        JMP L23A4
L23C0   INX
        CPX #$29
        BCC L23a4
        LDA MVTA+1
        STA POKADR+1
L23C9   LDA POKADR+1
        STA MVTA+1
        CMP #$f5
        BCS L23df
        CLC
        ADC #$06
        STA M2PF
        INC POKADR+1
        JSR L2488
        JMP L23C9
L23DF   RTS
L23E0   LDA #$00
        STA LOMEM
        LDA #$04
        STA LOMEM+1
        LDX #$05
        JMP L2DA5
L23ED   LDA L2DB3,X
        STA $04d2,X
        LDA L2DBF+3,X
        STA $05cd,X
        LDA L2DCF+2,X
        STA $06d7,X
        INX
        CPX #$0f
        BNE L23ed
L2404   LDX #$07
L2406   LDA L241D,X
        STA PCOLR0,X
        DEX
        BPL L2406
        RTS
L2410   LDA #$00
        STA LOMEM
        LDA #$10
        STA LOMEM+1
        LDX #$0f
        JMP L2DA5
L241D   .byte $3a, $48, $0f, $00
        .byte $28, $0e, $00
L2424   LDA #$35
        STA SDLSTL
        LDA #$29
        STA SDLSTH
        LDA #$9f
        STA VDSLST
        LDA #$29
        STA VDSLST+1
        LDA #$01
        JSR L249D
        LDA #$c0
        STA NMIEN
        RTS
L2443   LDX #$00
L2445   LDA $e000,X
        STA $3000,X
        LDA $e100,X
        STA $3100,X
        LDA $e200,X
        STA $3200,X
        INX
        BNE L2445
L245A   LDA L2A21+2,X
        STA $3200,X
        INX
        CPX #$a1
        BNE L245a
L2465   LDY #$00
        LDX #$20
L2469   INY
        CPY $93
        BNE L2469
        LDY #$00
        DEX
        BNE L2469
        RTS
L2474   .byte $00, $c8, $96, $78
        .byte $64, $50, $46, $41
        .byte $3c, $37, $32, $2d
        .byte $28, $23, $1e, $19
        .byte $16, $12, $0d, $0a
L2488   TYA
        PHA
        LDA #$00
        TAY
L248D   CLC
        ADC #$01
        CMP #$16
        BEQ L249a
L2494   INY
        BNE L2494
        JMP L248D
L249A   PLA
        TAY
        RTS
L249D   STA COX
        LDA #$00
        STA RTCLOK+2
L24A3   LDA RTCLOK+2
        CMP COX
        BNE L24a3
        RTS
L24AA   STA SVESA+1
        LDA RANDOM
        AND SVESA+1
        STY SVESA+1
        CLC
        ADC SVESA+1
        RTS
L24B7   LDA #$0f
        STA TSLNUM+1
        JSR L2C7D
        LDA #$00
        TAX
L24C1   STA $0600,X
        INX
        CPX #$0c
        BCC L24c1
        LDA #$02
        STA TSLNUM+1
        RTS
L24CE   LDA #$40
        STA NMIEN
        JSR L23E0
        LDA #$00
        STA LOMEM
        LDA #$10
        STA LOMEM+1
        LDX #$05
        JSR L2DA5
        LDX #$30
        LDA #$7e
L24E7   STA $069e,X
        DEX
        BPL L24e7
        LDX #$00
L24EF   LDA L2AB9+3,X
        STA $3000,X
        INX
        CPX #$30
        BNE L24ef
        LDX #$00
L24FC   LDA L2AE9+3,X
        STA $3100,X
        INX
        CPX #$98
        BNE L24fc
        LDA #$01
        STA GPRIOR
        LDA #$03
        STA M2PL
        LDA #$e4
        STA PCOLR2
        LDA #$88
        STA COLOR1
        LDA L26D5+2
        BNE L2531
        LDA #$0d
        LDY #$01
        JSR L24AA
        ASL A
        ASL A
        ASL A
        ASL A
        CLC
        ADC #$0e
        STA COLOR2
L2531   LDA #$14
        STA SDLSTL
        LDA #$29
        STA SDLSTH
        LDA #$13
        STA VDSLST
        LDA #$2a
        STA VDSLST+1
        LDA #$c0
        STA NMIEN
        LDA #$00
        STA COX
        LDA #$10
        STA POKADR
        INC POKADR
        CLC
        LDA COX
        ADC #$5d
        STA COX
        BCC L255f
        INC POKADR
L255F   LDA L26D5+2
        BNE L2577
L2564   LDA RANDOM
        CMP #$06
        BCS L2564
        TAX
        LDA L26D5+3,X
        STA L26D5+1
        LDA #$25
        JMP L2581
L2577   LDA #$00
        STA L26D5+1
        STA COLOR2
        LDA #$29
L2581   STA L26DD+1
        LDX #$00
L2586   LDY #$00
        LDA L2675+2,X
        STA (COX),Y
        INX
        INY
        LDA L2675+2,X
        STA (COX),Y
        CLC
        LDA COX
        ADC #$14
        STA COX
        BCC L259f
        INC POKADR
L259F   INX
        CPX #$0a
        BNE L2586
        LDX #$00
L25A6   LDA #$01
        STA $115c,X
        LDA #$02
        STA $115f,X
        CLC
        TXA
        ADC #$14
        TAX
        CPX #$64
        BNE L25a6
        LDA #$03
        STA $1149
        STA $114a
        LDA #$04
        STA $1148
        LDA #$05
        STA $114b
        LDA #$70
        STA M2PF
        JSR L249D
        LDA #$64
        STA POT1
        STA POT3
        LDA #$18
        STA POT0
        LDA #$19
        STA POT2
        LDA #$71
        STA POKADR+1
L25E9   JSR L2488
        LDA POKADR+1
        STA M2PF
        CMP #$87
        BEQ L2600
        JSR L2488
        INC POKADR+1
        JSR L2488
        JMP L25E9
L2600   LDA #$00
        STA POT1
        STA POT3
        LDA #$1e
        JSR L249D
        LDA L26D5+2
        BNE L2616
        LDA #$8a
        BNE L2618
L2616   LDA #$99
L2618   STA CPC
        LDY L26DD+1
        STY $115d
        INY
        STY $115e
        INY
        STY $1171
        INY
        STY $1172
        LDX L26D5+1
        LDY #$00
L2631   LDA L2681+2,X
        STA $11d0,Y
        CMP #$81
        BEQ L2640
        INX
        INY
        JMP L2631
L2640   LDA #$ff
        JSR L249D
        LDA #$00
        STA SDMCTL
        LDA #$01
        JSR L249D
        LDA #$00
        STA M2PF
        STA M2PL
        STA L26D5+2
        LDA #$40
        STA NMIEN
        JSR L23E0
        JSR L23ED
        JSR L2443
        JSR L2404
	JSR HISCORE
        RTS
L2675   .byte $00, $00, $21, $22
        .byte $23, $24, $6d, $6e
        .byte $6f, $70, $71, $72
L2681   .byte $01, $01, $b9, $af
        .byte $b5, $87, $b2, $a5
        .byte $80, $a6, $a9, $b2
        .byte $a5, $a4, $81, $80
        .byte $a7, $b2, $a5, $a1
        .byte $b4, $80, $aa, $af
        .byte $a2, $81, $80, $80
        .byte $b7, $a1, $b9, $80
        .byte $b4, $af, $80, $a7
        .byte $af, $81, $80, $80
        .byte $80, $b7, $af, $b7
        .byte $a5, $a5, $81, $80
        .byte $80, $a6, $a1, $ae
        .byte $b4, $a1, $b3, $b4
        .byte $a9, $a3, $81, $ac
        .byte $a9, $ab, $a5, $8c
        .byte $80, $a1, $b7, $a5
        .byte $b3, $af, $ad, $a5
        .byte $81, $80, $80, $a7
        .byte $af, $af, $a4, $80
        .byte $b7, $af, $b2, $ab
L26D5   .byte $81, $00, $00, $0d
        .byte $19, $24, $2e, $39
L26DD   .byte $47, $00, $01, $05
        .byte $15, $55, $79, $04
        .byte $60, $04, $a2, $04
        .byte $90, $02, $80, $02
        .byte $79, $04, $60, $04
        .byte $a2, $04, $90, $02
        .byte $80, $02, $79, $04
        .byte $60, $04, $79, $04
        .byte $60, $04, $6c, $04
        .byte $80, $04, $a2, $04
        .byte $90, $02, $80, $02
        .byte $79, $04, $60, $04
        .byte $a2, $04, $90, $02
        .byte $80, $02, $79, $04
        .byte $60, $04, $a2, $04
        .byte $90, $02, $80, $02
        .byte $79, $04, $60, $04
        .byte $6c, $04, $60, $04
        .byte $79, $08, $a2, $04
        .byte $80, $04, $d9, $04
        .byte $c1, $02, $ad, $02
        .byte $a2, $04, $80, $04
        .byte $d9, $04, $c1, $02
        .byte $ad, $02, $a2, $04
        .byte $80, $04, $a2, $04
        .byte $80, $04, $90, $04
        .byte $ad, $04, $d9, $04
        .byte $c1, $02, $ad, $02
        .byte $a2, $04, $80, $04
        .byte $d9, $04, $c1, $02
        .byte $ad, $02, $a2, $04
        .byte $80, $04, $d9, $04
        .byte $c1, $02, $ad, $02
        .byte $a2, $04, $80, $04
        .byte $90, $04, $80, $04
        .byte $a2, $08, $00, $00
        .byte $3c, $02, $35, $02
        .byte $2f, $04, $3c, $04
        .byte $35, $04, $40, $04
        .byte $3c, $08, $00, $51
        .byte $02, $51, $06, $51
        .byte $08, $6c, $04, $60
        .byte $06, $79, $10, $f3
        .byte $10, $00, $f3, $08
        .byte $d9, $04, $cc, $0c
        .byte $d9, $0c, $f3, $02
        .byte $ff, $02, $f3, $02
        .byte $ff, $02, $f3, $08
        .byte $d9, $04, $f3, $08
        .byte $00, $00, $21, $02
        .byte $25, $02, $21, $02
        .byte $25, $02, $00, $00
L27AD   .byte $00, $00, $41, $41
        .byte $41, $41, $00, $41
        .byte $41, $41, $41, $00
        .byte $41, $41, $41, $41
        .byte $00, $41, $41, $41
        .byte $41, $00, $41, $41
        .byte $41, $41, $00, $41
        .byte $41, $41, $41, $00
        .byte $41, $00, $00, $41
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $41, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $00, $41
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $41, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $00, $41
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $41, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $00, $41
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $41, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $00, $41
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $41
        .byte $41, $41, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $41, $41, $41
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $41, $00, $41
        .byte $41, $41, $00, $00
        .byte $41, $41, $00, $41
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $00, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $00, $00
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $41, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $41, $41
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $00, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $00, $00
        .byte $00, $41, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $41, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $00, $41
        .byte $00, $00, $00, $00
        .byte $00, $00, $41, $00
        .byte $00, $00, $00, $41
        .byte $41, $41, $41, $00
        .byte $41, $00, $00, $00
L28AD   .byte $00, $41, $41, $41
        .byte $41, $00, $41, $41
        .byte $41, $41, $00, $41
        .byte $00, $00, $41, $00
        .byte $41, $00, $00, $41
        .byte $00, $41, $00, $00
L28C5   .byte $22, $79, $00, $2d
        .byte $61, $72, $6b, $00
        .byte $61, $6e, $64, $00
        .byte $23, $61, $74, $68
        .byte $79, $00, $33, $6c
        .byte $6f, $61, $74, $6d
L28DD   .byte $61, $6e, $00, $33
        .byte $23, $2f, $32, $25
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $2c, $25, $36
        .byte $25, $2c, $70, $70
        .byte $42, $00, $10, $02
        .byte $02, $02, $02, $02
        .byte $02, $02, $02, $02
        .byte $02, $02, $02, $82
        .byte $02, $02, $02, $02
        .byte $02, $02, $02, $02
        .byte $41, $f7, $28, $70
        .byte $70, $70, $46, $00
        .byte $10, $06, $06, $06
        .byte $06, $06, $06, $06
        .byte $06, $06, $06, $06
        .byte $06, $06, $06, $06
        .byte $06, $06, $06, $06
        .byte $06, $86, $06, $06
        .byte $70, $41, $14, $29
        .byte $70, $70, $c2, $d6
        .byte $0f, $4d, $00, $10
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $0d, $0d
        .byte $0d, $0d, $8d, $0d
        .byte $0d, $0d, $0d, $8d
        .byte $0d, $0d, $8d, $41
        .byte $35, $29, $48, $a9
        .byte $da, $8d, $0a, $d4
        .byte $8d, $18, $d0, $a9
        .byte $b4, $8d, $00, $02
        .byte $a9, $29, $8d, $01
        .byte $02, $68, $40, $48
        .byte $a9, $e4, $8d, $0a
        .byte $d4, $8d, $13, $d0
        .byte $ad, $c2, $02, $8d
        .byte $16, $d0, $a9, $cf
        .byte $8d, $00, $02, $a9
        .byte $29, $8d, $01, $02
        .byte $68, $40, $48, $a9
        .byte $0a, $8d, $0a, $d4
        .byte $8d, $12, $d0, $a9
        .byte $04, $8d, $1b, $d0
        .byte $a9, $e9, $8d, $00
        .byte $02, $a9, $29, $8d
        .byte $01, $02, $68, $40
        .byte $48, $a9, $c8, $8d
        .byte $0a, $d4, $8d, $1a
        .byte $d0, $a9, $9f, $8d
        .byte $00, $02, $a9, $29
        .byte $8d, $01, $02, $68
        .byte $40, $48, $a9, $e0
        .byte $8d, $0a, $d4, $8d
        .byte $09, $d4, $a9, $0a
        .byte $8d, $17, $d0, $a9
        .byte $00, $8d, $18, $d0
        .byte $68, $40, $48, $a9
        .byte $e0, $8d, $0a, $d4
        .byte $8d, $09, $d4, $a9
        .byte $08, $8d, $1a, $d0
L2A21   .byte $68, $40, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $60, $f6
        .byte $ff, $7f, $3e, $78
        .byte $78, $00, $00, $00
        .byte $00, $38, $ef, $ef
        .byte $2a, $0a, $2e, $2f
        .byte $0a, $00, $00, $28
        .byte $ae, $fa, $e8, $c0
        .byte $80, $00, $00, $00
        .byte $aa, $aa, $aa, $aa
        .byte $aa, $55, $00, $00
        .byte $00, $aa, $28, $28
        .byte $00, $aa, $55, $00
        .byte $00, $00, $aa, $aa
        .byte $aa, $aa, $aa, $55
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $55, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $28, $55
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $55, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $55, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $28, $55, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $55, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
L2AB9   .byte $00, $00, $00, $00
        .byte $f7, $f7, $f7, $00
        .byte $7f, $7f, $7f, $38
        .byte $f8, $f8, $f8, $38
        .byte $78, $78, $78, $1c
        .byte $1f, $1f, $1f, $1c
        .byte $1f, $1f, $1f, $ff
        .byte $ff, $00, $00, $00
        .byte $00, $00, $00, $7f
        .byte $ff, $fc, $fc, $78
        .byte $78, $78, $78, $fe
        .byte $ff, $3f, $3f, $1f
L2AE9   .byte $1f, $1f, $1f, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $07, $0f, $19, $3f
        .byte $3d, $7d, $7f, $00
        .byte $e0, $f0, $98, $fc
        .byte $bc, $be, $fe, $3f
        .byte $3c, $1f, $0f, $07
        .byte $03, $03, $00, $fc
        .byte $3c, $f8, $f0, $e0
        .byte $c0, $c0, $00, $00
        .byte $07, $0d, $1b, $37
        .byte $3d, $7d, $7f, $00
        .byte $e0, $b0, $d8, $ec
        .byte $bc, $be, $fe, $3b
        .byte $3c, $1f, $0f, $07
        .byte $03, $03, $00, $dc
        .byte $3c, $f8, $f0, $e0
        .byte $c0, $c0, $00, $00
        .byte $07, $0f, $1b, $3d
        .byte $3e, $7d, $7d, $00
        .byte $e0, $f0, $d8, $bc
        .byte $7c, $be, $be, $3f
        .byte $3c, $1b, $0f, $07
        .byte $03, $03, $00, $fc
        .byte $3c, $d8, $f0, $e0
        .byte $c0, $c0, $00, $3f
        .byte $7f, $7f, $6f, $6f
        .byte $6f, $6f, $6f, $fc
        .byte $fe, $fe, $f6, $f6
        .byte $f6, $f6, $f6, $60
        .byte $6f, $0f, $6e, $6e
        .byte $0e, $0e, $0e, $06
        .byte $f6, $f0, $76, $76
        .byte $70, $70, $70, $0e
        .byte $0e, $0e, $0e, $0e
        .byte $0e, $1e, $3e, $70
        .byte $70, $70, $70, $70
        .byte $70, $78, $7c, $8e
        .byte $09, $8a, $0d, $86
        .byte $11, $82, $15, $d8
        .byte $a5, $8f, $f0, $05
        .byte $c6, $8f, $4c, $c6
        .byte $2b, $a5, $90, $49
        .byte $01, $85, $90, $d0
        .byte $1b, $a6, $9d, $bd
        .byte $e3, $26, $f0, $21
        .byte $8d, $04, $d2, $a9
        .byte $aa, $8d, $05, $d2
        .byte $e8, $bd, $e3, $26
        .byte $85, $8f, $e8, $86
        .byte $9d, $4c, $c6, $2b
        .byte $a9, $00, $8d, $05
        .byte $d2, $a6, $9d, $ca
        .byte $bd, $e3, $26, $85
        .byte $8f, $ad, $78, $02
        .byte $c9, $07, $f0, $19
        .byte $c9, $0b, $d0, $2b
        .byte $a5, $9c, $c9, $32
        .byte $90, $21, $a4, $9a
        .byte $c0, $05, $90, $02
        .byte $c6, $9c, $c6, $9c
        .byte $c6, $9c, $4c, $f8
        .byte $2b, $a5, $9c, $c9
        .byte $c3, $b0, $0c, $a4
        .byte $9a, $c0, $05, $90
        .byte $02, $e6, $9c, $e6
        .byte $9c, $e6, $9c, $a9
        .byte $00, $85, $4d, $a5
        .byte $9c, $8d, $01, $d0
        .byte $18, $69, $05, $8d
        .byte $00, $d0, $a5, $84
        .byte $f0, $2b, $e6, $8e
        .byte $a5, $8e, $c9, $02
        .byte $d0, $23, $a6, $8d
        .byte $bd, $84, $2b, $8d
        .byte $03, $d2, $e8, $bd
        .byte $84, $2b, $8d, $02
        .byte $d2, $a9, $00, $85
        .byte $8e, $e8, $86, $8d
        .byte $e0, $08, $d0, $09
        .byte $a9, $00, $8d, $03
        .byte $d2, $85, $8d, $85
        .byte $84, $a5, $82, $f0
        .byte $37, $e6, $85, $a5
        .byte $85, $c9, $01, $d0
        .byte $2f, $a5, $83, $d0
        .byte $04, $a9, $f0, $85
        .byte $8c, $a9, $aa, $8d
        .byte $01, $d2, $a5, $8c
        .byte $8d, $00, $d2, $f0
        .byte $0f, $38, $e9, $28
        .byte $85, $8c, $a9, $00
        .byte $85, $85, $a9, $01
        .byte $85, $83, $d0, $0c
        .byte $a9, $f0, $85, $8c
        .byte $a9, $00, $85, $82
        .byte $85, $83, $85, $85
        .byte $4c, $62, $e4
L2C74   LDA #$07
        LDX #$2b
        LDY #$8c
        JMP SETVBV
L2C7D   LDA #$00
        STA MEOLFLG
L2C81   LDX MEOLFLG
        LDA $0600,X
        BNE L2c91
        INX
        INX
        STX MEOLFLG
        CPX #$0c
        BCC L2c81
        RTS
L2C91   LDA $0600,X
        STA VVTP
        INX
        LDA $0600,X
        STA CPC+1
        CMP #$61
        BCC L2cae
        DEX
        LDA #$00
        STA $0600,X
        INX
        STA $0600,X
        INC LLNGTH
        BNE L2cb1
L2CAE   INC $0600,X
L2CB1   INX
        STX MEOLFLG
        LDA TSLNUM+1
        STA VVTP+1
        JSR L2CC8
        LDX MEOLFLG
        CPX #$0c
        BCC L2c81
        RTS
L2CC2   STA VVTP+1
        STY CPC+1
        STX VVTP
L2CC8   LDA #$01
        STA STMCUR
        LDA #$32
        STA STINDEX
L2CD0   LDA STMCUR
        BNE L2cd8
        INC VVTP
        INC VVTP+1
L2CD8   LDA #$00
        STA STMTAB+1
        STA TSLNUM
        STA DIRFLG
        STA POKADR
        LDA CPC+1
        ASL A
        ROL POKADR
        ASL A
        ROL POKADR
        ASL A
        ROL POKADR
        LDX POKADR
        STX DIRFLG
        STA ECSIZE+1
        ASL A
        ROL POKADR
        ASL A
        ROL POKADR
        CLC
        ADC ECSIZE+1
        STA ECSIZE+1
        LDA POKADR
        ADC DIRFLG
        STA DIRFLG
        LDA ECSIZE+1
        CLC
        ADC VVTP
        STA ECSIZE+1
        BCC L2d0f
        INC DIRFLG
L2D0F   CLC
        LDA ECSIZE+1
        ADC #$00
        STA ECSIZE+1
        LDA #$10
        ADC DIRFLG
        STA DIRFLG
        LDA #$00
        STA POKADR
        LDA VVTP+1
        ASL A
        ASL A
        ROL STMTAB+1
        ASL A
        ROL STMTAB+1
        CLC
        ADC VVTP+1
        STA STMLBD
        LDA STMTAB+1
        ADC STINDEX
        STA STINDEX
L2D34   LDY TSLNUM
        LDA (STMLBD),Y
        LDY #$00
        STA (ECSIZE+1),Y
        LDA ECSIZE+1
        CLC
        ADC #$28
        STA ECSIZE+1
        BCC L2d4d
        INC DIRFLG
        LDA DIRFLG
        CMP #$20
        BCS L2d55
L2D4D   INC TSLNUM
        LDA TSLNUM
        CMP #$09
        BNE L2d34
L2D55   DEC STMCUR
        BMI L2d5c
        JMP L2CD0
L2D5C   RTS
L2D5D   LDA MVTA+1
        SEC
        SBC #$24
        LSR A
        LSR A
        SEC
        SBC #$04
        STA MEMTOP+1
        LDY #$00
        LDX #$00
L2D6D   LDA $0600,X
        BEQ L2d76
        CMP MEMTOP+1
        BEQ L2d86
L2D76   INX
        INX
        CPX #$0c
        BNE L2d6d
        INC MEMTOP+1
        INY
        LDX #$00
        CPY #$06
        BNE L2d6d
        RTS
L2D86   INX
        LDA $0600,X
        DEX
        CMP #$4e
        BCC L2d76
        STA CPC+1
        LDA $0600,X
        STA VVTP
        LDA #$0f
        STA VVTP+1
        LDA #$00
        STA $0600,X
        STA $0601,X
        JMP L2CC8
L2DA5   LDY #$00
        TYA
L2DA8   STA (LOMEM),Y
        INY
        BNE L2da8
        INC LOMEM+1
        DEX
        BNE L2da8
        RTS
L2DB3   .byte $20, $70, $f0, $f2
        .byte $f2, $fe, $7e, $3e
        .byte $0f, $0f, $0f, $0f
L2DBF   .byte $0f, $0f, $0f, $ff
        .byte $ff, $ff, $7e, $7e
        .byte $7e, $7e, $7e, $7e
        .byte $7e, $00, $00, $00
L2DCF   .byte $00, $00, $00, $78
        .byte $f8, $80, $80, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00
        .byte $00, $00, $00, $00

	*=$3400

hiscore_screen:	
	.incbin "score-screen.bin"

	*=$3600

hiscore_dlist:	
	.incbin "score-dlist.bin"

	.include "hiscore.s"
