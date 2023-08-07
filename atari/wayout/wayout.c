/**
 * Grab high score from Way Out, write to HTML
 *
 * Linux required. (uses inotify)
 * 
 * @author  Thomas Cherryhomes
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

#define WAYOUT_SEEK_POS 0x5410 

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

typedef struct _wayoutRecord
{
  char initials[3];
  char times[4];
} WayoutRecord;

WayoutRecord mazes[26];

const char *mazeNames[26] =
  {
    "INTRO",
    "NOVA",
    "GARDEN",
    "SPIRAL",
    "PARK",
    "DOWNTOWN",
    "SANCTUM",
    "WHEELS",
    "JOURNEY",
    "TOWERS",
    "LANTERN",
    "GALE",
    "MUTATION",
    "WEAVE",
    "LOOPS",
    "OFFICES",
    "BRICKS",
    "GRID",
    "SNAKES",
    "DIAMONDS",
    "LATTICE",
    "ROCKET",
    "WORMS",
    "TRACKS",
    "ENTROPY",
    "FLOWERS"
  };

void setctrlc(int dummy)
{
  ctrlc = true;
}

void wayout(char *atr, char *html)
{
  FILE *fa, *fh;
  int i, j;
  
  printf("Writing new wayout.html\n");
  
  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa,WAYOUT_SEEK_POS,SEEK_SET);

  fread(mazes,1,182,fa);

  // process initials, remove high bit.
  for (i=0;i<26;i++)
    for (j=0;j<3;j++)
      mazes[i].initials[j] &= 0x7F;

  // process times, remove high bit, and convert to ascii.
  for (i=0;i<26;i++)
    for (j=0;j<4;j++)
      mazes[i].times[j] &= 0x7F; // remove high bit

  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Way Out High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"wayout.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  fprintf(fh,"\n      ==== TOP WAYOUT SCORES ====\n\n");

  fprintf(fh,"A.%-8s %c%c%c %c%c%c%c N.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[0],mazes[0].initials[0],mazes[0].initials[1],mazes[0].initials[2],mazes[0].times[0],mazes[0].times[1],mazes[0].times[2],mazes[0].times[3],
	 mazeNames[13],mazes[13].initials[0],mazes[13].initials[1],mazes[13].initials[2],mazes[13].times[0],mazes[13].times[1],mazes[13].times[2],mazes[13].times[3]);

  fprintf(fh,"B.%-8s %c%c%c %c%c%c%c O.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[1],mazes[1].initials[0],mazes[1].initials[1],mazes[1].initials[2],mazes[1].times[0],mazes[1].times[1],mazes[1].times[2],mazes[1].times[3],
	 mazeNames[14],mazes[14].initials[0],mazes[14].initials[1],mazes[14].initials[2],mazes[14].times[0],mazes[14].times[1],mazes[14].times[2],mazes[14].times[3]);

  fprintf(fh,"C.%-8s %c%c%c %c%c%c%c P.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[2],mazes[2].initials[0],mazes[2].initials[1],mazes[2].initials[2],mazes[2].times[0],mazes[2].times[1],mazes[2].times[2],mazes[2].times[3],
	 mazeNames[15],mazes[15].initials[0],mazes[15].initials[1],mazes[15].initials[2],mazes[15].times[0],mazes[15].times[1],mazes[15].times[2],mazes[15].times[3]);

  fprintf(fh,"D.%-8s %c%c%c %c%c%c%c Q.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[3],mazes[3].initials[0],mazes[3].initials[1],mazes[3].initials[2],mazes[3].times[0],mazes[3].times[1],mazes[3].times[2],mazes[3].times[3],
	 mazeNames[16],mazes[16].initials[0],mazes[16].initials[1],mazes[16].initials[2],mazes[16].times[0],mazes[16].times[1],mazes[16].times[2],mazes[16].times[3]);

  fprintf(fh,"E.%-8s %c%c%c %c%c%c%c R.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[4],mazes[4].initials[0],mazes[4].initials[1],mazes[4].initials[2],mazes[4].times[0],mazes[4].times[1],mazes[4].times[2],mazes[4].times[3],
	 mazeNames[17],mazes[17].initials[0],mazes[17].initials[1],mazes[17].initials[2],mazes[17].times[0],mazes[17].times[1],mazes[17].times[2],mazes[17].times[3]);

  fprintf(fh,"F.%-8s %c%c%c %c%c%c%c S.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[5],mazes[5].initials[0],mazes[5].initials[1],mazes[5].initials[2],mazes[5].times[0],mazes[5].times[1],mazes[5].times[2],mazes[5].times[3],
	 mazeNames[18],mazes[18].initials[0],mazes[18].initials[1],mazes[18].initials[2],mazes[18].times[0],mazes[18].times[1],mazes[18].times[2],mazes[18].times[3]);

  fprintf(fh,"G.%-8s %c%c%c %c%c%c%c T.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[6],mazes[6].initials[0],mazes[6].initials[1],mazes[6].initials[2],mazes[6].times[0],mazes[6].times[1],mazes[6].times[2],mazes[6].times[3],
	 mazeNames[19],mazes[19].initials[0],mazes[19].initials[1],mazes[19].initials[2],mazes[19].times[0],mazes[19].times[1],mazes[19].times[2],mazes[19].times[3]);

  fprintf(fh,"H.%-8s %c%c%c %c%c%c%c U.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[7],mazes[7].initials[0],mazes[7].initials[1],mazes[7].initials[2],mazes[7].times[0],mazes[7].times[1],mazes[7].times[2],mazes[7].times[3],
	 mazeNames[20],mazes[20].initials[0],mazes[20].initials[1],mazes[20].initials[2],mazes[20].times[0],mazes[20].times[1],mazes[20].times[2],mazes[20].times[3]);

  fprintf(fh,"I.%-8s %c%c%c %c%c%c%c V.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[8],mazes[8].initials[0],mazes[8].initials[1],mazes[8].initials[2],mazes[8].times[0],mazes[8].times[1],mazes[8].times[2],mazes[8].times[3],
	 mazeNames[21],mazes[21].initials[0],mazes[21].initials[1],mazes[21].initials[2],mazes[21].times[0],mazes[21].times[1],mazes[21].times[2],mazes[21].times[3]);

  fprintf(fh,"J.%-8s %c%c%c %c%c%c%c W.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[9],mazes[9].initials[0],mazes[9].initials[1],mazes[9].initials[2],mazes[9].times[0],mazes[9].times[1],mazes[9].times[2],mazes[9].times[3],
	 mazeNames[22],mazes[22].initials[0],mazes[22].initials[1],mazes[22].initials[2],mazes[22].times[0],mazes[22].times[1],mazes[22].times[2],mazes[22].times[3]);

  fprintf(fh,"K.%-8s %c%c%c %c%c%c%c X.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[10],mazes[10].initials[0],mazes[10].initials[1],mazes[10].initials[2],mazes[10].times[0],mazes[10].times[1],mazes[10].times[2],mazes[10].times[3],
	 mazeNames[23],mazes[23].initials[0],mazes[23].initials[1],mazes[23].initials[2],mazes[23].times[0],mazes[23].times[1],mazes[23].times[2],mazes[23].times[3]);

  fprintf(fh,"L.%-8s %c%c%c %c%c%c%c Y.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[11],mazes[11].initials[0],mazes[11].initials[1],mazes[11].initials[2],mazes[11].times[0],mazes[11].times[1],mazes[11].times[2],mazes[11].times[3],
	 mazeNames[24],mazes[24].initials[0],mazes[24].initials[1],mazes[24].initials[2],mazes[24].times[0],mazes[24].times[1],mazes[24].times[2],mazes[24].times[3]);

  fprintf(fh,"M.%-8s %c%c%c %c%c%c%c Z.%-8s %c%c%c %c%c%c%c\n",
	 mazeNames[12],mazes[12].initials[0],mazes[12].initials[1],mazes[12].initials[2],mazes[12].times[0],mazes[12].times[1],mazes[12].times[2],mazes[12].times[3],
	 mazeNames[25],mazes[25].initials[0],mazes[25].initials[1],mazes[25].initials[2],mazes[25].times[0],mazes[25].times[1],mazes[25].times[2],mazes[25].times[3]);

  /* end body */

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
      printf("%s <path-to-wayout-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  wayout(argv[1],argv[2]);
  
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

  /* Set for non-blocking */
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

	  wayout(argv[1],argv[2]);

	  i += EVENT_SIZE + event->len;
	}
    }

  /* ctrl-C or termination, close it off. */

  printf("Exiting %s\n",argv[0]);
 bye:
  inotify_rm_watch(inotify_fd,inotify_wd);
 bye2:
  close(inotify_fd);

  return 0;
}
