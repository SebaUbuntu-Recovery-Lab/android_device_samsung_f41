#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from f41 device
$(call inherit-product, device/samsung/f41/device.mk)

PRODUCT_DEVICE := f41
PRODUCT_NAME := omni_f41
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-F415F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="f41dd-user 12 SP1A.210812.016 F415FXXU2CWI1 release-keys"

BUILD_FINGERPRINT := samsung/f41dd/f41:12/SP1A.210812.016/F415FXXU2CWI1:user/release-keys
