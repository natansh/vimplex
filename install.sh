#!/usr/bin/env bash

DIR="$( cd "$( dirname "$0" )" && pwd )"
git clone https://github.com/natansh/vimplex.git
ln -sfn $DIR/vimplex ~/.vim
ln -sfn $DIR/vimplex/vimrc ~/.vimrc
cd vimplex

# Setup temporary directories
mkdir -p tmp/undo tmp/swap tmp/backup

# Setup Vundle
mkdir bundle
git clone https://github.com/gmarik/vundle.git bundle/vundle

vim +BundleInstall +qall
