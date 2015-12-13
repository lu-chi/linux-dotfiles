#!/usr/bin/env bash

# script to install linux dotfiles

dots=($(ls -1 aliases))

backup_olds() {
    fbckp=".dotfiles-backup"
    mkdir ${fbckp}
    for i in ${dots[@]}
    do 
        find ~ -name ".$i" -exec cp {} ${fbckp} \; 
    done 
}

check_os() {
    return $(uname -a)
}

install_dots() {
    echo ""
}

link_dots() {
    for i in ${dots[@]}
    do
        ln -s $i ~/.$i
    done
}

test_f() {
    for i in ${dots[@]}
    do
        echo $i
    done
}


#~end
