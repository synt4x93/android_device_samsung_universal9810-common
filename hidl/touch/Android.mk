# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2020 The LineageOS Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := lineage.touch@1.0-service.samsung.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_ETC)/init
LOCAL_SRC_FILES := $(LOCAL_MODULE)

include $(BUILD_PREBUILT)

LOCAL_PATH := hardware/samsung/hidl/touch

include $(CLEAR_VARS)

LOCAL_MODULE := lineage.touch@1.0-service.9810
LOCAL_MODULE_STEM := lineage.touch@1.0-service.samsung
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_RELATIVE_PATH := hw

LOCAL_SRC_FILES := \
    GloveMode.cpp \
    KeyDisabler.cpp \
    StylusMode.cpp \
    TouchscreenGesture.cpp \
    service.cpp

LOCAL_REQUIRED_MODULES := \
    lineage.touch@1.0-service.samsung.rc

LOCAL_SHARED_LIBRARIES := \
    libbase \
    libbinder \
    libhidlbase \
    libhidltransport \
    libutils \
    vendor.lineage.touch@1.0

include $(BUILD_EXECUTABLE)
