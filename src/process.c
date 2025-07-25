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
 
static int beginning = 1;
 //static double laeq_accumulator;
 //static unsigned laeq_counter;
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
float lae_average(Levels *levels, float le)
{
	levels->le_accumulator += le;
	levels->le_counter ++;
	return levels->le_accumulator / levels->le_counter;
}


Percentil* percentil_create() {
	int percentil_segment_number = config_struct->background_duration / ((config_struct->segment_duration + 999) / 1000);

	Percentil *perc = malloc(sizeof(Percentil) + percentil_segment_number * sizeof(float));
	if (perc == NULL) {
		// Handle allocation failure
		return NULL;
	}
	perc->pos = 0;
	return perc;
}

void percentil_destroy(Percentil *perc){
	if(perc != NULL)
		free(perc);
}


//==============================================================================

Levels *levels_create() {
    Levels *levels = malloc(sizeof *levels);
    if (levels == NULL)
        return NULL;

	float *fbuffer = calloc(7 * config_struct->levels_record_period, sizeof(levels->LAeq));
    if (fbuffer == NULL) {
        free(levels);
        return NULL;
    }

    int *ibuffer = calloc(1 * config_struct->levels_record_period, sizeof(levels->event));
    if (ibuffer == NULL) {
        free(fbuffer);
        free(levels);
        return NULL;
    }

    float *temp = fbuffer;
    levels->LAeq = temp;
    temp += config_struct->levels_record_period;
    levels->LApeak = temp;
    temp += config_struct->levels_record_period;
    levels->LAFmax = temp;
    temp += config_struct->levels_record_period;
    levels->LAFmin = temp;
    temp += config_struct->levels_record_period;
    levels->LAE = temp;
    temp += config_struct->levels_record_period;
    levels->LAS = temp;

    levels->event = ibuffer;
    levels->background_LAS = config_struct->calibration_reference;
    levels->le_accumulator = 0;
    levels->le_counter = 0;
    levels->perc = percentil_create();

    if (levels->perc == NULL) {
        free(ibuffer);
        free(fbuffer);
        free(levels);
        return NULL;
    }

    levels->segment_number = 0;
    return levels;
}


