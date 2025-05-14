#!/bin/bash

set -e # exit when an error occurs

echo -e "\033[96m[+] Updating system packages...\033[0m"
sudo apt update && sudo apt upgrade -y

echo -e "\033[96m[+] Installing essential development tools...\033[0m"
sudo apt install -y git gcc g++ make cmake gdb valgrind vim

echo -e "\033[96m[+] Installing networking utilities...\033[0m"
sudo apt install -y net-tools iputils-ping curl wget tcpdump nmap traceroute vsftpd tmux ufw

echo -e "\033[96m[+] Installing database...\033[0m"
sudo apt install -y sqlite3 libsqlite3-dev

echo -e "\033[96m[+] Installing parsing libraries...\033[0m"
sudo apt install -y libjansson-dev

echo -e "\033[96m[+] Installing CLI utilities...\033[0m"
sudo apt install -y ack tree gawk

echo -e "\033[96m[+] Installing locales...\033[0m"
sudo apt install -y locales

echo -e "\033[96m[+] Installing Vim plugin dependencies...\033[0m"
sudo apt install -y exuberant-ctags python3-dev nodejs npm

echo -e "\033[92m✓ Installing packages done!\033[0m"
