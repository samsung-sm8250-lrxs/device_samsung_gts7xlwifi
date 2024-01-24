#
# Copyright (C) 2024 Lunarixus.
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

DEVICE_PATH := device/samsung/gts7xlwifi

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144
BOARD_SUPER_PARTITION_SIZE := 10171187200
BOARD_SUPER_PARTITION_GROUPS := samsung_dynamic_partitions
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_PARTITION_LIST := product system
BOARD_SAMSUNG_DYNAMIC_PARTITIONS_SIZE := 10171167200

BOARD_BOOTIMAGE_PARTITION_SIZE := 71303168
BOARD_CACHEIMAGE_PARTITION_SIZE := 419430400
BOARD_DTBOIMG_PARTITION_SIZE := 10485760
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 86888448
BOARD_USERDATAIMAGE_PARTITION_SIZE := 115026669568

# Vendor Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# VINTF
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_matrix.xml

include device/samsung/sm8250-common/BoardConfig-common.mk
