/**
 * Grab high score from Grog's Revenge (super game), write to HTML
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

#define GROG_SEEK_POS (0xd08)

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

char s[8];

char* to_score(unsigned char s0, unsigned char s1, unsigned char s2)
{
  memset(s,0,8);

  sprintf(s,"%x%x%x",s2,s1,s0);

  return s;
}

void adam_grog(char *atr, char *html)
{
  struct _adam_grog_scores
  {
    char name[11];
    unsigned char mtn;
    unsigned char level;
    unsigned char score[3];
  } scores[8];
  
  FILE *fa, *fh;
  int i, offset;
  
  printf("Writing new adam-grog.html\n");
  
  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa,GROG_SEEK_POS,SEEK_SET);

  fread(&scores[0],sizeof(struct _adam_grog_scores),8,fa);
  
  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Grog's Revenge High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"adam-grog.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <div><pre>\n");

  /* start body */

  offset=0; /* buffer start for hi scores */

  fprintf(fh," GROG'S REVENGE    HIGH SCORES \n\n");
  fprintf(fh," # NAME       MTN LVL SCORE\n");

  for (i=0;i<8;i++)
    {
      fprintf(fh," %u %c%c%c%c%c%c%c%c%c%c%c %u   %u  %s\n",
	      i+1,

	      scores[i].name[0],
	      scores[i].name[1],
	      scores[i].name[2],
	      scores[i].name[3],
	      scores[i].name[4],
	      scores[i].name[5],
	      scores[i].name[6],
	      scores[i].name[7],
	      scores[i].name[8],
	      scores[i].name[9],
	      scores[i].name[10],

	      scores[i].mtn,
	      scores[i].level,

	      to_score(scores[i].score[0],scores[i].score[1],scores[i].score[2]));      
    }

  /* end body */

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
      printf("%s <path-to-adam-grog-ddp> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  adam_grog(argv[1],argv[2]);
  
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

	  adam_grog(argv[1],argv[2]);

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
