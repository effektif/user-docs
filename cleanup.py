import os

from docs.i18n import remove_stale_data

CWD = os.path.dirname(os.path.realpath(__file__))

remove_stale_data('%s/docs/en' % CWD)
remove_stale_data('%s/docs/de' % CWD)
