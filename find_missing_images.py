import sys

from docs.i18n import copy_images

copy_images(lang=sys.argv[1], silent=True)
