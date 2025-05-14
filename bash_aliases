#!/bin/bash
#
# system
alias update='sudo apt update && sudo apt upgrade -y'
alias cleanram='sudo sync && echo 3 | sudo tee /proc/sys/vm/drop_caches'
alias diskspace='df -h | grep -v "tmpfs"'
alias restart='sudo systemctl restart'

# safety nets
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# list
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -l'
alias lla='ls -al'
alias la='ls -A'
alias l='ls -CF'
alias lt='ls -lhtr --reverse'

# network
alias myip='curl ifconfig.me'
alias ports='sudo netstat -tulnp'

# git
alias gs='git status'
alias ga='git add'
alias gc='git commit -m'
alias gp='git push'

# RP
alias temp='vcgencmd measure_temp'
