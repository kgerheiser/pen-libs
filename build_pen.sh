#!/bin/bash

export PEN_ROOT=`pwd`
export INSTALL_PREFIX=~/Desktop/pen-install/install
export DOWNLOAD_PATH=~/Desktop/pen-install/src

export CC=gcc
export FC=gfortran
export CXX=g++

export NUM_BUILD_THREADS=20

export PATH="${INSTALL_PREFIX}/bin:${PATH}"
export LD_LIBRARY_PATH="${INSTALL_PREFIX}/lib:${INSTALL_PREFIX}/lib64:${LD_LIBRARY_PATH}"

./build_binutils.sh
./build_zlib.sh
./build_libxml.sh
./build_curl.sh
./build_openssl.sh
./build_readline.sh
./build_cmake.sh
./build_flex.sh
./build_bison.sh
./build_gcrypt.sh

./build_boost.sh
./build_doxygen.sh
./build_gdb.sh
./build_git.sh
./build_hwloc.sh
./build_ninja.sh
./build_papi.sh
./build_imagemagick.sh


#./build_xz.sh
#Needs to be setup with xz flags, and probably more
#./build_r.sh


./build_swig.sh
./build_valgrind.sh
./build_bzip2.sh
./build_cairo.sh

./build_fftw3.sh
./build_gsl.sh
./build_gmp.sh
#./build_mpfr.sh

./build_ncurses.sh
./build_emacs.sh
./build_nlopt.sh
./build_python.sh

