import os, shutil, sys

from sphinx_testing import with_app

@with_app(buildername='spelling', srcdir='../docs/en',
    copy_srcdir_to_tmpdir=False, outdir='root/_build')
def test_spelling_en(app, status, warning):
    app.build()
    with open(app.outdir + '/output.txt') as f:
        lines = f.readlines()
        lines = [line.replace('\n', '').replace('\r', '') for line in lines]
    assert not lines, 'The spell checker found the following errors: %s' % lines

@with_app(buildername='spelling', srcdir='../docs/de',
    copy_srcdir_to_tmpdir=False, outdir='root/_build')
def test_spelling_de(app, status, warning):
    app.build()
    exceptions = ['integration/connectors']
    with open(app.outdir + '/output.txt') as f:
        lines = f.readlines()
        parsedLines = []
        for line in lines:
            isException = False
            for exception in exceptions:
                if exception in line:
                    isException = True
            if not isException:
                parsedLines.append(line)
        f = open(app.outdir + '/output.txt', 'w');
        f.write(''.join(str(line) for line in parsedLines))
    assert not parsedLines, 'The spell checker found the following errors: %s' % parsedLines
