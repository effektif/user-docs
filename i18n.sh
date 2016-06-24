#!/bin/sh

if [ ! $1 ]
then
    echo "No language has been specified!"

    exit 1
fi

python cleanup.py $1

cd docs
make clean > /dev/null
make gettext > /dev/null
sphinx-intl update -p _build/locale -l $1 > /dev/null
sphinx-intl build > /dev/null

cd ..
python remove_rst_refs_in_po_files.py $1
