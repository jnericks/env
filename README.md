# env

git clone this repo to `~/env`

## Homebrew

- Install [homebrew](https://brew.sh/)

```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Install packages in Brewfile

```sh
brew bundle --file ~/env/Brewfile
```

## Fish Shell

- Install [fish shell](https://fishshell.com/) (should be installed via Brewfile above)

- Ensure `/opt/homebrew/bin/fish` is listed in `/etc/shells`

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

- Make fish your default shell

```sh
chsh -s /usr/local/bin/fish
```

- Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)

- Symlink location where fish shell loads configuration, functions and completions (may have to delete that default fish directory first)

```sh
ln -s ~/env/fish ~/.config/fish
```

- Symlink the gitignored `~/env/local/` directory to my cloud directory which has local secrets and stuff.

```sh
ln -s  ~/path/to/cloud/drive/configs/ ~/env/local
```

## Git

- Symlink gitconfig & gitignore

```sh
ln -s ~/env/git/gitconfig.symlink ~/.gitconfig && \
ln -s ~/env/git/gitignore.symlink ~/.gitignore
```

## iTerm 2

- Within `General > Preferences` ensure `Load preferences from a custom folder or URL` is checked and set to `~/env/iterm`

## Alfred

- Import each workflow within `~/env/alfred/workflows` into Alfred
