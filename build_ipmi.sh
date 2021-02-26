#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://ftp.gnu.org/gnu/freeipmi/freeipmi-1.6.7.tar.gz
tar -xf freeipmi-1.6.7.tar.gz
cd freeipmi-1.6.7

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
