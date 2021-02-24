#!/bin/bash
set -eux

cd $DOWNLOAD_PATH
wget https://github.com/Kitware/CMake/releases/download/v3.20.0-rc1/cmake-3.20.0-rc1.tar.gz
tar -xf cmake-3.20.0-rc1.tar.gz

cd cmake-3.20.0-rc1
./bootstrap --prefix=${INSTALL_PREFIX} -- -DCMAKE_USE_OPENSSL=OFF
make -j${NUM_BUILD_THREADS}
make install
