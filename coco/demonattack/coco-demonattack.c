/**
 * coco-demonattack - Demon Attack (Tandy Color Computer) high score scraper
 *
 * Watches DEMONATTACK-HS.DSK and renders the DAHS score sector as an
 * HTML/SVG scoreboard styled after the game's own title screen: the real
 * title artwork, moon and ground blitted straight out of the game ROM, the
 * game's own lettering, and simulated NTSC artifact colors on black.
 *
 * Linux required. (uses inotify)
 *
 * Score sector: track 34, sector 18 (file offset 161024).
 *   +0  "DAHS", +4 version(1), +5..15 reserved
 *   +16 ten 16-byte entries: [8 name][7 score digits][1 pad], plain ASCII
 */

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/inotify.h>
#include <signal.h>
#include <unistd.h>
#include <fcntl.h>
#include <linux/limits.h>

#include "demonattack_gfx.h"

#define EVENT_SIZE ( sizeof(struct inotify_event) )
#define EVENT_BUF_LEN ( 1024 * ( EVENT_SIZE + NAME_MAX ) )

#define SECTOR_OFFSET 161024L
#define NENTRY 10

/* PMODE4-style framebuffer: 256x192, rendered as 128 artifact cells/row.
 * Cell values: 0 black, 1 blue (01), 2 orange (10), 3 white (11). */
#define W 128
#define H 192
static uint8_t cells[H][W];

#define ORANGE "#e8641c"
#define BLUE   "#2a6df4"
#define WHITE  "#f8f8f8"

static volatile bool ctrlc = false;
static void setctrlc(int dummy) { (void)dummy; ctrlc = true; }

static void cell(int cx, int y, uint8_t v)
{
  if (cx >= 0 && cx < W && y >= 0 && y < H)
    cells[y][cx] = v;
}

/* Blit a ROM bitmap: each byte is 8 pixels = 4 artifact cells, each cell a
 * two-bit pair, exactly as the VDG reads it. A non-zero colour overrides the
 * bitmap's own pairs, so a shape can be recoloured (the moon outline). */
static void blit(const unsigned char *src, int w, int h, int row, int col,
                 uint8_t colour)
{
  for (int r = 0; r < h; r++)
    for (int c = 0; c < w; c++)
      {
        uint8_t b = src[r * w + c];
        for (int p = 0; p < 4; p++)
          {
            uint8_t v = (b >> (6 - p * 2)) & 3;
            if (v)
              cell((col + c) * 4 + p, row + r, colour ? colour : v);
          }
      }
}

/* glyph index for an ASCII character (see demonattack_gfx.h) */
static int code_for(char c)
{
  if (c >= 'A' && c <= 'Z') return 1 + c - 'A';
  if (c >= 'a' && c <= 'z') return 1 + c - 'a';
  if (c >= '0' && c <= '9') return 27 + c - '0';
  if (c == '.') return 37;
  if (c == ':') return 38;
  return 0; /* space */
}

/* One glyph: 3 logical columns wide, 5 rows, one cell per lit column.
 * Characters sit 4 cells apart, matching the 8-pixel cell the game uses. */
static void glyph(int cx, int y, int code, uint8_t colour)
{
  for (int r = 0; r < 5; r++)
    {
      uint8_t row = da_font[code * 5 + r];
      for (int c = 0; c < 3; c++)
        if (row & (4 >> c))
          cell(cx + c, y + r, colour);
    }
}

static void text(int cx, int y, const char *s, uint8_t colour)
{
  for (; *s; s++, cx += 4)
    glyph(cx, y, code_for(*s), colour);
}

