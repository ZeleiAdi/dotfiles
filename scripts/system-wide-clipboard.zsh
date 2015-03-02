xsel-kill-line () {
  zle kill-line
  echo -n "$CUTBUFFER" | xsel -i
}

xsel-yank () {
  CUTBUFFER="$(xsel -o </dev/null)"
  zle yank
}

zle -N xsel-kill-line
zle -N xsel-yank

bindkey '^K'   pb-kill-line
bindkey '^Y'   pb-yank