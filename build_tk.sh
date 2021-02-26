#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://pilotfiber.dl.sourceforge.net/project/tcl/Tcl/8.6.11/tcl8.6.11-src.tar.gz
tar -xf tcl8.6.11-src.tar.gz
cd tcl8.6.11/unix


./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install

cd $DOWNLOAD_PATH
wget https://versaweb.dl.sourceforge.net/project/tcl/Tcl/8.6.11/tk8.6.11.1-src.tar.gz
tar -xf tk8.6.11.1-src.tar.gz
cd tk8.6.11/unix

./configure --prefix=${INSTALL_PREFIX} --with-tcl=${INSTALL_PREFIX}/lib
make -j${NUM_BUILD_THREADS}
make install

