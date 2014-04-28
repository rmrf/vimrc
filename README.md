 Please backup your configuration before run bellow command 
 --------

1, Get the configuration:

    git clone https://github.com/rmrf/vimrc.git  ~/.vim
    mkdir -p ~/.vim/autoload ~/.vim/bundle; \
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

    curl -LSso ~/.vim/autoload/pathogen.vim \
        https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

2, Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

3, run vim, then install related bundles

    :BundleInstall

done!


Usage Tips (some of them):
----------
Common Tips
---

    1, press 'c' to comment current line with '#'
    2, 
    ':vs newfile.txt' to vertical split window for edit, 'Ctrl-h and Ctrl-l' to switch between window left and right.
    ':sp newfile.txt' to split window for edit,'Ctrl-k and Ctrl-j' to switch between windows top and down
    3, There is buffer tab on top of the editer widnow, use ':b4' to change number 4 buffer
    4, 'z-M' to folding all, 'z-R' to expand all folding, 'z-o' to open a fold at cursor.

Edit Python Files:
---
    1,  Press 'F5' to auto adjust current editing python file's format with PEP8
    2,  'Ctrl-x, Ctrl-o' will auto complete python after you write a . of a class (during insert mode)
