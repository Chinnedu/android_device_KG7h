#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from KG7h device
$(call inherit-product, device/tecno/KG7h/device.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, vendor/twrp/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := KG7h
PRODUCT_NAME := twrp_KG7h
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO KG7h
PRODUCT_MANUFACTURER := tecno