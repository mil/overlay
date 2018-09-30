# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
EGIT_CLONE_TYPE=shallow
inherit git-r3

IUSE=""

SLOT="0"
LICENSE="GPL-2"
KEYWORDS="~x86 ~amd64"

DESCRIPTION="Faust AUdio STreams is a functional programming language for realtime audio plugins and applications development. The Faust compiler translates signal processing specifications into C++ code."
HOMEPAGE="http://faudiostream.sourceforge.net"
EGIT_REPO_URI="https://github.com/grame-cncm/faust.git"


RDEPEND="sys-devel/bison
		 sys-devel/flex"
DEPEND="sys-apps/sed =sys-devel/llvm-6.0*"

S=${WORKDIR}/${P}

src_compile() {
	sed -i "s\/usr/local\ ${D}/usr\ " Makefile
	emake all || die "parallel make failed"
}

src_install() {
	dolib.a ${S}/build/lib/libfaust.a ${S}/build/lib/libOSCFaust.a
	make install
}
