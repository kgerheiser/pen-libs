#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

git clone https://github.com/ImageMagick/ImageMagick.git ImageMagick-7.0.11
cd ImageMagick-7.0.11

./configure --prefix=${INSTALL_PREFIX}
make
make install
