#!/bin/bash

# Install Clang env
sudo apt-get install -y clang-12

# Install Mull-12
curl -1sLf 'https://dl.cloudsmith.io/public/mull-project/mull-stable/setup.deb.sh' | sudo -E bash
sudo apt-get update
sudo apt-get install -y mull-12
