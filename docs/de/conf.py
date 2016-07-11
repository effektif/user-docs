import os
import sys

CWD = os.path.dirname(os.path.realpath(__file__))
PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

language = 'de'

prepare(CWD, PROJECT_PATH, language)

import subprocess
build_txt = subprocess.Popen(['sphinx-build', '-a', '-D', 'language="de"', '-b', 'text', '..', '../_build_txt'])
build_txt.wait()
subprocess.Popen(['mv', '../_build_txt/text', '/_build/html/_sources'])
