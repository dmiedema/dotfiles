#!/bin/sh

exists() {
  if command -v $1 &> /dev/null
  then
    return 1
  else
    return 0
  fi
}

newline() {
  echo "\n"
}

exists git
GIT_EXISTS=$?

if [ ! "$GIT_EXISTS" ]; then
  echo "git is required to run this script"
  newline
  exit 1;
fi

exists antigen
ANTIGEN_EXISTS=$?

if [ ! "$ANTIGEN_EXISTS" ]; then
  newline
  echo "Antigen not installed, installing..."
  newline
  `git clone https://github.com/zsh-users/antigen.git $HOME/.antigen`
fi

exists lsrc
RCM_EXISTS=$?

if [ ! "$RCM_EXISTS" ]; then
  if [[ "$OSTYPE" == "darwin"* ]]; then
    exists brew
    if [ ! $? ]; then
      newline
      echo "homebrew is required.\n"
      echo "please go install it, go to http://brew.sh"
      newline
      exit 1
    fi
    `brew tap thoughtbot/formulae`
    `brew install rcm`
    `brew install chisel` # for linking up lldbinit
  else # Not on OS X, so linux
    echo "Installation of rcm is not automated for linux\n"
    echo "Please install it and rerun me.\n"
    echo "https://github.com/thoughtbot/rcm"
    exit 1
  fi
fi #RCM is installed

exists tmux
TMUX_EXISTS=$?

if [ ! "$TMUX_EXIST" ]; then
  echo "tmux is recommended but not required.\n"
fi

`git clone https://github.com/dmiedema/dotfiles $HOME/.dotfiles`
`rcup -x README.md -x bootstrap.sh -x Tomorrow.terminal -x tmuxlinesnapshop.conf`
touch ~/.zshrc.local

