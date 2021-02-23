#!/bin/bash

cd $DOWNLOAD_PATH
wget https://versaweb.dl.sourceforge.net/project/lzmautils/xz-5.2.5.tar.gz
tar -xf xz-5.2.5.tar.gz
cd xz-5.2.5

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
