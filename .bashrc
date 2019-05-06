# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Functions
git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Exports
PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/bin"
PATH="$PATH:$HOME/bin/scripts"
export PATH

export PS1="[\u@\h \W]\[\033[00;32m\] \$(git_branch)\[\033[00m\]\$ "

# Aliases
alias la="ls -a"
alias g="git"
