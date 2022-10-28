AS=mads
PATCH=./patch
PATCH2=./patch2
CP=cp
MKDIR=mkdir
DIR2ATR=dir2atr

.PHONY: patch

patch:
	$(MKDIR) -p build
	$(CP) "../../atari-blank-games/Miner 2049er.xex" ./build
	$(AS) -o:read.bin read.asm
	$(AS) -o:write.bin write.asm
	$(CC) -opatch patch.c
	$(PATCH) "build/Miner 2049er.xex" read.bin write.bin
	$(DIR2ATR) -S "Miner 2049er.atr" build/
	$(CC) -opatch2 patch2.c
	$(PATCH2) "Miner 2049er.atr" score.bin

clean:
	$(RM) -rf build
	$(RM) $(PATCH)
	$(RM) $(PATCH2)
	$(RM) write.bin
	$(RM) read.bin
	$(RM) "Miner 2049er.atr"
