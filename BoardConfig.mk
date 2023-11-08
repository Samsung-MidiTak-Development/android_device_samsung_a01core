#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/a01core

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_USES_64_BIT_BINDER := true

# Asserts
TARGET_OTA_ASSERT_DEVICE := a01core

# Bootloader
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := mt6739
TARGET_BOOTLOADER_BOARD_NAME := mt6739
TARGET_NO_BOOTLOADER := true

# Display
TARGET_SCREEN_DENSITY := 320

# Kernel
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_CONFIG := lineage_a01core_defconfig
TARGET_KERNEL_SOURCE := kernel/samsung/a01core

BOARD_PREBUILT_DTBIMAGE := $(DEVICE_PATH)/prebuilt/dtb

BOARD_KERNEL_CMDLINE += bootopt=64S3,32S1,32S1

BOARD_MKBOOTIMG_ARGS += --kernel_offset 0x00008000
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset 0x05000000
BOARD_MKBOOTIMG_ARGS += --tags_offset 0x04000000
BOARD_MKBOOTIMG_ARGS += --second_offset 0x00f00000
BOARD_MKBOOTIMG_ARGS += --header_version 2
BOARD_MKBOOTIMG_ARGS += --board SRPTE06B004
BOARD_MKBOOTIMG_ARGS += --dtb $(BOARD_PREBUILT_DTBIMAGE)
BOARD_MKBOOTIMG_ARGS += --dtb_offset 0x04000000

# Recovery
TARGET_USERIMAGES_USE_F2FS := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 131072000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_SUPER_PARTITION_SIZE := 2365587456
BOARD_SUPER_PARTITION_GROUPS := a01core_dynapart
BOARD_A01CORE_DYNAPART_SIZE := 2361393152
BOARD_A01CORE_DYNAPART_PARTITION_LIST := system vendor product odm

BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_ODM := odm

# Inherit the proprietary files
include vendor/samsung/a01core/BoardConfigVendor.mk