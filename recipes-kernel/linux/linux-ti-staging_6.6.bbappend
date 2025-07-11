# Copyright (C) 2024 bytesatwork AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-6.6:"

SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-dt-bindings-display-simple-Add-Youritech-ET050WV05.patch \
	file://0003-drm-panel-simple-Add-Youritech-ET050WV05-panel.patch \
	file://0004-usb-dwc3-Fix-OTG-role-switch-support-for-AM62.patch \
	file://0005-net-ti-am65-cpsw-nuss-select-PAGE_POOL.patch \
	file://0006-dt-bindings-arm-bytesatwork-Add-module-and-board.patch \
	file://0007-video-logo-Add-bytesatwork-boot-logo.patch \
	file://0008-arm64-ti-k3-am625-byteengine-bytedevkit.patch \
	file://0009-arm64-bytedevkit_am62x_defconfig-Add-a-basic-configu.patch \
	file://0010-arm64-ti-k3-am625-byteengine-bytedevkit-2-2.patch \
"

PR = "r2"

kernel_do_compile:prepend() {
	oe_runmake ${KERNEL_DEFCONFIG_INTREE}
}

kernel_do_install:append() {
	if [ -n "${KERNEL_DEVICETREE_INTREE}" ] ;then
		for dtb in ${KERNEL_DEVICETREE_INTREE}; do
			install -Dm 0644 ${B}/arch/arm64/boot/dts/ti/$dtb ${D}/boot/
		done
	fi
}

FILES:${KERNEL_PACKAGE_NAME} += "${@' '.join(['%s%s' % ("/boot/", d) for d in d.getVar('KERNEL_DEVICETREE_INTREE').split()])}"
