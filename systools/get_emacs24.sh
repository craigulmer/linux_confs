#!/bin/bash

VERSION=24.3
BUILD=build
DIR=emacs-$VERSION
SRC=$DIR.tar.xz

URL=http://mirrors.kernel.org/gnu/emacs/$SRC

PREFIX=$HOME/.local

# Note: building requires these:
#
# yum install libXpm libXpm-devel giflib  giflib-devel libjpeg libjpeg-devel libtiff libtiff-devel

[ ! -d $BUILD ] && mkdir $BUILD
cd $BUILD
[ ! -e $SRC ] && wget $URL
[ ! -d $DIR ] && tar xf $SRC

# Note: gsettings don't work in CentOS6

cd $DIR && ./configure --prefix=$PREFIX --without-gsettings && make -j 4 install

#if [ ! -e emacs-24.3.tar.xz ]; then
#    wget http://mirrors.kernel.org/gnu/emacs/emacs-24.3.tar.xz
#fi
#if [ ! -d emacs-24.3 ]; then
#    tar xf emacs-24.3.tar.xz
#fi

