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
#

$(call inherit-product, device/samsung/sm8250-common/hentai_common.mk)
$(call inherit-product, device/samsung/gts7xlwifi/device.mk)

# Inherit proprietary blobs
$(call inherit-product, vendor/samsung/gts7xlwifi/gts7xlwifi-vendor.mk)

PRODUCT_NAME := gts7xlwifi
PRODUCT_DEVICE := gts7xlwifi
PRODUCT_MODEL := Galaxy Tab S7+
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
