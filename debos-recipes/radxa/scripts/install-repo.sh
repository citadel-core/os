curl -L --output /tmp/radxa.dpkg "https://github.com/radxa-pkg/radxa-archive-keyring/releases/latest/download/radxa-archive-keyring_$(curl -L https://github.com/radxa-pkg/radxa-archive-keyring/releases/latest/download/VERSION)_all.deb"
dpkg -i /tmp/radxa.dpkg
rm -f /tmp/radxa.dpkg
