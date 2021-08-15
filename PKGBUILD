# Maintainer: Nicolas Villafan <pegromdev@gmail.com>
pkgname=aplt
pkgver=1.0.0
pkgrel=1
pkgdesc="Creates installed lists of pkgs with Names & Descriptions for backup proposes."
arch=('x86_64')
url="https://github.com/pegromdev/aptl.git"
license=('MIT')
makedepends=('git')
provides=(aptl)
#changelog= Will be use when needed.
source=("https://github.com/pegromdev/aptl/archive/refs/tags/${pkgver}.tar.gz")
md5sums=(SKIP)
validpgpkeys=()

package() {
	cd "${srcdir}/${pkgname}-${pkgver}"
	make DESTDIR="${pkgdir}" install
	install -Dm644 LICENSE "${pkgdir}/usr/share/licenses/${pkgname}/LICENSE"
	install -Dm644 README.md "${pkgdir}/usr/share/licenses/${pkgname}/README.md"
}
