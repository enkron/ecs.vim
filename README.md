this color-scheme includes minimum syntax highlighting
and aimed include needed basis for well looking syntax colors.
[minimalist](https://github.com/dikiaap/minimalist) scheme is taken as base.

## installation

to install this scheme, the following ways could be used:

- use [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start) by adding
to `.vimrc` Vundle plugin section:

        Plugin 'enkron/vim-avarice'

    then run `:PluginInstall`.

or

- use [vim-plug](https://github.com/junegunn/vim-plug#installation) by adding
to `.vimrc` vim-plug section:

        Plug 'enkron/vim-avarice'

    then run `:PlugInstall`.

or

- use [Pathogen](https://github.com/tpope/vim-pathogen#installation):

    run the following in a terminal:

        cd ~/.vim/bundle
        git clone https://github.com/enkron/vim-avarice

## usage

after installation, put next code to `.vimrc`:

```viml
set t_Co=256
syntax on
colorscheme vim-avarice
```
