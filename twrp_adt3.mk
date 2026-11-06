#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Installs gsi keys into ramdisk
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# vendor_boot as recovery
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Enable project quotas and casefolding
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit TWRP common
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device
$(call inherit-product, device/askey/adt3/device.mk)

PRODUCT_DEVICE := adt3
PRODUCT_NAME := twrp_adt3
PRODUCT_BRAND := askey
PRODUCT_MODEL := ADT-3
PRODUCT_MANUFACTURER := askey

PRODUCT_GMS_CLIENTID_BASE := android-askey

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="adt3-userdebug 14 UP1A.231105.001.A1 eng.ubuntu.20250217.194226 release-keys"

BUILD_FINGERPRINT := ADT-3/adt3/adt3:14/UP1A.231105.001.A1/6245789:user/release-keys
