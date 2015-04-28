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

python cleanup.py
rm -rf docs/_build

cd $PWD/docs/$1

sphinx-build . ../_build
