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
