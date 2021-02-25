#!/bin/bash

while getopts u:a:f: flag
do
    case "${flag}" in
        f) 
        force=${OPTARG};;
    esac
done

REALPATH=$0
if [[ ${REALPATH:0:1} != '/' ]]; then
    REALPATH=$(realpath $REALPATH)
fi
DIR=$(dirname $REALPATH)

LIST=(
.gitconfig
.tmux.conf
.vimrc
)

for F in "${LIST[@]}"; do
    if [[ $force = 1 ||  ! -e $HOME/$F ]]; then
        echo $F
        cp $DIR/$F $HOME/
    fi
done

cat $DIR/.zshrc >> ~/.zshrc
