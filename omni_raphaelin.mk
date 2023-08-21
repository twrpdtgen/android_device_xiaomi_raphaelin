#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from raphaelin device
$(call inherit-product, device/xiaomi/raphaelin/device.mk)

PRODUCT_DEVICE := raphaelin
PRODUCT_NAME := omni_raphaelin
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi K20 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raphaelin-user 10 QKQ1.190825.002 V11.0.1.0.QFKINXM release-keys"

BUILD_FINGERPRINT := Xiaomi/raphaelin/raphaelin:10/QKQ1.190825.002/V11.0.1.0.QFKINXM:user/release-keys
