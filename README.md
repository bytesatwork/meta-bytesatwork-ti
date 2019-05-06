meta-bytesatwork
================================


Introduction
-------------------------
This is the official OpenEmbedded/Yocto BSP layer for bytePANEL by bytes at
work AG.

It is hosted on https://github.com/bytesatwork/meta-bytesatwork.git

This layer depends on:

	URI: git://git.yoctoproject.org/meta-ti
	layer: meta-ti
	branch: master
	commit: 29219faf16b2fb36918a269beb0ed6fd55b3ea59

	URI: git://git.openembedded.org/meta-openembedded
	layers: meta-oe, meta-networking, meta-python
	branch: warrior


BSP
-------------------------
This meta layer provides the Board Support Package (U-Boot and Linux kernel)
for "bytePANEL" by bytes at work AG. Simply set the variable MACHINE to either
"bytepanel", or "bytepanel-emmc" to use this BSP.

Linux Kernel recipe: linux-ti-staging

U-Boot recipe: u-boot-ti-staging


Reporting bugs
-------------------------
Send pull requests, patches, comments or questions to yocto@bytesatwork.ch
