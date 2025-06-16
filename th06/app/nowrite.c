// Thanks chatgpt for this one!

#define _GNU_SOURCE
#include <dlfcn.h>
#include <unistd.h>

ssize_t write(int fd, const void *buf, size_t count) {
    static ssize_t (*real_write)(int, const void *, size_t) = NULL;
    if (!real_write) {
        real_write = dlsym(RTLD_NEXT, "write");
    }
    if (fd == 2) {
        // Block writes to stderr
        return count;
    }
    return real_write(fd, buf, count);
}

