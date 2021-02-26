#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/libhugetlbfs/libhugetlbfs/releases/download/2.23/libhugetlbfs-2.23.tar.gz
tar -xf libhugetlbfs-2.23.tar.gz

cd libhugetlbfs-2.23
make
make install PREFIX=${INSTALL_PREFIX}
