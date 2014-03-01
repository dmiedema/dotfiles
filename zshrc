# Get Source
source $HOME/.antigen/antigen.zsh
source $HOME/.aliases
source $HOME/.zsh_path
source $HOME/.zshrc.local

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

  dmiedema/fuck-you

  # Meta?
  brew
  common-aliases
  tmuxinator/tmuxinator
  command-not-found
  zsh-users/zsh-syntax-highlighting
  zsh-users/zsh-completions
  arialdomartini/oh-my-git
  zsh-users/zsh-history-substring-search
  rupa/z
EOBUNDLES

antigen theme terminalparty

antigen apply




