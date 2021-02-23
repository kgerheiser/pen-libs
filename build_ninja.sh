#!/bin/bash

cd $DOWNLOAD_PATH

git clone git://github.com/ninja-build/ninja.git && cd ninja
git checkout release

cmake -Bbuild-cmake -H.
cmake --build build-cmake
cp build-cmake/ninja ${INSTALL_PREFIX}/bin
