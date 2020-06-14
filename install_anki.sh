#!/usr/bin/env bash

anki_dir='anki_root'



if [ ! -e "$anki_dir" ]
then
    echo "$anki_dir not detected, cloning from master"
    git clone https://github.com/ankitects/anki anki_root
    cd anki_root
    export SKIP_ANKI_RSPY=1 # don't install ankirspy, it can't be found on pip. not sure what this module is fore.    
    echo "installing anki module (pylib) from anki local checkout"
    cd pylib
    python3 setup.py install
    cd ..
    echo "done installing anki module"
    echo "installing aqt module (qt) from anki local checkout"
    cd qt
    python3 setup.py install
    echo "done installing aqt module"
    cd ..
fi
