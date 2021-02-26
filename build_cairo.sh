#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

# pixman is required by cairo

wget https://www.cairographics.org/releases/pixman-0.40.0.tar.gz
tar -xf pixman-0.40.0.tar.gz
cd pixman-0.40.0
./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install

cd $DOWNLOAD_PATH

wget https://www.cairographics.org/releases/cairo-1.16.0.tar.xz
tar -xf cairo-1.16.0.tar.xz

cd cairo-1.16.0
./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
