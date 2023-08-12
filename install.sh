#!/bin/bash
DIR="$HOME/.local/bin"
if [ ! -d "$DIR" ]; then
    echo "Directory $DIR does not exist. Creating it now."
    mkdir -p $DIR
fi

cp -r .mpd      "$HOME"
cp -r .ncmpcpp  "$HOME"
chmod +x ${HOME}/.ncmpcpp/scripts/*

install -Dm 755 kunst  ${HOME}/.local/bin/kunst 
