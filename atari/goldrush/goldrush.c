/**
 * Grab high score from Goldrush, write to HTML
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
#include <stdlib.h>
#include <errno.h>
#include <sys/types.h>
#include <sys/inotify.h>
#include <signal.h>
#include <unistd.h>
#include <fcntl.h>
#include <linux/limits.h>

#define EVENT_SIZE ( sizeof(struct inotify_event) )
#define EVENT_BUF_LEN ( 1024 * ( EVENT_SIZE + NAME_MAX ) )

#define HALLFAME_START_SECTOR 0x89

#define LINE_WIDTH 20

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

/**
 * @brief Read file from Atari DOS 2 filesystem starting at sector s into buf.
 * @note  some assumptions are made (upper high bits of next sector # are not utilized).
 * @param fa the ATR FILE pointer
 * @param s Starting sector
 * @param buf Destination buffer
 * @return # of bytes read.
 */
unsigned short dos2_read(FILE *fa, unsigned short s, unsigned char *buf)
{
  bool done=false;
  unsigned short offset=0;
  
  while (!done)
    {
      size_t seek_pos = (s*128) - 128 + 16;
      unsigned char sector[128];
      unsigned char num_bytes, next_sector;
    
      fseek(fa,seek_pos,SEEK_SET);
      fread(sector,sizeof(char),sizeof(sector),fa);
      
      num_bytes = sector[127];
      next_sector = sector[126];

      memcpy(&buf[offset],&sector[0],num_bytes);

      offset += num_bytes;

      if (!next_sector)
	done=true;
      else
	s=next_sector;
    }

  return offset;
}

void goldrush(char *atr, char *html)
{
  FILE *fa, *fh;
  int i,offset=0;
  unsigned short len;

  unsigned char buf[512];
  char *p;

  printf("Writing new goldrush.html\n");
  
  fa = fopen(atr,"rb");

  /* We have to extricate the file from the filesystem, into a buffer */
  len = dos2_read(fa,HALLFAME_START_SECTOR,&buf[0]);

  fh = fopen(html,"w");
  
  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Goldrush High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"goldrush.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  /* Process text */
  for (i=0;i<sizeof(buf);i++)
    {
      /* Do very simple ANTIC screen code conversion to ASCII */
      char c = buf[i];

      if (c<0) /* Strip away non-ASCII chars */
	c=0x20; /* space */

      if (c<64)
	c+=32;
      else if (c>64)
	c-=32;
      buf[i]=c;
    }

  buf[0]=0x20;

  fprintf(fh,"\n    ");
  
  for (i=0;i<240;i++)
    {
      fprintf(fh, "%c", buf[offset++]);

      if ((i % LINE_WIDTH) == 0)
      	fprintf(fh, "\n    ");
    }

  
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
      printf("%s <path-to-goldrush-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  goldrush(argv[1],argv[2]);
  
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

	  goldrush(argv[1],argv[2]);

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
