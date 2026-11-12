
#
# X96Q Pro+ - Allwinner H728
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/x96/x96qproplus

# A/B OTA
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

# Boot control
# Do not use bootctrl.diana from ADT-3.
# Use the boot control implementation supplied by the H728 platform.

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
