# Copyright (C) 2025 bytesatwork AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-6.18:"

SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-CI-Add-action-to-analyze-patches.patch \
	file://0003-dt-bindings-arm-bytesatwork-Add-module-and-board.patch \
	file://0004-dt-bindings-display-simple-Add-Youritech-ET050WV05.patch \
	file://0005-drm-panel-simple-Add-Youritech-ET050WV05-panel.patch \
	file://0006-usb-dwc3-Fix-OTG-role-switch-support-for-AM62.patch \
	file://0007-net-ti-am65-cpsw-nuss-select-PAGE_POOL.patch \
	file://0008-arm64-ti-k3-am625-byteengine-bytedevkit-Add-byteDEVK.patch \
	file://0009-arm64-bytedevkit_am62x_defconfig-Add-a-basic-configu.patch \
	file://0010-arm64-bytedevkit_am62x_defconfig-align-with-make-sav.patch \
	file://0011-arm64-bytedevkit_am62x_defconfig-add-nftables-system.patch \
	file://0012-arm64-bytedevkit_am62x_defconfig-Thermal-driver-and-.patch \
	file://0013-arm64-dts-ti-k3-am625-bytedevkit-Adapt-OLDI-port-def.patch \
	file://0014-arm64-bytedevkit_am62x_defconfig-align-with-make-sav.patch \
	file://0015-arm64-dts-ti-k3-am625-bytedevkit-Rename-BDK-device-t.patch \
	file://0016-dt-bindings-arm-bytesatwork-Update-modules-and-board.patch \
	file://0017-drm-panel-Add-youritech-panel-with-ili9806e-mipi-con.patch \
	file://0018-arm64-dts-ti-k3-am62l3-byteengine-bytedevkit-Add-byt.patch \
	file://0019-arm64-bytedevkit_am62lx_defconfig-Add-a-basic-config.patch \
	file://0020-crypto-algif_aead-Revert-to-operating-out-of-place.patch \
	file://0021-xfrm-esp-avoid-in-place-decrypt-on-shared-skb-frags.patch \
"

PR = "r1"

kernel_do_compile:prepend() {
	oe_runmake ${KERNEL_DEFCONFIG_INTREE}
}

kernel_do_install:append:bytedevkit-am62x() {
	if [ -n "${KERNEL_DEVICETREE_INTREE}" ] ;then
		for dtb in ${KERNEL_DEVICETREE_INTREE}; do
			install -Dm 0644 ${B}/arch/arm64/boot/dts/ti/$dtb ${D}/boot/
		done
	fi

	ln -sf k3-am625-bytedevkit-v2-0.dtb ${D}/boot/k3-am625-bytedevkit.dtb
}

kernel_do_install:append:bytedevkit-am62lx() {
	if [ -n "${KERNEL_DEVICETREE_INTREE}" ] ;then
		for dtb in ${KERNEL_DEVICETREE_INTREE}; do
			install -Dm 0644 ${B}/arch/arm64/boot/dts/ti/$dtb ${D}/boot/
		done
	fi

	ln -sf k3-am62l3-bytedevkit-v2-0.dtb ${D}/boot/k3-am62lx-bytedevkit.dtb
}


FILES:${KERNEL_PACKAGE_NAME}-devicetree += "${@' '.join(['%s%s' % ("/boot/", d) for d in d.getVar('KERNEL_DEVICETREE_INTREE').split()])}"
FILES:${KERNEL_PACKAGE_NAME}-base:append:bytedevkit-am62x = " /boot/k3-am625-bytedevkit.dtb"
FILES:${KERNEL_PACKAGE_NAME}-base:append:bytedevkit-am62lx = " /boot/k3-am62lx-bytedevkit.dtb"

WARN_QA:remove = "patch-status"
ERROR_QA:remove = "patch-status"
