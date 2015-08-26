# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -f ~/.bashrc.aliases ]; then
	. ~/.bashrc.aliases
fi

# HAX.TOR aliases and functions
if [ -f ~/.bashrc.haxtor ]; then
	. ~/.bashrc.haxtor
fi

# VirtualBox
if [ -r ~/.bashrc.vbox ]; then
	. ~/.bashrc.vbox
fi

# virsh
if [ -r ~/.bashrc.virsh ]; then
	. ~/.bashrc.virsh
fi

# git-promt; PS1 is set inside it no matter with git or not
if [ -f ~/.bashrc.git ]; then
	. ~/.bashrc.git
fi
