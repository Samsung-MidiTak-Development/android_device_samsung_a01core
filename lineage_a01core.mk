#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/samsung/a01core/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_a01core
PRODUCT_DEVICE := a01core
PRODUCT_MANUFACTURER := samsung
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A013G

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=a01corextc \
    PRODUCT_DEVICE=a01core \
    PRIVATE_BUILD_DESC="a01corextc-user 10 QP1A.190711.020 A013GXXU4AVC6 release-keys"

BUILD_FINGERPRINT := samsung/a01corextc/a01core:10/QP1A.190711.020/A013GXXU4AVC6:user/release-keys
