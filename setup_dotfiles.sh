#!/bin/bash

echo "Setting up dotfiles"

function replace() {
  rm -f $1
  ln -s $2 $1
}

replace ~/.gitconfig ~/dotfiles/gitconfig
replace ~/.gitignore ~/dotfiles/gitignore
replace ~/.vimrc ~/dotfiles/vimrc
replace ~/.vim ~/dotfiles/vim
replace ~/.jshintrc ~/dotfiles/jshintrc
replace ~/.bash_profile ~/dotfiles/bash_profile

echo "Done..."


echo "Installing vim plugins"

git submodule init
git submodule update

echo "Done..."
