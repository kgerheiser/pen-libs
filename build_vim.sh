#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

git clone https://github.com/vim/vim.git
cd vim/src
make
