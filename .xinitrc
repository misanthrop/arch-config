#!/bin/sh
export GTK2_RC_FILES=~/.gtkrc-2.0
export QT_QPA_PLATFORMTHEME=qt5ct

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

#exec openbox-session
exec awesome
#exec i3
