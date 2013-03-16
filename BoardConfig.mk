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

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Include p4-common
-include device/samsung/p4-common/BoardConfigCommon.mk

# Use the non-open-source parts, if they're present
-include vendor/samsung/p3/BoardConfigVendor.mk

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 710934528
BOARD_USERDATAIMAGE_PARTITION_SIZE := 14200340480

TARGET_PREBUILT_KERNEL := device/samsung/p3/kernel

SMALLER_FONT_FOOTPRINT := true

# Override ota script to customize our update zip package
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/samsung/p3/releasetools/ota_from_target_files
