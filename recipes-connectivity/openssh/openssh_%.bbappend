# Don't use rng-tools, use the hwrng provided by the SoC
RRECOMMENDS:${PN}-sshd:remove:bytedevkit-am335x = "rng-tools"
RRECOMMENDS:${PN}-sshd:remove:bytedevkit-am62x = "rng-tools"
