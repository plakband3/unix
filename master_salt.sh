#!/bin/bash
#master salt-master
sudo apt-get update
sudo apt-get upgrade #Y
sudo apt-get install -y salt-master
sudo systemctl stop salt-master
sudo sed -i '15s/.*/interface: 127.0.0.1/' /etc/salt/master
sudo reboot now
sudo systemctl start salt-master
#sudo systemctl status salt-master //eigen controle
sudo salt-key -A #MOET GEACCEPTEERD WORDEN Y
