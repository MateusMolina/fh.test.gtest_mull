#!/bin/bash

# Pre-entry
sudo apt-get update

# Install script dependencies
sudo apt-get install wget
# Install Clang env
sudo apt-get install -y build-essential cmake llvm llvm-10-dev clang-10 libclang-10-dev 

# Install dextool dependencies
## Install latest sqlite
# sudo apt-get install -y sqlite3 libsqlite3-dev # Doesnt work. Dextool needs version at least 3.24, and 18.04 only provides 3.22
# TODO try to compile 3.sqlite3 and libsqlite3-dev 3.24 from source

# Install last version of dub and ldc

# sudo apt-get install -y dub ldc 
FILE=~/dllang/install.sh
# TODO fix this thing
if -f "$FILE"; then
    echo "Skipping installation of dub and ldc..."
else
    mkdir ~/dlang 
    wget https://dlang.org/install.sh -O ~/dlang/install.sh
    sudo chmod +777 ~/dlang/install.sh
    ~/dlang/install.sh install ldc-1.28.0 
    ~/dlang/install.sh install dub-1.22.0 
fi
source ~/dlang/dub-1.22.0/activate
source ~/dlang/ldc-1.28.0/activate


# Install dextool
dub run -y dextool -- -h
