#!/bin/bash
set -e
cd build
#cmake --build .
make -j $(nproc)
