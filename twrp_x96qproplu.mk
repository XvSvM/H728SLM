
#
# Copyright (C) 2026 X96Q Pro+ TWRP
# SPDX-License-Identifier: Apache-2.0
#

# Base Android configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# TWRP common configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# X96Q Pro+ device configuration
$(call inherit-product, device/x96/x96qproplus/device.mk)

PRODUCT_DEVICE := x96qproplus
PRODUCT_NAME := twrp_x96qproplus
PRODUCT_BRAND := X96
PRODUCT_MODEL := X96Q Pro+
PRODUCT_MANUFACTURER := X96

PRODUCT_GMS_CLIENTID_BASE := android-x96

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=x96qproplus \
    PRIVATE_BUILD_DESC="X96QProPlus Android 16 H728"

