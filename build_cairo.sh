#!/bin/bash

cd $DOWNLOAD_PATH

wget https://www.cairographics.org/releases/cairo-1.16.0.tar.xz
tar -xf cairo-1.16.0.tar.xz

cd cairo-1.16.0
./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
