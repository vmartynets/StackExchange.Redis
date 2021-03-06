#!/bin/sh

if [ "$#" -ne 0 ]; then
    exec "$@"
else
    mkdir -p /var/log/supervisor
    mkdir Temp/

    supervisord -c /etc/supervisord.conf
    sleep 3

    tail -f /var/log/supervisor/*.log
fi