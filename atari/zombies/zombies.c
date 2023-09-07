/**
 * Grab high score from Zombies, write to HTML
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

#define ZOMBIES_SEEK_POS (0x16710)

#define LINE_WIDTH 12

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

void zombies(char *atr, char *html)
{
  FILE *fa, *fh;
  int i, j, offset;

  struct
  {
    char entry[24];		// each entry is 24 chars, in ATASCII
  } hiscores[4];

  printf("Writing new zombies.html\n");

  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa,ZOMBIES_SEEK_POS,SEEK_SET);

  fread(&hiscores,sizeof(hiscores),1,fa);

  for (i=0;i<4;i++)
  {
    hiscores[i].entry[22] = '\0';       // put a string terminator on each entry
  }


  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Zombies High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"zombies.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  offset=0; /* buffer start for hi scores */

  fprintf(fh,"\n     RATING RECORDS\n\n");

  fprintf(fh,"ONE PLAYER: EASY\n%s\n\n", hiscores[0].entry);
  fprintf(fh,"ONE PLAYER: HARD\n%s\n\n", hiscores[1].entry);
  fprintf(fh,"TWO PLAYER: EASY\n%s\n\n", hiscores[2].entry);
  fprintf(fh,"TWO PLAYER: HARD\n%s\n\n", hiscores[3].entry); 

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
      printf("%s <path-to-zombies-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  zombies(argv[1],argv[2]);

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

	  zombies(argv[1],argv[2]);

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
