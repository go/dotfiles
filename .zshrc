# First load original environment
source ~/.zshrc.pre-oh-my-zsh
export LSCOLORS=ExFxCxDxBxegedabagacad

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="cloud"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx brew python java emoji-clock mvn tmux vagrant)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=$PATH:/usr/share/java/maven-3.0.3/bin:/Users/go/work/cloudstack_api:/home/go/work/gsutil:/export/go/work/firefox:/usr/local/bin:/sbin:/bin:.:/Users/go/work/twittext:/usr/games/bin:/usr/bin:/usr/sbin:/usr/local/bin:/Users/go/bin:/Users/go/.rvm/bin

export LSCOLORS=ExFxCxDxBxegedabagacad
export ZLSCOLORS=$LSCOLORS

export KEYTIMEOUT=1

export MAVEN_OPTS="-Xms512m -Xmx1024m -XX:PermSize=256m -XX:MaxPermSize=512m"
export XML_CATALOG_FILES="/usr/local/etc/xml/catalog"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

alias updatedb=/usr/libexec/locate.updatedb
