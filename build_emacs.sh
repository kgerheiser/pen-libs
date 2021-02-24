#!/bin/bash
set -eux

cd $DOWNLOAD_PATH


wget https://ftp.gnu.org/gnu/emacs/emacs-27.1.tar.gz
tar -xf emacs-27.1.tar.gz
cd emacs-27.1

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install
