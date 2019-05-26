# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

########################################
##  Functions
########################################

git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

########################################
## Aliases
########################################

alias la="ls --all"
alias ll="ls --all -l"

alias g="git"

alias nh="nohup"

alias g-c="google-chrome"

########################################
## Exports
########################################

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
LIGHTGREEN="\[\033[1;32m\]"
LIGHTRED="\[\033[1;31m\]"
WHITE="\[\033[0;37m\]"
RESET="\[\033[0;00m\]"

export PS1="$LIGHTGREEN\u@\h $WHITE\W $LIGHTRED\$(git_branch)$RESET$ "
