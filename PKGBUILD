# Maintainer: Bardia Moshiri <fakeshell@bardia.tech>

pkgname=gnomeshell-config-hybris
conflicts=('phosh-config-hybris')
pkgver=0.2
pkgrel=2
pkgdesc="Gnome shell configurations for Halium"
arch=('any')
url="https://github.com/manjaro-libhybris/gnomeshell-config-hybris"
depends=('gnome-shell' 'xf86-video-hwcomposer' 'halium-wrappers' 'xbindkeys')
source=('X11.service'
        'gnome-shell.service'
        'startgnome'
        '10-no-powerbutton.conf'
        'xorg.conf'
        'Xwrapper.config'
        '90_gnomeshell.gschema.override'
        'xbindkeysrc'
        'powerbutton'
        'zz-x11.sh')

sha256sums=('57297c3f665058ec5a63f352e988811757a70874248dade1ba54f55dabf8fda0'
            '9fef9502fad9dc2e50e657fdc5c57bfbd6920b2cfc98d82089d96a7c6ff15daf'
            '7059eedcc933e67c7f82df6412d6c85c5ce1659f5d9c0d6f9afef68bd4be6018'
            '89049b70e47de31aa196f7246d0b1dfdbbe36dbbcc75a937383c22d8586bbffa'
            'de3719b3068be69d340ecd31981e7cc80e4541b862d26f54ca14c68c797ac507'
            '0d0307fa4081ca69637e7a21f1bd2199dfc2b480c953b0d860950098461f0652'
            'd899e6d77d77c36cb2ff034db1e71903c2bfcad5265ec996644665c01343e0f1'
            'da19046c4f75affa7da688b675fac911516c958965130385f020a2b1fd231b3c'
            'e98eb7942169b6c84f8dbf113b0e1890b2828f309ed5fd499a07020258f32cf1'
            '7886e127aaf9bf8fc41be21315fc975ff81345c104b0fb0b2be42b96acdfee73')

package() {
    install -d ${pkgdir}/etc/systemd/logind.conf.d/
    install -d ${pkgdir}/usr/lib/systemd/system/
    install -d ${pkgdir}/usr/bin/
    install -d ${pkgdir}/etc/X11/
    install -d ${pkgdir}/usr/share/glib-2.0/schemas/
    install -d ${pkgdir}/etc/profile.d/

    install -m 644 X11.service ${pkgdir}/usr/lib/systemd/system/X11.service
    install -m 644 gnome-shell.service ${pkgdir}/usr/lib/systemd/system/gnome-shell.service
    install -m 755 startgnome ${pkgdir}/usr/bin/startgnome
    install -m 755 powerbutton ${pkgdir}/usr/bin/powerbutton
    install -m 644 10-no-powerbutton.conf ${pkgdir}/etc/systemd/logind.conf.d/10-no-powerbutton.conf
    install -m 644 xorg.conf ${pkgdir}/etc/X11/xorg.conf
    install -m 644 xbindkeysrc ${pkgdir}/etc/X11/xbindkeysrc
    install -m 644 Xwrapper.config ${pkgdir}/etc/X11/Xwrapper.config
    install -m 755 zz-x11.sh ${pkgdir}/etc/profile.d/zz-x11.sh
    install -m 644 90_gnomeshell.gschema.override ${pkgdir}/usr/share/glib-2.0/schemas/90_gnomeshell.gschema.override
}
