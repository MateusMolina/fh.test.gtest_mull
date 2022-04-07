rm -rf ./build.dir/*
export CXX=clang++-12
cmake -B ./build.dir -DCMAKE_CXX_FLAGS="-O0 -fexperimental-new-pass-manager -fpass-plugin=/usr/lib/mull-ir-frontend-12 -g -grecord-command-line" .
cd build.dir
make  -j

mull-runner-12 --ld-search-path=/lib/x86_64-linux-gnu/ runTests
