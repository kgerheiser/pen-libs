#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://ftp.gnu.org/gnu/gdb/gdb-10.1.tar.gz
tar -xf gdb-10.1.tar.gz
cd gdb-10.1.tar.gz

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install

