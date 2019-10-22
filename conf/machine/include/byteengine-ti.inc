# Copyright (C) 2014-2016 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

#@TYPE: Machine
#@NAME: byteENGINE
#@DESCRIPTION: byteENGINE by bytes at work AG

SERIAL_CONSOLES = "115200;ttyO0"
IMAGE_FSTYPES = "tar.bz2 wic.bmap wic.gz"

KERNEL_IMAGETYPE = "uImage"
PREFERRED_PROVIDER_virtual/kernel = "linux-ti-staging"
PREFERRED_PROVIDER_virtual/bootloader = "u-boot-ti-staging"
PREFERRED_VERSION_linux-ti-staging = "4.19%"
PREFERRED_VERSION_u-boot-ti-staging = "2019.01%"

WKS_FILE = "beaglebone-yocto.wks"
do_image_wic[depends] += "mtools-native:do_populate_sysroot dosfstools-native:do_populate_sysroot u-boot:do_deploy"
IMAGE_BOOT_FILES = "u-boot.${UBOOT_SUFFIX} MLO ${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"
