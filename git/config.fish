abbr g git

# iterate git aliases in gitconfig.symlink and set short alias (eg. git co -> gco)
for al in $(git config -l | grep ^alias\. | cut -c 7- | cut -f1 -d '=')
    abbr g$al "git $al"
end

# alias that require being run in current shell
abbr gcd 'cd "$(git root)"'