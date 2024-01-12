KALI LINUX


Description:

Driver for TL-WN722N v3 with monitor mode.

Warning:

I am not responsible for any problem and/or damage to equipment or loss of files. Always back up everything before any changes to your computer

Commands to install:

Step one:

cd '/home/kaliuser/Загрузки/'

echo parol | sudo -S rm -r '/home/kaliuser/Загрузки/rtl8188eus'

tar xf '/home/kaliuser/Загрузки/rtl8188eus.tar.xz'

echo parol | sudo -S modprobe 8188eu

sudo rmmod r8188eu.ko  

cd '/home/kaliuser/Загрузки/rtl8188eus' 

sudo echo 'blacklist r8188eu'| sudo tee -a '/etc/modprobe.d/realtek.conf'

reboot

Step two:

cd '/home/kaliuser/Загрузки/rtl8188eus'

echo parol | sudo -S make && sudo make install

reboot
