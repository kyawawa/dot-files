dot_dir=$(dirname `readlink -f $HOME/.bashrc`)
source $dot_dir/.bashrc

alias grep='grep --color=auto --exclude-dir=.svn'

# source ~/colcon_ws/.venv/bin/activate
export PYTHONPATH=$(python -c 'import site; print(site.getsitepackages()[0])'):$PYTHONPATH

## default ros package
ros_ws_file=${dot_dir}/ros_current_ws
unset dot_dir
default_ros_workspace=$(printf "cat <<++EOS\n`cat ${ros_ws_file}`\n++EOS\n" | sh)
source ${default_ros_workspace}/setup.bash
unset default_ros_workspace

if [ -f $HOME/.local/src/ros2cd/roscd.sh ]; then
    source ~/.local/src/ros2cd/roscd.sh
fi
# export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

function print_ws_path () {
    if [ $ROS_VERSION -eq 2 ]; then
        if [ $COLCON_PREFIX_PATH ]; then
            echo $COLCON_PREFIX_PATH
        else
            echo $AMENT_CURRENT_PREFIX
        fi
        return 0
    fi

    # Copy from rosbash
    IFS=":" read -a workspaces <<< "$CMAKE_PREFIX_PATH"
    for ws in "${workspaces[@]}"; do
        if [ -f $ws/.catkin ]; then
            echo ${ws}
            return 0
        fi
    done
}

function set_cur_ws_as_default () {
    (
        print_ws_path > ${ros_ws_file}
    )
}

PS1='[$(print_ws_path | rev | cut -f2 -d '/' | rev)] '"$PS1"

# vcstool
if [ -f /usr/share/vcstool-completion/vcs.bash ]; then
    source /usr/share/vcstool-completion/vcs.bash
fi

## Rviz for a laptop user
export OGRE_RTT_MODE=Copy

## Rviz graphics problem
# http://wiki.ros.org/rviz/Troubleshooting
LIBGL_ALWAYS_SOFTWARE=1

## format of log messages
export ROSCONSOLE_FORMAT='[${severity}] [${time}]: ${message}' # default

# .bashrcに書くとROSが先に来て面倒
# export PKG_INSTALL_DIR=${HOME}/install
# export PKG_CONFIG_PATH=${PKG_INSTALL_DIR}/lib/pkgconfig:$PKG_CONFIG_PATH
# export LD_LIBRARY_PATH=${PKG_INSTALL_DIR}/lib:${LD_LIBRARY_PATH}
# export PATH=${PKG_INSTALL_DIR}/bin:$PATH

## Please comment in if you install choreonoid to $HOME/install
# export CNOID_INSTALL_DIR=${PKG_INSTALL_DIR}
# export CNOID_RTM_DIR=/opt/ros/${ROS_DISTRO}
export CNOID_USE_GLSL=1

##### dot.bashrc.ros #####
alias cs='catkin build --this --start-with-this'

if [ ! $INSIDE_EMACS ] && type "rlwrap" > /dev/null 2>&1; then
    alias roseus='rlwrap roseus'
fi
