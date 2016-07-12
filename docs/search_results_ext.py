import shutil, subprocess

def build_search_snippets(app, docname):
    shutil.rmtree('_build/html/_sources')
    build_txt = subprocess.Popen(['sphinx-build', '-a', '-b', 'text', '..', '../_build_txt'])
    build_txt.wait()
    clean_txts(PROJECT_PATH)
    shutil.move('../_build_txt/' + language, '_build/html')
    shutil.move('_build/html/' + language, '_build/html/_sources')

def setup(app):
    app.connect('build-finished', build_search_snippets)