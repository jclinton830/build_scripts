#!/bin/bash

#This script downloadsd, builds and installs realsense driver for Ubuntu 22.04 ros2 humble

sudo apt install git libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev libusb-1.0-0-dev
mkdir -p ~/realsense_repos && cd ~/realsense_repos
git clone https://github.com/IntelRealSense/librealsense -b v2.50.0
mkdir -p librealsense/build && cd librealsense/build
cmake .. -DFORCE_RSUSB_BACKEND=true -DCMAKE_BUILD_TYPE=release
make -j4
sudo make install