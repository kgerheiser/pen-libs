#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/numactl/numactl/releases/download/v2.0.14/numactl-2.0.14.tar.gz
tar -xf numactl-2.0.14.tar.gz
cd numactl-2.0.14

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
