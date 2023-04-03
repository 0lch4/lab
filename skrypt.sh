#!/bin/bash

if [[ "$1" == "--init" ]]; then
    git clone https://github.com/0lch4/lab.git
    echo 'export PATH=$PATH:'$(pwd) >> ~/.bashrc
fi
