dot_dir=$(dirname `readlink -f $HOME/.bashrc`)
source $dot_dir/.bashrc

alias grep='grep --color=auto --exclude-dir=.svn'

## default ros package
default_ros_workspace=$(printf "cat <<++EOS\n`cat $dot_dir/ros_current_ws`\n++EOS\n" | sh)
source ${default_ros_workspace}/setup.bash
unset default_ros_workspace

function print_ws_path () {
    # Copy from rosbash
    IFS=":" read -a workspaces <<< "$CMAKE_PREFIX_PATH"
    for ws in "${workspaces[@]}"; do
        if [ -f $ws/.catkin ]; then
            echo ${ws}
            return 0
        fi
    done
}

function set_cur_ws () {
    (
        print_ws_path > $dot_dir/ros_current_ws
    )
}

PS1='[$(print_ws_path | rev | cut -f2 -d '/' | rev)] '"$PS1"

## Rviz for a laptop user
export OGRE_RTT_MODE=Copy

## Rviz graphics problem
# http://wiki.ros.org/rviz/Troubleshooting
LIBGL_ALWAYS_SOFTWARE=1

## format of log messages
export ROSCONSOLE_FORMAT='[${severity}] [${time}]: ${message}' # default

# .bashrcに書くとROSが先に来て面倒
export PKG_INSTALL_DIR=${HOME}/install
export PKG_CONFIG_PATH=${PKG_INSTALL_DIR}/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=${PKG_INSTALL_DIR}/lib:${LD_LIBRARY_PATH}
export PATH=${PKG_INSTALL_DIR}/bin:$PATH

## Please comment in if you install choreonoid to $HOME/install
# export CNOID_INSTALL_DIR=${PKG_INSTALL_DIR}
# export CNOID_RTM_DIR=/opt/ros/${ROS_DISTRO}
export CNOID_USE_GLSL=1

##### dot.bashrc.ros #####
alias cs='catkin build --this --start-with-this'

if [ ! $INSIDE_EMACS ] && type "rlwrap" > /dev/null 2>&1; then
    alias roseus='rlwrap roseus'
fi
