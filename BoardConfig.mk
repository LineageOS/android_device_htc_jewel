# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2009 The Android Open Source Project
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

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from S4 common
-include device/htc/s4-common/BoardConfigCommon.mk

# Audio
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true
USE_CUSTOM_AUDIO_POLICY := 1

# Bootloader
TARGET_BOARD_INFO_FILE ?= device/htc/jewel/board-info.txt
TARGET_BOOTLOADER_BOARD_NAME := jewel

# Kernel
TARGET_KERNEL_CONFIG := jet_defconfig
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/jewel/bluetooth

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p23: 000ffa00 00000200 "misc"
#mmcblk0p22: 00fffe00 00000200 "recovery"
#mmcblk0p21: 01000000 00000200 "boot"
#mmcblk0p36: 88000000 00000200 "system"
#mmcblk0p30: 00140200 00000200 "local"
#mmcblk0p37: 0dfffc00 00000200 "cache"
#mmcblk0p38: 2f0000000 00000200 "userdata"
#mmcblk0p26: 01400000 00000200 "devlog"
#mmcblk0p28: 00040000 00000200 "pdata"
#mmcblk0p34: 01900000 00000200 "carrier"
#mmcblk0p39: 05dffc00 00000200 "fat"
#mmcblk0p31: 00010000 00000200 "extra"
#mmcblk0p35: 047e9800 00000200 "reserve"
#mmcblk0p17: 02d00000 00000200 "radio"
#mmcblk0p18: 00a00000 00000200 "adsp"
#mmcblk0p16: 00100000 00000200 "dsps"
#mmcblk0p19: 00500000 00000200 "wcnss"
#mmcblk0p20: 007ffa00 00000200 "radio_config"
#mmcblk0p24: 00400000 00000200 "modem_st1"
#mmcblk0p25: 00400000 00000200 "modem_st2"
#mmcblk0p32: 00040000 00000200 "skylink"
#mmcblk0p33: 00040000 00000200 "cdma_record"
#mmcblk0p35: 047e9800 00000200 "reserve"

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776704
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2281701376
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12616466432
BOARD_CACHEIMAGE_PARTITION_SIZE := 234880000
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_FLASH_BLOCK_SIZE := 131072

# Radio
BOARD_PROVIDES_LIBRIL := true

# Recovery
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
TARGET_RECOVERY_FSTAB := device/htc/jewel/rootdir/etc/fstab.qcom
