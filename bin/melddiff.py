#!/usr/bin/python
#
# Simple script to allow git to pipe difference to meld
# from some other website (not sure where?)
#
# Enable via:
#   git config --global diff.external \
#               /home/cdulmer/projects/linux_confs/bin/melddiff.py
# 
import sys
import os

os.system('meld "%s" "%s"' % (sys.argv[2], sys.argv[5]))

