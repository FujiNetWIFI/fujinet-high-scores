/**
 * coco-downland - Downland (Tandy Color Computer) high score scraper
 *
 * Watches DOWNLAND-HS.DSK and renders the DLHS score sector as an
 * HTML/SVG scoreboard styled after the game itself: the real Downland
 * character font, simulated NTSC artifact colors (orange/blue on black)
 * and a cave-style border like the title screen.
 *
 * Linux required. (uses inotify)
 *
 * Score sector: track 34, sector 18 (file offset 161024).
 *   +0  "DLHS", +4 version(2), +5..15 reserved
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

#include "downland_font.h"

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

/* font code for an ASCII character (see downland_font.h) */
static int code_for(char c)
{
  if (c >= '0' && c <= '9') return c - '0';
  if (c >= 'A' && c <= 'Z') return 10 + c - 'A';
  if (c >= 'a' && c <= 'z') return 10 + c - 'a';
  if (c == ':') return 37;
  if (c == '.') return 38;
  return 36; /* space */
}

/* Draw one glyph at artifact cell cx (4 cells wide), pixel row y.
 * The font stores one artifact cell per '11' bit pair. */
static void glyph(int cx, int y, int code, int scale)
{
  for (int r = 0; r < 7; r++)
    {
      uint8_t row = dl_font[code * 7 + r];
      for (int c = 0; c < 4; c++)
        if (row & (0xC0 >> (c * 2)))
          for (int sx = 0; sx < scale; sx++)
            for (int sy = 0; sy < scale; sy++)
              cell(cx + c * scale + sx, y + r * scale + sy, 2);
    }
}

static void text(int cx, int y, const char *s, int scale)
{
  for (; *s; s++, cx += 4 * scale)
    glyph(cx, y, code_for(*s), scale);
}

/* Cave-style border, echoing the title screen. */
static void border(void)
{
  int cx, y;

  for (cx = 3; cx <= 124; cx++)          /* jagged ceiling (stalactites) */
    {
      int t = cx % 12;
      int dy = (t < 6) ? t : 12 - t;
      cell(cx, 5 + dy, 2);
      cell(cx, 6 + dy, 2);
    }
  for (cx = 3; cx <= 124; cx++)          /* jagged floor (stalagmites) */
    {
      int t = cx % 16;
      int dy = (t < 8) ? t / 2 : (16 - t) / 2;
      cell(cx, 185 - dy, 2);
    }
  for (y = 5; y <= 185; y++)             /* wavy side walls */
    {
      int t = y % 28;
      int dx = (t < 14) ? t / 5 : (28 - t) / 5;
      cell(3 + dx, y, 2);
      cell(4 + dx, y, 2);
      cell(124 - dx, y, 2);
      cell(123 - dx, y, 2);
    }

  /* a few of the game's white drops */
  static const int drops[][2] = { {16,60}, {112,90}, {14,130}, {112,150}, {64,45} };
  for (unsigned i = 0; i < sizeof(drops)/sizeof(drops[0]); i++)
    {
      cell(drops[i][0], drops[i][1], 3);
      cell(drops[i][0], drops[i][1] + 1, 3);
    }
}

static void render(const uint8_t *sec, FILE *fh)
{
  char line[32];
  bool valid = (memcmp(sec, "DLHS", 4) == 0) && sec[4] == 2;

  memset(cells, 0, sizeof(cells));
  border();

  text(32, 14, "DOWNLAND", 2);
  text(42, 34, "HIGH SCORES", 1);

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
      text(26, 52 + i * 11, line, 1);
    }

  /* page */
  fprintf(fh, "<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n");
  fprintf(fh, " <title>Downland High Scores</title>\n");
  fprintf(fh, " <meta charset=\"utf-8\"/>\n");
  fprintf(fh, " <meta http-equiv=\"refresh\" content=\"30\"/>\n");
  fprintf(fh, " <link rel=\"stylesheet\" type=\"text/css\" href=\"coco-downland.css\" media=\"screen\"/>\n");
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

static void scrape(const char *dsk, const char *html)
{
  uint8_t sec[256];
  FILE *fd, *fh;

  fd = fopen(dsk, "rb");
  if (!fd)
    {
      perror("open dsk");
      return;
    }
  memset(sec, 0, sizeof(sec));
  fseek(fd, SECTOR_OFFSET, SEEK_SET);
  fread(sec, 1, sizeof(sec), fd);
  fclose(fd);

  fh = fopen(html, "w");
  if (!fh)
    {
      perror("open html");
      return;
    }
  render(sec, fh);
  fclose(fh);
  printf("Updated %s\n", html);
}

int main(int argc, char *argv[])
{
  int inotify_fd, inotify_wd, len;
  char event_buffer[EVENT_BUF_LEN];

  if (argc < 3)
    {
      printf("%s <path-to-DOWNLAND-HS.DSK> <path-to-output-html>\n", argv[0]);
      return 1;
    }

  scrape(argv[1], argv[2]);

  signal(SIGINT, setctrlc);
  signal(SIGTERM, setctrlc);

  inotify_fd = inotify_init();
  if (inotify_fd < 0)
    {
      perror("inotify_init");
      return 1;
    }

  inotify_wd = inotify_add_watch(inotify_fd, argv[1], IN_MODIFY);
  if (inotify_wd == -1)
    {
      perror("inotify_add_watch");
      close(inotify_fd);
      return 1;
    }

  fcntl(inotify_fd, F_SETFL, fcntl(inotify_fd, F_GETFL) | O_NONBLOCK);

  while (!ctrlc)
    {
      len = read(inotify_fd, event_buffer, EVENT_BUF_LEN);
      if (len < 0)
        {
          usleep(100000);
          continue;
        }
      for (int i = 0; i < len; )
        {
          struct inotify_event *event = (struct inotify_event *)&event_buffer[i];
          scrape(argv[1], argv[2]);
          i += EVENT_SIZE + event->len;
        }
    }

  printf("Exiting %s\n", argv[0]);
  inotify_rm_watch(inotify_fd, inotify_wd);
  close(inotify_fd);
  return 0;
}
