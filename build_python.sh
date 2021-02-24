#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://www.python.org/ftp/python/3.9.2/Python-3.9.2.tgz
tar -xf Python-3.9.2.tgz
cd Python-3.9.2

./configure --prefix=${INSTALL_PREFIX}
make
make install
