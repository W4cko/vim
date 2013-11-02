# VIM Config

## Installation

    cd ~ && git clone https://github.com/jorddan/vim.git
    ln -s ~/vim/.vim ~/.vim
    ln -s ~/vim/.vimrc ~/.vimrc
    ln -s ~/vim/.gvimrc ~/.gvimrc
    cd ~/vim
    git submodule init
    git submodule update

## Update
	
    cd ~/vim && git pull origin master
    git submodule foreach git pull origin master
