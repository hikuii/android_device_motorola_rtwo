#
# SPDX-FileCopyrightText: Paranoid Android
# SPDX-License-Identifier: Apache-2.0
#

# Check for target product
ifeq (aospa_rtwo,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/motorola/rtwo/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Override AOSP build properties
PRODUCT_BRAND := Motorola
PRODUCT_DEVICE := rtwo
PRODUCT_MANUFACTURER := Motorola
PRODUCT_MODEL := Edge 40 Pro
PRODUCT_NAME := aospa_rtwo

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Bootanimation resolution
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="rtwo_g-user 15 V1TRS35H.60-33-5 7195d7-c0632 release-keys" \
    BuildFingerprint=motorola/rtwo_g/rtwo:15/V1TRS35H.60-33-5/7195d7-c0632:user/release-keys \
    DeviceProduct=rtwo_g

endif
