#!/usr/bin/env bash

cd /home/citadel/citadel/scripts/citadel-os/services
CITADEL_SYSTEMD_SERVICES=$(ls *.service)
for service in $CITADEL_SYSTEMD_SERVICES; do
    install -m 644 "${service}" "/etc/systemd/system/${service}"
    systemctl enable "${service}"
done
