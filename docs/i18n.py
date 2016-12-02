import os

from termcolor import colored
from tabulate import tabulate
from shutil import copyfile, rmtree, copytree

# all available languages of the documentation
LANGUAGES = ['de', 'en', 'fr']

DEFAULT_LANG = 'en'
PROJET_PATH = os.path.dirname(os.path.realpath(__file__))

def copy_recursive(root, dest, lang=DEFAULT_LANG, path='', silent=False):
    directory = '%s/%s%s' % (root, DEFAULT_LANG, path)

    missing_files = []

    for name in os.listdir(directory):
        if name.startswith('.'):
            continue

        source = '%s/%s' % (directory, name)
        target = '%s%s/%s' % (dest, path, name)

        source_i18n = '%s/%s%s/%s' % (root, lang, path, name)

        if os.path.exists(source_i18n):
            source = source_i18n
        else:
            if not os.path.isdir(source):
                missing_files.append([path or '/', name])

        if os.path.isfile(source):
            if silent:
                continue

            if not os.path.exists(os.path.dirname(target)):
                os.makedirs(os.path.dirname(target))

            copyfile(source, target)
        else:
            missing_files = missing_files + copy_recursive(root, dest, lang=lang, path='%s/%s' % (path, name), silent=silent)

    return missing_files

def copy_images(lang=DEFAULT_LANG, path=PROJET_PATH, silent=False):
    if not silent:
        if os.path.exists('%s/_static/images' % path):
            rmtree('%s/_static/images' % path)

        os.makedirs('%s/_static/images' % path)

    root = '%s/_static/_images' % path
    destination = '%s/_static/images' % path

    missing_files = copy_recursive(root, destination, lang=lang, silent=silent)

    if missing_files:
        missing_files = sorted(missing_files, key=lambda x: x[0])

        print colored('\nNot all images have translations!', 'red')
        print colored('The following files still need to be translated to \"%s\"\n' % lang, 'yellow')
        print tabulate(missing_files, headers=['Folder', 'File'])

def copy_sources(dest, origin=PROJET_PATH):
    BLACKLIST = LANGUAGES + [
        '_build',
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
