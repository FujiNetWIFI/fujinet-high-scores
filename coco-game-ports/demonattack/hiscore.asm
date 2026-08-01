; hiscore.asm -- FujiNet high-score module for Demon Attack (CoCo, Tandy 1984).
;
; Runs at $8000, copied there at runtime by hiscore-stage0.asm, with the
; DSKCON trampoline installed separately at $4100 and the sector buffer at
; $4200 (both always-RAM, below the $8000 ROM boundary).
;
; Four hooks, all patched in by patch-demonattack.py:
;   $C0DA  Hook         reset/title path. One-shot relocation, and clears
;                       ShowPrompt on later resets (a game is starting).
;   $C224  FreezeHook   top of the main loop. While an overlay is up it
;                       returns into the loop tail at $C2FA, skipping the
;                       frame's game logic so the screen holds still.
;   $C302  PromptHook   last instruction before SYNC, so it draws after the
;                       game has painted. Owns the prompt and the overlays.
;   $CA2C  GameOverHook the tail of the game's own game-over test, reached
;                       only when every active player is out of lives.
;
; Score storage ($000B-$000D, player 1, 3 bytes packed BCD, LSB first) was
; confirmed via the disassembly's one unambiguous DAA at $4A80. $000E-$0010
; is player 2 (selected by $0009) and is not handled here.
;
; Game-over detection uses $CA2C because the score is still live there: it
; isn't cleared until the $C080 reset runs, and that only happens when the
; NEXT game starts. Capturing on the score-reset edge instead would lose a
; player's last round unless they played again.
;
; The zero page is shielded around every DSKCON call: Demon Attack reuses the
; DCOPC..DCSTA block for its own state (an animation counter lives at <EA), so
; the whole $00-$FF page is saved and restored, not just the DSKCON bytes.
;
; SafeDSKCON follows Downland's proven shape -- workspace shield, NMI and IRQ
; vectors saved/installed/restored around the call -- and additionally clears
; SAM R1 ($FFD8) afterwards. HDB-DOS sets $FFD9 (1.78MHz) on a CoCo 3 for
; every DriveWire transfer and never restores it; the game clears both speed
; bits at $C021/$C024 but only once, during startup.
;
; The dummy read before each real read must land far from the score sector and
; must not be LSN 0 -- see ReadSector.

; DECB DSKCON interface
DCOPC   equ $00EA          ; 2=read, 3=write
DCDRV   equ $00EB
DCTRK   equ $00EC
DCSEC   equ $00ED
DCBPT   equ $00EE
DCSTA   equ $00F0          ; 0 = success
HDFLAG  equ $014E          ; 0 => all drives route to DriveWire
HDIDNUM equ $0151          ; HDB-DOS "DRIVE #n" slot selector (not DCDRV)

STRACK  equ 34
SSECTOR equ 18
DTRACK  equ 17             ; cache-bust read, LSN 306 -- see ReadSector
DSECTOR equ 1
WSLEN   equ 64             ; floppy-driver workspace to shield ($0950-$098F)
SBUF    equ $4200

; Demon Attack
SCREEN  equ $1000          ; let the assembler do the row/col arithmetic
PROMPTPOS equ SCREEN+145*32+9
HDRPOS  equ SCREEN+28*32+10
ROW0POS equ SCREEN+44*32+6
TROWSTEP equ 192           ; 6 scanlines between table rows
PLRPOS  equ SCREEN+30*32+12
NHSPOS  equ SCREEN+40*32+9
SCPOS   equ SCREEN+56*32+12
NMPOS   equ SCREEN+72*32+8
FLDPOS  equ SCREEN+72*32+14
NAMELEN equ 8
SETTLE  equ 90             ; frames to let the death flash finish
DOTGLYPH equ 37           ; placeholder shown in each empty name slot
SAVETOP equ SCREEN         ; rows 0-151: everything above the ground, so no
SAVELEN equ 4864           ; fragment of the title shows through the table
SAVEBUF equ $8A00          ; above the module; the patcher asserts this
SCORE   equ $000B          ; player 1 score, 3 bytes packed BCD, LSB first
SCORE2  equ $000E          ; player 2; the game's own draw does LEAY $03,Y

; sector format: "DAHS" + version(1) + reserved, then 10 x 16-byte
; entries [8 name][7 score digits][1 pad], score stored as plain ASCII
NENTRY  equ 10
ENTLEN  equ 16
ENTRIES equ SBUF+16

        org $8000
Hook:
        lda     Init            ; one-shot: copy the 8-byte relay block Stage0
        bne     notfirst        ; captured at EXEC time (DriveNum, SlotNum,
        inc     Init            ; NmiVec, DiskIrq -- contiguous), before its
        ldx     #$EEEE          ; memory becomes unsafe to read. Placeholder
        ldu     #MyDriveNum     ; patched to Stage0's DriveNum (base of the
        ldb     #8              ; whole relay block) by patch-demonattack.py
