#!/bin/sh

dir=`pwd`

for dotfile in .bashrc .emacs .emacs.d .gitconfig
do
    if [ -e $HOME/$dotfile ]; then
        rm -ri $HOME/$dotfile
    fi
done

if [ $# -eq 0 ]; then
    ln -s $dir/.bashrc $HOME/.bashrc
elif [ $# -eq 1 -a $1 = "JSK" ]; then
    ln -s $dir/jsk.bash $HOME/.bashrc
else
    echo "Argument Error!!" 1>&2
    echo "Please select JSK or Nothing!!" 1>&2
fi

ln -s $dir/.emacs.d $HOME/ # not to create link such as $HOME/.emacs.d/.emacs.d
ln -s $dir/.gitconfig $HOME/.gitconfig
