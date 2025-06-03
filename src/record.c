#include "record.h"
#include <time.h>

#define MAX_FILENAME 100
#define MAX_EXTENSION 20
#define CODEC_QUALITY -0.1


record_state record = {
	.eoc = 0,
	.eos = 0,
	.endfile_size = 0,
	.sample_count = 0,
};
record_state * record_struct = &record;

static char filename[MAX_FILENAME];
static int file_idx;
bool removing = false;
bool start = false;

FILE *create_output_file(const char *name) {
    char filename[MAX_FILENAME];
    char base[MAX_FILENAME - MAX_EXTENSION];
    int i = 0;

    // Strip the directory path and extensions (.ogg, .wav)
    const char *file_name = strrchr(name, '/');
    if (file_name) {
        // Skip the path
        file_name++;
    } else {
        file_name = name;
    }

    // Copy the base name (without extensions)
    strncpy(base, file_name, sizeof(base) - 1);
    base[sizeof(base) - 1] = '\0'; // Ensure null-termination

    // Remove .ogg or .wav extension
    char *ext = strstr(base, ".ogg");
    if (ext) *ext = '\0'; // Remove .ogg extension
    else {
        ext = strstr(base, ".wav");
        if (ext) *ext = '\0'; // Remove .wav extension
    }
    while (1) {
		if(i==0)
			snprintf(filename, sizeof(filename), "%s%s.ogg", CONFIG_OUTPUT_PATH, base);
		else
			snprintf(filename, sizeof(filename), "%s%s_%d.ogg", CONFIG_OUTPUT_PATH, base, i);


        FILE *check = fopen(filename, "r");
        if (!check) {
            break;
        }
        fclose(check);
        i++; 
    }
    FILE *output_file = fopen(filename, "w");
    if (!output_file) {
        printf("Error: Cannot create output file: %s\n", filename);
        return NULL;
    }
    
    /* Memory Window */
	if (removing && record.created_files[file_idx][0] != '\0')
		remove(record.created_files[file_idx]);
		
	strcpy(record.created_files[file_idx],filename);
	file_idx = (file_idx + 1) % (config_struct->audio_loop_recording / config_struct->audio_file_duration);
	
	if(file_idx == config_struct->audio_loop_recording/config_struct->audio_file_duration - 1)
		removing = true;
	/*end*/
	
    printf("Output file created: %s\n", filename);
    return output_file;
}

unsigned long long get_free_disk_space() {
    struct statvfs stat;

    if (statvfs("/", &stat) != 0) {
		fprintf(stderr,"ERROR : Could Not read statistics\n");
        return 0;
    }

    // Free space = available blocks * size per block
    return (unsigned long long)stat.f_bavail * stat.f_frsize;
}

int storage_window_init(){
	int max_files = config_struct->audio_loop_recording / config_struct->audio_file_duration;
	long long memory_needed = config_struct->sample_rate * config_struct->audio_loop_recording ;
	memory_needed = memory_needed * 1+(AUX_MEMORY_PERC/100);
	
		printf("Free Disk Space = %lld bytes\n",get_free_disk_space());
		printf("Memory Needed = %lld bytes\n",memory_needed);
	
	if((get_free_disk_space() - memory_needed) < 0){
		fprintf(stderr,"ERROR : not enough space in disk for %lld bytes\n",memory_needed);
		return 0;
	}	
	
	record.created_files = malloc(sizeof(char*) * max_files);
	for (int i = 0; i < max_files; i++) {
		record.created_files[i] = calloc(MAX_FILENAME, sizeof(char));
	}	
	
	return 1;
}

/**
 * @brief Inicializa as estruturas para a compressão e gravação do ficheiro de som
 *
 * As amostras são depositadas no buffer fornecido como uma sequência de blocos.
 * Cada bloco tem as amostras de um canal consecutivas. A dimensão de um bloco
 * é dada pelo número de frames lidas.

 * @param estrutura de configuração "config"
 * @return estrutura de gravação "record_state"
 */ 
