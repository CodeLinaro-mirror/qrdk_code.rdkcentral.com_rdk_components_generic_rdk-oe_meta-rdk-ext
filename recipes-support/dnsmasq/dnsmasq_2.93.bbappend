FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}-${PV}:"

SRC_URI_remove = " file://addtruncatedmsgcaching.patch \
                   file://130-fingerprint-dhcp-lease-file.patch \
                 "
SRC_URI += "file://client_notify_v2.93.patch \
             file://130-fingerprint-dhcp-lease-file-V2.93.patch"
SRC_URI_append_broadband = " file://RDKCENTRAL_XDNS_Enable_IPV6.patch \
                             file://RDKCENTRAL_XDNS_core_complete_V2.93.patch \
                           "

SRC_URI_append_broadband += " ${@bb.utils.contains_any('DISTRO_FEATURES', 'bci OneStack', 'file://RDKCENTRAL_XDNS_bci_V2.93.patch', '', d)}"
SRC_URI_append_broadband += " ${@bb.utils.contains('DISTRO_FEATURES', 'device_gateway_association', 'file://ManageableDevice_V2.93.patch', '', d)}"
SRC_URI_append_broadband += " ${@bb.utils.contains('DISTRO_FEATURES', 'vendor_class_id_feature', 'file://vendor_class_id_V2.93.patch', '', d)}"

do_install_append() {
    sed -i -- 's/listen-address=127.0.0.1/#listen-address=127.0.0.1/g' ${D}${sysconfdir}/dnsmasq.conf
    sed -i -- 's/bind/#Remove this statement/g' ${D}${sysconfdir}/dnsmasq.conf
}
