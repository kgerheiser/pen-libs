#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://zlib.net/zlib-1.2.11.tar.gz
tar -xf zlib-1.2.11.tar.gz
cd zlib-1.2.11

./configure --prefix=${INSTALL_PREFIX}
make
make install
