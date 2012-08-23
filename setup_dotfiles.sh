#!/bin/bash

echo "Setting up dotfiles"

function replace() {
  rm -f $1
  ln -s $2 $1
}

replace ~/.gitconfig ~/.dotfiles/gitconfig
replace ~/.gitignore ~/.dotfiles/gitignore
replace ~/.vimrc ~/.dotfiles/vimrc
replace ~/.vim ~/.dotfiles/vim

echo "Done..."


echo "Installing vim plugins"

git submodule init
git submodule update

echo "Done..."
