#!/bin/bash

if [ ! -d org-mode ]; then
   echo "No org mode. Downloading"
   git clone git://orgmode.org/org-mode.git
   cd org-mode && make && cd ..
else
   echo "Found org mode, ignoring"
fi


# Org-reveal converts org docs to html reveal.js presentations
if [ ! -d org-reveal ]; then
    git clone https://github.com/yjwen/org-reveal.git
else
    echo "Found org-reveal"
fi

if [ ! -d openwith ]; then
    echo "No openwith. Downloading"
    hg clone https://bitbucket.org/jpkotta/openwith
else
    echo "Found openwith"
fi
 

if [ ! -d cedet ]; then
    echo "No CEDET. Downloading"
    bzr checkout bzr://cedet.bzr.sourceforge.net/bzrroot/cedet/code/trunk cedet
    
    #Note: this needs 23.2+, which is missing on centos6
    cd cedet && emacs -Q -nw -l cedet-build.el -f cedet-build -f save-buffers-kill-terminal

else
    echo "Found cedet"
fi


