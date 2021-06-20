#!/bin/zsh

rm build/bin/*
rm build/lib/*
rm build/obj/*

echo 'Generating static library for +johnpaul+'
pushd build/obj
g++ -c ../../johnpaul/john.cpp ../../johnpaul/paul.cpp ../../johnpaul/johnpaul.cpp
popd
pushd build/lib
ar ru libjohnpaul.a ../obj/john.o ../obj/paul.o ../obj/johnpaul.o
ranlib libjohnpaul.a
popd

echo 'Generating dynamic library for +georgeringo+'
pushd build/obj
g++ -c ../../georgeringo/george.cpp ../../georgeringo/ringo.cpp ../../georgeringo/georgeringo.cpp
popd
pushd build/lib
g++ -dynamiclib -fPIC -o libgeorgeringo.dylib ../obj/george.o ../obj/ringo.o ../obj/georgeringo.o
popd

echo 'Building application'
pushd build/obj
g++ -c ../../hellobeatles/hellobeatles.cpp -I../../johnpaul -I../../georgeringo
popd
pushd build/bin
g++ -o hellobeatles ../obj/hellobeatles.o -lgeorgeringo -ljohnpaul -L../lib
popd
