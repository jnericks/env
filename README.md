# env

1. git clone this repo to `~/env`

## Homebrew

1. Install [homebrew](https://brew.sh/)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

2. Install packages in Brewfile

```sh
brew bundle --file ~/env/Brewfile
```

## Fish Shell

1. Install [fish shell](https://fishshell.com/) (should be installed via Brewfile above)
2. Ensure `/opt/homebrew/bin/fish` is listed in `/etc/shells`

```sh
$ cat /etc/shells                                                                                                                             Thu Jun 30 15:55:29 2022
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

3. Make fish your default shell

```sh
chsh -s /usr/local/bin/fish
```

4. Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
5. Symlink location where fish shell loads configuration, functions and completions to this repo

```sh
ln -s ~/env/fish ~/.config/fish
```

## Git

1. Symlink gitconfig & gitignore

```sh
ln -s ~/env/git/gitconfig.symlink ~/.gitconfig
ln -s ~/env/git/gitignore.symlink ~/.gitignore
```

## iTerm 2

1. Within `General > Preferences` ensure `Load preferences from a custom folder or URL` is checked and set to `~/env/iterm`

## Alfred

1. Import each workflow within `~/env/alfred/workflows` into Alfred
