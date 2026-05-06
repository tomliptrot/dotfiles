# Tom's Dotfiles
This is my personal collection of dotfiles and scripts to set up my development environment.
These files are intended to be used on macOS and are tailored to my preferences. They include configurations for various applications, shell settings, and other customizations.

### Installation
To set up your environment using these dotfiles, follow these steps:
1. Install the Xcode command line tools if you haven't already:
```bash
xcode-select --install
```
If the GUI installer doesn't appear or gets stuck on "install requested for cli developer tools", install directly via `softwareupdate` instead:
```bash
softwareupdate --list
```
Find the "Command Line Tools for Xcode-X.Y" label in the output, then:
```bash
sudo softwareupdate -i "Command Line Tools for Xcode-X.Y"
```
Verify with `xcode-select -p` — it should print `/Library/Developer/CommandLineTools`.

2. clone this repo with:
```bash
git clone git@github.com:tomliptrot/dotfiles.git
```
3. run the setup script
```bash
cd dotfiles
chmod +x setup.sh
./setup.sh
```