initcp: lda     ,x+
        sta     ,u+
        decb
        bne     initcp
        bra     hookdone        ; first call is the boot title: keep the prompt

notfirst:
        clr     ShowPrompt      ; any later reset here means a game is starting

hookdone:
        jsr     $CA8B           ; displaced original call
        rts

;--------------------------------------------------------------
; GameOverHook: patched over `LDA <04 / STA <08` at run $CA2C.
;
; Reached only once every active player is out of lives ($11/$12 are the
; per-player life counters). The score at $000B is still live here; it is
; cleared by the $C080 reset at the next game start.
;--------------------------------------------------------------
GameOverHook:
        ldx     #SCORE          ; both scores are still live here
        ldu     #Score1
        ldb     #3
gohc1:  lda     ,x+
        sta     ,u+
        decb
        bne     gohc1
        ldx     #SCORE2
        ldu     #Score2
        ldb     #3
gohc2:  lda     ,x+
        sta     ,u+
        decb
        bne     gohc2

        clr     PendMask
        lda     Score1
        ora     Score1+1
        ora     Score1+2
        beq     goh2
        lda     #1
        sta     PendMask
goh2:   lda     >$0004          ; bit 0 set = one player, so no player 2
        anda    #$01
        bne     gohno
        lda     Score2
        ora     Score2+1
        ora     Score2+2
        beq     gohno
        lda     PendMask
        ora     #2
        sta     PendMask

gohno:
        lda     #SETTLE
        sta     SettleDelay
        lda     #1
        sta     ShowPrompt

        lda     >$0004          ; displaced originals: LDA <04 / STA <08
        sta     >$0008
        rts

;--------------------------------------------------------------
; PromptHook: patched over `STA $FF03` at run $C302, the last instruction
; before SYNC, so it draws after the game has painted. Gating uses our own
; ShowPrompt, not $0008 -- that reads zero both during play and on the boot
; title screen.
;--------------------------------------------------------------
PromptHook:
        sta     $FF03           ; displaced original
        pshs    cc,d,x,y,u
        lda     ShowPrompt
        beq     phdone
        lda     TableOn
        bne     phdone          ; frozen: FreezeHook owns the screen
        lda     NameOn
        bne     phdone
        lda     SettleDelay     ; still settling after a game: no overlay,
        beq     phready         ; and ignore H, or we freeze a flash frame
        dec     SettleDelay
        bra     phdone

phready: lda    PendMask
        beq     phnorm
        lbsr    NextName
        bra     phdone

phnorm: ldu     #PromptMsg
        ldx     #PROMPTPOS
        lbsr    DrawStr
        lbsr    KGet
        cmpa    #8              ; H
        bne     phdone
        lbsr    TableEnter
phdone: puls    cc,d,x,y,u
        rts

;--------------------------------------------------------------
; DrawStr: U -> glyph indices ($FF terminated), X -> screen address.
; One byte per character cell, five rows, 32-byte row stride.
;--------------------------------------------------------------
DrawStr:
dsloop: lda     ,u+
        cmpa    #$FF
        beq     dsdone
        ldb     #5
        mul
        addd    #FONTBASE
        tfr     d,y
        pshs    x
        ldb     #5
dsrow:  lda     ,y+
        sta     ,x
        leax    32,x
        decb
        bne     dsrow
        puls    x
        leax    1,x
        bra     dsloop
dsdone: rts

;--------------------------------------------------------------
; DrawGlyph: A = glyph index, X = screen address. Advances X one cell.
;--------------------------------------------------------------
DrawGlyph:
        pshs    d,y,x
        ldb     #5
        mul
        addd    #FONTBASE
        tfr     d,y
        ldb     #5
dgrow:  lda     ,y+
        sta     ,x
        leax    32,x
        decb
        bne     dgrow
        puls    d,y,x
        leax    1,x
        rts

;--------------------------------------------------------------
; AscGlyph: A = ASCII -> A = glyph index (anything unmapped is a space).
;--------------------------------------------------------------
AscGlyph:
        cmpa    #'0'
        blo     agsp
        cmpa    #'9'
        bhi     agalp
        suba    #'0'
        adda    #27
        rts
agalp:  cmpa    #'A'
        blo     agsp
        cmpa    #'Z'
        bhi     agsp
        suba    #'A'
        inca
        rts
agsp:   clra
        rts

