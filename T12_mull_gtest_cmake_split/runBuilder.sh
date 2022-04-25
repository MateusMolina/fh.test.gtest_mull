#!/bin/bash

if [ -d 'build' ] ; then
    rm -rf ./build/*
    echo "tem build"
else
    mkdir build
fi
cd build
export CXX=clang++-12
cmake -DCMAKE_CXX_FLAGS="-O0 -fexperimental-new-pass-manager -fpass-plugin=/usr/lib/mull-ir-frontend-12 -g -grecord-command-line" ..
make  -j