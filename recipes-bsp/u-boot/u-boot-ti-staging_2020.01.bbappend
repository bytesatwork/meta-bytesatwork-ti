MLO_IMAGE ??= "${SPL_BINARY}"

SRCREV = "f2cd62a77d9b85005ff5a60e3839992ace0494b8"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}-2020.01:"
SRC_URI += " \
	file://0001-lib-crc16.c-Fix-compiler-warning.patch \
	file://0002-cmd-cpuinfo-Add-a-basic-command-for-showing-cpu-info.patch \
	file://0003-byteengine_m2-Add-support-for-byteENGINE-AM335x.patch \
	file://0004-byteengine_m2-Add-support-for-2020.01.patch \
	file://0005-Create-checkpatch.yml.patch \
	file://0006-Remove-redundant-YYLOC-global-declaration.patch \
"

do_deploy:append:bytedevkit-am335x () {
	install -d ${DEPLOY_DIR_IMAGE}
	install ${B}/${SPL_BINARY}.byteswap ${DEPLOY_DIR_IMAGE}/${MLO_IMAGE}.byteswap
}
