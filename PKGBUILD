pkgname=achmadi-browser
pkgver=0.1
pkgrel=1
pkgdesc="Simple Web-Browser based on WebKitGtk or Blink "
#arch=('x86_64' 'i686')
arch=('any')
url="https://github.com/mekatronik-achmadi/achmadi-browser"
license=('WTFPL')
depends=('pkg-config' 'gtk2' 'webkitgtk2' 'chromium')
makedepends=
options=('!makeflags')
#install=pkg.install
source=("${pkgname}-master.zip")
sha256sums=('SKIP')

build() {
	cd "${pkgname}-master"
	#make build
}

package() {
	cd "${pkgname}-master"
	make prefix=/usr DESTDIR="$pkgdir" install
}
