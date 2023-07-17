#!/data/data/com.termux/files/usr/bin/bash

pkg update -y
pkg install wget
wget https://raw.githubusercontent.com/dracula/termux/master/colors.properties
mv colors.properties ./todo-app/
wget https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/SourceCodePro/Regular/SauceCodeProNerdFontMono-Regular.ttf
mv SauceCodeProNerdFontMono-Regular.ttf ./todo-app/font.ttf
clear
echo customisation done
pkg install nodejs-lts neovim git yarn ripgrep clang
clear
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
