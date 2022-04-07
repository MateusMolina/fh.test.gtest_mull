#!/bin/bash

# Install Clang env
sudo apt-get install -y build-essential cmake llvm llvm-12-dev clang-12 libclang-12-dev 

# Install Mull-12
curl -1sLf 'https://dl.cloudsmith.io/public/mull-project/mull-stable/setup.deb.sh' | sudo -E bash
sudo apt-get update
sudo apt-get install -y mull-12
