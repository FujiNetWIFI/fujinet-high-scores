/**
 * Grab high score from Jumpman, write to HTML
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

#define EVENT_SIZE ( sizeof(struct inotify_event) )
#define EVENT_BUF_LEN ( 1024 * ( EVENT_SIZE + 16 ) )

#define JUMPMAN_SEEK_POS (0x2ba*128+16)

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

void jumpman(char *atr, char *html)
{
  char buf[512];
  FILE *fa, *fh;
  int i, offset;
  
  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa,JUMPMAN_SEEK_POS,SEEK_SET);

  fread(buf,sizeof(char),sizeof(buf),fa);

  /* Process text */
  for (i=0;i<sizeof(buf);i++)
    {
      /* Do very simple ANTIC screen code conversion to ASCII */
      char c = buf[i];

      if (c<0) /* Strip away non-ASCII chars */
	c=0x20; /* space */

      if (c<32)
	c+=32;
      else if (c>64)
	c-=32;
      
      buf[i]=c;
    }

  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Jumpman High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"1\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"jumpman.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  offset=0x2b; /* buffer start for hi scores */

  fprintf(fh,"==== TOP SCORES ====\n");
  
  for (i=0;i<160;i++)
    {
      fprintf(fh, "%c", buf[offset++]);

      if ((i % 20) == 0)
	fprintf(fh, "\n");
    }

  fprintf(fh, "\n\n");

  fprintf(fh,"==== HIGH BONUS ====\n");
  
  offset=0x11b; /* buffer start for bonuses */
  
  for (i=0;i<160;i++)
    {
      fprintf(fh, "%c", buf[offset++]);

      if ((i % 20) == 0)
	fprintf(fh, "\n");      
    }
  
  /* end body */

  fprintf(fh,"\n\n");
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
      printf("%s <path-to-jumpman-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }
  
  signal(SIGINT, setctrlc);
  signal(SIGTERM, setctrlc);
  
  inotify_fd = inotify_init();

  if (inotify_fd < 0)
    {
      perror("inotify_init");
      return 1;
    }

  inotify_wd = inotify_add_watch(inotify_fd, argv[1], IN_MODIFY);

  while (!ctrlc)
    {
      int i;
      
      inotify_event_len = read(inotify_fd, event_buffer, EVENT_BUF_LEN);
      
      if ( inotify_event_len < 0 )
	{
	  perror("read");
	  return 1;
	}
      
      i=0;
      
      while (i < inotify_event_len)
	{
	  struct inotify_event *event = ( struct inotify_event * ) &event_buffer[ i ];
	  if ( event->len )
	    {
	      if ( event->mask & IN_MODIFY )
		jumpman(argv[1],argv[2]);
	    }
	  
	  i += EVENT_SIZE + event->len;
	}
    }

  /* ctrl-C or termination, close it off. */

  inotify_rm_watch(inotify_fd,inotify_wd);
  close(inotify_fd);

  return 0;
}
