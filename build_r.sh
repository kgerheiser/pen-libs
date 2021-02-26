#!/bin/bash

cd $DOWNLOAD_PATH

wget http://ftp.ussg.iu.edu/CRAN/src/base/R-4/R-4.0.4.tar.gz
tar -xf R-4.0.4.tar.gz
cd R-4.0.4

./configure --prefix=${INSTALL_PREFIX} --with-x=no
make -j${NUM_BUILD_THREADS}
make install
