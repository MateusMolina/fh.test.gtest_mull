#!/bin/bash
# Misc
count=0
total=7
printStep(){
    count=$((count+1))
    echo -e "\033[0;32m" "["$count"/"$total"]" $1" \033[0m"
}

# Check Cleanup
if [ "$1" = "--cleanup" ]; then
    echo "Cleaning up..."
    rm -rf ~/dlang/ ~/.dub/
    exec bash
fi

# 1 Pre-entry
printStep Pre-Entry
sudo apt-get update

# 2 Install script dependencies
printStep "Installing Script dependencies"
sudo apt-get install -y wget curl

# 3 Install Clang env
printStep "Installing Clang env"
sudo apt-get install -y build-essential cmake llvm llvm-12-dev clang-12 libclang-12-dev 

# 4 Install Gtest and Gmock
printStep "Installing GTest and GMock"
sudo apt-get install -y libgtest-dev libgmock-dev

# 5 Install dextool dependencies
printStep "Install dextool dependencies"
## Install latest sqlite
 sudo apt-get install -y sqlite3 libsqlite3-dev

# 6 Install dub and ldc
printStep "Installing dub and ldc"
# sudo apt install -y ldc
DUBV=1.23.0
LDCV=1.28.0

FILE=~/dlang/dub-$DUBV/activate
if [ -f "$FILE" ];then
    echo "Skipping installation of dub and ldc..."
else
    mkdir ~/dlang 
    wget https://dlang.org/install.sh -O ~/dlang/install.sh
    sudo chmod +777 ~/dlang/install.sh
    ~/dlang/install.sh install dub-$DUBV 
    ~/dlang/install.sh install ldc-$LDCV
fi
source ~/dlang/dub-$DUBV/activate
source ~/dlang/ldc-$LDCV/activate

# 7 Compile dextool
# dub run -y dextool -- -h    # NOT WORKING
printStep "Compiling dextool"
git clone -b "v4.2.0" --single-branch https://github.com/joakim-brannstrom/dextool.git tmp/dextool/
cd tmp/dextool
mkdir build
cd build
mkdir ~/.dextool/
cmake -DCMAKE_INSTALL_PREFIX=~/.dextool/ ..
make install
 

# 8 Add to Path
if [ "$1" = "--add-path" ]; then
    printStep "Adding Dextool to Path"
    # echo "export PATH=\"\$HOME/.dub/packages/dextool-4.1.0/dextool/dub_build/bin:\$PATH\"" 1>> ~/.profile
    echo "export PATH=\"\$HOME/.dextool/bin:\$PATH\"" 1>> ~/.profile
    source ~/.profile
    echo $PATH
fi

