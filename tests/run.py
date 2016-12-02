import nose, os, shutil, sys

build_dir = 'root'

if os.path.isdir(build_dir):
    shutil.rmtree(build_dir)

print('Running Workflow docs tests (with Python %s)...'\
    % sys.version.split()[0])
sys.stdout.flush()

nose.main()
