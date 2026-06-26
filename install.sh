#!/bin/sh

# this script must be run from the root of the dotfiles git repository
dotfiles="$HOME/dotfiles"
CONFIG_DIR="$HOME/.config/git"
CONFIG_FILE="$CONFIG_DIR/config"

# this sets environment variables required to make things use $XDG_CONFIG_HOME
ln -s ${dotfiles}/bashrc ~/.bashrc

# create ~/.config and ~/.local if they don't exist
mkdir -p ~/.config
mkdir -p ~/.local/bin
mkdir -p ~/.local/share
mkdir -p "$CONFIG_DIR"

# symlink everything in config and local/bin
for file in ${dotfiles}/config/*; do
  ln -s ${file} ~/.config/
done
for file in ${dotfiles}/local/bin/*; do
  ln -s ${file} ~/.local/bin/
done
for file in ${dotfiles}/local/share/*; do
  ln -s ${file} ~/.local/share/
done

# packages install
sudo pacman -S --needed --noconfirm $(cat ~/dotfiles/packages.txt)

# mac spoofing
sudo cp ~/dotfiles/etc/systemd/system/macspoof@.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable macspoof@wlp3s0.service
sudo systemctl enable macspoof@enp2s0.service

# disabling nvidia GPU
sudo cp ~/dotfiles/etc/udev/rules.d/00-remove-nvidia.rules /etc/udev/rules.d/
sudo cp ~/dotfiles/etc/X11/xorg.conf.d/20-amdgpu.conf /etc/X11/xorg.conf.d/
sudo cp ~/dotfiles/etc/modprobe.d/blacklist-nouveau.conf /etc/modprobe.d/

# replace sudo with doas
sudo cp ~/dotfiles/etc/doas.conf /etc/

# disabling bluetooth
sudo cp ~/dotfiles/etc/modprobe.d/blacklist-bluetooth.conf /etc/modprobe.d/

# fish-shell
chsh -s /usr/bin/fish

# git-setup
read -p "Enter your Git username: " username
read -p "Enter your Git email: " email

if [ -z "$username" ] || [ -z "$email" ]; then
  echo "Error: Username and email cannot be empty."
  exit 1
fi

cat >"$CONFIG_FILE" <<EOF
[user]
	name = $username
	email = $email
EOF
