Signavio Workflow User Manual [![Documentation Status](https://readthedocs.org/projects/effektif/badge/?version=latest)](https://readthedocs.org/projects/effektif/?badge=latest) [![Build Status](https://travis-ci.org/effektif/user-docs.svg?branch=master)](https://travis-ci.org/effektif/user-docs)
=======

See the [admin guide instructions](https://sites.google.com/a/effektif.com/effektif/general/admin-guide) for more information.

## Set-up

On macOS, the easiest approach is to use [Homebrew](http://brew.sh) to install the latest version of Python 2 and the [PIP](https://pypi.python.org/pypi/pip) package manager.
Using the Python that the OS provides seems harder.
Alternatively, if you use Python for other things, you migth prefer to  [set up a virtualenv](http://docs.python-guide.org/en/latest/dev/virtualenvs/).

1. Install Python and PIP using Homebrew

		brew install python
		pip install --upgrade pip setuptools
		
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
	
## Windows/cygwin troubleshooting
When setting up the build on a Windows machine with cygwin, the following issues may occur:

* cygwin cannot execute the `build.sh` file.

  As a quick fix, run `sed -i 's/\r$//' build.sh i18n.sh``. Make sure you don't commit the changes to `b
  uild.sh` and ì18n.sh`.
  
* pip doesn't install the dependencies in cygwin python's `site-package` directory.

  Go to `/usr/lib/python2.7/site-packages` and install the requirements there. For example: `pip install termcolor -t .`.
