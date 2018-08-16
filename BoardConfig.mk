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

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := krait

TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_BASE := 0x80200000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 loglevel=8 maxcpus=2 vmalloc=320M androidboot.selinux=permissive
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x02000000
TARGET_KERNEL_SOURCE := kernel/sharp/deckard_as96
TARGET_KERNEL_CONFIG := deckard_as96_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-linux-androidkernel-

BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_23x41.h\"

TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm8960
TARGET_BOARD_INFO_FILE := device/sharp/shl22/board-info.txt

USE_OPENGL_RENDERER := true
TARGET_USES_ION := true
TARGET_USES_OVERLAY := true
TARGET_USES_C2D_COMPOSITION :=true

TARGET_RECOVERY_FSTAB = device/sharp/shl22/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672 # 22M
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8849408

BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Include an expanded selection of fonts
EXTENDED_FONT_FOOTPRINT := true

#TWRP config:
DEVICE_RESOLUTION := 720x1280
BOARD_HAS_NO_REAL_SDCARD := false
RECOVERY_SDCARD_ON_DATA := true
TW_NO_USB_STORAGE := true
TW_INCLUDE_JB_CRYPTO := true
TW_INTERNAL_STORAGE_PATH := "/storage/sdcard0"
TW_EXTERNAL_STORAGE_PATH := "/storage/sdcard0/external_sd"
TW_CUSTOM_POWER_BUTTON := 116
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.591617/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_NO_SCREEN_BLANK := true

-include vendor/sharp/shl22/BoardConfigVendor.mk
