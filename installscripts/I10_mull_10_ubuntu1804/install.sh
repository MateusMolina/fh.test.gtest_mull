#!/bin/bash

# Install Clang env
sudo apt-get install -y build-essential cmake llvm llvm-10-dev clang-10 libclang-10-dev 

# Install Mull-10
curl -1sLf 'https://dl.cloudsmith.io/public/mull-project/mull-stable/setup.deb.sh' | sudo -E bash
sudo apt-get update
sudo apt-get install -y mull-10
