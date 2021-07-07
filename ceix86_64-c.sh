echo "Welcome, made with <3 from ataro, now installing cURL!"
sudo apt install curl wget -y
echo "Downloading Checkra1n"\
sudo mkdir cei_intel_assets
cd cei_intel_assets
curl https://assets.checkra.in/downloads/linux/cli/x86_64/dac9968939ea6e6bfbdedeb41d7e2579c4711dc2c5083f91dced66ca397dc51d/checkra1n --output checkra1n
echo "Installing usb tools!"
sudo apt install libusbmuxd-tools -y
echo "Setting checkra1n's flags"
chmod +x checkra1n
echo "here we go!, put your device into DFU mode"
sudo ./checkra1n -c
echo "Removing temp files"
sudo rm -rf /cei_intel_assets
exit


