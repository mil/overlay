# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$
EAPI=6

DESCRIPTION="A simple tool which print the current working directory of the currently focused window"
HOMEPAGE="https://github.com/schischi/xcwd"
SRC_URI="https://github.com/schischi/xcwd/archive/f2333596609ff57ff9774882a08a433fc61b44da.tar.gz"
LICENSE="BSD"
SLOT="0"
KEYWORDS="amd64"
S="${WORKDIR}/xcwd-f2333596609ff57ff9774882a08a433fc61b44da"
PATCHES="${FILESDIR}/${P}-fix-makefile.patch"