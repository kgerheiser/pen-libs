#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget http://www.fftw.org/fftw-3.3.9.tar.gz
tar -xf fftw-3.3.9.tar.gz
cd fftw-3.3.9

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
