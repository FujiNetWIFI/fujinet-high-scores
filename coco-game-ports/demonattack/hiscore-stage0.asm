; hiscore-stage0.asm -- one-shot loader/relocator stub, loaded at $3000.
;
; Runs once, from the first call of the $C0DA hook, then repatches that hook
; to jump straight to the relocated module and is never reached again.
;
; The module cannot stay in the load image: the game uses $2A00-$3FCC as
; scratch during round setup. $8000-$9FFF is free -- neither the bootstrap's
; copy source ($4000-$7FFF) nor its destination ($C000-$FF00).
;
; The trampoline cannot live with the module either: $8000-$FFFF is the range
; SAM TY switches between ROM and RAM, and the trampoline's job is to flip
; that switch mid-call. It goes at $4100, with SBUF at $4200. Not $4000 --
; the game stores to $4004, $402A and $4077, and a trampoline at $4000 would
; have `STU $4004` land inside its `jsr [$C004]` operand.
;
; ExecStub is patched in as the disk's EXEC entry, ahead of the game's own
; bootstrap, to capture the drive number ($EB), the HDB-DOS slot selector
; ($0151) and Disk BASIC's NMI/IRQ vectors. $EB in particular is reused by
; the game during play, so it cannot be read later.

HOOKOPND equ $C0DB          ; operand bytes of the JSR at run $C0DA
TRAMPADDR equ $4100

        org $3000
Stage0:                         ; must be the very first thing at $3000 --
                                ; the per-frame hook is patched to a
                                ; hardcoded JSR $3000 and must land here,
                                ; not on ExecStub
        ldx     #RealModule
        ldu     #$8000
        ldy     RealLen         ; patched by patch-demonattack.py post-assembly
cploop: lda     ,x+
        sta     ,u+
        leay    -1,y
        bne     cploop

        ldx     #TrampSrc
        ldu     #TRAMPADDR
        ldb     #TRLEN
tcopy:  lda     ,x+
        sta     ,u+
        decb
        bne     tcopy

        ldd     #$8000
        std     HOOKOPND        ; repatch the live hook to jump here directly

        jmp     $8000

; orcc masks IRQ before leaving the ROM map; without it DSKCON can return with
; interrupts enabled and the game's IRQ handler run mid-sequence.
TrampSrc:
        sta     $FFDE           ; map ROM in (DSKCON present)
        jsr     [$C004]         ; DSKCON
        orcc    #$50            ; mask IRQ before leaving the ROM map
        sta     $FFDF           ; back to all-RAM
        rts
TRLEN   equ *-TrampSrc

ExecStub:
        lda     <$EB            ; RUNM drive number (DP=0 at EXEC time)
        sta     DriveNum
        lda     $0151           ; HDB-DOS "DRIVE #n" slot selector
        sta     SlotNum
        ldx     $0109           ; Disk BASIC NMI vector
        stx     NmiVec
        lda     $010B
        sta     NmiVec+2
        ldx     $010C           ; Disk BASIC IRQ vector
        stx     DiskIrq
        lda     $010E
        sta     DiskIrq+2
        jmp     $3FCC           ; original bootstrap entry

DriveNum: fcb 0
SlotNum: fcb 0
NmiVec: fcb 0,0,0
DiskIrq: fcb 0,0,0

RealLen: fdb $FFFF             ; placeholder, patched to len(RealModule)
RealModule:
        end
