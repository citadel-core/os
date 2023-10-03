#!/bin/sh
BOARD="$1"
FDT_OVERLAYS=""
if [ "$BOARD" = "rock3a" ] ; then
    FDT_NAME="rk3568-rock-3a.dtb"
elif [ "$BOARD" = "cm3raspcm4io" ] ; then
    FDT_NAME="rk3566-radxa-cm3-rpi-cm4-io.dtb"
    FDT_OVERLAYS="radxa-cm3-raspcm4io-pcie2x1.dtbo"
elif [ "$BOARD" = "cm5io" ] ; then
    FDT_NAME="rk3588s-radxa-cm5-io.dtb"
fi

mkdir -p /usr/share/u-boot-menu/conf.d/
cat <<EOF > /usr/share/u-boot-menu/conf.d/10-citadel-os.conf
## /usr/share/u-boot-menu/conf.d/10-citadel-os.conf - configuration file for u-boot-update(8)
## AUTOMATICALLY GENERATED FILE - DO NOT EDIT!
## Instead, put your configuration into /etc/u-boot-menu/conf.d/*.conf
## Files there will override values of config fragments in this directory

#U_BOOT_UPDATE="true"

U_BOOT_MENU_LABEL="Citadel OS"
U_BOOT_PARAMETERS="ignore_loglevel ro rootwait earlycon console=tty0 console=ttyS2,1500000n8 fw_devlink=off"
U_BOOT_ROOT="root=LABEL=root"
U_BOOT_TIMEOUT="30"
U_BOOT_FDT="rockchip/$FDT_NAME"
U_BOOT_FDT_OVERLAYS="${FDT_OVERLAYS}"
U_BOOT_FDT_OVERLAYS_DIR="/usr/lib/linux-image-"

EOF
