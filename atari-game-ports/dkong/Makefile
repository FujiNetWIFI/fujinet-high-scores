AS=mads
SRC=dk.asm
XEX=XAUTORUN
LST=dkong.lst
ATR="Donkey Kong.atr"
BUILD=build
MKDIR=mkdir
DIR2ATR=dir2atr
WRITE_HIGH_SCORE=./write-high-score
BOOTLOADER_BIN=xboot.obx
HISCORE_TABLE_ASM=hiscore_table.asm
HISCORE_TABLE_BIN=hiscore_table.bin

.PHONY: clean pre

all:	clean pre xex dist hiscore

pre:
	$(MKDIR) -p $(BUILD)

xex:
	$(AS) $(SRC) -o:$(BUILD)/$(XEX) -l:$(LST)

dist:
	$(DIR2ATR) -md -B $(BOOTLOADER_BIN) $(ATR) $(BUILD)

hiscore:
	$(AS) $(HISCORE_TABLE_ASM) -o:$(BUILD)/$(HISCORE_TABLE_BIN)	
	$(CC) -o$(WRITE_HIGH_SCORE) $(WRITE_HIGH_SCORE).c
	$(WRITE_HIGH_SCORE) $(ATR) $(BUILD)/$(HISCORE_TABLE_BIN)

clean:
	$(RM) -rf $(BUILD)
	$(RM) -rf $(ATR)
	$(RM) -rf $(WRITE_HIGH_SCORE)
	$(RM) -rf $(LST)
