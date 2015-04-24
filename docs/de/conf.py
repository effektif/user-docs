import os
import sys

from shutil import rmtree

CWD = os.path.dirname(os.path.realpath(__file__))
PROJECT_PATH = os.path.dirname(os.path.realpath('%s/..' % __file__))

sys.path.append(PROJECT_PATH)

from conf import *

from i18n import copy_images, copy_sources

copy_images(lang='de', path=PROJECT_PATH)

for name in os.listdir(CWD):
    BLACKLIST = ['_build', 'conf.py', '.gitignore']

    if name in BLACKLIST:
        continue

    if os.path.isfile(name):
        # print 'removing file %s' % name
        os.remove(name)
    else:
        # print 'removing dir %s' % name
        rmtree(name)

copy_sources(CWD, origin=PROJECT_PATH)
