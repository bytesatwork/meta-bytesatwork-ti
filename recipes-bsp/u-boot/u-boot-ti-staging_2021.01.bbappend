PR = "r1"

SRCREV = "2dd2e1d366acf7f41bbd8f2d1dbe6cf5e1bcbad6"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2021.01:"
SRC_URI += " \
	file://0001-github-workflows-create-checkpatch.yml.patch \
	file://0002-include-configs-Add-a-verbatim-copy-of-am62x_evm.h.patch \
	file://0003-configs-Add-a-verbatim-copy-of-am62x_-_defconfig.patch \
	file://0004-arm-dts-Add-a-verbatim-copy-of-k3-am625-sk.patch \
	file://0005-board-bytesatwork-Add-a-verbatim-import-of-ti-am62x.patch \
	file://0006-configs-introduce-byteDEVKIT.patch \
	file://0007-include-configs-introduce-byteDEVKIT.patch \
	file://0008-arm-dts-introduce-byteDEVKIT.patch \
	file://0009-board-bytesatwork-introduce-byteDEVKIT.patch \
	file://0010-bytesatwork-bytedevkit-introduce-bawconfig.patch \
	file://0011-configs-enable-SPI-NOR-u-boot-environment.patch \
	file://0012-include-configs-clean-up-bytedevkit-u-boot-environme.patch \
	file://0013-configs-disable-distro-bootcmd-on-bytedevkit.patch \
	file://0014-configs-bytedevkit-r5-savedefconfig.patch \
	file://0015-byteengine-bytedevkit-Change-primary-boot-medium-to-.patch \
"

SPL_UART_BINARY:bytedevkit-am62x-k3r5 = "u-boot-spl.bin"
do_deploy:append:bytedevkit-am62x-k3r5 () {
	mv ${DEPLOYDIR}/tiboot3.bin ${DEPLOYDIR}/tiboot3-r5spl.bin || true
	mv ${DEPLOYDIR}/u-boot-spl.bin ${DEPLOYDIR}/u-boot-spl-r5spl.bin || true
}
