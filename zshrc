export PATH=~/.local/bin:$PATH

# Environment setup
if [ -f ~/.env ]; then
    source ~/.env
fi

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="fishy"

# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
git
)

source $ZSH/oh-my-zsh.sh

# Source common aliases
source ~/.shell/aliases.sh

# Source zsh specific aliases
source ~/.zsh/zsh_aliases.zsh

# Source zsh settings
source ~/.zsh/zsh_settings.zsh

# Source external plugins
source ~/.zsh/plugins.zsh

