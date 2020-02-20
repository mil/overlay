# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit toolchain-funcs

MY_PN=Soundpipe
MY_P=${MY_PN}-${PV}

DESCRIPTION="a lightweight music DSP library"
HOMEPAGE="https://paulbatchelor.github.io/proj/soundpipe.html https://github.com/PaulBatchelor/Soundpipe"
SRC_URI="https://github.com/PaulBatchelor/${MY_PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND="media-libs/libsndfile"
DEPEND="${RDEPEND}"

S=${WORKDIR}/${MY_P}

src_prepare() {
	tc-export CC
	default
}

src_install() {
	emake PREFIX="${ED}"/usr install
}
