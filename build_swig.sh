#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://pilotfiber.dl.sourceforge.net/project/swig/swig/swig-4.0.2/swig-4.0.2.tar.gz
tar -xf swig-4.0.2.tar.gz
cd swig-4.0.2

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
