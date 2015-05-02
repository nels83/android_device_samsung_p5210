#
# Copyright (C) 2012 The CyanogenMod Project
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

# Inherit common Omni configurations
$(call inherit-product, vendor/omni/config/common_tablet.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/p5210/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_MODEL := GT-P5210
PRODUCT_BRAND := samsung
PRODUCT_NAME := omni_p5210
PRODUCT_DEVICE := p5210
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=santos10wifixx \
    TARGET_DEVICE=santos10wifi \
    BUILD_FINGERPRINT="samsung/santos10wifixx/santos10wifi:4.4.2/KOT49H/P5210XXUBOB1:user/release-keys" \
    PRIVATE_BUILD_DESC="santos10wifixx-user 4.4.2 KOT49H P5210XXUBOB1 release-keys"
