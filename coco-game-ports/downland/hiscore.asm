; hiscore.asm — FujiNet high-score module for Downland (CoCo, V1.0 disk binary).
;
; This is NOT the game (no source exists for V1.0). It is a small module that
; patch-downland.py splices into DOWNLAND.BIN:
;   - module resides at $E030+ (copied above the game by the extended
;     bootstrap copy loop; low RAM gets clobbered by the game's startup)
;   - reached via JSR $E030 patched over `LDU #$00B3` at $C0DD, which runs on
;     every title-screen visit, after the game has folded the player scores
;     into the high score
;   - an EXEC-time stub pokes the RUNM drive number into DriveNum before the
;     bootstrap copies the image up
;
; On each title visit (IRQs masked, DP=0):
;   read score sector -> validate/format -> merge player 1+2 scores into the
;   top-10 table -> restore table[0] into the game's high score ($B3) ->
;   write back only if the table changed.
;
; DSKCON runs with the ROM mapped in, which would unmap this module ($E0xx),
; so the actual call happens via a small trampoline copied to low RAM ($4100),
; with the sector buffer at $4200 (low RAM is present in both SAM maps).
;
;
; UI (drawn to video page 1, which is displayed during the title redraw and
; wiped by the game afterwards — a free modal screen):
;   - when a score enters the table, a name-entry screen prompts for three
;     characters (A-Z/space, left-arrow = backspace, ENTER = done)
;   - after the merge, the top-10 table is shown until a key is pressed
;
; Sector format (track 34, sector 18; 256 bytes):
;   +0  "DLHS", +4 version(1), +5..15 reserved
;   +16 ten 16-byte entries: [8 name][7 score digits][1 pad], best first
;   stored as plain ASCII ('A'-'Z', ' ', '0'-'9') so the sector is directly
;   readable by the scraper; converted to font codes at the screen boundary

; DECB DSKCON interface
DCOPC   equ $00EA          ; 2=read, 3=write
DCDRV   equ $00EB
DCTRK   equ $00EC
DCSEC   equ $00ED
DCBPT   equ $00EE
DCSTA   equ $00F0          ; 0 = success
HDFLAG  equ $014E          ; 0 => all drives route to DriveWire

; Downland
HISCORE equ $00B3          ; high-score string, 7 digit bytes
P1SCORE equ $00BB          ; player 1 score string
P2SCORE equ $00C3          ; player 2 score string

; ours
TRAMP   equ $4100          ; trampoline runs here (RAM in both maps)
WSLEN   equ 64             ; floppy-driver workspace to shield ($0950-$098F)
SBUF    equ $4200          ; 256-byte sector buffer (RAM in both maps)
ENTRIES equ SBUF+16
NENTRY  equ 10
ENTLEN  equ 16
DRAWMASK equ $0069         ; game's character drawing mask (artifact color)
STRACK  equ 34
SSECTOR equ 18
FONT    equ $D9B7          ; V1.0 CharacterFont, 7 bytes/glyph
PAGE1   equ $1C00          ; displayed video page during title redraw
NHSPOS  equ $2309          ; "new high score"
SCPOS   equ $260C          ; the qualifying score
NMPOS   equ $2909          ; "name:"
FLDPOS  equ $290F          ; 8-char entry field
TTPOS   equ $1E0B          ; "top ten"
ROW0    equ $2100          ; first table row
ROWSTEP equ 384            ; 12 scanlines between rows
PAGE0   equ $0400          ; page displayed once the title loop runs
HKPOS   equ $1A89          ; "h: high scores" prompt (page 0, bottom)
PAKPOS  equ $3209          ; "press any key" (page 1, bottom)
SAMPAGES equ $CDF7         ; V1.0 SetupSAMPages (D = video page address)
INCRROM equ $DCDC          ; V1.0 IncrementRomAddressCounter (title-loop JSR)

        org $E030
Hook:
        pshs    cc,a,b,dp,x,y,u
        orcc    #$50            ; mask IRQ+FIRQ
        clra
        tfr     a,dp

        ldx     #TrampSrc       ; copy trampoline to low RAM
        ldu     #TRAMP
        ldb     #TRLEN
cptr:   lda     ,x+
        sta     ,u+
        decb
        bne     cptr

        clr     HDFLAG          ; route all drives to DriveWire
        lda     DriveNum
        sta     DCDRV
        lda     #2              ; read score sector
        sta     DCOPC
        lda     #STRACK
        sta     DCTRK
        lda     #SSECTOR
        sta     DCSEC
        ldx     #SBUF
        stx     DCBPT
        lbsr    SafeDSKCON
        lbne    Done            ; read failed: leave everything alone

        clr     Dirty

        ldx     #SBUF           ; signature + version valid?
        ldu     #SigSrc
        ldb     #5
cksig:  lda     ,x+
        cmpa    ,u+
        bne     Format
        decb
        bne     cksig
        bra     Merge

Format:                         ; fresh/foreign sector: wipe and stamp
        ldx     #SBUF
        clrb                    ; 256 times
fwipe:  clr     ,x+
        decb
        bne     fwipe
        ldx     #SBUF
        ldu     #SigSrc
        ldb     #5
fstamp: lda     ,u+
        sta     ,x+
        decb
        bne     fstamp
        inc     Dirty

Merge:
        ldu     #P1SCORE
        ldx     #LastP1
        lbsr    MergeOne
        ldu     #P2SCORE
        ldx     #LastP2
        lbsr    MergeOne

        lda     ENTRIES+8       ; empty table? (no restore from zeros)
        beq     NoRestore
        ldx     #ENTRIES+8      ; restore: table[0].score -> $B3 if greater
        ldu     #HISCORE
        ldb     #7
rcmp:   lda     ,x+
        suba    #48             ; ASCII digit -> font code
        cmpa    ,u+
        blo     NoRestore       ; table[0] < live
        bhi     DoRestore       ; table[0] > live
        decb
        bne     rcmp
        bra     NoRestore       ; equal
DoRestore:
        ldx     #ENTRIES+8
        ldu     #HISCORE
        ldb     #7
rcpy:   lda     ,x+
        suba    #48             ; ASCII digit -> font code
        sta     ,u+
        decb
        bne     rcpy
NoRestore:

        lda     Dirty
        beq     NoWrite
        lda     #3              ; write the updated table back
        sta     DCOPC
        ldx     #SBUF
        stx     DCBPT
        lbsr    SafeDSKCON      ; status ignored: fails gracefully on r/o

NoWrite:
        ldu     #MsgHKey        ; put the prompt on the title screen (page 0)
        ldx     #HKPOS
        lbsr    PStr

Done:
        puls    cc,a,b,dp,x,y,u
        ldu     #HISCORE        ; displaced original instruction
        rts

;--------------------------------------------------------------
; MergeOne: U -> live 7-digit score, X -> its 7-byte shadow copy.
; Inserts the score into the table (initials 'aaa') if it is made of valid
; digits, differs from the shadow (dedup for title revisits), is not already
; in the table, and beats an entry. Sets Dirty on insert.
;--------------------------------------------------------------
MergeOne:
        pshs    x,u             ; 0,s = shadow, 2,s = live

        ldb     #7              ; all digits 0-9?
mval:   lda     ,u+
        cmpa    #9
        lbhi    moExit
        decb
        bne     mval

        ldu     2,s             ; identical to shadow? (already merged)
        ldx     0,s
        ldb     #7
mchg:   lda     ,u+
        cmpa    ,x+
        bne     mnew
        decb
        bne     mchg
        lbra    moExit

mnew:   ldu     2,s             ; update shadow
        ldx     0,s
        ldb     #7
mshd:   lda     ,u+
        sta     ,x+
        decb
        bne     mshd

        ldu     2,s             ; live score as ASCII digits
        ldx     #TmpScore
        ldb     #7
masc:   lda     ,u+
        adda    #48
        sta     ,x+
        decb
        bne     masc

        clr     Slot            ; find first entry the live score beats
        ldx     #ENTRIES
mslot:  ldu     #TmpScore
        leay    8,x             ; entry score field
        ldb     #7
mdig:   lda     ,u+
        cmpa    ,y+
        bhi     mins            ; live > entry: insert at this slot
        blo     mnext           ; live < entry: try next slot
        decb
        bne     mdig
        lbra    moExit          ; equal: already recorded, skip
mnext:  leax    ENTLEN,x
        inc     Slot
        lda     Slot
        cmpa    #NENTRY
        blo     mslot
        bra     moExit          ; doesn't make the table

mins:   lda     Slot            ; SlotPtr = ENTRIES + Slot*16
        ldb     #ENTLEN
        mul
        addd    #ENTRIES
        std     SlotPtr
        ldx     #ENTRIES+(NENTRY-2)*ENTLEN  ; shift Slot..8 down one
mshift: cmpx    SlotPtr
        blo     mwrite
        leau    ENTLEN,x        ; copy entry at X to X+16
        ldb     #ENTLEN
mcopy:  lda     ,x+
        sta     ,u+
        decb
        bne     mcopy
        leax    -2*ENTLEN,x     ; previous entry
        bra     mshift

mwrite: ldx     SlotPtr
        lda     #$20            ; blank name (EnterName fills it in)
        ldb     #8
mwnm:   sta     ,x+
        decb
        bne     mwnm
        ldu     #TmpScore       ; score digits (ASCII)
        ldb     #7
mwsc:   lda     ,u+
        sta     ,x+
        decb
        bne     mwsc
        clr     ,x              ; pad
        inc     Dirty
        ldx     SlotPtr
        lbsr    EnterName       ; replace the 'aaa' placeholder
moExit:
        puls    x,u,pc

;--------------------------------------------------------------
; PChr: draw glyph A at gfx address X; X advances one column.
; Preserves A, B, U.
;--------------------------------------------------------------
PChr:
        pshs    d,y
        ldy     #FONT
        ldb     #7
        mul
        leay    d,y
        ldb     #7
pcrow:  lda     ,y+
        anda    >DRAWMASK       ; same artifact color as the game's own text
        sta     ,x
        leax    32,x
        decb
        bne     pcrow
        leax    -223,x          ; up 7 rows, right 1 column
        puls    d,y,pc

;--------------------------------------------------------------
; PStr: draw $FF-terminated font-code string at U to gfx address X.
;--------------------------------------------------------------
PStr:
        lda     ,u+
        bmi     psdone
        bsr     PChr
        bra     PStr
psdone: rts

;--------------------------------------------------------------
; PClear: clear video page 1.
;--------------------------------------------------------------
PClear:
        ldx     #PAGE1
pclr:   clr     ,x+
        cmpx    #PAGE1+$1800
        blo     pclr
        rts

;--------------------------------------------------------------
; KGet: scan the keyboard matrix. Returns A = keycode 0-55 (row*8+col) or
; $FF if none. Joystick buttons appear in every column, so bits present
; with no column driven are masked out.
;--------------------------------------------------------------
KGet:
        lda     #$FF            ; no columns driven: only ghosts remain
        sta     $FF02
        lda     $FF00
        coma
        anda    #$7F
        coma
        sta     KMask           ; ~ghost
        ldb     #%11111110
        clr     KCol
kgcol:  stb     $FF02
        lda     $FF00
        coma
        anda    #$7F
        anda    KMask
        bne     kgfnd
        orcc    #1
        rolb                    ; next column
        inc     KCol
        lda     KCol
        cmpa    #8
        blo     kgcol
        lda     #$FF
        rts
kgfnd:  clr     KRow            ; lowest set row bit
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
; KRel: wait for all keys released (ignoring joystick-button ghosts),
; then a short debounce delay.
;--------------------------------------------------------------
KRel:
        lda     #$FF
        sta     $FF02
        lda     $FF00
        coma
        anda    #$7F
        coma
        sta     KMask
krwait: clr     $FF02
        lda     $FF00
        coma
        anda    #$7F
        anda    KMask
        bne     krwait
        ldx     #3000           ; debounce
krdly:  leax    -1,x
        bne     krdly
        rts

;--------------------------------------------------------------
; EnterName: X -> table entry ([3 initials][7 score]...). Shows the score
; and a 3-character entry field on page 1; A-Z/space enter characters,
; left-arrow backspaces, ENTER (with 3 chars) commits into the entry.
;--------------------------------------------------------------
EnterName:
        pshs    x
        ldb     $FF02
        stb     SavCol

        lbsr    PClear
        ldu     #MsgNHS
        ldx     #NHSPOS
        lbsr    PStr

        ldx     0,s             ; the qualifying score, leading zeros skipped
        leau    8,x
        ldb     #6
enskp:  lda     ,u
        cmpa    #'0'
        bne     ensco
        leau    1,u
        decb
        bne     enskp
ensco:  incb                    ; digits left = B+1
        ldx     #SCPOS
ensc2:  lda     ,u+
        suba    #48             ; ASCII digit -> font code
        lbsr    PChr
        decb
        bne     ensc2

        ldu     #MsgName
        ldx     #NMPOS
        lbsr    PStr

        lda     #38             ; '.' placeholder dots
        ldx     #NameBuf
        ldb     #8
enini:  sta     ,x+
        decb
        bne     enini
        clr     NamePos
        lbsr    KRel

enloop: ldx     #FLDPOS         ; redraw the field
        ldu     #NameBuf
        ldb     #8
enfld:  lda     ,u+
        lbsr    PChr
        decb
        bne     enfld

enkey:  lbsr    KGet
        cmpa    #$FF
        beq     enkey
        cmpa    #48             ; ENTER
        beq     endone
        cmpa    #29             ; left arrow = backspace
        beq     enbksp
        cmpa    #31             ; space bar
        beq     enspc
        cmpa    #1              ; A-Z?
        blo     ennope
        cmpa    #26
        bhi     ennope
        adda    #9              ; letter font code
        bra     enput
enspc:  lda     #36             ; space glyph
enput:  ldb     NamePos
        cmpb    #8
        bhs     ennope
        ldx     #NameBuf
        abx
        sta     ,x
        inc     NamePos
ennope: lbsr    KRel
        bra     enloop
enbksp: ldb     NamePos
        beq     ennope
        dec     NamePos
        ldb     NamePos
        ldx     #NameBuf
        abx
        lda     #38
        sta     ,x
        bra     ennope
endone: ldb     NamePos
        beq     ennope          ; need at least one character
        puls    x               ; commit as ASCII, space-padded
        ldu     #NameBuf
        ldb     #8
encmt:  lda     ,u+
        cmpa    #36             ; space glyph
        beq     encsp
        cmpa    #38             ; unfilled '.' placeholder
        beq     encsp
        adda    #55             ; font letter -> ASCII 'A'-'Z'
        bra     encst
encsp:  lda     #$20
encst:  sta     ,x+
        decb
        bne     encmt
        ldb     SavCol
        stb     $FF02
        rts

;--------------------------------------------------------------
; ShowTable: draw the top-10 from the sector buffer on page 1 and wait
; for a keypress. Empty (all-zero) entries are skipped.
;--------------------------------------------------------------
ShowTable:
        ldb     $FF02
        stb     SavCol
        lbsr    PClear
        ldu     #MsgTop
        ldx     #TTPOS
        lbsr    PStr

        clr     Row
        ldd     #ROW0
        std     RowPtr
strow:  lda     Row             ; entry address = ENTRIES + Row*16
        ldb     #ENTLEN
        mul
        addd    #ENTRIES
        tfr     d,u
        ldx     RowPtr
        leax    5,x             ; rank, right-aligned in 2 cells
        lda     Row
        cmpa    #9
        beq     strk10
        lda     #36             ; space
        lbsr    PChr
        lda     Row
        inca
        lbsr    PChr
        bra     strk
strk10: lda     #1
        lbsr    PChr
        clra
        lbsr    PChr
strk:   leax    2,x
        leay    8,u             ; empty entry? (score all zero)
        ldb     #7
stchk:  lda     ,y+
        bne     stfull
        decb
        bne     stchk
        ldb     #8              ; empty: blank name, zero score
stesp:  lda     #36
        lbsr    PChr
        decb
        bne     stesp
        leax    2,x
        ldb     #7
stez:   clra
        lbsr    PChr
        decb
        bne     stez
        bra     stnext
stfull: ldb     #8              ; name (ASCII -> font)
stini:  lda     ,u+
        cmpa    #$20
        bne     stlet
        lda     #36
        bra     stput
stlet:  suba    #55
stput:  lbsr    PChr
        decb
        bne     stini
        leax    2,x             ; score
        ldb     #7
stsc:   lda     ,u+
        suba    #48             ; ASCII digit -> font code
        lbsr    PChr
        decb
        bne     stsc
stnext: ldd     RowPtr
        addd    #ROWSTEP
        std     RowPtr
        inc     Row
        lda     Row
        cmpa    #NENTRY
        lblo    strow

        ldu     #MsgPAK
        ldx     #PAKPOS
        lbsr    PStr

        lbsr    KRel            ; wait for a fresh keypress
stkey:  lbsr    KGet
        cmpa    #$FF
        beq     stkey
        lbsr    KRel
        ldb     SavCol
        stb     $FF02
        rts

;--------------------------------------------------------------
; TitleHook2: patched over the title loop's `JSR IncrementRomAddressCounter`
; ($C109). Chains the original call, then checks for the H key; if pressed,
; flips the display to page 1, shows the top-10, repairs page 1 from page 0
; and flips back.
;--------------------------------------------------------------
TitleHook2:
        jsr     >INCRROM        ; displaced original call
        pshs    cc,a,b,dp,x,y,u
        ldb     $FF02
        stb     SavCol2
        lbsr    KGet
        ldb     SavCol2
        stb     $FF02
        cmpa    #8              ; H key (row 1, column 0)
        bne     th2out
        ldd     #PAGE1
        jsr     >SAMPAGES       ; display page 1

        ldx     #PAGE0          ; erase live drops from page 0 (copy clean page 1
th2er:  ldd     $1800,x         ; over it) so the repair below keeps page 1 drop-
        std     ,x              ; free -- the drop-erase reads page 1 as its clean
        leax    2,x             ; background, so a drop left there would echo
        cmpx    #PAGE1
        blo     th2er

        lbsr    ShowTable       ; draws on page 1, waits for a key
        ldx     #PAGE0          ; repair page 1 from the title on page 0
