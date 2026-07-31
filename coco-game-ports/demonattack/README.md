# demonattack (Tandy Color Computer)

FujiNet High Score support for **Demon Attack** (Imagic, 1984 / licensed to
Tandy), patched into the original disk binary.

The CoCo talks to FujiNet over DriveWire. A `.dsk` mounted read-write — or
served read-only with the high-score marker — persists sector writes, so the
game saves its top-10 table with a plain Disk BASIC `DSKCON` write and a
server-side scraper can publish it.

## How it works

No source exists, so `patch-demonattack.py` splices a module (`hiscore.asm`)
into the stock `DEMON.BIN`. The stock binary loads at `$3FCC` and its own
bootstrap copies `$4000-$7F00` up to `$C000-$FF00`, so run addresses are load
addresses plus `$8000`.

The game uses all of low RAM during round setup, so the module can't simply
live in the load image. Instead a stage0 stub loads at `$3000`, runs once from
the first hook call, copies the module to **$8000** (untouched by the
bootstrap) and the DSKCON trampoline to **$4100**, then repatches the live
hook to jump straight to `$8000` from then on.

Four hooks:

* **`$C0DA`** (`Hook`) — on the reset/title path, right after the screen
  clear. Does the one-shot relocation, and on later resets clears
  `ShowPrompt`, since reaching it again means a game is starting.
* **`$C224`** (`FreezeHook`) — top of the main loop. While an overlay is
  displayed it rewrites its own return address to the loop tail at `$C2FA`,
  skipping the frame's game logic so the animation stops and the overlay
  needs no redrawing. It must return to `$C2FA` and not straight to the
  `SYNC` at `$C305`: `$C300` re-enables the PIA field-sync interrupt that
  `$C222` disabled, and `SYNC` waits forever without it. It also rewrites
  `$FF22` from `<02` each frozen frame, because the loop's own write at
  `$C243` is being skipped and a flash frame would otherwise latch the wrong
  colour set.
* **`$C302`** (`PromptHook`) — the last instruction before `SYNC`, so it draws
  after the game has painted the frame. Draws the `H: HIGH SCORES` prompt and
  owns both overlays.
* **`$CA2C`** (`GameOverHook`) — the tail of the game's own game-over test
  (`$CA19`: player 1 out of lives, and in a two-player game player 2 as well).
  Reached only when every active player is out. The score at `$000B` is still
  live here — it isn't cleared until `$C080` runs at the *next* game start —
  so this records the final round even if the player never plays again.

A qualifying score prompts for a **name** (up to 8 characters) before anything
is written; the table is re-read at that point so another player's entry
posted while typing isn't clobbered. Pressing **H** at the title shows the
**top-10 table**, dismissed by any key or either joystick button.

Also patched, unrelated to scoring:

* `$D184`/`$D1F5` — both joystick button reads go through `BtnMerge`, so
  either stick's button works in a one-player game. Two-player games keep
  their own buttons.
* `$D1D2` — the single-stick axis read becomes `JoyRead`, which samples both
  sticks and uses whichever is off centre. Again one-player only.
* `SafeDSKCON` clears SAM R1 (`$FFD8`) after every transfer. HDB-DOS sets
  `$FFD9` (1.78MHz) on a CoCo 3 for each DriveWire transfer and never restores
  it; the game clears both speed bits at `$C021`/`$C024` but only once, during
  startup, so any later disk access leaves the machine fast and the audio
  distorted.

`font.asm` is a 3x5 font lifted from the title bitmap at `$F7D5` — the game
has no character generator, its title lettering is baked into that image. The
glyphs present there were extracted directly; the rest were drawn to match.

## Score sector

Track 34, sector 18 (file offset 161024):

```
+0   "DAHS"            signature
+4   1                 version
+5   reserved (11 bytes)
+16  10 entries x 16 bytes: [8 name][7 score digits][1 pad], best first
```

Names and digits are plain ASCII, so the sector reads directly as text. The
scraper in `../../coco/demonattack/` renders it for scores.irata.online.

The dummy read before each real read must land **far** from the score sector
and must **not** be LSN 0 — see `ReadSector` in `hiscore.asm`. Reads are served
from a buffered block, so a nearby sector evicts nothing, and block 0 alone
trips a `_media_last_block + 1` wraparound in the FujiNet media layer after a
write.

## Build and deploy

Requirements: `lwasm` (LWTOOLS), `decb` (Toolshed), `python3`, and a pristine
`Demon Attack (Tandy).DSK`.

```sh
make                # -> build/DEMONATTACK-HS.DSK  (SOURCE_DSK=... to override)
```

Mount `DEMONATTACK-HS.DSK` via the FujiNet config program and `RUNM"DEMON`.
The build marks the score sector high-score-writable (see
`../../coco/high-score-enable/`), so a read-only mount still persists it;
otherwise mount read-write.

Note that rebuilding runs `decb dskini` and produces an image with an **empty**
table — keep the deployed image if you want to preserve scores.
