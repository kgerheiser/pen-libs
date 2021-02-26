#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz

tar -xf libevent-2.1.12-stable.tar.gz
cd libevent-2.1.12-stable

mkdir build && cd build
cmake .. -DCMAKE_INSTALL_PREFIX=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
