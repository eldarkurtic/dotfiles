#!/usr/bin/env bash
cp -r $HOME/github/dotfiles/zsh $HOME/.zsh
cp -r $HOME/github/dotfiles/shell $HOME/.shell
cp -r $HOME/github/dotfiles/bash_aliases $HOME/.bash_aliases
cp -r $HOME/github/dotfiles/tmux.conf $HOME/.tmux.conf
cp -r $HOME/github/dotfiles/vimrc $HOME/.vimrc
cp -r $HOME/github/dotfiles/vim $HOME/.vim
cp -r $HOME/github/dotfiles/zshrc $HOME/.zshrc
cp -r $HOME/github/dotfiles/inputrc $HOME/.inputrc
cp -r $HOME/github/dotfiles/oh-my-zsh/powerlevel10k $HOME/.oh-my-zsh/themes/powerlevel10k
cp -r $HOME/github/dotfiles/oh-my-zsh/p10k.zsh $HOME/.p10k.zsh

source $HOME/.bash_aliases
