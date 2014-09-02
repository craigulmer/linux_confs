#!/bin/bash

if [ ! -d org-mode ]; then
   echo "No org mode. Downloading"
   git clone git://orgmode.org/org-mode.git
else
   echo "Found org mode, updating"
fi
cd org-mode && make && cd ..


if [ ! -d openwith ]; then
    echo "No openwith. Downloading"
    hg clone https://bitbucket.org/jpkotta/openwith
else
    echo "Found openwith"
fi
 

if [ ! -d cedet ]; then
    echo "No CEDET. Downloading"
    bzr checkout bzr://cedet.bzr.sourceforge.net/bzrroot/cedet/code/trunk cedet
else
    echo "Found cedet"
fi
#Note: this needs 23.2+, which is missing on centos6
cd cedet && emacs -Q -nw -l cedet-build.el -f cedet-build -f save-buffers-kill-terminal


