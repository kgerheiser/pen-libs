#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/stevengj/nlopt/archive/v2.6.2.tar.gz
tar -xf v2.6.2.tar.gz
cd nlopt-2.6.2

mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
