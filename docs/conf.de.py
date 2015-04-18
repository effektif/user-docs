import os
import sys

PROJET_PATH = os.path.dirname(os.path.realpath(__file__))

sys.path.append(PROJET_PATH)

from conf import *

from i18n import copy_images

copy_images('de')
