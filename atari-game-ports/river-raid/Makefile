AS=mads
CP=cp
SRC=river-raid.asm
XEX=AUTORUN
LST=river-raid.lst
ATR="River Raid.atr"
BUILD=build
MKDIR=mkdir
DIR2ATR=dir2atr
WRITE_HIGH_SCORE=./write-high-score
HISCORE_TABLE_ASM=hiscore_table.asm
HISCORE_TABLE_BIN=hiscore_table.bin
HIGH_SCORE_ENABLE=./high-score-enable
BOOT_PROGRAM=picoboot.bin

.PHONY: clean pre

all:	clean pre xex dist hiscore hiscore_enable

pre:
	$(RM) -rf $(BUILD)
	$(MKDIR) -p $(BUILD)

xex:
	$(AS) $(SRC) -o:$(BUILD)/$(XEX) -l:$(LST)

dist:
	$(DIR2ATR) -B $(BOOT_PROGRAM) -S $(ATR) $(BUILD)

hiscore:
	$(AS) $(HISCORE_TABLE_ASM) -o:$(BUILD)/$(HISCORE_TABLE_BIN)	
	$(CC) -o$(WRITE_HIGH_SCORE) $(WRITE_HIGH_SCORE).c
	$(WRITE_HIGH_SCORE) $(ATR) $(BUILD)/$(HISCORE_TABLE_BIN)

hiscore_enable:
	$(CC) -o$(HIGH_SCORE_ENABLE) $(HIGH_SCORE_ENABLE).c
	$(HIGH_SCORE_ENABLE) $(ATR) 719 2

clean:
	$(RM) -rf $(BUILD)
	$(RM) -rf $(ATR)
	$(RM) -rf $(WRITE_HIGH_SCORE)
	$(RM) -rf $(HIGH_SCORE_ENABLE)
	$(RM) -rf $(LST)

tnfs:
	cp "River Raid.atr" ~/tnfs

