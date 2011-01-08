LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

include $(LOCAL_PATH)/../av.mk

LOCAL_SRC_FILES := $(FFFILES)

LOCAL_C_INCLUDES :=		\
	$(LOCAL_PATH)		\
	$(LOCAL_PATH)/..	\
	external/zlib

LOCAL_CFLAGS += $(FFCFLAGS)
LOCAL_CFLAGS += -include "string.h" -Dipv6mr_interface=ipv6mr_ifindex

LOCAL_SHARED_LIBRARIES := libz
#LOCAL_SHARED_LIBRARIES += libavutil libavcodec
LOCAL_STATIC_LIBRARIES += libavutil libavcodec

LOCAL_MODULE := $(FFNAME)

LOCAL_PRELINK_MODULE := false

include $(BUILD_STATIC_LIBRARY)
#include $(BUILD_SHARED_LIBRARY)

