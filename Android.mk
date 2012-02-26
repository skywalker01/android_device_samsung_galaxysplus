LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),galaxysplus)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := cypress-touchkey.kcm
LOCAL_MODULE_TAGS := optional
include $(BUILD_KEY_CHAR_MAP)

ifneq ($(TARGET_SIMULATOR),true)
    include $(call all-makefiles-under,$(LOCAL_PATH))
endif

endif
