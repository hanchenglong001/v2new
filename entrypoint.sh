#!/bin/sh

sed -i "s#UUID#$UUID#g;s#VMESS_WSPATH#$VMESS_WSPATH#g" /etc/v2ray/config.json
