#!/bin/bash

function eth_available() {
    connected=`cat /sys/class/net/enp0s31f6/carrier`
    if [ "$connected"x = "1"x ]; then
        sudo ifconfig enp0s31f6 192.168.10.5/27
        #sudo ifconfig enp0s31f6:0 192.168.10.2/27
    fi
}

function wifi_available() {
    connected=`cat /sys/class/net/wlp4s0/carrier`
    if [ "$connected"x = "1"x ]; then
	sudo ifconfig wlp4s0:0 192.168.10.39/27
    fi
}

eth_available
wifi_available
systemctl.sh
sudo systemctl restart smbd
sudo swapon /root/.SWAPFILE
sudo systemctl restart NetworkManager
sleep 10
eth_available
wifi_available
sudo supervisorctl restart fess
systemctl.sh
