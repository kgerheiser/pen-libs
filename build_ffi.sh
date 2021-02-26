#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget ftp://sourceware.org/pub/libffi/libffi-3.3.tar.gz
tar -xf libffi-3.3.tar.gz
cd libffi-3.3

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
