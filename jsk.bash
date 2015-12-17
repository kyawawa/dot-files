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

## ROS DISTRO
for rosdistro in indigo hydro
do
    if [ -e $HOME/ros/$rosdistro ]; then
        source $HOME/ros/$rosdistro/devel/setup.bash
        break
    fi
done

export ROS_WORKSPACE=${HOME}/ros/${ROS_DISTRO}

## Rviz for a laptop user
export OGRE_RTT_MODE=Copy

## Rviz graphics problem
# http://wiki.ros.org/rviz/Troubleshooting
LIBGL_ALWAYS_SOFTWARE=1

## format of log messages
export ROSCONSOLE_FORMAT='[${severity}] [${time}]: ${message}' # default

##### dot.bashrc.ros #####
#euslib
export CVSDIR=~/prog
alias eus='roseus "(jsk)" "(rbrain)"'

alias rtccd='cd $HOME/ros/${ROS_DISTRO}_parent/src/hrpsys/rtc'
if [ ! $EMACS ] && type "rlwrap" > /dev/null 2>&1; then
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
