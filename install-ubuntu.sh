# initial update
sudo apt update
sudo apt upgrade

# Install git and cURL
sudo apt install git curl -y

# Install nvm and use it to install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends yarn -y
yarn --version

# Set up git config and aliases
git config --global alias.l "log --oneline --decorate --graph"
git config --global alias.la "log --oneline --decorate --graph --all"

# Install zsh and set it as the default shell
sudo apt install zsh -y
cat /etc/shells
chsh

# Copy .zshrc
curl https://raw.githubusercontent.com/Geo1088/dotfiles/master/.zshrc > ~/.zshrc
