#!/bin/sh

$CC -Wall -fPIC -g -c sdl.c gui.c string.c ../file/file-sandbox.c -O3 -fomit-frame-pointer -g -I/usr/include/SDL -I/usr/include/SDL2
$CC -shared -Wl,-soname,libl1vmsdl.so.1 -o libl1vmsdl.so.1.0 sdl.o gui.o string.o file-sandbox.o
cp libl1vmsdl.so.1.0 libl1vmsdl.so
