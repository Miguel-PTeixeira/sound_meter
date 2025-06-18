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

#include <stdbool.h>

#ifndef CONFIG_H
#define CONFIG_H

#define CONFIG_VERSION "1.0"

#define CONFIG_CONFIG_FILENAME "sound_meter_config.json"
#define CONFIG_CONFIG_FILEPATH "./"

#define CONFIG_INPUT_DEVICE "default"

#define CONFIG_OUTPUT_PATH "data/"
#define CONFIG_OUTPUT_FILENAME "_"
#define CONFIG_AUDIO_OUTPUT_FORMAT ".ogg"
#define CONFIG_DATA_OUTPUT_FORMAT ".csv"

#define CONFIG_IDENTIFICATION "XXXX_NNNN"

#define CONFIG_CALIBRATION_FACTOR 1.0

#define CONFIG_CALIBRATION_REFERENCE 94.0f //	Valor de referência do calibrador

#define CONFIG_PRESSURE_REFERENCE 0.00002f // valor de pressão de referencia 20 uP (Pascal)

#define CONFIG_PCM_FORMAT SND_PCM_FORMAT_S16_LE
#define CONFIG_BITS_PER_SAMPLE 16
#define CONFIG_FRAME_SIZE (CONFIG_BITS_PER_SAMPLE / 8)
#define CONFIG_SAMPLE_NORM ((float)(1 << (CONFIG_BITS_PER_SAMPLE - 1)))

#define CONFIG_MARGIN 0 //	pow(10, -10)        	// margem de -100dB

#define CONFIG_SAMPLE_RATE	44100	// ritmo de amostragem
#define CONFIG_CHANNELS		1	// número de canais
#define CONFIG_SEGMENT_DURATION 1000	// duração de um segmento em milisegundos
#define CONFIG_BLOCK_SIZE 	1024	// dimensão de um bloco em número de amostras

//  Os seguintes tempos são definidos em número de segmentos
///DAR OUTRO NOME:

#define CONFIG_LEVELS_RECORD_PERIOD 60							//periodo de registo dos niveis no ficheiro de registo
#define CONFIG_RUN_DURATION 0									//tempo de execução do programa (run_duration = 0  => inf)

#define CONFIG_AUDIO_LOOP_RECORDING  (60*60*4)				// tempo total de gravação armazenado em segundos
#define CONFIG_AUDIO_FILE_DURATION (60*60)				// duração em segundos de cada ficheiro de audio
#define CONFIG_AUDIO_RECORD_OK true						// permitir o ficheiro de audio

#define CONFIG_DATA_LOOP_RECORDING	(60*60*4)					// tempo total de gravação armazenado em segundos
#define CONFIG_DATA_FILE_DURATION	(60*60)					// duração em segundos de cada ficheiro de registo
#define CONFIG_DATA_RECORD_OK true							// permitir o ficheiro de dados

#define CONFIG_CALIBRATION_TIME		0	// tempo útil de calibração
#define CONFIG_CALIBRATION_GUARD	2	// tempo de guarda desde o arranque do programa até ao início da calibração

#define	CONFIG_MQTT_ENABLE	false
#define	CONFIG_MQTT_BROKER	"tcp://demo.thingsboard.io:1883"
#define CONFIG_MQTT_TOPIC	"v1/devices/me/telemetry"
#define CONFIG_MQTT_QOS		1
#define CONFIG_MQTT_DEVICE_CREDENTIAL	"undefined"

#define	CONFIG_MQTT_PUBLISH_PERIOD	10	//	Tempo de publicação em número de segmentos

#define CONFIG_SERVER_SOCKET	"sound_meter_server_socket"

struct config
{
	const char *identification;	// identificador da estação
	const char *input_device;	// identificador da card de som
	const char *input_file;		// ficheiro WAVE com som de entrada
	const char *output_path;	// diretoria onde são depositados os ficheiros criados
	const char *output_filename;	// nome do ficheiro de saída
	const char *audio_output_format;// formato do ficheiro de saída de áudio
	const char *data_output_format;	// formato do ficheiro de saída de dados

	unsigned sample_rate;		// ritmo de amostragem
	unsigned channels;		// número de canais
	unsigned bits_per_sample;	// número de bits por amostra
	unsigned block_size;		// dimensão de um bloco em número de amostras
	unsigned segment_duration;	// duração de um segmento de processamento
	unsigned segment_size;		// dimensão de um segmento em número de amostas (calculado)
	unsigned levels_record_period;		// periodo de registo de dados em numero de segmentos
	unsigned run_duration;		// tempo de execução do programa
	unsigned audio_loop_recording;// gravação em loop do ogg
	unsigned audio_file_duration;	// duração do ficheiro ogg
	bool 	 audio_record_ok;
	unsigned data_loop_recording;// gravação em loop do csv
	unsigned data_file_duration; // duração do ficheiro csv
	bool 	 data_record_ok;

	unsigned calibration_time;	// tempo despendido na calibração
	float calibration_reference;	// valor de referência de calibração
	float calibration_delta;	// valor de ajute de calibração

	bool mqtt_enable;
	const char *mqtt_broker;
	const char *mqtt_topic;
	int mqtt_qos;
	const char *mqtt_device_credential;
	// int mqtt_publish_period;
	const char *server_socket;
};

struct config *config_load(const char *config_filename);
void config_save(const char *config_filename);
void config_destroy();
void config_print();

extern struct config *config_struct;

#endif
