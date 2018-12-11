# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME=""

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
plugins=(
	vi-mode
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
stty -ixon

if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx &> /dev/null
fi

alias cdrcdesk="ssh -CYt ucfnbso@squarepeg.geog.ucl.ac.uk ssh -CX ucfnbso@128.40.199.112"
alias cdrcdesk_a="ssh -CYt ucfnbso@archibald.geog.ucl.ac.uk ssh -CX ucfnbso@128.40.199.112"
alias cdrcdesk_t="ssh -CYt ucfnbso@triangleting.geog.ucl.ac.uk ssh -CX ucfnbso@128.40.199.112"
alias cdrcdesk_c="ssh -CYt ucfnbso@roundabout.geog.ucl.ac.uk ssh -CX ucfnbso@128.40.199.112"

if [[ $HOST = "cdrc-desk" ]]; then
	alias cdrcdb="ssh -C ucfnbso@cdrc-db.geog.ucl.ac.uk";
else
	alias cdrcdb="ssh -Ct ucfnbso@square.geog.ucl.ac.uk ssh -C ucfnbso@cdrc-db.geog.ucl.ac.uk";
	alias cdrcdb_a="ssh -Ct ucfnbso@arch.geog.ucl.ac.uk ssh -C ucfnbso@cdrc-db.geog.ucl.ac.uk";
	alias cdrcdb_t="ssh -Ct ucfnbso@triangle.geog.ucl.ac.uk ssh -C ucfnbso@cdrc-db.geog.ucl.ac.uk";
	alias cdrcdb_c="ssh -Ct ucfnbso@circle.geog.ucl.ac.uk ssh -C ucfnbso@cdrc-db.geog.ucl.ac.uk";
fi

alias garageinc="ssh -C bala@164.132.196.212"
alias awkc="awk -vFPAT='[^,]*|\"[^\"]*\"' -v OFS=','"
alias web=qutebrowser
alias r=rtichoke


if [ -n "${TMUX+1}" ]; then
	PROMPT="%{$terminfo[bold]$fg[red]%}$(tmux display-message -p '#S')-%13>>%m%>> >> %{$reset_color%}"
	TERM=screen-256color
else
	PROMPT="%{$terminfo[bold]$fg[red]%}%13>>%m%>> >> %{$reset_color%}"
fi

echo -e '\033[?112c'
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# export TERM=screen-256color

clear
