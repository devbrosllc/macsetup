# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/go_workspaces/main/bin:$PATH

# PowerLevel9K Fonts
#POWERLEVEL9K_MODE='awesome-fontconfig'

# Path to your oh-my-zsh installation.
export ZSH="/Users/jackmo@kainos.com/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Custom prompt
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs)

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#

# ALIASES
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias h=$(echo history)
alias dir=$(echo ls)
alias kg='kubectl get'
alias kgpo='kubectl get pods'
alias kd='kubectl describe'
alias kdsvc='kubectl describe svc'
alias kdpo='kubectl describe pod'
alias kgcf='kubectl get configmap'
alias kdcf='kubectl describe configmap'
alias kgin='kubectl get ingress'
alias kdin='kubectl describe ingress'
alias kl='kubectl logs'
alias ksys='kubectl --namespace=kube-system'
alias kgpoall='kubectl get pods --all-namespaces'
alias kgsvc='kubectl get service'
alias kgsvcall='kubectl get service --all-namespaces'
alias kx='kubectl exec -it'

# Go env vars
export GOPATH=~/go_workspaces/main
#export GOBIN=$GOPATH/bin
# Include k8s plugins
export PATH=$PATH:~/.kube/plugins/jordanwilson230
