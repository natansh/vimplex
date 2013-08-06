vimplex
=======

A Vim structure based on the Vundle package management tool.

## Requirements
Please make sure `git`, `ctags`, `make` and `ruby` are installed.

### For Mac (Using brew)
Make sure you have installed the XCode Developer tools - having done so would've installed `ruby` and `make` automatically.

```bash
brew install git
brew install ctags
```

You might need to make the `ctags` installed by `brew` visible
```bash
alias ctags="`brew --prefix`/bin/ctags"
alias ctags >> ~/.bashrc
```

### For Ubuntu

```bash
sudo apt-get install build-essentials 
sudo apt-get install ruby
sudo apt-get install git
sudo apt-get install ctags
```

## Installation

```bash
curl https://raw.github.com/natansh/vimplex/master/install.sh | sh
```
