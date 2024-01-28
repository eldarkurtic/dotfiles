# Conda aliases
alias ca='conda activate'
alias cda='conda deactivate'

# Nvidia aliases
alias nsmi='nvidia-smi -l 1'

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

# Shortcut for up
alias up='cd ..'

# Start ssh-agent
alias ssh-start='eval `ssh-agent -s`; ssh-add'

# Create a directory and cd into it
mkcd() {
    mkdir "${1}" && cd "${1}"
}

# Tmux aliases
alias ta="tmux -CC a -t"
alias tn="tmux -CC new -s"
alias tkill="tmux kill-session -t"

# python is python3
alias python=python3

# Slurm
alias slurmcheck="squeue --sort=+i -o '%.9i %.8u %.8j %.9a %.9P %.7T %.10M %.9L %.4C %.7m %.6D %R %b'"
