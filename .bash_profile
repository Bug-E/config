# for pythonic virtual environments
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.vnvs

alias grep="grep -i"

# ssh agent for keeping ssh key pass cached
eval "$(ssh-agent -s)"

# map caps lock to f12 for guake
xmodmap -e "keycode 66 = F12" -e 'clear Lock'
