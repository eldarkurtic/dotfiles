#!/usr/bin/env bash

# tmux
ln -s $HOME/github/dotfiles/.tmux.conf $HOME/.tmux.conf

# vim
ln -s $HOME/github/dotfiles/.vimrc $HOME/.vimrc

# bash
ln -s $HOME/github/dotfiles/.bash_aliases $HOME/.bash_aliases
source $HOME/.bash_aliases
