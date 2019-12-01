#!/bin/sh

git clone https://github.com/0nyrixs/crosstool-ng.git
cd ./crosstool-ng
./bootstrap
./configure
make
