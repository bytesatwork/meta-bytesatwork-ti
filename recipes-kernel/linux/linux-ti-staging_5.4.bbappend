# Copyright (C) 2020 Daniel Ammann <daniel.ammann@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-5.4:"

SRC_URI += " \
	file://0001-ARM-dts-am33xx-add-AM335x-pin-names.patch \
	file://0002-ARM-dts-Add-support-for-byteDEVKIT-AM353x.patch \
	file://0003-Create-checkpatch.yml.patch \
"

deltask compileconfigs

KERNEL_EXTRA_ARGS += "LOADADDR=${UBOOT_ENTRYPOINT}"

kernel_do_compile:prepend() {
	oe_runmake ${KERNEL_DEFCONFIG}
}
