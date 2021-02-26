#!/bin/bash
set -eux

cd $DOWNLOAD_PATH

git clone https://github.com/llvm/llvm-project.git
cd llvm-project
mkdir build && cd build
cmake -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm
make -j${NUM_BUILD_THREADS}
make install
