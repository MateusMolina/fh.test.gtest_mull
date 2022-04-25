#!/bin/bash
# Misc
count=0
total=5
printStep(){
    count=$((count+1))
    echo -e "\033[0;32m" "["$count"/"$total"]" $1" \033[0m"
}

# 1 Pre-entry
printStep Pre-Entry
sudo apt-get update

# 2 Install script dependencies
printStep "Installing Script dependencies"
sudo apt-get install -y wget curl git

# 3 Install Clang env
printStep "Installing Clang env"
sudo apt-get install -y build-essential cmake llvm llvm-12-dev clang-12 libclang-12-dev 

# 4 Install Gtest and Gmock
printStep "Installing GTest and GMock"
sudo apt-get install -y libgtest-dev libgmock-dev

# 5 Install Mull-12
printStep "Installing Mull-12"
curl -1sLf 'https://dl.cloudsmith.io/public/mull-project/mull-stable/setup.deb.sh' | sudo -E bash
sudo apt-get update
sudo apt-get install -y mull-12
