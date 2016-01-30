#!/bin/sh
cd Dependencies/opencv-2.4/
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_C_COMPILER=/opt/local/bin/gcc-mp-4.9 -DCMAKE_CXX_COMPILER=/opt/local/bin/g++-mp-4.9 ..
make -j8
sudo make install
cd ../../SSBA-3.0/
mkdir build
cd build
cmake -SSBA_LIBRARY_DIR=../../SSBA-3.0/build -G "Unix Makefiles" -DCMAKE_C_COMPILER=/opt/local/bin/gcc-mp-4.9 -DCMAKE_CXX_COMPILER=/opt/local/bin/g++-mp-4.9 ..
make
