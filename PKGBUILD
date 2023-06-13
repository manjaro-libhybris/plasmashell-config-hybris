# Maintainer: Bardia Moshiri <fakeshell@bardia.tech>

pkgname=gnomeshell-config-hybris
conflicts=('phosh-config-hybris')
pkgver=0.1
pkgrel=3
pkgdesc="Gnome shell configurations for Halium"
arch=('any')
url="https://github.com/manjaro-libhybris/gnomeshell-config-hybris"
depends=('gnome-shell' 'xf86-video-hwcomposer' 'halium-wrappers')
source=('X11.service'
        'gnome-shell.service'
        'startgnome'
        '10-no-powerbutton.conf'
        'xorg.conf'
        'Xwrapper.config')

sha256sums=('aa13fbc362823f866f620373d6d274a1cfd0c627b8f9dee5295a31877d89c7a0'
            '29e45e2b9842e8541558bf56048b8e4b5b60d76016773fd2fee4855a8ad90a65'
            '416269a6004eba46de5730fd736abb5b6502bc5366b27fa19a1c614c908ba835'
            '89049b70e47de31aa196f7246d0b1dfdbbe36dbbcc75a937383c22d8586bbffa'
            'de3719b3068be69d340ecd31981e7cc80e4541b862d26f54ca14c68c797ac507'
            '0d0307fa4081ca69637e7a21f1bd2199dfc2b480c953b0d860950098461f0652')

package() {
    install -d ${pkgdir}/etc/systemd/logind.conf.d/
    install -d ${pkgdir}/usr/lib/systemd/system/
    install -d ${pkgdir}/usr/bin/
    install -d ${pkgdir}/etc/X11/
    install -m 644 X11.service ${pkgdir}/usr/lib/systemd/system/X11.service
    install -m 644 gnome-shell.service ${pkgdir}/usr/lib/systemd/system/gnome-shell.service
    install -m 755 startgnome ${pkgdir}/usr/bin/startgnome
    install -m 644 10-no-powerbutton.conf ${pkgdir}/etc/systemd/logind.conf.d/10-no-powerbutton.conf
    install -m 644 xorg.conf ${pkgdir}/etc/X11/xorg.conf
    install -m 644 Xwrapper.config ${pkgdir}/etc/X11/Xwrapper.config
}
