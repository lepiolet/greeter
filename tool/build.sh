#!/usr/bin/env sh

set -ex

git submodule init
git submodule update
rm -rf build && mkdir build
cd build
cmake .. -G'Unix Makefiles'
cmake --build . --target all
cd ..
