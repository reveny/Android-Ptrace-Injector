#ifndef DAWN_LOGGER_H
#define DAWN_LOGGER_H

#include <android/log.h>
#include <cstdio>
#include <stdio.h>
#include <cstdlib>

#define TAG "RevenyInjector"

enum daLogType {
    daDEBUG = 3,
    daERROR = 6,
    daINFO = 4,
    daWARN = 5
};

#define LOGD(...) ((void)__android_log_print(daDEBUG, TAG, __VA_ARGS__))
#define LOGE(...) do { fprintf(stderr, TAG ": " __VA_ARGS__); fprintf(stderr, "\n"); } while (0)
#define LOGI(...) do { printf(TAG ": " __VA_ARGS__); printf("\n"); } while (0)
#define LOGW(...) ((void)__android_log_print(daWARN,  TAG, __VA_ARGS__))

#endif
