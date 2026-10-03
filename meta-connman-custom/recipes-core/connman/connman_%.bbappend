
FILESEXTRAPATH:prepend := "${THISDIR}/files:"

SRC_URI:append := " file://settings"
SRC_URI:append := " file://wifi_b827eb488475_5a7978656c5f30344531_managed_psk/settings"

do_instal:append() {

    install -d ${D}/var/lib/connman
    install -m 0644 ${WORKDIR}/settings ${D}/var/lib/connman/settings

    install -d ${D}/var/lib/connman/wifi_b827eb488475_5a7978656c5f30344531_managed_psk
    install -m 0600 ${WORKDIR}/wifi_b827eb488475_5a7978656c5f30344531_managed_psk/settings ${D}/var/lib/connman/wifi_b827eb488475_5a7978656c5f30344531_managed_psk/settings
}