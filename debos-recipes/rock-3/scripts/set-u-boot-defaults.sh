#!/bin/sh
BOARD="$1"
if [ "$BOARD" = "rock3a" ] ; then
    FDT_NAME="rockchip/rk3568-rock-3a.dtb"
elif [ "$BOARD" = "cmrat" ] ; then
    FDT_NAME="/boot/dtb/cmrat.dtb"
fi

mkdir -p /usr/share/u-boot-menu/conf.d/
cat <<EOF > /usr/share/u-boot-menu/conf.d/10-citadel-os.conf
## /usr/share/u-boot-menu/conf.d/10-citadel-os.conf - configuration file for u-boot-update(8)

U_BOOT_MENU_LABEL="Citadel OS"
U_BOOT_PARAMETERS="ignore_loglevel ro rootwait earlycon console=tty0 console=ttyS2,1500000n8 fw_devlink=off"
U_BOOT_ROOT="root=LABEL=root"
U_BOOT_TIMEOUT="30"
U_BOOT_FDT="$FDT_NAME"
EOF
