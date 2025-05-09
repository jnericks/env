# ensure nvm working directory exists
mkdir -p "$HOME/.nvm"

# set NVM_DIR to working directory
set -gx NVM_DIR "$HOME/.nvm"

# use default
nvm use default --silent