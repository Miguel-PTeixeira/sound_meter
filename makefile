CFLAGS = -g -Wall -Werror -pedantic -save-temps=obj \
	`pkg-config --cflags glib-2.0 libwave alsa jansson paho-mqtt3c`

LIBS = `pkg-config --libs glib-2.0 libwave alsa jansson paho-mqtt3c` -lvorbis -lvorbisenc -logg -lm

LDFLAGS = -Wall -g

SOURCES = \
	src/main.c \
	src/config.c \
	src/process.c \
	src/filter.c \
	src/in_out.c \
	src/sbuffer.c \
	src/mqtt.c \
	src/server.c \
	src/record.c \
	src/storage.c

OBJECTS = $(SOURCES:%.c=build/%.o)

DEPENDENCIES = $(OBJECTS:%.o=%d)

build/sound_meter: build_dir $(OBJECTS)
	gcc $(LDFLAGS) $(OBJECTS) $(LIBS) -o build/sound_meter

build/src/%.o: src/%.c
	gcc $(CFLAGS) -c $< -o $@

build_dir:
	mkdir -p build
	mkdir -p build/src
	mkdir -p data

clean:
	rm -rf build/*
