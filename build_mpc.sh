#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://gcc.gnu.org/pub/gcc/infrastructure/mpc-1.0.3.tar.gz
tar zxvf mpc-1.0.3.tar.gz
cd mpc-1.0.3

./configure --prefix=${INSTALL_PREFIX} \
            --with-gmp=${INSTALL_PREFIX} --with-mpfr=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install



