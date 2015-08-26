# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

# ssh-agent initialization
if [ -r ~/.bash_profile.ssh-agent ]; then
	. ~/.bash_profile.ssh-agent
fi
