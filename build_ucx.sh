#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/openucx/ucx/releases/download/v1.9.0/ucx-1.9.0.tar.gz
tar -xf ucx-1.9.0.tar.gz
cd ucx-1.9.0

./autogen.sh
./contrib/configure-release --prefix=/where/to/install
make -j8
make install
