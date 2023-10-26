LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

MAIN_LOCAL_PATH := $(call my-dir)
LOCAL_C_INCLUDES += $(MAIN_LOCAL_PATH)/Headers

include $(CLEAR_VARS)

LOCAL_MODULE    := Injector

# Code optimization
LOCAL_CPPFLAGS := -fvisibility=hidden -ffunction-sections -fdata-sections -w
LOCAL_LDFLAGS += -Wl,--gc-sections,--strip-all -llog
LOCAL_CPPFLAGS += -fexceptions -Werror -Wpedantic -s -std=c++17

LOCAL_SRC_FILES := Injector.cpp \
		   RevMemory.cpp \
		   RemoteProcess.cpp \

LOCAL_LDLIBS := -llog -landroid

include $(BUILD_EXECUTABLE)
