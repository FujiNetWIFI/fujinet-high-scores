AS=mads
PACMAN=PACMAN.ASM
BUILD=build
MKDIR=mkdir
DIR2ATR=dir2atr
WRITE_HIGH_SCORE=./write-high-score

.PHONY: clean pre

all:	clean pre PACMAN-ORIGINAL.xex dist hiscore

pre:
	$(MKDIR) -p $(BUILD)

PACMAN-ORIGINAL.xex:
	$(AS) -d:VERSION=2 PACMAN.ASM -o:$(BUILD)/PACMAN-ORIGINAL.xex -l:PACMAN.lst

dist:
	$(DIR2ATR) -B picoboot.bin -S "PAC-MAN.atr" $(BUILD)

hiscore:
	cp HISCORE_TABLE.bin $(BUILD)/
	# $(AS) HISCORE_TABLE.ASM -o:$(BUILD)/HISCORE_TABLE.bin	
	$(CC) -o$(WRITE_HIGH_SCORE) $(WRITE_HIGH_SCORE).c
	$(WRITE_HIGH_SCORE) PAC-MAN.atr $(BUILD)/HISCORE_TABLE.bin

clean:
	$(RM) -rf $(BUILD)
	$(RM) -rf PAC-MAN.atr
	$(RM) -rf write-high-score
	$(RM) -rf PACMAN.lst
