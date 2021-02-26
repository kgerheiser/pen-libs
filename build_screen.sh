#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget http://ftp.gnu.org/gnu/screen/screen-4.8.0.tar.gz
tar -xf screen-4.8.0.tar.gz
cd screen-4.8.0

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
