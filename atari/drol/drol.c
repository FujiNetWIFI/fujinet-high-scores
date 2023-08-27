/**
 * Grab high score from Drol, write to HTML
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

#define DROL_SEEK_POS (0x8FC0)

#define LINE_WIDTH 16

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
  ctrlc = true;
}

void drol(char *atr, char *html)
{
  struct _drolRecord
  {
    char name_place[11];
    char score_bcd[3];
  } drolScoreRecord[5];

  char scores[5][6] = // 5 digits + null terminator.
    {
      {0,0,0,0,0,0},
      {0,0,0,0,0,0},
      {0,0,0,0,0,0},
      {0,0,0,0,0,0},
      {0,0,0,0,0,0}
    };
  
  FILE *fa, *fh;
  int i, j;

  printf("Writing new drol.html\n");
  
  fa = fopen(atr,"rb");
  fh = fopen(html,"w");

  fseek(fa,DROL_SEEK_POS,SEEK_SET);

  fread(drolScoreRecord,sizeof(struct _drolRecord),5,fa);

  /* Process each entry */

  for (j=0;j<5;j++)
    {
      for (i=0;i<11;i++)
	{
	  /* Do very simple ANTIC screen code conversion to ASCII */
	  char c = drolScoreRecord[j].name_place[i];
	  
	  if (c<0) /* Strip away non-ASCII chars */
	    c=0x20; /* space */
	  
	  if (c<64)
	    c+=32;
	  else if (c>64)
	    c-=32;
	  drolScoreRecord[j].name_place[i]=c;
	}

      char d=0;

      // Now process scores. First digit.
      d = (drolScoreRecord[j].score_bcd[0] & 0x0F);
      scores[j][0] = d + 0x30;
      
      // digits 2-3
      d = drolScoreRecord[j].score_bcd[1];
      scores[j][1] = ((d & 0xF0) >> 4) + 0x30;
      scores[j][2] = (d & 0x0F) + 0x30;
      
      // digits 4-5
      d = drolScoreRecord[j].score_bcd[2];
      scores[j][3] = ((d & 0xF0) >> 4) + 0x30;
      scores[j][4] = (d & 0x0F) + 0x30;
    }
    
  /* start html */
  fprintf(fh,"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n");
  fprintf(fh,"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n");
  fprintf(fh," <head>\n");
  fprintf(fh,"  <title>Latest Drol High Scores</title>\n");
  fprintf(fh,"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n");
  fprintf(fh,"  <meta http-equiv=\"refresh\" content=\"30\" />");
  fprintf(fh,"  <meta name=\"keywords\" content=\" \" />\n");
  fprintf(fh,"  <meta name=\"description\" content=\" \" />\n");
  fprintf(fh,"  <link rel=\"stylesheet\" type=\"text/css\" href=\"drol.css\" media=\"screen\" />\n");
  fprintf(fh,"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n");
  fprintf(fh," </head>\n");
  fprintf(fh," <body>\n");
  fprintf(fh,"  <pre>\n");

  /* start body */

  fprintf(fh,"\n==== DROL TOP SCORES ====\n\n");

  for (j=0;j<5;j++)
    {
      // Since the data is a character array NOT terminated by 0, we have to output each char individually.
      fprintf(fh,
	      "  %c%c%c%c%c%c%c%c%c%c%c%5s\n",
	      drolScoreRecord[j].name_place[0],
	      drolScoreRecord[j].name_place[1],
	      drolScoreRecord[j].name_place[2],
	      drolScoreRecord[j].name_place[3],
	      drolScoreRecord[j].name_place[4],
	      drolScoreRecord[j].name_place[5],
	      drolScoreRecord[j].name_place[6],
	      drolScoreRecord[j].name_place[7],
	      drolScoreRecord[j].name_place[8],
	      drolScoreRecord[j].name_place[9],
	      drolScoreRecord[j].name_place[10],
	      scores[j]);
    }
  
  /* end body */

  // fprintf(fh,"");
  fprintf(fh,"\n  </pre>\n");
  fprintf(fh," </body>\n");
  fprintf(fh,"</html>\n");
  
  fclose(fh);
  fclose(fa);
}

int main(int argc, char *argv[])
{
  if (argc < 3)
    {
      printf("%s <path-to-drol-atr> <path-to-output-html>\n",argv[0]);
      return 1;
    }

  drol(argv[1],argv[2]);
  
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

	  drol(argv[1],argv[2]);

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
