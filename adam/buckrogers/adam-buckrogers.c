/**
 * Grab high score from Buck Rogers (super game), write to HTML
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

#define BUCKROGERS_SEEK_POS (0x23400)

#define LINE_WIDTH 32

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

void adam_buckrogers(char *atr, char *html)
{

  struct _adam_buckrogers_scores
  {
    char scores[8][7];
    char names[8][12];
    char sk[8][2];
    char sc[8][2];
    char rsvd1[12]; // Default name, do not touch
    char bottom[828]; // Bottom of block.
  } d;
  
  FILE *fa, *fh;
  int i, offset;
  
  printf("Writing new adam-buckrogers.html\n");
  
  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa,BUCKROGERS_SEEK_POS,SEEK_SET);

  fread(&d,sizeof(char),sizeof(d),fa);
  
  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Buck Rogers: Planet of Zoom High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"adam-buckrogers.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <div id=\"logo\"><img src=\"adam-buckrogers.png\" alt=\"Donkey Kong(tm)\" /></div>\n");
  fprintf(fh,"  <div><pre>\n");

  /* start body */

  offset=0; /* buffer start for hi scores */

  fprintf(fh,"       NAME     SCORE   SK\n");

  for (i=0;i<8;i++)
    {
      fprintf(fh,"%u %c%c%c%c%c%c%c%c%c%c%c%c %c%c%c%c%c%c%c  %c%c\n",
	      i+1,

	      d.names[i][0],
	      d.names[i][1],
	      d.names[i][2],
	      d.names[i][3],
	      d.names[i][4],
	      d.names[i][5],
	      d.names[i][6],
	      d.names[i][7],
	      d.names[i][8],
	      d.names[i][9],
	      d.names[i][10],
	      d.names[i][11],

	      d.scores[i][0],
	      d.scores[i][1],
	      d.scores[i][2],
	      d.scores[i][3],
	      d.scores[i][4],
	      d.scores[i][5],
	      d.scores[i][6],

	      d.sk[i][0],
	      d.sk[i][1]);
    }

  /* end body */

  fprintf(fh,"\n");
  fprintf(fh,"  </pre></div>\n");
  fprintf(fh," </body>\n");
  fprintf(fh,"</html>\n");
  
  fclose(fh);
  fclose(fa);
}

int main(int argc, char *argv[])
{
  if (argc < 3)
    {
      printf("%s <path-to-adam-buckrogers-ddp> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  adam_buckrogers(argv[1],argv[2]);
  
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

	  adam_buckrogers(argv[1],argv[2]);

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
