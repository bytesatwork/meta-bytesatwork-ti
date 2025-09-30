FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2025.01:"
SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-cmd-Add-cpuinfo.patch \
	file://0003-board-bytesatwork-Import-bawconfig.patch \
	file://0004-am62x-Add-AM62xx-bytesatwork-byteDEVKIT-board.patch \
	file://0005-bytesatwork-am62x-Introduce-bawconfig.patch \
	file://0006-configs-am62xx_bytedevkit-Add-password.patch \
	file://0007-configs-am62x_bytedevkit-Add-quiet-to-kernel-bootarg.patch \
"

PR = "r1"
UBOOT_LOCALVERSION .= "-${PR}"
