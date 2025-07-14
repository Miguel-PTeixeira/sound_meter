
/*
Copyright 2022 Laboratório de Audio e Acústica do ISEL

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

#include <alsa/asoundlib.h>
#include <jansson.h>
#include "config.h"
#include "record.h"
#include "filter.h"
#include "in_out.h"

static Input_device device;

bool input_device_open(struct config *config)
{
	if (config->input_file == NULL)	{
		device.device = DEVICE_SOUND_CARD;
		int result = snd_pcm_open(&device.alsa_handle, config->input_device, SND_PCM_STREAM_CAPTURE, 0);
		if (result < 0) {
			fprintf(stderr, "cannot open audio device %s (%s)\n",
					config->input_device,
					snd_strerror(result));
			return false;
		}
		result = snd_pcm_set_params(device.alsa_handle,
					CONFIG_PCM_FORMAT, /* mudar */
					SND_PCM_ACCESS_RW_INTERLEAVED,
					config->channels,
					config->sample_rate,
					1,
					500000); /* 0.5 sec */
		if (result < 0) {
			fprintf(stderr, "snd_pcm_set_params: %s\n", snd_strerror(result));
			return false;
		}
#if 0
		snd_pcm_uframes_t buffer_size, period_size;
		result = snd_pcm_get_params(device.alsa_handle,
					&buffer_size, &period_size);
		if (result < 0) {
			fprintf(stderr, "snd_pcm_get_params: %s\n", snd_strerror(result));
			return false;
		}
		printf("buffer_size = %lu, period_size = %lu\n", buffer_size, period_size);
#endif
		result = snd_pcm_prepare(device.alsa_handle);
		if (result < 0) {
			fprintf(stderr, "cannot prepare audio interface for use (%s)\n",
					snd_strerror(result));
			return false;
		}
		snd_pcm_start(device.alsa_handle);
	}
	else {
		device.device = DEVICE_WAVE;
		device.wave = wave_load(config->input_file);
		if (device.wave == NULL) {
			fprintf(stderr, "Can't load wave file %s\n", config->input_file);
			return false;
		}
		config->channels = wave_get_number_of_channels(device.wave);
		config->sample_rate = wave_get_sample_rate(device.wave);
		config->bits_per_sample = wave_get_bits_per_sample(device.wave);
		config->audio_file_duration = wave_get_duration(device.wave);
		config->data_file_duration = config->audio_file_duration;
	}
		/*end*/
	return true;
}

/**
 * @brief Lê amostras do dispositivo de entrada -- ficheiro ou placa de som.
 *
 * As amostras são depositadas no buffer fornecido como uma sequência de blocos.
 * Cada bloco tem as amostras de um canal consecutivas. A dimensão de um bloco
 * é dada pelo número de frames lidas.

 * @param buffer Ponteiro para o buffer onde as amostras são depositadas.
 * @param nframes Número de frames a ler.
 * @return Número de frames lidas.
 */
size_t input_device_read(float *buffer, size_t nframes)
{
	int16_t *samples_int16 = malloc(nframes * config_struct->channels * sizeof *samples_int16);
	if (samples_int16 == NULL) {
		fprintf(stderr, "Out of memory\n");
		return 0;
	}
	size_t read_frames;
	if (device.device == DEVICE_SOUND_CARD) {
		read_frames = snd_pcm_readi(device.alsa_handle, samples_int16, nframes);
		if (read_frames < 0) {
			fprintf(stderr, "read from audio interface failed (%s)\n",
					snd_strerror(read_frames));
			return 0;
		}
	}
	else if (device.device == DEVICE_WAVE) {
		read_frames = wave_read_samples(device.wave, (char *)samples_int16, nframes);
		if (read_frames == 0)
			return 0;
	}
	else {
		assert(false);	//	Should never reach this point
		return 0;
	}
	samples_int16_to_float(samples_int16, buffer, read_frames);
	/*added*/
	if(config_struct->calibration_time <= 0){
		record_append_samples(buffer,read_frames);
		third_octave_levels(buffer,read_frames);
	}
	/*end*/
	free(samples_int16);
	return read_frames;
}

void input_device_close()
{	
	if (device.device == DEVICE_SOUND_CARD) {
		int result_code = snd_pcm_close(device.alsa_handle);
		if (result_code < 0)
			fprintf(stderr, "Error closing sound card\n");
	}
	else if (device.device == DEVICE_WAVE) {
		wave_destroy(device.wave);
	}
}

