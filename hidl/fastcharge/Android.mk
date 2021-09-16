# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2021 The LineageOS Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := lineage.fastcharge@1.0-service.9810.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/init
LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

LOCAL_PATH := hardware/samsung/hidl/fastcharge

include $(CLEAR_VARS)

LOCAL_MODULE := lineage.fastcharge@1.0-service.9810
LOCAL_MODULE_STEM := lineage.fastcharge@1.0-service.9810
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_OWNER := samsung
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SRC_FILES := \
    FastCharge.cpp \
    service.cpp

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \

LOCAL_REQUIRED_MODULES := \
    lineage.fastcharge@1.0-service.9810.rc

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libbinder \
    libcutils \
    libhidlbase \
    libutils \
    vendor.lineage.fastcharge@1.0

include $(BUILD_EXECUTABLE)
