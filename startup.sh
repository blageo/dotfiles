#!/bin/zsh

# Add neovim daily repository to apt sources
sudo add-apt-repository ppa:neovim-ppa/unstable -y
sudo apt update && sudo apt upgrade -y 

# Install required packages for setup
sudo apt install git stow zsh make unzip npm gcc ripgrep neovim xclip pip python3.10-venv -y

# Make zsh the default shell
sudo chsh -s $(which zsh)

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Configure .zshrc
echo "Configuring .zshrc..."
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom

# Set theme
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="frisk"/' ~/.zshrc

# Enable plugins
sed -i 's/^plugins=.*/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/' ~/.zshrc

# Install zsh-autosuggestions plugin
echo "Installing zsh-autosuggestions plugin..."
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Install zsh-syntax-highlighting plugin
echo "Installing zsh-syntax-highlighting plugin..."
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

# Reload .zshrc
echo "Reloading .zshrc..."
source ~/.zshrc

echo "Zsh setup complete!"

# Install win32yank.exe for clipboard but also this barely works so fk it
echo "Installing win32yank.exe for clipboard even tho this shit is ass..."
sudo curl -Lo /usr/local/bin/win32yank.exe https://github.com/neovim/neovim/releases/latest/download/win32yank.exe
sudo chmod +x /usr/local/bin/win32yank.exe

# Install cpptools for C++ debugging and place into expected directory
echo "Creating cpptools directory in ~/apps/cpptools/"
mkdir -p ~/apps/cpptools/
cd ~/apps/cpptools/
echo "Installing and unzipping cpptools"
wget https://github.com/microsoft/vscode-cpptools/releases/download/v1.20.5/cpptools-linux.vsix
unzip cpptools-linux.vsix
chmod +x ~/apps/cpptools/extension/debugAdapters/bin/OpenDebugAD7

# Install starship and add to .zshrc
curl -sS https://starship.rs/install.sh | sh
echo eval "$(starship init zsh)" >> ~/dotfiles/.zshrc 
