# Copyright (C) 2009 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for ariesve hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

PRODUCT_RELEASE_NAME := GT-I9001

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/full_base.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
#$(call inherit-product, device/common/gps/gps_eu_supl.mk)
$(call inherit-product, device/samsung/galaxysplus/galaxysplus.mk)

# Galaxy S uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Add additional mounts
PRODUCT_PROPERTY_OVERRIDES += \
    ro.additionalmounts=/mnt/emmc;/mnt/usbdisk \
    ro.vold.switchablepair=/mnt/sdcard,/mnt/emmc

# Release name and versioning
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

# Discard inherited values and use our own instead.
PRODUCT_NAME := galaxysplus
PRODUCT_DEVICE := galaxysplus
PRODUCT_MODEL := GT-I9001
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=GT-I9001 TARGET_DEVICE=GT-I9001 BUILD_ID=GINGERBREAD BUILD_FINGERPRINT=samsung/GT-I9001/GT-I9001:2.3.7/GINGERBREAD:user/release-keys PRIVATE_BUILD_DESC="GT-I9001-user 2.3.7 GINGERBREAD release-keys"
