import os
import sys

PROJET_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJET_PATH)

from conf import *

from i18n import copy_images

copy_images(lang='de', path=PROJET_PATH)

os.chdir(PROJET_PATH)
