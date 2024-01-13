KALI LINUX


Description:

Driver for TL-WN722N v3 with monitor mode.

Warning:

I am not responsible for any problem and/or damage to equipment or loss of files. Always back up everything before any changes to your computer

Commands to install:

Step one:

sudo apt update && sudo apt upgrade

sudo reboot

sudo apt install linux-headers-$(uname -r)

sudo apt install bc



cd '/home/kaliuser/Загрузки/'

echo parol | sudo -S rm -r '/home/kaliuser/Downloads/rtl8188eus'

tar xf '/home/kaliuser/Downloads/rtl8188eus.tar.xz'

echo parol | sudo -S modprobe 8188eu

sudo rmmod r8188eu.ko  

cd '/home/kaliuser/Downloads/rtl8188eus' 

sudo echo 'blacklist r8188eu'| sudo tee -a '/etc/modprobe.d/realtek.conf'

reboot


cd '/home/kaliuser/Downloads/rtl8188eus'

echo parol | sudo -S make && sudo make install

reboot



run:

sudo ifconfig wlan0 up

sudo rmmod r8188eu.ko

sudo modprobe 8188eu

sudo iwconfig wlan0 mode auto

sudo ifconfig wlan0 down

sudo iwconfig wlan0 mode monitor

sudo ifconfig wlan0 up



run:

echo parol | sudo -S rfkill unblock 0

echo parol | sudo -S airmon-ng check kill

echo parol | sudo -S systemctl stop NetworkManager.service

echo parol | sudo -S airmon-ng check kill

echo parol | sudo -S macchanger -r wlan0

echo parol | sudo -S airmon-ng start wlan0

echo parol | sudo -S rfkill unblock 0

echo parol | sudo -S modprobe 8188eu

sudo ifconfig wlan0 down

sudo iwconfig wlan0 mode monitor

sudo ifconfig wlan0 up

echo parol | sudo -S rfkill unblock 0

iwconfig

macchanger wlan0
