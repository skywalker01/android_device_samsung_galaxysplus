# Copyright (C) 2007 The Android Open Source Project
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

# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true


TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mtune=cortex-a8 -mfpu=neon -mfloat-abi=softfp

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
BOARD_HAS_DOWNLOAD_MODE := true

TARGET_PROVIDES_INIT := true
TARGET_PROVIDES_INIT_TARGET_RC := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOOTLOADER_BOARD_NAME := GT-I9001

# Assert
TARGET_OTA_ASSERT_DEVICE := ariesve,GT-I9001,GalaxySplus

TARGET_SPECIFIC_HEADER_PATH := device/samsung/galaxyplus/include

# Qcom
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USE_QCOM_PMEM := true

# Video
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
BOARD_EGL_CFG := device/samsung/galaxysplus/etc/egl.cfg
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
#TARGET_QCOM_HDMI_OUT := true
#BOARD_USE_SCREENCAP := true
BOARD_USE_FRAMEBUFFER_ALPHA_CHANNEL := true
USE_OPENGL_RENDERER := true
BOARD_USES_OVERLAY := true

TARGET_USES_C2D_COMPOSITION := false
TARGET_USES_OVERLAY := true
TARGET_USES_SF_BYPASS := false
TARGET_GRALLOC_USES_ASHMEM := false
TARGET_USES_GENLOCK := true
TARGET_FORCE_CPU_UPLOAD := true

# Camera
USE_CAMERA_STUB := false
#BOARD_V4L2_DEVICE := /dev/video0
BOARD_CAMERA_DEVICE := /dev/video20
#BOARD_SECOND_CAMERA_DEVICE := /dev/video0
BOARD_CAMERA_USE_GETBUFFERINFO := true
BUILD_WITH_FULL_STAGEFRIGHT := true
Y_U_NO_HAVE_CAMERA := true
BOARD_USE_CAF_LIBCAMERA_GB_REL := true

# Misc
WITH_JIT := true
ENABLE_JSC_JIT := true
JS_ENGINE := v8
BOARD_USE_SKIA_LCDTEXT := true
TARGET_HAVE_LOCAL_TSLIB := true

# Radio
BOARD_MOBILEDATA_INTERFACE_NAME := "pdp0"
BOARD_USES_LIBSECRIL_STUB := true

# Audio
BOARD_USES_GENERIC_AUDIO := false
#BOARD_USES_ALSA_AUDIO := true
#BUILD_WITH_ALSA_UTILS := true
#TARGET_PROVIDES_LIBAUDIO := true
BOARD_USES_QCOM_RESETALL := true
BOARD_USES_QCOM_AUDIO_RESETALL := true
#BOARD_USES_QCOM_SPEECH := true
#BOARD_PREBUILT_LIBAUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
#BOARD_HAVE_BLUETOOTH_BCM_BTLA := true
#BT_ALT_STACK := true
#BRCM_BT_USE_BTL_IF := true
#BRCM_BTL_INCLUDE_A2DP := true
#BOARD_HAVE_BLUETOOTH_CUSTOM_HCIATTACH := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true
BOARD_CUSTOM_BLUEDROID := ../../../device/samsung/ariesve-common/bluedroid/bluetooth.c

# GPS
#BOARD_GPS_LIBRARIES := libloc_api
#BOARD_GPS_LIBRARIES := libsecril-client
BOARD_USES_QCOM_GPS := true
#BOARD_USES_GPSSHIM := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7k
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 1240
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225

# FM Radio
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO
BOARD_FM_DEVICE := si4709

# Kernel
BOARD_NAND_PAGE_SIZE := 4096 -s 128
BOARD_KERNEL_PAGESIZE := 4096
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_CMDLINE := console=null
TARGET_PREBUILT_KERNEL := device/samsung/galaxysplus/kernel

# Partition sizes
BOARD_BOOTIMAGE_PARTITION_SIZE := 5242880
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 545259520
# these looks like real (obtained from fdisk blocks * 1024), but don't attempt to flash /data without some checking first.
# /system is checked, and we generate no image for /cache
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1447034880
BOARD_CACHEIMAGE_PARTITION_SIZE := 104857600
BOARD_FLASH_BLOCK_SIZE := 131072

# Connectivity - Wi-Fi
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_BAND := 802_11_ABG
WIFI_DRIVER_MODULE_NAME :=  "dhd"
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/firmware/bcm4329_sta.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/firmware/bcm4329_aps.bin"
WIFI_DRIVER_MODULE_ARG  := "firmware_path=/system/etc/firmware/bcm4329_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt iface_name=eth0"

# Vold
BOARD_VOLD_MAX_PARTITIONS := 29
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/galaxysplus/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/galaxysplus/recovery/graphics.c
BOARD_USES_MMCUTILS := true
BOARD_USES_BML_OVER_MTD := true
BOARD_HAS_NO_MISC_PARTITION := true
TARGET_RECOVERY_INITRC := device/samsung/ariesve-common/recovery.rc

# Partitions
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_BOOT_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_DEVICE := /dev/block/mmcblk0p17
BOARD_DATA_FILESYSTEM := ext4
BOARD_SYSTEM_DEVICE := /dev/block/mmcblk0p15
BOARD_SYSTEM_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p16
BOARD_CACHE_FILESYSTEM := ext4
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_DEVICE := /dev/block/mmcblk0p13
BOARD_USE_USB_MASS_STORAGE_SWITCH := true
BOARD_UMS_LUNFILE := /sys/devices/platform/usb_mass_storage/lun0/file

BOARD_MTP_DEVICE := "/dev/usb_mtp_gadget"

# Use the non-open-source parts, if they're present
-include vendor/samsung/galaxysplus/BoardConfigVendor.mk

# Include ariesve specific stuff
-include device/samsung/ariesve-common/Android.mk
