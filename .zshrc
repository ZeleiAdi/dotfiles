bindkey -e

autoload -Uz compinit
compinit

HISTFILE="$HOME/.history"
HISTSIZE=65535
SAVEHIST="$HISTSIZE"

WORDCHARS="$(echo $WORDCHARS | sed -r 's/_|-//')"

setopt PROMPT_SUBST;
source ~/.git-prompt.sh
PS1='%c$(__git_ps1 "[%s]") $ '

export EDITOR="vim"
export VISUAL="emacsclient -c"
export PAGER="less -R"

alias view='vim -R'
alias v='view'
alias edit='vim'
alias e='edit'
alias open='xdg-open'
alias o='open'

alias less='less -R'

if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"
PATH="$HOME/.perl5/bin:$PATH"

PATH="$HOME/scripts:$PATH"

export TERMINAL=st

export TEXT_VIMCOLOR_ANSI='Normal=bright_blue;Comment=italic bright_green;Constant=cyan;Identifier=blue;Statement=green;Preproc=orange;Type=yellow;Special=red;Underlined=violet;Error=bold red;Todo=bold magenta;'
