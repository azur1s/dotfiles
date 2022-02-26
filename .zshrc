export ZSH=/usr/share/oh-my-zsh/
export PATH=$HOME/bin:/usr/local/bin:$PATH
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

plugins=(
    git
    archlinux
    cargo
    rust
    zsh-syntax-highlighting
    zsh-completions
    zsh-autosuggestions
  )

# source $ZSH/oh-my-zsh.sh

[[ $- != *i* ]] && return

export HISTCONTROL=ignoreboth:erasedups

export EDITOR='code'
export VISUAL='code'

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

autoload -U compinit && compinit

# alias nvim="nvim -c 'Copilot disable'"

alias ls="exa --icons --color-scale"
alias zshrc="source ~/.zshrc"
alias gtime="/usr/bin/time -p"

alias cdc="cd ~/Documents/Code/" 
alias cdconf="cd ~/.config/"

PROMPT_EOL_MARK=''

export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS' 
--color=fg:#c0caf5,bg:#1a1b26,hl:#bb9af7
--color=fg+:#c0caf5,bg+:#1a1b26,hl+:#7dcfff
--color=info:#7aa2f7,prompt:#7dcfff,pointer:#7dcfff 
--color=marker:#9ece6a,spinner:#9ece6a,header:#9ece6a'

# export ERL_AFLAGs="-kernel shell_history enabled"
# export PATH=/home/azur/.nimble/bin:$PATH

export DENO_INSTALL="/home/azur/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# source ~/.config/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
[ -f "/home/azur/.ghcup/env" ] && source "/home/azur/.ghcup/env" # ghcup-env
