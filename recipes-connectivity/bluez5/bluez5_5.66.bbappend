FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI += " file://CVE-2021-3588_fix.patch \
		file://CVE-2023-27349_bluez5_fix.patch \
		file://CVE-2023-50229_CVE-2023-50230_bluez5_fix.patch \
"
