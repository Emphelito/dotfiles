#!/bin/sh
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/shell"
[ -f ~/.config/shell/profile ] && . ~/.config/shell/profile
#[ -f ~/.xprofile ] && . ~/.xprofile
[ -f ~/.config/autorun.sh ] && . ~/.config/autorun.sh
#exec dwm
exec xmonad
