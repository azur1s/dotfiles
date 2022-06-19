export ZSH=/usr/share/oh-my-zsh/
export PATH=$HOME/bin:/usr/local/bin:$PATH
export HISTFILE=~/.zsh_history
export HISTSIZE=1000000
export HISTCONTROL=ignoreboth:erasedups
export SAVEHIST=1000000

PROMPT_EOL_MARK=''

export DENO_INSTALL="/home/azur/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# opam
[[ ! -r /home/azur/.opam/opam-init/init.zsh ]] || source /home/azur/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null
# ghc-env
[ -f "/home/azur/.ghcup/env" ] && source "/home/azur/.ghcup/env"

[[ $- != *i* ]] && return

export EDITOR='code'
export VISUAL='code'

unsetopt BEEP
unsetopt LIST_BEEP

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

# -- Plugins ---

autoload -U compinit && compinit
plugins=(
    git
    archlinux
    cargo
    rust
    zsh-syntax-highlighting
    zsh-completions
    zsh-autosuggestions
)

# --- Bindings ---

# alias nvim="nvim -c 'Copilot disable'"

alias ls="exa --icons --color-scale"
alias zshrc="source ~/.zshrc"
alias gtime="/usr/bin/time -p"

alias cdc="cd ~/Documents/Code/" 
alias cdconf="cd ~/.config/"

alias hack="unimatrix -s 90 -c magenta"

bindkey '^H' backward-kill-word
bindkey '5~' kill-word



eval "$(starship init zsh)"
