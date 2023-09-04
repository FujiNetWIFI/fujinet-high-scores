/**
 * Grab high score from Mario Run, write to HTML
 *
 * Linux required. (uses inotify)
 * 
 * @author  Eric Carr
 * @email   eric dot carr at gmail dot com
 * @license gpl v. 3
 */

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <string.h>
#include <errno.h>
#include <sys/types.h>

//#define TEST_ONLY

#ifndef TEST_ONLY
#include <sys/inotify.h>
#include <signal.h>
#include <unistd.h>
#include <fcntl.h>
#include <linux/limits.h>

#define EVENT_SIZE ( sizeof(struct inotify_event) )
#define EVENT_BUF_LEN ( 1024 * ( EVENT_SIZE + NAME_MAX ) )

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

#endif

#define ATR_SEEK_POS (719*128+16)

void writeHtml(char *atr, char *html)
{
  char buf[128];
  FILE *fa, *fh;
  int i, offset;

  printf("Writing new mario-run.html\n");
  
  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa,ATR_SEEK_POS,SEEK_SET);

  fread(buf,sizeof(char),sizeof(buf),fa);

  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Mario Run High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"mariorun.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  fprintf(fh,"\nMARIO RUN TOP SCORES\n\n");
  
  for (i=0;i<8;i++)
    {
      offset = i*5;
      int score = buf[offset+3] + buf[offset+4]*256;
      if (score>0) {
      fprintf(fh, "     %i %c%c%c %i\n", 
        i+1, 
        buf[offset++], buf[offset++], buf[offset++],
        score
        );
      }
   }
  /* end body */

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
      printf("%s <path-to-mario-run-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  writeHtml(argv[1],argv[2]);
  
  #ifndef TEST_ONLY

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

	  writeHtml(argv[1],argv[2]);

	  i += EVENT_SIZE + event->len;
	}
    }

  /* ctrl-C or termination, close it off. */

  printf("Exiting %s\n",argv[0]);
 bye:
  inotify_rm_watch(inotify_fd,inotify_wd);
 bye2:
  close(inotify_fd);

  #endif
  return 0;
}
