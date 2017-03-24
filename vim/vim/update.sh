#!/usr/bin/env sh

cd bundle/ && rm * -rf

rm Vundle.vim -rf           && git clone https://github.com/VundleVim/Vundle.vim.git
rm ctrlp.vim -rf            && git clone https://github.com/kien/ctrlp.vim.git
rm a.vim -rf                && git clone https://github.com/vim-scripts/a.vim.git
rm vim-easymotion -rf       && git clone https://github.com/easymotion/vim-easymotion.git
rm tagbar -rf               && git clone https://github.com/majutsushi/tagbar.git
rm tabular -rf              && git clone https://github.com/godlygeek/tabular.git
rm undotree -rf             && git clone https://github.com/mbbill/undotree.git
rm vim-multiple-cursors -rf && git clone https://github.com/terryma/vim-multiple-cursors.git
rm ultisnips -rf            && git clone https://github.com/SirVer/ultisnips.git
rm vim-mark -rf             && git clone https://github.com/Yggdroot/vim-mark.git
