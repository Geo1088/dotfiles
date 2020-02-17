# Install git
sudo apt install git

# Install cURL
sudo apt install curl

# Install nvm and use it to install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 12
node --version

# Install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends yarn
yarn --version

# Install thefuck
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

# Set up git config and aliases
git config --global user.name "George"
git config --global user.email "georgej1088@gmail.com"
git config --global credential.helper store # Cache remote credentials
git config --global alias.l "log --oneline --decorate --graph"

# Install zsh and set it as the default shell
sudo apt install zsh
cat /etc/shells
chsh

# Copy .zshrc
curl https://raw.githubusercontent.com/Geo1088/dotfiles/master/.zshrc > ~/.zshrc

# Copy over VS Code config files
mkdir -p ~/.config/Code/User # Make the settings directory in case it hasn't been installed yet
curl https://raw.githubusercontent.com/Geo1088/dotfiles/master/vscode-settings.json > ~/.config/Code/User/settings.json
curl https://raw.githubusercontent.com/Geo1088/dotfiles/master/vscode-keybindings.json > ~/.config/Code/User/keybindings.json