;--------------------------------------------------------------
; HPressed: Z=0 when H is held. H is row 1, column 0. Joystick buttons
; ghost into every column, so they are masked out first.
;--------------------------------------------------------------
HPressed:
        lda     #$FF
        sta     $FF02
        lda     $FF00
        coma
        anda    #$7F
        coma
        sta     KMask
        lda     #$FE
        sta     $FF02
        lda     $FF00
        coma
        anda    #$7F
        anda    KMask
        anda    #$02
        rts

; KAny: Z=0 if any key is down, joystick ghosting masked out.
KAny:
        lda     #$FF
        sta     $FF02
        lda     $FF00
        coma
        anda    #$7F
        coma
        sta     KMask
        clr     $FF02
        lda     $FF00
        coma
        anda    #$7F
        anda    KMask
        rts
;--------------------------------------------------------------
; BtnMerge: patched over `LDA $FF00` at run $D184 (title start) and
; $D1F5 (fire). Returns the port with BOTH joystick button bits forced
; low when either one is down, so the game's existing active-low masks
; accept either stick without changing its own tests.
;--------------------------------------------------------------
BtnMerge:
        lda     $FF00
        ldb     >$0004          ; two-player game? then each player keeps
        andb    #$01            ; their own button ($04 bit 0 set = 1 player)
        beq     bmret
        pshs    a
        anda    #$03
        cmpa    #$03
        beq     bmout           ; neither button down
        lda     ,s
        anda    #$FC
        sta     ,s
bmout:  puls    a
bmret:  rts

;--------------------------------------------------------------
; ReadAxis: the game's own two-threshold X read of whichever stick
; SEL2 currently selects. Returns $F0 left, $00 centre, $10 right.
;--------------------------------------------------------------
ReadAxis:
        lda     #$F0
        sta     JoyTmp2
        lda     #$54
        sta     $FF20
        lda     $FF00
        bpl     radone
        clr     JoyTmp2
        lda     #$A8
        sta     $FF20
        lda     $FF00
        bpl     radone
        lda     #$10
        sta     JoyTmp2
radone: lda     JoyTmp2
        rts

;--------------------------------------------------------------
; JoyRead: patched over the single-stick read at run $D1D2. Samples
; both sticks and uses whichever is off centre, so either one steers.
;--------------------------------------------------------------
JoyRead:
        lda     >$0004          ; two-player game? then only the stick the
        anda    #$01            ; game selected for this player is read
        bne     jrboth
        lda     #$3C
        ldb     >$0009
        beq     jrsel
        lda     #$34
jrsel:  sta     $FF03
        lbsr    ReadAxis
        sta     >$001C
        rts

jrboth: lda     #$3C            ; SEL2=1 -> left stick X
        sta     $FF03
        lbsr    ReadAxis
        sta     JoyTmp
        lda     #$34            ; SEL2=0 -> right stick X
        sta     $FF03
        lbsr    ReadAxis
        bne     jrset           ; right is displaced: it wins
        lda     JoyTmp
jrset:  sta     >$001C
        rts

;--------------------------------------------------------------
; JoyBtn: Z=0 while either joystick button is down.
;--------------------------------------------------------------
JoyBtn:
        lda     #$FF
        sta     $FF02
        lda     $FF00
        coma
        anda    #$03
        rts

;--------------------------------------------------------------
; AnyInput: Z=0 if any key or either joystick button is down.
;--------------------------------------------------------------
AnyInput:
        lbsr    KAny
        bne     aidone
        lbsr    JoyBtn
aidone: rts

;--------------------------------------------------------------
; DoReadTable: ReadSector under the same zero-page shield DoCapture uses.
; Returns DCSTA in A.
;--------------------------------------------------------------
DoReadTable:
        pshs    cc,b,dp,x,y,u
        orcc    #$50
        clra
        tfr     a,dp
        ldx     #$0000
        ldu     #ZpBuf
        ldb     #0
rtsv:   lda     ,x+
        sta     ,u+
        decb
        bne     rtsv
        lbsr    ReadSector
        sta     TmpStat
        ldx     #ZpBuf
        ldu     #$0000
        ldb     #0
rtrs:   lda     ,x+
        sta     ,u+
        decb
        bne     rtrs
        puls    cc,b,dp,x,y,u
        lda     TmpStat
        rts

;--------------------------------------------------------------
; DrawTable: rank, name and score for all ten slots. Empty entries hold
; zero bytes, which AscGlyph renders as spaces.
;--------------------------------------------------------------
DrawTable:
        ldu     #MsgHdr
        ldx     #HDRPOS
        lbsr    DrawStr

        clr     TRow
        ldd     #ROW0POS
        std     TRowPtr
dtrow:  lda     TRow
        ldb     #ENTLEN
        mul
        addd    #ENTRIES
        std     TEntPtr
        ldx     TRowPtr

        lda     TRow
        cmpa    #9
        beq     dtten
        clra
        lbsr    DrawGlyph
        lda     TRow
        adda    #28
        lbsr    DrawGlyph
        bra     dtgap
