# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
# PS1 is set inside .bashrc.git it no matter with git or not
for f in ~/.bashrc.* ; do
# The existance check would make sence if I ever move my .bashrc.* to some separate dir and then clone this file but no that dir to some other host
	[ -f ${f} ] && . ${f}
done
