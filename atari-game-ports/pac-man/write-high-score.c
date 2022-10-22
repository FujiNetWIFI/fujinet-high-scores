/**
 * write-high-score - Takes <binfile> and writes to sector 720 of <atr>
 *
 * @author:  Thomas Cherryhomes
 * @email:   thom dot cherryhomes at gmail dot com
 * @license: gpl v. 3
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SEEK_POS 0x16710 // sector 0x2CF

char sectorBuf[256];

int main(int argc, char *argv[])
{
  FILE *afp; FILE *bfp;
  size_t len;
  
  if (argc<3)
    {
      printf("%s <atr-file> <bin-file>\n",argv[0]);
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
      perror("Could not open BIN file");
      fclose(afp);
      return 1; // Bail.
    }

  if (!fseek(afp,SEEK_POS,SEEK_SET))
    {
      perror("Could not seek to ATR sector");
      fclose(afp);
      fclose(bfp);
      return 1;
    }

  len = fread(&sectorBuf[0],sizeof(char),sizeof(sectorBuf),bfp);

  if (len != sizeof(sectorBuf))
    {
      perror("Could not read BIN file");
      fclose(afp);
      fclose(bfp);
      return 1;
    }

  fclose(bfp);
  
  fwrite(&sectorBuf[0],sizeof(char),sizeof(sectorBuf),afp);

  fclose(afp);

  // Done.
  return 0;
}