dtten:  lda     #28
        lbsr    DrawGlyph
        lda     #27
        lbsr    DrawGlyph
dtgap:  clra
        lbsr    DrawGlyph

        ldu     TEntPtr
        ldb     #8
dtnm:   lda     ,u+
        lbsr    AscGlyph
        lbsr    DrawGlyph
        decb
        bne     dtnm

        clra
        lbsr    DrawGlyph

        ldb     #7
dtsc:   lda     ,u+
        bne     dtsc1
        lda     #'0'            ; empty slot prints as zeros
dtsc1:  lbsr    AscGlyph
        lbsr    DrawGlyph
        decb
        bne     dtsc

        ldd     TRowPtr
        addd    #TROWSTEP
        std     TRowPtr
        inc     TRow
        lda     TRow
        cmpa    #NENTRY
        blo     dtrow
        rts

;--------------------------------------------------------------
; Qualifies: reads the table and returns Z=0 when the just-finished
; score beats slot 10. An unreadable or foreign sector counts as empty,
; so the first score on a fresh disk always qualifies.
;--------------------------------------------------------------
Qualifies:
        pshs    b,x,y,u
        lbsr    UnpackScore
        lbsr    DoReadTable
        bne     qyes
        ldx     #SBUF
        ldu     #SigSrc
        ldb     #5
qck:    lda     ,x+
        cmpa    ,u+
        bne     qyes
        decb
        bne     qck

        ldu     #TmpScore       ; beat the lowest entry?
        ldy     #ENTRIES+(NENTRY-1)*ENTLEN+8
        ldb     #7
qdig:   lda     ,u+
        cmpa    ,y+
        bhi     qyes
        blo     qno
        decb
        bne     qdig
qno:    puls    b,x,y,u
        orcc    #$04            ; Z=1: does not make the table
        rts
qyes:   puls    b,x,y,u
        andcc   #$FB            ; Z=0: qualifies
        rts

;--------------------------------------------------------------
; NextName: start the next queued player's entry. Qualification is
; checked here, against a fresh read, so player 2 is judged against a
; table that already holds player 1's new entry.
;--------------------------------------------------------------
NextName:
        pshs    cc,d,x,y,u
        lda     PendMask
        bita    #1
        beq     nn2
        clr     CurPlayer
        ldx     #Score1
        bra     nnld
nn2:    lda     #1
        sta     CurPlayer
        ldx     #Score2
nnld:   ldu     #LastScore
        ldb     #3
nncp:   lda     ,x+
        sta     ,u+
        decb
        bne     nncp
        lbsr    Qualifies
        bne     nnok
        lbsr    ClearPend
        puls    cc,d,x,y,u
        rts
nnok:   lbsr    NameEnter
        puls    cc,d,x,y,u
        rts

;--------------------------------------------------------------
; ClearPend: drop the current player from the queue.
;--------------------------------------------------------------
ClearPend:
        lda     CurPlayer
        bne     cp2
        lda     PendMask
        anda    #$FE
        sta     PendMask
        rts
cp2:    lda     PendMask
        anda    #$FD
        sta     PendMask
        rts

;--------------------------------------------------------------
; NameEnter: stash the screen, draw the name-entry panel and switch the
; freeze on. The score is not written until ENTER is pressed.
;--------------------------------------------------------------
NameEnter:
        pshs    cc,d,x,y,u
        ldx     #SAVETOP
        ldu     #SAVEBUF
        ldy     #SAVELEN
nesv:   lda     ,x+
        sta     ,u+
        leay    -1,y
        bne     nesv

        lbsr    ClearPanel
        ldu     #MsgP1
        lda     CurPlayer
        beq     nep1
        ldu     #MsgP2
nep1:   ldx     #PLRPOS
        lbsr    DrawStr
        ldu     #MsgNHS
        ldx     #NHSPOS
        lbsr    DrawStr
        ldu     #MsgName
        ldx     #NMPOS
        lbsr    DrawStr

        ldu     #TmpScore       ; the qualifying score
        ldx     #SCPOS
        ldb     #7
nesc:   lda     ,u+
        lbsr    AscGlyph
        lbsr    DrawGlyph
        decb
        bne     nesc

        ldx     #NameBuf        ; show a dot per slot so the width is obvious
        ldb     #NAMELEN
        lda     #DOTGLYPH
neclr:  sta     ,x+
        decb
        bne     neclr
        clr     NamePos
        lda     #$FF
        sta     LastKey
        lda     #1
        sta     NameOn
        puls    cc,d,x,y,u
        rts

