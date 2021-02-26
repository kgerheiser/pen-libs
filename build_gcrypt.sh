#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://www.gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.41.tar.bz2
tar -xf libgpg-error-1.41.tar.bz2
cd libgpg-error-1.41
./configure --prefix=${INSTALL_PREFIX}
make
make install

cd $DOWNLOAD_PATH

wget https://gnupg.org/ftp/gcrypt/libgcrypt/libgcrypt-1.9.2.tar.gz
tar -xf libgcrypt-1.9.2.tar.gz
cd libgcrypt-1.9.2

./configure --prefix=${INSTALL_PREFIX}
make
make install
