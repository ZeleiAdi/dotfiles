short_pwd() {
  exit=$?
  pwd | awk '{ sub(ENVIRON["HOME"], "~"); print }'
  return $exit
}

branch() {
  exit=$?
  git rev-parse 2>/dev/null && printf "[%s]"  "$(git rev-parse --abbrev-ref HEAD)"
  return $exit
}

dollar() {
  if [ "$?" -eq 0 ]
  then
    printf '$'
  else
    printf "\033[31m\$\033[39m"
  fi
}

set_prompt() {
  PS1='$(short_pwd)$(branch) $(dollar) '
}

m() {
  if [ -f Makefile ]; then
    make "$@"
  else
    if [ "$PWD" = / ]; then
      return 1
    else
      (cd ..; m "$@")
    fi
  fi
}

t() {
  m test
}

e() {
 emacsclient -c "$@" || ( emacs --daemon && emacsclient -c "$@" )
}

PATH="$HOME/bin:$PATH"
if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi
eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"

export VISUAL='e'
export EDITOR='e'
export PAGER='less'
export LESS='-R'

set_prompt

