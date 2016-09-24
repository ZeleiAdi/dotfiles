prompt() {
  last_status=$1;

  short_pwd() {
    awk 'BEGIN { sub(ENVIRON["HOME"], "~", ENVIRON["PWD"]); print(ENVIRON["PWD"]) }'
  }

  branch() {
    if git rev-parse 2>/dev/null; then
      git rev-parse --abbrev-ref HEAD 2>/dev/null
    fi
  }

  dollar() {
    if [ "$last_status" -eq 0 ]; then
      printf '%s' '$'
    else
      printf '\001\033[31m\002%s\001\033[39m\002' '$'
    fi
  }

  printf '\001\033]2;%s\007\002' "$(short_pwd)"
  printf '%s[%s] %s ' "$(short_pwd)" "$(branch)" "$(dollar)"
  unset -v last_status
  unset -f branch short_pwd dollar
}

PS1='$(prompt $?)'

if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

PATH="$HOME/perl5/bin:$PATH"
PATH="$HOME/bin:$PATH"
PATH="$HOME/.perl6/bin:$PATH"

export VISUAL='vim'
export EDITOR='vim'
export PAGER='less'

export PERL5LIB="$HOME/perl5/lib/perl5"

export LESS='-R'

alias m='makeup'
alias t='makeup test'
alias d='git diff --no-index'
alias l='ls -1'
alias ll='ls -lh'
alias la='ls -Alh'
