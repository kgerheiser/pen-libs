#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://managedway.dl.sourceforge.net/project/net-snmp/net-snmp/5.9/net-snmp-5.9.tar.gz
tar -xf net-snmp-5.9.tar.gz
cd net-snmp-5.9

./configure --prefix=${INSTALL_PREFIX}
make -j${NUM_BUILD_THREADS}
make install

