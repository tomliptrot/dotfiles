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

#install all the nerd fonts
brew search '/font-.*-nerd-font/' | awk '{ print $1 }' | xargs -I{} brew install --cask {} || true

# Make ZSH the default shell environment
chsh -s $(which zsh)

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
cp iterm-profile.json "~/Library/Application Support/iTerm2/DynamicProfiles/iterm-profile.json"

#setup karabiner
mkdir -p ~/.config/karabiner && cp karabiner.json ~/.config/karabiner/karabiner.json

#copy all files in scripts/ to  ~/.local/bin
mkdir -p ~/.local/bin && cp scripts/* ~/.local/bin

mkdir ~/customers
mkdir ~/customers/marks_and_clerk
git clone git@github.com:tomliptrot/marks-and-clerk.git ~/customers/marks_and_clerk
