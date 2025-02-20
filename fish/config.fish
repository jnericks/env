# Install: 
# ln -s $ENV_DIR/fish $HOME/.config/fish

set -gx ENV_DIR     "$HOME/env"
set -gx CLOUD_DIR   "$HOME/Drive"
set -gx EDITOR      code

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path $ENV_DIR/bin
fish_add_path /Applications/GoLand.app/Contents/MacOS
fish_add_path "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

 # load configs
for cfg in (ls $ENV_DIR/**/*config.fish | grep -v /fish/config.fish)
    source $cfg
end

alias df    '$EDITOR $ENV_DIR'                              # dotfiles
alias sp    '$EDITOR $CLOUD_DIR/Scratchpad'                 # scratchpad
alias gopg  'goland $CLOUD_DIR/Scratchpad/_go-playground/'  # go-playground


# Navigation
alias ..     'cd ..'
alias ...    'cd ../..'
alias ....   'cd ../../..'
alias .....  'cd ../../../..'
alias ...... 'cd ../../../../..'
alias l      'ls -alF'

# Add-ons
alias lg     'lazygit'

# bobthefish theme settings
# https://github.com/oh-my-fish/theme-bobthefish
# omf install bobthefish
set -g theme_display_git_default_branch yes
set -g theme_nerd_fonts yes
set -g theme_newline_cursor yes
set -g fish_prompt_pwd_dir_length 0

# peco plugin
# https://github.com/oh-my-fish/plugin-peco
# omf install peco
function fish_user_key_bindings
    # Please bind peco_select_history to your favorite key.
    # If you'd like to bind Ctrl+r:
    bind \cr 'peco_select_history (commandline -b)'
end