
# How to install

## use short version (no need to install plugin)

* **Please backup your configuration before run bellow command**

* Get the configuration:

        git clone https://github.com/rmrf/vimrc.git  ~/vimrc
        cd ~
        unlink ~/.vimrc; ln -s ~/vimrc/vimrc_short_version ~/.vimrc
        unlink ~/.bash_profile; ln -s ~/vimrc/bash/linux_bash_profile ~/.bash_profile
        unlink ~/.tmux.conf; ln -s ~/vimrc/tmux/tmux.conf ~/.tmux.conf
        mkdir -p ~/.pip; unlink ~/.pip/pip.conf; ln -s ~/vimrc/pip/pip.conf ~/.pip/pip.conf
        unlink ~/.irbrc; ln -s ~/vimrc/ruby/dotirbrc ~/.irbrc


## use full version (need install plugin)

* **Please backup your configuration before run bellow command**


* Get the configuration:

        cd ~; mv .vim .vimBackup

        git clone https://github.com/rmrf/vimrc.git  ~/vimrc

        mkdir -p  ~/.vim/bundle; 

        git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

* Create symlinks:

        ln -s ~/vimrc/vimrc_jedi ~/.vimrc

* run vim, then install related bundles

        :PluginInstall

done!


# Usage Tips (for version, some of them):

* Common Tips

    - Press 'c' to comment current line with '#'

    ':sp newfile.txt' to split window for edit,
    ':vs newfile.txt' to split window for edit vertical,
    
    use ':b4' to change number 4 buffer
        ':bd' to close buffer

    F2 to open Nerdtree
    use '2gt' to switch to 2 tab

* Edit Python Files:

    - Press 'F4' to auto adjust current editing python file's format with PEP8
    - 'Ctrl-x, Ctrl-o' will auto complete python after you write a . of a class (during insert mode)

