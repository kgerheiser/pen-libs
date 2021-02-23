#!/bin/bash

cd $DOWNLOAD_PATH

wget https://doxygen.nl/files/doxygen-1.9.1.src.tar.gz
tar -xf doxygen-1.9.1.src.tar.gz
cd doxygen-1.9.1

mkdir build
cd build
cmake .. -DCMAKE_INSTALL_PREFIX=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install

