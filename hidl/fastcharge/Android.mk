#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
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
