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

## iTerm2
- Install iTerm2 https://iterm2.com/downloads.html
- Import Profile via URL `Preferances -> General -> Preferances`

## ZSH
- Run `sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
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
Use https://github.com/var77/nvim-conf

## Docker
- Install docker desktop on mac https://docs.docker.com/desktop/install/mac-install/

## Fzf
Install fuzzy finder keybindings to help search in files and history
- Run `$(brew --prefix)/opt/fzf/install`
