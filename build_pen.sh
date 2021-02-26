#!/bin/bash
set -eux

export PEN_ROOT=`pwd`
export INSTALL_PREFIX=/data/kgerheiser/pen/install
export DOWNLOAD_PATH=/data/kgerheiser/pen/src

export CC=gcc
export FC=gfortran
export CXX=g++

export NUM_BUILD_THREADS=6

export PATH="${INSTALL_PREFIX}/bin:${PATH}"
export LD_LIBRARY_PATH="${INSTALL_PREFIX}/lib:${INSTALL_PREFIX}/lib64"
export LDFLAGS="-L${INSTALL_PREFIX}/lib -L${INSTALL_PREFIX}/lib64"
export CFLAGS="-I${INSTALL_PREFIX}/include"
export PKG_CONFIG_PATH="${INSTALL_PREFIX}/lib/pkgconfig:${INSTALL_PREFIX}/lib64/pkgconfig"

mkdir -p ${DOWNLOAD_PATH}
mkdir -p ${INSTALL_PREFIX}

# ./build_cmake.sh
# ./build_binutils.sh
# ./build_zlib.sh
# ./build_openssl.sh
# ./build_libxml.sh
# ./build_curl.sh
# ./build_readline.sh
# ./build_bzip2.sh
# ./build_png.sh
# ./build_cairo.sh
# ./build_ffi.sh
# ./build_flex.sh
# ./build_bison.sh
# ./build_gcrypt.sh
#./build_boost.sh
#./build_doxygen.sh
#./build_gdb.sh

# expat needed by git
# ./build_expat.sh
# ./build_git.sh

# ./build_hwloc.sh
# ./build_ninja.sh
# ./build_papi.sh
# ./build_imagemagick.sh
# ./build_libevent.sh
#./build_ncurses.sh
#./build_libedit.sh

# ipmi requires elevated permissions to install?
# /usr/bin/install: cannot create regular file. '/usr/lib/systemd/system/bmc-watchdog.service': Permission denied
#./build_ipmi.sh

# fatal error: gnu/stubs-32.h: No such file or directory
#./build_libhugetlbfs.sh

# Needs X11
#./build_motif.sh

# Needs some machine-specific customization
#./build_net-snmp.sh

#./build_qt.sh
#./build_screen.sh

# Needs gnu multilib
#./build_strace.sh

./build_tk.sh
./build_vim.sh
./build_mvapich2.sh
./build_openmpi.sh

./build_emacs.sh
./build_python.sh
./build_llvm.sh
# #./build_xz.sh
# #Needs to be setup with xz flags, and probably more
# #./build_r.sh


./build_swig.sh
./build_valgrind.sh
./build_gnuplot.sh

./build_fftw3.sh
./build_gsl.sh
./build_gmp.sh
./build_nlopt.sh
#./build_mpfr.sh


