
# How to install

## use short version (no need to install plugin)

* **Please backup your configuration before run bellow command**

* Get the configuration:

        git clone https://github.com/rmrf/vimrc.git  ~/vimrc

        unlink ~/.vimrc; ln -s ~/vimrc/vimrc_short_version ~/.vimrc
        unlink ~/.bash_profile; ln -s ~/vimrc/bash/linux_bash_profile ~/.bash_profile
        unlink ~/.tmux.conf; ln -s ~/vimrc/tmux/tmux.conf ~/.tmux.conf


## use full version (need install plugin)

* **Please backup your configuration before run bellow command**


* Get the configuration:

        git clone https://github.com/rmrf/vimrc.git  ~/.vim

        mkdir -p ~/.vim/autoload ~/.vim/bundle; 

        git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

        curl -LSso ~/.vim/autoload/pathogen.vim \
            https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

* Create symlinks:

        ln -s ~/.vim/vimrc ~/.vimrc
        ln -s ~/.vim/gvimrc ~/.gvimrc

* run vim, then install related bundles

        :BundleInstall

done!


# Usage Tips (for version, some of them):

* Common Tips

    - Press 'c' to comment current line with '#'

    - ':vs newfile.txt' to vertical split window for edit, 
    'Ctrl-h and Ctrl-l' to switch between window left and right.
    ':sp newfile.txt' to split window for edit,
    'Ctrl-k and Ctrl-j' to switch between windows top and down.
    
    - There is buffer tab on top of the editer widnow, 
    use ':b4' to change number 4 buffer
    
    - 'z-M' to folding all, 'z-R' to expand all folding, 'z-o' to open a fold at cursor.

* Edit Python Files:

    - Press 'F5' to auto adjust current editing python file's format with PEP8
    - 'Ctrl-x, Ctrl-o' will auto complete python after you write a . of a class (during insert mode)

