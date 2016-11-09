import os, sys, subprocess

CWD = os.path.dirname(os.path.realpath(__file__))
PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

language = 'fr'

prepare(CWD, PROJECT_PATH, language)


def build_search_snippets(app, docname):
    clean_txts(PROJECT_PATH, language)


def setup(app):
    app.connect('build-finished', build_search_snippets)
