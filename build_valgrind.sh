#!/bin/bash

cd $DOWNLOAD_PATH

wget https://sourceware.org/pub/valgrind/valgrind-3.16.1.tar.bz2
tar -xf valgrind-3.16.1.tar.bz2
cd valgrind-3.16.1

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
