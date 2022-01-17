# Copyright (c) 2018 The Fyde OS Authors. All rights reserved.
# Distributed under the terms of the BSD

EAPI="5"

DESCRIPTION="empty project"
HOMEPAGE="http://fydeos.com"

LICENSE="BSD-Google"
SLOT="0"
KEYWORDS="*"
IUSE=""

RDEPEND="
    chromeos-base/chromeos-accelerometer-init
    chromeos-base/detachable-emulator
"

DEPEND="${RDEPEND}"

S=${WORKDIR}

src_install() {
  insinto /etc/init
  doins ${FILESDIR}/accelmeter/cros-ec-accel.conf
  doins ${FILESDIR}/tablet-mode/init-tablet-mode.conf

  insinto /etc/modprobe.d
  doins ${FILESDIR}/hardware-fix/mwifiex.conf

  insinto /lib/udev/rules.d
  doins ${FILESDIR}/accelmeter/99-cros-ec-accel.rules
  doins ${FILESDIR}/tablet-mode/99-usb-keyboard-detect.rules
  
  insinto /usr/share/power_manager/board_specific
  doins ${FILESDIR}/powerd/*
}
