#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget ftp://gcc.gnu.org/pub/gcc/infrastructure/mpc-0.8.1.tar.gz
tar zxvf mpc-0.8.1.tar.gz
cd mpc-0.8.1

./configure --prefix=${INSTALL_PREFIX} \
            --with-gmp=${INSTALL_PREFIX} --with-mpfr=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install



