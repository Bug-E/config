# If you come from bash you might have to change your $PATH.
 export PATH=/opt/homebrew/anaconda3/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"
export REQUESTS_CA_BUNDLE=/opt/homebrew/anaconda3/phoneperoot.pem
plugins=(git dotenv macos)
alias work='cd ~/Documents/workspace/lending'
alias github='cd ~/github/dheeraj/'
alias prettyj='python -m json.tool | pygmentize -l json'
alias compile='mvn clean compile -DskipTests'
alias test-compile='mvn clean test-compile -DskipTests'
alias verify='mvn clean verify'
alias package='mvn clean package -DskipTests'
alias install='mvn clean install -DskipTests'
alias dep='mvn dependency:tree'
alias deptest='mvn test dependency:tree -DskipTests=true'
export MAVEN_OPTS="-Dmaven.build.cache.enabled=true"
export PATH="/opt/homebrew/opt/erlang@25/bin:$PATH"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
alias javaHome="/usr/libexec/java_home -V"
export PATH="$JAVA_HOME/bin:$PATH"
###### PROD SETUP ########
# ~/.ssh/config defined
# ~/.ssh/id_rsa_prod.pub imported

export SSH_AUTH_SOCK=/Users/dheeraj.agarwal1/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

alias sshs="ssh -i ~/.ssh/ecdacert_mankuthima.pub"
alias sshp="ssh -i /Users/dheeraj.agarwal1/.ssh/v2cert_may22.pub"
#alias sshprsys="sshp dev@grw-rsysloggrowth001.phonepe.mhw"
alias sshprsys="sshp dev@prd-common-rsyslog101.phonepe.al2"
#alias sshpbackup="sshp dev@prd-t3backup102.phonepe.mh1"
alias sshpbackup="sshp dev@prd-logbackupviewer101.phonepe.al2"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export DISABLE_UPDATE_PROMPT=true
export DISABLE_AUTO_UPDATE=true

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Add JBang to environment
alias j!=jbang
export PATH="$HOME/.jbang/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/dheeraj.agarwal1/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
