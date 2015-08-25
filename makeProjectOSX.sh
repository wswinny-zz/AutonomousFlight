mkdir bin
cd bin
cmake –G "Unix Makefiles" -DSSBA_LIBRARY_DIR=../Dependencies/SSBA-3.0/build/ ../src/ -DCMAKE_C_COMPILER=/opt/local/bin/gcc-mp-4.9 -DCMAKE_CXX_COMPILER=/opt/local/bin/g++-mp-4.9
make

