"vundle plugin mangement
set nocompatible              " be iMproved, required
set backspace=indent,eol,start

filetype off                  " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" " - For Neovim: stdpath('data') . '/plugged'
" " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

"" plugin on GitHub repo
Plug 'altercation/vim-colors-solarized'
"Plugin 'nachumk/systemverilog.vim'
"Plugin 'WeiChungWu/vim-SystemVerilog'
Plug 'vhda/verilog_systemverilog.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'vim-scripts/VisIncr'  
Plug 'tsaleh/vim-align'
Plug 'scrooloose/nerdtree'
Plug 'liuchengxu/vim-clap'
if has("python3")
    Plug 'Yggdroot/LeaderF'
else
    Plug 'junegunn/fzf'
endif
Plug 'Yggdroot/indentLine'
"Plugin 'lifepillar/vim-mucomplete'
Plug 'compnerd/arm64asm-vim'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/upf.vim'
Plug 'kien/rainbow_parentheses.vim'
"python
" Plugin 'davidhalter/jedi-vim'
"vim-snipmate start -- conflict with YCM
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'NLKNguyen/papercolor-theme'

Plug 'easymotion/vim-easymotion'
Plug 'terryma/vim-expand-region'
Plug 'jlanzarotta/bufexplorer'
Plug 'terryma/vim-multiple-cursors'

"==================================================
"LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

Plug 'thomasfaingnaert/vim-lsp-snippets'
Plug 'thomasfaingnaert/vim-lsp-ultisnips'
"==================================================
"Two famous Snippet engine for use.
"ultisnips is better, but requires python support in vim.
"
"Plugin 'garbas/vim-snipmate'
Plug 'SirVer/ultisnips'
" Optional:
Plug 'honza/vim-snippets'

"==================================================

" cyx
Plug 'finalex/vim_sv_helper'


"==================================================
"backup region
"
"
"Plugin 'vim-scripts/taglist.vim'
"Plugin 'kien/ctrlp.vim'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'godlygeek/tabular'
"==================================================

call plug#end()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on    " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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

" //====================================================================================================
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
    set guifont=Source_Code_Variable:h11
else
     set guifont=DejaVu\ Sans\ Mono\ 10
endif

" //====================================================================================================

set nu
set nowrap
syntax on
set hlsearch
set incsearch
set textwidth=200
"tab conf
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"short key
let mapleader=','

"vim
nnoremap <silent> <leader>h :silent nohl<CR><ESC>

noremap <leader>y "+y
noremap <leader>p "+p
noremap <leader>P "+P

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>so :source $MYVIMRC<cr>

"Search
map <F4> [I:let nr = input("Input No. to jump:")<Bar>exe "normal " . nr ."[\t"<CR>
map <F3> :exec 'lvimgrep /'.expand('<cword>').'/ % <Bar> lopen'<CR>
"comment
nnoremap <leader>bc <ESC><ESC>O//====================================================================================================<ESC><ESC>j^
nnoremap <leader>ac <ESC><ESC>o//====================================================================================================<ESC><ESC>k^
nnoremap <leader>ic <ESC><ESC>^i//<ESC><ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"plugin conf

"mucomplete
" imap <c-k> <plug>(MUcompleteFwd)
" imap <c-q> <plug>(MUcompleteBwd)

"tabular -- take care : need two \\
" au BufNewFile,BufRead *.v,*.vh,*.sv,*.svh vnoremap <leader>tp :Tabularize /\(input\\|output\)\s*\(\[.*\]\)\?<CR><ESC>
" au BufNewFile,BufRead *.v,*.vh,*.sv,*.svh vnoremap <leader>tw :Tabularize /\(logic\\|wire\\|reg\)\s*\(\[.*\]\)\?<CR><ESC>
" au BufNewFile,BufRead *.v,*.vh,*.sv,*.svh vnoremap <leader>ti :Tabularize /\(\.\w\+\zs\\|)\s*,\?\s*$\)<CR><ESC>

"NERDTreeToggle
noremap <leader>s :NERDTreeToggle<CR>

"vim-easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"Nerdcommenter
"Add one space to comment
let g:NERDSpaceDelims=1

"UltiSnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"cyx_defined
au BufNewFile,BufRead *.v,*.sv nnoremap <silent> <leader>v :VerilogLineFormat<CR>
au BufNewFile,BufRead *.v,*.sv nnoremap <silent> <F2> :RegisterDescription<CR>

"RainbowParenteses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" asynccomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" easymotion
nmap t <Plug>(easymotion-t)
nmap f <Plug>(easymotion-f)
omap f <Plug>(easymotion-f)
omap t <Plug>(easymotion-t)
nmap T <Plug>(easymotion-T)
nmap F <Plug>(easymotion-F)
omap F <Plug>(easymotion-F)
omap T <Plug>(easymotion-T)
let g:EasyMotion_prompt = '{n}>>>'

" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" systemverilog
let g:verilog_disable_indent_lst = "module,eos"

" vim expand region
vmap v <Plug>(expand_region_expand)
vmap V <Plug>(expand_region_shrink)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set status line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
set laststatus=2

"解决菜单乱码
so $VIMRUNTIME/delmenu.vim
set langmenu=none
so $VIMRUNTIME/menu.vim


"Left the setting in the end.
set cursorline
highlight CursorLine guibg=#353535 ctermbg=black
set cursorcolumn
