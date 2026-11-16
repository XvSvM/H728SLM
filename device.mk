#
# X96Q Pro+ - Allwinner H728
# H728A527-PRO2-AXP717C
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/x96/x96qproplus

# A/B и fastbootd
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

PRODUCT_PACKAGES += \
    update_engine \
    update_engine_sideload \
    update_verifier \
    bootctrl.default \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-impl.recovery \
    android.hardware.boot@1.2-service \
    fastbootd \
    toybox
