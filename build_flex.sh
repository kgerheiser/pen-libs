#!/bin/bash

cd $DOWNLOAD_PATH

wget https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz
tar -xf flex-2.6.4.tar.gz
cd flex-2.6.4

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
