alias g git

# iterate git aliases in gitconfig.symlink and set short alias (eg. git co -> gco)
for al in $(git config -l | grep ^alias\. | cut -c 7- | cut -f1 -d '=')
    alias g$al "git $al"
end

# alias that require being run in current shell
alias gcd 'cd "$(git root)"'