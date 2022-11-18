#!/bin/bash

# Download the deb packages
apt-get download cgpt vboot-kernel-utils

# Extract the contents of the packages
dpkg-deb -x cgpt*.deb ./tar/
dpkg-deb -x vboot-kernel-utils*.deb ./tar/

# Delete deb packages
rm ./*.deb

# Edit arch package metadata
sed -i "s/insert_date/$(date +%s)/" .PKGINFO # Insert current date

# Compress to tar without . but with hidden files
tar --zstd -cf ./vboot-cgpt-utils.pkg.tar.zst * .??*