th2cp:  ldd     ,x
        std     $1800,x
        leax    2,x
        cmpx    #PAGE1
        blo     th2cp
        ldd     #PAGE0
        jsr     >SAMPAGES       ; back to the title
th2out: puls    cc,a,b,dp,x,y,u
        rts

; strings (font codes, $FF-terminated)
MsgNHS: fcb     23,14,32,36,17,18,16,17,36,28,12,24,27,14,$FF  ; "new high score"
MsgName: fcb    23,10,22,14,37,$FF                             ; "name:"
MsgTop: fcb     29,24,25,36,29,14,23,$FF                       ; "top ten"
MsgHKey: fcb    17,37,36,17,18,16,17,36,28,12,24,27,14,28,$FF  ; "h: high scores"
MsgPAK: fcb     25,27,14,28,28,36,10,23,34,36,20,14,34,$FF     ; "press any key"

;--------------------------------------------------------------
; SafeDSKCON: floppy DSKCON needs Disk BASIC's NMI/IRQ vectors, which Downland
; wiped in all-RAM mode; restore them (captured at EXEC time) around the call.
; Shield the video-page-0 bytes the driver scribbles on, and kill the motor
; afterward since Downland's hijacked IRQ never will. Harmless on DriveWire.
;--------------------------------------------------------------
SafeDSKCON:
        ldx     #$0950          ; save the page-0 bytes the driver overwrites
        ldu     #WsBuf
        ldb     #WSLEN
