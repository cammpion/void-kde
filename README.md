![Alt text](https://github.com/cammpion/void-kde/blob/main/void.jpg?raw=true)


This is a simple installer helper for installing KDE Plasma with some applications on Void Linux.
otiginal script by https://gitlab.com/asifakonjee/void-linux-kde/

I just quit all that shit I dont use.

Login with your user name and password

> [!NOTE]
>I use AMD GPU, so the drivers are set for amd gpu card.
> I dont use NetworkManager, I use dhcpcd
so, if you need the NetworkManager just add:
>    #NM
   ```sudo ln -s /etc/sv/NetworkManager /var/service/```
   #START
  ``` sudo sv up NetworkManager```

1. Run 
  
```sudo xbps-install -y git micro
sudo git clone https://github.com/cammpion/void-kde.git
cd void-linux-kde
sudo chmod +x install.sh 
sudo ./install.sh ```

