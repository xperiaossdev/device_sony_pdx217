#
# Copyright (C) 2018 The LineageOS Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Cherish stuff.
TARGET_BOOT_ANIMATION_RES := 1080
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from device.mk
$(call inherit-product, $(LOCAL_PATH)/device.mk)

IS_PHONE := true
TARGET_FACE_UNLOCK_SUPPORTED := true
PRODUCT_NAME := aosp_pdx217
PRODUCT_DEVICE := pdx217
PRODUCT_MANUFACTURER := Sony
PRODUCT_BRAND := Sony
PRODUCT_MODEL := Xperia Pro-I

PRODUCT_GMS_CLIENTID_BASE := android-sonymobile

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=pdx217 \
    TARGET_PRODUCT=Xperia Pro-I \
    PRIVATE_BUILD_DESC="Sony/qssi/qssi:13/TKQ1.220807.001/1:user/release-keys"

BUILD_FINGERPRINT := Sony/qssi/qssi:13/TKQ1.220807.001/1:user/release-keys