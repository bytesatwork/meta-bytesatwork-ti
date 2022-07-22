DEPENDS:append:bytedevkit-am62x-k3r5 = " virtual/bootloader"
SYSFW_PREFIX:bytedevkit-am62x-k3r5 = "ti-fs-firmware"
EXTRA_OEMAKE:append:bytedevkit-am62x-k3r5 = " SBL="${STAGING_DIR_HOST}/boot/u-boot-spl.bin""

do_install:bytedevkit-am62x-k3r5() {
	install -d ${D}/boot
	install -m 644 ${WORKDIR}/imggen/${UBOOT_BINARY} ${D}/boot/${UBOOT_IMAGE}
	ln -sf ${UBOOT_IMAGE} ${D}/boot/${UBOOT_SYMLINK}
	ln -sf ${UBOOT_IMAGE} ${D}/boot/${UBOOT_BINARY}
}

do_deploy:bytedevkit-am62x-k3r5() {
	install -d ${DEPLOYDIR}
	install -m 644 ${WORKDIR}/imggen/${UBOOT_BINARY} ${DEPLOYDIR}/${UBOOT_IMAGE}
	ln -sf ${UBOOT_IMAGE} ${DEPLOYDIR}/${UBOOT_SYMLINK}
	ln -sf ${UBOOT_IMAGE} ${DEPLOYDIR}/${UBOOT_BINARY}
	install -m 644 ${SYSFW_TISCI} ${DEPLOYDIR}/
}

