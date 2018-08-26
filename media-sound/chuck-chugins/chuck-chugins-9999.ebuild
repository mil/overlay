# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit git-r3

DESCRIPTION="Chuck Chugins"
EGIT_REPO_URI="https://github.com/ccrma/chugins.git"
GIT_ECLASS="git-r3"
SRC_URI=""

S="${WORKDIR}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
REQUIRED_USE=""
S="${WORKDIR}/chuck-chugins-9999"

RDEPEND="app-eselect/eselect-chuck
  media-sound/chuck"

src_compile() {
  default
	emake linux
}

src_install() {
	dodoc LICENSE README.md
	into lib/chuck-chugins
	dolib */*.chug
}

