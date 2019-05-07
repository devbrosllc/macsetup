# Setup My Fking Mac
Put a little seasoning on your shiny new Mac so you can get to work faster. Run the provided `setup` script to install the following:
- Homebrew
- iTerm2
- oh-my-zsh
- powerlevel9k (custom theme for oh-my-zsh)
- and whichever packages you specify in the provided .txt file!

This also creates a sample folder structure which you have the option of copying over into your home folder.

```
.
├── aws
├── azure
├── go_workspaces
│   └── main
│       ├── bin
│       ├── pkg
│       └── src
└── python
```
The READMEs that are included are just so git preserves the folder structure. You can remove them by running `find . -name 'README.md' -delete`.

# Automated Install
This is recommended only if you haven't setup your machine at all. 

*Note:* While this won't hurt or overwrite existing packages installed by brew, it may remove plugins or themes you have already installed in the `~/.oh-my-zsh/custom/themes` directory.

# Manual Steps (if you so choose)
## Installing Brew Packages
Install all of the packages mentioned in the `brew.txt` file by running `xargs brew install < brew.txt`