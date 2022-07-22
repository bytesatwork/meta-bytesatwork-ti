# Copyright (C) 2022 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

# 08.05.00.002
SRCREV = "8b51d20b6e6e1b9277b59b7aaed8a97eff43097f"
PV = "5.10.145+git${SRCPV}"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-5.10:"

SRC_URI += " \
	file://0001-github-workflows-create-checkpatch.yml.patch \
	file://0002-dt-bindings-vendor-prefixes-Add-bytes-at-work-AG.patch \
	file://0003-dt-bindings-arm-bytesatwork-Add-module-and-board.patch \
	file://0004-arm64-ti-k3-am625-byteengine-Add-byteENGINE-AM625x-m.patch \
	file://0005-arm64-ti-k3-am625-bytedevkit-Add-byteDEVKIT-AM625x-b.patch \
	file://0006-arm64-bytedevkit_am62x_defconfig-Add-a-basic-configu.patch \
"

kernel_do_compile:prepend() {
	oe_runmake ${KERNEL_DEFCONFIG}
}
