# Maintainer: Bardia Moshiri <fakeshell@bardia.tech>

pkgname=gnomeshell-config-hybris
conflicts=('phosh-config-hybris')
pkgver=0.1
pkgrel=1
pkgdesc="Gnome shell configurations for Halium"
arch=('any')
url="https://github.com/manjaro-libhybris/gnomeshell-config-hybris"
depends=('gnome-shell' 'xf86-video-hwcomposer' 'halium-wrappers')
source=('X11.service'
        'gnome-shell.service'
        'startgnome')

sha256sums=('aa13fbc362823f866f620373d6d274a1cfd0c627b8f9dee5295a31877d89c7a0'
           '29e45e2b9842e8541558bf56048b8e4b5b60d76016773fd2fee4855a8ad90a65'
           '416269a6004eba46de5730fd736abb5b6502bc5366b27fa19a1c614c908ba835')

package() {
    install -d ${pkgdir}/usr/lib/systemd/system/
    install -d ${pkgdir}/usr/bin/
    install -m 644 X11.service ${pkgdir}/usr/lib/systemd/system/X11.service
    install -m 644 gnome-shell.service ${pkgdir}/usr/lib/systemd/system/gnome-shell.service
    install -m 755 startgnome ${pkgdir}/usr/bin/startgnome
}
