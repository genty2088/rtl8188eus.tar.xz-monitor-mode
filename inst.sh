cd '/home/kaliuser/Загрузки/'
echo parol | sudo -S rm -r '/home/kaliuser/Загрузки/rtl8188eus'
tar xf '/home/kaliuser/Загрузки/rtl8188eus.tar.xz'
echo parol | sudo -S modprobe 8188eu
sudo rmmod r8188eu.ko  
cd '/home/kaliuser/Загрузки/rtl8188eus' 
sudo echo 'blacklist r8188eu'| sudo tee -a '/etc/modprobe.d/realtek.conf'
reboot
