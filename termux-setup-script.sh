#!/data/data/com.termux/files/usr/bin/bash

pkg update -y
pkg install wget
wget https://raw.githubusercontent.com/dracula/termux/master/colors.properties
mv colors.properties ./.termux/
wget https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/SourceCodePro/SauceCodeProNerdFontMono-Regular.ttf
mv SauceCodeProNerdFontMono-Regular.ttf ./.termux/font.ttf
clear
echo customisation done
pkg install nodejs neovim git ripgrep clang
clear
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/starter ~/.config/nvim --depth 1 && nvim
