# Get Source
source $HOME/.antigen/antigen.zsh
source $HOME/.aliases
source $HOME/.zsh_path

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


  # Meta?
  tmuxinator
  command-not-found
  zsh-users/zsh-syntax-highlighting
  arialdomartini/oh-my-git
  zsh-users/zsh-history-substring-search
  rupa/z
EOBUNDLES

antigen theme terminalparty

antigen apply




