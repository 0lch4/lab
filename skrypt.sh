#!/bin/bash

if [[ "$1" == "--init" ]]; then
    git clone <D:\lab>
    echo 'export PATH=$PATH:'$(pwd) >> ~/.bashrc
fi
