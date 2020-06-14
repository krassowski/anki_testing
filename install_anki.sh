#!/usr/bin/env bash

anki_dir='anki_root'

if [ ! -e "$anki_dir" ]
then
    echo "$anki_dir not detected, cloning from master"
    git clone https://github.com/ankitects/anki anki_root
fi
