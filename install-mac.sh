# Install Developer Tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install nvm and use it to install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install 12
node --version

# Install Yarn
curl -o- -L https://yarnpkg.com/install.sh | bash

# Install thefuck
brew install thefuck

# Set up git config and aliases
git config --global user.name "George"
git config --global user.email "georgej1088@gmail.com"
git config --global credential.helper osxkeychain # Cache remote credentials
git config --global alias.l "log --oneline --decorate --graph"

# Copy .zshrc
curl https://raw.githubusercontent.com/Geo1088/dotfiles/master/.zshrc > ~/.zshrc
