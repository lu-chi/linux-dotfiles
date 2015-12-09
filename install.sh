#!/usr/bin/env bash

# script to install linux dotfiles

dots=(bash_aliases \
        tmux.conf \
        vimrc \
)

function backup_olds {
    fbckp=".dotfiles-backup"
    mkdir ${fbckp}
    cp .bashrc .bash_aliases ${fbckp}
}

function check_os {
    return $(uname -a)
}

function install_dots {

}

function link_dots {
    for i in $dots[#i]
    do
        ln -s bash_aliases ~/.bash_aliases
        ln -s tmux.conf ~/.tmux.conf
        ln -s vimrc ~/.vimrc
    done
}



