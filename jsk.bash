dot_dir=$(dirname `readlink -f $HOME/.bashrc`)
source $dot_dir/.bashrc

##### JSK settings #####
## Alias Commands
#alias rm='rm -i'
#alias cp='cp -i'
#alias mv='mv -i'
alias grep='grep --color=auto --exclude-dir=.svn'

## SVN and SSH
export SSH_USER=ishikawa
export SVN_SSH="ssh -l ${SSH_USER}"

# #
# # Start up ssh-agent if it's not running
# SSHAGENT=/usr/bin/ssh-agent
# SSHAGENTARGS="-s"
# if [ -z "$SSH_AUTH_SOCK" -a -x "$SSHAGENT" ]; then
#   eval `$SSHAGENT $SSHAGENTARGS`
#   trap "kill $SSH_AGENT_PID" 0
# else
#   echo SSH Agent running
# fi
# #
# # Add my private key
# if [[ -z `ssh-add -L | grep id_rsa` ]]; then
#        ssh-add ~/.ssh/id_rsa
# fi

## default ros package
default_ros_workspace=$(printf "cat <<++EOS\n`cat $dot_dir/ros_current_ws`\n++EOS\n" | sh)
source ${default_ros_workspace}/setup.bash
unset default_ros_workspace

function set_cur_ws () {
    (
        roscd
        pwd > $dot_dir/ros_current_ws
    )
}

function print_ws_path () {
    printf "[$(roscd; echo `pwd` | rev | cut -f2 -d '/' | rev)]"
}

PS1='$(print_ws_path) '$PS1

## Rviz for a laptop user
export OGRE_RTT_MODE=Copy

## Rviz graphics problem
# http://wiki.ros.org/rviz/Troubleshooting
LIBGL_ALWAYS_SOFTWARE=1

## format of log messages
export ROSCONSOLE_FORMAT='[${severity}] [${time}]: ${message}' # default

export CNOID_INSTALL_DIR=/usr/local/src/choreonoid
export CNOID_RTM_DIR=/opt/ros/${ROS_DISTRO}
export PKG_CONFIG_PATH=${CNOID_INSTALL_DIR}/lib/pkgconfig:$PKG_CONFIG_PATH
export PATH=${CNOID_INSTALL_DIR}/bin:$PATH

##### dot.bashrc.ros #####
#euslib
export CVSDIR=~/prog
alias eus='roseus "(jsk)" "(rbrain)"'
alias rtccd='roscd hrpsys; cd rtc'
alias cs='catkin build --this --start-with-this'

if [ ! $INSIDE_EMACS ] && type "rlwrap" > /dev/null 2>&1; then
    alias roseus='rlwrap roseus'
fi

#
# for finding programs
#
function eusgrep () {
    EDIR=`rospack find euslisp`/jskeus
    SDIR=`rospack find roseus`/euslisp
    grep -iaH $@ ${EDIR}/eus/lisp/l/*.l \
                ${EDIR}/eus/lisp/geo/*.l \
                ${EDIR}/eus/lisp/comp/*.l \
                ${EDIR}/eus/lisp/opengl/src/*.l \
                ${EDIR}/eus/lisp/xwindow/*.l \
                ${EDIR}/irteus/*.l \
                ${SDIR}/*.l \
                ${CVSDIR}/euslib/jsk/*.l \
                ${CVSDIR}/euslib/rbrain/*.l
                ${CVSDIR}/jvl/app/eusjvl.l
}

function proggrep() {
    EDIR=`rospack find euslisp`/jskeus
    SDIR=`rospack find roseus`
    grep -iaH $@ ${EDIR}/eus/lisp/{c,l,geo,xwindow,comp,tool}/*.{l,c,h} \
                ${EDIR}/eus/lisp/opengl/src/*.{l,c,h} \
                ${EDIR}/irteus/*.{l,c,h} \
                ${SDIR}/*.{l,c,cpp,h} \
                ${SDIR}/{euslisp,scripts}/*.{l,c,cpp,h} \
                ${CVSDIR}/euslib/{jsk,rbrain}/*.{l,c,cpp,h} \
                ${CVSDIR}/hrp2/{corba,plugins}/*.{l,cpp,c,h} \
                ${CVSDIR}/rats/{plugins,app,src,include}/*.{l,cpp,c,h}
                # ${CVSDIR}/hoap/jvl/app/*.l \
                # ${CVSDIR}/jvl/src/*/*.{cpp,c,h} \
                # ${CVSDIR}/eusdyna/*.{l,cpp,c,h}
}
