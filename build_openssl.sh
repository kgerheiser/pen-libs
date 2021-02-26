#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/openssl/openssl/archive/OpenSSL_1_1_1j.tar.gz
tar -xf OpenSSL_1_1_1j.tar.gz
cd openssl-OpenSSL_1_1_1j

./config --prefix=${INSTALL_PREFIX}
make
make install
