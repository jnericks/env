## Initial Setup

Using the default Terminal, clone this repo, install [homebrew](https://brew.sh/) and all of the packages in the Brewfile.

```sh
$ cd ~
$ git clone https://github.com/jnericks/env.git
$ cd env
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
$ brew bundle --file ~/env/Brewfile
```

## Fish Shell

[Fish Shell](https://fishshell.com/) will have been installed via the Brewfile above

Ensure fish is listed in `/etc/shells`
```sh
echo "/opt/homebrew/bin/fish" | sudo tee -a /etc/shells
```

```sh
cat /etc/shells
# List of acceptable shells for chpass(1).
# Ftpd will not allow users to connect who are not using
# one of these shells.

/bin/bash
/bin/csh
/bin/dash
/bin/ksh
/bin/sh
/bin/tcsh
/bin/zsh
/opt/homebrew/bin/fish
```

Configure fish to be the default shell
```sh
chsh -s /opt/homebrew/bin/fish
```

## Oh-My-Fish

Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

```sh
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
```

Symlink location where fish shell loads configuration, functions and completions (may have to delete that default fish directory first)

```sh
ln -s ~/env/fish ~/.config/fish
```

Symlink the gitignored `~/env/local/` directory to my cloud directory which has local secrets and stuff.

```sh
ln -s ~/Google\ Drive/My\ Drive/Dev/fish ~/env/local
```

## Git

Symlink gitconfig & gitignore

```sh
ln -s ~/env/git/gitconfig.symlink ~/.gitconfig
ln -s ~/env/git/gitignore.symlink ~/.gitignore
```

## iTerm 2

Within `General > Preferences` ensure `Load preferences from a custom folder or URL` is checked and set to `~/env/iterm`

## Alfred

Manually import each workflow within `~/env/alfred/workflows` into Alfred
