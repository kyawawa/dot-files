#!/bin/sh

for dotfile in .bashrc .emacs .emacs.d .gitconfig
do
    if [ -e $HOME/$dotfile ]; then
        rm -ri $HOME/$dotfile
    fi
done

if [ $# -eq 0 ]; then
    ln -s $HOME/dot-files/.bashrc $HOME/.bashrc
elif [ $# -eq 1 -a $1 = "JSK" ]; then
    ln -s $HOME/dot-files/.bashrc-jsk $HOME/.bashrc
else
    echo "Argument Error!!" 1>&2
    echo "Please select JSK or Nothing!!" 1>&2
fi

ln -s $HOME/dot-files/.emacs $HOME/.emacs
ln -s $HOME/dot-files/.emacs.d $HOME/ # not to create link such as $HOME/.emacs.d/.emacs.d
ln -s $HOME/dot-files/.gitconfig $HOME/.gitconfig
