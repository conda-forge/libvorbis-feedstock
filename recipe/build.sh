#!/bin/bash

set -xeuo pipefail

mkdir build
cd build

cmake ${CMAKE_ARGS}                  \
      -G Ninja                       \
      -DCMAKE_BUILD_TYPE=Release     \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_INSTALL_LIBDIR=lib     \
      -DBUILD_SHARED_LIBS=ON         \
      $SRC_DIR

ninja install
