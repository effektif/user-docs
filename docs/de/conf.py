import os, sys, subprocess

CWD = os.path.dirname(os.path.realpath(__file__))
PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

latex_documents = [
  ('index', 'SignavioWorkflowUserGuide.tex', u'Signavio Workflow Nutzerhandbuch',
   ", ".join(AUTHORS), 'manual'),
]

language = 'de'

prepare(CWD, PROJECT_PATH, language)


def build_search_snippets(app, docname):
    clean_txts(PROJECT_PATH, language)


def setup(app):
    app.connect('build-finished', build_search_snippets)
