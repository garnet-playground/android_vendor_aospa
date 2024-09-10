# Copyright (C) 2023 Paranoid Android
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

ifeq (aospa_garnet,$(TARGET_PRODUCT))

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from the custom device configuration.
$(call inherit-product, device/xiaomi/garnet/device.mk)

# Inherit from the AOSPA configuration.
$(call inherit-product, vendor/aospa/target/product/aospa-target.mk)

# Inherit from the MiuiCamera setup
$(call inherit-product-if-exists, vendor/xiaomi/camera/products/miuicamera.mk)

PRODUCT_NAME := aospa_garnet
PRODUCT_DEVICE := garnet
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := 2312DRA50G

PRODUCT_SYSTEM_NAME := garnet_global
PRODUCT_SYSTEM_DEVICE := garnet

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="garnet_global-user 14 UKQ1.231003.002 V816.0.9.0.UNRMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

BUILD_FINGERPRINT := Redmi/garnet_global/garnet:14/UKQ1.231003.002/V816.0.9.0.UNRMIXM:user/release-keys

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

endif
