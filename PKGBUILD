# Maintainer: The Eupnea Project
pkgname=vboot-cgpt-utils
pkgver=1.0
pkgrel=1
pkgdesc="vboot utils and cgpt repackaged from Ubuntu debs. Will only build on Ubuntu systems"
url="https://chromium.googlesource.com/chromiumos/platform/vboot_reference"
arch="x86_64"
license=('GPLv3')

prepare() {
  apt-get download cgpt vboot-kernel-utils
}

package () {
  # Extract & combine the deb packages into package
  dpkg-deb -x cgpt*.deb $pkgdir
  dpkg-deb -x vboot-kernel-utils*.deb $pkgdir
}
