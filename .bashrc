# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#################
# Functions
#################

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#################
# Aliases
#################

alias la="ls --all"
alias ll="ls --all -l"

alias g="git"

#################
# Exports
#################

# Golang 
export GOROOT="/usr/local/go"
export GOPATH="$HOME/workspaces/go"

# Path
PATH="$HOME/.local/bin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="$HOME/bin/scripts:$PATH"
PATH="$GOPATH/bin:$PATH"
PATH="$GOROOT/bin:$PATH"
export PATH

# Command prompt
PS1="\[\033[36m\]\u@\h \[\033[33;1m\]\W \033[00;32m\]\$(git_branch)\[\033[m\]$ "
export PS1

