#!/bin/sh
# This script will be called with tun/tap device name as parameter 1, and local IP as parameter 4
# See https://openvpn.net/index.php/open-source/documentation/manuals/65-openvpn-20x-manpage.html (--up cmd)
echo $4 > /var/tmp/vpn_ip

[ "$OPENVPN_PROVIDER" = "PIA" ] && sv up transmission-periodicupdates
sv up transmission privoxy