;--------------------------------------------------------------
; NameFrame: one frozen frame of name entry. Sampling once per frame is
; its own debounce, so only a change of keycode counts as a new press.
;--------------------------------------------------------------
NameFrame:
        pshs    cc,d,x,y,u
        lbsr    KGet
        cmpa    LastKey
        beq     nfdraw
        sta     LastKey
        cmpa    #$FF
        beq     nfdraw

        cmpa    #48             ; ENTER
        beq     nfent
        cmpa    #29             ; left arrow
        beq     nfbk
        cmpa    #31             ; space
        beq     nfsp
        cmpa    #1              ; A-Z share our glyph indices 1-26
        blo     nfdraw
        cmpa    #26
        bls     nfput1
        cmpa    #32             ; 0-9 are keycodes 32-41
        blo     nfdraw
        cmpa    #41
        bhi     nfdraw
        suba    #5              ; -> glyph 27-36
        bra     nfput1
nfsp:   clra
nfput1: ldb     NamePos
        cmpb    #NAMELEN
        bhs     nfdraw
        ldx     #NameBuf
        abx
        sta     ,x
        inc     NamePos
        bra     nfdraw

nfbk:   lda     NamePos
        beq     nfdraw
        dec     NamePos
        ldb     NamePos
        ldx     #NameBuf
        abx
        lda     #DOTGLYPH
        sta     ,x
        bra     nfdraw

nfent:  ldx     #NameBuf        ; need at least one letter or digit;
        ldb     #NAMELEN        ; spaces and untyped dots do not count
nfchk:  lda     ,x+
        beq     nfchkn
        cmpa    #36             ; glyph 1-26 = A-Z, 27-36 = 0-9
        bls     nfok
nfchkn: decb
        bne     nfchk
        bra     nfdraw
nfok:   lbsr    NameCommit
        bra     nfout

nfdraw: ldu     #NameBuf        ; repaint the field
        ldx     #FLDPOS
        ldb     #NAMELEN
nfd1:   lda     ,u+
        lbsr    DrawGlyph
        decb
        bne     nfd1
nfout:  puls    cc,d,x,y,u
        rts

;--------------------------------------------------------------
; NameCommit: glyph indices -> ASCII, then the usual read/merge/write.
; Restores the screen and releases the freeze.
;--------------------------------------------------------------
NameCommit:
        pshs    cc,d,x,y,u
        ldu     #NameBuf
        ldx     #NameAscii
        ldb     #NAMELEN
nc1:    lda     ,u+
        beq     ncsp
        cmpa    #DOTGLYPH       ; untyped slot
        beq     ncsp
        cmpa    #26
        bhi     ncdig
        adda    #64             ; glyph 1-26 -> 'A'-'Z'
        bra     ncst
ncdig:  adda    #21             ; glyph 27-36 -> '0'-'9'
        bra     ncst
ncsp:   lda     #$20
ncst:   sta     ,x+
        decb
        bne     nc1

        lbsr    DoCapture
        lbsr    ClearPend

        ldx     #SAVEBUF        ; put the screen back
        ldu     #SAVETOP
        ldy     #SAVELEN
ncrs:   lda     ,x+
        sta     ,u+
        leay    -1,y
        bne     ncrs
        clr     NameOn
        puls    cc,d,x,y,u
        rts

;--------------------------------------------------------------
; KGet: scan the matrix, returning row*8+col (so A-Z are 1-26) or $FF.
; Joystick buttons ghost into every column and are masked out first.
;--------------------------------------------------------------
KGet:
        lda     #$FF
        sta     $FF02
        lda     $FF00
        coma
        anda    #$7F
        coma
        sta     KMask
        ldb     #%11111110
        clr     KCol
kgcol:  stb     $FF02
        lda     $FF00
        coma
        anda    #$7F
        anda    KMask
        bne     kgfnd
        orcc    #1
        rolb
        inc     KCol
        lda     KCol
        cmpa    #8
        blo     kgcol
        lda     #$FF
        rts
kgfnd:  clr     KRow
kgbit:  lsra
        bcs     kghit
        inc     KRow
        bra     kgbit
kghit:  lda     KRow
        ldb     #8
        mul
        addb    KCol
        tfr     b,a
        rts

;--------------------------------------------------------------
; FreezeHook: patched over `STA $FF03` at run $C224, the top of the main
; loop. While an overlay is up it rewrites its own return address to the
; loop tail, skipping the frame's game logic so nothing moves or repaints.
;--------------------------------------------------------------
FreezeHook:
        sta     $FF03           ; displaced original
        lda     NameOn
        beq     fhtbl
        lbsr    NameFrame
        bra     fhskip
fhtbl:  lda     TableOn
        beq     fhrun
        lda     TableArm
        cmpa    #2
        beq     fhrel
        lbsr    AnyInput
        bne     fhkey
        lda     #1              ; input idle: arm the dismiss
        sta     TableArm
        bra     fhskip
