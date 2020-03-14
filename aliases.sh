# Conda aliases
alias ca='conda activate'
alias cda='conda deactivate'

# Nvidia aliases
alias wns='watch -n0.01 nvidia-smi'

# Aliases to fix small typos
alias dc='cd'
alias sl='ls'

# Git aliases
alias gs='git status'
alias gc='git commit'

# Aliases to protect against overwriting
alias mv='mv -i'
alias cp='cp -i'

# Misc aliases
alias please='sudo'

# Create a directory and cd into it
mkcd() {
    mkdir "${1}" && cd "${1}"
}
