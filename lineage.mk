#
# Copyright (C) 2018 The LineageOS Project
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

$(call inherit-product, device/vivo/pd1510/full_pd1510.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Assert
TARGET_OTA_ASSERT_DEVICE := Y51,Y51L,PD1510,PD1510F_EX,pd1510,pd1510f_ex

PRODUCT_NAME := lineage_pd1510
BOARD_VENDOR := vivo
PRODUCT_DEVICE := pd1510

PRODUCT_GMS_CLIENTID_BASE := android-vivo

# Build fingerprint
BUILD_FINGERPRINT="vivo/Y51/Y51:5.1.1/LMY47V/compiler03081623:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8916_32-user 5.1.1 LMY47V eng.compiler.20170308 release-keys"
