#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://download.open-mpi.org/release/open-mpi/v4.1/openmpi-4.1.0.tar.gz
tar -xf openmpi-4.1.0.tar.gz
cd openmpi-4.1.0

./configure --prefix=${INSTALL_PREFIX} --enable-mpi-fortran --enable-mpi-cxx
make -j${NUM_BUILD_THREADS}
make install
