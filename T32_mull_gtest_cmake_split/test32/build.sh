rm -rf ./build/*
export CXX=clang++-12
cd build
cmake -DCMAKE_CXX_FLAGS="-O0 -fexperimental-new-pass-manager -fpass-plugin=/usr/lib/mull-ir-frontend-12 -g -grecord-command-line" ..
make  -j

