#!/bin/sh

#install repos and depends
sudo add-apt-repository ppa:v-launchpad-jochen-sprickerhof-de/pcl
sudo apt-get update
sudo apt-get install g++ cmake libpcl-all -y --force-yes

#build OpenCV
cd Dependencies/opencv-2.4/
mkdir build
cd build
cmake -G "Unix Makefiles" -D WITH_CUDA=ON ..

#check if OpenCV found cuda
read -r -p "Would you like to continue with these options (y)es (n)o (r)egenerate: " key

if [ "$key" = 'y' ] || [ "$key" = 'Y' ] ; then
    make -j8
	sudo make install
	cd ../../SSBA-3.0/
	mkdir build
	cd build
	cmake -SSBA_LIBRARY_DIR=../../SSBA-3.0/build -G "Unix Makefiles" ..
	make
elif [ "$key" = 'r' ] || [ "$key" = 'R' ] ; then
	running=true
    while [ "$running" = true ] ; do
		cmake -G "Unix Makefiles" -D WITH_CUDA=ON ..

		#check if OpenCV found cuda
		read -r -p "Would you like to continue with these options (y)es (n)o (r)egenerate: " key

		if [ "$key" = 'y' ] || [ "$key" = 'Y' ] ; then
			make -j8
			sudo make install
			cd ../../SSBA-3.0/
			mkdir build
			cd build
			cmake -SSBA_LIBRARY_DIR=../../SSBA-3.0/build -G "Unix Makefiles" ..
			make
			running=false
		elif [ "$key" = 'n' ] || [ "$key" = 'N' ] ; then
			running=false
		fi
	done
fi

