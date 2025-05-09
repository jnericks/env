## Initial Setup

Install Cloud Drive
- [Google Drive](https://workspace.google.com/products/drive/#download)

Install Homebrew
https://brew.sh/
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install 1Password
```sh
brew install --cask 1password
brew install --cask 1password-cli
```

Configure 1Password
- Turn on "Integrate with 1Password CLI" in 1Password settings
- Install 1SSH Agent

Clone Repo
```sh
git clone git@github.com:jnericks/env.git ~/env
```

Brew Install
```sh
brew bundle --file ~/env/Brewfile
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
/opt/homebrew/bin/fish # <-- this should be added
```

Configure fish to be the default shell
```sh
chsh -s /opt/homebrew/bin/fish
```

## Symlinks

Cloud Drive storage location

```sh
ln -s "/Users/jnericks/Library/CloudStorage/GoogleDrive-<email>/My Drive" ~/Drive
```

location where fish shell loads configuration, functions and completions (may have to delete that default fish directory first)

```sh
ln -s ~/env/fish ~/.config
```

Symlink the gitignored `~/env/local` directory to my cloud directory which has local secrets and stuff.

```sh
ln -s ~/Drive/<path/to/local> ~/env/local
```

## Git

Symlink gitconfig & gitignore

```sh
ln -s ~/env/git/gitconfig.symlink ~/.gitconfig
ln -s ~/env/git/gitignore.symlink ~/.gitignore
```

## App Store Apps

Amphetamine
https://apps.apple.com/us/app/amphetamine/id937984704

Giphy Capture
https://apps.apple.com/us/app/giphy-capture-the-gif-maker/id668208984

Grab2Text
https://apps.apple.com/us/app/grab2text/id6475956137

Telegram - Installed via appstore due to telegram.org being blocked by firewall
https://apps.apple.com/us/app/telegram/id747648890

## Troubleshooting

Issue: No write permission to ~/.local/share/fish
```
error: can not save history
warning-path: Unable to locate data directory derived from $HOME: '/Users/jnericks/.local/share/fish'.
warning-path: The error was 'Permission denied'.
warning-path: Please set $HOME to a directory where you have write access.
```

Fix:
```
sudo chown -R $(whoami) ~/.local/share
```