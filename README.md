## Xcode
Install Xcode and command line tools for build packages
- Install from AppStore
- Run `xcode-select --install`

## Preferances
- Configure keyboard Preferances

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
`for package in (cat .brew_packages); brew install $package; end`

## Nodejs
- Install NVM https://github.com/nvm-sh/nvm#installing-and-updating
- Install NodeJS with NVM `nvm install lts`

## Neovim
Use https://github.com/var77/nvim-conf

