#
# X96Q Pro+ - Allwinner H728
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# vendor_boot as recovery
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Device configuration
$(call inherit-product, device/x96/x96qproplus/device.mk)

PRODUCT_DEVICE := x96qproplus
PRODUCT_NAME := twrp_x96qproplus
PRODUCT_BRAND := X96
PRODUCT_MODEL := X96Q Pro+
PRODUCT_MANUFACTURER := X96
