#
# Copyright (C) 2021 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from hot10 device makefile
$(call inherit-product, device/infinix/hot10/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/nusantara/config/common_full_phone.mk)
USE_PIXEL_CHARGING := true

# Gapps
USE_GAPPS := true
TARGET_GAPPS_ARCH := arm64
IS_PHONE := true

#
# All components inherited here go to system_ext image
#
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hot10
PRODUCT_NAME := nad_hot10
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix Hot 10
PRODUCT_MANUFACTURER := Infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix
TARGET_VENDOR := infinix
TARGET_VENDOR_PRODUCT_NAME := hot10
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="raven-user 12 SQ3A.220705.004 8836240 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/raven/raven:12/SQ3A.220705.004/8836240:user/release-keys
