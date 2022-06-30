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
2. Install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
3. Symlink location where fish shell loads configuration, functions and completions to this repo

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

1. Check "Load preferences from a custom folder or URL" and set to `~/env/iterm`

## Alfred

1. Import each workflow within `~/env/alfred/workflows` into Alfred
