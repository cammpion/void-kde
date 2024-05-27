## KDE Plasma installer for Void LInux


![Alt text](https://github.com/cammpion/void-kde/blob/main/void.jpg?raw=true)


This is a simple installer helper for installing KDE Plasma with some applications on Void Linux.
otiginal script by https://gitlab.com/asifakonjee/void-linux-kde/

I just quit all that shit I dont use.



> [!NOTE]
>I use AMD GPU, so the drivers are set for amd gpu card.
> I dont use NetworkManager, I use dhcpcd
so, if you need the NetworkManager just add:
>    #NM
   ```sudo ln -s /etc/sv/NetworkManager /var/service/```
   #START
  ``` sudo sv up NetworkManager```
> If you have any questions, go to the VL documentation
> https://docs.voidlinux.org/config/network/index.html
> https://docs.voidlinux.org/config/services/index.html

---
>I MAKE MUSIC BTW 
- https://linktr.ee/saintbrunel

---


1. Login with your user name and password then RUN:
  
```
sudo xbps-install -y git micro
sudo git clone https://github.com/cammpion/void-kde.git
cd void-linux-kde
sudo chmod +x install.sh 
sudo ./install.sh
```

## After
After completion of the script, run the servises

- sudo sv up dbus
- sudo sv up sddm
- sudo sv up dhcpcd

Then just `'sudo reboot'`  
