#!/bin/bash
# WARNING! THIS SCRIPT REMOVE EXISTING ~/.vim and .vimrc

sudo pip install pyflakes pep8 pylint ipython

rm -rf ~/.vim
rm -f ~/.vimrc

ln -s $(pwd)/.vim ~/.vim
ln -s $(pwd)/.vimrc ~/.vimrc

# Install plugins
rm -rf $(pwd)/.vim/bundle
mkdir $(pwd)/.vim/bundle
git clone https://github.com/gmarik/Vundle.vim.git $(pwd)/.vim/bundle/Vundle.vim

vim +PluginInstall +qall

