
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
#include "filter.h"
#include <stdio.h>

#include "FilterCoefs_48000.h"
#include "process.h"
//#define alfa (1.813894426370144 * pow(10, -4))

//#define alfa 0.00167
#define alfa 0.0001666527785

//Inits time weight filter
Timeweight *timeweight_create()
{
	Timeweight *tw = malloc(sizeof *tw);
	tw->previous = 0;
	return tw;
}

void timeweight_destroy(Timeweight *tw)
{
	free(tw);
}

void timeweight_filtering(Timeweight *tw, float *x, float *y, unsigned n)
{
	// y[n] = (1−α)x[n]+αy[n−1]
	for (unsigned i = 0; i < n; i++)
//		tw->previous = y[i] = ((1 - alfa) * x[i]) + (alfa * tw->previous);
		// y[n] = α * x[n] + (1 - α) * y[n−1]
		tw->previous = y[i] = ((alfa) * x[i]) + ((1 - alfa) * tw->previous);
}

static void shift_right(float u[], int size)
{
	memmove(&u[1], &u[0], (size - 1) * sizeof u[0]);
	u[0] = 0;
}

Afilter *aweighting_create(int N)
{
	Afilter *af = malloc(sizeof *af);
	af->coefs = A_WEIGHTED_taps;
	af->u = calloc(3 * N, sizeof(float));
	af->N = N;
	return af;
}

void aweighting_destroy(Afilter *af)
{
	free(af->u);
	free(af);
}

/*------------------------------------------------------------------------------
		<-- mais recente               mais antigo ->

	      0       1       2       3       4       5
	   ------- ------- ------- ------- ------- -------
	u |       |       |       |       |       |       |
	   ------- ------- ------- ------- ------- -------
	   u1(n)   u1(n-1) u1(n-2) u2(n)   u2(n-1) u2(n-2)


	        0   1   2   3   4   5   6   7   8   9   10  11
	       --- --- --- --- --- --- --- --- --- --- --- ---
	coefs |   |   |   |   |   |   |   |   |   |   |   |   |
	       --- --- --- --- --- --- --- --- --- --- --- ---
	       b10 b11 b12 a10 a11 a12 b20 b21 b22 a20 a21 a22
*/

static float biquad(float x, float *u, const float *a, const float *b)
{
	// ui(n) = xi(n) + ai(0) * ui(n-1) + ai(1) * ui(n-2)
	u[0] = x - a[1] * u[1] - a[2] * u[2];
	// yi(n) = bi(0) * ui(n) + bi(1) * ui(n-1) + bi[2] * ui(n-2)
	return b[0] * u[0] + b[1] * u[1] + b[2] * u[2];
}

static float cascade_biquad(float x, float *u, const float *coefs, int N)
{
	float y = x;
	for (int i = 0; i < N; i++)
		y = biquad(y, u + i * 3, coefs + 3 + i * 6, coefs + i * 6);
	return y;
}

void aweighting_filtering(Afilter *af, float x[], float y[], unsigned size)
{
	for (int n = 0; n < size; n++) {
		shift_right(af->u, af->N);
		shift_right(af->u + 3, af->N);
		shift_right(af->u + 6, af->N);
		float a = cascade_biquad(x[n], af->u, af->coefs, af->N);
		y[n] = a;
//		assert(a >= -1.0 && a <= +1.0);
	}
}

static const float* bands[] = {
        THIRD_OCTAVE_BAND_1,
        THIRD_OCTAVE_BAND_2,
        THIRD_OCTAVE_BAND_3,
        THIRD_OCTAVE_BAND_4,
        THIRD_OCTAVE_BAND_5,
        THIRD_OCTAVE_BAND_6,
        THIRD_OCTAVE_BAND_7,
        THIRD_OCTAVE_BAND_8,
        THIRD_OCTAVE_BAND_9,
        THIRD_OCTAVE_BAND_10,
        THIRD_OCTAVE_BAND_11,
        THIRD_OCTAVE_BAND_12,
        THIRD_OCTAVE_BAND_13,
        THIRD_OCTAVE_BAND_14,
        THIRD_OCTAVE_BAND_15,
        THIRD_OCTAVE_BAND_16,
        THIRD_OCTAVE_BAND_17,
        THIRD_OCTAVE_BAND_18,
        THIRD_OCTAVE_BAND_19,
        THIRD_OCTAVE_BAND_20,
        THIRD_OCTAVE_BAND_21,
        THIRD_OCTAVE_BAND_22,
        THIRD_OCTAVE_BAND_23,
        THIRD_OCTAVE_BAND_24,
        THIRD_OCTAVE_BAND_25,
        THIRD_OCTAVE_BAND_26,
        THIRD_OCTAVE_BAND_27,
        THIRD_OCTAVE_BAND_28,
        THIRD_OCTAVE_BAND_29,
        THIRD_OCTAVE_BAND_30
};


static float TO_levels[30];

float get_level(int band_idx){
	return TO_levels[band_idx];
}


ThirdOctaveFilter* third_octave_create(int band_idx) {
    const int biquad_stages = 4;
    
    ThirdOctaveFilter* filter = malloc(sizeof(*filter));
    if (!filter) return NULL;
    
    filter->u = calloc(BIQUAD_STATE_SIZE * biquad_stages, sizeof(float));
    if (!filter->u) {
        free(filter);
        return NULL;
    }
    
    filter->coefs = bands[band_idx];
    if (!filter->coefs) {
        free(filter->u);
        free(filter);
        return NULL;
    }
    
    filter->N = biquad_stages;
    return filter;
}

void third_octave_destroy(ThirdOctaveFilter* filter) {
    if (filter) {
        free(filter->u);
        free(filter);
    }
}

void third_octave_filtering(ThirdOctaveFilter* of, float x[], float y[], unsigned size) 
{
    for (unsigned n = 0; n < size; n++) {
        // Process through cascade (using the same cascade_biquad function)
        float filtered = cascade_biquad(x[n], of->u, of->coefs, of->N);
        y[n] = filtered;
        
        // Update state variables for next sample
        for (int stage = 0; stage < of->N; stage++) {
            shift_right(of->u + stage * 3, 3);  // Shift 3 state variables per stage
        }
    }
}
/*ADDED*/

void third_octave_levels(float x[], unsigned size) {
	unsigned length_read = size;
	float *y = malloc(length_read * sizeof(float));
	
	for (int i = 0; i < 29; i++) {
		ThirdOctaveFilter *filter = third_octave_create(i);
		third_octave_filtering(filter, x, y, length_read);
		third_octave_destroy(filter);
		float sample_sum = 0;
		for(int c = 0; c < size; c++)
			sample_sum += y[c] * y[c];
		if(sample_sum < -40.0)
			sample_sum = -1000.0;
		TO_levels[i]= linear_to_decibel(sample_sum/size);
	}
	free(y);
}
/*END*/
