Effektif User Manual [![Documentation Status](https://readthedocs.org/projects/effektif/badge/?version=latest)](https://readthedocs.org/projects/effektif/?badge=latest) [![Build Status](https://travis-ci.org/effektif/user-docs.svg?branch=master)](https://travis-ci.org/effektif/user-docs)
=======

See the [admin guide instructions](https://sites.google.com/a/effektif.com/effektif/general/admin-guide) for more information.

## Set-up

The following instructions assume Python is already installed.

0. (optional) You might want to [set up a virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/).
1. Install Python module dependencies - [PIP](https://pypi.python.org/pypi/pip), termcolor and tabulate:

		sudo easy_install pip termcolor tabulate

2. Set language environment variables:

		export LC_ALL=en_US.UTF-8
		export LC_CTYPE=en_US.UTF-8
		export LANG=en_US.UTF-8

3. Install all requirements:

		pip install --user -r requirements

## Editing the documentation

The documentation contents are in [reStructuredText](http://rest-sphinx-memo.readthedocs.org/en/latest/ReST.html) format. The standard language for writing is english.

## Building the documentation

In general you can easily build the docs from the root directory by running

    ./build.sh <de|en|fr>

This will output the docs as HTML into docs/_build. If you want to build to something other than HTML, you can proceed as follows:

	cd docs
	make html

To build the documentation for a specific language you need to use the language specifc conf.yp files. Those are located in the respective lang_code subdirectories, i.e. de or en.

## Updating translations

The files in `docs/_locale` are used for translations. Update these with:

	./i18n.sh
