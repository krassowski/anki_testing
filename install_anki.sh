#!/usr/bin/env bash

anki_dir='anki_root'

if [ ! -e "$anki_dir" ]
then
    echo "$anki_dir not detected, cloning from master"
    git clone https://github.com/ankitects/anki anki_root
    echo "installing from anki's setup.py"
    cd anki_root/qt
    python3 setup.py install
fi
