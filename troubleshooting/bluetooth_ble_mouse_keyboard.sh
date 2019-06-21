# ubuntu 16.04
sudo apt-get install bluetooth bluez bluez-tools rfkill
sudo service bluetooth restart
sudo nano /etc/bluetooth/main.conf
# AutoEnable=true

sudo reboot
# then you will see a new icon on the left-top cornor
# use it or use
sudo bluetoothctl

# set natural scroll
# https://askubuntu.com/questions/91426/reverse-two-finger-scroll-direction-natural-scrolling
xinput list
xinput list-props <number_of_mouse>
xinput set-prop <number_of_moust> <number_of_Scrolling_Distance_prop> -1 -1 -1
# but this won't last after reboot
sudo vi /usr/share/X11/xorg.conf.d/20-natural-scrolling.conf
# Section "InputClass"
#         Identifier "Natural Scrolling"
#         MatchIsPointer "on"
#         MatchDevicePath "/dev/input/event*"
#         Option "VertScrollDelta" "-1"
#         Option "HorizScrollDelta" "-1"
#         Option "DialDelta" "-1"
# EndSection