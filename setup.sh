#!/bin/bash
# Install command line tools
if xcode-select -v > /dev/null; then
  printf '\e[0;33m%-6s\e[m' "[XCODE] command line tools already installed."
else
  printf '\e[0;33m%-6s\e[m' "[XCODE] installing command line tools."
  xcode-select --install
fi

# Install brew
if brew -v > /dev/null; then
  printf '\e[0;33m%-6s\e[m' "[HOMEBREW] homebrew is already installed."
else
  printf '\e[0;33m%-6s\e[m' "[HOMEBREW] homebrew is not installed, proceeding with install."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null || exit 1
  printf '\e[0;32m%-6s\e[m' "[HOMEBREW] homebrew successfully installed."
fi

# Install packages listed in brew.txt, including zsh
printf '\e[0;33m%-6s\e[m' "[HOMEBREW] installing packages..."
xargs brew install < brew.txt

# Install iTerm2
printf '\e0;33m%-6s\e[m' "[ITERM2] installing iTerm2..."
brew cask install iterm2

# Install oh-my-zsh -- using a fork of the original oh-my-zsh to avoid launching zsh after installer finishes
printf '\e[0;33m%-6s\e[m' "[ZSH] installing oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/rudolphjacksonm/oh-my-zsh/master/tools/install.sh | bash -s --skip-chsh --silent)"
if $? -eq 0; then
  printf '\e[0;32m%-6s\e[m' "[ZSH] oh-my-zsh successfully installed."
else
  printf '\e[0;31m%-6s\e[m' "[ZSH] oh-my-zsh failed to install."
  exit 1
fi

# Install powerlevel9k theme + custom fonts
printf '\e[0;33m%-6s\e[m' "[POWERLEVEL9K] downloading powerlevel9k..."
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
printf '\e[0;33m%-6s\e[m' "[POWERLEVEL9K] downloading powerline fonts..."
git clone https://github.com/powerline/fonts.git ~/powerlinefonts
printf '\e[0;33m%-6s\e[m' "[POWERLEVEL9K] installing powerline fonts..."
sh ~/powerlinefonts/install.sh

# Overwrite default ~/.zshrc with the one contained in this repo
mv .zshrc ~/.zshrc