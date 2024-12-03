#!/usr/bin/env sh

set -ex

apt-get update
apt-get install -y ninja-build
git submodule init
git submodule update
rm -r build && mkdir build
cd build
cmake .. -GNinja
cmake --build . --target all
cd ..
