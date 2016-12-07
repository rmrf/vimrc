# 基本安装

* **Please backup your configuration before run bellow command**


    git clone https://github.com/rmrf/vimrc.git  ~/vimrc
    cd ~
    unlink ~/.vimrc; ln -s ~/vimrc/vimrc_short_version ~/.vimrc
    unlink ~/.bash_profile; ln -s ~/vimrc/bash/linux_bash_profile ~/.bash_profile
    unlink ~/.tmux.conf; ln -s ~/vimrc/tmux/tmux.conf ~/.tmux.conf
    mkdir -p ~/.pip; unlink ~/.pip/pip.conf; ln -s ~/vimrc/pip/pip.conf ~/.pip/pip.conf
    unlink ~/.irbrc; ln -s ~/vimrc/ruby/dotirbrc ~/.irbrc



### Tmux 相关

Please check README.md inside tmux folder

# 使用 spf13-vim 

 1. Follow the instruction of https://github.com/spf13/spf13-vim, install it first.
 2. Replace .vimrc.local with ours
```bash
unlink ~/.vimrc.local; ln -s ~/vimrc/vimrc.local ~/.vimrc.local
```

### golang

    :GoInstallBinaries

### YouCompleteMe under Ubuntu:

运行 vim，然后 `:version` 检查是否 `+python3`
因为我们的 `vimrc.local` 中的 youcomleteme 的配置都使用 python3

```bash
sudo apt-get install python3-dev exuberant-ctags
cd ~/.vim/bundl/YouCompleteMe
python3 ./install.py
```

### Powerline under Ubuntu:

check http://askubuntu.com/questions/283908/how-can-i-install-and-use-powerline-plugin


### Some VIM Usage Memo

    - Leader: ,
    - Check Doc: <Leader> z
    - [Pytyhon] Check Definiation: K
    - [Pytyhon] Auto PEP8: <Leader> f
    - [Go]  Check func defination: <Leader> gv
    - [Go]  Go to Defination Ctrl-], go back is Ctrl-t
    - [Json文件] Folding: `:setlocal foldmethod=syntax`, 然后使用 zM, ZR, zm, zr 即可
