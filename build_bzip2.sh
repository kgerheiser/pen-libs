#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz
tar -xf bzip2-1.0.8.tar.gz
cd bzip2-1.0.8

# bzip2 builds a static lib and can cause problems when linking to shared libraries
# so add -fPIC
export CFLAGS="-fPIC"
make
make install PREFIX=${INSTALL_PREFIX}
