. ~/.profile
bindkey -e

autoload -Uz compinit
compinit

HISTFILE="$HOME/.zsh_history"
HISTSIZE=65535
SAVEHIST="$HISTSIZE"

setopt PROMPT_SUBST
setopt HIST_IGNORE_DUPS
