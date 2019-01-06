#!/bin/bash

set -e
set -x

cd /var/tmp/build 

make -j

ls -lh vim-src/src/vim

shasum vim-src/src/vim
