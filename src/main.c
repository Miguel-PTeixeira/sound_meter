/*
Copyright 2022 Guilherme Albano, David Meneses e Laboratório de Audio e Acústica do ISEL

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

/*
Este ficheiro é baseado no ficheiro com o mesmo nome pertencente
ao PFC MoSEMusic realizado por Guilherme Albano e David Meneses
*/

#include <stdio.h>
#include <stdbool.h>
#include <sys/time.h>
#include <time.h>
#include <getopt.h>
#include <glib.h>

#include "process.h"
#include "filter.h"
#include "config.h"
#include "in_out.h"
#include "mqtt.h"
#include "server.h"
#include "record.h"

#include <stdio.h>
#include <stdlib.h>

#define my_assert(cond, msg) do { \
    if (!(cond)) { \
        fprintf(stderr, "Assertion failed: %s\n", msg); \
        printf("\n"); \
        help("sound_meter"); \
        exit(EXIT_FAILURE); \
    } \
} while(0)

#define ARRAY_SIZE(a)	sizeof(a) / sizeof(a[0])

bool running = true;

static void int_handler(int unused) {
	running = false;
}


static void help(char *prog_name)
{
	printf("Usage: %s [options] <source file_name>\n"
		"options:\n"
		"\t--verbose\n"
		"\t-h, --help\n"
		"\t-v, --version\n"
		"\t-d, --device <device name>\n"
		"\t-i, --input <file name>\n"
		"\t-o, --output <file name>\n"
		"\t-f, --data_output_format <csv | json>\n"
		"\t-r, --sample_rate <rate>\n"
		"\t-a, --channels <channels>\n"
		"\t-n, --identification <name>\n"
		"\t-t, --duration <seconds>\n"
		"\t-c, --calibrate <seconds>\n"
		"\t-g, --config <file name>\n"
		"\t-b, --block_size <sample number>\n",
		prog_name);
}

static void about()
{
	printf("Sound meter v" CONFIG_VERSION " (" __DATE__ ")\n"
		"Based on MoSeMusic project by Guilherme Albano and David Meneses\n"
		"Ezequiel Conde (ezeq@cc.isel.ipl.pt)\n");
}

