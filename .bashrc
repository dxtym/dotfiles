HISTCONTROL=ignoreboth

shopt -s histappend

HISTSIZE=1000
HISTFILESIZE=2000

shopt -s checkwinsize

[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

alias lh='ls -lh'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

export PATH="$PATH:$HOME/.local/bin:$(go env GOPATH)/bin"

alias gs="git status"
alias gb="git branch"
alias gl="git log --oneline"

alias docker-compose="docker compose"
alias neofetch='neofetch --source ~/.config/neofetch/ascii.txt'

alias update="sudo apt update && sudo apt upgrade -y"
alias vpn="sudo openvpn --config /etc/openvpn/client/client.ovpn"

set -o vi

git_branch() {
    branch=$(git symbolic-ref --short HEAD 2>/dev/null)
    if [ -n "$branch" ]; then
        echo " [$branch]"
    fi
}

export PS1='\u@\h [\w]$(git_branch) $ '
