rm -rf ./build/*
export CXX=clang++-12
cmake -B ./build -DCMAKE_CXX_FLAGS="-O0 -fexperimental-new-pass-manager -fpass-plugin=/usr/lib/mull-ir-frontend-12 -g -grecord-command-line" .
cd build
make  -j