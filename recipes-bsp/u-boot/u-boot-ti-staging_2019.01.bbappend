MLO_IMAGE ??= "${SPL_BINARY}"

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-2019.01:"
SRC_URI += " \
	file://0001-lib-crc16.c-Fix-compiler-warning.patch \
	file://0002-cmd-cpuinfo-Add-a-basic-command-for-showing-cpu-info.patch \
	file://0003-byteengine_m2-Add-support-for-byteENGINE-AM335x.patch \
"

do_deploy_append_bytepanel-emmc () {
	install -d ${DEPLOY_DIR_IMAGE}
	install ${B}/${SPL_BINARY}.byteswap ${DEPLOY_DIR_IMAGE}/${MLO_IMAGE}.byteswap
}
