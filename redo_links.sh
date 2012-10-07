#!/bin/bash


CONF_HOME=~/projects/linux_confs


ln -s $CONF_HOME/emacs/emacs ~/.emacs


# Add our bash junk into the rc
num=`grep cdu_bash $HOME/.bashrc | wc -l`
echo $num
if [ "$num" -eq "0" ]; then
  echo ". $HOME/projects/linux_confs/bash/cdu_bash.sh" >> $HOME/.bashrc
fi

