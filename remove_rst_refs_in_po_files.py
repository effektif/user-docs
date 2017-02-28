import os
import sys
from shutil import move
# remove .rst line references from .po files to avoid unnecessarily large git diffs
for subdir, dirs, files in os.walk('docs/_locale/' + sys.argv[1]):
    for file in files:
        if file.endswith('.po'):
            path = os.path.join(subdir, file)
            with open(path) as infile:
               with open(file,'w') as new_file:
                for line in infile:
                    if '.rst:' not in line:
                        new_file.write(line)
            os.remove(path)
            move(file, path)