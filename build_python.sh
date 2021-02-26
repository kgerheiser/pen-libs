#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

export CFLAGS="-I${INSTALL_PREFIX}/include -I${INSTALL_PREFIX}/include/ncurses"
export LDFLAGS="-L${INSTALL_PREFIX}/lib -L${INSTALL_PREFIX}/lib64 "

wget https://www.python.org/ftp/python/3.9.2/Python-3.9.2.tgz
tar -xf Python-3.9.2.tgz
cd Python-3.9.2

./configure --prefix=${INSTALL_PREFIX} \
            --with-system-expat --with-system-ffi \
            --with-ensurepip=yes
make
make install

ln ${INSTALL_PREFIX}/bin/python3 ${INSTALL_PREFIX}/bin/python
