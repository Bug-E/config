# for pythonic virtual environments
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.vnvs

alias grep="grep -i"
alias la="ls -aCF"
alias ll="ls -altrF"
alias l="ls -CF"

# ssh agent for keeping ssh key pass cached
eval "$(ssh-agent -s)"

# map caps lock to f12 for guake
xmodmap -e "keycode 66 = F12" -e 'clear Lock'

# https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git/git-completion.bash


NODE_PATH=/usr/local/lib/node_modules   # for bower
