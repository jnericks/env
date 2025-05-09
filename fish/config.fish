set -gx ENV_DIR   "$HOME/env"
set -gx CLOUD_DIR "$HOME/Drive"
set -gx EDITOR    code

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path $ENV_DIR/bin
fish_add_path /Applications/GoLand.app/Contents/MacOS

 # load configs
for cfg in (ls $ENV_DIR/**/*config.fish | grep -v /fish/config.fish)
    source $cfg
end

alias df    '$EDITOR $ENV_DIR' # dotfiles

# Navigation
alias ..     'cd ..'
alias ...    'cd ../..'
alias ....   'cd ../../..'
alias .....  'cd ../../../..'
alias ...... 'cd ../../../../..'
alias l      'ls -alF'

# Add-ons
alias lg     'lazygit'

# Greeting
set fish_greeting

# direnv
# https://direnv.net/docs/hook.html#fish
direnv hook fish | source

# NVM
nvm use --lts