# Don't use rng-tools, use the hwrng provided by the SoC
RRECOMMENDS_${PN}-sshd_remove_class-target = " rng-tools"
