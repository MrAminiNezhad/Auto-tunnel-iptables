#!/bin/bash

wget -N --no-check-certificate "https://github.com/teddysun/across/raw/master/bbr.sh"

chmod +x "bbr.sh"

bash "bbr.sh"
echo "please wait"

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root."
    exit 1
fi

update_process=$(apt update 2>&1)
if [[ $? -ne 0 ]]; then
    echo "An error occurred while updating the package list."
    echo "$update_process"
    exit 1
fi

autoremove_process=$(apt autoremove -y 2>&1)
if [[ $? -ne 0 ]]; then
    echo "An error occurred while removing unused packages."
    echo "$autoremove_process"
    exit 1
fi

clean_process=$(apt clean 2>&1)
if [[ $? -ne 0 ]]; then
    echo "An error occurred while cleaning up the package cache."
    echo "$clean_process"
    exit 1
fi

echo "server update successful."

install_iptables=$(apt-get install iptables -y 2>&1)
if [[ $? -ne 0 ]]; then
    echo "An error occurred while installing the iptables package."
    echo "$install_iptables"
    exit 1
fi

read -p "enter iranIP: " iranip
read -p "enter kharejIP: " kharegip

sysctl net.ipv4.ip_forward=1
iptables -t nat -A PREROUTING -p tcp --dport 22 -j DNAT --to-destination "$iranip"
iptables -t nat -A PREROUTING -j DNAT --to-destination "$kharegip"
iptables -t nat -A POSTROUTING -j MASQUERADE

rc_local_commands=(
    "#! /bin/bash"
    "sysctl net.ipv4.ip_forward=1"
    "iptables -t nat -A PREROUTING -p tcp --dport 22 -j DNAT --to-destination $iranip"
    "iptables -t nat -A PREROUTING -j DNAT --to-destination $kharegip"
    "iptables -t nat -A POSTROUTING -j MASQUERADE"
    "exit 0"
)

rc_local_path="/etc/rc.local"
{
    for command in "${rc_local_commands[@]}"; do
        echo "$command"
    done
} >>"$rc_local_path"

echo "added successful $rc_local_path"

chmod +x "$rc_local_path"

echo "added successful $rc_local_path"
echo "permission changed successful $rc_local_path."

echo "End Config enjoy now"
exit 0
