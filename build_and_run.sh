#!/bin/zsh

./build.sh
ln -fs $(pwd)/build/lib/libgeorgeringo.dylib /usr/local/lib/libgeorgeringo.dylib 
./build/bin/hellobeatles
