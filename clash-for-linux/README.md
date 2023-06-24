# Clash for Linux

## Download

Clash for Windows Repo: <[Releases · Fndroid/clash_for_windows_pkg](https://link.zhihu.com/?target=https%3A//github.com/Fndroid/clash_for_windows_pkg/releases)>\

```
Huawei Kylin 	=>	amd64-linux.tar.gz
Windows 		=>	arm64.exe
Ubuntu 64bit	=>	x64-linux.tar.gz
...
```

## Unzip

```
sudo tar -zxvf Clash...
sudo mv ... clash-for-linux-amd64
sudo mv clash-for-linux-amd64 /opt/
```

## Proxy Script

```shell
# setProxy.sh
sudo echo "###### clash for arm64 linux #####" >> ~/.bashrc
sudo echo "# switch" >> ~/.bashrc

sudo echo alias off=\'gsettings set org.gnome.system.proxy mode "auto"\' >> ~/.bashrc

sudo echo alias on=\'gsettings set org.gnome.system.proxy mode "manual"\' >> ~/.bashrc

source ~/.bashrc
```

## Desktop Icon

```shell
# setDesktopIcon.sh
sudo mv icon.jpeg /opt/clash-for-linux-amd64/

sudo echo "[Desktop Entry]" >> /usr/share/applications/clash.desktop
sudo echo "Name=Clash for Linux" >> /usr/share/applications/clash.desktop
sudo echo "Exec=/opt/clash-for-linux-amd64/cfw %f" >> /usr/share/applications/clash.desktop
sudo echo "Icon=/opt/clash-for-linux-amd64/icon.jpeg" >> /usr/share/applications/clash.desktop
sudo echo "Type=Application" >> /usr/share/applications/clash.desktop
sudo echo "StartupNotify=true" >> /usr/share/applications/clash.desktop

sudo chmod +x /usr/share/applications/clash.desktop
sudo ln -s /usr/share/applications/clash.desktop /home/$USER/桌面/Clash-for-Linux.desktop
```

