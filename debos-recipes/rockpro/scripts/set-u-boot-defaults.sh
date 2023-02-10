#!/bin/sh

mkdir -p /usr/share/u-boot-menu/conf.d/
cat <<EOF > /usr/share/u-boot-menu/conf.d/10-citadel-os.conf
## /usr/share/u-boot-menu/conf.d/10-citadel-os.conf - configuration file for u-boot-update(8)
## AUTOMATICALLY GENERATED FILE - DO NOT EDIT!
## Instead, put your configuration into /etc/u-boot-menu/conf.d/*.conf
## Files there will override values of config fragments in this directory

#U_BOOT_UPDATE="true"

#U_BOOT_ALTERNATIVES="default recovery"
#U_BOOT_DEFAULT="l0"
#U_BOOT_ENTRIES="all"
#U_BOOT_MENU_LABEL="Debian GNU/Linux"
U_BOOT_PARAMETERS="ignore_loglevel ro rootwait earlycon console=tty0 console=ttyS2,1500000n8 fw_devlink=off"
U_BOOT_ROOT="root=LABEL=root"
U_BOOT_TIMEOUT="30"
U_BOOT_FDT="rockchip/rk3399-rockpro64-v2.dtb"
#U_BOOT_FDT_DIR="/usr/lib/linux-image-"
#U_BOOT_FDT_OVERLAYS=""
#U_BOOT_FDT_OVERLAYS_DIR="/boot/dtbo/"

EOF
