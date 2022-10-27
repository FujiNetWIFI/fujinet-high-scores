AS=mads
PATCH=./patch
CP=cp

.PHONY: patch

patch:
	$(CP) "../../atari-blank-games/Baja Buggies.atr" .
	$(AS) -o:write.bin write.asm
	$(CC) -opatch patch.c
	$(PATCH) "Baja Buggies.atr" write.bin

clean:
	$(RM) "Baja Buggies.atr"
	$(RM) patch
	$(RM) write.bin

