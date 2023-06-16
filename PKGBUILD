# Maintainer: Bardia Moshiri <fakeshell@bardia.tech>

pkgname=gnomeshell-config-hybris
conflicts=('phosh-config-hybris')
pkgver=0.2
pkgrel=1
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
            '29e45e2b9842e8541558bf56048b8e4b5b60d76016773fd2fee4855a8ad90a65'
            '7f9351218df81dc3f4ab1b3a527c21e153c4f5fe8dcc3929b75623820a4f196e'
            '89049b70e47de31aa196f7246d0b1dfdbbe36dbbcc75a937383c22d8586bbffa'
            'de3719b3068be69d340ecd31981e7cc80e4541b862d26f54ca14c68c797ac507'
            '0d0307fa4081ca69637e7a21f1bd2199dfc2b480c953b0d860950098461f0652'
            '04ef812bbc88ffc76421295bd465c077f30dbce82521cd34d6aef6b67e5cd5a9'
            'da19046c4f75affa7da688b675fac911516c958965130385f020a2b1fd231b3c'
            'e98eb7942169b6c84f8dbf113b0e1890b2828f309ed5fd499a07020258f32cf1'
            '04340d2b39f1db8c6446816fb0330ec5c69022ee1d1571bd8dbe2bc7a18de3b5')

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
