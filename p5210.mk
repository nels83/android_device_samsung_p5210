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

$(call inherit-product, device/samsung/p5200/p52xx-common.mk)

LOCAL_PATH := device/samsung/p5210
COMMON_PATH := device/samsung/p5200

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Init files
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/rootdir/init.santos10.usb.rc:root/init.santos10wifi.usb.rc \
    $(COMMON_PATH)/rootdir/init.santos10.rc:root/init.santos10wifi.rc \
    $(COMMON_PATH)/rootdir/ueventd.santos10.rc:root/ueventd.santos10wifi.rc \
    $(COMMON_PATH)/rootdir/fstab.santos10:root/fstab.santos10wifi

# Audio
PRODUCT_COPY_FILES += \
    $(COMMON_PATH)/configs/tiny_hw.xml:system/etc/sound/santos10wifi

# Use the non-open-source parts
$(call inherit-product, vendor/samsung/p52xx/p5210-vendor.mk)
