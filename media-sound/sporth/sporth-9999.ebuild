# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3

DESCRIPTION="Sporth DSP"
EGIT_REPO_URI="https://github.com/mil/sporth.git"
GIT_ECLASS="git-r3"
SRC_URI=""

S="${WORKDIR}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE=""
S="${WORKDIR}/sporth-9999"

RDEPEND="media-sound/soundpipe"

src_compile() {
  default
}

src_install() {
    dobin sporth
    dobin util/ugen_lookup
    #dolib libsporth.a
    dodoc ugen_reference.txt

    sed -i 's#/usr/local/bin#/usr/bin#g' Makefile util/installer.sh
    sed -i 's#/usr/local/lib#/usr/lib#g' Makefile util/installer.sh
    sed -i 's#/usr/local/include#/usr/include#g' Makefile util/installer.sh
    sed -i 's#/usr/local/#/usr/#g' Makefile util/installer.sh 
    #default
}
