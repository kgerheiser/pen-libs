#!/bin/bash
set -eux

cd $DOWNLOAD_PATH
wget https://bigsearcher.com/mirrors/gcc/releases/gcc-10.2.0/gcc-10.2.0.tar.gz
tar -xf gcc-10.2.0.tar.gz
cd gcc-10.2.0
./contrib/download_prerequisites

[[ -d build ]] && rm -rf build
mkdir -p build && cd build


../configure --prefix=${INSTALL_PREFIX} \
             --enable-languages=c,c++,fortran \
             --disable-multilib

make -j${NUM_BUILD_THREADS}
make install
