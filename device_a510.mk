# Copyright (C) 2011 The Android Open Source Project
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
# limitations under the License

# USB config contains product-specific USB id
PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/init.acer.usb.rc:root/init.acer.usb.rc

PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=160

# So init files are copied properly in device_base.mk
PRODUCT_BOOTLOADER := picasso_m

PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/init.picasso_m.rc:root/init.picasso_m.rc \
    device/acer/a510/prebuilt/ramdisk/init.recovery.picasso_m.rc:root/init.recovery.picasso_m.rc \
    device/acer/a510/prebuilt/ramdisk/fstab.acer:root/fstab.acer \
    device/acer/a510/prebuilt/ramdisk/fstab.acer:root/fstab.picasso_m \
    device/acer/a510/prebuilt/ramdisk/twrp.fstab:recovery/root/etc/twrp.fstab

# lvm files
PRODUCT_COPY_FILES += \
    device/acer/a510/prebuilt/ramdisk/lvm/etc/lvm.conf:root/lvm/etc/lvm.conf \
    device/acer/a510/prebuilt/ramdisk/lvm/sbin/lvm:root/sbin/lvm \
    device/acer/a510/prebuilt/ramdisk/lvm/sbin/setuplvmsystem.sh:recovery/root/sbin/setuplvmsystem.sh
    
# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1

# Inherit t30-common
$(call inherit-product, device/acer/t30-common/device_base.mk)
