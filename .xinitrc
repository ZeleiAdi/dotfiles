#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

setxkbmap 'us,hu' ',qwerty' caps:ctrl_modifier grp:win_space_toggle grp_led:caps
xset b off
xrdb -merge .Xresources
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
exec i3
