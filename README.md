# env

My environment, git cloned at `~/env`

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

1. install [fish shell](https://fishshell.com/) - should be installed via homebrew above
2. install [oh-my-fish](https://github.com/oh-my-fish/oh-my-fish)
3. Symlink `~/env/fish` to `~/.config/fish` which is the default location that fish shell loads configuration, functions and completions

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
