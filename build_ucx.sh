#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/openucx/ucx/releases/download/v1.9.0/ucx-1.9.0.tar.gz
tar -xf ucx-1.9.0.tar.gz
cd ucx-1.9.0

./configure --prefix=${INSTALL_PREFIX} --disable-numa
make -j${NUM_BUILD_THREADS}
make install
