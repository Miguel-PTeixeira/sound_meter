#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <vorbis/vorbisenc.h>
#include <sys/statvfs.h>

#include "config.h"

#ifndef RECORD_H
#define RECORD_H

#define OUTPUT_FORMAT "MM-DD-AAAA_HH:MM:SS"
#define TIME_FORMAT "%m-%d-%Y_%H:%M:%S"
#define AUX_MEMORY_PERC 5

typedef struct{
  FILE *			output;
  ogg_stream_state	os; /* take physical pages, weld into a logical
                          stream of packets */
  ogg_page			og; /* one Ogg bitstream page.  Vorbis packets are inside */
  
  ogg_packet		op; /* one raw packet of data for decode */

  vorbis_info		vi; /* struct that stores all the static vorbis bitstream
                          settings */
  vorbis_comment	vc; /* struct that stores all the user comments */

  vorbis_dsp_state	vd; /* central working state for the packet->PCM decoder */
  vorbis_block		vb; 
  
  int 				eos;
  int				eoc;
  float **			buffer;
  long				endfile_size;
  long      		sample_count;
  
  char **			created_files;
  
  
  time_t 			time_start; /* startung time */
  time_t        	time_elapsed; /* current time */
}record_state;

int record_start();
int record_append_samples(float *buffer,size_t frames_read);
void record_stop();

extern record_state *record_struct;
#endif
