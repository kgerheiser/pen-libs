#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://invisible-mirror.net/archives/ncurses/ncurses-6.2.tar.gz
tar -xf ncurses-6.2.tar.gz
cd ncurses-6.2

./configure --prefix=${INSTALL_PREFIX} --with-shared
make -j${NUM_BUILD_THREADS}
make install
