# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# Explicitly set the prompt layout for both Arch and macOS
PROMPT='%n@%m %1~ %# '

bindkey -v
export KEYTIMEOUT=1

# Cursor shape for vi mode
function zle-keymap-select {
    if [[ $KEYMAP == vicmd ]]; then
        printf '\e[2 q'   # block cursor
    else
        printf '\e[6 q'   # line cursor
    fi
}

zle -N zle-keymap-select

# Set initial cursor shape
printf '\e[6 q'


bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward 
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# test
# ---- Eza (better ls) -----

alias ls="eza --icons=always"

autoload -U compinit && compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# ---- Zoxide (better cd) ----
eval "$(zoxide init --cmd cd zsh)"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
