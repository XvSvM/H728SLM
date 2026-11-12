LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),x96qproplus)
include $(call all-subdir-makefiles,$(LOCAL_PATH))
endif
