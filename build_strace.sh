#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/strace/strace/releases/download/v5.11/strace-5.11.tar.xz
tar -xf strace-5.11.tar.xz
cd strace-5.11
./configure --prefix=${INSTALL_PREFIX}
make
make install
