#!/usr/bin/env bash

# script to install dotfiles

in_f="aliases"
bckp_f=".dotfiles-backup"
dots=($(ls -1 $in_f))

backup() {
    fbckp=$1
    mkdir ${fbckp}
    for i in ${dots[@]}
    do 
        find ~ -name ".$i" -exec cp {} ${fbckp} \; 
    done 
}

check_os() {
    echo $(uname -r)
}

link_dots() {
    for i in ${dots[@]}
    do
        ln -s $in_f/$i ~/.$i
    done
}

main() {
    backup $bckp_f
    link_dots
}

main 

#~end
