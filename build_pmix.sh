#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/openpmix/openpmix/releases/download/v3.2.3/pmix-3.2.3.tar.gz
tar -xf pmix-3.2.3.tar.gz
cd pmix-3.2.3

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
