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

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(DEVICE_PATH)

# Audio
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/audio/mixer_paths_cdp.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths_cdp.xml \
    $(DEVICE_PATH)/configs/audio/mixer_paths_qrd.xml:$(TARGET_COPT_OUT_VENDOR)/etc/mixer_paths_qrd.xml \
    $(DEVICE_PATH)/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

# Display Calibration
PEODUCT_COPY_FILES += \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_ss_dsi_panel_S6TUUM2_AMSA24VU01_WQXGA.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_ss_dsi_panel_S6TUUM2_AMSA24VU01_WQXGA.xml \
    $(DEVICE_PATH)/configs/display/qdcm_calib_data_ss_dsi_panel_S6TUUM3_AMSA24VU01_WQXGA.xml:$(TARGET_COPY_OUT_VENDOR)/etc/qdcm_calib_data_ss_dsi_panel_S6TUUM3_AMSA24VU01_WQXGA.xml

# Fstab
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/recovery/root/recovery.fstab:$(TARGET_COPY_OUT_RAMDISK)/etc/recovery.fstab \
    $(DEVICE_PATH)/rootdir/etc/fstab.qcom:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.qcom \

# Kernel (Prebuilt)
include device/samsung/sm8250-kernel/device-kernel.mk

# Ramdisk
PRODUCT_COPY_FILES += \
    $(DEVICE_PATH)/rootdir/etc/init.gts7xlwifi.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.gts7xlwifi.rc \
    $(DEVICE_PATH)/rootdir/etc/init.target.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/hw/init.target.rc