meta-bytesatwork-ti
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
	commit: f35a0fdd869110d268c14ba6925f589152791127

	URI: git://git.openembedded.org/meta-openembedded
	layers: meta-oe, meta-networking, meta-python
	branch: zeus


BSP
-------------------------
This meta layer provides the Board Support Package (U-Boot and Linux kernel)
for "bytePANEL" by bytes at work AG. Simply set the variable MACHINE to either
"bytepanel", or "bytepanel-emmc" to use this BSP.

Linux Kernel recipe: linux-ti-staging

U-Boot recipe: u-boot-ti-staging


SD Card
-------------------------
SD card images are created using *wic*.
The following example shows how to create a bootable SD card with the image
`devbase-image-bytesatwork` from
[meta-bytesatwork](https://github.com/bytesatwork/meta-bytesatwork.git) from a
sourced Yocto environment:

	cd $BUILDDIR
	gunzip -c tmp/deploy/images/bytepanel/devbase-image-bytesatwork-bytepanel.wic.gz | dd of=/dev/sdX bs=1M && sync

or using `bmap-tools`:

	cd $BUILDDIR
	bmaptool copy tmp/deploy/images/bytepanel/devbase-image-bytesatwork-bytepanel.wic.bmap /dev/sdX

For more information on `bmap-tools`, follow [this](https://www.yoctoproject.org/docs/3.0/dev-manual/dev-manual.html#flashing-images-using-bmaptool) link.


Reporting bugs
-------------------------
Send pull requests, patches, comments or questions to yocto@bytesatwork.ch
