FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2026.01:"
SRC_URI += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-CI-Add-action-to-analyze-patches.patch \
	file://0003-cmd-Add-cpuinfo.patch \
	file://0004-board-bytesatwork-Import-bawconfig.patch \
	file://0005-am62x-Add-AM62xx-bytesatwork-byteDEVKIT-board.patch \
	file://0006-bytesatwork-am62x-Introduce-bawconfig.patch \
	file://0007-am62lx-Add-AM62Lx-bytesatwork-byteDEVKIT-board.patch \
	file://0008-bytesatwork-am62lx-Introduce-bawconfig.patch \
	file://0009-configs-am62x_bytedevkit-Add-password.patch \
	file://0010-configs-am62lx_bytedevkit-Add-password.patch \
	file://0011-cmd-fuse-Prevent-segfault.patch \
"

PR = "r0"
UBOOT_LOCALVERSION .= "-${PR}"

do_deploy:append() {
	if [ -e "${DEPLOYDIR}/tiboot3-am62x-gp-bytedevkit.bin" ]; then
		cp -f "${DEPLOYDIR}/tiboot3-am62x-gp-bytedevkit.bin" "${DEPLOYDIR}/tiboot3.bin"
	fi
}

WARN_QA:remove = "patch-status"
ERROR_QA:remove = "patch-status"
