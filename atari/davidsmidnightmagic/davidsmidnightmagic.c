/**
 * Grab high score from David's Midnight Magic, write to HTML
 *
 * Linux required. (uses inotify)
 * 
 * @author  Shawn Jefferson (based on jawbreakerii by Thom Cherryhomes)
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

#define DAVIDS_SEEK_POS (0x2C90)

#define LINE_WIDTH 12

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

void davidsmidnightmagic(char *atr, char *html)
{
  FILE *fa, *fh;
  int i, j, offset;
  char score_txt[10];

  struct
  {
    char initials[3];		// three initials (in screen code format)
    unsigned char scores[5];	// score is in first three bytes in BCD, last two are 00 00 
  } hiscores[10];

  printf("Writing new davidsmidnightmagic.html\n");

  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa,DAVIDS_SEEK_POS,SEEK_SET);

  fread(&hiscores,sizeof(hiscores),1,fa);

  /* convert initials to ascii */
  for (i=0;i<10;i++)
  {
    for (j=0;j<3;j++)
    {
      char c = hiscores[i].initials[j];

      if (c<0) /* Strip away non-ASCII chars */
        c=0x20; /* space */

      if (c<64)
        c += 32;
      else if (c>64)
        c -= 32;

      hiscores[i].initials[j] = c;
    }
  }

  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest David's Midnight Magic High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"davidsmidnightmagic.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  offset=0; /* buffer start for hi scores */

  fprintf(fh,"\nDAVID'S MIDNIGHT MAGIC\n\n HIGH SCORES TO DATE\n\n");

  for (i=0;i<10;i++)
    {
     if (hiscores[i].scores[0] > 9) {			/* display millions if score is high enough */
       sprintf(score_txt, "%1x,%1x%02x,%02x0",
               (hiscores[i].scores[0] & 0xF0)>>4,(hiscores[i].scores[0] & 0x0F),
               hiscores[i].scores[1],hiscores[i].scores[2]);
     }
     else {						/* score is less than a million */
       sprintf(score_txt, "  %1x%02x,%02x0",
               hiscores[i].scores[0],hiscores[i].scores[1],hiscores[i].scores[2]);
     }

      fprintf(fh,"   %2i %c%c%c %s\n", i+1,
              hiscores[i].initials[0],hiscores[i].initials[1],hiscores[i].initials[2],
              score_txt);
    }

  /* end body */

  // fprintf(fh,"\n");
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
      printf("%s <path-to-davidsmidnightmagic-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  davidsmidnightmagic(argv[1],argv[2]);

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

	  davidsmidnightmagic(argv[1],argv[2]);

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
