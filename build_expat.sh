#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/libexpat/libexpat/releases/download/R_2_2_10/expat-2.2.10.tar.gz

tar -xf expat-2.2.10.tar.gz
cd expat-2.2.10
./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
