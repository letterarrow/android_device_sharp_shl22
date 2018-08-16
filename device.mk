#
# Copyright (C) 2011 The Android Open-Source Project
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

# This file includes all definitions that apply to ALL msm8960 devices, and
# are also specific to msm8960 devices
#
# Everything in this directory will become public

# This device is xhdpi.  However the platform doesn't
# currently contain all of the bitmaps at xhdpi density so
# we do this little trick to fall back to the hdpi version
# if the xhdpi doesn't exist.
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_COPY_FILES := \
	device/sharp/shl22/fstab.qcom:root/fstab.qcom \
	device/sharp/shl22/twrp.fstab:recovery/root/etc/twrp.fstab \
	device/sharp/shl22/thermald.conf:system/etc/thermald.conf \
	device/sharp/shl22/ueventd.qcom.rc:root/ueventd.qcom.rc \

PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

PRODUCT_PROPERTY_OVERRIDES += \
	ro.opengles.version=131072

PRODUCT_PROPERTY_OVERRIDES += \
	ro.sf.lcd_density=320

# Filesystem management tools
PRODUCT_PACKAGES += \
	e2fsck \
	setup_fs

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
$(call inherit-product, hardware/qcom/msm8960/msm8960.mk)

# inherit from the non-open-source side, if present
$(call inherit-product-if-exists, vendor/sharp/shl22/shl22-vendor.mk)

