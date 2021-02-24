#!/bin/bash
set -eux

version="2.36"

cd $DOWNLOAD_PATH

wget https://ftp.gnu.org/gnu/binutils/binutils-$version.tar.gz
tar -xf binutils-$version.tar.gz
cd binutils-$version
./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
