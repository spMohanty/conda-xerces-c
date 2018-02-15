#!/bin/bash

if [ `uname` == Darwin ]; then
    export CC=clang
    export CXX=clang++
fi

./configure --prefix=$PREFIX CFLAGS="-arch x86_64" CXXFLAGS="-arch x86_64"

make
make install
