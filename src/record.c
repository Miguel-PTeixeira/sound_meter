#include "record.h"
#include "in_out.h"
#include "filter.h"
#include <time.h>
#include <assert.h>
#include <dirent.h>

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

bool removing = false;
bool start = false;


/**
 * @brief cria o ficheiro de áudio
 *
 * cuida da array de nomes de ficheiros, utilizada para a memória deslizante
 * 
 * @param nome do ficheiro "name"
 * @return ponteiro para ficheiro de output "output_file"
 */ 
void create_output_file() {
	if(config_struct->input_file == NULL){
		output_new_filename(0, output_get_audio_filepath());
	}
	char* filepath = output_get_audio_filepath();
	if(config_struct->audio_record_ok)
		output_file_open(filepath);
	add_file(record.created_audio_files, filepath);
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
int compare_by_name(const void *a, const void *b) {
    char *file_a = *(char **)a;
    char *file_b = *(char **)b;
    return strcmp(file_a,file_b);
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
int storage_window_init(){
	int sample_byte_size = 16;	
	unsigned int file_compression_ratio = (config_struct->sample_rate * sample_byte_size)/record_struct->vi.bitrate_nominal;
	unsigned long long memory_needed;
	
	
	
	memory_needed = config_struct->sample_rate * config_struct->audio_file_duration;
	if(config_struct->input_file == NULL){
		unsigned int max_audio_files = (config_struct->audio_loop_recording + (config_struct->audio_file_duration-1)) / config_struct->audio_file_duration;
		
		unsigned int max_data_files = (config_struct->data_loop_recording + (config_struct->data_file_duration-1)) / config_struct->data_file_duration;
		
		printf("For file managing reasons, the parameters used will be:\n");
		if(config_struct->audio_record_ok){
			config_struct->audio_loop_recording = config_struct->audio_file_duration * max_audio_files;
			printf("\taudio_file_duration = %d\n"
				"\taudio_loop_recording = %d\n",
				config_struct->audio_file_duration,
				config_struct->audio_loop_recording
				);			
		}else max_audio_files = 0;
				
				
		if(config_struct->data_record_ok){
			config_struct->data_loop_recording = config_struct->data_file_duration * max_data_files;
			printf("\tdata_file_duration = %d\n"
				"\tdata_loop_recording = %d\n",
				config_struct->data_file_duration,
				config_struct->data_loop_recording
				);
		}else max_data_files = 0;
			   
		
		if(	((record.created_audio_files = create_files_storage(max_audio_files)) == NULL) ||
			((record.created_data_files = create_files_storage(max_data_files)) == NULL))
				return 0;
		
		if( !load_files_from_directory(record.created_audio_files,config_struct->output_path,".ogg") ||
			!load_files_from_directory(record.created_data_files,config_struct->output_path,".csv"))
				return 0;
				
		unsigned data_line_size = (((sizeof(Levels))) + THIRD_OCTAVE_BAND_MAX)*5 + strlen(output_get_audio_filepath()); //Aproximated number of chars per line (inside data file)
		
		memory_needed = (config_struct->audio_loop_recording * config_struct->sample_rate) +
						(config_struct->data_loop_recording * config_struct->levels_record_period * data_line_size);				
	}
		memory_needed = memory_needed * 1/file_compression_ratio;
		memory_needed = memory_needed * (100 + AUX_MEMORY_PERC) / 100; //give an increased capacity as safety measure
	
	printf("\tFree Disk Space = %lld bytes\n",get_free_disk_space());
	printf("\tMemory Needed =   %lld bytes\n",memory_needed);
	
	if(get_free_disk_space() < memory_needed){
		fprintf(stderr,"ERROR : not enough space in disk for %lld bytes\n",memory_needed);
		return 0;
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
		/* Reset flags */
    record.eos = 0;
    
		/* Reset File size */
    record.endfile_size = 0;
    
		/* Reset Sample count */
	record.sample_count = 0;
    
        /* Output file */
    create_output_file();
    if (!record.output){
		 fprintf(stderr, "ERROR : could not create an output_file (record.c : 173)");
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
    
    if(!start){
		start = true;
		if(!storage_window_init() || !config_struct->audio_record_ok)
			return 0;
	}
	record.time_start = time(NULL);
	record.time_elapsed = 0;
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
void record_stop(){
	ogg_stream_clear(&record.os);
	vorbis_block_clear(&record.vb);
	vorbis_dsp_clear(&record.vd);
	vorbis_comment_clear(&record.vc);
	vorbis_info_clear(&record.vi);
	if (record.output != NULL) {
		fclose(record.output);
		record.output = NULL;
	}
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
int record_append_samples(float *frames_buffer,size_t frames_read){
	if(!config_struct->audio_record_ok) return 1;
	assert(frames_read <= config_struct->block_size);

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
