#!/bin/bash
set -eux

cd $DOWNLOAD_PATH
wget https://download.open-mpi.org/release/hwloc/v2.4/hwloc-2.4.1.tar.gz
tar -xf hwloc-2.4.1.tar.gz
cd hwloc-2.4.1

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
