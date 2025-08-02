/**
 * Set high-score-mode bytes in ATR file
 */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

int high_score_enable(char *atr, unsigned short start, unsigned char len)
{
  FILE *f = fopen(atr,"r+");
  unsigned char id[2];
 
  if (!f)
    {
      perror("error opening file.");
      return 1;
    }

  fread(&id,sizeof(unsigned char),2,f);

  if ((id[0] != 0x96) || (id[1] != 0x02))
    {
      printf("Not a valid ATR file. Aborting.\n");
      fclose(f);
      return 1;
    }

  fseek(f,0x0C,SEEK_SET);

  fwrite(&len,sizeof(unsigned char),1,f);
  fwrite(&start,sizeof(unsigned short),1,f);

  fclose(f);

  return 0;
}

int main(int argc, char* argv[])
{
  if (argc < 4)
    {
      printf("%s <file.atr> <starting sector> <number of sectors>\n",argv[0]);
      return 1;
    }

  return high_score_enable(argv[1],atoi(argv[2]),atoi(argv[3]));
}
