#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Enable updating of APEXes
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Overlays
PRODUCT_ENFORCE_RRO_TARGETS := *

# Rootdir
PRODUCT_PACKAGES += \
    fstab.mt6893 \
    fstab.mt6893.ramdisk \

PRODUCT_PACKAGES += \
    init.cgroup.rc \
    init.modem.rc \
    init.mt6893.rc \
    init.mt6893.usb.rc \
    init.project.rc \
    init.recovery.mt6893.rc \
    init.sensor_2_0.rc \
    init.stnfc.rc \
    ueventd.mt6893.rc

PRODUCT_PACKAGES_ENG += \
    init.debug.rc

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 30

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit the proprietary files
$(call inherit-product, vendor/xiaomi/amber/amber-vendor.mk)
