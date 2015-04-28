import os
import sys

CWD = os.path.dirname(os.path.realpath(__file__))
PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

from i18n import prepare_language

prepare_language(CWD, lang='de')

language = 'de'
