#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget http://ftp.rpm.org/popt/releases/popt-1.x/popt-1.18.tar.gz
tar -xf popt-1.18.tar.gz
cd popt-1.18

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
