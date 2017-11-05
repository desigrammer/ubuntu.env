#!/bin/bash
set -e

read -sp "password: " password
echo "$password" | sudo -S true

# git
if ! type git > /dev/null 2>&1 ; then
    sudo -S apt install -y git
fi

# curl
if ! type curl > /dev/null 2>&1 ; then
    sudo -S apt install -y curl
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

# tex
if ! type platex > /dev/null 2>&1 ; then
    sudo apt-add-repository ppa:texlive-backports/ppa
    sudo add ppa:texlive-backports/ppa
    sudo apt install -y software-properties-common texlive-lang-cjk texlive-latex-extra
fi
