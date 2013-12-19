#!/bin/sh
export LC_ALL=zh_CN.UTF-8
export LANG=zh_CN.UTF-8
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=fcitx
export XMODIFIERS=@im=fcitx
export XIM=fcitx 
export XIM_PROGRAM=/usr/local/bin/fcitx 
export XMODIFIERS=@im=fcitx
exec fcitx&
exec xcompmgr&
exec awesome
