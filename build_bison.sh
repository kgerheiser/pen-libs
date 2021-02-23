#!/bin/bash

cd $DOWNLOAD_PATH
wget https://ftp.gnu.org/gnu/bison/bison-3.7.tar.gz
tar -xf bison-3.7.tar.gz
cd bison-3.7

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
