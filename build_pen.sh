#!/bin/bash

export PEN_ROOT=`pwd`
export INSTALL_PREFIX=~/Desktop/pen-install/install
export DOWNLOAD_PATH=~/Desktop/pen-install/src

export CC=gcc
export FC=gfortran
export CXX=g++

export NUM_BUILD_THREADS=20

export PATH="${INSTALL_PREFIX}/bin:${PATH}"

#./build_binutils.sh
#./build_cmake.sh
#./build_boost.sh
#./build_flex.sh
#./build_bison.sh
#./build_doxygen.sh
#./build_gdb.sh
#./build_git.sh
#./build_hwloc.sh
#./build_ninja.sh
#./build_papi.sh

#./build_xz.sh
# Needs to be setup with xz flags, and probably more
#./build_r.sh


#./build_swig.sh
#./build_valgrind.sh
#./build_bzip2.sh
./build_cairo.sh
