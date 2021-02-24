#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.9.2.tar.gz
tar -xf libgcrypt-1.9.2.tar.gz
cd cd libgcrypt-1.9.2

./configure --prefix=${INSTALL_PREFIX}
make
make install
