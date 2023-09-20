/**
 * Grab high score from Dropzone, write to HTML
 *
 * Linux required. (uses inotify)
 * 
 * @author  Thomas Cherryhomes, Jeff Potter
 * @email   thom dot cherryhomes at gmail dot com
 * @license gpl v. 3
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

#define EVENT_SIZE ( sizeof(struct inotify_event) )
#define EVENT_BUF_LEN ( 1024 * ( EVENT_SIZE + NAME_MAX ) )

#define DROPZONE_SEEK_POS (0x16719)

#define LINE_WIDTH 20

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

void drop(char *atr, char *html)
{
  
  FILE *fa, *fh;
  int i, j, offset;
  uint8_t k, l;
  char oneline[20];         // chars in an html line
  uint8_t buf[4][9];        // as many chars as ever received
  uint8_t initials[3][9];   // initials per entry
  uint32_t hiscore[9];      // score in integer 0-9,999,999
  uint32_t inames[2];       // individual names, stored as uint
  char hiscname[9][4];      // array of names, char
  uint8_t inserthere;       // result of compare of new score

  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa, DROPZONE_SEEK_POS,SEEK_SET);

  fread(buf, sizeof(unsigned char), sizeof(buf), fa);
  fread(initials, sizeof(char), sizeof(initials), fa);
  /*
    00 00 00 00 00 00 00 00 00  7 digit scores
    00 00 00 00 00 00 00 00 00         |
    29 22 19 18 16 16 15 11 13         |
    30 80 30 30 80 80 80 30 80         V
    77 67 7A 61 66 78 74 76 75  3 char. initials
    62 68 71 77 74 73 68 69 62         |
    65 65 6C 72 63 65 75 74 67         V
    |-------------------| ^  ^
    <Previous Highest 7 > |  |
    Previous lowest score |  |
    Newest score to be added |
  */

  // convert their BCD to Hex

  for (i=0; i<4; i++)     // down the rows
  {
    for (j=0; j<9; j++)   // across the columns
    {
      k = buf[i][j] & 0x0f;
      l = buf[i][j] >> 4;
  //   printf( "%2x ", (10 * l) + k);
      buf[i][j] = (10 * l) + k;
    }
  //  printf("\n");
  } 

//  printf("\n");

  /* Process scores */
  for (j=0; j<9; j++)     // across the columns
  {
    hiscore[j] = (((((buf[0][j] * 100) + buf[1][j]) * 100) 
      + buf[2][j]) * 100 + buf[3][j]);
  //  printf("hiscore: %'10d \n", hiscore[j]);
  }

  /* By score comparison, find where newest one will be placed */
  inserthere = 8;
  for (i=0; i<9; i++)
  {
    if (hiscore[8] > hiscore[i]) 
    {
      inserthere = i;
      break;    // be sure to quit on first one
    }
  }

//  printf("The value of inserthere: %d\n", inserthere);

  // Process initials

//  printf("\n");

  for (j=0; j<9; j++)   // down the rows
  {     // first change lower case to upper case with & 0x5f
    inames[0] = (initials[0][j] & 0x5f)      |
                (initials[1][j] & 0x5f) << 8 |
                (initials[2][j] & 0x5f) << 16;
    inames[1] = 0;
    char *s = (char *)inames;
//    printf("  Name: %s\n", s);
    strcpy(hiscname[j], s);
  }

//  printf("\n");
  
  /* start html */
  printf("Writing new dropzone.html\n");

  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Atari Dropzone High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"dropzone.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  offset=0; /* buffer start for hi scores */

  fprintf(fh,"\n==== TOP SCORES ====\n\n");
  
  j = 1;
  for (i=0; i<7; i++)
  {
    if (inserthere == i) 
    {
      // print the new entry here
      fprintf(fh, " %d. ", j);
      fprintf(fh, " %7d ", hiscore[8]);
      fprintf(fh, "*%s*", hiscname[8]);
      fprintf(fh, " \n");
      j++;
    }
    fprintf(fh, " %d. ", j);
    fprintf(fh, " %7d ", hiscore[i]);
    fprintf(fh, " %s", hiscname[i]);
    fprintf(fh, " \n");
    j++;
  }

  fprintf(fh,"\n");
  fprintf(fh,"  </pre>\n");
  fprintf(fh," </body>\n");
  fprintf(fh,"</html>\n");
  
  fclose(fh);
  fclose(fa);
}

int main(int argc, char *argv[])
{
  if (argc < 3)
    {
      printf("%s <path-to-drop-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  drop(argv[1],argv[2]);

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
      goto bye2;
    }

  // Set for non-blocking
  fcntl (inotify_fd, F_SETFL, fcntl (inotify_fd, F_GETFL) | O_NONBLOCK);
  
  while (!ctrlc)
    {
      int i;
      
      inotify_event_len = read(inotify_fd, event_buffer, EVENT_BUF_LEN);

      i=0;

      if (inotify_event_len < 0)
      {
        usleep(100000);
        continue;
      }
      
      while (i < inotify_event_len)
      {
        struct inotify_event *event = ( struct inotify_event * ) &event_buffer[ i ];

        drop(argv[1],argv[2]);

        i += EVENT_SIZE + event->len;
      }                   
    }

  // ctrl-C or termination, close it off.

    printf("Exiting %s\n",argv[0]);
  bye:
    inotify_rm_watch(inotify_fd,inotify_wd);
  bye2:
    close(inotify_fd);

  return 0;

}
