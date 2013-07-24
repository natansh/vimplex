vimplex
=======

A Vim structure based on the Vundle package management tool.

## Requirements
Please make sure `git` and `ctags` are installed.

### For Mac (Using brew)
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
sudo apt-get install git
sudo apt-get install ctags
```

## Installation

```bash
curl https://raw.github.com/natansh/vimplex/master/install.sh | sh
```
