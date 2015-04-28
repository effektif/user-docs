import os

from shutil import copyfile, rmtree, copytree

from conf import LANGUAGES

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
    BLACKLIST = LANGUAGES + [
        '_build',
        'Makefile',
        '__init__.py',
        'conf.py',
        'conf.pyc',
        dest.replace(PROJET_PATH, '')
    ]

    print "using %s as destination" % dest

    for name in os.listdir(origin):
        if name in BLACKLIST:
            # print "ignoring %s" % name
            continue

        source = '%s/%s' % (origin, name)
        target = '%s/%s' % (dest, name)

        if os.path.isfile(source):
            # print "copy file %s to %s" % (name, "%s/%s" % (dest, name))
            copyfile(source, target)
        else:
            # print "copy folder %s to %s" % (name, dest)
            copytree(source, target)

def remove_stale_data(path):
    for name in os.listdir(path):
        BLACKLIST = ['conf.py', '.gitignore']

        if name in BLACKLIST:
            continue

        target = '%s/%s' % (path, name)

        if os.path.isfile(target):
            # print 'removing file %s' % target
            os.remove(target)
        else:
            # print 'removing dir %s' % target
            rmtree(target)

def prepare_language(cwd, path=PROJET_PATH, lang=DEFAULT_LANG):
    copy_images(lang=lang, path=path)

    remove_stale_data(cwd)

    copy_sources(cwd, origin=path)

