#
# X96Q Pro+ / Allwinner H728
# TWRP 14.1 (Vendor Boot)
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/x96/x96qproplus

# A/B + Fastbootd
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
    otapreopt_script \
    cppreopts.sh \
    toybox

# Vendor Boot / Recovery
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/dtb.img:$(PRODUCT_OUT)/dtb.img \
    $(LOCAL_PATH)/recovery/root/system/etc/recovery.fstab:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/first_stage_ramdisk/system/etc/recovery.fstab
