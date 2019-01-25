#!/bin/sh

# the PATH

export LANG=zh_CN.UTF-8
export LC_CTYPE=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"

xrdb -merge ~/.Xresources

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec fcitx &
exec udiskie &
exec xcompmgr -Ss -n -Cc -fF -I-10 -O-10 -D1 -t-3 -l-4 -r4 &
exec feh --bg-scale ~/Pictures/538e8df38c990.jpg &
#exec startlxde
exec i3

