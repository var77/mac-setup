## Git SSH
- Generate new SSH key with `ssh-keygen`
- Add SSH key to git
- Add this config in `~/.ssh/config`

```
Host github.com
	HostName github.com
	IdentityFile ~/.ssh/github_77
```

## Xcode
Install Xcode and command line tools for build packages
- Install from AppStore
- Run `xcode-select --install`

## Preferances
- Configure keyboard Preferances
- Key repeat rate - Fast
- Delay until Repeat - Short
- Map capslock to escape from **Keyboard Shortcuts**

## iTerm2
- Install iTerm2 https://iterm2.com/downloads.html
- Import Profile via URL `Preferances -> General -> Preferances`

## Tmux
- Copy `.tmux.conf` to `~/.tmux.conf`
- Use helper function `t` to manage tmux 
- `t dev "name"` -> start new development workspace or attach to name
- `t a "name"` -> attach to name
- `t ls` -> list sessions
- `t l` -> list sessions
- `t k "name"` -> kill session name
- `t d "name"` -> kill session name
- `t c "name"` -> start new session with name or if exists attach to it
- `t n "name"` -> start new session with name or if exists attach to it

## ZSH
- Run `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
- Install p10k `git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k`
- Copy `.p10k.zsh` to `~/.p10k.zsh`
- Copy `.zshrc` to `~/.zshrc`

## Homebrew
- Install homebrew https://brew.sh/
- Install all needed packages with homebew
`brew install $(cat .brew_packages)`

## Nodejs
- Install NVM https://github.com/nvm-sh/nvm#installing-and-updating
- Install NodeJS with NVM `nvm install lts`

## Neovim
Use https://github.com/var77/astronvim_config

## Docker
- Install docker desktop on mac https://docs.docker.com/desktop/install/mac-install/

## Fzf
Install fuzzy finder keybindings to help search in files and history
- Run `$(brew --prefix)/opt/fzf/install`

## Paste
Download and install Paste Clipboard Manager

https://pasteapp.io/

## Table Plus
Install table plus for SQL database managment

https://tableplus.com/

## MongoDB Compass
Install Compass for MongoDB management

https://www.mongodb.com/products/compass
