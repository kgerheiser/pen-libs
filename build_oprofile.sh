#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://phoenixnap.dl.sourceforge.net/project/oprofile/oprofile/oprofile-1.4.0/oprofile-1.4.0.tar.gz
tar -xf oprofile-1.4.0.tar.gz
cd oprofile-1.4.0

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install