wssave: lda     ,x+
        sta     ,u+
        decb
        bne     wssave

        ldx     $010C           ; save Downland's game IRQ vector
        stx     SavedGameIrq
        lda     $010E
        sta     SavedGameIrq+2
        ldx     SavedNmiVec     ; install Disk BASIC NMI vector at $0109
        stx     $0109
        lda     SavedNmiVec+2
        sta     $010B
        ldx     SavedDiskIrq    ; install Disk BASIC IRQ vector at $010C
        stx     $010C
        lda     SavedDiskIrq+2
        sta     $010E
        jsr     TRAMP
        clr     $FF40           ; motor off + FDC halt-enable off
        ldx     SavedGameIrq    ; restore Downland's game IRQ vector
        stx     $010C
        lda     SavedGameIrq+2
        sta     $010E

        ldx     #WsBuf          ; restore the shielded page-0 bytes
        ldu     #$0950
        ldb     #WSLEN
wsrest: lda     ,x+
        sta     ,u+
        decb
        bne     wsrest

        lda     DCSTA
        rts

TrampSrc:                       ; executes at TRAMP ($4100) in low RAM
        sta     $FFDE           ; map ROM in ($C004/DSKCON present)
        jsr     [$C004]         ; DSKCON
        orcc    #$50            ; mask IRQ before leaving the ROM map
        sta     $FFDF           ; back to all-RAM
        rts
