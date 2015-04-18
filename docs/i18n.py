import os

from shutil import copyfile, rmtree

DEFAULT_LANG = 'en'

def copy_images(lang=DEFAULT_LANG):
    if os.path.exists('_static/images'):
        rmtree('_static/images')

    os.makedirs('_static/images')

    for file_name in os.listdir('_static/_images/%s' % DEFAULT_LANG):
        destination = '_static/images/%s' % file_name

        if not lang or lang == DEFAULT_LANG:
            copyfile('_static/_images/%s/%s' % (DEFAULT_LANG, file_name), destination)
        else:
            substitute_name = '_static/_images/%s/%s' % (lang, file_name)

            if os.path.isfile(substitute_name):
                copyfile(substitute_name, destination)
            else:
                copyfile('_static/_images/%s/%s' % (DEFAULT_LANG, file_name), destination)
