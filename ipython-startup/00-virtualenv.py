import os
import sys
import distutils.spawn # for < 3.3 (shutil for >= 3.3)
import subprocess

if 'VIRTUAL_ENV' in os.environ:
    py_version = sys.version_info[:2] # formatted as X.Y
    py_infix = os.path.join('lib', ('python%d.%d' % py_version))
    # virtual_site = os.path.join(os.environ.get('VIRTUAL_ENV'), py_infix, 'site-packages')

    # exclude PYTHONPATH
    sys.path = [p for p in sys.path if all([not p.count(path) for path in os.environ.get('PYTHONPATH').split(':')]) and len(p)]

    # add virtualenv site
    # ADD2: insert(0 is wrong and breaks conformance of sys.path
    # sys.path.insert(1, virtual_site)

del os, sys, distutils.spawn, subprocess
