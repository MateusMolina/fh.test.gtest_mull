#!/bin/bash
cd build
#cmake --build .
make -j $(nproc)
