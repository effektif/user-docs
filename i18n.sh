#!/bin/sh

python cleanup.py

cd docs
make clean
make gettext
sphinx-intl update -p _build/locale -l de -l en
