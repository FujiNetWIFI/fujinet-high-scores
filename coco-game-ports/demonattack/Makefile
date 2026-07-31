AS      = lwasm
BUILD   = build
HSENABLE = ../../coco/high-score-enable/coco-high-score-enable

# Pristine Demon Attack (Tandy) disk (source of the game binary; never modified).
SOURCE_DSK ?= /home/richstephens/fujinet-pc-COCO/SD/Demon Attack (Tandy).DSK

.PHONY: all clean

all: $(BUILD)/DEMONATTACK-HS.DSK

$(BUILD):
	mkdir -p $(BUILD)

# Real module, assembled to run at $8000 (copied there at runtime by the
# stage0 stub), plus symbol dump for the patcher.
$(BUILD)/hiscore.bin: hiscore.asm | $(BUILD)
	$(AS) --6809 --format=raw --symbol-dump=$(BUILD)/hiscore.sym \
	      --list=$(BUILD)/hiscore.lst -o $@ hiscore.asm

# Stage0 stub, assembled to load/run at $3000 (LOADM-safe).
$(BUILD)/hiscore-stage0.bin: hiscore-stage0.asm | $(BUILD)
	$(AS) --6809 --format=raw --symbol-dump=$(BUILD)/hiscore-stage0.sym \
	      --list=$(BUILD)/hiscore-stage0.lst -o $@ hiscore-stage0.asm

# Pristine game binary extracted from the original disk.
$(BUILD)/DEMON-ORIG.BIN: | $(BUILD)
	decb copy "$(SOURCE_DSK)",DEMON.BIN $@

# Patched game: stage0 + real module spliced in, per-frame hook.
$(BUILD)/DEMON-HS.BIN: $(BUILD)/DEMON-ORIG.BIN $(BUILD)/hiscore.bin $(BUILD)/hiscore-stage0.bin patch-demonattack.py
	python3 patch-demonattack.py $(BUILD)/DEMON-ORIG.BIN \
	        $(BUILD)/hiscore-stage0.bin $(BUILD)/hiscore-stage0.sym \
	        $(BUILD)/hiscore.bin $(BUILD)/hiscore.sym $@

$(HSENABLE):
	$(MAKE) -C ../../coco/high-score-enable

$(BUILD)/DEMONATTACK-HS.DSK: $(BUILD)/DEMON-HS.BIN $(HSENABLE)
	rm -f $@
	decb dskini $@
	decb copy -2 -b $(BUILD)/DEMON-HS.BIN $@,DEMON.BIN
	$(HSENABLE) $@ 34 18 1
	chmod 666 $@

clean:
	rm -rf $(BUILD)
