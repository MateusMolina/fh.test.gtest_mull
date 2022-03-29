rm -rf ./obj/*
export CXX=clang++-12
cmake -B ./obj/  -DCMAKE_CXX_FLAGS="-O0 -fexperimental-new-pass-manager -fpass-plugin=/lib/mull-ir-frontend-12 -g -grecord-command-line"
cd obj/
make -j
make test -j
mull-runner-12 --ld-search-path=/lib/x86_64-linux-gnu/ bank_test
