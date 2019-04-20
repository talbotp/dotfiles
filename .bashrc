# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Path setup
PATH="$HOME/.local/bin:$HOME/bin:$PATH"
PATH="/usr/local/go/bin:$PATH"
export PATH

# Aliases
alias la='ls -a'
