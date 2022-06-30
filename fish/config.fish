# Install: 
# ln -s $ENV_DIR/fish $HOME/.config/fish

# root env directory
set -gx ENV_DIR $HOME/env
set -gx PATH $PATH /opt/homebrew/bin

 # load configs
for cfg in (ls $ENV_DIR/**/*config.fish | grep -v /fish/config.fish)
    source $cfg
end

# load gitignored configs
if test -f $ENV_DIR/fish/twitch.fish
    source $ENV_DIR/fish/twitch.fish
end

# Navigation
abbr ..     'cd ..'
abbr ...    'cd ../..'
abbr ....   'cd ../../..'
abbr .....  'cd ../../../..'
abbr ...... 'cd ../../../../..'
abbr l      'ls -alF'

# bobthefish theme settings
# https://github.com/oh-my-fish/theme-bobthefish
set -g theme_display_git_default_branch yes
set -g theme_nerd_fonts yes
set -g theme_newline_cursor yes
set -g fish_prompt_pwd_dir_length 0
