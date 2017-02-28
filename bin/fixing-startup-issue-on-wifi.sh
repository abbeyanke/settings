sudo ifconfig enp0s31f6 192.168.10.2/27
sudo ifconfig wlp4s0:0 192.168.10.39/27
systemctl.sh
sudo systemctl restart smbd
sudo swapon /root/.SWAPFILE
sudo systemctl restart NetworkManager
sleep 10
sudo ifconfig enp0s31f6 192.168.10.2/27
sudo ifconfig wlp4s0:0 192.168.10.39/27
sudo supervisorctl restart fess
