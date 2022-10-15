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
#include <fcntl.h>
#include <linux/limits.h>

#define EVENT_SIZE ( sizeof(struct inotify_event) )
#define EVENT_BUF_LEN ( 1024 * ( EVENT_SIZE + NAME_MAX ) )

#define STARFIL_START_SECTOR 0xA8

#define LINE_WIDTH 40 

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

void rearguard(char *atr, char *html)
{
  FILE *fa, *fh;
  int i, offset;
  unsigned short len;

  struct
  {
    char rsvd[20];
    char names[10][20];
    char eol;
    char scores[10][12];
  } s;
  
  printf("Writing new rearguard.html\n");
  
  fa = fopen(atr,"rb");

  /* We have to extricate the file from the filesystem, into a buffer */
  len = dos2_read(fa,STARFIL_START_SECTOR,(unsigned char *)&s);

  fh = fopen(html,"w");
  
  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Rear Guard High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"rearguard.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  offset=0; /* buffer start for hi scores */

  fprintf(fh,"\n==== TOP SCORES ====\n\n");

  for (int i=0;i<10;i++)
    {
      fprintf(fh,"%2u. %c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c%c %c%c%c%c%c%c%c%c%c%c%c\n",
	      i+1,
	      s.names[i][0],
	      s.names[i][1],
	      s.names[i][2],
	      s.names[i][3],
	      s.names[i][4],
	      s.names[i][5],
	      s.names[i][6],
	      s.names[i][7],
	      s.names[i][8],
	      s.names[i][9],
	      s.names[i][10],
	      s.names[i][11],
	      s.names[i][12],
	      s.names[i][13],
	      s.names[i][14],
	      s.names[i][15],
	      s.names[i][16],
	      s.names[i][17],
	      s.names[i][18],
	      s.names[i][19],

	      s.scores[i][0],
	      s.scores[i][1],
	      s.scores[i][2],
	      s.scores[i][3],
	      s.scores[i][4],
	      s.scores[i][5],
	      s.scores[i][6],
	      s.scores[i][7],
	      s.scores[i][8],
	      s.scores[i][9],
	      s.scores[i][10]
	      
	      );
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
      printf("%s <path-to-rearguard-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  rearguard(argv[1],argv[2]);
  
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

	  rearguard(argv[1],argv[2]);

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
