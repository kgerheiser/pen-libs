#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz
tar -xf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8

make
make install PREFIX=${INSTALL_PREFIX}
