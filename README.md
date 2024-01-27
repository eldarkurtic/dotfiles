# dotfiles

## Install zsh and oh-my-zsh
1. sudo apt install zsh
2. chsh -s /bin/zsh
3. (if this does not work, open terminal, go to Edit -> Profile preferences -> Run custom command -> zsh)
4. wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

## Clone and set
1. git clone --recurse-submodules -j8 https://github.com/eldarkurtic/dotfiles.git
2. bash dotfiles/setup.sh
