#!/bin/bash

cd $DOWNLOAD_PATH

wget ftp://xmlsoft.org/libxml2/libxml2-2.9.9.tar.gz
tar -xf libxml2-2.9.9.tar.gz
cd libxml2-2.9.9

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
