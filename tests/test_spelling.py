import os, shutil, sys

from sphinx_testing import with_app

@with_app(buildername='spelling', srcdir='../docs/en',
    copy_srcdir_to_tmpdir=False, outdir='root/_build')
def setup(app, status, warning):
    app.build()
    global lines
    with open(app.outdir + '/output.txt') as f:
        lines = f.readlines()
        lines = [line.replace('\n', '').replace('\r', '') for line in lines]

def test_spelling():
    assert not lines, 'The spell checker found the following errors: %s' % lines
