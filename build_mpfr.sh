#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://www.mpfr.org/mpfr-current/mpfr-4.1.0.tar.gz
tar -xf mpfr-4.1.0.tar.gz
cd mpfr-4.1.0

./configure --with-gmp=${INSTALL_PREFIX} --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