fhkey:  lda     TableArm
        beq     fhskip          ; still the H that opened it
        lda     #2              ; dismissing: hold until released, so the
        sta     TableArm        ; same press cannot also start a game
        bra     fhskip
fhrel:  lbsr    AnyInput
        bne     fhskip
        lbsr    TableExit
        bra     fhrun
fhskip: lda     >$0002          ; the loop's own $C243 write is skipped
        sta     $FF22
        ldx     #$C2FA          ; loop tail, not the SYNC at $C305: $C300
        stx     ,s              ; re-enables the field-sync interrupt
fhrun:  rts

;--------------------------------------------------------------
; TableEnter: stash the screen area the table covers, then load the
; table. A failed read or a foreign sector still shows an empty table
; rather than nothing at all.
;--------------------------------------------------------------
TableEnter:
        pshs    cc,d,x,y,u
        ldx     #SAVETOP
        ldu     #SAVEBUF
        ldy     #SAVELEN
tesv:   lda     ,x+
        sta     ,u+
        leay    -1,y
        bne     tesv

        lbsr    DoReadTable
        bne     teblank

        ldx     #SBUF
        ldu     #SigSrc
        ldb     #5
teck:   lda     ,x+
        cmpa    ,u+
        bne     teblank
        decb
        bne     teck
        bra     teon

teblank: ldx    #SBUF           ; present an empty table
        ldb     #0
tewipe: clr     ,x+
        decb
        bne     tewipe

teon:   lbsr    ClearPanel
        lbsr    DrawTable
        ldu     #PressMsg
        ldx     #PROMPTPOS
        lbsr    DrawStr
        lda     #1
        sta     TableOn
        clr     TableArm
        puls    cc,d,x,y,u
        rts

;--------------------------------------------------------------
; TableExit: put the screen back the way it was.
;--------------------------------------------------------------
TableExit:
        pshs    cc,d,x,y,u
        ldx     #SAVEBUF
        ldu     #SAVETOP
        ldy     #SAVELEN
txrs:   lda     ,x+
        sta     ,u+
        leay    -1,y
        bne     txrs
        clr     TableOn
        puls    cc,d,x,y,u
        rts

;--------------------------------------------------------------
; ClearPanel: black out the table area before each redraw, so the
; title art underneath does not show through.
;--------------------------------------------------------------
ClearPanel:
        pshs    d,x,y
        ldd     #0
        ldx     #SAVETOP
        ldy     #SAVELEN/16
cpz:    std     ,x++
        std     ,x++
        std     ,x++
        std     ,x++
        std     ,x++
        std     ,x++
        std     ,x++
        std     ,x++
        leay    -1,y
        bne     cpz
        puls    d,x,y
        rts

;--------------------------------------------------------------
; DoCapture: snapshot the score, then read/merge/write the table under
; the same shielded DSKCON sequence as Increment 2.
;--------------------------------------------------------------
DoCapture:
        pshs    cc,a,b,dp,x,y,u
        orcc    #$50            ; mask IRQ+FIRQ for the DSKCON calls
        clra                    ; DSKCON expects DP=0 (true zero page) for
        tfr     a,dp            ; its own internal scratch

        lbsr    UnpackScore     ; snapshot LastScore into TmpScore first,
                                ; before the shield below touches anything

        ldx     #$0000          ; shield the entire zero page (Demon
        ldu     #ZpBuf          ; Attack-specific: it reuses the DCOPC..
        ldb     #0              ; DCSTA block for its own state -- see the
zpsave: lda     ,x+             ; header comment. 256-byte copy (wraps
        sta     ,u+             ; through all of B)
        decb
        bne     zpsave

        lbsr    CaptureScore

        ldx     #ZpBuf          ; restore the shielded zero page
        ldu     #$0000
        ldb     #0              ; 256-byte copy
zprest: lda     ,x+
        sta     ,u+
        decb
        bne     zprest

        puls    cc,a,b,dp,x,y,u
        rts

;--------------------------------------------------------------
; SafeDSKCON: matches Downland's proven SafeDSKCON. Shields the
; $0950-$098F workspace the floppy driver scribbles on, saves Demon
; Attack's own NMI and IRQ vectors and installs the real Disk BASIC
; vectors (captured at EXEC time, before Demon Attack's own code could
; touch them) around the actual DSKCON call, turns the floppy motor off
; afterward (harmless on DriveWire), then restores everything. Returns
; DCSTA in A. HDFLAG/DCDRV/HDIDNUM/DCOPC/DCTRK/DCSEC/DCBPT must already
; be set by the caller.
;--------------------------------------------------------------
SafeDSKCON:
        ldx     #$0950          ; save the workspace bytes the driver
        ldu     #WsBuf          ; overwrites
        ldb     #WSLEN
