#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget ftp://ftp.cwru.edu/pub/bash/readline-8.1.tar.gz
tar -xf readline-8.1.tar.gz
cd readline-8.1

./configure --prefix=${INSTALL_PREFIX}
make
make install
