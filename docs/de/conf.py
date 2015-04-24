import os
import sys

PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

from i18n import copy_images

copy_images(lang='de', path=PROJECT_PATH)
