export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

# - History
HISTFILE=~/.zsh.histfile
HISTSIZE=1000
SAVEHIST=10000

# - Beep
unsetopt beep
unsetopt list_beep

# - Alias & bindings
bindkey -e
bindkey "^H" backward-kill-word
bindkey "5~" kill-word
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

alias cdc="cd ~/Documents/Code/"
alias cdconf="cd ~/.config/"

alias ls="exa -l --no-user"

# - Misc
export PROMPT_EOL_MARK=""
autoload -Uz compinit && compinit

eval "$(starship init zsh)"
