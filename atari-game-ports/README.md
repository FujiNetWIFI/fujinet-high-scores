# atari-game-ports

these are games that are having High Score Enabled functionality added to them.

Can you help? Grab one, and use one of the done games as a template to add Hiscore to the others.

## TODO

* berzerk
* digdugv2
* miner-2049er
* moon-patrol-redux
* popcorn

## DONE

* baja-buggies
* centipede
* dkong
* defender
* pac-man
* pengo
* qix
* rear-guard

## Inside the working examples

Inside most of the working examples, e.g. centipede and dkong, there is a general pattern followed which generates a complete working disk, already high score enabled.

### Requirements

* a working CC e.g. GCC (for compiling write-high-score and high-score-enable)
* The MADS assembler 
* the GNU Make tool

### Makefile

* Builds a single density (128 bytes/sector) ATR disk with hi score sectors on 719 and 720. 
* Puts picoboot.bin on the boot sectors.
* Places game as the autorun for picoboot
* Writes the high score sectors to 719 and 720
* Writes the high score enabled ATR header marking sectors 719 and 720

### hiscore.asm

The hiscore routines to be adapted, it is intended to call jsr hiscore when it needs to take over. It needs to do whatever it needs to do to:

* Alter display list to display high score (custom display list)
* load hi score table into screen memory (HISCRL using DSKINV)
* handle keypresses to get initials (see HRKEY)
* save hi score table back onto sectors 719/720 (hiscrw using DSKINV)

Since many of these games take over the system completely, the common trick is to:

* Save existing vectors (VVBLKI, VVBLKD, VKEYBD, VDSLST)
* Swap in ours along with display list
* Do the hiscore thing
* Restore the vectors.

I tried to place notes as I reverse engineered many of the games.

### hiscore_table.asm

The hiscore table which is placed on sectors 719 and 720. Must be 256 bytes long.

### write-high-score

This simple C program reads the assembled hiscore_table.bin, and places it on sectors 719 and 720 of the target disk image.

### high-score-enable

This, also simple, C program writes the amended ATR disk header which marks sectors 719 and 720 as high score enabled.

