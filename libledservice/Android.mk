LOCAL_PATH:= $(call my-dir)

#### build libledservice.so
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
	LedService.cpp

LOCAL_MODULE := libledservice

LOCAL_SHARED_LIBRARIES += \
	libutils \
	libcutils \
	libhardware \
	libbinder \
	liblog

LOCAL_C_INCLUDES += \
	frameworks/base/include \
	hardware/mokoid-v11/hardware/modules/include

#LOCAL_MODULE_TAGS := optional

LOCAL_PRELINK_MODULE := false

include $(BUILD_SHARED_LIBRARY)