TRLEN   equ *-TrampSrc

SigSrc: fcc     'DLHS'
        fcb     2               ; version

; module variables (RAM at $E0xx in all-RAM mode; zeroed in the load image)
SavedNmiVec: fcb 0,0,0          ; Disk BASIC NMI vector, captured at EXEC time
SavedDiskIrq: fcb 0,0,0         ; Disk BASIC IRQ vector, captured at EXEC time
SavedGameIrq: fcb 0,0,0         ; Downland's game IRQ vector (saved per call)
Dirty:  fcb     0
Slot:   fcb     0
SlotPtr: fdb    0
LastP1: fcb     0,0,0,0,0,0,0   ; last-merged player scores (dedup shadows)
LastP2: fcb     0,0,0,0,0,0,0
KCol:   fcb     0
KRow:   fcb     0
KMask:  fcb     0
SavCol: fcb     0
SavCol2: fcb    0
NamePos: fcb    0
NameBuf: fcb    0,0,0,0,0,0,0,0
TmpScore: fcb   0,0,0,0,0,0,0
Row:    fcb     0
RowPtr: fdb     0
DriveNum:
        fcb     0               ; poked at EXEC time with the RUNM drive ($EB)
WsBuf:  rmb     WSLEN           ; scratch: saved copy of the shielded workspace
        end
