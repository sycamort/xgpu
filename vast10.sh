#!/bin/bash

# Update package list and install necessary packages

sudo apt update
sleep 5
echo "---------------------------"

sudo apt -y install ocl-icd-opencl-dev
sleep 5
echo "---------------------------"

sudo apt -y install nano
sleep 5
echo "---------------------------"

sudo apt -y install htop
sleep 5
echo "---------------------------"

# sudo apt -y install nvtop
sudo apt -y install cmake
sleep 5
echo "---------------------------"

sudo apt -y install python3-pip
sleep 5
echo "---------------------------"

# Clone the repository and build the project
git clone https://github.com/shanhaicoder/XENGPUMiner.git
sleep 5
echo "---------------------------"

cd XENGPUMiner
sleep 5
echo "---------------------------"

chmod +x build.sh
sleep 5
echo "---------------------------"

./build.sh
sleep 5
echo "---------------------------"

# Update the configuration file
sed -i 's/account = 0xA2Ba8d6d66E42c3327C21AE5868E4986A38d88F6/account = 0xa3cEfF5805A3Ddc9b52913CF86A5dfAf33d0737d/g' config.conf
sleep 5
echo "---------------------------"

# Install Python requirements
sudo pip install -U -r requirements.txt
sleep 5
echo "---------------------------"

sudo nohup python3 miner.py --gpu=true > miner.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d0 > xengpuminer-0.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d1 > xengpuminer-1.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d2 > xengpuminer-2.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d3 > xengpuminer-3.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d4 > xengpuminer-4.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d5 > xengpuminer-5.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d6 > xengpuminer-6.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d7 > xengpuminer-7.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d9 > xengpuminer-8.log 2>&1 &
sleep 5
echo "---------------------------"

sudo nohup ./xengpuminer -d9 > xengpuminer-8.log 2>&1 &
sleep 5
echo "---------------------------"
