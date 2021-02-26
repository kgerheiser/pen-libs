#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget http://mvapich.cse.ohio-state.edu/download/mvapich/mv2/mvapich2-2.3.5.tar.gz
tar -xf mvapich2-2.3.5.tar.gz
cd mvapich2-2.3.5
./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
