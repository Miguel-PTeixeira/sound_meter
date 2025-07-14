#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <dirent.h>
#include <sys/stat.h>
#include <sys/statvfs.h>
#include <pthread.h>

#ifndef STORAGE_H
#define STORAGE_H

typedef struct{
	char**	storage;// Dynamic array of filenames
	char*	dir_path;
	char*	file_format;
	int		current_idx; // current targeted filename
	int 	size;		// how many members it has
	int		space;		// how many members it can have
	int 	update;		// update the current idx (remove the file and create a new file if true); 
}Files_Storage;

unsigned long long get_free_disk_space();


int archive_file(const char* filepath);
int archive_file_with_thread(const char* filepath);

Files_Storage* create_files_storage(int storage_space);
int add_file(Files_Storage* fs, char* filepath);
int load_files_from_directory(Files_Storage* fs,const char* dir_path, char* file_format);
void delete_files_storage(Files_Storage* fs);

#endif
