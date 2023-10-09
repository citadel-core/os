# Citadel OS Rockchip images

This repository contains the GitHub workflow files and debos recipes to create
custom Debian-based operating system images for various Rockchip SCBs.

The goal is to eventually have a fully automated solution for generating
working mainline-kernel-based images for people to use, with a kernel package
that is being updated.


## Current Features

* Mainline based kernel - no shambling vendor BSP sources
* Kernel that's actually packaged, and gets its own initramfs
* User prompted for new password on first login
* Growing of the root filesystem on first boot
* Regenerating OpenSSH host keys on first boot


## User Documentation

Please see [RUNNING.md](RUNNING.md) for various collected notes regarding how
to use this image to its fullest potential.


## Developer Documentation

For information on how to build images with this repository, see
[HACKING.md](HACKING.md).

For contribution guidelines and hints on how to achieve certain things in the
preferred git workflow, please consult [CONTRIBUTING.md](CONTRIBUTING.md).


## TODO:

* package the wireless firmware
* get a newer rkbin working with u-boot
* base pg's stuff on a newer version of u-boot
* get FDT overlays working in u-boot
* generate ubuntu based images
* add more SOQuartz baseboards as I (or someone else) mainlines device trees for
  them.
