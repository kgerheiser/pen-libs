#!/bin/bash
set -eux

cd $DOWNLOAD_PATH
wget https://github.com/glennrp/libpng/archive/v1.6.35.tar.gz
tar -xf v1.6.35.tar.gz
cd libpng-1.6.35
mkdir build && cd build

cmake .. -DCMAKE_INSTALL_PREFIX=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
