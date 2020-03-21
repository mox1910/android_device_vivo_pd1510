#
# Copyright (C) 2015 The CyanogenMod Project
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
#

FORCE_32_BIT := true

# Inherit from msm8916-common
include device/cyanogen/msm8916-common/BoardConfigCommon.mk

DEVICE_PATH := device/vivo/pd1510

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME :=

# Kernel
BOARD_CUSTOM_BOOTIMG_MK := $(DEVICE_PATH)/mkbootimg.mk
BOARD_KERNEL_CMDLINE += phy-msm-usb.floated_charger_enable=1 androidboot.selinux=permissive
TARGET_KERNEL_SOURCE := kernel/vivo/msm8916
TARGET_KERNEL_CONFIG := cyanogenmod_pd1510_defconfig

# CPU
TARGET_CPU_CORTEX_A53 := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Display
TARGET_CONTINUOUS_SPLASH_ENABLED := false
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
MAX_VIRTUAL_DISPLAY_DIMENSION := 2048

# Camera
BOARD_CAMERA_SENSORS := ov13853_q13853a ov8858_2a ov8858 s5k4h8_rear \
    ov5648 s5k4h8 s5k5e2 hi259
TARGET_USE_VENDOR_CAMERA_EXT := true
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_TS_MAKEUP := true

# DPM NSRM Feature
TARGET_LDPRELOAD := libNimsWrap.so

# Flags
COMMON_GLOBAL_CFLAGS += -DNO_SECURE_DISCARD

# FM
AUDIO_FEATURE_ENABLED_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# GPS
TARGET_GPS_HAL_PATH := $(DEVICE_PATH)/gps
TARGET_NO_RPC := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Prebuilt webview
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_CACHEIMAGE_PARTITION_SIZE := 149946368
BOARD_PERSISTIMAGE_PARTITION_SIZE := 28311552
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3119513600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11658067968
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.qcom

TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

BOARD_SEPOLICY_DIRS += \
    $(DEVICE_PATH)/sepolicy

BOARD_SEPOLICY_UNION += \
    memcheck.te \
    irsc_util.te \
    mm-qcamerad.te \
    system_server.te \
    file_contexts

#Wifi
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME     := "wlan"

# inherit from the proprietary version
-include vendor/vivo/pd1510/BoardConfigVendor.mk
