#!/usr/bin/env bash
ln -s $HOME/github/dotfiles/zsh $HOME/.zsh
ln -s $HOME/github/dotfiles/shell $HOME/.shell
ln -s $HOME/github/dotfiles/bash_aliases $HOME/.bash_aliases
ln -s $HOME/github/dotfiles/tmux.conf $HOME/.tmux.conf
ln -s $HOME/github/dotfiles/vimrc $HOME/.vimrc
ln -s $HOME/github/dotfiles/vim $HOME/.vim
ln -s $HOME/github/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/github/dotfiles/inputrc $HOME/.inputrc
ln -s $HOME/github/dotfiles/oh-my-zsh/powerlevel10k $HOME/.oh-my-zsh/themes/powerlevel10k
ln -s $HOME/github/dotfiles/oh-my-zsh/p10k.zsh $HOME/.p10k.zsh

source $HOME/.bash_aliases
