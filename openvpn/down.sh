#!/bin/sh
set -e
rm -f /var/tmp/vpn_ip
exec sv down privoxy transmission transmission-periodicupdates
