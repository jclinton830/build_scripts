#!/bin/bash

#This script downloadsd, builds and installs robosense lidar driver Ubuntu 22.04 ros2 humble

sudo apt-get install libboost-dev libpcap-dev libpcl-dev libeigen3-dev git
mkdir -p ~/robosense_repos && cd ~/robosense_repos
git clone https://github.com/RoboSense-LiDAR/rs_driver.git
mkdir -p rs_driver/build && cd rs_driver/build
cmake ..
make -j4
sudo make install