//------------------------------------------------------------------------------
//	Output

static char *current_format = NULL;

static char *data_output_filepath = NULL;

static FILE *data_output_fd = NULL;

static char *audio_output_filepath = NULL;

static json_t *output_json;

static int data_output_index;
static long sample_count;

static time_t calendar;
static unsigned output_time; //	Tempo decorrido para o ficheiro atual


void output_open(bool continous)
{
	calendar = time(NULL);
	if (continous)
		output_new_filename(0, data_output_filepath);
	if(config_struct->data_record_ok)
		output_file_open(data_output_filepath);
}

void output_close()
{
	output_file_close();
	free(data_output_filepath);
}

void output_file_close()
{
	if (strcmp(config_struct->data_output_format, ".json") == 0) {
		json_dumpf(output_json, data_output_fd, JSON_REAL_PRECISION(3));
		json_decref(output_json);
	}
	if (data_output_fd != NULL)
		fclose(data_output_fd);
	data_output_fd = NULL;
}

static char *output_init_filename(const char* format)
{
	size_t date_position = strlen(config_struct->output_path)
		+ strlen(config_struct->output_filename);
	size_t filepath_size = date_position
		+ strlen(OUTPUT_FORMAT)
		+ strlen(config_struct->data_output_format) + 1;
	char *filepath = malloc(filepath_size);
	if (filepath == NULL) {
		fprintf(stderr, "Out of memory\n");
		return NULL;
	}
	strcpy(filepath, config_struct->output_path);
	strcat(filepath, config_struct->output_filename);
	strcat(filepath, OUTPUT_FORMAT);
	strcat(filepath, format);
	return filepath;
}

void output_new_filename(time_t time, char* filepath)
{
	calendar += time;
	size_t date_size = strlen(OUTPUT_FORMAT);
	char buffer[date_size + 1];
	size_t date_position = strlen(config_struct->output_path)
		+ strlen(config_struct->output_filename);
	strftime(buffer, sizeof buffer, TIME_FORMAT, localtime(&calendar));
	for (size_t i = 0; i < date_size; ++i){
		(filepath + date_position)[i] = buffer[i];
	}
}

static json_t *LAeq_json;
static json_t *LAE_json;
static json_t *LAFmin_json;
static json_t *LAFmax_json;
static json_t *LApeak_json;

