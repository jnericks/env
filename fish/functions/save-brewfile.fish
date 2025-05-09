function save-brewfile -d "Updates Brewfile"
    pushd $ENV_DIR
    
    set -l file 'Brewfile'
    brew bundle dump --force --file=$file
    printf "# $(date)"\n\n"$(cat $file)" > $file

    # remove internal brews
    sed -i '' '/uber/d' 'Brewfile'

    popd
end
