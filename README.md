# meta-bytesatwork-ti

## Introduction

This is the official OpenEmbedded/Yocto BSP layer for byteDEVKIT AM335x and byteDEVKIT AM62x by
[bytes at work AG](https://www.bytesatwork.io/).

It is hosted on [github](https://github.com/bytesatwork/meta-bytesatwork-ti.git).

This layer depends on:

	URI: https://git.yoctoproject.org/git/meta-ti
	layer: meta-ti-bsp
	branch: kirkstone

## BSP

This meta layer provides the Board Support Package (U-Boot and Linux kernel) for byteDEVKIT AM335x
and byteDEVKIT AM62x by bytes at work AG. Simply set the variable MACHINE to `bytedevkit-am335x`
or `bytedevkit-am62x` to use this BSP.

Linux Kernel recipe: linux-ti-staging

U-Boot recipe: u-boot-ti-staging

## SD Card

SD card images are created using *wic*. The following example shows how to create a bootable SD card
with the image `bytesatwork-minimal-image` from
[meta-bytesatwork](https://github.com/bytesatwork/meta-bytesatwork.git) from a sourced Yocto
environment:

	cd $BUILDDIR
	gunzip -c tmp/deploy/images/bytedevkit-am335x/bytesatwork-minimal-image-bytedevkit-am335x.wic.gz | dd of=/dev/sdX bs=1M && sync

or using `bmap-tools`:

	cd $BUILDDIR
	bmaptool copy tmp/deploy/images/bytedevkit-am335x/bytesatwork-minimal-image-bytedevkit-am335x.wic.bmap /dev/sdX

For more information on `bmap-tools`, follow [this](https://docs.yoctoproject.org/4.0/dev-manual/common-tasks.html#flashing-images-using-bmaptool) link.


## Reporting bugs

Send pull requests, patches, comments or questions to yocto@bytesatwork.ch.
