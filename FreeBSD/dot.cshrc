# $FreeBSD: src/etc/root/dot.cshrc,v 1.30 2007/05/29 06:37:58 dougb Exp $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
#

alias h		history 25
alias j		jobs -l
alias la	ls -aF
alias lf	ls -FA
alias ll	ls -lAF
alias mqoom   'mplayer mms://pub1.qmoon.net/911pop' #青檬音乐台
alias yhc   'mplayer http://202.165.183.72:1022/yhc-liv'#萤火虫网络电台
alias update-kernsrc     'cd /usr/src ;svn update'  #升级内核源码
alias update-gitsrc         'git clone https://github.com/freebsd/freebsd.git /usr/src/'
alias update-ports       'portsnap fetch update'    #升级 Ports
alias update-apps    'portmaster -aG'   #升级所有 Ports 应用
alias sx 'setenv LC_ALL zh_CN.UTF-8 && setenv LANG zh_CN.UTF-8 && startx && setenv LC_ALL C'                #设置 startx 情况下启动 Xorg 语言环境
alias rfetch    'make fetch-recursive'  #Ports 递归下载
alias zmake 'make WITH_LANG=zh_CN install clean'    #编译中文版
alias mv 'mv -i'                        #防止 mv 覆盖文件
alias cp 'cp -i'                        #防止 cp 覆盖文件
alias upufs 'mount /dev/ada0s1a /bootdir &&rsync -a -v --delete /boot /bootdir &&umount /bootdir' #update ufs
alias fq 'ssh -qTfnN -D 7070 vps'
alias cs 'ccache -s'
alias sl 'smartctl -a /dev/ada0 |grep Load_Cycle_Count'
alias mkdoc "make FORMATS='txt pdf'"
alias ta "tmux attach-session"
alias mktmp "mdmfs -s 3g md9 /usr/obj"


#alias ow "wpa_supplicant -iwlan0 -c/etc/wpa_supplicant.conf &"
# A righteous umask
umask 22

set path = (/usr/local/libexec/ccache /sbin /bin /usr/sbin /usr/bin /usr/games /usr/local/sbin /usr/local/bin /usr/local/kde4/bin $HOME/bin)

setenv	EDITOR	vim                    #设置 VIM 为默认编辑器
setenv	PAGER	less
setenv	BLOCKSIZE	K
setenv CVSROOT :pserver:anoncvs@anoncvs.cn.FreeBSD.org:/home/cnproj #FreeBSD中文项目 CVS 镜像
#setenv CVSROOT :pserver:anonymous@creme-brulee.marcuscom.com:/space/cvs/marcuscom-cvs
#CCACHE 缓存目录
#setenv CCACHE_DIR /home/.ccache

setenv  LANG zh_CN.UTF-8                #设置中文环境
setenv  LC_ALL zh_CN.UTF-8

setenv  GREP_OPTIONS --color=auto
setenv  LSCOLORS ExGxFxdxCxegedabagExEx
setenv  CLICOLOR yes

setenv  XIM fcitx                       #默认输入法
setenv  XMODIFIERS "@im=fcitx"
setenv  GTK_IM_MODULE fcitx
setenv  QT_IM_MODULE fcitx
#setenv XIM ibus
#setenv GTK_IM_MODULE ibus
#setenv QT_IM_MODULE xim
#setenv XMODIFIERS @im=ibus
#setenv XIM_PROGRAM ibus-daemon
#setenv XIM_ARGS "--daemonize --xim"

if ($?prompt) then
	# An interactive shell -- set some stuff up
    if ( "$uid" == "0" ) then
        set prompt = "[%n%u@%m.%l] %~%b # "     #配置shell提示符
    else
        set prompt = "[%n%u@%m.%l] %~%b % "
    endif
endif
	set filec
	set history = 1000
	set savehist = (1000 merge)
    set autolist = ambiguous
#    set time
    # Use history to aid expansion
    set autoexpand
    set autorehash
	set mail = (/var/mail/$USER)
    set noclobber                           #防止重定向覆盖文件
    set correct = cmd                       #命令自动纠正
    if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif
#source /System/Library/Makefiles/GNUstep.csh

