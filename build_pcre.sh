#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://ftp.pcre.org/pub/pcre/pcre2-10.36.tar.gz
tar -xf pcre2-10.36.tar.gz
cd pcre2-10.36

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
