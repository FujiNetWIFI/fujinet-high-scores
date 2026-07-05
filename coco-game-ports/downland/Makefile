AS      = lwasm
BUILD   = build
HSENABLE = ../../coco/high-score-enable/coco-high-score-enable

# Pristine Downland V1.0 disk (source of the game binary; never modified).
SOURCE_DSK ?= /tnfs/coco/DOWNLAND.DSK

.PHONY: all clean deploy

all: $(BUILD)/DOWNLAND-HS.DSK

$(BUILD):
	mkdir -p $(BUILD)

# High-score module ($E030+), plus symbol dump for the patcher.
$(BUILD)/hiscore.bin: hiscore.asm | $(BUILD)
	$(AS) --6809 --format=raw --symbol-dump=$(BUILD)/hiscore.sym \
	      --list=$(BUILD)/hiscore.lst -o $@ hiscore.asm

# Pristine game binary extracted from the original disk.
$(BUILD)/DOWNLAND-ORIG.BIN: | $(BUILD)
	decb copy $(SOURCE_DSK),DOWNLAND.BIN $@

# Patched game: module spliced in, title hook, drive-capture EXEC stub.
$(BUILD)/DOWNLAND-HS.BIN: $(BUILD)/DOWNLAND-ORIG.BIN $(BUILD)/hiscore.bin patch-downland.py
	python3 patch-downland.py $(BUILD)/DOWNLAND-ORIG.BIN \
	        $(BUILD)/hiscore.bin $(BUILD)/hiscore.sym $@

$(HSENABLE):
	$(MAKE) -C ../../coco/high-score-enable

$(BUILD)/DOWNLAND-HS.DSK: $(BUILD)/DOWNLAND-HS.BIN $(HSENABLE)
	rm -f $@
	decb dskini $@
	decb copy -2 -b $(BUILD)/DOWNLAND-HS.BIN $@,DOWNLAND.BIN
	$(HSENABLE) $@ 34 18 1
	chmod 666 $@

deploy: $(BUILD)/DOWNLAND-HS.DSK
	cp $(BUILD)/DOWNLAND-HS.DSK /tnfs/coco/DOWNLAND-HS.DSK
	chmod 666 /tnfs/coco/DOWNLAND-HS.DSK

clean:
	rm -rf $(BUILD)
