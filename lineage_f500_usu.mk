#
# Copyright 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)                                                        
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)                                                
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit from hardware-specific part of the product configuration
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Setup device specific product configuration
# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := f500_usu
PRODUCT_NAME := lineage_f500_usu
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-f500
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="g4" \
    PRODUCT_NAME="g4_global_com" \
    PRIVATE_BUILD_DESC="p1_global_com-user 6.0 MRA58K 152940055675e release-keys"

BUILD_FINGERPRINT := "lge/p1_global_com/p1:6.0/MRA58K/152940055675e:user/release-keys"


