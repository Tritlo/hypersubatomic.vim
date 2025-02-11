# hypersubatomic.vim

A port of the [usgraphics/hypersubatomic](https://github.com/usgraphics/hypersubatomic-vscode-theme) color scheme for Vim/Neovim.

## Color Palette

![](https://raw.githubusercontent.com/tritlo/hypersubatomic.vim/main/screenshots/color-palette.png)

## Installation

Using [vim-plug](https://github.com/junegunn/vim-plug) (modify this to work with your Vim package manager of choice):

```vim
Plug 'tritlo/hypersubatomic.vim', { 'branch': 'main' }
```

## Usage

To enable this color scheme, add the following to your Vim (`~/.vimrc`) or Neovim (`~/.config/nvim/init.vim`) configuration:

```vim
colorscheme hypersubatomic
```

### True Colors

True colors are a requirement for this color scheme to work properly. To enable this, place the following in your `~/.vimrc` or `~/.config/nvim/init.vim` file:

```vim
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif
```

### Italics

To enable italics (`0` or off by default), please add the following to your configuration file:

```vim
let g:hypersubatomic_terminal_italics = 1
```

### Full configuration example

```vim
let g:hypersubatomic_terminal_italics = 1
colorscheme hypersubatomic
```

### airline.vim

To use the included [vim-airline](https://github.com/vim-airline/vim-airline) theme:

```vim
let g:airline_theme = 'hypersubatomic'
```

## Thanks
Thanks to the [usgraphics](https://github.com/usgraphics/hypersubatomic-vscode-theme) hypersubatomic
theme from which the colorscheme is derived, and to the [kaicataldo](https://github.com/kaicataldo/material.vim) for the material theme this is forked from.
