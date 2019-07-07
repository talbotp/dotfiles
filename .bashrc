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

git_branch() {
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
ERL_PATH="/home/parker/bin/erlang/22.0/activate"
source ERL_PATH

# Command prompt
LIGHTGREEN="\[\033[1;32m\]"
LIGHTRED="\[\033[1;31m\]"
WHITE="\[\033[0;37m\]"
RESET="\[\033[0;00m\]"

export PS1="$LIGHTGREEN\u@\h $WHITE\W $LIGHTRED\$(git_branch)$RESET$ "
