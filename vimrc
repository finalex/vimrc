"vundle plugin mangement
set nocompatible              " be iMproved, required
set backspace=indent,eol,start

filetype off                  " required

" set the runtime path to include Vundle and initialize
"set rtp+=$VIM/vimfiles/bundle/Vundle.vim/
"call vundle#begin('$VIM/vimfiles/bundle/')
set rtp+=$HOME/.vim/bundle/Vundle.vim/
call vundle#begin('$HOME/.vim/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"" plugin on GitHub repo
Plugin 'altercation/vim-colors-solarized'
Plugin 'nachumk/systemverilog.vim'
Plugin 'godlygeek/tabular'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'junegunn/vim-easy-align'
Plugin 'vim-scripts/VisIncr'
"Plugin 'vim-scripts/taglist.vim'
"Plugin 'lifepillar/vim-mucomplete'
Plugin 'tsaleh/vim-align'
Plugin 'scrooloose/nerdtree'
Plugin 'davidhalter/jedi-vim'
Plugin 'Yggdroot/LeaderF'
"" plugin from http://vim-scripts.org/vim/scripts.html
"" Plugin 'L9'
Plugin 'L9'
Plugin 'matchit.zip'
Plugin 'bufexplorer.zip'
Plugin 'FuzzyFinder'
"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"bundle
"execute pathogen#infect()
"
"source $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"behave mswin

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      if empty(&shellxquote)
"        let l:shxq_sav = ''
"        set shellxquote&
"      endif
"      let cmd = '"' . $VIMRUNTIME . '\diff"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
"  if exists('l:shxq_sav')
"    let &shellxquote=l:shxq_sav
"  endif
"endfunction


"file conf
set nobackup
set noundofile
set noswapfile
set encoding=utf8

"ui conf
if has('gui_running')
    colo solarized
    "set background=light
    set background=dark

    set ruler
    set lines=40
    set columns=120
else
    colo solarized
    "set background=light
    set background=dark
    let g:solarized_termcolors=256
endif

if has('win32')
    set guifont=Source\ Code\ Pro:h10
else
    set guifont=Source\ Code\ Pro\ 10
endif

set nu
set nowrap
syntax on
set hlsearch

"tab conf
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"short key
let mapleader=','

"vim
nnoremap <silent> <leader>h :silent nohl<CR><ESC>
nnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"comment
nnoremap <leader>bc <ESC><ESC>O//====================================================================================================<ESC><ESC>j^
nnoremap <leader>ac <ESC><ESC>o//====================================================================================================<ESC><ESC>k^
nnoremap <leader>ic <ESC><ESC>^i//<ESC><ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugin conf

"tabular
vnoremap <leader>t* :Tabularize /\(input\\|output\\|reg\\|wire\)\zs\s<CR><ESC>

"NERDTreeToggle
noremap <F10> :NERDTreeToggle<CR>

"cyx_defined
"au BufNewFile,BufRead *.v,*.sv nnoremap <silent> <F1> :VerilogLineFormat<CR>
"au BufNewFile,BufRead *.v,*.sv nnoremap <silent> <F2> :RegisterDescription<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"解决菜单乱码
so $VIMRUNTIME/delmenu.vim
set langmenu=none
so $VIMRUNTIME/menu.vim
