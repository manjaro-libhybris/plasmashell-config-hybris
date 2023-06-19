# Maintainer: Bardia Moshiri <fakeshell@bardia.tech>

pkgname=plasmashell-config-hybris
conflicts=('phosh-config-hybris' 'gnomeshell-config-hybris')
pkgver=0.1
pkgrel=1
pkgdesc="PM configurations for Halium"
arch=('any')
url="https://github.com/manjaro-libhybris/plasmamobile-config-hybris"
depends=('plasma-mobile' 'xf86-video-hwcomposer' 'halium-wrappers' 'xbindkeys')
source=('X11.service'
        'startplasmamobile-x11'
        '10-no-powerbutton.conf'
        'xorg.conf'
        'Xwrapper.config'
        'xbindkeysrc'
        'powerbutton'
        'zz-x11.sh')

sha256sums=('a42750d03548bde920d01b8ab394b2ff8cf4fa76aee6f2370bf9124d2b0e1ea9'
            '6076f0349c0564e801d24f5489366acf360971cf8aa2519ba087804e939b00a8'
            '89049b70e47de31aa196f7246d0b1dfdbbe36dbbcc75a937383c22d8586bbffa'
            'de3719b3068be69d340ecd31981e7cc80e4541b862d26f54ca14c68c797ac507'
            '0d0307fa4081ca69637e7a21f1bd2199dfc2b480c953b0d860950098461f0652'
            '645c9fca3c47212691266ee6cd8a726249a3e47c878cf5f0b9eef71d4219e9cc'
            'e98eb7942169b6c84f8dbf113b0e1890b2828f309ed5fd499a07020258f32cf1'
            '1ccd219706b8910ca14142904ced894e5e763729c72dd688f34ff5801e550d1e')

package() {
    install -d ${pkgdir}/etc/systemd/logind.conf.d/
    install -d ${pkgdir}/usr/lib/systemd/system/
    install -d ${pkgdir}/usr/bin/
    install -d ${pkgdir}/etc/X11/
    install -d ${pkgdir}/etc/profile.d/

    install -m 644 X11.service ${pkgdir}/usr/lib/systemd/system/X11.service
    install -m 755 startplasmamobile-x11 ${pkgdir}/usr/bin/startplasmamobile-x11
    install -m 755 powerbutton ${pkgdir}/usr/bin/powerbutton
    install -m 644 10-no-powerbutton.conf ${pkgdir}/etc/systemd/logind.conf.d/10-no-powerbutton.conf
    install -m 644 xorg.conf ${pkgdir}/etc/X11/xorg.conf
    install -m 644 xbindkeysrc ${pkgdir}/etc/X11/xbindkeysrc
    install -m 644 Xwrapper.config ${pkgdir}/etc/X11/Xwrapper.config
    install -m 755 zz-x11.sh ${pkgdir}/etc/profile.d/zz-x11.sh
}
