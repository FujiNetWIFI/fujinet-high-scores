/**
 * Patch Miner 2049er to add score code.
 * @author  Thomas Cherryhomes
 * @email   thom dot cherryhomes at gmail dot com
 * @license gpl v. 3
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define XEX_END 0x38EF // End of XEX file, minus the $02E2 segment.

#define JUMP_READ_POS1 0x186B
#define JUMP_READ_POS2 0x1A17
#define JUMP_WRITE_POS1 0x1E4B

unsigned char sectorBuf[256];

const char jump_read[3]={0x4C,0x00,0x59};
const char jump_write[3]={0x4C,0x00,0x5A};

int main(int argc, char *argv[])
{
  FILE *afp;
  FILE *bfp;
  FILE *cfp;
  size_t len;
  
  if (argc<4)
    {
      printf("%s <atr-file> <read-bin-file> <write-bin-file>\n",argv[0]);
      return 1;
    }

  afp = fopen(argv[1],"r+");

  if (!afp)
    {
      perror("Could not open ATR file");
      return 1; // Bail.
    }

  bfp = fopen(argv[2],"r");

  if (!bfp)
    {
      perror("Could not open READ.BIN file");
      fclose(afp);
      return 1; // Bail.
    }

  cfp = fopen(argv[3],"r");

  if (!cfp)
    {
      perror("Could not open WRITE.BIN file");
      fclose(afp);
      fclose(bfp);
      return 1; // Bail.
    }

  // Everything open, seek and patch. First, the jumps into our code.

  fseek(afp,JUMP_READ_POS1,SEEK_SET);
  fwrite(&jump_read[0],sizeof(const char),sizeof(jump_read),afp);

  fseek(afp,JUMP_READ_POS2,SEEK_SET);
  fwrite(&jump_read[0],sizeof(const char),sizeof(jump_read),afp);

  fseek(afp,JUMP_WRITE_POS1,SEEK_SET);
  fwrite(&jump_write[0],sizeof(const char),sizeof(jump_write),afp);

  // Now the read and write code. Go ahead and skip over the first two bytes on both files
  // and seek to the end of the game on ATR
  fseek(afp,XEX_END,SEEK_SET);
  fseek(bfp,2,SEEK_SET);
  fseek(cfp,2,SEEK_SET);

  len = fread(&sectorBuf[0],sizeof(unsigned char),sizeof(sectorBuf),bfp);
  fwrite(&sectorBuf[0],sizeof(unsigned char),len,afp);
  
  len = fread(&sectorBuf[0],sizeof(unsigned char),sizeof(sectorBuf),cfp);
  fwrite(&sectorBuf[0],sizeof(unsigned char),len,afp);

  // close everything.
  
  fclose(cfp);
  fclose(bfp);
  fclose(afp);

  // Done.

  return 0;
}

