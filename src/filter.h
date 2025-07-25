
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

#ifndef _FILTER_H_
#define _FILTER_H_

#include <stdlib.h>
#include <math.h>
#include <string.h>
#include "process.h"
#include "sbuffer.h"

#define BIQUAD_STATE_SIZE 3
#define BIQUAD_COEFS_PER_STAGE 6 // b0,b1,b2,a0,a1,a2 per stage

#define THIRD_OCTAVE_BAND_MAX 30

typedef struct {
	float previous; // saves y[n-1]
	float alpha;
} Timeweight;

Timeweight *timeweight_create();
Timeweight *timeweightSlow_create();
void timeweight_destroy(Timeweight *);
//void timeweight_filtering(Block *buff, Timeweight *tw);
//void timeweight_filtering(const float *x, float *y, size_t size, Timeweight *tw);

void timeweight_filtering(Timeweight *tw, float *input, float *output, unsigned length);

typedef struct {
	float *u;				// variável de estado
//	const float *coef_a;	// coeficientes do filtro
//	const float *coef_b;	// coeficientes do filtro
	int N;					// ordem do filtro
	const float *coefs;		// coeficientes do filtro; formato Joao Casaleiro
} Afilter;

Afilter *aweighting_create(int N);
void aweighting_destroy(Afilter *);
// void aweighting_filtering(const float *x, float *y, size_t size, Afilter *af);

void aweighting_filtering(Afilter *af, float *input, float *output, unsigned length);

float *aweighting_get_coef_a(int);
float *aweighting_get_coef_b(int);

typedef struct {
	float *u;				// variável de estado
//	const float *coef_a;	// coeficientes do filtro
//	const float *coef_b;	// coeficientes do filtro
	int N;					// ordem do filtro
	const float *coefs;		// coeficientes do filtro; formato Joao Casaleiro
} Cfilter;

Cfilter *cweighting_create(int N);
void cweighting_destroy(Cfilter *cf);
void cweighting_filtering(Cfilter *cf, float x[], float y[], unsigned size);

typedef struct {
    float* u;
    int N;
    const float* coefs;
} ThirdOctaveFilter;

typedef struct {
	Timeweight			*Tfilter;
	ThirdOctaveFilter	*filter;
	Levels				*levels;
	struct sbuffer		*ring;
}ThirdOctaveData;

float get_level(int band_idx);

ThirdOctaveFilter* third_octave_create(int band);
void third_octave_destroy(ThirdOctaveFilter* filter);

void third_octave_filtering(ThirdOctaveFilter* filter, 
                          float* input, 
                          float* output, 
                          unsigned length);
                          
void third_octave_levels(float* input, unsigned size);

#endif
