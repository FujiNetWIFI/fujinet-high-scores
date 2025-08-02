# buck-rogers

## Interesting addresses

GAME OVER $85C4
     $85FD has a clean jump.

P1 score stored as BCD at $090E
Needs to be shifted into screen codes, borrow some bits from $91A7

Stuck trying to get POKEY IO to work.
     
## Thanks

Ute (on AtariAge) for providing a clean disassembly.











AUDF1: 00  AUDC1: 00  Output: 0  (28 cycles until fire) (passive: 28 cycles)
AUDF2: 00  AUDC2: 00  Output: 0  (28 cycles until fire) (passive: 28 cycles)
AUDF3: 28  AUDC3: 00  Output: 0
AUDF4: 00  AUDC4: 00  Output: 0
AUDCTL: 28, 17-bit poly, 1.79 ch3, ch3+ch4, 64KHz
SKCTL: 13 | recv ch3+4 async | send ext | keyboard scan enabled | 
SERIN: 82
SEROUT: 63 (done)
        shift register 63 (0: done)
IRQEN:  C0, break key, keyboard
IRQST:  F7, sertrans
KBCODE: 00
ALLPOT: 00

Command line: negated