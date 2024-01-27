#!/usr/bin/env bash
ln -sf $HOME/github/dotfiles/zsh $HOME/.zsh
ln -sf $HOME/github/dotfiles/shell $HOME/.shell
ln -sf $HOME/github/dotfiles/bash_aliases $HOME/.bash_aliases
ln -sf $HOME/github/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/github/dotfiles/vimrc $HOME/.vimrc
ln -sf $HOME/github/dotfiles/vim $HOME/.vim
ln -sf $HOME/github/dotfiles/zshrc $HOME/.zshrc
ln -sf $HOME/github/dotfiles/inputrc $HOME/.inputrc
ln -sf $HOME/github/dotfiles/oh-my-zsh/powerlevel10k $HOME/.oh-my-zsh/themes/powerlevel10k
ln -sf $HOME/github/dotfiles/oh-my-zsh/p10k.zsh $HOME/.p10k.zsh

source $HOME/.bash_aliases
