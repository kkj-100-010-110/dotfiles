#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"

set -e # exit when an error occurs

echo -e "\033[96m[+] Setting up locale...\033[0m"
bash "$DOTFILES_DIR/set_locale.sh"

echo -e "\033[96m[+] Installing vim-plug...\033[0m"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e "\033[96m[+] Linking dotfiles...\033[0m"
ln -sf "$DOTFILES_DIR/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/bash_aliases" "$HOME/.bash_aliases"
ln -sf "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"

echo -e "\033[96m[+] Installing Vim plugins...\033[0m"
vim +PlugInstall +qall

echo -e "\033[92m✓ 'Setup done!\033[0m"
