#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|

# oh-my-zsh {
    # Path to your oh-my-zsh configuration.
    export ZSH="$HOME/.oh-my-zsh"

    # Set name of the theme to load.
    # Look in ~/.oh-my-zsh/themes/
    # Optionally, if you set this to "random", it'll load a random theme each
    # time that oh-my-zsh is loaded.
    ZSH_THEME="avit"

    # Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
    # Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
    # Example format: plugins=(rails git textmate ruby lighthouse)
    plugins=(colored-man-pages git history-substring-search ssh-agent sudo vi-mode)

    [[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

    source $ZSH/oh-my-zsh.sh
# }

# history-substring-search {
    bindkey -M vicmd 'k' history-substring-search-up
    bindkey -M vicmd 'j' history-substring-search-down
# }

# Environment {
    export EDITOR=vim
    export VISUAL=vim
    export TERM=xterm-256color
# }
