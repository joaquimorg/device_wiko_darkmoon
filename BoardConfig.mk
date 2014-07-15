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


DEVICE_FOLDER := device/wiko/darkmoon

# inherit from the proprietary version
-include vendor/wiko/darkmoon/BoardConfigVendor.mk

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_FOLDER)/include

# board
TARGET_ARCH := arm
TARGET_BOARD_PLATFORM := mt6582
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
USE_CAMERA_STUB := true

# blob hacks
COMMON_GLOBAL_CFLAGS += -DMR1_AUDIO_BLOB -DDISABLE_HW_ID_MATCH_CHECK -DNEEDS_VECTORIMPL_SYMBOLS
#BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
#TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true

# boot
TARGET_BOOTLOADER_BOARD_NAME := darkmoon
# MK Boot Tools
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_FOLDER)/releasetools/custombootimg.mk
TARGET_NO_BOOTLOADER := true


# kernel
BOARD_KERNEL_CMDLINE := 
#BOARD_KERNEL_BASE := 0x268468224
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := $(DEVICE_FOLDER)/prebuilt/kernel

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_SPARSE_EXT_DISABLED := false

# partition info
BOARD_PROTECT_FIMAGE_PARTITION_SIZE:=10485760
BOARD_PROTECT_SIMAGE_PARTITION_SIZE:=10485760
BOARD_SECROIMAGE_PARTITION_SIZE:=6291456
BOARD_SYSTEMIMAGE_PARTITION_SIZE:=734003200
BOARD_CACHEIMAGE_PARTITION_SIZE:=132120576
BOARD_USERDATAIMAGE_PARTITION_SIZE:=1072693248
BOARD_FATIMAGE_PARTITION_SIZE:=0
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_NAND_PAGE_SIZE := 2048 -s 64


TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/gadget/lun%d/file
BOARD_SDCARD_INTERNAL_DEVICE := /dev/block/mmcblk0p1

# recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_FOLDER)/recovery/recovery.fstab
TARGET_PREBUILT_RECOVERY_KERNEL := $(DEVICE_FOLDER)/recovery/kernel
BOARD_HAS_NO_SELECT_BUTTON := true

# EGL settings
USE_OPENGL_RENDERER := true
BOARD_EGL_CFG := $(DEVICE_FOLDER)/egl.cfg
BOARD_EGL_WORKAROUND_BUG_10194508 := true

#Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# WIFI
#BOARD_WPA_SUPPLICANT_DRIVER := WEXT
#BOARD_P2P_SUPPLICANT_DRIVER := NL80211
#HAVE_CUSTOM_WIFI_DRIVER_2 := true
#HAVE_INTERNAL_WPA_SUPPLICANT_CONF := true
#HAVE_CUSTOM_WIFI_HAL := mediatek
#WPA_SUPPLICANT_VERSION := VER_0_6_X
#P2P_SUPPLICANT_VERSION := VER_0_8_X

# wifi
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
#BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mtk
#BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_mtk

#Mediatek
USES_CACHE_PMEM := true
WITH_DEXPREOPT := false
