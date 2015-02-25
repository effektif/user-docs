Effektif User Manual [![Documentation Status](https://readthedocs.org/projects/effektif/badge/?version=latest)](https://readthedocs.org/projects/effektif/?badge=latest)
=======

See the [admin guide instructions](https://sites.google.com/a/effektif.com/effektif/general/admin-guide) for more information.

## Set-up

The following instructions assume Python is already installed.

1. Install [PIP](https://pypi.python.org/pypi/pip):
		sudo easy_install pip
2. Set language environment variables:
		export LC_ALL=en_US.UTF-8
		export LANG=en_US.UTF-8

## Editing the documentation

The documentation contents are in [reStructuredText](http://rest-sphinx-memo.readthedocs.org/en/latest/ReST.html) format, in the `docs/chapters/` folder.

## Building the documentation

To build the HTML documentation:

	cd docs
	make html

## Updating translations

The files in `docs/_locale` are used for translations. Update these with:

	cd docs
	make gettext
	sphinx-intl update -p _build/locale -l en -l de -c conf.py
