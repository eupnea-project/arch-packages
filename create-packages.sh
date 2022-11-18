#!/bin/bash

# Download the deb packages
apt-get download cgpt vboot-kernel-utils

# Extract the contents of the packages
dpkg-deb -x cgpt*.deb ./tar-package/
dpkg-deb -x vboot-kernel-utils*.deb ./tar-package/

# Edit arch package metadata
sed -i "s/insert_date/$(date +%s)/" .PKGINFO # Insert current date
cp .PKGINFO ./tar-package/.PKGINFO # Copy metadata to package

# Compress to tar without . but with hidden files
cd tar-package
tar --zstd -cf ../vboot-cgpt-utils.pkg.tar.zst * .??*

