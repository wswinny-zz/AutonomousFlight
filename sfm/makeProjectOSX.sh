mkdir bin
cd bin
cmake –G "Unix Makefiles" -DCMAKE_C_COMPILER=/opt/local/bin/gcc-mp-4.9 -DCMAKE_CXX_COMPILER=/opt/local/bin/g++-mp-4.9 -DSSBA_LIBRARY_DIR=../Dependencies/SSBA-3.0/build/ ../src/
sudo cp -R ../Dependencies/SSBA-3.0/Math /usr/include/
sudo cp -R ../Dependencies/SSBA-3.0/Base /usr/include/
sudo cp -R ../Dependencies/SSBA-3.0/Geometry /usr/include/
make

