import os
import re

from shutil import copyfile, rmtree, copytree

DEFAULT_LANG = 'en'
PROJET_PATH = os.path.dirname(os.path.realpath(__file__))

def copy_images(lang=DEFAULT_LANG, path=PROJET_PATH):
    if os.path.exists('%s/_static/images' % path):
        rmtree('%s/_static/images' % path)

    os.makedirs('%s/_static/images' % path)

    for file_name in os.listdir('%s/_static/_images/%s' % (path, DEFAULT_LANG)):
        destination = '%s/_static/images/%s' % (path, file_name)

        if not lang or lang == DEFAULT_LANG:
            copyfile('%s/_static/_images/%s/%s' % (path, DEFAULT_LANG, file_name), destination)
        else:
            substitute_name = '%s/_static/_images/%s/%s' % (path, lang, file_name)

            if os.path.isfile(substitute_name):
                copyfile(substitute_name, destination)
            else:
                copyfile('%s/_static/_images/%s/%s' % (path, DEFAULT_LANG, file_name), destination)

def copy_sources(dest, origin=PROJET_PATH):
    BLACKLIST = [
        '_build',
        'Makefile',
        '__index__.py',
        'conf.py',
        'conf.pyc',
        dest.replace(PROJET_PATH, '')
    ]

    print "using %s as destination" % dest

    for name in os.listdir(origin):
        does_match = [re.search(item, name) for item in PATTERNS]

        print does_match

        if name in BLACKLIST:
            print "ignoring %s" % name
            continue

        if os.path.isfile(name):
            print "copy file %s to %s" % (name, "%s/%s" % (dest, name))
            # copyfile(name, '%s/%s' % (dest, name))
        else:
            print "copy folder %s to %s" % (name, dest)
            # copytree(name, dest)
