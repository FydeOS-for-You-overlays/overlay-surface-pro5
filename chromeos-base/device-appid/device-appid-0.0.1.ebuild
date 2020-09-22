# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

inherit appid2
DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

S="${WORKDIR}"

src_install() {
      doappid "{CF167F7B-C4AD-42F1-82F4-0598D0785ABE}" "CHROMEBOOK" "{101DD68B-D481-41F2-A902-17BB55BBB0B2}"
}
