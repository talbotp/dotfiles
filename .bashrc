# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Prevent terminal hanging on missing commands
unset command_not_found_handle

########################################
##  Functions
########################################

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

nohup_nolog() {
  if [ $# -ne 1 ]; then
    echo "Please provide one argument."
  else
    nohup $1 >& /dev/null &
  fi
}

########################################
## Aliases
########################################

alias ls='ls --color=auto'
alias la="ls --all"
alias ll="ls --all -l"

alias g="git"

alias cl="clear"

# Typically ignore nohup logs
alias nh="nohup_nolog"

alias g-c="nohup_nolog google-chrome"
alias ff="nohup_nolog firefox"

alias idea="nohup_nolog /home/parker/bin/ide/idea-IC-191.7479.19/bin/idea.sh"

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

# Erlang
ERL_PATH="$HOME/bin/erlang/23.0/activate"
if [ -f $ERL_PATH ]; then
    source "$ERL_PATH"
fi

# Command prompt
WHITE="\[\033[1;37m\]"
YELLOW="\[\033[1;33m\]"
NO_COLOUR="\[\033[0m\]"
GREEN="\[\033[1;32m\]"

PS1="\[\033[1;37m\]λ $GREEN\w$YELLOW\$(parse_git_branch)$NO_COLOUR "
