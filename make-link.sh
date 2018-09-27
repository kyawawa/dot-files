#!/bin/sh

promptRemove () {
    local yn
    read -p "rm: remove '$1'? [Y/n] " yn
    case $yn in
        "Y" | "y" ) rm -rf $HOME/$1;;
        * )
    esac
}


dir=$(dirname $(readlink -f $0))

for dotfile in .bashrc .emacs .emacs.d .gitconfig .globalrc .gdbinit .pythonstartup .ipython
do
    if [ -e $HOME/$dotfile ]; then
        promptRemove $dotfile
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

ln -sn $dir/.emacs.d $HOME/.emacs.d # not to create link such as $HOME/.emacs.d/.emacs.d
ln -sn $dir/.gitconfig $HOME/.gitconfig
ln -sn $dir/.globalrc $HOME/.globalrc
ln -sn $dir/.gdbinit $HOME/.gdbinit
ln -sn $dir/gtk.css $HOME/.config/gtk-3.0/gtk.css
ln -sn $dir/.pythonstartup $HOME/.pythonstartup
ln -sn $dir/.ipython $HOME/.ipython
