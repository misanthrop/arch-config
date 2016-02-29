#!/bin/sh
export GTK2_RC_FILES=~/.gtkrc-2.0
export QT_STYLE_OVERRIDE=gtk

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

exec openbox-session
