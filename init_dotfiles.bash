#!/bin/bash

mkdir -p ~/.config

# link neovim
if [ -e ~/.config/nvim/ ]
then
  echo "will not create symlink ~/.config/nvim."
else
  ln -s ~/.soadot/nvim ~/.config/nvim
fi

# set up ~/.zshrc
if [ ! -e ~/.zshrc ]
then
  touch ~/.zshrc
fi
source_string='source $HOME/.soadot/zshrc.zsh'
if ! grep "$source_string" ~/.zshrc > /dev/null
then
  echo "$(echo $source_string; cat ~/.zshrc)" > ~/.zshrc
fi
