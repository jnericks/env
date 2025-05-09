function nvm --description 'Node Version Manager'
    # Use nvm with the provided arguments via bass
    bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end