wssave: lda     ,x+
        sta     ,u+
        decb
        bne     wssave

        ldx     $0109           ; save Demon Attack's own NMI vector
        stx     SavedGameNmi
        lda     $010B
        sta     SavedGameNmi+2
        ldx     $010C           ; save Demon Attack's own IRQ vector
        stx     SavedGameIrq
        lda     $010E
        sta     SavedGameIrq+2
        ldx     MyNmiVec        ; install Disk BASIC's NMI vector at $0109
        stx     $0109
        lda     MyNmiVec+2
        sta     $010B
        ldx     MyDiskIrq       ; install Disk BASIC's IRQ vector at $010C
        stx     $010C
        lda     MyDiskIrq+2
        sta     $010E

        jsr     TRAMPADDR

        clr     $FF40           ; motor off + FDC halt-enable off
        sta     $FFD8           ; SAM R1: HDB-DOS leaves a CoCo 3 at 1.78MHz
        ldx     SavedGameNmi    ; restore Demon Attack's own NMI vector
        stx     $0109
        lda     SavedGameNmi+2
        sta     $010B
        ldx     SavedGameIrq    ; restore Demon Attack's own IRQ vector
        stx     $010C
        lda     SavedGameIrq+2
        sta     $010E

        ldx     #WsBuf          ; restore the shielded workspace bytes
        ldu     #$0950
        ldb     #WSLEN
wsrest: lda     ,x+
        sta     ,u+
        decb
        bne     wsrest

        lda     DCSTA
        rts

;--------------------------------------------------------------
; UnpackScore: LastScore (3 packed-BCD bytes, LSB first -- the settled
; shadow copy, identical to live SCORE at capture time) -> TmpScore
; (7 ASCII digits, leading '0' since the game only stores 6 digits).
;--------------------------------------------------------------
UnpackScore:
        lda     #'0'
        sta     TmpScore
        lda     LastScore+2
        lsra
        lsra
        lsra
        lsra
        adda    #'0'
        sta     TmpScore+1
        lda     LastScore+2
        anda    #$0F
        adda    #'0'
        sta     TmpScore+2
        lda     LastScore+1
        lsra
        lsra
        lsra
        lsra
        adda    #'0'
        sta     TmpScore+3
        lda     LastScore+1
        anda    #$0F
        adda    #'0'
        sta     TmpScore+4
        lda     LastScore+0
        lsra
        lsra
        lsra
        lsra
        adda    #'0'
        sta     TmpScore+5
        lda     LastScore+0
        anda    #$0F
        adda    #'0'
        sta     TmpScore+6
        rts

;--------------------------------------------------------------
; ;--------------------------------------------------------------
; ReadSector: cache-bust read, then the real read into SBUF. Returns
; DCSTA in A. The cache-bust target must be far from the score sector
; (reads are served from a buffered block, so a nearby sector evicts
; nothing) and must not be LSN 0 (block 0 trips a _media_last_block + 1
; wraparound in the FujiNet media layer after a write).
;--------------------------------------------------------------
ReadSector:
        clr     HDFLAG          ; route all drives to DriveWire
        lda     MyDriveNum
        sta     DCDRV
        lda     MySlotNum
        sta     HDIDNUM

        lda     #2
        sta     DCOPC
        lda     #DTRACK
        sta     DCTRK
        lda     #DSECTOR
        sta     DCSEC
        ldx     #SBUF
        stx     DCBPT
        lbsr    SafeDSKCON      ; discarded

        lda     #2
        sta     DCOPC
        lda     #STRACK
        sta     DCTRK
        lda     #SSECTOR
        sta     DCSEC
        ldx     #SBUF
        stx     DCBPT
        lbsr    SafeDSKCON
        rts

CaptureScore:
        lbsr    ReadSector
        bne     CapDone         ; read failed: leave the disk alone

        ldx     #SBUF           ; signature valid?
        ldu     #SigSrc
        ldb     #5
cvck:   lda     ,x+
        cmpa    ,u+
        bne     cvfmt
        decb
        bne     cvck
        bra     cvok

cvfmt:  ldx     #SBUF           ; wipe and stamp a fresh sector
        ldb     #0
cvwipe: clr     ,x+
        decb
        bne     cvwipe
        ldx     #SBUF
        ldu     #SigSrc
        ldb     #5
cvstamp: lda    ,u+
        sta     ,x+
        decb
        bne     cvstamp

