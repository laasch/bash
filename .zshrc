# Path to your oh-my-zsh installation.
export ZSH=/home/slaasch/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="zhann"
ZSH_THEME="ys"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nano ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

# shawn's aliases
alias mka="nano ~/.zshrc && source ~/.zshrc"
alias gpull="git pull origin"
alias hx="history | grep"
alias bx="cat ~/.zshrc | grep"
alias composer="php /bin/composer.phar"
alias pcli="php ~/sites/index.php $1 $2"

alias scaffold="php ~/scaffolding/scaffold.php"
alias ..='cd ..'
alias chkdbg="cd ~/sites/application && grep -r log_message * && grep -r var_dump * && cd .."

alias cloud="cd /opt/rags-cloud/ && bin/daemon/rags-daemon start && ps aux | grep zmq"

alias gsta="git status"
alias gadd="git add"
alias gcmt="git commit -am"
alias gcmm="git commit -m"
alias gcmi="git commit -am 'interim'"
alias gred="git rebase develop"
alias gcon="git rebase --continue ; git status"
alias gski="git rebase --skip ; git status"
alias gbrl="git branch --list"
alias gbrr="git branch -r"
alias gchk="git checkout"
alias gdev="git checkout develop"
alias gpod="git fetch ; git checkout develop ; git pull origin develop"
alias gdbe="git checkout develop-backend"
gnew(){ git checkout -b RWA-$1-$2 }
gnem(){ git checkout -b RMA-$1-$2 }
gndm(){ git checkout develop ; git fetch ; git pull ; git checkout -b RMA-$1-$2 }
alias gfet="git fetch"
gign(){ echo '$1' >> .gitignore ; git rm -r --cached $1 ; git commit -am 'ignore $1' }
alias gpus="git push origin"

search(){ grep -r $2 application/* | grep -v application/logs ; ll $1/$2.php ; git log -n 1 $1/$2.php | cat }

alias artisan="php artisan"

mig(){ php artisan make:migration create_$1_table }

alias clearall="php artisan view:clear ; php artisan cache:clear"

alias upddt="sudo ntpdate time.nist.gov"
dev(){ cd ~/Development/$1 }

alias dstat="ps aux | grep 'request-daemon\|agent-broker\|taskworker\|set-network\|set-config' | grep -v grep"

alias nopayon="php ~/Development/ragstool.php nopay slaasch@readyags.com 1"
alias nopayoff="php ~/Development/ragstool.php nopay slaasch@readyags.com 0"
alias makeorg="php ~/Development/ragstool.php setrole slaasch@readyags.com org"
alias makedriver="php ~/Development/ragstool.php setrole slaasch@readyags.com driver"
alias ragstool="php ~/Development/ragstool.php"
