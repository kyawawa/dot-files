#!/bin/sh

moveOriginalFile () {
    local today=$(date "+%Y%m%d")
    local yn
    read -p "mv: move '$1' to '$1.$today'? [y/N] " yn
    case $yn in
        "Y" | "y" ) mv $1 $1.$today;;
        * )
    esac
}

# $1: target name
# $2: link name (optional)
# $3: directory which contains the link (optional)
createSymLink () {
    local dot_dir=$(dirname $(readlink -f $0))
    local link_name=$1
    if [ $2 ]; then
        link_name=$2
    fi

    local link_root=${HOME}
    if [ $3 ]; then
        link_root=$3
    fi

    if [ ! $(readlink -f ${link_root}/${link_name}) ]; then
        echo "Create $(dirname ${link_root}/${link_name})."
        mkdir $(dirname ${link_root}/${link_name})
    fi

    if [ $(readlink -f ${link_root}/${link_name}) != $(readlink -f ${dot_dir}/$1) ]; then
        if [ -e ${link_root}/${link_name} ]; then
            moveOriginalFile ${link_root}/${link_name}
        fi

        if [ ! -e ${link_root}/${link_name} ]; then
            # not to create link such as $HOME/.emacs.d/.emacs.d
            ln -sn ${dot_dir}/$1 ${link_root}/${link_name}
        fi
    fi
}

if [ $# -eq 0 ]; then
    target_bashrc=.bashrc
elif [ $# -eq 1 -a $1 = "ROS" ]; then
    target_bashrc=ros.bash
else
    echo "Argument Error!!" 1>&2
    echo "Please select ROS or Nothing!!" 1>&2
fi

createSymLink ${target_bashrc} .bashrc
createSymLink .gitconfig
createSymLink .gitignore_global
createSymLink .globalrc
createSymLink .gdbinit
createSymLink .pythonstartup
createSymLink .ipython
createSymLink .mozc
createSymLink .config/flake8
createSymLink .config/fcitx
createSymLink .config/inkscape
createSymLink .docker/config.json
