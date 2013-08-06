#!/usr/bin/env bash

# Simple (not exhaustive) detection of required commands
check_exists() {
  command -v "$1" >/dev/null 2>&1 || \
  { echo "$1 is required. Please make sure it is installed. Aborting." >&2; exit 1; }
}

# Check for make, git, ruby and ctags existence
check_exists make 
check_exists git
check_exists ruby
check_exists ctags

# Begin installation of vimplex
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

vim +BundleInstall +qall 2>/dev/null 

# Install the Command-T C extension
cd command-t/ruby/command-t
ruby extconf.rb
make
