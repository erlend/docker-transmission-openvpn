#!/bin/sh
set -e
rm -f /var/tmp/vpn_ip
exec sv down transmission transmission-periodicupdates
