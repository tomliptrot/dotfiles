# update mac
sudo softwareupdate -i -a

#install xcode
xcode-select --install

#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#add to path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/tomliptrot/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"   

# Update Homebrew recipes
brew update

#install brew packages
cp Brewfile ~/.Brewfile
brew bundle --file=~/.Brewfile

# Make ZSH the default shell environment
chsh -s $(which zsh)

#copy zshrc
cp .zshrc ~/.zshrc

#setup starship
mkdir -p ~/.config && cp starship.toml ~/.config/starship.toml

#setup git
cp .gitconfig ~/.gitconfig

#setup karabiner
mkdir -p ~/.config/karabiner && cp karabiner.json ~/.config/karabiner/karabiner.json

#copy all files in scripts/ to  ~/.local/bin
mkdir -p ~/.local/bin && cp scripts/* ~/.local/bin
