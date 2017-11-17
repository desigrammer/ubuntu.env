#!/bin/bash
set -e

read -sp "password: " password
echo "$password" | sudo -S true

cp ./.vimrc ~/.vimrc
cp ./.gvimrc ~/.gvimrc
cp ./.bashrc ~/.bashrc

sudo apt update

# git
if ! type git > /dev/null 2>&1 ; then
    sudo -S apt install -y git
fi

# vim-gnome
if ! type vim > /dev/null 2>&1 ; then
    sudo -S apt install -y vim-gnome
fi

# emacs
if ! type emacs > /dev/null 2>&1 ; then
    sudo -S apt install -y emacs24-nox emacs24-el emacs-mozc
fi

# chrome
if ! type google-chrome > /dev/null 2>&1 ; then
    sudo -S apt install -y libappindicator1
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo apt install -f
    sudo dpkg -i google-chrome*.deb
fi

# unity-tweak-tool
if ! type unity-tweak-tool > /dev/null 2>&1 ; then
    sudo -S apt install -y unity-tweak-tool
fi

# ccsm
if ! type ccsm > /dev/null 2>&1 ; then
    sudo -S apt install -y compizconfig-settings-manager compiz-plugins-extra
fi

# curl
if ! type curl > /dev/null 2>&1 ; then
    sudo -S apt install -y curl
fi

# gimp
if ! type gimp > /dev/null 2>&1 ; then
    sudo -S apt install -y gimp
fi

# inkscape
if ! type inkscape > /dev/null 2>&1 ; then
    sudo -S apt install -y inkscape
fi

# nginx
if ! type nginx > /dev/null 2>&1 ; then
    sudo -S apt install -y nginx
fi

# node
if ! type node > /dev/null 2>&1 ; then
    curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
    sudo apt-get install -y nodejs
fi

# pm2
if ! type pm2 > /dev/null 2>&1 ; then
    sudo npm install -g pm2
fi
