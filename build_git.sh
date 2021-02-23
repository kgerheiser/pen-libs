#!/bin/bash

cd $DOWNLOAD_PATH

wget https://github.com/git/git/archive/v2.30.1.tar.gz
tar -xf v2.30.1.tar.gz
cd git-2.30.1

make prefix=${INSTALL_PREFIX}
make prefix=${INSTALL_PREFIX} install
