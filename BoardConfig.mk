# Copyright (C) 2013 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

-include device/samsung/sprd-common/BoardConfigCommon.mk

TARGET_OTA_ASSERT_DEVICE := mint,mint2g,GT-S5282,GT-S5280

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_CPU_VARIANT := cortex-a9
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
ARCH_ARM_HAVE_NEON := true

# Board
TARGET_BOOTLOADER_BOARD_NAME := mint2g

# Platform
TARGET_BOARD_PLATFORM := sc8810
BOARD_GLOBAL_CFLAGS += -DSPRD_HARDWARE
TARGET_INIT_PARSE_PROC_CPUINFO := true
ALLOW_TEXT_RELOCATIONS := true


# Kernel
BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8 androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
# TARGET_KERNEL_SOURCE := kernel/samsung/mint2g
# TARGET_KERNEL_CONFIG := cyanogenmod_mint_defconfig
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin
KERNEL_HAS_FINIT_MODULE := false


# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_CACHEIMAGE_PARTITION_SIZE := 536870912
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2172649472
BOARD_FLASH_BLOCK_SIZE := 131072
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
## original system partition size 
#BOARD_SYSTEMIMAGE_PARTITION_SIZE := 939524096

## Lehkeda's speakig : I've changed partition system size to fit my new system partition 
# size as I have repartitioned my device and you shouldn't use this new size 
# if you're going to use this tree for any thing so you must first use the old 
# system parition size which is above ^^^
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 912261120


# Recovery
DEVICE_RESOLUTION := 240x320
BOARD_LDPI_RECOVERY := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/mint2g/recovery/recovery_keys.c
BOARD_HAS_NO_MISC_PARTITION := true
# TARGET_RECOVERY_FSTAB := device/samsung/mint2g/recovery.fstab
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"

# UMS
BOARD_UMS_LUNFILE := "/sys/class/android_usb/android0/f_mass_storage/lun/file"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/dwc_otg.0/gadget/lun0/file"

# Graphics
BOARD_USE_MHEAP_SCREENSHOT := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_FNW := true
BOARD_EGL_NEEDS_HANDLE_VALUE := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := TRUE

# Bionic
BOARD_GLOBAL_CFLAGS += -DUSES_LEGACY_BLOBS
MALLOC_SVELTE := true
BOARD_USES_LEGACY_MMAP := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true

# Boot animation
TARGET_SCREEN_HEIGHT := 320
TARGET_SCREEN_WIDTH := 240

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging

# Healthd
#BOARD_HAL_STATIC_LIBRARIES := libhealthd.sc8810

# SELinux
SERVICES_WITHOUT_SELINUX_DOMAIN := true
BOARD_SEPOLICY_DIRS += \
    device/samsung/mint2g/sepolicy



#twrp
RECOVERY_VARIANT := twrp
TARGET_RECOVERY_FSTAB := device/samsung/mint2g/recovery/twrp.fstab
HAVE_SELINUX := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_INTERNAL_STORAGE_PATH := "/data/media/0"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_FLASH_FROM_STORAGE := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TWRP_EVENT_LOGGING := false
TW_HAS_DOWNLOAD_MODE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_DEFAULT_EXTERNAL_STORAGE := true

#######
# twrp can work with toybox but I'll stick to busybox as it's used a lot .

TW_USE_TOOLBOX := true

#######
# In nougat and up twrp removed old theme so you
# should specificy a them to use or define your device 
# resolution and twrp will automatically scale it for you . 
# here I use my own edited theme to make twrp looks good on my (GT-S5282) .

#DEVICE_RESOLUTION := 240x320 
DEVICE_RESOLUTION := 240x240 
#TW_THEME := portrait_mdpi
#TW_CUSTOM_THEME := device/samsung/mint2g/recovery/mint2g_portrait_ldpi

# LZMA compression for recovery's & kernel ramdisk....
TARGET_PREBUILT_KERNEL := device/samsung/mint2g/kernel
PRODUCT_COPY_FILES += device/samsung/mint2g/kernel:kernel
# BOARD_CUSTOM_BOOTIMG_MK := device/samsung/mint2g/custombootimg.mk
# BOARD_CANT_BUILD_RECOVERY_FROM_BOOT_PATCH := true

