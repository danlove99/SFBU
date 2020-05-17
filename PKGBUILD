pkgname=SFBU
pkgver=0.1
pkgrel=1
pkgdesc="Simple File Backup"
arch=("any")
url="https://github.com/danlove99/sfbu"
license=('GPL')
source=("git://github.com/danlove99/${pkgname}/")
sha1sums=('SKIP')

package() {
    cd "$pkgname"
    mkdir -p $pkgdir/usr/bin
    install -D -m755 ./SFBU.sh $pkgdir/usr/bin/$pkgname
}
