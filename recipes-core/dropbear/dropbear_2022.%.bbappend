FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
SRC_URI_append  = " file://dropbear_2019-ssh_log_2022.83.patch"
SRC_URI_append  = " file://ssh_telemetry_2017_uninit_init_add_2022.83.patch"

SRC_URI_append = " file://verbose_2022.83.patch"
SRC_URI_append = " file://revsshipv6_2022.83.patch"
SRC_URI_append = " file://dropbear_2019-Fixed-Race-Conditions-Observed-when-using-port-forwa_2022.83.patch"

CFLAGS_append_broadband = " -DRDK_BROADBAND"
