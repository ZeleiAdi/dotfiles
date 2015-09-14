bindkey -e

autoload -Uz compinit
compinit

HISTFILE="$HOME/.history"
HISTSIZE=65535
SAVEHIST="$HISTSIZE"

setopt PROMPT_SUBST;
source ~/bin/git-prompt.sh
PS1='%c$(__git_ps1 "[%s]") $ '

export EDITOR='emacsclient -c'
export PAGER='less'
export LESS='R'

alias e='emacsclient -c'
alias o='xdg-open'

PATH="$HOME/bin:$PATH"

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

export TERMINAL=st
eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"
