# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# PS1 is set inside .bashrc.git it no matter with git or not
for f in .bashrc.* ; do
	. ${f}
done