int record_start(){
	if(!start){
		start = true;
		if(!storage_window_init())
			return 0;
	}
		/* Reset flags */
    record.eos = 0;
    
		/* Reset File size */
    record.endfile_size = 0;
    
		/* Reset Sample count */
	record.sample_count = 0;
    
        /* Output file */
    time_t current_time;
    time(&current_time);
    strftime(filename, sizeof(filename), TIME_FORMAT, localtime(&current_time));
    record.output = create_output_file(filename);
    if (!record.output){
		 fprintf(stderr, "ERROR : could not create an output_file (record.c : 146)");
		 return 0;
	}
		/* Init Vorbis */
    vorbis_info_init(&record.vi);
    if (vorbis_encode_init_vbr(&record.vi, config_struct->channels, config_struct->sample_rate, CODEC_QUALITY)) {
        fprintf(stderr, "Error initializing the encoder\n\n");
        fclose(record.output);
        return 0;
    }
    
		/*Add Comment*/
    vorbis_comment_init(&record.vc);
    vorbis_comment_add_tag(&record.vc, "ENCODER", "encoder_example.c");
    vorbis_analysis_init(&record.vd, &record.vi);
    vorbis_block_init(&record.vd, &record.vb);

		/*Init Ogg Stream*/
    srand(time(NULL));
    ogg_stream_init(&record.os, rand());

		/* Write header packets */
    ogg_packet header_pkt, header_comm, header_code;
    vorbis_analysis_headerout(&record.vd, &record.vc, &header_pkt, &header_comm, &header_code);
    ogg_stream_packetin(&record.os, &header_pkt);
    ogg_stream_packetin(&record.os, &header_comm);
    ogg_stream_packetin(&record.os, &header_code);

    while (!record.eos) {
        int result = ogg_stream_flush(&record.os, &record.og);
        if (result == 0) break;
        fwrite(record.og.header, 1, record.og.header_len, record.output);
        fwrite(record.og.body, 1, record.og.body_len, record.output);
    }
	record.time_start = time(NULL);
    return 1;
}

void record_stop(){
	ogg_stream_clear(&record.os);
	vorbis_block_clear(&record.vb);
	vorbis_dsp_clear(&record.vd);
	vorbis_comment_clear(&record.vc);
	vorbis_info_clear(&record.vi);
	if (record.output) {
		fclose(record.output);
		record.output = NULL;
	}
}

int record_append_samples(float *frames_buffer,size_t frames_read){
	record.time_elapsed = time(NULL) - record.time_start;
	//int i = 0;
	
	if(frames_read==0 || record.eoc == 1){

		vorbis_analysis_wrote(&record.vd,0);

	}else{
			
		float **buffer=vorbis_analysis_buffer(&record.vd,config_struct->block_size);

		for(int ch = 0; ch < config_struct->channels; ch++){ 
			memcpy(buffer[ch], frames_buffer + (ch * frames_read), frames_read * sizeof(float));
		}		
		
        //for (int ch = 0; ch < config_struct->channels; ch++) {
            //for (size_t i = 0; i < frames_read; i++) {
                //buffer[ch][i] = frames_buffer[i * config_struct->channels + ch];
            //}
        //}
		
		vorbis_analysis_wrote(&record.vd,frames_read);
	}

	while(vorbis_analysis_blockout(&record.vd,&record.vb)==1){

		vorbis_analysis(&record.vb,NULL);
		vorbis_bitrate_addblock(&record.vb);

		while(vorbis_bitrate_flushpacket(&record.vd,&record.op)){
			  
			record.endfile_size += record.op.bytes; 
			ogg_stream_packetin(&record.os,&record.op);
			
			while(!record.eos){
				int result=ogg_stream_pageout(&record.os,&record.og);
				if(result==0)break;
				fwrite(record.og.header,1,record.og.header_len,record.output);
				fwrite(record.og.body,1,record.og.body_len,record.output);

				if(ogg_page_eos(&record.og))record.eos=1;
			}
		}
	}
	
	record.sample_count += frames_read;
	
	return 1;
}
