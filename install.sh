#!/bin/sh
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install g++ cmake libpcl-all -y --force-yes
cd Dependencies/opencv-2.4/
mkdir build
cd build
cmake -G "Unix Makefiles" ..
make -j8
sudo make install
cd ../../SSBA-3.0/
mkdir build
cd build
cmake -SSBA_LIBRARY_DIR=../../SSBA-3.0/build -G "Unix Makefiles" ..
make
