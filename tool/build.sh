#!/usr/bin/env sh

git submodule init
git submodule update
rm -r build && mkdir build
cd build
cmake .. -GNinja
cmake --build . --target all
cd ..
