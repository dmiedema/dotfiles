# Get Source
source $HOME/.antigen/antigen.zsh
source $HOME/.aliases
source $HOME/.zsh_path
source $HOME/.zshrc.local

# setup independent histories for each zsh session
setopt append_history no_inc_append_history no_share_history

# Set Editor
export EDITOR='vim'

# load up oh-my-zsh
antigen use oh-my-zsh

antigen bundles <<EOBUNDLES
  # Git stuff
  git
  git-extras

  # Tools & Things
  tmux
  gem
  vagrant

  # OS X specific stuff
  osx
  pod
  xcode

  dmiedema/fuck-you

  # Meta?
  brew
  Tarrasch/zsh-bd
  tarruda/zsh-autosuggestions
  common-aliases
  tmuxinator/tmuxinator
  command-not-found
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-completions
  arialdomartini/oh-my-git
  zsh-users/zsh-history-substring-search
  rupa/z
  # Vim mode?
  hchbaw/opp.zsh

  # This take care of theme
  sindresorhus/pure
EOBUNDLES

# zsh-autosuggestions
# Start the server
zle-line-init() {
  zle autosuggest-start
}
zle -N zle-line-init
# Accept suggested word without leaving insert mode
bindkey '^f' vi-forward-word


antigen apply