cvok:
        clr     Dirty
        lbsr    MergeScore

        lda     Dirty
        beq     CapDone         ; nothing changed: don't write

        clr     HDFLAG          ; set the drive/slot again before the write
        lda     MyDriveNum
        sta     DCDRV
        lda     MySlotNum
        sta     HDIDNUM

        lda     #3              ; write the updated table back
        sta     DCOPC
        lda     #STRACK
        sta     DCTRK
        lda     #SSECTOR
        sta     DCSEC
        ldx     #SBUF
        stx     DCBPT
        lbsr    SafeDSKCON      ; status ignored: fails gracefully on r/o

CapDone:
        rts

;--------------------------------------------------------------
; MergeScore: TmpScore (7 ASCII digits) -> insert into the table at
; ENTRIES if it beats an entry, shifting lower entries down. Sets Dirty
; on any change. Placeholder name (blank) -- name-entry UI is a later
; increment.
;--------------------------------------------------------------
MergeScore:
        clr     Slot
        ldx     #ENTRIES
mgslot: ldu     #TmpScore
        leay    8,x             ; entry's score field
        ldb     #7
mgdig:  lda     ,u+
        cmpa    ,y+
        bhi     mgins           ; new > entry: insert at this slot
        blo     mgnext          ; new < entry: try next slot
        decb
        bne     mgdig
        rts                     ; equal: already recorded
mgnext: leax    ENTLEN,x
        inc     Slot
        lda     Slot
        cmpa    #NENTRY
        blo     mgslot
        rts                     ; doesn't make the table

mgins:  lda     Slot            ; SlotPtr = ENTRIES + Slot*16
        ldb     #ENTLEN
        mul
        addd    #ENTRIES
        std     SlotPtr
        ldx     #ENTRIES+(NENTRY-2)*ENTLEN  ; shift Slot..8 down one
mgshift: cmpx   SlotPtr
        blo     mgwrite
        leau    ENTLEN,x        ; copy entry at X to X+16
        ldb     #ENTLEN
mgcopy: lda     ,x+
        sta     ,u+
        decb
        bne     mgcopy
        leax    -2*ENTLEN,x     ; previous entry
        bra     mgshift

mgwrite: ldx    SlotPtr
        ldu     #NameAscii
        ldb     #NAMELEN
mgnm:   lda     ,u+
        sta     ,x+
        decb
        bne     mgnm
        ldu     #TmpScore       ; score digits (already ASCII)
        ldb     #7
mgsc:   lda     ,u+
        sta     ,x+
        decb
        bne     mgsc
        clr     ,x              ; pad
        inc     Dirty
        rts

TRAMPADDR equ $4100

PromptMsg: fcb  8,38,0,8,9,7,8,0,19,3,15,18,5,19,$FF
MsgHdr: fcb     8,9,7,8,0,19,3,15,18,5,19,$FF
PressMsg: fcb   16,18,5,19,19,0,1,14,25,0,11,5,25,$FF
MsgNHS: fcb     14,5,23,0,8,9,7,8,0,19,3,15,18,5,$FF
MsgName: fcb    14,1,13,5,38,$FF
MsgP1:  fcb     16,12,1,25,5,18,0,28,$FF
MsgP2:  fcb     16,12,1,25,5,18,0,29,$FF
NameOn: fcb     0
PendMask: fcb   0
CurPlayer: fcb  0
Score1: fcb     0,0,0
Score2: fcb     0,0,0
SettleDelay: fcb 0
NamePos: fcb    0
LastKey: fcb    $FF
KCol:   fcb     0
KRow:   fcb     0
JoyTmp: fcb     0
JoyTmp2: fcb    0
NameBuf: fcb    0,0,0,0,0,0,0,0
NameAscii: fcb  $20,$20,$20,$20,$20,$20,$20,$20
KMask:  fcb     0
SavCol: fcb     0
TmpStat: fcb    0
TableOn: fcb    0
TableArm: fcb   0
TRow:   fcb     0
TRowPtr: fdb    0
TEntPtr: fdb    0

        include "font.asm"

SigSrc: fcc     'DAHS'
        fcb     1               ; version

Init:   fcb     0
ShowPrompt: fcb 1
; relay block: must stay contiguous and in this exact order, matching
; Stage0's DriveNum/SlotNum/NmiVec/DiskIrq layout -- copied as one 8-byte
; block on first invocation (see initcp above)
MyDriveNum: fcb 0
MySlotNum: fcb  0
MyNmiVec: fcb   0,0,0
MyDiskIrq: fcb  0,0,0

SavedGameNmi: fcb 0,0,0
SavedGameIrq: fcb 0,0,0

LastScore: fcb  0,0,0
Dirty:  fcb     0
Slot:   fcb     0
SlotPtr: fdb    0
TmpScore: fcb   0,0,0,0,0,0,0
WsBuf:  rmb     WSLEN
ZpBuf:  rmb     256
        end
