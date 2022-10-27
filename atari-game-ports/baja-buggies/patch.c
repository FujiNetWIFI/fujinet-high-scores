/**
 * Patch Baja Buggies to add score code.
 * @author  Thomas Cherryhomes
 * @email   thom dot cherryhomes at gmail dot com
 * @license gpl v. 3
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define SEEK_POS 0x19 /* Right after JMP $0506 in Sector 1 */
#define JUMP_POS 0x45EC /* Replacing the 38DF */

#define MAX_PATCH_SIZE 115

char sectorBuf[MAX_PATCH_SIZE];

const char jump[2]={0x89,0x04};

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

  if (fseek(afp,SEEK_POS,SEEK_SET))
    {
      perror("Could not seek to ATR sector");
      fclose(afp);
      fclose(bfp);
      return 1;
    }

  len = fread(&sectorBuf[0],sizeof(char),sizeof(sectorBuf),bfp);

  fclose(bfp);
  
  fwrite(&sectorBuf[0],sizeof(char),MAX_PATCH_SIZE,afp);

  // Patch 0x45EC to jump to our new routine
  fseek(afp,JUMP_POS,SEEK_SET);
  fwrite(&jump[0],sizeof(const char),sizeof(jump),afp);
  
  fclose(afp);

  // Done.
  return 0;
}

