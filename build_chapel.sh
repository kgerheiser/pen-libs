#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

wget https://github.com/chapel-lang/chapel/releases/download/1.23.0/chapel-1.23.0.tar.gz
tar -xf chapel-1.23.0.tar.gz
cd chapel-1.23.0

source util/quickstart/setchplenv.bash
make
