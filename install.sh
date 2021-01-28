#!/bin/bash

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
    if [[  ! -e $HOME/$F ]]; then
        echo $F
        cp $DIR/$F $HOME/
    fi
done
