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

#include <assert.h>
#include <math.h>
#include "process.h"
#include "config.h"
#include "ring.h"

/**
 * lae_average_create:
 * Inicializar o cálculo de LAEq
 */
 
 //float laeq_accumulator;
 //int laeq_counter;
void lae_average_create()
{
/*
	laeq_accumulator = 0;
	laeq_counter = 0;
*/
}

void lae_average_destroy()
{
}

/**
 * lae_average:
 * @lae: Valor LAE do segmento corrente
 *
 *  Cálcular LAEq
 *
 * Returns: Valor LAEq
 */
float lae_average(Levels *levels)
{
	float laeq_accumulator = decibel_to_linear(levels->LAeq[levels->segment_number]) * (levels->segment_number);
	laeq_accumulator += decibel_to_linear(levels->LAE[levels->segment_number]);

	return laeq_accumulator / (levels->segment_number+1);
}

//==============================================================================

Levels *levels_create()
{
	Levels *levels = malloc(sizeof *levels);
	if (levels == NULL)
		return NULL;

	size_t segment_data_size = config_struct->levels_record_period * sizeof *levels->LAeq;
	float *buffer = malloc(5 * segment_data_size);
	if (buffer == NULL) {
		free(levels);
		return NULL;
	}
	memset(buffer, 0, 5 * segment_data_size);
	levels->LAeq = buffer;
	levels->LAeq[0] = 0;
	levels->LApeak = buffer += config_struct->levels_record_period;
	levels->LAFmax = buffer += config_struct->levels_record_period;
	levels->LAFmin = buffer += config_struct->levels_record_period;
	levels->LAE = buffer += config_struct->levels_record_period;

	levels->segment_number = 0;
	return levels;
}

void levels_destroy(Levels *levels)
{
	free(levels->LAeq);
	free(levels);
}

void process_block_square(float *input, float *output, unsigned size)
{
	for (unsigned i = 0; i < size; i++) {
		output[i] = pow(input[i], 2);
//		assert(output[i] >= -1.0 && output[i] <= +1.0);
	}
}

static inline unsigned min(unsigned a, unsigned b) {
	return a < b ? a : b;
}

void process_segment_levelpeak(Levels *levels, struct sbuffer *ring, struct config *config)
{
	/* Só processa ao fim de um segmento */
	if (sbuffer_size(ring) >= config_struct->segment_size) {
		float *samples = sbuffer_read_ptr(ring);
		unsigned size = min(sbuffer_read_size(ring), config_struct->segment_size);
//		assert(samples[0] >= -1.0 && samples[0] <= +1.0);
		float peak = fabs(samples[0]);
		for (unsigned i = 1; i < size; i++) {
//			assert(samples[i] >= -1.0 && samples[i] <= +1.0);
			float sample = fabs(samples[i]);
			if (peak < sample)
				peak = sample;
		}
		sbuffer_read_consumes(ring, size);
		if (size < config_struct->segment_size) { /* O ring buffer deu a volta? */
			samples = sbuffer_read_ptr(ring);
			size = config_struct->segment_size - size;
			for (unsigned i = 0; i < size; i++) {
//				assert(samples[i] >= -1.0 && samples[i] <= +1.0);
				float sample = fabs(samples[i]);
				if (peak < sample)
					peak = sample;
			}
			sbuffer_read_consumes(ring, size);
		}
		levels->LApeak[levels->segment_number] = linear_to_decibel(peak) + config->calibration_delta;
	}
}

void process_segment_levels(Levels *levels, struct sbuffer *ring, struct config *config)
{
	/* Só processa se o número de amostras disponível for maior ou igual a um segmento */
	assert(sbuffer_size(ring) >= config_struct->segment_size);
	float *samples = sbuffer_read_ptr(ring);
	unsigned size = min(sbuffer_read_size(ring), config_struct->segment_size);

	float sample_sum = samples[0];
	float sample_max = samples[0];
	float sample_min = samples[0];
	for (unsigned i = 1; i < size; i++) {
//		assert(samples[i] >= -1.0 && samples[i] <= +1.0);
		float sample = samples[i];
		sample_sum += sample;
		if (sample_max < sample)
			sample_max = sample;
		if (sample_min > sample)
			sample_min = sample;
	}
	sbuffer_read_consumes(ring, size);
	if (size < config_struct->segment_size) { /* O ring buffer deu a volta? */
		samples = sbuffer_read_ptr(ring);
		size = config_struct->segment_size - size;
		for (unsigned i = 0; i < size; i++) {
// 				assert(samples[i] >= -1.0 && samples[i] <= +1.0);
			float sample = samples[i];
			sample_sum += sample;
			if (sample_max < sample)
				sample_max = sample;
			if (sample_min > sample)
				sample_min = sample;
		}
		sbuffer_read_consumes(ring, size);
	}
//	assert(sample_sum <= 48000.0);
	float lae = sqrt(sample_sum / (config_struct->segment_size));
	if(sample_sum < 0)
		lae = -sqrt(abs(sample_sum / (config_struct->segment_size)));		
	float lafmax = sqrt(sample_max);
	float lafmin = sqrt(sample_min);
	levels->LAFmax[levels->segment_number] = linear_to_decibel(lafmax) + config->calibration_delta;
	levels->LAFmin[levels->segment_number] = linear_to_decibel(lafmin) + config->calibration_delta;
	levels->LAE[levels->segment_number] = linear_to_decibel(lae) + config->calibration_delta;
	float laeq = lae_average(levels);
	levels->LAeq[levels->segment_number] = linear_to_decibel(laeq);
	levels->segment_number++;
}

/**
 * @brief Processa a direção do som domante
 *
 * @param ring Array de buffers de segmentos
 * @param config Configuração do sistema
 */
void process_segment_direction(Levels *levels, struct sbuffer *ring[], struct config *config)
{
}

static int cmp_func(const void* a, const void* b) {
    float fa = *(float*)a;
    float fb = *(float*)b;
    return (fa > fb) - (fa < fb);
}

float get_percentil(float* array, int size, int perc){
	
	qsort(array,size,sizeof(array[0]),cmp_func);
	
	int index = (perc * size) / 100;
    if (index >= size) index = size - 1;
    
    return array[index];
}

int event_check(Levels* levels, float background_level){
		
	float noise_level = levels->LAFmax[levels->segment_number-1];

	//printf("background_level = %f\tnoise_level = %f\n",background_level,noise_level);
	fflush(stdout);
	
	if(noise_level > background_level + EVENT_TRESHOLD)
			return 1;
	return 0;
}
 
