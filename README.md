this color-scheme includes minimum syntax highlighting
and aimed include needed basis for well looking syntax colors.

## installation

to install this scheme, the following ways could be used:

- use [Vundle](https://github.com/VundleVim/Vundle.vim#quick-start) by adding
to `.vimrc` Vundle plugin section:

        Plugin 'enkron/ecs'

    then run `:PluginInstall`.

or

- use [vim-plug](https://github.com/junegunn/vim-plug#installation) by adding
to `.vimrc` vim-plug section:

        Plug 'enkron/ecs'

    then run `:PlugInstall`.

or

- use [Pathogen](https://github.com/tpope/vim-pathogen#installation):

    run the following in a terminal:

        cd ~/.vim/bundle
        git clone https://github.com/enkron/ecs

## usage

after installation, put next code to `.vimrc`:

```vim
set t_Co=256
syntax on
colorscheme ecs
```
