# Copyright (C) 2014 The CyanogenMod Project
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

# inherit from the proprietary version
-include vendor/wiko/darkmoon/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6582
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
USE_CAMERA_STUB := true

TARGET_BOOTLOADER_BOARD_NAME := darkmoon

BOARD_KERNEL_CMDLINE := 
BOARD_KERNEL_BASE := 0x268468224
BOARD_KERNEL_PAGESIZE := 2048

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# fix this up by examining /proc/mtd on a running device
BOARD_PROTECT_FIMAGE_PARTITION_SIZE:=10485760
BOARD_PROTECT_SIMAGE_PARTITION_SIZE:=10485760
BOARD_SECROIMAGE_PARTITION_SIZE:=6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=734003200
BOARD_CACHEIMAGE_PARTITION_SIZE:=132120576
BOARD_USERDATAIMAGE_PARTITION_SIZE:=1072693248
BOARD_FATIMAGE_PARTITION_SIZE:=0

BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_NAND_PAGE_SIZE := 4096 -s 128

TARGET_PREBUILT_KERNEL := device/wiko/darkmoon/kernel

BOARD_HAS_NO_SELECT_BUTTON := true

USE_OPENGL_RENDERER := true

TARGET_NO_FACTORYIMAGE := true
BOARD_USES_MTK_AUDIO := true
BOARD_AGPS_SUPL_LIBRARIES := true
BOARD_GPS_LIBRARIES := true

TARGET_PROVIDES_INIT_RC := true

WITH_DEXPREOPT := false

#Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# WIFI
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_P2P_SUPPLICANT_DRIVER := NL80211
HAVE_CUSTOM_WIFI_DRIVER_2 := true
HAVE_INTERNAL_WPA_SUPPLICANT_CONF := true
HAVE_CUSTOM_WIFI_HAL := mediatek
WPA_SUPPLICANT_VERSION := VER_0_6_X
P2P_SUPPLICANT_VERSION := VER_0_8_X

BOARD_USES_6575_HW := true
BOARD_USES_MTK_JPEG_HW_DECODER := true

BOARD_USES_YUSU_LCD_HW_OVERLAY := true
BOARD_USES_ARGB8888_FB := true

BOARD_ENABLE_MFG_HARDWARE := true

MFG_HALCOMPOSITION_BYPASS := false

MFG_ENABLE_GRALLOC_PMEM := true

BOARD_USES_YUSU_MP3_PROPRIETARY_CODEC := true

BOARD_USES_6575_HW := true

USES_MTK_OMX_CORE := true
USES_CACHE_PMEM := true

BOARD_USES_ANDROID_DEFAULT_CODE := false
BOARD_USES_6575_MFV_HW := true

BOARD_USES_MTK_VPX_DEC := true

#Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/generic/common/bluetooth

# Tools
# BOARD_CUSTOM_BOOTIMG_MK := device/wiko/darkmoon/releasetools/boot.mk
BOARD_CUSTOM_BOOTIMG_MK := device/wiko/darkmoon/releasetools/custom_bootimg.mk

#TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := \
#	device/wiko/darkmoon/releasetools/wiko_ota_from_target_files


# Mediatek applications source 
MTK_FM_SUPPORT := true
MTK_FM_RX_SUPPORT := true
