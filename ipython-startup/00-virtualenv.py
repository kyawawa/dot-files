import os
import sys

if 'VIRTUAL_ENV' in os.environ:
    py_version = sys.version_info[:2] # formatted as X.Y
    py_infix = os.path.join('lib', ('python%d.%d' % py_version))
    virtual_site = os.path.join(os.environ.get('VIRTUAL_ENV'), py_infix, 'site-packages')
    dist_site = os.path.join('/usr', py_infix, 'dist-packages')

    # OPTIONAL: exclude debian-based system distributions sites
    # ADD1: sys.path must be a list
    sys.path = list(filter(lambda p: not p.startswith(dist_site), sys.path))

    # add virtualenv site
    # ADD2: insert(0 is wrong and breaks conformance of sys.path
    sys.path.insert(1, virtual_site)
