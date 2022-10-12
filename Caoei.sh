#!/bin/bash
figlet Welcome!
echo --------------------------------------------------------------
echo 	 Hello $USER , Welcome to Caoei the time is $TIME
echo --------------------------------------------------------------
echo "Enter your password you use for sudo"
sudo echo "Entered Root Successfully"
sleep 2
clear
echo "Downloading Required files and configuring."
echo 'deb https://assets.checkra.in/debian /' | sudo tee /etc/apt/sources.list.d/checkra1n.list
sudo apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
sudo apt update
sudo apt install curl libusbmuxd-tools -y
curl https://assets.checkra.in/downloads/linux/cli/x86_64/dac9968939ea6e6bfbdedeb41d7e2579c4711dc2c5083f91dced66ca397dc51d/checkra1n -o checkra1n
chmod +x "checkra1n"
echo "When done with checkra1n press "exit"."
sleep 3
echo "Here we go!"
sleep 1
sudo ./checkra1n -n -v -V
sleep 2
echo "NERF THIS!!!"
while true; do
    read -p "Do you wish to install odysseyra1n, Yes or no?" yn
    case $yn in
        [Yy]* )/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/coolstar/Odyssey-bootstrap/master/procursus-deploy-linux-macos.sh)" && echo "Thanks for using caoei, and have a nice day!" && exit ;;
        [Nn]* ) echo "Have a nice day" && exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
exit
echo " Please enter your sudo password in 3 seconds"
sleep 3
sudo -i
