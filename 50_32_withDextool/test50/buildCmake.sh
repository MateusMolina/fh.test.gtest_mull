rm -rf ./build/*
export CXX=clang++-13
cmake -S . -B build -DCMAKE_EXPORT_COMPILE_COMMANDS=ON -Dgtest_build_tests=ON -Dgmock_build_tests=ON

