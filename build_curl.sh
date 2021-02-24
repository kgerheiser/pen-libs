#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://curl.se/download/curl-7.75.0.tar.gz
tar -xf curl-7.75.0.tar.gz
cd curl-7.75.0

./configure --prefix=${INSTALL_PREFIX}
make
make install
