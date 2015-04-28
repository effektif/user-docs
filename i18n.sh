#!/bin/sh

if [ ! $1 ]
then
    echo "No language has been specified!"

    exit 1
fi

python cleanup.py

cd docs
make clean
make gettext
sphinx-intl update -p _build/locale -l $1
sphinx-intl build
