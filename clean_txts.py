import os
import re
from shutil import move

# remove remaining markup from .txt files that are used to display search results

regexp = re.compile("\*\**|"
           "\=\=*|"
           "\~\~*|"
           "\^\^*|"
           "\-\-*|"
           "(\[image\])*")

for subdir, dirs, files in os.walk('docs/_build/html/_sources'):
    for file in files:
        if file.endswith('.txt'):
            path = os.path.join(subdir, file)
            with open(path) as infile:
                with open(file,'w') as new_file:
                    for line in infile:
                        line = re.sub(regexp, '', line)
                        new_file.write(line)
            os.remove(path)
            move(file, path)