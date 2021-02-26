#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://versaweb.dl.sourceforge.net/project/motif/Motif%202.3.8%20Source%20Code/motif-2.3.8.tar.gz
tar -xf motif-2.3.8.tar.gz
cd motif-2.3.8

./configure --prefix=${INSTALL_PREFIX}
make
make install

