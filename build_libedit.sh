#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://thrysoee.dk/editline/libedit-20210216-3.1.tar.gz
tar -xf libedit-20210216-3.1.tar.gz
cd libedit-20210216-3.1

export CFLAGS="-I${INSTALL_PREFIX}/include -I${INSTALL_PREFIX}/include/ncurses"

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
