#!/bin/bash
sudo cp icon.jpeg /opt/clash-for-linux-amd64/

sudo echo "[Desktop Entry]" >> /usr/share/applications/clash.desktop
sudo echo "Name=Clash for Linux" >> /usr/share/applications/clash.desktop
sudo echo "Exec=/opt/clash-for-linux-amd64/cfw %f" >> /usr/share/applications/clash.desktop
sudo echo "Icon=/opt/clash-for-linux-amd64/icon.jpeg" >> /usr/share/applications/clash.desktop
sudo echo "Type=Application" >> /usr/share/applications/clash.desktop
sudo echo "StartupNotify=true" >> /usr/share/applications/clash.desktop

sudo chmod +x /usr/share/applications/clash.desktop

if [ -d "/home/$USER/Desktop" ];then
	sudo ln -s /usr/share/applications/clash.desktop /home/$USER/Desktop/Clash-for-Linux.desktop
else
	sudo ln -s /usr/share/applications/clash.desktop /home/$USER/桌面/Clash-for-Linux.desktop
fi
