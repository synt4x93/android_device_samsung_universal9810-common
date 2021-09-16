# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2021 The LineageOS Project

LOCAL_PATH := $(call my-dir)

ifneq ($(filter crownlte starlte star2lte, $(TARGET_DEVICE)),)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
