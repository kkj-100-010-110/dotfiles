#!/bin/bash

set -e # exit when an error occurs

echo -e "\033[96m[+] Enabling locales in /etc/locale.gen...\033[0m"
sudo sed -i 's/^# *\(en_US.UTF-8\)/\1/' /etc/locale.gen
sudo sed -i 's/^# *\(ko_KR.UTF-8\)/\1/' /etc/locale.gen

echo -e "\033[96m[+] Generating locales...\033[0m"
sudo locale-gen

echo -e "\033[96m[+] Updating system-wide default locale...\033[0m"
sudo update-locale LANG=en_US.UTF-8 LC_CTYPE=ko_KR.UTF-8 LC_COLLATE=C LC_TIME=en_US.UTF-8 LC_NUMERIC=en_US.UTF-8

echo -e "\033[92m✓ Locale setup complete. Please restart your shell or run: source ~/.bashrc\033[0m"
