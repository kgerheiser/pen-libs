#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://ftp.pcre.org/pub/pcre/pcre-8.44.tar.gz
tar -xf pcre-8.44.tar.gz
cd pcre-8.44

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
