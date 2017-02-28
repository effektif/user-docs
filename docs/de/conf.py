import os, sys, subprocess

CWD = os.path.dirname(os.path.realpath(__file__))
PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

# spellcheck options
spelling_lang='de_DE'
tokenizer_lang='en_US'
spelling_word_list_filename='../spelling_wordlist_de.txt'

latex_documents = [
  ('index', 'SignavioWorkflowUserGuide.tex', u'Signavio Workflow Nutzerhandbuch',
   ", ".join(AUTHORS), 'manual'),
]

language = 'de'

prepare(CWD, PROJECT_PATH, language)
