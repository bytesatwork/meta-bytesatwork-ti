FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2023.04:"
SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
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
	file://0016-board-bytesatwork-bytedevkit-bawconfig-remove.patch \
	file://0017-bytesatwork-m2config-verbatim-import.patch \
	file://0018-bytesatwork-m2config-rename-to-baw-config.patch \
	file://0019-bytesatwork-bawconfig-init-config-to-zero.patch \
	file://0020-bytesatwork-bawconfig-adapt-PCB-RAM-and-flash-enums.patch \
	file://0021-bytesatwork-bawconfig-stm32mp1-ram-fallback.patch \
	file://0022-bytesatwork-bawconfig-support-imx8mm-bytedevkit.patch \
	file://0023-bytesatwork-bawconfig-fix-build-without-EEPROM-enabl.patch \
	file://0024-bytesatwork-bawconfig-add-4-GB-as-3-GB-RAM.patch \
	file://0025-bytesatwork-bawconfig-introduce-ti-am62x-enums.patch \
	file://0026-bytesatwork-bawconfig-introduce-Makefile.patch \
	file://0027-bytesatwork-bawconfig-add-stm32mp1-ram-types.patch \
	file://0028-bytesatwork-bawconfig-remove-legacy-i2c-support-use-.patch \
	file://0029-bytesatwork-bawconfig-clean-up-for-automated-check.patch \
	file://0030-bytesatwork-bawconfig-update-cmd-function.patch \
	file://0031-bytesatwork-bawconfig-ti-am62x-ram-fallback.patch \
	file://0032-board-bytedevkit-use-common-baw_config.patch \
	file://0033-board-bytesatwork-bytedevkit-calculate-2nd-mac-addre.patch \
	file://0034-include-configs-am62x-add-fdt-fixups.patch \
	file://0035-cmd-cpuinfo-show-cpu-information.patch \
	file://0036-configs-bytedevkit-enable-info-commands.patch \
	file://0037-include-configs-bytedevkit-enable-oldi.patch \
	file://0038-arm-dts-bytedevkit-change-usb-role.patch \
	file://0039-include-configs-bytedevkit-add-dfu_alt_info.patch \
	file://0040-configs-bytedevkit-support-dfu-boot.patch \
	file://0041-configs-bytedevkit-enable-gpio-support.patch \
	file://0042-bytesatwork-bawconfig-fix-am62x-ram-fallback.patch \
	file://0043-bytesatwork-bawconfig-add-ti-am62x-revision.patch \
	file://0044-board-bytesatwork-bytedevkit-Import-binman-configura.patch \
	file://0045-arm-dts-bytedevkit-Add-binman-configuration.patch \
	file://0046-arm-dts-bytedevkit-Adapt-binman-configuration.patch \
	file://0047-arm-dts-bytedevkit-Move-to-new-driver-model-schema.patch \
	file://0048-configs-bytedevkit-adapt-defconfig-to-v2023.04.patch \
	file://0049-include-configs-bytedevkit-remove-defines.patch \
	file://0050-bytedevkit-Adapt-to-ti-u-boot-2023.04-and-cleanup.patch \
	file://0051-board-bytesatwork-bytedevkit-Update-readme.patch \
	file://0052-bytesatwork-bawconfig-introduce-nxp-imx8mp.patch \
	file://0053-bytesatwork-bawconfig-introduce-ti-am62px.patch \
"

PR = "r0"
UBOOT_LOCALVERSION .= "-${PR}"
