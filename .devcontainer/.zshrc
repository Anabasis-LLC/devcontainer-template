# history
setopt histignorealldups sharehistory
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh_history

# aliases
alias ls="ls -al --color"
alias mv="mv -iv"
alias cp="cp -iv"
alias rm="rm -iv"
alias ..="cd .."
alias screen="TERM=screen screen"
alias psg="ps -ef | grep -v grep | grep $*"

# completion system
autoload -Uz compinit && compinit
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# env
export EDITOR=vi
export SCREENDIR=$HOME/.screen
export PATH=$PATH:$HOME/.local/bin

# Oh My Zsh - https://ohmyz.sh/
plugins=(git asdf docker node)
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

# Starship - https://starship.rs/
eval "$(starship init zsh)"

# asdf - https://asdf-vm.com/
. $HOME/.asdf/asdf.sh

# direnv - https://direnv.net/
eval "$(direnv hook zsh)"

# Neovim
alias vi="/usr/bin/nvim"
alias vim="/usr/bin/nvim"
