#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://gmplib.org/download/gmp/gmp-6.2.1.tar.lz
tar -xf gmp-6.2.1.tar.lz
cd gmp-6.2.1

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
