#!/bin/bash
# A simple script to get a vanilla KDE Plasma Desktop on Void Linux
# Version 1.0.1, updated 14-12-2022
clear

bypass() {
  sudo -v
  while true;
  do
    sudo -n true
    sleep 45
    kill -0 "$$" || exit
  done 2>/dev/null &
}
echo "Welcome to a simple script to get a vanilla KDE Plasma Desktop on Void Linux."
read -p "Would you like to continue (y/n)? " installChoice

case "$installChoice" in
  # User wants to continue installation
  y|Y|yes|Yes|YES )

    read -p "Would you like to perform a system upgrade before continuing (y/n)? " upgradeChoice
    case "$upgradeChoice" in
      y/Y/yes/Yes/YES )
        echo "Upgrading system..."
        sudo xbps-install -Su
      ;;
      n/N/no/No/NO )
        echo "Skipping system upgrade."
      ;;
    esac

    echo "Installing multilib and non-free repos..."
      sudo xbps-install -y void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree

      echo "Installing graphics drivers..."
        sudo xbps-install -y sudo xbps-install mesa-dri vulkan-loader mesa-vulkan-radeon amdvlk mesa-vaapi mesa-vdpau
    
      echo "Installing fonts..."
        sudo xbps-install -y terminus-font
      echo "Installing audio packages..."
        sudo xbps-install -y pulseaudio alsa-utils pipewire
      echo "Installing desktop environment..."
        sudo xbps-install -y xorg kde5 kde5-baseapps xtools sddm

      #echo "Installing additional applications..."
        #do xbps-install -y alacritty
        # Edit the following list of additional applications or replace them with your own preferences

        # Audio and video player
        echo "Installing VLC..."
        sudo xbps-install -y vlc mpv

        
    echo "Configuring system..."
      echo "Setting up services..."
        sudo sed -i "s/--noclear/--noclear\ --skip-login\ --login-options=$USER/g" /etc/sv/agetty-tty1/conf
    sudo rm -f /var/service/agetty-tty{3,4,5,6}
    sudo ln -s /etc/sv/dbus /var/service/
    sudo ln -s /etc/sv/sddm /var/service/


    echo "Starting services..."
    sudo sv up dbus
    sudo sv up sddm
    sudo sv up dhcpcd
    
    echo "All done! Please reboot for all changes to take effect."
  ;;

  # User does not want to continue installation.
  n|N|no|No|NO )
    echo "Thanks for trying, Goodbye!";;
esac
