This is a simple post installation helper for installing KDE Plasma with some applications on Void Linux.
otiginal script by https://gitlab.com/asifakonjee/void-linux-kde/

I just quit all that shit I dont use.


Network shits:
I dont use NetworkManager, I juse dhcpcd
so, if you need the NetworkManager just add:


   #NM
   sudo ln -s /etc/sv/NetworkManager /var/service/
   #START
   sudo sv up NetworkManager
