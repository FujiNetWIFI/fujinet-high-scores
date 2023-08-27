/**
 * Grab high score from Flak, write to HTML
 *
 * Linux required. (uses inotify)
 * 
 * @author  Thomas Cherryhomes
 * @email   thom dot cherryhomes at gmail dot com
 * @license gpl v. 3
 * 
 * Modified by demicode from flak.c to support
 * high scores from smol snek.
 * 
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

#define SMOLSNEK_SEEK_POS (0x2010)

const char* header = 
		"<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">\n"
		"<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"en\" lang=\"en\">\n"
		" <head>\n"
		"  <title>Latest smol snek Scores</title>\n"
		"  <meta http-equiv=\"content-type\" content=\"text/html; charset=utf-8\" />\n"
		"  <meta http-equiv=\"refresh\" content=\"30\" />"
		"  <meta name=\"keywords\" content=\" \" />\n"
		"  <meta name=\"description\" content=\" \" />\n"
		"  <link rel=\"stylesheet\" type=\"text/css\" href=\"smolsnek.css\" media=\"screen\" />\n"
		"  <link rel=\"icon\" type=\"image/png\" href=\"icon.png\" />\n"
		" </head>\n"
		" <body>\n"
		"  <pre>\n";

const char* tail = 
		"\n"
		"  </pre>\n"
		" </body>\n"
		"</html>\n";

static volatile bool ctrlc = false;

int inotify_fd, inotify_wd;
int inotify_event_len;

char event_buffer[EVENT_BUF_LEN];

void setctrlc(int dummy)
{
	ctrlc = true;
}

void smolsnek(char *atr, char *html)
{
	char buf[128];

	printf("Writing new smolsnek html\n");
	
	FILE* fa = fopen(atr,"rb");
	FILE* fh = fopen(html,"w");

	fseek(fa,SMOLSNEK_SEEK_POS,SEEK_SET);
	fread(buf,sizeof(char),sizeof(buf),fa);
	
	/* start html */
	fprintf(fh, header);

	/* start body */

	fprintf(fh,"\n==== SMOLSNEK TOP SCORES ====\n");
	
	char name[10];
	name[9] = 0;
	uint8_t* buf_ptr = (uint8_t*)buf;

	for (int i=0;i < 10;i++)
	{
		uint32_t score = 0;
		// Convert 3 bytes of little endian binary coded decimal to an integer
		for(int score_bytes_index = 2; score_bytes_index >= 0; --score_bytes_index) {
			uint8_t b = buf_ptr[score_bytes_index];
			score *= 10;
			score += (b>>4)&0xf;
			score *= 10;
			score += (b&0xf);
		}
		// Smol snek only allows names with characters that 
		// map directly to ascii, so no conversion needed.
		memcpy(name, &buf_ptr[3], 9);
		fprintf(fh, "%s     %06d\n", name, score);
		buf_ptr += 12;
	}

	/* end body */
	fprintf(fh,tail);
	
	fclose(fh);
	fclose(fa);
}

int main(int argc, char *argv[])
{
	if (argc < 3)
		{
			printf("%s <path-to-smolsnek-atr> <path-to-output-html>\n",argv[0]);
			return 1;
		}

	smolsnek(argv[1],argv[2]);
	
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
		inotify_event_len = read(inotify_fd, event_buffer, EVENT_BUF_LEN);

		if (inotify_event_len < 0)
		{
			usleep(200000);
			continue;
		}
			
		int i = 0;
		while (i < inotify_event_len)
		{
			struct inotify_event *event = (struct inotify_event *)&event_buffer[ i ];
			smolsnek(argv[1],argv[2]);
			i += EVENT_SIZE + event->len;
		}
	}

	/* ctrl-C or termination, close it off. */

	printf("Exiting %s\n",argv[0]);

	inotify_rm_watch(inotify_fd,inotify_wd);
 bye2:
	close(inotify_fd);

	return 0;
}
