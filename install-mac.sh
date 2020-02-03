# Install Developer Tools (it'll prompt you to do this later if you don't do it now)
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash

# Set up the nvm stuff without restarting the terminal
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install nvm
nvm install 12
node --version

# Install Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

# Install thefuck
brew install thefuck

# Set up git info
git config --global user.name "George"
git config --global user.email "georgej1088@gmail.com"

# Copy .zshrc
curl https://raw.githubusercontent.com/Geo1088/dotfiles/master/.zshrc > ~/.zshrc
