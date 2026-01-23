FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2025.01:"
SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-CI-Add-action-to-analyze-patches.patch \
	file://0003-cmd-Add-cpuinfo.patch \
	file://0004-board-bytesatwork-Import-bawconfig.patch \
	file://0005-am62x-Add-AM62xx-bytesatwork-byteDEVKIT-board.patch \
	file://0006-bytesatwork-am62x-Introduce-bawconfig.patch \
	file://0007-configs-am62xx_bytedevkit-Add-password.patch \
"

PR = "r2"
UBOOT_LOCALVERSION .= "-${PR}"
