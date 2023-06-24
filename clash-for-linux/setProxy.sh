#!/bin/bash
sudo echo "###### clash for arm64 linux #####" >> ~/.bashrc
sudo echo "# switch" >> ~/.bashrc

sudo echo alias off=\'gsettings set org.gnome.system.proxy mode "auto"\' >> ~/.bashrc

sudo echo alias on=\'gsettings set org.gnome.system.proxy mode "manual"\' >> ~/.bashrc

source ~/.bashrc
