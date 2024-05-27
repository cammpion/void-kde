![Alt text](https://github.com/cammpion/void-kde/blob/main/void.jpg?raw=true)


This is a simple installer helper for installing KDE Plasma with some applications on Void Linux.
otiginal script by https://gitlab.com/asifakonjee/void-linux-kde/

I just quit all that shit I dont use.

Login with your user name and password
Run  
1```sudo xbps-install -y git micro ```
 2```sudo git clone https://github.com/cammpion/void-kde.git ```

3```cd void-linux-kde ```
4 ```sudo chmod +x install.sh ```
 5```sudo ./install.sh ```



- **GPU shits:**
I use AMD GPU, so the drivers are set for amd gpu card.

- **Network shits:**
I dont use NetworkManager, I use dhcpcd
so, if you need the NetworkManager just add:


   #NM
   ```sudo ln -s /etc/sv/NetworkManager /var/service/```
   #START
  ``` sudo sv up NetworkManager```

  
- **I MAKE MUSIC BTW**
https://linktr.ee/saintbrunel
