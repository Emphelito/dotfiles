source ~/.config/zsh/aliases

export HISTFILE=~/.cache/zsh/history
export HISTSIZE=10000
export SAVEHIST=10000

source $HOME/.config/zsh/completion.zsh

#source ~/.config/zsh/prompt
fpath=($HOME/.config/zsh $fpath)
autoload -Uz prompt_purification_setup && prompt_purification_setup

clear
neofetch

autoload -U compinit; compinit

source $HOME/.config/zsh/fsh/fast-syntax-highlighting.plugin.zsh


