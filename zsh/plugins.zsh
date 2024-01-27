# Syntax highlighting
source ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Activate additional syntax highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# Pattern highlighting 
typeset -A ZSH_HIGHLIGHT_PATTERNS
# To have commands starting with `rm -rf` in red:
ZSH_HIGHLIGHT_PATTERNS+=('rm -rf *' 'fg=white,bold,bg=red')

# Define highlighting styles
if [[ "$(tput colors)" == "256" ]]; then
    ZSH_HIGHLIGHT_STYLES[default]=none
    ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=160
    ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=037,bold #,standout
    ZSH_HIGHLIGHT_STYLES[alias]=fg=064,bold
    ZSH_HIGHLIGHT_STYLES[builtin]=fg=064,bold
    ZSH_HIGHLIGHT_STYLES[function]=fg=064,bold
    ZSH_HIGHLIGHT_STYLES[command]=fg=064,bold
    ZSH_HIGHLIGHT_STYLES[precommand]=fg=064,underline
    ZSH_HIGHLIGHT_STYLES[commandseparator]=none
    ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=037
    ZSH_HIGHLIGHT_STYLES[path]=fg=166,underline
    ZSH_HIGHLIGHT_STYLES[globbing]=fg=033
    ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
    ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=125,bold
    ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=125,bold
    ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
    ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=136
    ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=136
    ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=136
    ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=136
    ZSH_HIGHLIGHT_STYLES[assign]=fg=037
fi

# Setup dircolors
if [[ "$(tput colors)" == "256" ]]; then
    eval $(dircolors =(cat ~/.shell/plugins/dircolors-solarized/dircolors.256dark ~/.shell/dircolors.extra))
fi
# above command is for GNU, the command below does similar job in osx
#export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
#export LSCOLORS=exfxfeaeBxxehehbadacea

# Fish style autosuggestions
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Autosuggestions in solarized-dark in gnome-terminal not visible
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=240' # grey color for autosuggest

# History substring search with arrows (up/down)
source ~/.zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

# Bindkeys for history substring search
bindkey '^[OA' history-substring-search-up
bindkey '^[OB' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
