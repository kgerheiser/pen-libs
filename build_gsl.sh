#!/bin/bash

cd $DOWNLOAD_PATH

wget https://ftp.gnu.org/gnu/gsl/gsl-2.6.tar.gz
tar -xf gsl-2.6.tar.gz
cd gsl-2.6

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
