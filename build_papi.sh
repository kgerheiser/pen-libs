#!/bin/bash

cd $DOWNLOAD_PATH

git clone https://bitbucket.org/icl/papi.git
cd papi/src

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
