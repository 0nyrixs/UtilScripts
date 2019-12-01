#!/bin/bash

mkdir ~/bin
PATH=~/bin:$PATH

curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

mkdir ~/WORKING_DIRECTORY
cd ~/WORKING_DIRECTORY

git config --global user.name "Another Man"
git config --global user.email "mairenajuanete@gmail.com"

repo init --depth=1 -u https://android.googlesource.com/platform/manifest
repo sync  -f --no-clone-bundle --no-tags -j3
