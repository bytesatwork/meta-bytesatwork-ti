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
	file://0016-github-workflows-update-version.patch \
	file://0017-board-bytesatwork-bytedevkit-bawconfig-remove.patch \
	file://0018-bytesatwork-m2config-verbatim-import.patch \
	file://0019-bytesatwork-m2config-rename-to-baw-config.patch \
	file://0020-bytesatwork-bawconfig-init-config-to-zero.patch \
	file://0021-bytesatwork-bawconfig-adapt-PCB-RAM-and-flash-enums.patch \
	file://0022-bytesatwork-bawconfig-stm32mp1-ram-fallback.patch \
	file://0023-bytesatwork-bawconfig-support-imx8mm-bytedevkit.patch \
	file://0024-bytesatwork-bawconfig-fix-build-without-EEPROM-enabl.patch \
	file://0025-bytesatwork-bawconfig-add-4-GB-as-3-GB-RAM.patch \
	file://0026-bytesatwork-bawconfig-introduce-ti-am62x-enums.patch \
	file://0027-bytesatwork-bawconfig-introduce-Makefile.patch \
	file://0028-bytesatwork-bawconfig-add-stm32mp1-ram-types.patch \
	file://0029-bytesatwork-bawconfig-remove-legacy-i2c-support-use-.patch \
	file://0030-bytesatwork-bawconfig-clean-up-for-automated-check.patch \
	file://0031-bytesatwork-bawconfig-update-cmd-function.patch \
	file://0032-bytesatwork-bawconfig-ti-am62x-ram-fallback.patch \
	file://0033-board-bytedevkit-use-common-baw_config.patch \
	file://0034-board-bytesatwork-bytedevkit-calculate-2nd-mac-addre.patch \
	file://0035-include-configs-am62x-add-fdt-fixups.patch \
	file://0036-cmd-cpuinfo-show-cpu-information.patch \
	file://0037-configs-bytedevkit-enable-info-commands.patch \
	file://0038-include-configs-bytedevkit-enable-oldi.patch \
"

SPL_UART_BINARY:bytedevkit-am62x-k3r5 = "u-boot-spl.bin"
do_deploy:append:bytedevkit-am62x-k3r5 () {
	mv ${DEPLOYDIR}/tiboot3.bin ${DEPLOYDIR}/tiboot3-r5spl.bin || true
	mv ${DEPLOYDIR}/u-boot-spl.bin ${DEPLOYDIR}/u-boot-spl-r5spl.bin || true
}
