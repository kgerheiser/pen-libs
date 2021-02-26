#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://iweb.dl.sourceforge.net/project/gnuplot/gnuplot/5.4.1/gnuplot-5.4.1.tar.gz
tar -xf gnuplot-5.4.1.tar.gz

cd gnuplot-5.4.1
./configure --prefix=${INSTALL_PREFIX} --with-readline=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