void output_file_open(char *filepath)
{	
	FILE * output_file = fopen(filepath, "w");
	if (output_file == NULL) {
		fprintf(stderr, "fopen(%s, \"w\") error: %s\n", filepath, strerror(errno));
		exit(EXIT_FAILURE);
	}
	
	current_format = strchr(filepath,'.');
	
	if (strcmp(current_format, ".csv") == 0){
		data_output_fd = output_file;
		add_file(record_struct->created_data_files, filepath);
		fprintf(data_output_fd, "Event, background_LAS, LAS, LAFeq, LAFmin, LAFE, LAFmax, LCpeak, Freq[Hz]:, 25, 31.5, 40, 50, 63, 80, 100, 125, 160, 200, 250, 315, 400, 500, 630, 800, 1k, 1.25k, 1.6k, 2k, 2.5k, 3.15k, 4k, 5k, 6.3k, 8k, 10k, 12.5k, 16k, 20k, audio_file\n");
	}
	
	else if (strcmp(current_format, ".json") == 0) {
		data_output_fd = output_file;
		add_file(record_struct->created_data_files, filepath);
		/*
		{
			"ts":xxxxxxxxx,
			"segment": xx,
			"levels": {
				"LAeq": [],
				"LAE": [],
				"LAFmin": [],
				"LAFmax": [],
				"LApeak": []
			}
		}
		*/
		output_json = json_object();
		if (output_json == NULL) {
			fprintf(stderr, "Output: error creating JSON object \"output_json\".\n");
			return;
		}
		json_t *object_json = json_integer(calendar);
		if (object_json != NULL) {
			if (json_object_set_new(output_json, "ts", object_json) != 0) {
				fprintf(stderr, "Output: error adding JSON field \"ts\" ("__FILE__": %d)\n", __LINE__);
				return;
			}
		}
		object_json = json_integer(config_struct->segment_duration);
		if (object_json != NULL) {
			if (json_object_set_new(output_json, "segment", object_json) != 0) {
				fprintf(stderr, "Output: error adding JSON field \"segment\" ("__FILE__": %d)\n", __LINE__);
				return;
			}
		}
		json_t *levels_json = json_object();
		if (levels_json != NULL) {
			if (json_object_set_new(output_json, "levels", levels_json) != 0) {
				fprintf(stderr, "Output: error adding JSON field \"levels\" ("__FILE__": %d)\n", __LINE__);
				return;
			}
		}
		LAeq_json = json_array();
		if (LAeq_json != NULL) {
			if (json_object_set_new(levels_json, "LAeq", LAeq_json) != 0) {
				fprintf(stderr, "Output: error adding JSON field \"LAeq\" ("__FILE__": %d)\n", __LINE__);
				return;
			}
		}
		LAE_json = json_array();
		if (LAE_json != NULL) {
			if (json_object_set_new(levels_json, "LAE", LAE_json) != 0) {
				fprintf(stderr, "Output: error adding JSON field \"LAE\" ("__FILE__": %d)\n", __LINE__);
				return;
			}
		}
		LAFmin_json = json_array();
		if (LAFmin_json != NULL) {
			if (json_object_set_new(levels_json, "LAFmin", LAFmin_json) != 0) {
				fprintf(stderr, "Output: error adding JSON field \"LAFmin\" ("__FILE__": %d)\n", __LINE__);
				return;
			}
		}
		LAFmax_json = json_array();
		if (LAFmax_json != NULL) {
			if (json_object_set_new(levels_json, "LAFmax", LAFmax_json) != 0) {
				fprintf(stderr, "Output: error adding JSON field \"LAFmax\" ("__FILE__": %d)\n", __LINE__);
				return;
			}
		}
		LApeak_json = json_array();
		if (LApeak_json != NULL) {
			if (json_object_set_new(levels_json, "LCpeak", LApeak_json) != 0) {
				fprintf(stderr, "Output: error adding JSON field \"LApeak\" ("__FILE__": %d)\n", __LINE__);
				return;
			}
		}
		data_output_index = 0;
	}else if(strcmp(current_format, ".ogg") == 0){
		record_struct->output = output_file;
	}
	else {
		fprintf(stderr, "Output: no output format recognized\n");
	}
}

