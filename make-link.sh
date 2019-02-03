#!/bin/sh

promptRemove () {
    local yn
    read -p "rm: remove '$1'? [y/N] " yn
    case $yn in
        "Y" | "y" ) rm -rf $1;;
        * )
    esac
}

createSymLink () {
    local dot_dir=$(dirname $(readlink -f $0))
    if [ ! -e $HOME/$1 ]; then
        # not to create link such as $HOME/.emacs.d/.emacs.d
        ln -sn $dot_dir/$1 $HOME/$1
    fi
}

dir=$(dirname $(readlink -f $0))

for dotfile in .bashrc .emacs .emacs.d .gitconfig .globalrc .gdbinit .pythonstartup .ipython .mozc
do
    if [ $(readlink -f $HOME/$dotfile) != $(readlink -f $dir/$dotfile) ]; then
        promptRemove $HOME/$dotfile
    fi
done

if [ -e $HOME/.config/gtk-3.0/gtk.css ]; then
    promptRemove $HOME/.config/gtk-3.0/gtk.css
fi

# .config
for i in $(ls $dir/.config); do
    home_conf_file=$HOME/.config/$i
    if [ -e $home_conf_file ]; then
        promptRemove $home_conf_file
    fi
    ln -sn $dir/.config/$i $home_conf_file
done

if [ $# -eq 0 ]; then
    ln -s $dir/.bashrc $HOME/.bashrc
elif [ $# -eq 1 -a $1 = "JSK" ]; then
    ln -s $dir/jsk.bash $HOME/.bashrc
else
    echo "Argument Error!!" 1>&2
    echo "Please select JSK or Nothing!!" 1>&2
fi

createSymLink .emacs.d
createSymLink .gitconfig
createSymLink .globalrc
createSymLink .gdbinit
createSymLink .pythonstartup
createSymLink .ipython
createSymLink .mozc
ln -sn $dir/gtk.css $HOME/.config/gtk-3.0/gtk.css
