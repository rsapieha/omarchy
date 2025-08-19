#!/bin/bash

yay -S --noconfirm --needed \
  wget curl unzip inetutils impala \
  fd eza fzf ripgrep zoxide bat jq xmlstarlet \
  wl-clipboard fastfetch btop \
  man tldr less whois plocate bash-completion \
  ghostty fish starship

# Make fish the default shell
sudo chsh -s /usr/bin/fish "$USER"

# Install fisher
sudo -u "$USER" fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"

# Configure fish to use starship
sudo -u "$USER" bash -c 'mkdir -p ~/.config/fish && echo "starship init fish | source" >> ~/.config/fish/config.fish'