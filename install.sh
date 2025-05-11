#!/bin/bash

DOTFILES_DIR="$HOME/.dotfiles"

echo -e "\033[96m[+] Installing vim-plug...\033[0m"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e "\033[96m[+] Linking dotfiles...\033[0m"
ln -sf "$DOTFILES_DIR/bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/vimrc" "$HOME/.vimrc"
ln -sf "$DOTFILES_DIR/gitconfig" "$HOME/.gitconfig"

echo -e "\033[96m[+] Installing Vim plugins...\033[0m"
vim +PlugInstall +qall

echo -e "\033[96m[+] 'install.sh' done!\033[0m"
