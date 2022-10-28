#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from opal device
$(call inherit-product, device/xiaomi/opal/device.mk)

PRODUCT_DEVICE := opal
PRODUCT_NAME := twrp_opal
PRODUCT_BRAND := POCO
PRODUCT_MODEL := opal
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="opal-user 12 SP1A.210812.016 V13.0.3.0.SGBMIXM release-keys"

BUILD_FINGERPRINT := POCO/opal_global/opal:12/SP1A.210812.016/V13.0.3.0.SGBMIXM:user/release-keys
