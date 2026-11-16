#
# X96Q Pro+ / Allwinner H728
# TWRP 14.1
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit common TWRP stuff
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from device
$(call inherit-product, device/x96/x96qproplus/device.mk)

# Device identifier
PRODUCT_DEVICE := adt3
PRODUCT_NAME := twrp_x96qproplus
PRODUCT_BRAND := X96
PRODUCT_MODEL := X96Q Pro+
PRODUCT_MANUFACTURER := askey

PRODUCT_GMS_CLIENTID_BASE := android-askey

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="diana_p1_arm64-userdebug 14 UP1A.231105.001.A1 eng.ubuntu.20251225.151415 test-keys"

BUILD_FINGERPRINT := X96/x96qproplus/x96qproplus:14/UP1A.231105.001.A1/eng.ubuntu.20251225.151415:userdebug/test-keys
