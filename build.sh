#!/bin/sh

if [ ! $1 ]
then
    echo "No language to build specified"

    exit 0
fi

if [ ! -d "$PWD/docs/$1" ]
then
    echo "Cannot build for that langauge. Configuration does not exist."

    exit 1
fi

MODE=$2

if [ ! "$MODE" ]
then
    MODE="html"
fi

python cleanup.py
rm -rf docs/_build

./i18n.sh $1

cd "$PWD"/docs/$1

BUILDDIR="../_build"

sphinx-build -M $MODE . $BUILDDIR

cd ..
rm -rf $BUILDDIR

cd ..
python cleanup.py
python remove_rst_refs_in_po_files.py $1
python find_missing_images.py $1
