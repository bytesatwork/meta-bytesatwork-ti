# Copyright (C) 2023 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-6.1:"

SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-dt-bindings-vendor-prefixes-Add-bytes-at-work-AG.patch \
	file://0003-dt-bindings-arm-bytesatwork-Add-module-and-board.patch \
	file://0004-arm64-ti-k3-am625-byteengine-Add-byteENGINE-AM625x-m.patch \
	file://0005-arm64-ti-k3-am625-bytedevkit-Add-byteDEVKIT-AM625x-b.patch \
	file://0006-arm64-bytedevkit_am62x_defconfig-Add-a-basic-configu.patch \
	file://0007-drivers-watchdog-rti_wdt-set-min_hw_heartbeat_ms-to-.patch \
	file://0008-dt-bindings-vendor-prefixes-Add-youritech.patch \
	file://0009-dt-bindings-display-simple-Add-Youritech-ET050WV05.patch \
	file://0010-drm-panel-simple-Add-Youritech-ET050WV05-panel.patch \
	file://0011-arm64-ti-k3-am625-bytedevkit-Add-display-support.patch \
	file://0012-video-logo-add-bytes-at-work-boot-logo.patch \
	file://0013-arm64-bytedevkit_am62x_defconfig-Enable-bytes-at-wor.patch \
	file://0014-arm64-ti-k3-am625-bytedevkit-Add-support-for-touch-s.patch \
	file://0015-usb-dwc3-Fix-OTG-role-switch-support-for-AM62.patch \
	file://0016-arm64-ti-k3-am625-bytedevkit-support-USB-OTG.patch \
	file://0017-arm64-bytedevkit_am62x_defconfig-support-USB-OTG.patch \
	file://0018-arm64-ti-k3-am625-bytedevkit-support-eeprom.patch \
	file://0019-arm64-ti-k3-am625-byteengine-Remove-SPI-NOR-flash.patch \
	file://0020-arm64-dts-ti-k3-am625-byte-engine-devkit-Update-for-.patch \
	file://0021-arm64-bytedevkit_am62x_defconfig-Update-for-Linux-6..patch \
"

PR = "r0"

kernel_do_compile:prepend() {
	oe_runmake ${KERNEL_DEFCONFIG}
}
