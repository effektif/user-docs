import os, sys, subprocess

CWD = os.path.dirname(os.path.realpath(__file__))
PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

latex_documents = [
  ('index', 'SignavioWorkflowUserGuide.tex', u"Le guide de l'utilisateur Signavio Workflow Accelerator",
   ", ".join(AUTHORS), 'manual'),
]

language = 'fr'

prepare(CWD, PROJECT_PATH, language)

def build_search_snippets(app, docname):
    if app.builder.name == 'html':
        try:
            clean_txts(PROJECT_PATH, language)
        except:
            pass


on_rtd = os.environ.get('READTHEDOCS', None) == 'True'

if on_rtd:
    def setup(app):
        app.connect('build-finished', build_search_snippets)
