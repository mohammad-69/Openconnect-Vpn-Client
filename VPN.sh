#!/bin/bash
#ReadMe
# Running openconnect requires sudo, presumably because it affects resolution of DNS. 
# So, I added password-less sudo ability for the openconnect command.
# <sudo nano -f /etc/sudoers>
## running openconnect without root password
# <%admin  ALL=(ALL) NOPASSWD: /usr/local/bin/openconnect>


username="your username"
password="your password"
url="https://test.vpnserver.ce"
pidfile="/tmp/openconnect-pid"
cert="server certificate"

case "$1" in
start)
    #bad certs
    echo "$password" | sudo openconnect -b --pid-file=$pidfile --user=$username --servercert=$cert $url  
    ;;
stop)
    cat $pidfile  | sudo xargs kill -2
    ;;
*)
    echo "$0 <start|stop>"
    exit 1
esac
