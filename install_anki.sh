#!/usr/bin/env bash

anki_dir='anki_root'

if [ ! -e "$anki_dir" ]
then
    echo "$anki_dir not detected, cloning from master"
    git clone https://github.com/ankitects/anki anki_root
    echo "installing anki module from anki local checkout"
    cd anki_root/pylib
    python3 setup.py install
    cd ..
    echo "done installing anki module"
    echo "installing aqt module from anki local checkout"
    cd anki_root/qt
    python3 setup.py install
    echo "done installing aqt module"
fi
