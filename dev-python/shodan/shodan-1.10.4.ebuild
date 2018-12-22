# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

PYTHON_COMPAT=( python2_7 )
inherit distutils-r1 git-r3

DESCRIPTION="The official Python library CLI for accessing Shodan.io search engine for vulnerable boxes"
## intergrates with many tools, metaspliot etc. 'a google' for dose my sh!#$% got vulns?... 
HOMEPAGE="https://github.com/achillean/shodan-python"
EGIT_REPO_URI="https://github.com/achillean/shodan-python.git"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~arm ~arm64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

DEPEND="
dev-python/click-plugins
dev-python/colorama
dev-python/requests
dev-python/xlsxwriter
"
RDEPEND="${DEPEND}"


#S="${WORKDIR}/shodan-${PV}/Shodan"
pkg_postinst() {
	elog "documentation at http://shodan.readthedocs.io/en/latest/"
	elog "https://developer.shodan.io/ to get your api key etc." 
}