void levels_destroy(Levels *levels)
{
	if (!levels) return;
	free(levels->LAeq);
	percentil_destroy(levels->perc);
	free(levels->event);
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
		float peak = samples[0];
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

void process_segment_levels(Levels *levels, struct sbuffer *ring_afast, struct sbuffer *ring_aslow, struct config *config)
{
	float delta = 0.0;
	if (config != NULL) {
		delta = config->calibration_delta;
	}

	assert(sbuffer_size(ring_afast) >= config_struct->segment_size);
	if (levels->segment_number >= config_struct->levels_record_period)
		levels->segment_number = 0;

	// Initial sample pointers
	float *samples_afast = sbuffer_read_ptr(ring_afast);
	float *samples_aslow = samples_afast;

	unsigned size = min(sbuffer_read_size(ring_afast), config_struct->segment_size);

	// Init AFAST accumulation
	float sample_sum_afast = samples_afast[0];
	float sample_max_afast = samples_afast[0];
	float sample_min_afast = samples_afast[0];

	// Init ASLOW accumulation (if used)
	float sample_sum_aslow = sample_sum_afast;

	if (ring_aslow != NULL) {
		assert(sbuffer_size(ring_aslow) == sbuffer_size(ring_afast));
		samples_aslow = sbuffer_read_ptr(ring_aslow);
		sample_sum_aslow = samples_aslow[0];
	}

	for (unsigned i = 1; i < size; i++) {
		float sample_afast = samples_afast[i];
		sample_sum_afast += sample_afast;
		if (sample_max_afast < sample_afast)
			sample_max_afast = sample_afast;
		if (sample_min_afast > sample_afast)
			sample_min_afast = sample_afast;

		if (ring_aslow != NULL) {
			float sample_aslow = samples_aslow[i];
			sample_sum_aslow += sample_aslow;
		}
	}

	sbuffer_read_consumes(ring_afast, size);
	if (ring_aslow != NULL)
		sbuffer_read_consumes(ring_aslow, size);

	if (size < config_struct->segment_size) {
		unsigned remaining = config_struct->segment_size - size;
		samples_afast = sbuffer_read_ptr(ring_afast);
		if (ring_aslow != NULL)
			samples_aslow = sbuffer_read_ptr(ring_aslow);

		for (unsigned i = 0; i < remaining; i++) {
			float sample_afast = samples_afast[i];
			sample_sum_afast += sample_afast;
			if (sample_max_afast < sample_afast)
				sample_max_afast = sample_afast;
			if (sample_min_afast > sample_afast)
				sample_min_afast = sample_afast;

			if (ring_aslow != NULL) {
				float sample_aslow = samples_aslow[i];
				sample_sum_aslow += sample_aslow;
			}
		}
		sbuffer_read_consumes(ring_afast, remaining);
		if (ring_aslow != NULL)
			sbuffer_read_consumes(ring_aslow, remaining);
	}
	// -------- DATA ----------
		// ---------- AFAST ----------
		float lae = sqrt(fabs(sample_sum_afast / config_struct->segment_size));
		float lafmax = sqrt(sample_max_afast);
		float lafmin = sqrt(sample_min_afast);
		levels->LAE[levels->segment_number]    = linear_to_decibel(lae) + delta;
		levels->LAFmax[levels->segment_number] = linear_to_decibel(lafmax) + delta;
		levels->LAFmin[levels->segment_number] = linear_to_decibel(lafmin) + delta;

		float laeq = lae_average(levels, lae);
		levels->LAeq[levels->segment_number] = linear_to_decibel(laeq) + delta;

		// ---------- ASLOW ----------
		if (ring_aslow != NULL) {
			float las = sqrt(fabs(sample_sum_aslow / config_struct->segment_size));
			levels->LAS[levels->segment_number] = linear_to_decibel(las) + delta;
		}
	// --------- PERCENTIL --------
		if(ring_aslow != NULL){
			int percentil_segment_number = config_struct->background_duration / ((config_struct->segment_duration + 999) / 1000);

			// Store LAS in percentil buffer
			levels->perc->array[levels->perc->pos] = levels->LAS[levels->segment_number];
			levels->perc->pos++;
			// Compute background_LAS
			if (beginning)
				levels->background_LAS = get_percentile_quickselect(levels->perc->array, levels->perc->pos, 10);
			if (levels->perc->pos >= percentil_segment_number) {
				levels->background_LAS = get_percentile_quickselect(levels->perc->array, levels->perc->pos, 10);
				levels->perc->pos = 0;
				beginning = 0;
			} 
			
			levels->event[levels->segment_number] = event_check(levels);
		}
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

static void swap(float *a, float *b) {
    float tmp = *a;
    *a = *b;
    *b = tmp;
}

static int partition(float arr[], int left, int right, int pivot_index) {
    float pivot_value = arr[pivot_index];
    swap(&arr[pivot_index], &arr[right]); // Move pivot to end
    int store_index = left;

    for (int i = left; i < right; i++) {
        if (arr[i] < pivot_value) {
            swap(&arr[store_index], &arr[i]);
            store_index++;
        }
    }
    swap(&arr[store_index], &arr[right]); // Move pivot to its final place
    return store_index;
}

static float quickselect(float arr[], int left, int right, int k) {
    if (left == right)  // Only one element
        return arr[left];

    int pivot_index = left + rand() % (right - left + 1);
    pivot_index = partition(arr, left, right, pivot_index);

    if (k == pivot_index)
        return arr[k];
    else if (k < pivot_index)
        return quickselect(arr, left, pivot_index - 1, k);
    else
        return quickselect(arr, pivot_index + 1, right, k);
}

float get_percentile_quickselect(float* array, int size, int perc) {
    int index = (perc * size) / 100;
    // Make a copy so we don't mutate original data
    float *copy = malloc(size * sizeof(float));
    if (!copy) return -1;  // fallback or error
    for (int i = 0; i < size; i++) copy[i] = array[i];

    float result = quickselect(copy, 0, size - 1, index);
    free(copy);
    return result;
}


static int cmp_func(const void* a, const void* b) {
    float fa = *(float*)a;
    float fb = *(float*)b;
    return (fa > fb) - (fa < fb);
}

float get_percentile(float* array, int size, int perc){
	
	qsort(array,size,sizeof(array[0]),cmp_func);
	
	int index = ((perc * size))/ 100;
    
    return array[index];
}

int event_check(Levels* levels){
	//printf("background_level = %f\tnoise_level = %f\n",levels->background_LAS,levels->LAS[levels->segment_number]);
	//fflush(stdout);
	
	if(levels->LAS[levels->segment_number] > levels->background_LAS + EVENT_TRESHOLD){
			return 1;
	}
	return 0;
}
 
