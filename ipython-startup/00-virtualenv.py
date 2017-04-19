import os
import sys
import distutils.spawn # for < 3.3 (shutil for >= 3.3)
import subprocess

if 'VIRTUAL_ENV' in os.environ:
    py_version = sys.version_info[:2] # formatted as X.Y
    py_infix = os.path.join('lib', ('python%d.%d' % py_version))
    # virtual_site = os.path.join(os.environ.get('VIRTUAL_ENV'), py_infix, 'site-packages')
    dist_site = os.path.join('/usr', py_infix, 'dist-packages')

    # OPTIONAL: exclude debian-based system distributions sites
    # ADD1: sys.path must be a list
    sys.path = [p for p in sys.path if not p.startswith(dist_site)]

    # OPTIONAL: exclude ros library path
    if distutils.spawn.find_executable('catkin_find'):
        # ros_path = list(filter(lambda p: p.count('lib'),
        #                        subprocess.check_output(['catkin_find']).decode().split('\n')))
        ros_path = [p for p in subprocess.check_output(['catkin_find']).decode().split('\n')
                    if p.count('lib')]
        sys.path = [p for p in sys.path if all([not p.count(ros) for ros in ros_path]) and len(p)]

    # add virtualenv site
    # ADD2: insert(0 is wrong and breaks conformance of sys.path
    # sys.path.insert(1, virtual_site)

del os, sys, distutils.spawn, subprocess