#define JSON_ARRAY_SET(level_array_json, level_value) \
{ \
	json_t *real_json = json_real(level_value); \
	if (real_json == NULL) { \
		fprintf(stderr, "Output: error creating real_json ("__FILE__": %d)\n", __LINE__); \
		return; \
	} \
	if (json_array_append_new(level_array_json, real_json) != 0) { \
		fprintf(stderr, "Output: error set " #level_array_json "[i] ("__FILE__": %d)\n", __LINE__); \
		return; \
	} \
}

void output_record(Levels *levels, ThirdOctaveData *td, bool continuous)
{
	if (strcmp(config_struct->data_output_format, ".csv") == 0) {
		for (unsigned i = 0; i < levels->segment_number; ++i) {
			fprintf(data_output_fd,
				"%d, %2.1f, %2.1f, "
				"%2.1f, %2.1f, %2.1f, %2.1f, %2.1f, "
				"-, "
				"%2.1f, %2.1f, %2.1f, %2.1f, %2.1f, "
				"%2.1f, %2.1f, %2.1f, %2.1f, %2.1f, "
				"%2.1f, %2.1f, %2.1f, %2.1f, %2.1f, "
				"%2.1f, %2.1f, %2.1f, %2.1f, %2.1f, "
				"%2.1f, %2.1f, %2.1f, %2.1f, %2.1f, "
				"%2.1f, %2.1f, %2.1f, %2.1f, %2.1f, "
				"%s\n",
				levels->event[i], levels->background_LAS, levels->LAS[i],
				levels->LAeq[i], levels->LAFmin[i], levels->LAE[i], levels->LAFmax[i], levels->LApeak[i],
				td[0].levels->LAE[i], td[1].levels->LAE[i], td[2].levels->LAE[i], td[3].levels->LAE[i], td[4].levels->LAE[i],
				td[5].levels->LAE[i], td[6].levels->LAE[i], td[7].levels->LAE[i], td[8].levels->LAE[i], td[9].levels->LAE[i],
				td[10].levels->LAE[i], td[11].levels->LAE[i], td[12].levels->LAE[i], td[13].levels->LAE[i], td[14].levels->LAE[i],
				td[15].levels->LAE[i], td[16].levels->LAE[i], td[17].levels->LAE[i], td[18].levels->LAE[i], td[19].levels->LAE[i],
				td[20].levels->LAE[i], td[21].levels->LAE[i], td[22].levels->LAE[i], td[23].levels->LAE[i], td[24].levels->LAE[i],
				td[25].levels->LAE[i], td[26].levels->LAE[i], td[27].levels->LAE[i], td[28].levels->LAE[i], td[29].levels->LAE[i],
				audio_output_filepath
			);
			if(levels->event[i]){
				archive_file(audio_output_filepath);
			}
		}
		sample_count += config_struct->sample_rate/config_struct->levels_record_period;
	}
	else if (strcmp(config_struct->data_output_format, ".json") == 0) {
		for (unsigned i = 0; i < levels->segment_number; ++i) {
			JSON_ARRAY_SET(LAeq_json, levels->LAeq[i]);
			JSON_ARRAY_SET(LAE_json, levels->LAE[i]);
			JSON_ARRAY_SET(LAFmin_json, levels->LAFmin[i]);
			JSON_ARRAY_SET(LAFmax_json, levels->LAFmax[i]);
			JSON_ARRAY_SET(LApeak_json, levels->LApeak[i]);
		}
		data_output_index += levels->segment_number;
	}
	output_time += config_struct->levels_record_period; //	tempo de registo
	if(config_struct->data_record_ok){
		fflush(data_output_fd);
		fsync(fileno(data_output_fd));
	}
	if (continuous && sample_count >= (config_struct->sample_rate * config_struct->data_file_duration)) { // altura de mudança de ficheiro
		output_file_close();
		output_new_filename(output_time, data_output_filepath);
		output_file_open(data_output_filepath);
		output_time = 0;
		sample_count = 0;
	}
	//record_struct->time_elapsed += config_struct->levels_record_period;
	record_struct->time_elapsed = time(NULL) - record_struct->time_start;
	if (continuous && record_struct->sample_count >= config_struct->sample_rate * config_struct->audio_file_duration) {
		record_stop();
		output_new_filename(output_time, audio_output_filepath);
		output_time = 0;
		if(!record_start()){
			fprintf(stderr,"ERROR : could not start recording (in_out.c : 79)");
			exit(1);
		}
	}
}

static char *get_filename(const char *filename) {
    const char *no_path = strrchr(filename, '/');
    const char *start = no_path ? no_path + 1 : filename;

    const char *ext = strrchr(start, '.');
    size_t filename_len = ext ? (size_t)(ext - start) : strlen(start);

    char *ptr = malloc(filename_len + 1);
    if (!ptr) return NULL;

    strncpy(ptr, start, filename_len);
    ptr[filename_len] = '\0';

    return ptr;
}

static const char *get_extention(const char *filename)
{
	const char *ptr = strrchr(filename, '.');
	return ptr != NULL ? ptr + 1 : NULL;
}

static char *get_stem(const char *fullname)
{
	const char *point = strrchr(fullname, '.');
	if (point == NULL)
		point = fullname + strlen(fullname);
	const char *slash = strrchr(fullname, '/');
	if (slash == NULL)
		slash = fullname;
	else
		slash += 1;
	size_t stem_size = point - slash;

	char *stem = malloc(stem_size + 1);
	if (stem == NULL)
		return NULL;
	memcpy(stem, slash, stem_size);
	*(stem + stem_size) = '\0';
	return stem;
}

static char *concat2(const char *path, const char *filename) {
	char *filepath = malloc(strlen(path) + strlen(filename) + 1);
	if (filepath == NULL) {
		fprintf(stderr, "Out of memory\n");
		return NULL;
	}
	strcpy(filepath, path);
	strcat(filepath, filename);
	return filepath;
}

static char *concat3(const char *path, const char *filename, const char *extention) {
	char *filepath = malloc(strlen(path) + strlen(filename) + strlen(extention) + 1);
	if (filepath == NULL) {
		fprintf(stderr, "Out of memory\n");
		return NULL;
	}
	strcpy(filepath, path);
	strcat(filepath, filename);
	strcat(filepath, extention);
	return filepath;
}

void output_set_filename(const char *option_output_filename, const char *option_input_filename)
{
	if (option_output_filename != NULL) {
		char first_letter = option_output_filename[0];
		if (first_letter != '/' && first_letter != '.') // absoluto / relativo
			data_output_filepath = concat2(config_struct->output_path, option_output_filename);
		else
			data_output_filepath = strdup(option_output_filename);
	}
	else if (option_input_filename != NULL) {
		char *filename = get_filename(option_input_filename);
				
		data_output_filepath = concat3(config_struct->output_path,
									filename,
									config_struct->data_output_format);
									
		audio_output_filepath =  concat3(config_struct->output_path,
									filename,
									config_struct->audio_output_format);
		free(filename);
	}
	else {
		data_output_filepath = output_init_filename(config_struct->data_output_format);
		audio_output_filepath = output_init_filename(config_struct->audio_output_format);
	}
}

char *output_get_data_filepath()
{
	return data_output_filepath;
}

char *output_get_audio_filepath()
{
	return audio_output_filepath;
}

//------------------------------------------------------------------------------

Audit *audit_create(char *id)
{
	Audit *audit = malloc(sizeof *audit);
	if (audit == NULL)
		return NULL;
	audit->id = id;
	audit->wave = wave_create(config_struct->bits_per_sample, 1);
	wave_set_sample_rate(audit->wave, config_struct->sample_rate);
	return audit;
}

static char *audit_make_filename(struct config *config, char *id)
{
	const char *extention = get_extention(config->input_file);
	char *stem = get_stem(config->input_file);
	if (stem == NULL)
		return NULL;
	size_t filepath_size = strlen(config->output_path) + strlen(stem) + 1 + strlen(id) + 1 + strlen(extention) + 1;
	char *filepath = malloc(filepath_size);
	if (filepath == NULL) {
		free(stem);
		return NULL;
	}
	strcpy(filepath, config->output_path);
	strcat(filepath, stem);
	free(stem);
	strcat(filepath, ".");
	strcat(filepath, id);
	strcat(filepath, ".");
	strcat(filepath, extention);
	return filepath;
}

int audit_append_samples(Audit *audit, float *data, unsigned data_size)
{
	int16_t *buffer = malloc(data_size * sizeof *buffer);
	if (buffer == NULL)
		return EXIT_FAILURE;
	samples_float_to_int16(data, buffer, data_size);
	size_t wrote_frames = wave_append_samples(audit->wave, (char *)buffer, data_size);
	free(buffer);
	return wrote_frames == data_size;
}

void audit_destroy(Audit *audit)
{
	wave_format_update(audit->wave);
	char *filename = audit_make_filename(config_struct, audit->id);
	wave_store(audit->wave, filename);
	free(filename);
	wave_destroy(audit->wave);
	free(audit);
}

/**
 * Converte uma sequência de frames com amostras intercaladas
 * para blocos de amostras, um bloco por canal.
 * As amostras originais são representadas a 16 bits.
 * As amostras nos blocos são representadas em float e normalizadas no intervalo -1.0 .. +1.0
 */
void samples_int16_to_float(int16_t *samples_int16, float *samples_float, unsigned length)
{
	for (unsigned c = 0; c < config_struct->channels; c++) {
		float *samples_float_channel = samples_float + c * length;
		int16_t *samples_int16_channel = samples_int16 + c;
		for (unsigned i = 0; i < length; i++) {
			//	Converte para float e normaliza no intervalo +1.0 ... -1.0
			*samples_float_channel = ((float)*samples_int16_channel) / ((int)INT16_MAX + 1);
			assert(*samples_float_channel >= -1.0 && *samples_float_channel <= +1.0);
			samples_float_channel += 1;
			samples_int16_channel += config_struct->channels;
		}
	}
}

void samples_float_to_int16(float *samples_float, int16_t *samples_int16, unsigned length)
{
	for (unsigned i = 0; i < length; i++) {
		//	Converte para int16_t e desnormaliza do intervalo +1.0 ... -1.0
		float a = samples_float[i];
		uint16_t b = a * ((int)INT16_MAX + 1);
		samples_int16[i] = b;
	}
}
