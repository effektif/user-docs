import os, shutil, sys

from sphinx_testing import with_app

def determine_broken_links(outdir):
    with open(outdir + '/output.txt') as f:
        lines = f.readlines()
        lines = [line.replace('\n', '').replace('\r', '') for line in lines]
        lines = list(filter(lambda line: '[broken]' in line, lines))
    assert not lines, 'The link checker found the following errors: %s' % lines

@with_app(buildername='linkcheck', srcdir='../docs/en',
    copy_srcdir_to_tmpdir=False, outdir='root/_build')
def test_links_en(app, status, warning):
    app.build()
    determine_broken_links(app.outdir)

@with_app(buildername='linkcheck', srcdir='../docs/de',
    copy_srcdir_to_tmpdir=False, outdir='root/_build')
def test_links_de(app, status, warning):
    app.build()
    determine_broken_links(app.outdir)
