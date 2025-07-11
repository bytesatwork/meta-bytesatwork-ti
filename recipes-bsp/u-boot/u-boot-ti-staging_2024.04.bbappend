FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2024.04:"
SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-cmd-add-cpuinfo.patch \
	file://0003-am62x-add-AM62xx-bytesatwork-byteDEVKIT-board.patch \
	file://0004-board-bytesatwork-import-bawconfig.patch \
	file://0005-board-bytedevkit-introduce-bawconfig.patch \
	file://0006-bytedevkit-am62x-Set-byteDEVKIT2.2-as-new-default.patch \
"

PR = "r1"
UBOOT_LOCALVERSION .= "-${PR}"
