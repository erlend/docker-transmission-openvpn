#!/bin/sh
set -e

current_group_id=`cat /etc/group | egrep ^transmission | cut -d':' -f3`
current_user_id=`cat /etc/passwd | egrep ^transmission | cut -d':' -f3`

if [ ! $current_group_id = $TRANSMISSION_GROUP_ID ]; then
  [ $current_group_id ] && delgroup transmission
  addgroup -g $TRANSMISSION_GROUP_ID transmission
fi

if [ ! $current_user_id = $TRANSMISSION_USER_ID ]; then
  [ $current_user_id ] && deluser transmission
  adduser -G transmission -D -u $TRANSMISSION_USER_ID transmission
fi
