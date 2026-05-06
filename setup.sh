# update mac
sudo softwareupdate -i -a

#install xcode
xcode-select --install

#install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#add to path
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME/.zprofile"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Update Homebrew recipes
brew update

#install brew packages
cp Brewfile ~/.Brewfile
brew bundle --file=~/.Brewfile

#install all the nerd fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true

# Make ZSH the default shell environment (only if not already)
if [ "$SHELL" != "$(which zsh)" ]; then
  chsh -s "$(which zsh)"
fi

#copy zshrc
cp .zshrc ~/.zshrc

# install uv
curl -LsSf https://astral.sh/uv/install.sh | sh
#install python with uv
uv python install
uv python install 3.11 3.12

#setup starship
mkdir -p ~/.config && cp starship.toml ~/.config/starship.toml

#setup git
cp .gitconfig ~/.gitconfig

# copy iterm profile
mkdir -p "$HOME/Library/Application Support/iTerm2/DynamicProfiles"
cp iterm-profile.json "$HOME/Library/Application Support/iTerm2/DynamicProfiles/iterm-profile.json"

#setup karabiner
mkdir -p ~/.config/karabiner && cp karabiner.json ~/.config/karabiner/karabiner.json

#copy all files in scripts/ to ~/.local/bin
mkdir -p ~/.local/bin && cp scripts/* ~/.local/bin && chmod +x ~/.local/bin/*
