#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/mej/nhc/releases/download/1.4.2/lbnl-nhc-1.4.2.tar.xz
tar -xf lbnl-nhc-1.4.2.tar.xz
cd lbnl-nhc-1.4.2

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
