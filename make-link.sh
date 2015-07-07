#!/bin/sh

rm $HOME/.bashrc
rm $HOME/.emacs
rm -rf $HOME/.emacs.d
rm $HOME/.gitconfig

ln -s $HOME/dot-files/.bashrc-jsk $HOME/.bashrc
ln -s $HOME/dot-files/.emacs $HOME/.emacs
ln -s $HOME/dot-files/.emacs.d/ $HOME/.emacs.d
ln -s $HOME/dot-files/.gitconfig $HOME/.gitconfig
