#!/usr/bin/env bash

# dotfiles installer
# - backup existing dots
# - link installed dots inside user's home directory

in_f="aliases"
bckp_f=".dotfiles-backup"
dots=($(ls -1 $in_f))

# backup existing dotfiles 
# into .dotfiles-backup dir
function backup() {
    fbckp=$1
    mkdir $HOME/${fbckp}
    for i in ${dots[@]}
    do 
        find ~ -name ".$i" -exec mv {} $HOME/${fbckp} \; 
    done 
}

# symlink new dotfiles
# into the user's home dir
function link_dots() {
    cp -r $in_f $HOME
    mv $HOME/$in_f $HOME/.$in_f
#    rm -rf $in_f
    for i in ${dots[@]}
    do
        ln -s .$in_f/$i ~/.$i
    done
}

# call both functions
function main() {
    backup $bckp_f
    link_dots
}

# call main
main 

#~end
