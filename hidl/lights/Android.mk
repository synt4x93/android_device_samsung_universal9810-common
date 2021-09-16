# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2021 The LineageOS Project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.light@2.0-service.9810.rc
LOCAL_MODULE_TAGS  := optional
LOCAL_MODULE_CLASS := ETC

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/etc/init
LOCAL_MODULE_STEM := vendor.samsung.hardware.light@3.0-service.rc

LOCAL_SRC_FILES := android.hardware.light@2.0-service.9810.rc

include $(BUILD_PREBUILT)

LOCAL_PATH := hardware/samsung/hidl/light

include $(CLEAR_VARS)

LOCAL_MODULE := android.hardware.light@2.0-service.9810
LOCAL_MODULE_TAGS  := optional

LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT)/vendor_overlay/$(PRODUCT_TARGET_VNDK_VERSION)/bin
LOCAL_MODULE_RELATIVE_PATH := hw
LOCAL_MODULE_STEM := vendor.samsung.hardware.light@3.0-service

LOCAL_SRC_FILES := \
    service.cpp \
    Light.cpp

LOCAL_C_INCLUDES := $(LOCAL_PATH)/include

LOCAL_REQUIRED_MODULES := \
    android.hardware.light@2.0-service.9810.rc

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libhardware \
    libhidlbase \
    liblog \
    android.hardware.light@2.0

LOCAL_STATIC_LIBRARIES := \
    libbase \
    libutils

include $(BUILD_EXECUTABLE)
