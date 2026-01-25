#!/bin/bash
#
# Copyright (C) 2026 The OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#
echo "
 - device/samsung/exynos7885-common/vendorsetup.sh: Exporting Orangefox Variables...
 "

export OF_FLASHLIGHT_ENABLE=1
#
# OrangeFox Comment:
#
#   - whether the enable the flashlight feature
#   - default is "1"

export OF_FL_PATH1=/sys/devices/virtual/camera/flash/rear_torch_flash
export OF_FL_PATH2=/sys/devices/virtual/camera/flash/rear_flash
#
# OrangeFox Comment:
#
#   - set custom flashlight path (if flashlight isn't working)
#   - eg. OF_FL_PATH1="/sys/class/leds/led_torch_2"

export OF_MAINTAINER="Pritam"
#
# OrangeFox Comment:
#
#   - the maintainer's name

export OF_HIDE_NOTCH=1
#
# OrangeFox Comment:
#
#   - add option to settings that makes status bar black (hides notch)
#   - default = 0

export OF_CLOCK_POS=1
#
# OrangeFox Comment:
#
#   - var to control clock position option for devices that has cutout
#   - 0 => left, center and right clock positions available
#   - 1 => left and right clock positions available
#   - 2 => only left clock position available
#   - default = 0

export OF_ALLOW_DISABLE_NAVBAR=0
#
# OrangeFox Comment:
#
#   - set to 0 if device doesn't have hardware navigation buttons
#   - if OF_ALLOW_DISABLE_NAVBAR is set to 0 user can't hide on-screen navbar
#   - default = 1

export FOX_RECOVERY_INSTALL_PARTITION=/dev/block/platform/13500000.dwmmc0/by-name/recovery
#
# OrangeFox Comment:
#
#    - !!! this should normally BE LEFT WELL ALONE !!!
#    - set this ONLY if your device's recovery partition is in a location that is
#      different from the default "/dev/block/by-name/recovery"
#    - default = "/dev/block/by-name/recovery"

export FOX_RECOVERY_SYSTEM_PARTITION=/dev/block/platform/13500000.dwmmc0/by-name/system
#
# OrangeFox Comment:
#
#    - !!! this should normally BE LEFT WELL ALONE !!!
#    - set this ONLY if your device's system partition is in a location that is
#      different from the default "/dev/block/by-name/system"
#      (eg, some Samsung devices have a different location for system)
#    - default = "/dev/block/by-name/system"

export FOX_RECOVERY_VENDOR_PARTITION=/dev/block/platform/13500000.dwmmc0/by-name/vendor
#
# OrangeFox Comment:
#
#    - !!! this should normally BE LEFT WELL ALONE !!!
#    - set this ONLY if your device's vendor partition is in a location that is
#      different from the default "/dev/block/by-name/vendor"
#      (eg, some Samsung devices have a different location for vendor)
#    - default = "/dev/block/by-name/vendor"

export OF_USE_LZMA_COMPRESSION=1
#
# OrangeFox Comment:
#
# (renamed from "FOX_USE_LZMA_COMPRESSION")
#    - set this to 1 if you want to use (slow but better compression) lzma compression for your ramdisk; 
#    - * this requires you to have an up-to-date lzma binary in your build system, and 
#    - * set this in your BoardConfig (it will be set automatically if you don't set it yourself):
#    -     BOARD_RAMDISK_USE_LZMA := true
#    - * your kernel must also have built-in lzma compression support
#    - default = 0 (meaning use standard gzip compression (fast, but doesn't compress as well))

# export OF_USE_LZ4_COMPRESSION=0
#
# * Disabled because OF_USE_LZMA_COMPRESSION is enabled.
#
# OrangeFox Comment:
#
# (renamed from "FOX_USE_LZ4_COMPRESSION")
#    - set this to 1 if (for whatever reason) you want to use lz4 compression for your ramdisk;
#    - * this requires you to have an up-to-date lz4 binary in your build system, and
#    - * set this in your BoardConfig (it will be set automatically if you don't set it yourself):
#    -     BOARD_RAMDISK_USE_LZ4 := true
#    - * your kernel must also have built-in lz4 compression support
#    - default = 0 (meaning use standard gzip compression, which provides better compression anyway)


export OF_QUICK_BACKUP_LIST="/data;/efs;"
#
# OrangeFox Comment:
#
# - Use this to specify the desired default list of partitions selected for "Quick Backup"
# - Note: only specify a partition if you mount it in your fstab, else an error will be generated
# - The partitions should be separated by a semi-colon, and the list should end with a semi-colon
# - Example: export OF_QUICK_BACKUP_LIST="/data;/storage;/persist;"

export OF_USE_LOCKSCREEN_BUTTON=1
#
# OrangeFox Comment:
#
# - Set this to 1 to replace the "Swipe up" lockscreen screen with a button
# - This is especially useful (for the time being) for 720p screens
# - default = 0

export FOX_ENABLE_APP_MANAGER=1
#
# OrangeFox Comment:
#
# - set this to 1 to enable the OrangeFox App Manager (now disabled by default)
# - sometimes there are issues with the App Manager, especially with Android 11 and higher - if you don't care, then use this variable to enable it
# - default = 0


export FOX_NO_SAMSUNG_SPECIAL=0
#
# OrangeFox Comment:
#
# - set this to 1 to disable some operations relating only to Samsung devices - these are:
# -   1) appending "SEANDROIDENFORCE" to the recovery image of a Samsung device
# -   2) creating an Odin flashable tar file of the recovery image
# - all decryption/recovery passwords are successfully entered)
# - default = 0

export OF_USE_LEGACY_BATTERY_SERVICES=1
#
# OrangeFox Comment:
#
# - Set to 1 if the battery percentage in the status bar is not working properly (eg, if it shows 100% at all times)
# - default = 0

export OF_FORCE_DATA_FORMAT_F2FS=1
#
# OrangeFox Comment:
#
# - Set this to 1 to force the selection of f2fs when formatting data; this is only needed when f2fs is never selected by default
# - Use with care! Do NOT use unless you are sure that all targeted ROMs on the device will support f2fs!
# - default = 0

export OF_UNMOUNT_SDCARDS_BEFORE_REBOOT=1
#
# OrangeFox Comment:
#
# - Set to 1 to attempt to unmount the SD cards before rebooting
# - default = 0


# Others
export FOX_DELETE_INITD_ADDON=1

