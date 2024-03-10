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
pkg install make python rust
LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
