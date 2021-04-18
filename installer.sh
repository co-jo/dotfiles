#!/bin/bash

# vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# fzf

sudo apt-get update

sudo apt install -y \
    fish \
    python3 \
    exuberant-ctags \

pip3 install powerline-status
