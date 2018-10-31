# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="TCP stream sniffer and connection tracker"
HOMEPAGE="http://tcpick.sourceforge.net"
SRC_URI="mirror://sourceforge/tcpick/${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~arm64"
IUSE=""

DEPEND="net-libs/libpcap"
RDEPEND="${DEPEND}"

src_prepare() {
	eapply "${FILESDIR}/fix-spelling-errors.patch"
	eapply "${FILESDIR}/CVE-2006-0048.patch"
	eapply "${FILESDIR}/fix-double-free-error.patch"
	eapply "${FILESDIR}/fix-infinite-loop-on-powerpc.patch"
	eapply "${FILESDIR}/fix-man-invocation.patch"
	eapply "${FILESDIR}/fix-build-with-gcc5.patch"
	eapply "${FILESDIR}/set-timestamp-pcap-header-structure.patch"

	#Who thought it was a good fucking idea to require this...
	eapply_user
}

# It tries to put the binary in /usr/bin by default
src_configure() {
	econf --bindir=/usr/sbin
}