static void render(const uint8_t *sec, FILE *fh)
{
  char line[40];
  bool valid = (memcmp(sec, "DAHS", 4) == 0) && sec[4] == 1;

  memset(cells, 0, sizeof(cells));

  /* The game's own high-score screen: ground exactly as it draws it, and
   * the moon outline bottom right, recoloured to artifact blue. */
  blit(da_ground, DA_GROUND_W, DA_GROUND_H, DA_GROUND_ROW, 0, 0);
  blit(da_ground, DA_GROUND_W, DA_GROUND_H, DA_GROUND_ROW, DA_GROUND_W, 0);
  blit(da_moon,   DA_MOON_W,   DA_MOON_H,   DA_MOON_ROW,   DA_MOON_COL, 1);

  /* Same positions the game uses: header row 28 col 10, entries from row 44
   * col 6, six scanlines apart. */
  text(4 * 10, 28, "HIGH SCORES", 3);

  for (int i = 0; i < NENTRY; i++)
    {
      char name[9], score[8];
      const uint8_t *e = sec + 16 + i * 16;

      for (int j = 0; j < 8; j++)
        {
          char c = valid ? (char)e[j] : 0;
          name[j] = (c >= 'A' && c <= 'Z') ? c : ' ';
        }
      name[8] = 0;
      for (int j = 0; j < 7; j++)
        {
          char c = valid ? (char)e[8 + j] : 0;
          score[j] = (c >= '0' && c <= '9') ? c : '0';
        }
      score[7] = 0;

      snprintf(line, sizeof(line), "%2d %s %s", i + 1, name, score);
      text(4 * 6, 44 + i * 6, line, 3);
    }

  /* page */
  fprintf(fh, "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n");
  fprintf(fh, " <title>Demon Attack High Scores</title>\n");
  fprintf(fh, " <meta charset=\"utf-8\"/>\n");
  fprintf(fh, " <meta http-equiv=\"refresh\" content=\"30\"/>\n");
  fprintf(fh, " <link rel=\"stylesheet\" type=\"text/css\" href=\"coco-demonattack.css\" media=\"screen\"/>\n");
  fprintf(fh, "</head>\n<body>\n");
  fprintf(fh, "<svg viewBox=\"0 0 256 192\" shape-rendering=\"crispEdges\" xmlns=\"http://www.w3.org/2000/svg\">\n");
  fprintf(fh, "<rect width=\"256\" height=\"192\" fill=\"#000\"/>\n");

  /* run-length encode each row of artifact cells */
  for (int y = 0; y < H; y++)
    for (int x = 0; x < W; )
      {
        uint8_t v = cells[y][x];
        int x0 = x;
        while (x < W && cells[y][x] == v) x++;
        if (v)
          fprintf(fh, "<rect x=\"%d\" y=\"%d\" width=\"%d\" height=\"1\" fill=\"%s\"/>\n",
                  x0 * 2, y, (x - x0) * 2,
                  v == 2 ? ORANGE : (v == 3 ? WHITE : BLUE));
      }

  fprintf(fh, "</svg>\n</body>\n</html>\n");
}

static bool write_page(const char *dsk, const char *html)
{
  uint8_t sec[256];
  int fd = open(dsk, O_RDONLY);
  FILE *fh;

  if (fd < 0)
    {
      fprintf(stderr, "coco-demonattack: %s: %s\n", dsk, strerror(errno));
      return false;
    }
  if (pread(fd, sec, sizeof(sec), SECTOR_OFFSET) != (ssize_t)sizeof(sec))
    {
      fprintf(stderr, "coco-demonattack: %s: short read\n", dsk);
      close(fd);
      return false;
    }
  close(fd);

  fh = fopen(html, "w");
  if (!fh)
    {
      fprintf(stderr, "coco-demonattack: %s: %s\n", html, strerror(errno));
      return false;
    }
  render(sec, fh);
  fclose(fh);
  return true;
}

int main(int argc, char *argv[])
{
  char buf[EVENT_BUF_LEN];
  int fd, wd;

  if (argc < 3)
    {
      printf("%s <path-to-DEMONATTACK-HS.DSK> <path-to-output-html>\n", argv[0]);
      return 1;
    }

  signal(SIGINT, setctrlc);
  signal(SIGTERM, setctrlc);

  fd = inotify_init();
  if (fd < 0)
    {
      perror("inotify_init");
      return 1;
    }
  wd = inotify_add_watch(fd, argv[1], IN_MODIFY);
  if (wd < 0)
    {
      fprintf(stderr, "coco-demonattack: watch %s: %s\n", argv[1], strerror(errno));
      return 1;
    }

  write_page(argv[1], argv[2]);   /* render once at startup */

  while (!ctrlc)
    {
      int len = read(fd, buf, EVENT_BUF_LEN);
      if (len <= 0)
        continue;
      for (int i = 0; i < len; )
        {
          struct inotify_event *ev = (struct inotify_event *)&buf[i];
          if (ev->mask & IN_MODIFY)
            write_page(argv[1], argv[2]);
          i += EVENT_SIZE + ev->len;
        }
    }

  inotify_rm_watch(fd, wd);
  close(fd);
  return 0;
}
