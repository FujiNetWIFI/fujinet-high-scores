/**
 * Set high-score-enable marker in a CoCo JVC/DSK image.
 *
 * A JVC disk has no file header to carry metadata (and changing the file
 * size breaks the JVC header-length convention), so the marker lives inside
 * the image, in a sector Disk BASIC never uses: track 17, sector 18 (the
 * directory track only uses sectors 1-11).
 *
 * Marker sector layout:
 *   +0  "FNHS"                magic
 *   +4  1                     version
 *   +5  N                     number of ranges
 *   +6  N x 4 bytes:          LSN start (16-bit BE), sector count (16-bit BE)
 *
 * FujiNet firmware that understands the marker allows writes to the listed
 * sectors even when the disk is mounted read-only, exactly like the Atari
 * ATR high-score-enable header.
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define SECTORS_PER_TRACK 18
#define SECTOR_SIZE 256
#define MARKER_LSN (17 * SECTORS_PER_TRACK + 17)   /* track 17, sector 18 */

int high_score_enable(const char *dsk, int track, int sector, int count)
{
  unsigned char buf[SECTOR_SIZE];
  long size;
  int lsn = track * SECTORS_PER_TRACK + (sector - 1);
  FILE *f = fopen(dsk, "r+b");

  if (!f)
    {
      perror("error opening file");
      return 1;
    }

  fseek(f, 0, SEEK_END);
  size = ftell(f);

  if (size % SECTOR_SIZE != 0)
    {
      printf("Not a headerless JVC/DSK image (size %% 256 != 0). Aborting.\n");
      fclose(f);
      return 1;
    }

  if ((long)(lsn + count) * SECTOR_SIZE > size ||
      (long)(MARKER_LSN + 1) * SECTOR_SIZE > size)
    {
      printf("Sector range outside image. Aborting.\n");
      fclose(f);
      return 1;
    }

  memset(buf, 0, sizeof(buf));
  memcpy(buf, "FNHS", 4);
  buf[4] = 1;                       /* version */
  buf[5] = 1;                       /* one range */
  buf[6] = (lsn >> 8) & 0xFF;
  buf[7] = lsn & 0xFF;
  buf[8] = (count >> 8) & 0xFF;
  buf[9] = count & 0xFF;

  fseek(f, (long)MARKER_LSN * SECTOR_SIZE, SEEK_SET);
  fwrite(buf, 1, sizeof(buf), f);
  fclose(f);

  printf("Marked track %d sector %d (%d sector%s, LSN %d) high-score writable.\n",
         track, sector, count, count == 1 ? "" : "s", lsn);
  return 0;
}

int main(int argc, char *argv[])
{
  if (argc < 5)
    {
      printf("%s <file.dsk> <track> <sector> <number-of-sectors>\n", argv[0]);
      return 1;
    }

  return high_score_enable(argv[1], atoi(argv[2]), atoi(argv[3]), atoi(argv[4]));
}
