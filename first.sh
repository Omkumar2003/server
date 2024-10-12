# Update the package list
sudo apt update

# Install essential packages
sudo apt install -y gcc g++ build-essential make python3 nodejs zsh tmux firefox golang-go neovim snapd default-jdk git btop

# Clone the LazyVim configuration
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Install Docker prerequisites
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker's official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Update package list again to include Docker
sudo apt update

# Install Docker
sudo apt install -y docker-ce

# Check Docker status
sudo systemctl status docker

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Clone the Tmux Plugin Manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Templ and Air using Go
go install github.com/a-h/templ/cmd/templ@latest
go install github.com/air-verse/air@latest
