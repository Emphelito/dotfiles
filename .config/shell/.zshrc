source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

HISTFILE=~/.cache/zsh/history
HISTSIZE=100000
SAVEHIST=100000
zstyle :compinstall filename '/home/emph/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
kitty + complete setup zsh | source /dev/stdin
_comp_options+=(globdots)

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" 
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/profile" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/profile"

autoload -U colors && colors
PROMPT='%F{#6600ff}[%F{#b30047}%n%F{#6600ff}@%F{#33ccff}%m%f %F{#fcfcfc}%B%~%b%f%F{#6600ff}] %F{#ffcc00}€ %F{#fcfcfc}% '
RPROMPT='%F{#b30047}[%&%F{#33ccff}]%F{fcfcfc}'

clear
#neofetch