int main (int argc, char *argv[])
{
	static int verbose_flag = false;
	static struct option long_options[] = {
		{"verbose", no_argument, &verbose_flag, 1},
		{"help", no_argument, 0, 'h'},
		{"version", no_argument, 0, 'v'},
		{"device", required_argument, 0, 'd'},
		{"input", required_argument, 0, 'i'},
		{"output", required_argument, 0, 'o'},
		{"output_format", required_argument, 0, 'f'},
		{"sample_rate", required_argument, 0, 'r'},
		{"channels", required_argument, 0, 'a'},
		{"identification", required_argument, 0, 'n'},
		{"duration", required_argument, 0, 't'},
		{"calibrate", optional_argument, 0, 'c'},
		{"config", required_argument, 0, 'g'},
		{"block_size", required_argument, 0, 'b'},
		{0, 0, 0, 0}
	};

	int option_index, option_char;
	int error_in_options = false;

	char *option_device_filename = NULL;
	char *option_input_filename = NULL;
	char *option_output_filename = NULL;
	char *option_data_output_format = NULL;
	char *option_sample_rate = NULL;
	char *option_channels = NULL;
	char *option_identification = NULL;
	char *option_calibration_time = NULL;
	char *option_config_filename = NULL;
	char *option_block_size = NULL;
	int run_duration = 0;

	signal(SIGINT, int_handler);

	while ((option_char = getopt_long(argc, argv, ":hvd:i:o:f:r:a:n:t:c:g:b:",
			long_options, &option_index)) != -1) {
		switch (option_char) {
		case 0:	//	Opções longas com afetação de flag
			break;
		case 'h':
			help(argv[0]);
			return 0;
		case 'v':
			about();
			break;
		case 'd':
			option_device_filename = optarg;
			break;
		case 'i':
			option_input_filename = optarg;
			break;
		case 'o':
			option_output_filename = optarg;
			break;
		case 'f':
			option_data_output_format = optarg;
			break;
		case 'g':
			option_config_filename = optarg;
			break;
		case 'r':
			option_sample_rate = optarg;
			my_assert(strcmp(option_block_size,"44100") == 0 || strcmp(option_block_size,"48000") == 0,
			"expected sample_rate [44100,48000]");
			break;
		case 'a':
			option_channels = optarg;
			break;
		case 'n':
			option_identification = optarg;
			break;
		case 't':
			run_duration = atoi(optarg);
			break;
		case 'c':
			option_calibration_time = optarg;
			break;
		case 'b':
			option_block_size = optarg;
			my_assert(strcmp(option_block_size,"512") == 0 || strcmp(option_block_size,"1024") == 0 || strcmp(option_block_size,"2048") == 0,
			"expected block_size [512, 1024, 2028]");
			break;
		case ':':
			fprintf(stderr, "Error in option -%c argument\n", optopt);
			error_in_options = true;
			break;
		case '?':
			error_in_options = true;
			break;
		}
	}
	if (error_in_options) {
		help(argv[0]);
		exit(EXIT_FAILURE);
	}

	//----------------------------------------------------------------------
	//	Determinar nome do ficheiro de configuração

	const char *config_filename = option_config_filename;
	if (NULL == config_filename) {
		config_filename = getenv("SOUND_METER_CONFIG_FILENAME");
		if (config_filename == NULL)
			config_filename = CONFIG_CONFIG_FILENAME;
	}
	if (verbose_flag)
		printf("Configuration filename: %s\n", config_filename);

	/* Só a partir da versão 2.76 da GLib
	struct GPathBuf config_pathname;
	g_path_buf_init(&config_pathname);

	char first_letter = option_config_filename[0];
	if (first_letter != '/' && first_letter != '.') { // Anexar path
		const char *path = getenv("SOUND_METER_CONFIG_FILEPATH");
		if (path == NULL)
			path = CONFIG_CONFIG_FILEPATH;
		g_path_buf_push(&config_pathname, path);
	}
	g_path_buf_push(&config_pathname, option_config_filename);

	const char *config_filename = g_path_buf_free_to_path(&config_pathname);
	*/
	char *config_pathname;
	char first_letter = config_filename[0];
	if (first_letter != '/' && first_letter != '.') { // absoluto / relativo
		const char *path = getenv("SOUND_METER_CONFIG_FILEPATH");
		if (path == NULL)
			path = CONFIG_CONFIG_FILEPATH;
		char *pathname = malloc(strlen(path) + strlen(config_filename) + 1);
		strcpy(pathname, path);
		strcat(pathname, config_filename);
		config_pathname = pathname;
	}
	else {
		config_pathname = strdup(config_filename);
	}
	if (verbose_flag)
		printf("Configuration pathname: %s\n", config_pathname);

	config_struct = config_load(config_pathname);

	free(config_pathname);

	// As opções de linha de comando prevalecem sobre o ficheiro de configuração

	if (option_device_filename != NULL)
		config_struct->input_device = option_device_filename;

	if (option_input_filename != NULL)
		config_struct->input_file = option_input_filename;

	if (option_data_output_format != NULL)
		config_struct->data_output_format = option_data_output_format;

	if (option_sample_rate != NULL)
		config_struct->sample_rate = atoi(option_sample_rate);

	if (option_channels != NULL)
		config_struct->channels = atoi(option_channels);

	if (option_identification != NULL)
		config_struct->identification = option_identification;
		
	if (run_duration != 0)
		config_struct->run_duration = run_duration;

	if (option_calibration_time != NULL)
		config_struct->calibration_time = atoi(option_calibration_time);
		
	if (option_block_size != NULL)
		config_struct->block_size = atoi(option_block_size);

	output_set_filename(option_output_filename, option_input_filename);

	config_struct->segment_size = config_struct->segment_duration * config_struct->sample_rate / 1000;

	if (verbose_flag) {
		config_print();
		printf("\n"
			"\tOutput file: %s\n"
			"\tRun duration: %d seconds\n\n",
			output_get_data_filepath(),
			run_duration);
	}

	//----------------------------------------------------------------------
	//	Inicializações
	
	if (!input_device_open(config_struct))
	exit(EXIT_FAILURE);

	Timeweight *twfastfilter = timeweight_create();
	Timeweight *twslowfilter = timeweightSlow_create();
	Afilter *afilter = aweighting_create(3);
	Cfilter *cfilter = cweighting_create(2);

	float *block_raw = malloc(config_struct->channels * config_struct->block_size * sizeof *block_raw);
	float *block_a = malloc(config_struct->channels * config_struct->block_size * sizeof *block_a);
	float *block_squared = malloc(config_struct->channels * config_struct->block_size * sizeof *block_squared);
	
	// Os buffers de segmento têm capacidade para um segmento e uma dimensão múltipla de um bloco
	unsigned segment_buffer_size = (((config_struct->segment_size + config_struct->block_size - 1)
								/ config_struct->block_size) + 1)
								* config_struct->block_size;
								
	ThirdOctaveData third_octave_data[THIRD_OCTAVE_BAND_MAX];

	
	for (int i = 0; i < ARRAY_SIZE(third_octave_data); i++){
		third_octave_data[i].Tfilter = timeweight_create();
		third_octave_data[i].filter = third_octave_create(i);
		third_octave_data[i].levels = levels_create();
		third_octave_data[i].ring = sbuffer_create(segment_buffer_size);
	}
								
	struct sbuffer *ring_a = sbuffer_create(segment_buffer_size);
	struct sbuffer *ring_c = sbuffer_create(segment_buffer_size);
	struct sbuffer *ring_afast = sbuffer_create(segment_buffer_size);
	struct sbuffer *ring_aslow = sbuffer_create(segment_buffer_size);
	
	Levels *levels_return = levels_create();

	//----------------------------------------------------------------------
	//	Calibração

	if (config_struct->calibration_time > 0) {
//		if (!input_device_open(config_struct))
//			exit(EXIT_FAILURE);
		unsigned milisecs = 0;
		unsigned calibration_milisecs = (config_struct->calibration_time + CONFIG_CALIBRATION_GUARD) * 1000;
		float average_sum = 0;
		unsigned average_n = 0;
		printf("\nCalibrating for %d seconds\n",config_struct->calibration_time);
		
		struct sbuffer *ring_calibration = sbuffer_create(segment_buffer_size);
		
		while (milisecs < calibration_milisecs) {
			size_t lenght_read = input_device_read(block_raw, config_struct->block_size);
			if (lenght_read == 0)
				break;

			float *block_ring_calibration = sbuffer_write_ptr(ring_calibration);
			assert(lenght_read <= sbuffer_write_size(ring_calibration));

			aweighting_filtering(afilter, block_raw, block_ring_calibration, lenght_read);
			process_block_square(block_ring_calibration, block_ring_calibration, lenght_read);
			timeweight_filtering(twfastfilter, block_ring_calibration, block_ring_calibration, lenght_read);
			sbuffer_write_produces(ring_calibration, lenght_read);

			if (sbuffer_size(ring_calibration) >= config_struct->segment_size) {
				process_segment_levels(levels_return, ring_calibration, NULL, 0);
				if (milisecs < CONFIG_CALIBRATION_GUARD * 1000) {
					if (verbose_flag)
						puts("-");
				}
				else {
					average_sum += levels_return->LAE[0];
					average_n++;
					if (verbose_flag)
						printf("%d\n", (calibration_milisecs - milisecs) / 1000);
				}
				levels_return->segment_number = 0;
				milisecs += config_struct->segment_duration;
			}
		}
		config_struct->calibration_time = 0;
		config_struct->calibration_delta = config_struct->calibration_reference -
			average_sum / average_n;
			
		sbuffer_destroy(ring_calibration);

//		input_device_close();

		if (verbose_flag) {
			printf("\nCalibration reference: %.1f\n", config_struct->calibration_reference);
			printf("Raw LAE: %.1f\n", average_sum / average_n);
			printf("Calibration delta: %.1f\n", config_struct->calibration_delta);
		}
	}

	//----------------------------------------------------------------------
	//	Operação
	server_init();

	if (config_struct->mqtt_enable)
		mqtt_begin();

	bool continuous = option_input_filename == NULL;

	output_open(continuous);

	if (verbose_flag)
		printf("\nStarting sound level measuring...\n");

	Audit *wa = NULL;
	Audit *wb = NULL;
	Audit *wc = NULL;
	Audit *wd = NULL;

	if (!continuous && verbose_flag) {
		wa = audit_create("raw");
		wb = audit_create("a_weighted");
		wc = audit_create("a_squared");
		wd = audit_create("a_fast");
	}
	
	if (continuous){
			config_struct->levels_record_period = 1;
	}

	lae_average_create();
	
	unsigned time_elapsed = 0;	// Tempo que passou baseado na duração do segmento (milisegundos)
	run_duration *= 1000; 		// Converter para milisegundos
	
	record_start(); //Necessário para inicializar o Codec de áudio corretamente
	
	if (verbose_flag)
		printf("LAeq, LAFmin, LAE, LAFmax, LApeak\n");

	while (running && (run_duration == 0 || time_elapsed < run_duration)) {
		size_t lenght_read = input_device_read(block_raw, config_struct->block_size);
		if (lenght_read == 0)
			break;
///FILTER BAND MANAGEMENT	
		for(int i=0; i<THIRD_OCTAVE_BAND_MAX; i++){//MOre than 2 results in corrupted data. (wrong memory access)
			float *block_filter = sbuffer_write_ptr(third_octave_data[i].ring);
			assert(lenght_read <= sbuffer_write_size(third_octave_data[i].ring));
			third_octave_filtering(third_octave_data[i].filter, block_raw, block_filter, lenght_read);
			process_block_square(block_filter, block_filter, lenght_read);
			timeweight_filtering(third_octave_data[i].Tfilter, block_filter, block_filter, lenght_read);
			sbuffer_write_produces(third_octave_data[i].ring, lenght_read);
		}
///POINT A	
		float *block_ring_c = sbuffer_write_ptr(ring_c);
		float *block_ring_afast = sbuffer_write_ptr(ring_afast);
		float *block_ring_aslow = sbuffer_write_ptr(ring_aslow);
		assert(lenght_read <= sbuffer_write_size(ring_c));
		assert(lenght_read <= sbuffer_write_size(ring_afast));
		assert(lenght_read <= sbuffer_write_size(ring_aslow));
///POINT B
		aweighting_filtering(afilter, block_raw, block_a, lenght_read);
		cweighting_filtering(cfilter, block_raw, block_ring_c, lenght_read);
		sbuffer_write_produces(ring_c, lenght_read);
///POINT C
		process_block_square(block_a, block_squared, lenght_read);
///POINT D
		timeweight_filtering(twfastfilter, block_squared, block_ring_afast, lenght_read);
		timeweight_filtering(twslowfilter, block_squared, block_ring_aslow, lenght_read);
		sbuffer_write_produces(ring_afast, lenght_read);
		sbuffer_write_produces(ring_aslow, lenght_read);
///SAMPLE MANAGEMENT
		if (!continuous && verbose_flag) {
			audit_append_samples(wa, block_raw, lenght_read);
			audit_append_samples(wb, block_a, lenght_read);
			audit_append_samples(wc, block_squared, lenght_read);
			audit_append_samples(wd, block_ring_afast, lenght_read);
		}
		if (sbuffer_size(ring_afast) >= config_struct->segment_size) {
			for(int i=0; i<THIRD_OCTAVE_BAND_MAX; i++){//MOre than 2 results in corrupted data. (wrong memory access)
				process_segment_levels(third_octave_data[i].levels, third_octave_data[i].ring, NULL, config_struct);
			}
			process_segment_levelpeak(levels_return, ring_c, config_struct);
			process_segment_levels(levels_return, ring_afast, ring_aslow, config_struct);	
						
			int segment_index = levels_return->segment_number - 1;

			server_send((uint64_t)time(NULL), levels_return->LAeq[segment_index],
					levels_return->LAFmin[segment_index],
					levels_return->LAE[segment_index],
					levels_return->LAFmax[segment_index],
					levels_return->LApeak[segment_index]);

			if (config_struct->mqtt_enable)
				mqtt_publish(levels_return, levels_return->segment_number - 1);
			if (verbose_flag) {
				printf("\r%6.1f%6.1f%6.1f%6.1f%6.1f\n",
					levels_return->LAeq[segment_index],
					levels_return->LAFmin[segment_index],
					levels_return->LAE[segment_index],
					levels_return->LAFmax[segment_index],
					levels_return->LApeak[segment_index]);
			}
			time_elapsed += config_struct->segment_duration;

		}
		
		if (levels_return->segment_number == config_struct->levels_record_period) {
			output_record(levels_return, third_octave_data, continuous);
			levels_return->segment_number = 0;
		}
	}
	running = false;
	if (verbose_flag)
		printf("\nTotal time: %d seconds\n", time_elapsed / 1000);

	output_record(levels_return, third_octave_data, continuous);

	if (verbose_flag)
		printf("Saving configuration in " CONFIG_CONFIG_FILEPATH CONFIG_CONFIG_FILENAME "\n");
	config_save(CONFIG_CONFIG_FILEPATH CONFIG_CONFIG_FILENAME);


	if (!continuous && verbose_flag) { //Creates the .wav files
		audit_destroy(wa);
		audit_destroy(wb);
		audit_destroy(wc);
		audit_destroy(wd);
	}
	server_end();
	if (config_struct->mqtt_enable)
		mqtt_end();
	input_device_close();
	output_close();
	
	for(int i=0; i<THIRD_OCTAVE_BAND_MAX; i++){//MOre than 2 results in corrupted data. (wrong memory access)
		levels_destroy(third_octave_data[i].levels);
		third_octave_destroy(third_octave_data[i].filter);
		sbuffer_destroy(third_octave_data[i].ring);
	}
	
	levels_destroy(levels_return);
	timeweight_destroy(twfastfilter);
	timeweight_destroy(twslowfilter);
	aweighting_destroy(afilter);
	cweighting_destroy(cfilter);
	lae_average_destroy();
	config_destroy(config_struct);
	free(block_squared);
	free(block_a);
	free(block_raw);
	sbuffer_destroy(ring_c);
	sbuffer_destroy(ring_a);
	sbuffer_destroy(ring_aslow);
	sbuffer_destroy(ring_afast);
	delete_files_storage(record_struct->created_audio_files);
	delete_files_storage(record_struct->created_data_files);
}
