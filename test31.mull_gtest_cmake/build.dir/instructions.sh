rm -rf CMakeCache.txt CMakeFiles/ Makefile  cmake_install.cmake
export CXX=clang++-12
cmake  -DCMAKE_CXX_FLAGS="-O0 -fexperimental-new-pass-manager -fpass-plugin=/lib/mull-ir-frontend-12 -g -grecord-command-line"   ..
make runTests -j
mull-runner-12 --ld-search-path=/lib/x86_64-linux-gnu/ runTests
