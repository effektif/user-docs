import os, shutil, sys
from sphinx_testing import with_app

@with_app(buildername='html', srcdir='../docs/en',
    confoverrides={'extensions': []}, copy_srcdir_to_tmpdir=False,
    outdir='root/_build_warnings_en')
def test_sphinx_warnings_en(app, status, warning):
    app.build()
    warnings = warning.getvalue()
    assert not warnings, 'The build stopped at the following warning: \n %s \n \
        For the test to succeed, you need to fix all warnings.' % warnings


@with_app(buildername='html', srcdir='../docs/de',
    confoverrides={'extensions': []},
    copy_srcdir_to_tmpdir=False, outdir='root/_build_warnings_de')
def test_sphinx_warnings_de(app, status, warning):
    app.build()
    warnings = warning.getvalue()
    assert not warnings, 'The build stopped at the following warning: \n %s \n \
        For the test to succeed, you need to fix all warnings.' % warnings


@with_app(buildername='html', srcdir='../docs/fr',
    confoverrides={'extensions': []},
    copy_srcdir_to_tmpdir=False, outdir='root/_build_warnings_fr')
def test_sphinx_warnings_fr(app, status, warning):
    app.build()
    warnings = warning.getvalue()
    assert not warnings, 'The build stopped at the following warning: \n %s \n \
        For the test to succeed, you need to fix all warnings.' % warnings
