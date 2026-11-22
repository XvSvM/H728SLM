# TWRP 12.1 device tree for ADT-3 (vendor_boot)

## Action-TWRP-Builder

- MANIFEST_BRANCH = **twrp-12.1**
- BUILD_TARGET = **vendorboot**
- MAKEFILE_NAME = twrp_adt3
- DEVICE_NAME = adt3
- DEVICE_PATH = device/askey/adt3

## Manual build

```bash
repo init --depth=1 -u https://github.com/minimal-manifest-twrp/platform_manifest_twrp_aosp.git -b twrp-12.1
repo sync -c -j$(nproc) --force-sync --no-clone-bundle --no-tags

# place tree into device/askey/adt3

export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch twrp_adt3-eng
mka vendorbootimage -j$(nproc)
```
