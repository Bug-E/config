# This was most probably for brew
export PATH=/usr/local/bin:$PATH

# For virtual environment
export WORKON_HOME=~/.virt
source /usr/local/bin/virtualenvwrapper.sh

# A better prompt
export PS1="\u@\d \t \w\$ "

# Aliases
alias l='ls -l'
alias la='ls -lahr'
alias ll='ls -lrh'

# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git/git-completion.bash

NODE_PATH=/usr/local/lib/node_modules   # for bower
