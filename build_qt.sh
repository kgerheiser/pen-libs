#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

git clone git://code.qt.io/qt/qt5.git
cd qt5
git checkout 5.12

export LLVM_INSTALL_DIR=
mkdir qt5-build
cd qt5-build
../qt5/configure -developer-build -opensource -nomake examples -nomake tests
