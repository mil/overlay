# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit git-r3

DESCRIPTION="trace exec() calls system-wide"
HOMEPAGE="https://github.com/leahneukirchen/extrace"
EGIT_REPO_URI="git://github.com/leahneukirchen/extrace"

LICENSE="public-domain"
SLOT="0"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	emake extrace
}

src_install() {
	emake DESTDIR="${D}" PREFIX=/usr install
}

