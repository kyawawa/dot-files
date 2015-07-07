#!/bin/sh

if [ -f $HOME/.bashrc ]; then
    rm $HOME/.bashrc
fi

if [ -f $HOME/.emacs ]; then
    rm $HOME/.emacs
fi

if [ -d $HOME/.emacs.d ]; then
    rm -rf $HOME/.emacs.d
fi

if [ -f $HOME/.gitconfig ]; then
    rm $HOME/.gitconfig
fi

if [ $# -eq 0 ]; then
    ln -s $HOME/dot-files/.bashrc $HOME/.bashrc
elif [ $# -eq 1 -a $1 = "JSK" ]; then
    ln -s $HOME/dot-files/.bashrc-jsk $HOME/.bashrc
else
    echo "Argument Error!!" 1>&2
    echo "Please select JSK or Nothing!!" 1>&2
fi
ln -s $HOME/dot-files/.emacs $HOME/.emacs
ln -s $HOME/dot-files/.emacs.d/ $HOME/.emacs.d
ln -s $HOME/dot-files/.gitconfig $HOME/.gitconfig
