# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

bindkey "^[[A" history-search-backward
bindkey "^[[B" history-search-forward 
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# test
# ---- Eza (better ls) -----

alias ls="eza --icons=always"

autoload -U compinit && compinit

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# ---- Zoxide (better cd) ----
eval "$(zoxide init --cmd cd zsh)"
