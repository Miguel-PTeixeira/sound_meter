#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>
#include <dirent.h>
#include <sys/stat.h>
#include <sys/statvfs.h>
#include <pthread.h>
#include "storage.h"

static bool reading_dir = true;

unsigned long long get_free_disk_space() {
    struct statvfs stat;
    if (statvfs("/", &stat) != 0) {
        fprintf(stderr, "ERROR: Could not read statistics\n");
        return 0;
    }
    return (unsigned long long)stat.f_bavail * stat.f_bsize;
}

Files_Storage* create_files_storage(int storage_space) {
    Files_Storage* fs = malloc(sizeof(Files_Storage));
    if (!fs) return NULL;

    fs->storage = malloc(sizeof(char*) * storage_space);
    if (!fs->storage) {
        free(fs);
        return NULL;
    }

    fs->current_idx = 0;
    fs->size = 0;
    fs->space = storage_space;
    fs->update = true;
    fs->dir_path = NULL;
    fs->file_format = NULL;

    return fs;
}

int archive_file(const char* filepath) {
    if (!filepath) return 0;

    const char* dirname = "./data/sound_events";

    // Create directory if it doesn't exist
    DIR* dir = opendir(dirname);
    if (!dir) {
        if (mkdir(dirname, 0755) != 0) {
            perror("mkdir failed");
            return 0;
        }
    } else {
        closedir(dir);
    }

    // Open original file
    FILE* original_file = fopen(filepath, "rb");
    if (!original_file) {
        perror("fopen original failed");
        return 0;
    }

    // Extract just the filename from the path
    const char* filename = strrchr(filepath, '/');
    filename = filename ? filename + 1 : filepath;

    // Construct full archived path
    char archived_path[512];
    snprintf(archived_path, sizeof(archived_path), "%s/%s", dirname, filename);

    // Open archived file
    FILE* archived_file = fopen(archived_path, "wb");
    if (!archived_file) {
        perror("fopen archived failed");
        fclose(original_file);
        return 0;
    }

    // Copy file content
    char buffer[4096];
    size_t bytes;
    while ((bytes = fread(buffer, 1, sizeof(buffer), original_file)) > 0) {
        fwrite(buffer, 1, bytes, archived_file);
    }

    fclose(original_file);
    fclose(archived_file);
    return 1;
}

///FILE_ARCHIVATION BY THREADS
//Function Executed by thread
void* archive_worker(void* arg) {
    char* filepath = (char*)arg;
    archive_file(filepath);
    return NULL;
}

//main execution
int archive_file_with_thread(const char* filepath) {
    pthread_t thread;
    char* path_copy = strdup(filepath);
    if (!path_copy) return 0;

    if (pthread_create(&thread, NULL, archive_worker, path_copy) != 0) {
        free(path_copy);
        return 0;
    }
	free(path_copy);
    pthread_detach(thread); // Detach to avoid memory leaks
    return 1;
}
///END


int add_file(Files_Storage* fs, char* filepath) {
    if (!fs || !filepath) return 0;

    // Add if space is available
    if (fs->size < fs->space) {
        fs->storage[fs->size] = strdup(filepath);
        if (!fs->storage[fs->size]) return 0;
        fs->size++;
    } else {
        // When full and update is true
        if (fs->update && fs->storage[fs->current_idx]) {
            remove(fs->storage[fs->current_idx]);

            // Reload directory if current index is 0 and not already reading
            if (fs->current_idx == 0 && !reading_dir && fs->dir_path && fs->file_format) {
				
				char dir[strlen(fs->dir_path)]; strcpy(dir,fs->dir_path);
				char file_format[strlen(fs->file_format)]; strcpy(file_format,fs->dir_path);
                if (!load_files_from_directory(fs, dir, file_format))
                    return 0;
            }
        } else {
            // Reallocate more space (double the capacity)
            int new_space = fs->space * 2;
            char** new_storage = realloc(fs->storage, sizeof(char*) * new_space);
            if (!new_storage) return 0;
            fs->storage = new_storage;
            fs->space = new_space;
        }

        strcpy(fs->storage[fs->current_idx], filepath);
        if (!fs->storage[fs->current_idx]) return 0;
    }
    fs->current_idx = (fs->current_idx + 1) % fs->space;
    return 1;
}

int compare_strings(const void *a, const void *b) {
    const char *str1 = *(const char **)a;
    const char *str2 = *(const char **)b;
    return strcmp(str1, str2);
}

int load_files_from_directory(Files_Storage* fs, const char* dir_path, char* file_format) {
    if (!fs || !dir_path) return 0;
    if (!file_format) file_format = "";

    if (fs->dir_path != NULL) free(fs->dir_path);
    if (fs->file_format != NULL) free(fs->file_format);

    fs->dir_path = strdup(dir_path);
    fs->file_format = strdup(file_format);
    if (!fs->dir_path || !fs->file_format) return 0;

    DIR* dir = opendir(dir_path);
    if (!dir) return 0;

    struct dirent* entry;
    size_t format_len = strlen(file_format);

    reading_dir = true;
    while ((entry = readdir(dir)) != NULL) {
        if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
            continue;

        size_t name_len = strlen(entry->d_name);
        
        if (name_len >= format_len &&
            strcmp(entry->d_name + name_len - format_len, file_format) == 0) {
			
			char fullpath[strlen(fs->dir_path) + strlen(entry->d_name) + 2];
			sprintf(fullpath, "%s/%s", fs->dir_path, entry->d_name);
			
            if (add_file(fs, fullpath) != 1) {
                closedir(dir);
                return 0;
            }
        }
    }
    qsort(fs->storage,fs->size,sizeof(fs->storage[0]),compare_strings);
    reading_dir = false;

    closedir(dir);
    return 1;
}

void delete_files_storage(Files_Storage* fs) {
    if (!fs) return;

    for (int i = 0; i < fs->space; ++i) {
        if (fs->storage[i]) {
            free(fs->storage[i]);
        }
    }

    free(fs->storage);
    if (fs->dir_path) free(fs->dir_path);
    if (fs->file_format) free(fs->file_format);
    free(fs);
}
